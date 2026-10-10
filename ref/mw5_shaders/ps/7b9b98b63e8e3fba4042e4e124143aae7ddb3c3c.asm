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
; shader hash: 040d2ad761d5fb692970d08173520ab0
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
;   [192 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %417 = add i32 %56, 488
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
  br i1 %473, label %1234, label %474

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
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %693 = add i32 %56, 424
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
  %745 = add i32 %56, 408
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
  %769 = add i32 %56, 360
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
  %792 = add i32 %56, 440
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
  %990 = add i32 %56, 376
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
  %1074 = add i32 %56, 392
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
  %1132 = add i32 %56, 456
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
  br i1 %1171, label %1216, label %1172

; <label>:1172                                    ; preds = %1144
  %1173 = add i32 %56, 472
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 1048576
  %1184 = icmp ne i32 %1183, 0
  %1185 = and i32 %1182, 8192
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1202, label %1187

; <label>:1187                                    ; preds = %1172
  %1188 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1189 = select i1 %1184, float %1188, float %1179
  %1190 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1191 = select i1 %1184, float %1190, float %1179
  %1192 = add i32 %56, 96
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80101020000000
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1198, %1179
  %1201 = fmul fast float %1198, %1189
  br label %1202

; <label>:1202                                    ; preds = %1187, %1172
  %1203 = phi float [ %1199, %1187 ], [ 0.000000e+00, %1172 ]
  %1204 = phi float [ %1200, %1187 ], [ 0.000000e+00, %1172 ]
  %1205 = phi float [ %1201, %1187 ], [ 0.000000e+00, %1172 ]
  %1206 = and i32 %1182, 2048
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1216, label %1208

; <label>:1208                                    ; preds = %1202
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1210, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = fmul fast float %1213, %1180
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1208, %1202, %1144
  %1217 = phi float [ %1203, %1208 ], [ %1203, %1202 ], [ 0.000000e+00, %1144 ]
  %1218 = phi float [ %1204, %1208 ], [ %1204, %1202 ], [ 0.000000e+00, %1144 ]
  %1219 = phi float [ %1205, %1208 ], [ %1205, %1202 ], [ 0.000000e+00, %1144 ]
  %1220 = phi float [ %1215, %1208 ], [ 0x3F70101020000000, %1202 ], [ 0x3F70101020000000, %1144 ]
  %1221 = add i32 %56, 96
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = fmul fast float %1228, %1229
  %1231 = fadd fast float %1230, %1225
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  br label %1234

; <label>:1234                                    ; preds = %1216, %459
  %1235 = phi float [ 0.000000e+00, %459 ], [ %1060, %1216 ]
  %1236 = phi float [ 0.000000e+00, %459 ], [ %1061, %1216 ]
  %1237 = phi float [ 0.000000e+00, %459 ], [ %979, %1216 ]
  %1238 = phi float [ 0.000000e+00, %459 ], [ %980, %1216 ]
  %1239 = phi float [ 0.000000e+00, %459 ], [ %981, %1216 ]
  %1240 = phi float [ 0.000000e+00, %459 ], [ %1107, %1216 ]
  %1241 = phi float [ 0.000000e+00, %459 ], [ %1108, %1216 ]
  %1242 = phi float [ 0.000000e+00, %459 ], [ %1109, %1216 ]
  %1243 = phi float [ 0.000000e+00, %459 ], [ %1217, %1216 ]
  %1244 = phi float [ 0.000000e+00, %459 ], [ %1218, %1216 ]
  %1245 = phi float [ 0.000000e+00, %459 ], [ %1219, %1216 ]
  %1246 = phi float [ 0.000000e+00, %459 ], [ %1165, %1216 ]
  %1247 = phi float [ 0.000000e+00, %459 ], [ %1166, %1216 ]
  %1248 = phi float [ 0.000000e+00, %459 ], [ %1167, %1216 ]
  %1249 = phi float [ 0.000000e+00, %459 ], [ %965, %1216 ]
  %1250 = phi float [ 0.000000e+00, %459 ], [ %761, %1216 ]
  %1251 = phi float [ 0.000000e+00, %459 ], [ %1059, %1216 ]
  %1252 = phi float [ 0.000000e+00, %459 ], [ %1062, %1216 ]
  %1253 = phi float [ 0.000000e+00, %459 ], [ %1220, %1216 ]
  %1254 = phi float [ 0.000000e+00, %459 ], [ %1233, %1216 ]
  br i1 %407, label %2292, label %1255

; <label>:1255                                    ; preds = %1234
  %1256 = icmp ult i32 %465, 2
  %1257 = add i32 %56, 40
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %56, 44
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = or i32 %1262, %1259
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %2292, label %1265

; <label>:1265                                    ; preds = %1255
  %1266 = and i32 %1259, 262144
  %1267 = icmp ne i32 %1266, 0
  %1268 = select i1 %1267, float %59, float 1.000000e+00
  %1269 = select i1 %1267, float %60, float 0.000000e+00
  %1270 = select i1 %1267, float %61, float 0.000000e+00
  %1271 = select i1 %1267, float %62, float 1.000000e+00
  %1272 = select i1 %1267, float %63, float %84
  %1273 = select i1 %1267, float %64, float %85
  %1274 = add i32 %56, 300
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = fmul fast float %1278, 0x3F50624DE0000000
  %1280 = add i32 %56, 104
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 16
  %1284 = and i32 %1283, 255
  %1285 = lshr i32 %1282, 24
  %1286 = add i32 %56, 308
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1288, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = add i32 %56, 48
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 22
  %1297 = shl nuw nsw i32 %1296, 5
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = shl i32 %1295, 4
  %1300 = and i32 %1299, 32752
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1295, 7
  %1303 = and i32 %1302, 32752
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1307 = fmul fast float %1306, 1.000000e+03
  %1308 = fmul fast float %317, %1307
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fadd fast float %1309, %307
  %1311 = fmul fast float %318, %1307
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = fadd fast float %1312, %309
  %1314 = fmul fast float %1279, %1307
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = fmul fast float %1315, 0x401921FB60000000
  %1317 = fadd fast float %1316, %1298
  %1318 = call float @dx.op.unary.f32(i32 13, float %1317)  ; Sin(value)
  %1319 = call float @dx.op.unary.f32(i32 12, float %1317)  ; Cos(value)
  %1320 = fsub fast float -0.000000e+00, %1318
  %1321 = fadd fast float %1272, -5.000000e-01
  %1322 = fadd fast float %1273, -5.000000e-01
  %1323 = fmul fast float %1290, %1321
  %1324 = fmul fast float %1292, %1322
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fadd fast float %1324, 5.000000e-01
  %1327 = fmul fast float %1301, %1325
  %1328 = fmul fast float %1304, %1326
  %1329 = fmul fast float %1319, %1327
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1328, float %1329)  ; FMad(a,b,c)
  %1331 = fmul fast float %1318, %1327
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1328, float %1331)  ; FMad(a,b,c)
  %1333 = fadd fast float %1310, %1330
  %1334 = fadd fast float %1313, %1332
  %1335 = icmp ugt i32 %1284, 1
  %1336 = icmp ugt i32 %1282, 33554431
  %1337 = or i1 %1336, %1335
  br i1 %1337, label %1338, label %1363

; <label>:1338                                    ; preds = %1265
  %1339 = add i32 %56, 244
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = lshr i32 %1341, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = fmul fast float %1306, %1343
  %1345 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1346 = mul nuw nsw i32 %1284, %1285
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1345, %1347
  %1349 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1350 = fptoui float %1349 to i32
  %1351 = urem i32 %1350, %1284
  %1352 = udiv i32 %1350, %1285
  %1353 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1354 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1355 = uitofp i32 %1351 to float
  %1356 = uitofp i32 %1352 to float
  %1357 = fadd fast float %1353, %1355
  %1358 = fadd fast float %1354, %1356
  %1359 = uitofp i32 %1284 to float
  %1360 = uitofp i32 %1285 to float
  %1361 = fdiv fast float %1357, %1359
  %1362 = fdiv fast float %1358, %1360
  br label %1363

; <label>:1363                                    ; preds = %1338, %1265
  %1364 = phi float [ %1361, %1338 ], [ %1333, %1265 ]
  %1365 = phi float [ %1362, %1338 ], [ %1334, %1265 ]
  %1366 = and i32 %1259, 16777216
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1477, label %1368

; <label>:1368                                    ; preds = %1363
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1373 = fadd fast float %1370, %161
  %1374 = fadd fast float %1371, %162
  %1375 = fadd fast float %1372, %163
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 0
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = icmp eq i32 %57, 65535
  br i1 %1379, label %1474, label %1380

; <label>:1380                                    ; preds = %1368
  %1381 = lshr i32 %57, 1
  %1382 = shl i32 %1381, 2
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = and i32 %57, 1
  %1386 = icmp ne i32 %1385, 0
  %1387 = lshr i32 %1384, 16
  %1388 = and i32 %1384, 65535
  %1389 = select i1 %1386, i32 %1387, i32 %1388
  %1390 = icmp eq i32 %1389, 65535
  br i1 %1390, label %1470, label %1391

; <label>:1391                                    ; preds = %1380
  %1392 = mul nuw nsw i32 %1389, 40
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1392, 12
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = add nuw nsw i32 %1392, 24
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = add nuw nsw i32 %1392, 36
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = fsub fast float %1373, %1394
  %1411 = fsub fast float %1374, %1395
  %1412 = fsub fast float %1375, %1396
  %1413 = fmul fast float %1409, %1410
  %1414 = fmul fast float %1409, %1411
  %1415 = fmul fast float %1409, %1412
  %1416 = call float @dx.op.unary.f32(i32 27, float %1413)  ; Round_ni(value)
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fmul fast float %1419, %1399
  %1423 = fmul fast float %1420, %1400
  %1424 = fmul fast float %1421, %1401
  %1425 = shl i32 %57, 2
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, 0
  %1429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1430 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1431 = call float @dx.op.unary.f32(i32 22, float %1423)  ; Frc(value)
  %1432 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1429, %dx.types.Handle %49, float %1430, float %1431, float %1432, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = fmul fast float %1434, 1.023000e+03
  %1438 = fmul fast float %1435, 1.023000e+03
  %1439 = fmul fast float %1436, 1.023000e+03
  %1440 = fadd fast float %1437, 5.000000e-01
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = fadd fast float %1439, 5.000000e-01
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = fsub fast float %1413, %1416
  %1447 = fsub fast float %1414, %1417
  %1448 = fsub fast float %1415, %1418
  %1449 = fmul fast float %1446, 7.500000e-01
  %1450 = fmul fast float %1447, 7.500000e-01
  %1451 = fmul fast float %1448, 7.500000e-01
  %1452 = fadd fast float %1416, 1.250000e-01
  %1453 = fadd fast float %1452, %1449
  %1454 = fadd fast float %1453, %1443
  %1455 = fadd fast float %1417, 1.250000e-01
  %1456 = fadd fast float %1455, %1450
  %1457 = fadd fast float %1456, %1444
  %1458 = fadd fast float %1418, 1.250000e-01
  %1459 = fadd fast float %1458, %1451
  %1460 = fadd fast float %1459, %1445
  %1461 = fmul fast float %1454, %1404
  %1462 = fmul fast float %1457, %1405
  %1463 = fmul fast float %1460, %1406
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %1465, 0
  %1467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1467, %dx.types.Handle %47, float %1461, float %1462, float %1463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  br label %1470

; <label>:1470                                    ; preds = %1391, %1380
  %1471 = phi float [ %1469, %1391 ], [ -1.000000e+00, %1380 ]
  %1472 = fadd fast float %1471, %1378
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1470, %1368
  %1475 = phi float [ %1473, %1470 ], [ %1378, %1368 ]
  %1476 = fmul fast float %1475, %462
  br label %1477

; <label>:1477                                    ; preds = %1474, %1363
  %1478 = phi float [ %1476, %1474 ], [ %462, %1363 ]
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 256
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1529, label %1483

; <label>:1483                                    ; preds = %1477
  %1484 = add i32 %56, 428
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = add i32 %56, 116
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = shl i32 %1493, 4
  %1495 = and i32 %1494, 32752
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = lshr i32 %1493, 7
  %1498 = and i32 %1497, 32752
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float 1.000000e+00, %1478
  %1501 = call float @dx.op.binary.f32(i32 35, float %1500, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1502 = bitcast float %1478 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1499, %1504
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = bitcast float %1501 to i32
  %1510 = sitofp i32 %1509 to float
  %1511 = fadd fast float %1510, 0xC1CFBF8940000000
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, 0x41CFBF8940000000
  %1514 = fptosi float %1513 to i32
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1508, %1496
  %1517 = fmul fast float %1515, %1496
  %1518 = fsub fast float %1501, %1516
  %1519 = fadd fast float %1517, %1501
  %1520 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1522 = fsub fast float %1490, %1520
  %1523 = fsub fast float %1521, %1520
  %1524 = bitcast float %1523 to i32
  %1525 = sub nsw i32 2129859010, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1483, %1477
  %1530 = phi float [ %1528, %1483 ], [ %1478, %1477 ]
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 128
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1551, label %1535

; <label>:1535                                    ; preds = %1529
  %1536 = add i32 %56, 412
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 524288
  %1546 = icmp ne i32 %1545, 0
  %1547 = fcmp fast ogt float %1542, 0x3FE0101020000000
  %1548 = select i1 %1547, float 1.000000e+00, float 0.000000e+00
  %1549 = select i1 %1546, float %1548, float %1542
  %1550 = fmul fast float %1549, %1530
  br label %1551

; <label>:1551                                    ; preds = %1535, %1529
  %1552 = phi float [ %1550, %1535 ], [ %1530, %1529 ]
  %1553 = fcmp fast ult float %1552, 0x3F70101020000000
  br i1 %1553, label %2292, label %1554

; <label>:1554                                    ; preds = %1551
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 16
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1757, label %1559

; <label>:1559                                    ; preds = %1554
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %56, 364
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %98, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.ResRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.ResRet.f32 %1567, 3
  %1572 = and i32 %1561, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1561, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1571, %1573
  %1578 = fadd fast float %1577, %1576
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 512
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1592, label %1584

; <label>:1584                                    ; preds = %1559
  %1585 = add i32 %56, 444
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  br label %1592

; <label>:1592                                    ; preds = %1584, %1559
  %1593 = phi float [ %1591, %1584 ], [ 1.000000e+00, %1559 ]
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 33554432
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1704, label %1598

; <label>:1598                                    ; preds = %1592
  %1599 = add i32 %56, 240
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = lshr i32 %1601, 16
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = add i32 %56, 244
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = lshr i32 %1612, 24
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = and i32 %1612, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = lshr i32 %1612, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = lshr i32 %1612, 16
  %1624 = and i32 %1623, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = add i32 %56, 236
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1627, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = lshr i32 %1629, 24
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = and i32 %1629, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = lshr i32 %1629, 8
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = lshr i32 %1629, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = bitcast float %1568 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1568, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1568
  %1653 = fmul fast float %1652, %1651
  %1654 = bitcast float %1569 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1569, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1569
  %1663 = fmul fast float %1662, %1661
  %1664 = bitcast float %1570 to i32
  %1665 = ashr i32 %1664, 1
  %1666 = sub nsw i32 1597463174, %1665
  %1667 = bitcast i32 %1666 to float
  %1668 = fmul fast float %1570, 5.000000e-01
  %1669 = fmul fast float %1667, %1667
  %1670 = fmul fast float %1669, %1668
  %1671 = fsub fast float 1.500000e+00, %1670
  %1672 = fmul fast float %1667, %1570
  %1673 = fmul fast float %1672, %1671
  %1674 = fsub fast float %1653, %1635
  %1675 = fsub fast float %1663, %1639
  %1676 = fsub fast float %1673, %1643
  %1677 = fmul fast float %1674, %1603
  %1678 = fmul fast float %1675, %1605
  %1679 = fmul fast float %1676, %1610
  %1680 = fadd fast float %1677, %1618
  %1681 = fadd fast float %1678, %1622
  %1682 = fadd fast float %1679, %1626
  %1683 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1684 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1684, %1684
  %1688 = fmul fast float %1685, %1685
  %1689 = fsub fast float %1686, %1568
  %1690 = fsub fast float %1687, %1569
  %1691 = fsub fast float %1688, %1570
  %1692 = fmul fast float %1689, %1593
  %1693 = fmul fast float %1690, %1593
  %1694 = fmul fast float %1691, %1593
  %1695 = fadd fast float %1692, %1568
  %1696 = fadd fast float %1693, %1569
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1615, %1579
  %1699 = fsub fast float %1698, %1632
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1701 = fsub fast float %1700, %1579
  %1702 = fmul fast float %1701, %1593
  %1703 = fadd fast float %1702, %1579
  br label %1757

; <label>:1704                                    ; preds = %1592
  %1705 = and i32 %1595, 134217728
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1741, label %1707

; <label>:1707                                    ; preds = %1704
  %1708 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1710 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fmul fast float %1711, %1593
  %1715 = fmul fast float %1712, %1593
  %1716 = fmul fast float %1713, %1593
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = fmul fast float %1717, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1720
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1720
  %1728 = fmul fast float %1718, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1721
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1721
  %1733 = fmul fast float %1719, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1722
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1722
  %1738 = fmul fast float %1727, %1727
  %1739 = fmul fast float %1732, %1732
  %1740 = fmul fast float %1737, %1737
  br label %1757

; <label>:1741                                    ; preds = %1704
  %1742 = fmul fast float %294, %294
  %1743 = fmul fast float %298, %298
  %1744 = fmul fast float %302, %302
  %1745 = fadd fast float %1742, -1.000000e+00
  %1746 = fadd fast float %1743, -1.000000e+00
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fmul fast float %1593, %1745
  %1749 = fmul fast float %1593, %1746
  %1750 = fmul fast float %1593, %1747
  %1751 = fadd fast float %1748, 1.000000e+00
  %1752 = fadd fast float %1749, 1.000000e+00
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fmul fast float %1751, %1568
  %1755 = fmul fast float %1752, %1569
  %1756 = fmul fast float %1753, %1570
  br label %1757

; <label>:1757                                    ; preds = %1741, %1707, %1598, %1554
  %1758 = phi float [ %1703, %1598 ], [ %1579, %1707 ], [ %1579, %1741 ], [ 0x3FA23C0BE0000000, %1554 ]
  %1759 = phi float [ %1695, %1598 ], [ %1738, %1707 ], [ %1754, %1741 ], [ 1.000000e+00, %1554 ]
  %1760 = phi float [ %1696, %1598 ], [ %1739, %1707 ], [ %1755, %1741 ], [ 1.000000e+00, %1554 ]
  %1761 = phi float [ %1697, %1598 ], [ %1740, %1707 ], [ %1756, %1741 ], [ 1.000000e+00, %1554 ]
  %1762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.i32 %1762, 1
  %1764 = and i32 %1763, 1
  %1765 = icmp ne i32 %1764, 0
  %1766 = add i32 %56, 356
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 32
  %1770 = icmp ne i32 %1769, 0
  %1771 = and i1 %1765, %1770
  %1772 = select i1 %1771, float 1.000000e+00, float %1759
  %1773 = select i1 %1771, float 0x3FD3333340000000, float %1760
  %1774 = select i1 %1771, float 0x3FD3333340000000, float %1761
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1851, label %1779

; <label>:1779                                    ; preds = %1757
  %1780 = add i32 %56, 108
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = add i32 %56, 380
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = add i32 %1785, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1787, %dx.types.Handle %98, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1788, 3
  %1793 = and i32 %1782, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1782, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1782, 16
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = fmul fast float %1800, 0x3F70101000000000
  %1802 = fmul fast float %1789, %1794
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101000000000
  %1805 = fadd fast float %1790, -5.000000e-01
  %1806 = fadd fast float %1792, -5.000000e-01
  %1807 = fmul fast float %1805, %1801
  %1808 = fmul fast float %1806, %1801
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1809, 2.000000e+00
  %1812 = fadd fast float %1811, -1.000000e+00
  %1813 = fmul fast float %1810, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = fadd fast float %1812, %1814
  %1816 = fmul fast float %1815, 5.000000e-01
  %1817 = fsub fast float %1812, %1814
  %1818 = fmul fast float %1817, 5.000000e-01
  %1819 = call float @dx.op.unary.f32(i32 6, float %1816)  ; FAbs(value)
  %1820 = fsub fast float 1.000000e+00, %1819
  %1821 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1822 = fsub fast float %1820, %1821
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1818, float %1822, float %1816, float %1818, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1816, %1824
  %1826 = fmul fast float %1818, %1824
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 67108864
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1847, label %1831

; <label>:1831                                    ; preds = %1779
  %1832 = add i32 %56, 296
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = and i32 %1834, 65535
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1834, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = fsub fast float %1804, %1842
  %1844 = fmul fast float %1843, %1836
  %1845 = fadd fast float %1844, %1840
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  br label %1847

; <label>:1847                                    ; preds = %1831, %1779
  %1848 = phi float [ %1846, %1831 ], [ %1804, %1779 ]
  %1849 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1268, float %1269)  ; Dot2(ax,ay,bx,by)
  %1850 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1270, float %1271)  ; Dot2(ax,ay,bx,by)
  br label %1851

; <label>:1851                                    ; preds = %1847, %1757
  %1852 = phi float [ %1848, %1847 ], [ 0x3FD6666660000000, %1757 ]
  %1853 = phi float [ %1849, %1847 ], [ 0.000000e+00, %1757 ]
  %1854 = phi float [ %1850, %1847 ], [ 0.000000e+00, %1757 ]
  %1855 = phi float [ %1791, %1847 ], [ 1.000000e+00, %1757 ]
  %1856 = add i32 %56, 176
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 22
  %1860 = shl nuw nsw i32 %1859, 5
  %1861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1860)  ; LegacyF16ToF32(value)
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 64
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1899, label %1866

; <label>:1866                                    ; preds = %1851
  %1867 = add i32 %56, 396
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = add i32 %1869, 0
  %1871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 131072
  %1875 = icmp eq i32 %1874, 0
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1871, %dx.types.Handle %98, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1880 = fmul fast float %1877, %282
  %1881 = fmul fast float %1878, %285
  %1882 = fmul fast float %1879, %288
  br i1 %1875, label %1889, label %1883

; <label>:1883                                    ; preds = %1866
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = fmul fast float %1885, %1880
  %1887 = fmul fast float %1885, %1881
  %1888 = fmul fast float %1885, %1882
  br label %1889

; <label>:1889                                    ; preds = %1883, %1866
  %1890 = phi float [ %1886, %1883 ], [ %1880, %1866 ]
  %1891 = phi float [ %1887, %1883 ], [ %1881, %1866 ]
  %1892 = phi float [ %1888, %1883 ], [ %1882, %1866 ]
  %1893 = fmul fast float %1890, %1861
  %1894 = select i1 %223, float %1893, float %1890
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1894, float %1891, float %1892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = select i1 %223, float 0.000000e+00, float %1890
  %1897 = select i1 %223, float %1895, float %1891
  %1898 = select i1 %223, float 0.000000e+00, float %1892
  br label %1899

; <label>:1899                                    ; preds = %1889, %1851
  %1900 = phi float [ %1896, %1889 ], [ 0.000000e+00, %1851 ]
  %1901 = phi float [ %1897, %1889 ], [ 0.000000e+00, %1851 ]
  %1902 = phi float [ %1898, %1889 ], [ 0.000000e+00, %1851 ]
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 1024
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1937, label %1907

; <label>:1907                                    ; preds = %1899
  %1908 = add i32 %56, 168
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 255
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1912, 0x3F70101020000000
  %1914 = lshr i32 %1910, 8
  %1915 = and i32 %1914, 255
  %1916 = uitofp i32 %1915 to float
  %1917 = fmul fast float %1916, 0x3F70101020000000
  %1918 = lshr i32 %1910, 16
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = fmul fast float %1913, %1913
  %1923 = fmul fast float %1917, %1917
  %1924 = fmul fast float %1921, %1921
  %1925 = add i32 %56, 460
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1929, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = fmul fast float %1922, %1931
  %1935 = fmul fast float %1923, %1932
  %1936 = fmul fast float %1924, %1933
  br label %1937

; <label>:1937                                    ; preds = %1907, %1899
  %1938 = phi float [ %1934, %1907 ], [ 0.000000e+00, %1899 ]
  %1939 = phi float [ %1935, %1907 ], [ 0.000000e+00, %1899 ]
  %1940 = phi float [ %1936, %1907 ], [ 0.000000e+00, %1899 ]
  %1941 = fcmp fast ogt float %1938, 0.000000e+00
  %1942 = fcmp fast ogt float %1939, 0.000000e+00
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = call float @dx.op.unary.f32(i32 23, float %1938)  ; Log(value)
  %1945 = call float @dx.op.unary.f32(i32 23, float %1939)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 7
  %1950 = and i32 %1949, 32752
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = fmul fast float %1944, 0xBFE62E4300000000
  %1953 = fmul fast float %1952, %1951
  %1954 = fmul fast float %1945, 0xBFE62E4300000000
  %1955 = fmul fast float %1954, %1951
  %1956 = fmul fast float %1946, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1951
  %1958 = select i1 %1941, float %1953, float 1.270000e+02
  %1959 = select i1 %1942, float %1955, float 1.270000e+02
  %1960 = select i1 %1943, float %1957, float 1.270000e+02
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 10240
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2009, label %1965

; <label>:1965                                    ; preds = %1937
  %1966 = add i32 %56, 476
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1970, %dx.types.Handle %99, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 3
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %1975, 1048576
  %1977 = icmp ne i32 %1976, 0
  %1978 = and i32 %1975, 8192
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %1995, label %1980

; <label>:1980                                    ; preds = %1965
  %1981 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1982 = select i1 %1977, float %1981, float %1972
  %1983 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1984 = select i1 %1977, float %1983, float %1972
  %1985 = add i32 %56, 112
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = lshr i32 %1987, 16
  %1989 = and i32 %1988, 255
  %1990 = uitofp i32 %1989 to float
  %1991 = fmul fast float %1990, 0x3F80101020000000
  %1992 = fmul fast float %1991, %1984
  %1993 = fmul fast float %1991, %1972
  %1994 = fmul fast float %1991, %1982
  br label %1995

; <label>:1995                                    ; preds = %1980, %1965
  %1996 = phi float [ %1992, %1980 ], [ 0.000000e+00, %1965 ]
  %1997 = phi float [ %1993, %1980 ], [ 0.000000e+00, %1965 ]
  %1998 = phi float [ %1994, %1980 ], [ 0.000000e+00, %1965 ]
  %1999 = and i32 %1975, 2048
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2009, label %2001

; <label>:2001                                    ; preds = %1995
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = shl i32 %2003, 4
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fmul fast float %2006, %1973
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2009

; <label>:2009                                    ; preds = %2001, %1995, %1937
  %2010 = phi float [ %1996, %2001 ], [ %1996, %1995 ], [ 0.000000e+00, %1937 ]
  %2011 = phi float [ %1997, %2001 ], [ %1997, %1995 ], [ 0.000000e+00, %1937 ]
  %2012 = phi float [ %1998, %2001 ], [ %1998, %1995 ], [ 0.000000e+00, %1937 ]
  %2013 = phi float [ %2008, %2001 ], [ 0x3F70101020000000, %1995 ], [ 0x3F70101020000000, %1937 ]
  %2014 = add i32 %56, 112
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 255
  %2018 = uitofp i32 %2017 to float
  %2019 = lshr i32 %2016, 8
  %2020 = and i32 %2019, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = call float @dx.op.dot3.f32(i32 55, float %1772, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2023 = fmul fast float %2021, %2022
  %2024 = fadd fast float %2023, %2018
  %2025 = fmul fast float %2024, 0x3F70101020000000
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  br i1 %1256, label %2027, label %2062

; <label>:2027                                    ; preds = %2009
  %2028 = fmul fast float %2013, 2.000000e+00
  %2029 = fcmp fast olt float %1958, 1.270000e+02
  %2030 = fcmp fast olt float %1959, 1.270000e+02
  %2031 = fcmp fast olt float %1960, 1.270000e+02
  %2032 = fmul fast float %1958, 0xBFF7154760000000
  %2033 = fmul fast float %2032, %2028
  %2034 = fmul fast float %1959, 0xBFF7154760000000
  %2035 = fmul fast float %2034, %2028
  %2036 = fmul fast float %1960, 0xBFF7154760000000
  %2037 = fmul fast float %2036, %2028
  %2038 = call float @dx.op.unary.f32(i32 21, float %2033)  ; Exp(value)
  %2039 = call float @dx.op.unary.f32(i32 21, float %2035)  ; Exp(value)
  %2040 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2038)  ; Saturate(value)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2044 = fadd fast float %2041, -1.000000e+00
  %2045 = select i1 %2029, float %2044, float -1.000000e+00
  %2046 = fadd fast float %2042, -1.000000e+00
  %2047 = select i1 %2030, float %2046, float -1.000000e+00
  %2048 = fadd fast float %2043, -1.000000e+00
  %2049 = select i1 %2031, float %2048, float -1.000000e+00
  %2050 = fmul fast float %2045, %1552
  %2051 = fmul fast float %2047, %1552
  %2052 = fmul fast float %2049, %1552
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fadd fast float %2051, 1.000000e+00
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fmul fast float %2053, %1237
  %2057 = fmul fast float %2054, %1238
  %2058 = fmul fast float %2055, %1239
  %2059 = fmul fast float %2053, %1240
  %2060 = fmul fast float %2054, %1241
  %2061 = fmul fast float %2055, %1242
  br label %2062

; <label>:2062                                    ; preds = %2027, %2009
  %2063 = phi float [ %2056, %2027 ], [ %1237, %2009 ]
  %2064 = phi float [ %2057, %2027 ], [ %1238, %2009 ]
  %2065 = phi float [ %2058, %2027 ], [ %1239, %2009 ]
  %2066 = phi float [ %2059, %2027 ], [ %1240, %2009 ]
  %2067 = phi float [ %2060, %2027 ], [ %1241, %2009 ]
  %2068 = phi float [ %2061, %2027 ], [ %1242, %2009 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 3
  %2072 = icmp eq i32 %2071, 3
  br i1 %2072, label %2151, label %2073

; <label>:2073                                    ; preds = %2062
  %2074 = and i32 %2070, 16
  %2075 = icmp ne i32 %2074, 0
  %2076 = select i1 %2075, float %1552, float 0.000000e+00
  %2077 = icmp eq i32 %2071, 0
  br i1 %2077, label %2078, label %2106

; <label>:2078                                    ; preds = %2073
  %2079 = and i32 %2070, 64
  %2080 = icmp ne i32 %2079, 0
  %2081 = select i1 %2080, float %1552, float 0.000000e+00
  %2082 = fsub fast float %1772, %2063
  %2083 = fsub fast float %1773, %2064
  %2084 = fsub fast float %1774, %2065
  %2085 = fmul fast float %2076, %2082
  %2086 = fmul fast float %2076, %2083
  %2087 = fmul fast float %2076, %2084
  %2088 = fadd fast float %2085, %2063
  %2089 = fadd fast float %2086, %2064
  %2090 = fadd fast float %2087, %2065
  %2091 = fsub fast float %1758, %1249
  %2092 = fmul fast float %2076, %2091
  %2093 = fadd fast float %2092, %1249
  %2094 = fsub fast float %1900, %2066
  %2095 = fsub fast float %1901, %2067
  %2096 = fsub fast float %1902, %2068
  %2097 = fmul fast float %2081, %2094
  %2098 = fmul fast float %2081, %2095
  %2099 = fmul fast float %2081, %2096
  %2100 = fadd fast float %2097, %2066
  %2101 = fadd fast float %2098, %2067
  %2102 = fadd fast float %2099, %2068
  %2103 = fsub fast float %2026, %1254
  %2104 = fmul fast float %2076, %2103
  %2105 = fadd fast float %2104, %1254
  br label %2151

; <label>:2106                                    ; preds = %2073
  %2107 = icmp eq i32 %2071, 1
  br i1 %2107, label %2108, label %2121

; <label>:2108                                    ; preds = %2106
  %2109 = fadd fast float %1772, -1.000000e+00
  %2110 = fadd fast float %1773, -1.000000e+00
  %2111 = fadd fast float %1774, -1.000000e+00
  %2112 = fmul fast float %2076, %2109
  %2113 = fmul fast float %2076, %2110
  %2114 = fmul fast float %2076, %2111
  %2115 = fadd fast float %2112, 1.000000e+00
  %2116 = fadd fast float %2113, 1.000000e+00
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fmul fast float %2115, %2063
  %2119 = fmul fast float %2116, %2064
  %2120 = fmul fast float %2117, %2065
  br label %2151

; <label>:2121                                    ; preds = %2106
  %2122 = icmp eq i32 %2071, 2
  br i1 %2122, label %2123, label %2151

; <label>:2123                                    ; preds = %2121
  %2124 = call float @dx.op.unary.f32(i32 24, float %1772)  ; Sqrt(value)
  %2125 = call float @dx.op.unary.f32(i32 24, float %1773)  ; Sqrt(value)
  %2126 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2127 = fadd fast float %2124, -5.000000e-01
  %2128 = fadd fast float %2125, -5.000000e-01
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fmul fast float %2127, %2076
  %2131 = fmul fast float %2128, %2076
  %2132 = fmul fast float %2129, %2076
  %2133 = fadd fast float %2130, 5.000000e-01
  %2134 = fadd fast float %2131, 5.000000e-01
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fmul fast float %2133, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2063
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2063
  %2141 = fmul fast float %2134, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2064
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2064
  %2146 = fmul fast float %2135, 2.000000e+00
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2147, %2065
  %2149 = fadd fast float %2148, %2146
  %2150 = fmul fast float %2149, %2065
  br label %2151

; <label>:2151                                    ; preds = %2123, %2121, %2108, %2078, %2062
  %2152 = phi float [ %2063, %2062 ], [ %2140, %2123 ], [ %2063, %2121 ], [ %2118, %2108 ], [ %2088, %2078 ]
  %2153 = phi float [ %2064, %2062 ], [ %2145, %2123 ], [ %2064, %2121 ], [ %2119, %2108 ], [ %2089, %2078 ]
  %2154 = phi float [ %2065, %2062 ], [ %2150, %2123 ], [ %2065, %2121 ], [ %2120, %2108 ], [ %2090, %2078 ]
  %2155 = phi float [ %2066, %2062 ], [ %2066, %2123 ], [ %2066, %2121 ], [ %2066, %2108 ], [ %2100, %2078 ]
  %2156 = phi float [ %2067, %2062 ], [ %2067, %2123 ], [ %2067, %2121 ], [ %2067, %2108 ], [ %2101, %2078 ]
  %2157 = phi float [ %2068, %2062 ], [ %2068, %2123 ], [ %2068, %2121 ], [ %2068, %2108 ], [ %2102, %2078 ]
  %2158 = phi float [ %1249, %2062 ], [ %1249, %2123 ], [ %1249, %2121 ], [ %1249, %2108 ], [ %2093, %2078 ]
  %2159 = phi float [ %1254, %2062 ], [ %1254, %2123 ], [ %1254, %2121 ], [ %1254, %2108 ], [ %2105, %2078 ]
  %2160 = and i32 %2070, 12
  %2161 = icmp eq i32 %2160, 12
  br i1 %2161, label %2292, label %2162

; <label>:2162                                    ; preds = %2151
  %2163 = and i32 %2070, 2097184
  %2164 = icmp eq i32 %2163, 2097184
  %2165 = select i1 %2164, float %1552, float 0.000000e+00
  %2166 = and i32 %2070, 4194336
  %2167 = icmp eq i32 %2166, 4194336
  %2168 = select i1 %2167, float %1552, float 0.000000e+00
  %2169 = and i32 %2070, 8388640
  %2170 = icmp eq i32 %2169, 8388640
  %2171 = select i1 %2170, float %1552, float 0.000000e+00
  %2172 = and i32 %2070, 1024
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1552, float 0.000000e+00
  %2175 = and i32 %2070, 2048
  %2176 = icmp ne i32 %2175, 0
  %2177 = select i1 %2176, float %1552, float 0.000000e+00
  %2178 = and i32 %2070, 8192
  %2179 = icmp ne i32 %2178, 0
  %2180 = select i1 %2179, float %1552, float 0.000000e+00
  %2181 = icmp eq i32 %2160, 0
  br i1 %2181, label %2182, label %2216

; <label>:2182                                    ; preds = %2162
  %2183 = fsub fast float %1853, %1235
  %2184 = fsub fast float %1854, %1236
  %2185 = fmul fast float %2165, %2183
  %2186 = fmul fast float %2165, %2184
  %2187 = fadd fast float %2185, %1235
  %2188 = fadd fast float %2186, %1236
  %2189 = fsub fast float %1855, %1252
  %2190 = fmul fast float %2168, %2189
  %2191 = fadd fast float %2190, %1252
  %2192 = fsub fast float %1852, %1251
  %2193 = fmul fast float %2171, %2192
  %2194 = fadd fast float %2193, %1251
  %2195 = fsub fast float %1958, %1246
  %2196 = fsub fast float %1959, %1247
  %2197 = fsub fast float %1960, %1248
  %2198 = fmul fast float %2174, %2195
  %2199 = fmul fast float %2174, %2196
  %2200 = fmul fast float %2174, %2197
  %2201 = fadd fast float %2198, %1246
  %2202 = fadd fast float %2199, %1247
  %2203 = fadd fast float %2200, %1248
  %2204 = fsub fast float %2013, %1253
  %2205 = fmul fast float %2177, %2204
  %2206 = fadd fast float %2205, %1253
  %2207 = fsub fast float %2010, %1243
  %2208 = fsub fast float %2011, %1244
  %2209 = fsub fast float %2012, %1245
  %2210 = fmul fast float %2180, %2207
  %2211 = fmul fast float %2180, %2208
  %2212 = fmul fast float %2180, %2209
  %2213 = fadd fast float %2210, %1243
  %2214 = fadd fast float %2211, %1244
  %2215 = fadd fast float %2212, %1245
  br label %2292

; <label>:2216                                    ; preds = %2162
  %2217 = icmp eq i32 %2160, 4
  br i1 %2217, label %2218, label %2264

; <label>:2218                                    ; preds = %2216
  %2219 = fmul fast float %2165, %1853
  %2220 = fmul fast float %2165, %1854
  %2221 = fadd fast float %2219, %1235
  %2222 = fadd fast float %2220, %1236
  %2223 = call float @dx.op.binary.f32(i32 36, float %1252, float %1855)  ; FMin(a,b)
  %2224 = fsub fast float %2223, %1252
  %2225 = fmul fast float %2224, %2168
  %2226 = fadd fast float %2225, %1252
  %2227 = fadd fast float %1852, %1251
  %2228 = fmul fast float %2227, 0x3FF337FAE0000000
  %2229 = fmul fast float %1251, %1251
  %2230 = fmul fast float %1852, %1852
  %2231 = fadd fast float %2230, %2229
  %2232 = fmul fast float %2231, 0x3FE5152B00000000
  %2233 = fmul fast float %1251, 0xBFCC1F85E0000000
  %2234 = fmul fast float %2233, %1852
  %2235 = fadd fast float %2234, 0xBFE1363700000000
  %2236 = fadd fast float %2235, %2228
  %2237 = fsub fast float %2236, %2232
  %2238 = fmul fast float %2227, 0x3FBA6F0D00000000
  %2239 = fmul fast float %2231, 0x3FD0432880000000
  %2240 = fmul fast float %1251, 0xBFEF110800000000
  %2241 = fmul fast float %2240, %1852
  %2242 = fadd fast float %2241, 1.000000e+00
  %2243 = fsub fast float %2242, %2238
  %2244 = fadd fast float %2243, %2239
  %2245 = fdiv fast float %2237, %2244
  %2246 = call float @dx.op.unary.f32(i32 7, float %2245)  ; Saturate(value)
  %2247 = fsub fast float %2246, %1251
  %2248 = fmul fast float %2247, %2171
  %2249 = fadd fast float %2248, %1251
  %2250 = fmul fast float %2174, %1958
  %2251 = fmul fast float %2174, %1959
  %2252 = fmul fast float %2174, %1960
  %2253 = fadd fast float %2250, %1246
  %2254 = fadd fast float %2251, %1247
  %2255 = fadd fast float %2252, %1248
  %2256 = fmul fast float %2177, %2013
  %2257 = fadd fast float %2256, %1253
  %2258 = fmul fast float %2180, %2010
  %2259 = fmul fast float %2180, %2011
  %2260 = fmul fast float %2180, %2012
  %2261 = fadd fast float %2258, %1243
  %2262 = fadd fast float %2259, %1244
  %2263 = fadd fast float %2260, %1245
  br label %2292

; <label>:2264                                    ; preds = %2216
  %2265 = icmp eq i32 %2160, 8
  br i1 %2265, label %2266, label %2292

; <label>:2266                                    ; preds = %2264
  %2267 = fmul fast float %2165, %1853
  %2268 = fmul fast float %2165, %1854
  %2269 = fadd fast float %2267, %1235
  %2270 = fadd fast float %2268, %1236
  %2271 = call float @dx.op.binary.f32(i32 36, float %1252, float %1855)  ; FMin(a,b)
  %2272 = fsub fast float %2271, %1252
  %2273 = fmul fast float %2272, %2168
  %2274 = fadd fast float %2273, %1252
  %2275 = fsub fast float %1852, %1251
  %2276 = fmul fast float %2171, %2275
  %2277 = fadd fast float %2276, %1251
  %2278 = fmul fast float %2174, %1958
  %2279 = fmul fast float %2174, %1959
  %2280 = fmul fast float %2174, %1960
  %2281 = fadd fast float %2278, %1246
  %2282 = fadd fast float %2279, %1247
  %2283 = fadd fast float %2280, %1248
  %2284 = fmul fast float %2177, %2013
  %2285 = fadd fast float %2284, %1253
  %2286 = fmul fast float %2180, %2010
  %2287 = fmul fast float %2180, %2011
  %2288 = fmul fast float %2180, %2012
  %2289 = fadd fast float %2286, %1243
  %2290 = fadd fast float %2287, %1244
  %2291 = fadd fast float %2288, %1245
  br label %2292

; <label>:2292                                    ; preds = %2266, %2264, %2218, %2182, %2151, %1551, %1255, %1234
  %2293 = phi float [ %1235, %2151 ], [ %1235, %1551 ], [ %1235, %1234 ], [ %2269, %2266 ], [ %1235, %2264 ], [ %2221, %2218 ], [ %2187, %2182 ], [ %1235, %1255 ]
  %2294 = phi float [ %1236, %2151 ], [ %1236, %1551 ], [ %1236, %1234 ], [ %2270, %2266 ], [ %1236, %2264 ], [ %2222, %2218 ], [ %2188, %2182 ], [ %1236, %1255 ]
  %2295 = phi float [ %2152, %2151 ], [ %1237, %1551 ], [ %1237, %1234 ], [ %2152, %2266 ], [ %2152, %2264 ], [ %2152, %2218 ], [ %2152, %2182 ], [ %1237, %1255 ]
  %2296 = phi float [ %2153, %2151 ], [ %1238, %1551 ], [ %1238, %1234 ], [ %2153, %2266 ], [ %2153, %2264 ], [ %2153, %2218 ], [ %2153, %2182 ], [ %1238, %1255 ]
  %2297 = phi float [ %2154, %2151 ], [ %1239, %1551 ], [ %1239, %1234 ], [ %2154, %2266 ], [ %2154, %2264 ], [ %2154, %2218 ], [ %2154, %2182 ], [ %1239, %1255 ]
  %2298 = phi float [ %2155, %2151 ], [ %1240, %1551 ], [ %1240, %1234 ], [ %2155, %2266 ], [ %2155, %2264 ], [ %2155, %2218 ], [ %2155, %2182 ], [ %1240, %1255 ]
  %2299 = phi float [ %2156, %2151 ], [ %1241, %1551 ], [ %1241, %1234 ], [ %2156, %2266 ], [ %2156, %2264 ], [ %2156, %2218 ], [ %2156, %2182 ], [ %1241, %1255 ]
  %2300 = phi float [ %2157, %2151 ], [ %1242, %1551 ], [ %1242, %1234 ], [ %2157, %2266 ], [ %2157, %2264 ], [ %2157, %2218 ], [ %2157, %2182 ], [ %1242, %1255 ]
  %2301 = phi float [ %1243, %2151 ], [ %1243, %1551 ], [ %1243, %1234 ], [ %2289, %2266 ], [ %1243, %2264 ], [ %2261, %2218 ], [ %2213, %2182 ], [ %1243, %1255 ]
  %2302 = phi float [ %1244, %2151 ], [ %1244, %1551 ], [ %1244, %1234 ], [ %2290, %2266 ], [ %1244, %2264 ], [ %2262, %2218 ], [ %2214, %2182 ], [ %1244, %1255 ]
  %2303 = phi float [ %1245, %2151 ], [ %1245, %1551 ], [ %1245, %1234 ], [ %2291, %2266 ], [ %1245, %2264 ], [ %2263, %2218 ], [ %2215, %2182 ], [ %1245, %1255 ]
  %2304 = phi float [ %1246, %2151 ], [ %1246, %1551 ], [ %1246, %1234 ], [ %2281, %2266 ], [ %1246, %2264 ], [ %2253, %2218 ], [ %2201, %2182 ], [ %1246, %1255 ]
  %2305 = phi float [ %1247, %2151 ], [ %1247, %1551 ], [ %1247, %1234 ], [ %2282, %2266 ], [ %1247, %2264 ], [ %2254, %2218 ], [ %2202, %2182 ], [ %1247, %1255 ]
  %2306 = phi float [ %1248, %2151 ], [ %1248, %1551 ], [ %1248, %1234 ], [ %2283, %2266 ], [ %1248, %2264 ], [ %2255, %2218 ], [ %2203, %2182 ], [ %1248, %1255 ]
  %2307 = phi float [ %2158, %2151 ], [ %1249, %1551 ], [ %1249, %1234 ], [ %2158, %2266 ], [ %2158, %2264 ], [ %2158, %2218 ], [ %2158, %2182 ], [ %1249, %1255 ]
  %2308 = phi float [ %1251, %2151 ], [ %1251, %1551 ], [ %1251, %1234 ], [ %2277, %2266 ], [ %1251, %2264 ], [ %2249, %2218 ], [ %2194, %2182 ], [ %1251, %1255 ]
  %2309 = phi float [ %1252, %2151 ], [ %1252, %1551 ], [ %1252, %1234 ], [ %2274, %2266 ], [ %1252, %2264 ], [ %2226, %2218 ], [ %2191, %2182 ], [ %1252, %1255 ]
  %2310 = phi float [ %1253, %2151 ], [ %1253, %1551 ], [ %1253, %1234 ], [ %2285, %2266 ], [ %1253, %2264 ], [ %2257, %2218 ], [ %2206, %2182 ], [ %1253, %1255 ]
  %2311 = phi float [ %2159, %2151 ], [ %1254, %1551 ], [ %1254, %1234 ], [ %2159, %2266 ], [ %2159, %2264 ], [ %2159, %2218 ], [ %2159, %2182 ], [ %1254, %1255 ]
  br i1 %409, label %3349, label %2312

; <label>:2312                                    ; preds = %2292
  %2313 = icmp ult i32 %465, 3
  %2314 = add i32 %56, 56
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = add i32 %56, 60
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = or i32 %2319, %2316
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %3349, label %2322

; <label>:2322                                    ; preds = %2312
  %2323 = and i32 %2316, 262144
  %2324 = icmp ne i32 %2323, 0
  %2325 = select i1 %2324, float %59, float 1.000000e+00
  %2326 = select i1 %2324, float %60, float 0.000000e+00
  %2327 = select i1 %2324, float %61, float 0.000000e+00
  %2328 = select i1 %2324, float %62, float 1.000000e+00
  %2329 = select i1 %2324, float %63, float %84
  %2330 = select i1 %2324, float %64, float %85
  %2331 = add i32 %56, 316
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 16
  %2335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2334)  ; LegacyF16ToF32(value)
  %2336 = fmul fast float %2335, 0x3F50624DE0000000
  %2337 = add i32 %56, 120
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 16
  %2341 = and i32 %2340, 255
  %2342 = lshr i32 %2339, 24
  %2343 = add i32 %56, 324
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2345, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = add i32 %56, 64
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = lshr i32 %2352, 22
  %2354 = shl nuw nsw i32 %2353, 5
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = shl i32 %2352, 4
  %2357 = and i32 %2356, 32752
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = lshr i32 %2352, 7
  %2360 = and i32 %2359, 32752
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2364 = fmul fast float %2363, 1.000000e+03
  %2365 = fmul fast float %359, %2364
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fadd fast float %2366, %349
  %2368 = fmul fast float %360, %2364
  %2369 = call float @dx.op.unary.f32(i32 22, float %2368)  ; Frc(value)
  %2370 = fadd fast float %2369, %351
  %2371 = fmul fast float %2336, %2364
  %2372 = call float @dx.op.unary.f32(i32 22, float %2371)  ; Frc(value)
  %2373 = fmul fast float %2372, 0x401921FB60000000
  %2374 = fadd fast float %2373, %2355
  %2375 = call float @dx.op.unary.f32(i32 13, float %2374)  ; Sin(value)
  %2376 = call float @dx.op.unary.f32(i32 12, float %2374)  ; Cos(value)
  %2377 = fsub fast float -0.000000e+00, %2375
  %2378 = fadd fast float %2329, -5.000000e-01
  %2379 = fadd fast float %2330, -5.000000e-01
  %2380 = fmul fast float %2347, %2378
  %2381 = fmul fast float %2349, %2379
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = fmul fast float %2358, %2382
  %2385 = fmul fast float %2361, %2383
  %2386 = fmul fast float %2376, %2384
  %2387 = call float @dx.op.tertiary.f32(i32 46, float %2377, float %2385, float %2386)  ; FMad(a,b,c)
  %2388 = fmul fast float %2375, %2384
  %2389 = call float @dx.op.tertiary.f32(i32 46, float %2376, float %2385, float %2388)  ; FMad(a,b,c)
  %2390 = fadd fast float %2367, %2387
  %2391 = fadd fast float %2370, %2389
  %2392 = icmp ugt i32 %2341, 1
  %2393 = icmp ugt i32 %2339, 33554431
  %2394 = or i1 %2393, %2392
  br i1 %2394, label %2395, label %2420

; <label>:2395                                    ; preds = %2322
  %2396 = add i32 %56, 260
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = lshr i32 %2398, 16
  %2400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2399)  ; LegacyF16ToF32(value)
  %2401 = fmul fast float %2363, %2400
  %2402 = call float @dx.op.unary.f32(i32 22, float %2401)  ; Frc(value)
  %2403 = mul nuw nsw i32 %2341, %2342
  %2404 = uitofp i32 %2403 to float
  %2405 = fmul fast float %2402, %2404
  %2406 = call float @dx.op.unary.f32(i32 27, float %2405)  ; Round_ni(value)
  %2407 = fptoui float %2406 to i32
  %2408 = urem i32 %2407, %2341
  %2409 = udiv i32 %2407, %2342
  %2410 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2411 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2412 = uitofp i32 %2408 to float
  %2413 = uitofp i32 %2409 to float
  %2414 = fadd fast float %2410, %2412
  %2415 = fadd fast float %2411, %2413
  %2416 = uitofp i32 %2341 to float
  %2417 = uitofp i32 %2342 to float
  %2418 = fdiv fast float %2414, %2416
  %2419 = fdiv fast float %2415, %2417
  br label %2420

; <label>:2420                                    ; preds = %2395, %2322
  %2421 = phi float [ %2418, %2395 ], [ %2390, %2322 ]
  %2422 = phi float [ %2419, %2395 ], [ %2391, %2322 ]
  %2423 = and i32 %2316, 16777216
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2534, label %2425

; <label>:2425                                    ; preds = %2420
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = fadd fast float %2427, %161
  %2431 = fadd fast float %2428, %162
  %2432 = fadd fast float %2429, %163
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2436 = icmp eq i32 %57, 65535
  br i1 %2436, label %2531, label %2437

; <label>:2437                                    ; preds = %2425
  %2438 = lshr i32 %57, 1
  %2439 = shl i32 %2438, 2
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %57, 1
  %2443 = icmp ne i32 %2442, 0
  %2444 = lshr i32 %2441, 16
  %2445 = and i32 %2441, 65535
  %2446 = select i1 %2443, i32 %2444, i32 %2445
  %2447 = icmp eq i32 %2446, 65535
  br i1 %2447, label %2527, label %2448

; <label>:2448                                    ; preds = %2437
  %2449 = mul nuw nsw i32 %2446, 40
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2449, 12
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = add nuw nsw i32 %2449, 24
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = add nuw nsw i32 %2449, 36
  %2465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = fsub fast float %2430, %2451
  %2468 = fsub fast float %2431, %2452
  %2469 = fsub fast float %2432, %2453
  %2470 = fmul fast float %2466, %2467
  %2471 = fmul fast float %2466, %2468
  %2472 = fmul fast float %2466, %2469
  %2473 = call float @dx.op.unary.f32(i32 27, float %2470)  ; Round_ni(value)
  %2474 = call float @dx.op.unary.f32(i32 27, float %2471)  ; Round_ni(value)
  %2475 = call float @dx.op.unary.f32(i32 27, float %2472)  ; Round_ni(value)
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, %2456
  %2480 = fmul fast float %2477, %2457
  %2481 = fmul fast float %2478, %2458
  %2482 = shl i32 %57, 2
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = add i32 %2484, 0
  %2486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2487 = call float @dx.op.unary.f32(i32 22, float %2479)  ; Frc(value)
  %2488 = call float @dx.op.unary.f32(i32 22, float %2480)  ; Frc(value)
  %2489 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2486, %dx.types.Handle %49, float %2487, float %2488, float %2489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = fmul fast float %2491, 1.023000e+03
  %2495 = fmul fast float %2492, 1.023000e+03
  %2496 = fmul fast float %2493, 1.023000e+03
  %2497 = fadd fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2503 = fsub fast float %2470, %2473
  %2504 = fsub fast float %2471, %2474
  %2505 = fsub fast float %2472, %2475
  %2506 = fmul fast float %2503, 7.500000e-01
  %2507 = fmul fast float %2504, 7.500000e-01
  %2508 = fmul fast float %2505, 7.500000e-01
  %2509 = fadd fast float %2473, 1.250000e-01
  %2510 = fadd fast float %2509, %2506
  %2511 = fadd fast float %2510, %2500
  %2512 = fadd fast float %2474, 1.250000e-01
  %2513 = fadd fast float %2512, %2507
  %2514 = fadd fast float %2513, %2501
  %2515 = fadd fast float %2475, 1.250000e-01
  %2516 = fadd fast float %2515, %2508
  %2517 = fadd fast float %2516, %2502
  %2518 = fmul fast float %2511, %2461
  %2519 = fmul fast float %2514, %2462
  %2520 = fmul fast float %2517, %2463
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2524, %dx.types.Handle %47, float %2518, float %2519, float %2520, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  br label %2527

; <label>:2527                                    ; preds = %2448, %2437
  %2528 = phi float [ %2526, %2448 ], [ -1.000000e+00, %2437 ]
  %2529 = fadd fast float %2528, %2435
  %2530 = call float @dx.op.unary.f32(i32 7, float %2529)  ; Saturate(value)
  br label %2531

; <label>:2531                                    ; preds = %2527, %2425
  %2532 = phi float [ %2530, %2527 ], [ %2435, %2425 ]
  %2533 = fmul fast float %2532, %461
  br label %2534

; <label>:2534                                    ; preds = %2531, %2420
  %2535 = phi float [ %2533, %2531 ], [ %461, %2420 ]
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 256
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %2586, label %2540

; <label>:2540                                    ; preds = %2534
  %2541 = add i32 %56, 432
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = add i32 %56, 132
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = shl i32 %2550, 4
  %2552 = and i32 %2551, 32752
  %2553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2552)  ; LegacyF16ToF32(value)
  %2554 = lshr i32 %2550, 7
  %2555 = and i32 %2554, 32752
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = fsub fast float 1.000000e+00, %2535
  %2558 = call float @dx.op.binary.f32(i32 35, float %2557, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2559 = bitcast float %2535 to i32
  %2560 = sitofp i32 %2559 to float
  %2561 = fadd fast float %2560, 0xC1CFBF8940000000
  %2562 = fmul fast float %2556, %2561
  %2563 = fadd fast float %2562, 0x41CFBF8940000000
  %2564 = fptosi float %2563 to i32
  %2565 = bitcast i32 %2564 to float
  %2566 = bitcast float %2558 to i32
  %2567 = sitofp i32 %2566 to float
  %2568 = fadd fast float %2567, 0xC1CFBF8940000000
  %2569 = fmul fast float %2568, %2556
  %2570 = fadd fast float %2569, 0x41CFBF8940000000
  %2571 = fptosi float %2570 to i32
  %2572 = bitcast i32 %2571 to float
  %2573 = fmul fast float %2565, %2553
  %2574 = fmul fast float %2572, %2553
  %2575 = fsub fast float %2558, %2573
  %2576 = fadd fast float %2574, %2558
  %2577 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2579 = fsub fast float %2547, %2577
  %2580 = fsub fast float %2578, %2577
  %2581 = bitcast float %2580 to i32
  %2582 = sub nsw i32 2129859010, %2581
  %2583 = bitcast i32 %2582 to float
  %2584 = fmul fast float %2583, %2579
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  br label %2586

; <label>:2586                                    ; preds = %2540, %2534
  %2587 = phi float [ %2585, %2540 ], [ %2535, %2534 ]
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 128
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2608, label %2592

; <label>:2592                                    ; preds = %2586
  %2593 = add i32 %56, 416
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = add i32 %2595, 0
  %2597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2597, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2599 = extractvalue %dx.types.ResRet.f32 %2598, 0
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 524288
  %2603 = icmp ne i32 %2602, 0
  %2604 = fcmp fast ogt float %2599, 0x3FE0101020000000
  %2605 = select i1 %2604, float 1.000000e+00, float 0.000000e+00
  %2606 = select i1 %2603, float %2605, float %2599
  %2607 = fmul fast float %2606, %2587
  br label %2608

; <label>:2608                                    ; preds = %2592, %2586
  %2609 = phi float [ %2607, %2592 ], [ %2587, %2586 ]
  %2610 = fcmp fast ult float %2609, 0x3F70101020000000
  br i1 %2610, label %3349, label %2611

; <label>:2611                                    ; preds = %2608
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 16
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2814, label %2616

; <label>:2616                                    ; preds = %2611
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %56, 368
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2623, %dx.types.Handle %98, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.ResRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.ResRet.f32 %2624, 2
  %2628 = extractvalue %dx.types.ResRet.f32 %2624, 3
  %2629 = and i32 %2618, 255
  %2630 = uitofp i32 %2629 to float
  %2631 = lshr i32 %2618, 8
  %2632 = and i32 %2631, 255
  %2633 = uitofp i32 %2632 to float
  %2634 = fmul fast float %2628, %2630
  %2635 = fadd fast float %2634, %2633
  %2636 = fmul fast float %2635, 0x3F70101000000000
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 512
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2649, label %2641

; <label>:2641                                    ; preds = %2616
  %2642 = add i32 %56, 448
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %2644, 0
  %2646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2646, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  br label %2649

; <label>:2649                                    ; preds = %2641, %2616
  %2650 = phi float [ %2648, %2641 ], [ 1.000000e+00, %2616 ]
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 33554432
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %2761, label %2655

; <label>:2655                                    ; preds = %2649
  %2656 = add i32 %56, 256
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2658, 16
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = add i32 %56, 260
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 65535
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = lshr i32 %2669, 24
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = and i32 %2669, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101020000000
  %2676 = lshr i32 %2669, 8
  %2677 = and i32 %2676, 255
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = lshr i32 %2669, 16
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = add i32 %56, 252
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = lshr i32 %2686, 24
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = and i32 %2686, 255
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2691, 0x3F70101020000000
  %2693 = lshr i32 %2686, 8
  %2694 = and i32 %2693, 255
  %2695 = uitofp i32 %2694 to float
  %2696 = fmul fast float %2695, 0x3F70101020000000
  %2697 = lshr i32 %2686, 16
  %2698 = and i32 %2697, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = bitcast float %2625 to i32
  %2702 = ashr i32 %2701, 1
  %2703 = sub nsw i32 1597463174, %2702
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2625, 5.000000e-01
  %2706 = fmul fast float %2704, %2704
  %2707 = fmul fast float %2706, %2705
  %2708 = fsub fast float 1.500000e+00, %2707
  %2709 = fmul fast float %2704, %2625
  %2710 = fmul fast float %2709, %2708
  %2711 = bitcast float %2626 to i32
  %2712 = ashr i32 %2711, 1
  %2713 = sub nsw i32 1597463174, %2712
  %2714 = bitcast i32 %2713 to float
  %2715 = fmul fast float %2626, 5.000000e-01
  %2716 = fmul fast float %2714, %2714
  %2717 = fmul fast float %2716, %2715
  %2718 = fsub fast float 1.500000e+00, %2717
  %2719 = fmul fast float %2714, %2626
  %2720 = fmul fast float %2719, %2718
  %2721 = bitcast float %2627 to i32
  %2722 = ashr i32 %2721, 1
  %2723 = sub nsw i32 1597463174, %2722
  %2724 = bitcast i32 %2723 to float
  %2725 = fmul fast float %2627, 5.000000e-01
  %2726 = fmul fast float %2724, %2724
  %2727 = fmul fast float %2726, %2725
  %2728 = fsub fast float 1.500000e+00, %2727
  %2729 = fmul fast float %2724, %2627
  %2730 = fmul fast float %2729, %2728
  %2731 = fsub fast float %2710, %2692
  %2732 = fsub fast float %2720, %2696
  %2733 = fsub fast float %2730, %2700
  %2734 = fmul fast float %2731, %2660
  %2735 = fmul fast float %2732, %2662
  %2736 = fmul fast float %2733, %2667
  %2737 = fadd fast float %2734, %2675
  %2738 = fadd fast float %2735, %2679
  %2739 = fadd fast float %2736, %2683
  %2740 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2741 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2742 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2743 = fmul fast float %2740, %2740
  %2744 = fmul fast float %2741, %2741
  %2745 = fmul fast float %2742, %2742
  %2746 = fsub fast float %2743, %2625
  %2747 = fsub fast float %2744, %2626
  %2748 = fsub fast float %2745, %2627
  %2749 = fmul fast float %2746, %2650
  %2750 = fmul fast float %2747, %2650
  %2751 = fmul fast float %2748, %2650
  %2752 = fadd fast float %2749, %2625
  %2753 = fadd fast float %2750, %2626
  %2754 = fadd fast float %2751, %2627
  %2755 = fadd fast float %2672, %2636
  %2756 = fsub fast float %2755, %2689
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fsub fast float %2757, %2636
  %2759 = fmul fast float %2758, %2650
  %2760 = fadd fast float %2759, %2636
  br label %2814

; <label>:2761                                    ; preds = %2649
  %2762 = and i32 %2652, 134217728
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2798, label %2764

; <label>:2764                                    ; preds = %2761
  %2765 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2767 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fmul fast float %2768, %2650
  %2772 = fmul fast float %2769, %2650
  %2773 = fmul fast float %2770, %2650
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = call float @dx.op.unary.f32(i32 24, float %2625)  ; Sqrt(value)
  %2778 = call float @dx.op.unary.f32(i32 24, float %2626)  ; Sqrt(value)
  %2779 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2780 = fmul fast float %2774, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2777
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2777
  %2785 = fmul fast float %2775, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2778
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2778
  %2790 = fmul fast float %2776, 2.000000e+00
  %2791 = fsub fast float 1.000000e+00, %2790
  %2792 = fmul fast float %2791, %2779
  %2793 = fadd fast float %2792, %2790
  %2794 = fmul fast float %2793, %2779
  %2795 = fmul fast float %2784, %2784
  %2796 = fmul fast float %2789, %2789
  %2797 = fmul fast float %2794, %2794
  br label %2814

; <label>:2798                                    ; preds = %2761
  %2799 = fmul fast float %336, %336
  %2800 = fmul fast float %340, %340
  %2801 = fmul fast float %344, %344
  %2802 = fadd fast float %2799, -1.000000e+00
  %2803 = fadd fast float %2800, -1.000000e+00
  %2804 = fadd fast float %2801, -1.000000e+00
  %2805 = fmul fast float %2650, %2802
  %2806 = fmul fast float %2650, %2803
  %2807 = fmul fast float %2650, %2804
  %2808 = fadd fast float %2805, 1.000000e+00
  %2809 = fadd fast float %2806, 1.000000e+00
  %2810 = fadd fast float %2807, 1.000000e+00
  %2811 = fmul fast float %2808, %2625
  %2812 = fmul fast float %2809, %2626
  %2813 = fmul fast float %2810, %2627
  br label %2814

; <label>:2814                                    ; preds = %2798, %2764, %2655, %2611
  %2815 = phi float [ %2760, %2655 ], [ %2636, %2764 ], [ %2636, %2798 ], [ 0x3FA23C0BE0000000, %2611 ]
  %2816 = phi float [ %2752, %2655 ], [ %2795, %2764 ], [ %2811, %2798 ], [ 1.000000e+00, %2611 ]
  %2817 = phi float [ %2753, %2655 ], [ %2796, %2764 ], [ %2812, %2798 ], [ 1.000000e+00, %2611 ]
  %2818 = phi float [ %2754, %2655 ], [ %2797, %2764 ], [ %2813, %2798 ], [ 1.000000e+00, %2611 ]
  %2819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.i32 %2819, 1
  %2821 = and i32 %2820, 1
  %2822 = icmp ne i32 %2821, 0
  %2823 = add i32 %56, 356
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = and i32 %2825, 32
  %2827 = icmp ne i32 %2826, 0
  %2828 = and i1 %2822, %2827
  %2829 = select i1 %2828, float 1.000000e+00, float %2816
  %2830 = select i1 %2828, float 0x3FD3333340000000, float %2817
  %2831 = select i1 %2828, float 0x3FD3333340000000, float %2818
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 32
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2908, label %2836

; <label>:2836                                    ; preds = %2814
  %2837 = add i32 %56, 124
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %56, 384
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %2842, 0
  %2844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2844, %dx.types.Handle %98, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = extractvalue %dx.types.ResRet.f32 %2845, 3
  %2850 = and i32 %2839, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = lshr i32 %2839, 8
  %2853 = and i32 %2852, 255
  %2854 = uitofp i32 %2853 to float
  %2855 = lshr i32 %2839, 16
  %2856 = and i32 %2855, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = fmul fast float %2857, 0x3F70101000000000
  %2859 = fmul fast float %2846, %2851
  %2860 = fadd fast float %2859, %2854
  %2861 = fmul fast float %2860, 0x3F70101000000000
  %2862 = fadd fast float %2847, -5.000000e-01
  %2863 = fadd fast float %2849, -5.000000e-01
  %2864 = fmul fast float %2862, %2858
  %2865 = fmul fast float %2863, %2858
  %2866 = fadd fast float %2864, 5.000000e-01
  %2867 = fadd fast float %2865, 5.000000e-01
  %2868 = fmul fast float %2866, 2.000000e+00
  %2869 = fadd fast float %2868, -1.000000e+00
  %2870 = fmul fast float %2867, 2.000000e+00
  %2871 = fadd fast float %2870, -1.000000e+00
  %2872 = fadd fast float %2869, %2871
  %2873 = fmul fast float %2872, 5.000000e-01
  %2874 = fsub fast float %2869, %2871
  %2875 = fmul fast float %2874, 5.000000e-01
  %2876 = call float @dx.op.unary.f32(i32 6, float %2873)  ; FAbs(value)
  %2877 = fsub fast float 1.000000e+00, %2876
  %2878 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2879 = fsub fast float %2877, %2878
  %2880 = call float @dx.op.dot3.f32(i32 55, float %2873, float %2875, float %2879, float %2873, float %2875, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %2881 = call float @dx.op.unary.f32(i32 25, float %2880)  ; Rsqrt(value)
  %2882 = fmul fast float %2873, %2881
  %2883 = fmul fast float %2875, %2881
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 67108864
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2904, label %2888

; <label>:2888                                    ; preds = %2836
  %2889 = add i32 %56, 312
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 65535
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2891, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = fsub fast float %2861, %2899
  %2901 = fmul fast float %2900, %2893
  %2902 = fadd fast float %2901, %2897
  %2903 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  br label %2904

; <label>:2904                                    ; preds = %2888, %2836
  %2905 = phi float [ %2903, %2888 ], [ %2861, %2836 ]
  %2906 = call float @dx.op.dot2.f32(i32 54, float %2882, float %2883, float %2325, float %2326)  ; Dot2(ax,ay,bx,by)
  %2907 = call float @dx.op.dot2.f32(i32 54, float %2882, float %2883, float %2327, float %2328)  ; Dot2(ax,ay,bx,by)
  br label %2908

; <label>:2908                                    ; preds = %2904, %2814
  %2909 = phi float [ %2905, %2904 ], [ 0x3FD6666660000000, %2814 ]
  %2910 = phi float [ %2906, %2904 ], [ 0.000000e+00, %2814 ]
  %2911 = phi float [ %2907, %2904 ], [ 0.000000e+00, %2814 ]
  %2912 = phi float [ %2848, %2904 ], [ 1.000000e+00, %2814 ]
  %2913 = add i32 %56, 192
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = lshr i32 %2915, 22
  %2917 = shl nuw nsw i32 %2916, 5
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 64
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2956, label %2923

; <label>:2923                                    ; preds = %2908
  %2924 = add i32 %56, 400
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 131072
  %2932 = icmp eq i32 %2931, 0
  %2933 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %98, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.ResRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.ResRet.f32 %2933, 2
  %2937 = fmul fast float %2934, %324
  %2938 = fmul fast float %2935, %327
  %2939 = fmul fast float %2936, %330
  br i1 %2932, label %2946, label %2940

; <label>:2940                                    ; preds = %2923
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 0
  %2943 = fmul fast float %2942, %2937
  %2944 = fmul fast float %2942, %2938
  %2945 = fmul fast float %2942, %2939
  br label %2946

; <label>:2946                                    ; preds = %2940, %2923
  %2947 = phi float [ %2943, %2940 ], [ %2937, %2923 ]
  %2948 = phi float [ %2944, %2940 ], [ %2938, %2923 ]
  %2949 = phi float [ %2945, %2940 ], [ %2939, %2923 ]
  %2950 = fmul fast float %2947, %2918
  %2951 = select i1 %223, float %2950, float %2947
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2951, float %2948, float %2949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = select i1 %223, float 0.000000e+00, float %2947
  %2954 = select i1 %223, float %2952, float %2948
  %2955 = select i1 %223, float 0.000000e+00, float %2949
  br label %2956

; <label>:2956                                    ; preds = %2946, %2908
  %2957 = phi float [ %2953, %2946 ], [ 0.000000e+00, %2908 ]
  %2958 = phi float [ %2954, %2946 ], [ 0.000000e+00, %2908 ]
  %2959 = phi float [ %2955, %2946 ], [ 0.000000e+00, %2908 ]
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 1024
  %2963 = icmp eq i32 %2962, 0
  br i1 %2963, label %2994, label %2964

; <label>:2964                                    ; preds = %2956
  %2965 = add i32 %56, 184
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2967, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2967, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = fmul fast float %2970, %2970
  %2980 = fmul fast float %2974, %2974
  %2981 = fmul fast float %2978, %2978
  %2982 = add i32 %56, 464
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = add i32 %2984, 0
  %2986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2986, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = fmul fast float %2979, %2988
  %2992 = fmul fast float %2980, %2989
  %2993 = fmul fast float %2981, %2990
  br label %2994

; <label>:2994                                    ; preds = %2964, %2956
  %2995 = phi float [ %2991, %2964 ], [ 0.000000e+00, %2956 ]
  %2996 = phi float [ %2992, %2964 ], [ 0.000000e+00, %2956 ]
  %2997 = phi float [ %2993, %2964 ], [ 0.000000e+00, %2956 ]
  %2998 = fcmp fast ogt float %2995, 0.000000e+00
  %2999 = fcmp fast ogt float %2996, 0.000000e+00
  %3000 = fcmp fast ogt float %2997, 0.000000e+00
  %3001 = call float @dx.op.unary.f32(i32 23, float %2995)  ; Log(value)
  %3002 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %3003 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = lshr i32 %3005, 7
  %3007 = and i32 %3006, 32752
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = fmul fast float %3001, 0xBFE62E4300000000
  %3010 = fmul fast float %3009, %3008
  %3011 = fmul fast float %3002, 0xBFE62E4300000000
  %3012 = fmul fast float %3011, %3008
  %3013 = fmul fast float %3003, 0xBFE62E4300000000
  %3014 = fmul fast float %3013, %3008
  %3015 = select i1 %2998, float %3010, float 1.270000e+02
  %3016 = select i1 %2999, float %3012, float 1.270000e+02
  %3017 = select i1 %3000, float %3014, float 1.270000e+02
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 10240
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3066, label %3022

; <label>:3022                                    ; preds = %2994
  %3023 = add i32 %56, 480
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3027, %dx.types.Handle %99, float %2421, float %2422, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 3
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = and i32 %3032, 1048576
  %3034 = icmp ne i32 %3033, 0
  %3035 = and i32 %3032, 8192
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3052, label %3037

; <label>:3037                                    ; preds = %3022
  %3038 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3039 = select i1 %3034, float %3038, float %3029
  %3040 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3041 = select i1 %3034, float %3040, float %3029
  %3042 = add i32 %56, 128
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = lshr i32 %3044, 16
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = fmul fast float %3047, 0x3F80101020000000
  %3049 = fmul fast float %3048, %3041
  %3050 = fmul fast float %3048, %3029
  %3051 = fmul fast float %3048, %3039
  br label %3052

; <label>:3052                                    ; preds = %3037, %3022
  %3053 = phi float [ %3049, %3037 ], [ 0.000000e+00, %3022 ]
  %3054 = phi float [ %3050, %3037 ], [ 0.000000e+00, %3022 ]
  %3055 = phi float [ %3051, %3037 ], [ 0.000000e+00, %3022 ]
  %3056 = and i32 %3032, 2048
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3066, label %3058

; <label>:3058                                    ; preds = %3052
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = shl i32 %3060, 4
  %3062 = and i32 %3061, 32752
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = fmul fast float %3063, %3030
  %3065 = call float @dx.op.binary.f32(i32 35, float %3064, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3066

; <label>:3066                                    ; preds = %3058, %3052, %2994
  %3067 = phi float [ %3053, %3058 ], [ %3053, %3052 ], [ 0.000000e+00, %2994 ]
  %3068 = phi float [ %3054, %3058 ], [ %3054, %3052 ], [ 0.000000e+00, %2994 ]
  %3069 = phi float [ %3055, %3058 ], [ %3055, %3052 ], [ 0.000000e+00, %2994 ]
  %3070 = phi float [ %3065, %3058 ], [ 0x3F70101020000000, %3052 ], [ 0x3F70101020000000, %2994 ]
  %3071 = add i32 %56, 128
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 255
  %3075 = uitofp i32 %3074 to float
  %3076 = lshr i32 %3073, 8
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2830, float %2831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3080 = fmul fast float %3078, %3079
  %3081 = fadd fast float %3080, %3075
  %3082 = fmul fast float %3081, 0x3F70101020000000
  %3083 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  br i1 %2313, label %3084, label %3119

; <label>:3084                                    ; preds = %3066
  %3085 = fmul fast float %3070, 2.000000e+00
  %3086 = fcmp fast olt float %3015, 1.270000e+02
  %3087 = fcmp fast olt float %3016, 1.270000e+02
  %3088 = fcmp fast olt float %3017, 1.270000e+02
  %3089 = fmul fast float %3015, 0xBFF7154760000000
  %3090 = fmul fast float %3089, %3085
  %3091 = fmul fast float %3016, 0xBFF7154760000000
  %3092 = fmul fast float %3091, %3085
  %3093 = fmul fast float %3017, 0xBFF7154760000000
  %3094 = fmul fast float %3093, %3085
  %3095 = call float @dx.op.unary.f32(i32 21, float %3090)  ; Exp(value)
  %3096 = call float @dx.op.unary.f32(i32 21, float %3092)  ; Exp(value)
  %3097 = call float @dx.op.unary.f32(i32 21, float %3094)  ; Exp(value)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3099 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3101 = fadd fast float %3098, -1.000000e+00
  %3102 = select i1 %3086, float %3101, float -1.000000e+00
  %3103 = fadd fast float %3099, -1.000000e+00
  %3104 = select i1 %3087, float %3103, float -1.000000e+00
  %3105 = fadd fast float %3100, -1.000000e+00
  %3106 = select i1 %3088, float %3105, float -1.000000e+00
  %3107 = fmul fast float %3102, %2609
  %3108 = fmul fast float %3104, %2609
  %3109 = fmul fast float %3106, %2609
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fmul fast float %3110, %2295
  %3114 = fmul fast float %3111, %2296
  %3115 = fmul fast float %3112, %2297
  %3116 = fmul fast float %3110, %2298
  %3117 = fmul fast float %3111, %2299
  %3118 = fmul fast float %3112, %2300
  br label %3119

; <label>:3119                                    ; preds = %3084, %3066
  %3120 = phi float [ %3113, %3084 ], [ %2295, %3066 ]
  %3121 = phi float [ %3114, %3084 ], [ %2296, %3066 ]
  %3122 = phi float [ %3115, %3084 ], [ %2297, %3066 ]
  %3123 = phi float [ %3116, %3084 ], [ %2298, %3066 ]
  %3124 = phi float [ %3117, %3084 ], [ %2299, %3066 ]
  %3125 = phi float [ %3118, %3084 ], [ %2300, %3066 ]
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 3
  %3129 = icmp eq i32 %3128, 3
  br i1 %3129, label %3208, label %3130

; <label>:3130                                    ; preds = %3119
  %3131 = and i32 %3127, 16
  %3132 = icmp ne i32 %3131, 0
  %3133 = select i1 %3132, float %2609, float 0.000000e+00
  %3134 = icmp eq i32 %3128, 0
  br i1 %3134, label %3135, label %3163

; <label>:3135                                    ; preds = %3130
  %3136 = and i32 %3127, 64
  %3137 = icmp ne i32 %3136, 0
  %3138 = select i1 %3137, float %2609, float 0.000000e+00
  %3139 = fsub fast float %2829, %3120
  %3140 = fsub fast float %2830, %3121
  %3141 = fsub fast float %2831, %3122
  %3142 = fmul fast float %3133, %3139
  %3143 = fmul fast float %3133, %3140
  %3144 = fmul fast float %3133, %3141
  %3145 = fadd fast float %3142, %3120
  %3146 = fadd fast float %3143, %3121
  %3147 = fadd fast float %3144, %3122
  %3148 = fsub fast float %2815, %2307
  %3149 = fmul fast float %3133, %3148
  %3150 = fadd fast float %3149, %2307
  %3151 = fsub fast float %2957, %3123
  %3152 = fsub fast float %2958, %3124
  %3153 = fsub fast float %2959, %3125
  %3154 = fmul fast float %3138, %3151
  %3155 = fmul fast float %3138, %3152
  %3156 = fmul fast float %3138, %3153
  %3157 = fadd fast float %3154, %3123
  %3158 = fadd fast float %3155, %3124
  %3159 = fadd fast float %3156, %3125
  %3160 = fsub fast float %3083, %2311
  %3161 = fmul fast float %3133, %3160
  %3162 = fadd fast float %3161, %2311
  br label %3208

; <label>:3163                                    ; preds = %3130
  %3164 = icmp eq i32 %3128, 1
  br i1 %3164, label %3165, label %3178

; <label>:3165                                    ; preds = %3163
  %3166 = fadd fast float %2829, -1.000000e+00
  %3167 = fadd fast float %2830, -1.000000e+00
  %3168 = fadd fast float %2831, -1.000000e+00
  %3169 = fmul fast float %3133, %3166
  %3170 = fmul fast float %3133, %3167
  %3171 = fmul fast float %3133, %3168
  %3172 = fadd fast float %3169, 1.000000e+00
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fadd fast float %3171, 1.000000e+00
  %3175 = fmul fast float %3172, %3120
  %3176 = fmul fast float %3173, %3121
  %3177 = fmul fast float %3174, %3122
  br label %3208

; <label>:3178                                    ; preds = %3163
  %3179 = icmp eq i32 %3128, 2
  br i1 %3179, label %3180, label %3208

; <label>:3180                                    ; preds = %3178
  %3181 = call float @dx.op.unary.f32(i32 24, float %2829)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %2830)  ; Sqrt(value)
  %3183 = call float @dx.op.unary.f32(i32 24, float %2831)  ; Sqrt(value)
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fmul fast float %3184, %3133
  %3188 = fmul fast float %3185, %3133
  %3189 = fmul fast float %3186, %3133
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = fmul fast float %3190, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3120
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3120
  %3198 = fmul fast float %3191, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3121
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3121
  %3203 = fmul fast float %3192, 2.000000e+00
  %3204 = fsub fast float 1.000000e+00, %3203
  %3205 = fmul fast float %3204, %3122
  %3206 = fadd fast float %3205, %3203
  %3207 = fmul fast float %3206, %3122
  br label %3208

; <label>:3208                                    ; preds = %3180, %3178, %3165, %3135, %3119
  %3209 = phi float [ %3120, %3119 ], [ %3197, %3180 ], [ %3120, %3178 ], [ %3175, %3165 ], [ %3145, %3135 ]
  %3210 = phi float [ %3121, %3119 ], [ %3202, %3180 ], [ %3121, %3178 ], [ %3176, %3165 ], [ %3146, %3135 ]
  %3211 = phi float [ %3122, %3119 ], [ %3207, %3180 ], [ %3122, %3178 ], [ %3177, %3165 ], [ %3147, %3135 ]
  %3212 = phi float [ %3123, %3119 ], [ %3123, %3180 ], [ %3123, %3178 ], [ %3123, %3165 ], [ %3157, %3135 ]
  %3213 = phi float [ %3124, %3119 ], [ %3124, %3180 ], [ %3124, %3178 ], [ %3124, %3165 ], [ %3158, %3135 ]
  %3214 = phi float [ %3125, %3119 ], [ %3125, %3180 ], [ %3125, %3178 ], [ %3125, %3165 ], [ %3159, %3135 ]
  %3215 = phi float [ %2307, %3119 ], [ %2307, %3180 ], [ %2307, %3178 ], [ %2307, %3165 ], [ %3150, %3135 ]
  %3216 = phi float [ %2311, %3119 ], [ %2311, %3180 ], [ %2311, %3178 ], [ %2311, %3165 ], [ %3162, %3135 ]
  %3217 = and i32 %3127, 12
  %3218 = icmp eq i32 %3217, 12
  br i1 %3218, label %3349, label %3219

; <label>:3219                                    ; preds = %3208
  %3220 = and i32 %3127, 2097184
  %3221 = icmp eq i32 %3220, 2097184
  %3222 = select i1 %3221, float %2609, float 0.000000e+00
  %3223 = and i32 %3127, 4194336
  %3224 = icmp eq i32 %3223, 4194336
  %3225 = select i1 %3224, float %2609, float 0.000000e+00
  %3226 = and i32 %3127, 8388640
  %3227 = icmp eq i32 %3226, 8388640
  %3228 = select i1 %3227, float %2609, float 0.000000e+00
  %3229 = and i32 %3127, 1024
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2609, float 0.000000e+00
  %3232 = and i32 %3127, 2048
  %3233 = icmp ne i32 %3232, 0
  %3234 = select i1 %3233, float %2609, float 0.000000e+00
  %3235 = and i32 %3127, 8192
  %3236 = icmp ne i32 %3235, 0
  %3237 = select i1 %3236, float %2609, float 0.000000e+00
  %3238 = icmp eq i32 %3217, 0
  br i1 %3238, label %3239, label %3273

; <label>:3239                                    ; preds = %3219
  %3240 = fsub fast float %2910, %2293
  %3241 = fsub fast float %2911, %2294
  %3242 = fmul fast float %3222, %3240
  %3243 = fmul fast float %3222, %3241
  %3244 = fadd fast float %3242, %2293
  %3245 = fadd fast float %3243, %2294
  %3246 = fsub fast float %2912, %2309
  %3247 = fmul fast float %3225, %3246
  %3248 = fadd fast float %3247, %2309
  %3249 = fsub fast float %2909, %2308
  %3250 = fmul fast float %3228, %3249
  %3251 = fadd fast float %3250, %2308
  %3252 = fsub fast float %3015, %2304
  %3253 = fsub fast float %3016, %2305
  %3254 = fsub fast float %3017, %2306
  %3255 = fmul fast float %3231, %3252
  %3256 = fmul fast float %3231, %3253
  %3257 = fmul fast float %3231, %3254
  %3258 = fadd fast float %3255, %2304
  %3259 = fadd fast float %3256, %2305
  %3260 = fadd fast float %3257, %2306
  %3261 = fsub fast float %3070, %2310
  %3262 = fmul fast float %3234, %3261
  %3263 = fadd fast float %3262, %2310
  %3264 = fsub fast float %3067, %2301
  %3265 = fsub fast float %3068, %2302
  %3266 = fsub fast float %3069, %2303
  %3267 = fmul fast float %3237, %3264
  %3268 = fmul fast float %3237, %3265
  %3269 = fmul fast float %3237, %3266
  %3270 = fadd fast float %3267, %2301
  %3271 = fadd fast float %3268, %2302
  %3272 = fadd fast float %3269, %2303
  br label %3349

; <label>:3273                                    ; preds = %3219
  %3274 = icmp eq i32 %3217, 4
  br i1 %3274, label %3275, label %3321

; <label>:3275                                    ; preds = %3273
  %3276 = fmul fast float %3222, %2910
  %3277 = fmul fast float %3222, %2911
  %3278 = fadd fast float %3276, %2293
  %3279 = fadd fast float %3277, %2294
  %3280 = call float @dx.op.binary.f32(i32 36, float %2309, float %2912)  ; FMin(a,b)
  %3281 = fsub fast float %3280, %2309
  %3282 = fmul fast float %3281, %3225
  %3283 = fadd fast float %3282, %2309
  %3284 = fadd fast float %2909, %2308
  %3285 = fmul fast float %3284, 0x3FF337FAE0000000
  %3286 = fmul fast float %2308, %2308
  %3287 = fmul fast float %2909, %2909
  %3288 = fadd fast float %3287, %3286
  %3289 = fmul fast float %3288, 0x3FE5152B00000000
  %3290 = fmul fast float %2308, 0xBFCC1F85E0000000
  %3291 = fmul fast float %3290, %2909
  %3292 = fadd fast float %3291, 0xBFE1363700000000
  %3293 = fadd fast float %3292, %3285
  %3294 = fsub fast float %3293, %3289
  %3295 = fmul fast float %3284, 0x3FBA6F0D00000000
  %3296 = fmul fast float %3288, 0x3FD0432880000000
  %3297 = fmul fast float %2308, 0xBFEF110800000000
  %3298 = fmul fast float %3297, %2909
  %3299 = fadd fast float %3298, 1.000000e+00
  %3300 = fsub fast float %3299, %3295
  %3301 = fadd fast float %3300, %3296
  %3302 = fdiv fast float %3294, %3301
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fsub fast float %3303, %2308
  %3305 = fmul fast float %3304, %3228
  %3306 = fadd fast float %3305, %2308
  %3307 = fmul fast float %3231, %3015
  %3308 = fmul fast float %3231, %3016
  %3309 = fmul fast float %3231, %3017
  %3310 = fadd fast float %3307, %2304
  %3311 = fadd fast float %3308, %2305
  %3312 = fadd fast float %3309, %2306
  %3313 = fmul fast float %3234, %3070
  %3314 = fadd fast float %3313, %2310
  %3315 = fmul fast float %3237, %3067
  %3316 = fmul fast float %3237, %3068
  %3317 = fmul fast float %3237, %3069
  %3318 = fadd fast float %3315, %2301
  %3319 = fadd fast float %3316, %2302
  %3320 = fadd fast float %3317, %2303
  br label %3349

; <label>:3321                                    ; preds = %3273
  %3322 = icmp eq i32 %3217, 8
  br i1 %3322, label %3323, label %3349

; <label>:3323                                    ; preds = %3321
  %3324 = fmul fast float %3222, %2910
  %3325 = fmul fast float %3222, %2911
  %3326 = fadd fast float %3324, %2293
  %3327 = fadd fast float %3325, %2294
  %3328 = call float @dx.op.binary.f32(i32 36, float %2309, float %2912)  ; FMin(a,b)
  %3329 = fsub fast float %3328, %2309
  %3330 = fmul fast float %3329, %3225
  %3331 = fadd fast float %3330, %2309
  %3332 = fsub fast float %2909, %2308
  %3333 = fmul fast float %3228, %3332
  %3334 = fadd fast float %3333, %2308
  %3335 = fmul fast float %3231, %3015
  %3336 = fmul fast float %3231, %3016
  %3337 = fmul fast float %3231, %3017
  %3338 = fadd fast float %3335, %2304
  %3339 = fadd fast float %3336, %2305
  %3340 = fadd fast float %3337, %2306
  %3341 = fmul fast float %3234, %3070
  %3342 = fadd fast float %3341, %2310
  %3343 = fmul fast float %3237, %3067
  %3344 = fmul fast float %3237, %3068
  %3345 = fmul fast float %3237, %3069
  %3346 = fadd fast float %3343, %2301
  %3347 = fadd fast float %3344, %2302
  %3348 = fadd fast float %3345, %2303
  br label %3349

; <label>:3349                                    ; preds = %3323, %3321, %3275, %3239, %3208, %2608, %2312, %2292
  %3350 = phi float [ %2293, %3208 ], [ %2293, %2608 ], [ %2293, %2292 ], [ %3326, %3323 ], [ %2293, %3321 ], [ %3278, %3275 ], [ %3244, %3239 ], [ %2293, %2312 ]
  %3351 = phi float [ %2294, %3208 ], [ %2294, %2608 ], [ %2294, %2292 ], [ %3327, %3323 ], [ %2294, %3321 ], [ %3279, %3275 ], [ %3245, %3239 ], [ %2294, %2312 ]
  %3352 = phi float [ %3209, %3208 ], [ %2295, %2608 ], [ %2295, %2292 ], [ %3209, %3323 ], [ %3209, %3321 ], [ %3209, %3275 ], [ %3209, %3239 ], [ %2295, %2312 ]
  %3353 = phi float [ %3210, %3208 ], [ %2296, %2608 ], [ %2296, %2292 ], [ %3210, %3323 ], [ %3210, %3321 ], [ %3210, %3275 ], [ %3210, %3239 ], [ %2296, %2312 ]
  %3354 = phi float [ %3211, %3208 ], [ %2297, %2608 ], [ %2297, %2292 ], [ %3211, %3323 ], [ %3211, %3321 ], [ %3211, %3275 ], [ %3211, %3239 ], [ %2297, %2312 ]
  %3355 = phi float [ %3212, %3208 ], [ %2298, %2608 ], [ %2298, %2292 ], [ %3212, %3323 ], [ %3212, %3321 ], [ %3212, %3275 ], [ %3212, %3239 ], [ %2298, %2312 ]
  %3356 = phi float [ %3213, %3208 ], [ %2299, %2608 ], [ %2299, %2292 ], [ %3213, %3323 ], [ %3213, %3321 ], [ %3213, %3275 ], [ %3213, %3239 ], [ %2299, %2312 ]
  %3357 = phi float [ %3214, %3208 ], [ %2300, %2608 ], [ %2300, %2292 ], [ %3214, %3323 ], [ %3214, %3321 ], [ %3214, %3275 ], [ %3214, %3239 ], [ %2300, %2312 ]
  %3358 = phi float [ %2301, %3208 ], [ %2301, %2608 ], [ %2301, %2292 ], [ %3346, %3323 ], [ %2301, %3321 ], [ %3318, %3275 ], [ %3270, %3239 ], [ %2301, %2312 ]
  %3359 = phi float [ %2302, %3208 ], [ %2302, %2608 ], [ %2302, %2292 ], [ %3347, %3323 ], [ %2302, %3321 ], [ %3319, %3275 ], [ %3271, %3239 ], [ %2302, %2312 ]
  %3360 = phi float [ %2303, %3208 ], [ %2303, %2608 ], [ %2303, %2292 ], [ %3348, %3323 ], [ %2303, %3321 ], [ %3320, %3275 ], [ %3272, %3239 ], [ %2303, %2312 ]
  %3361 = phi float [ %2304, %3208 ], [ %2304, %2608 ], [ %2304, %2292 ], [ %3338, %3323 ], [ %2304, %3321 ], [ %3310, %3275 ], [ %3258, %3239 ], [ %2304, %2312 ]
  %3362 = phi float [ %2305, %3208 ], [ %2305, %2608 ], [ %2305, %2292 ], [ %3339, %3323 ], [ %2305, %3321 ], [ %3311, %3275 ], [ %3259, %3239 ], [ %2305, %2312 ]
  %3363 = phi float [ %2306, %3208 ], [ %2306, %2608 ], [ %2306, %2292 ], [ %3340, %3323 ], [ %2306, %3321 ], [ %3312, %3275 ], [ %3260, %3239 ], [ %2306, %2312 ]
  %3364 = phi float [ %3215, %3208 ], [ %2307, %2608 ], [ %2307, %2292 ], [ %3215, %3323 ], [ %3215, %3321 ], [ %3215, %3275 ], [ %3215, %3239 ], [ %2307, %2312 ]
  %3365 = phi float [ %2308, %3208 ], [ %2308, %2608 ], [ %2308, %2292 ], [ %3334, %3323 ], [ %2308, %3321 ], [ %3306, %3275 ], [ %3251, %3239 ], [ %2308, %2312 ]
  %3366 = phi float [ %2309, %3208 ], [ %2309, %2608 ], [ %2309, %2292 ], [ %3331, %3323 ], [ %2309, %3321 ], [ %3283, %3275 ], [ %3248, %3239 ], [ %2309, %2312 ]
  %3367 = phi float [ %2310, %3208 ], [ %2310, %2608 ], [ %2310, %2292 ], [ %3342, %3323 ], [ %2310, %3321 ], [ %3314, %3275 ], [ %3263, %3239 ], [ %2310, %2312 ]
  %3368 = phi float [ %3216, %3208 ], [ %2311, %2608 ], [ %2311, %2292 ], [ %3216, %3323 ], [ %3216, %3321 ], [ %3216, %3275 ], [ %3216, %3239 ], [ %2311, %2312 ]
  br i1 %411, label %4406, label %3369

; <label>:3369                                    ; preds = %3349
  %3370 = icmp ult i32 %465, 4
  %3371 = add i32 %56, 72
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = add i32 %56, 76
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = or i32 %3376, %3373
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %4406, label %3379

; <label>:3379                                    ; preds = %3369
  %3380 = and i32 %3373, 262144
  %3381 = icmp ne i32 %3380, 0
  %3382 = select i1 %3381, float %59, float 1.000000e+00
  %3383 = select i1 %3381, float %60, float 0.000000e+00
  %3384 = select i1 %3381, float %61, float 0.000000e+00
  %3385 = select i1 %3381, float %62, float 1.000000e+00
  %3386 = select i1 %3381, float %63, float %84
  %3387 = select i1 %3381, float %64, float %85
  %3388 = add i32 %56, 332
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = lshr i32 %3390, 16
  %3392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3391)  ; LegacyF16ToF32(value)
  %3393 = fmul fast float %3392, 0x3F50624DE0000000
  %3394 = add i32 %56, 136
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = lshr i32 %3396, 16
  %3398 = and i32 %3397, 255
  %3399 = lshr i32 %3396, 24
  %3400 = add i32 %56, 340
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = lshr i32 %3402, 16
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = add i32 %56, 80
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = lshr i32 %3409, 22
  %3411 = shl nuw nsw i32 %3410, 5
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = shl i32 %3409, 4
  %3414 = and i32 %3413, 32752
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = lshr i32 %3409, 7
  %3417 = and i32 %3416, 32752
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 3
  %3421 = fmul fast float %3420, 1.000000e+03
  %3422 = fmul fast float %401, %3421
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fadd fast float %3423, %391
  %3425 = fmul fast float %402, %3421
  %3426 = call float @dx.op.unary.f32(i32 22, float %3425)  ; Frc(value)
  %3427 = fadd fast float %3426, %393
  %3428 = fmul fast float %3393, %3421
  %3429 = call float @dx.op.unary.f32(i32 22, float %3428)  ; Frc(value)
  %3430 = fmul fast float %3429, 0x401921FB60000000
  %3431 = fadd fast float %3430, %3412
  %3432 = call float @dx.op.unary.f32(i32 13, float %3431)  ; Sin(value)
  %3433 = call float @dx.op.unary.f32(i32 12, float %3431)  ; Cos(value)
  %3434 = fsub fast float -0.000000e+00, %3432
  %3435 = fadd fast float %3386, -5.000000e-01
  %3436 = fadd fast float %3387, -5.000000e-01
  %3437 = fmul fast float %3404, %3435
  %3438 = fmul fast float %3406, %3436
  %3439 = fadd fast float %3437, 5.000000e-01
  %3440 = fadd fast float %3438, 5.000000e-01
  %3441 = fmul fast float %3415, %3439
  %3442 = fmul fast float %3418, %3440
  %3443 = fmul fast float %3433, %3441
  %3444 = call float @dx.op.tertiary.f32(i32 46, float %3434, float %3442, float %3443)  ; FMad(a,b,c)
  %3445 = fmul fast float %3432, %3441
  %3446 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3442, float %3445)  ; FMad(a,b,c)
  %3447 = fadd fast float %3424, %3444
  %3448 = fadd fast float %3427, %3446
  %3449 = icmp ugt i32 %3398, 1
  %3450 = icmp ugt i32 %3396, 33554431
  %3451 = or i1 %3450, %3449
  br i1 %3451, label %3452, label %3477

; <label>:3452                                    ; preds = %3379
  %3453 = add i32 %56, 276
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = lshr i32 %3455, 16
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = fmul fast float %3420, %3457
  %3459 = call float @dx.op.unary.f32(i32 22, float %3458)  ; Frc(value)
  %3460 = mul nuw nsw i32 %3398, %3399
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3459, %3461
  %3463 = call float @dx.op.unary.f32(i32 27, float %3462)  ; Round_ni(value)
  %3464 = fptoui float %3463 to i32
  %3465 = urem i32 %3464, %3398
  %3466 = udiv i32 %3464, %3399
  %3467 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3468 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3469 = uitofp i32 %3465 to float
  %3470 = uitofp i32 %3466 to float
  %3471 = fadd fast float %3467, %3469
  %3472 = fadd fast float %3468, %3470
  %3473 = uitofp i32 %3398 to float
  %3474 = uitofp i32 %3399 to float
  %3475 = fdiv fast float %3471, %3473
  %3476 = fdiv fast float %3472, %3474
  br label %3477

; <label>:3477                                    ; preds = %3452, %3379
  %3478 = phi float [ %3475, %3452 ], [ %3447, %3379 ]
  %3479 = phi float [ %3476, %3452 ], [ %3448, %3379 ]
  %3480 = and i32 %3373, 16777216
  %3481 = icmp eq i32 %3480, 0
  br i1 %3481, label %3591, label %3482

; <label>:3482                                    ; preds = %3477
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = fadd fast float %3484, %161
  %3488 = fadd fast float %3485, %162
  %3489 = fadd fast float %3486, %163
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3493 = icmp eq i32 %57, 65535
  br i1 %3493, label %3588, label %3494

; <label>:3494                                    ; preds = %3482
  %3495 = lshr i32 %57, 1
  %3496 = shl i32 %3495, 2
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %57, 1
  %3500 = icmp ne i32 %3499, 0
  %3501 = lshr i32 %3498, 16
  %3502 = and i32 %3498, 65535
  %3503 = select i1 %3500, i32 %3501, i32 %3502
  %3504 = icmp eq i32 %3503, 65535
  br i1 %3504, label %3584, label %3505

; <label>:3505                                    ; preds = %3494
  %3506 = mul nuw nsw i32 %3503, 40
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3506, 12
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = add nuw nsw i32 %3506, 24
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.ResRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.ResRet.f32 %3517, 2
  %3521 = add nuw nsw i32 %3506, 36
  %3522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = fsub fast float %3487, %3508
  %3525 = fsub fast float %3488, %3509
  %3526 = fsub fast float %3489, %3510
  %3527 = fmul fast float %3523, %3524
  %3528 = fmul fast float %3523, %3525
  %3529 = fmul fast float %3523, %3526
  %3530 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3531 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3532 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3533 = fadd fast float %3530, 5.000000e-01
  %3534 = fadd fast float %3531, 5.000000e-01
  %3535 = fadd fast float %3532, 5.000000e-01
  %3536 = fmul fast float %3533, %3513
  %3537 = fmul fast float %3534, %3514
  %3538 = fmul fast float %3535, %3515
  %3539 = shl i32 %57, 2
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = add i32 %3541, 0
  %3543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3544 = call float @dx.op.unary.f32(i32 22, float %3536)  ; Frc(value)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3546 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3543, %dx.types.Handle %49, float %3544, float %3545, float %3546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = fmul fast float %3548, 1.023000e+03
  %3552 = fmul fast float %3549, 1.023000e+03
  %3553 = fmul fast float %3550, 1.023000e+03
  %3554 = fadd fast float %3551, 5.000000e-01
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3560 = fsub fast float %3527, %3530
  %3561 = fsub fast float %3528, %3531
  %3562 = fsub fast float %3529, %3532
  %3563 = fmul fast float %3560, 7.500000e-01
  %3564 = fmul fast float %3561, 7.500000e-01
  %3565 = fmul fast float %3562, 7.500000e-01
  %3566 = fadd fast float %3530, 1.250000e-01
  %3567 = fadd fast float %3566, %3563
  %3568 = fadd fast float %3567, %3557
  %3569 = fadd fast float %3531, 1.250000e-01
  %3570 = fadd fast float %3569, %3564
  %3571 = fadd fast float %3570, %3558
  %3572 = fadd fast float %3532, 1.250000e-01
  %3573 = fadd fast float %3572, %3565
  %3574 = fadd fast float %3573, %3559
  %3575 = fmul fast float %3568, %3518
  %3576 = fmul fast float %3571, %3519
  %3577 = fmul fast float %3574, %3520
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = add i32 %3579, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3581, %dx.types.Handle %47, float %3575, float %3576, float %3577, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  br label %3584

; <label>:3584                                    ; preds = %3505, %3494
  %3585 = phi float [ %3583, %3505 ], [ -1.000000e+00, %3494 ]
  %3586 = fadd fast float %3585, %3492
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  br label %3588

; <label>:3588                                    ; preds = %3584, %3482
  %3589 = phi float [ %3587, %3584 ], [ %3492, %3482 ]
  %3590 = fmul fast float %3589, %460
  br label %3591

; <label>:3591                                    ; preds = %3588, %3477
  %3592 = phi float [ %3590, %3588 ], [ %460, %3477 ]
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = and i32 %3594, 256
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3643, label %3597

; <label>:3597                                    ; preds = %3591
  %3598 = add i32 %56, 436
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = add i32 %3600, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3602, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = add i32 %56, 148
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = shl i32 %3607, 4
  %3609 = and i32 %3608, 32752
  %3610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3609)  ; LegacyF16ToF32(value)
  %3611 = lshr i32 %3607, 7
  %3612 = and i32 %3611, 32752
  %3613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3612)  ; LegacyF16ToF32(value)
  %3614 = fsub fast float 1.000000e+00, %3592
  %3615 = call float @dx.op.binary.f32(i32 35, float %3614, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3616 = bitcast float %3592 to i32
  %3617 = sitofp i32 %3616 to float
  %3618 = fadd fast float %3617, 0xC1CFBF8940000000
  %3619 = fmul fast float %3613, %3618
  %3620 = fadd fast float %3619, 0x41CFBF8940000000
  %3621 = fptosi float %3620 to i32
  %3622 = bitcast i32 %3621 to float
  %3623 = bitcast float %3615 to i32
  %3624 = sitofp i32 %3623 to float
  %3625 = fadd fast float %3624, 0xC1CFBF8940000000
  %3626 = fmul fast float %3625, %3613
  %3627 = fadd fast float %3626, 0x41CFBF8940000000
  %3628 = fptosi float %3627 to i32
  %3629 = bitcast i32 %3628 to float
  %3630 = fmul fast float %3622, %3610
  %3631 = fmul fast float %3629, %3610
  %3632 = fsub fast float %3615, %3630
  %3633 = fadd fast float %3631, %3615
  %3634 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3635 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3636 = fsub fast float %3604, %3634
  %3637 = fsub fast float %3635, %3634
  %3638 = bitcast float %3637 to i32
  %3639 = sub nsw i32 2129859010, %3638
  %3640 = bitcast i32 %3639 to float
  %3641 = fmul fast float %3640, %3636
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  br label %3643

; <label>:3643                                    ; preds = %3597, %3591
  %3644 = phi float [ %3642, %3597 ], [ %3592, %3591 ]
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = and i32 %3646, 128
  %3648 = icmp eq i32 %3647, 0
  br i1 %3648, label %3665, label %3649

; <label>:3649                                    ; preds = %3643
  %3650 = add i32 %56, 420
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = add i32 %3652, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3654, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 524288
  %3660 = icmp ne i32 %3659, 0
  %3661 = fcmp fast ogt float %3656, 0x3FE0101020000000
  %3662 = select i1 %3661, float 1.000000e+00, float 0.000000e+00
  %3663 = select i1 %3660, float %3662, float %3656
  %3664 = fmul fast float %3663, %3644
  br label %3665

; <label>:3665                                    ; preds = %3649, %3643
  %3666 = phi float [ %3664, %3649 ], [ %3644, %3643 ]
  %3667 = fcmp fast ult float %3666, 0x3F70101020000000
  br i1 %3667, label %4406, label %3668

; <label>:3668                                    ; preds = %3665
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 16
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3871, label %3673

; <label>:3673                                    ; preds = %3668
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = add i32 %56, 372
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %3678, 0
  %3680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3680, %dx.types.Handle %98, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3686 = and i32 %3675, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = lshr i32 %3675, 8
  %3689 = and i32 %3688, 255
  %3690 = uitofp i32 %3689 to float
  %3691 = fmul fast float %3685, %3687
  %3692 = fadd fast float %3691, %3690
  %3693 = fmul fast float %3692, 0x3F70101000000000
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 512
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3706, label %3698

; <label>:3698                                    ; preds = %3673
  %3699 = add i32 %56, 452
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = add i32 %3701, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3703, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  br label %3706

; <label>:3706                                    ; preds = %3698, %3673
  %3707 = phi float [ %3705, %3698 ], [ 1.000000e+00, %3673 ]
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 33554432
  %3711 = icmp eq i32 %3710, 0
  br i1 %3711, label %3818, label %3712

; <label>:3712                                    ; preds = %3706
  %3713 = add i32 %56, 272
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = and i32 %3715, 65535
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = lshr i32 %3715, 16
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = add i32 %56, 276
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 65535
  %3724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3723)  ; LegacyF16ToF32(value)
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = lshr i32 %3726, 24
  %3728 = uitofp i32 %3727 to float
  %3729 = fmul fast float %3728, 0x3F70101020000000
  %3730 = and i32 %3726, 255
  %3731 = uitofp i32 %3730 to float
  %3732 = fmul fast float %3731, 0x3F70101020000000
  %3733 = lshr i32 %3726, 8
  %3734 = and i32 %3733, 255
  %3735 = uitofp i32 %3734 to float
  %3736 = fmul fast float %3735, 0x3F70101020000000
  %3737 = lshr i32 %3726, 16
  %3738 = and i32 %3737, 255
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = add i32 %56, 268
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = lshr i32 %3743, 24
  %3745 = uitofp i32 %3744 to float
  %3746 = fmul fast float %3745, 0x3F70101020000000
  %3747 = and i32 %3743, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101020000000
  %3750 = lshr i32 %3743, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = fmul fast float %3752, 0x3F70101020000000
  %3754 = lshr i32 %3743, 16
  %3755 = and i32 %3754, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F70101020000000
  %3758 = bitcast float %3682 to i32
  %3759 = ashr i32 %3758, 1
  %3760 = sub nsw i32 1597463174, %3759
  %3761 = bitcast i32 %3760 to float
  %3762 = fmul fast float %3682, 5.000000e-01
  %3763 = fmul fast float %3761, %3761
  %3764 = fmul fast float %3763, %3762
  %3765 = fsub fast float 1.500000e+00, %3764
  %3766 = fmul fast float %3761, %3682
  %3767 = fmul fast float %3766, %3765
  %3768 = bitcast float %3683 to i32
  %3769 = ashr i32 %3768, 1
  %3770 = sub nsw i32 1597463174, %3769
  %3771 = bitcast i32 %3770 to float
  %3772 = fmul fast float %3683, 5.000000e-01
  %3773 = fmul fast float %3771, %3771
  %3774 = fmul fast float %3773, %3772
  %3775 = fsub fast float 1.500000e+00, %3774
  %3776 = fmul fast float %3771, %3683
  %3777 = fmul fast float %3776, %3775
  %3778 = bitcast float %3684 to i32
  %3779 = ashr i32 %3778, 1
  %3780 = sub nsw i32 1597463174, %3779
  %3781 = bitcast i32 %3780 to float
  %3782 = fmul fast float %3684, 5.000000e-01
  %3783 = fmul fast float %3781, %3781
  %3784 = fmul fast float %3783, %3782
  %3785 = fsub fast float 1.500000e+00, %3784
  %3786 = fmul fast float %3781, %3684
  %3787 = fmul fast float %3786, %3785
  %3788 = fsub fast float %3767, %3749
  %3789 = fsub fast float %3777, %3753
  %3790 = fsub fast float %3787, %3757
  %3791 = fmul fast float %3788, %3717
  %3792 = fmul fast float %3789, %3719
  %3793 = fmul fast float %3790, %3724
  %3794 = fadd fast float %3791, %3732
  %3795 = fadd fast float %3792, %3736
  %3796 = fadd fast float %3793, %3740
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  %3798 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = fmul fast float %3797, %3797
  %3801 = fmul fast float %3798, %3798
  %3802 = fmul fast float %3799, %3799
  %3803 = fsub fast float %3800, %3682
  %3804 = fsub fast float %3801, %3683
  %3805 = fsub fast float %3802, %3684
  %3806 = fmul fast float %3803, %3707
  %3807 = fmul fast float %3804, %3707
  %3808 = fmul fast float %3805, %3707
  %3809 = fadd fast float %3806, %3682
  %3810 = fadd fast float %3807, %3683
  %3811 = fadd fast float %3808, %3684
  %3812 = fadd fast float %3729, %3693
  %3813 = fsub fast float %3812, %3746
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = fsub fast float %3814, %3693
  %3816 = fmul fast float %3815, %3707
  %3817 = fadd fast float %3816, %3693
  br label %3871

; <label>:3818                                    ; preds = %3706
  %3819 = and i32 %3709, 134217728
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3855, label %3821

; <label>:3821                                    ; preds = %3818
  %3822 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3823 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3824 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3825 = fadd fast float %3822, -5.000000e-01
  %3826 = fadd fast float %3823, -5.000000e-01
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fmul fast float %3825, %3707
  %3829 = fmul fast float %3826, %3707
  %3830 = fmul fast float %3827, %3707
  %3831 = fadd fast float %3828, 5.000000e-01
  %3832 = fadd fast float %3829, 5.000000e-01
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = call float @dx.op.unary.f32(i32 24, float %3682)  ; Sqrt(value)
  %3835 = call float @dx.op.unary.f32(i32 24, float %3683)  ; Sqrt(value)
  %3836 = call float @dx.op.unary.f32(i32 24, float %3684)  ; Sqrt(value)
  %3837 = fmul fast float %3831, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3834
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3834
  %3842 = fmul fast float %3832, 2.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, %3835
  %3845 = fadd fast float %3844, %3842
  %3846 = fmul fast float %3845, %3835
  %3847 = fmul fast float %3833, 2.000000e+00
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3848, %3836
  %3850 = fadd fast float %3849, %3847
  %3851 = fmul fast float %3850, %3836
  %3852 = fmul fast float %3841, %3841
  %3853 = fmul fast float %3846, %3846
  %3854 = fmul fast float %3851, %3851
  br label %3871

; <label>:3855                                    ; preds = %3818
  %3856 = fmul fast float %378, %378
  %3857 = fmul fast float %382, %382
  %3858 = fmul fast float %386, %386
  %3859 = fadd fast float %3856, -1.000000e+00
  %3860 = fadd fast float %3857, -1.000000e+00
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fmul fast float %3707, %3859
  %3863 = fmul fast float %3707, %3860
  %3864 = fmul fast float %3707, %3861
  %3865 = fadd fast float %3862, 1.000000e+00
  %3866 = fadd fast float %3863, 1.000000e+00
  %3867 = fadd fast float %3864, 1.000000e+00
  %3868 = fmul fast float %3865, %3682
  %3869 = fmul fast float %3866, %3683
  %3870 = fmul fast float %3867, %3684
  br label %3871

; <label>:3871                                    ; preds = %3855, %3821, %3712, %3668
  %3872 = phi float [ %3817, %3712 ], [ %3693, %3821 ], [ %3693, %3855 ], [ 0x3FA23C0BE0000000, %3668 ]
  %3873 = phi float [ %3809, %3712 ], [ %3852, %3821 ], [ %3868, %3855 ], [ 1.000000e+00, %3668 ]
  %3874 = phi float [ %3810, %3712 ], [ %3853, %3821 ], [ %3869, %3855 ], [ 1.000000e+00, %3668 ]
  %3875 = phi float [ %3811, %3712 ], [ %3854, %3821 ], [ %3870, %3855 ], [ 1.000000e+00, %3668 ]
  %3876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.i32 %3876, 1
  %3878 = and i32 %3877, 1
  %3879 = icmp ne i32 %3878, 0
  %3880 = add i32 %56, 356
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = and i32 %3882, 32
  %3884 = icmp ne i32 %3883, 0
  %3885 = and i1 %3879, %3884
  %3886 = select i1 %3885, float 1.000000e+00, float %3873
  %3887 = select i1 %3885, float 0x3FD3333340000000, float %3874
  %3888 = select i1 %3885, float 0x3FD3333340000000, float %3875
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = and i32 %3890, 32
  %3892 = icmp eq i32 %3891, 0
  br i1 %3892, label %3965, label %3893

; <label>:3893                                    ; preds = %3871
  %3894 = add i32 %56, 140
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = add i32 %56, 388
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = add i32 %3899, 0
  %3901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3901, %dx.types.Handle %98, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = and i32 %3896, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = lshr i32 %3896, 8
  %3910 = and i32 %3909, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = lshr i32 %3896, 16
  %3913 = and i32 %3912, 255
  %3914 = uitofp i32 %3913 to float
  %3915 = fmul fast float %3914, 0x3F70101000000000
  %3916 = fmul fast float %3903, %3908
  %3917 = fadd fast float %3916, %3911
  %3918 = fmul fast float %3917, 0x3F70101000000000
  %3919 = fadd fast float %3904, -5.000000e-01
  %3920 = fadd fast float %3906, -5.000000e-01
  %3921 = fmul fast float %3919, %3915
  %3922 = fmul fast float %3920, %3915
  %3923 = fadd fast float %3921, 5.000000e-01
  %3924 = fadd fast float %3922, 5.000000e-01
  %3925 = fmul fast float %3923, 2.000000e+00
  %3926 = fadd fast float %3925, -1.000000e+00
  %3927 = fmul fast float %3924, 2.000000e+00
  %3928 = fadd fast float %3927, -1.000000e+00
  %3929 = fadd fast float %3926, %3928
  %3930 = fmul fast float %3929, 5.000000e-01
  %3931 = fsub fast float %3926, %3928
  %3932 = fmul fast float %3931, 5.000000e-01
  %3933 = call float @dx.op.unary.f32(i32 6, float %3930)  ; FAbs(value)
  %3934 = fsub fast float 1.000000e+00, %3933
  %3935 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3936 = fsub fast float %3934, %3935
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3932, float %3936, float %3930, float %3932, float %3936)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = call float @dx.op.unary.f32(i32 25, float %3937)  ; Rsqrt(value)
  %3939 = fmul fast float %3930, %3938
  %3940 = fmul fast float %3932, %3938
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 67108864
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3961, label %3945

; <label>:3945                                    ; preds = %3893
  %3946 = add i32 %56, 328
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = and i32 %3948, 65535
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = and i32 %3952, 65535
  %3954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3953)  ; LegacyF16ToF32(value)
  %3955 = lshr i32 %3948, 16
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = fsub fast float %3918, %3956
  %3958 = fmul fast float %3957, %3950
  %3959 = fadd fast float %3958, %3954
  %3960 = call float @dx.op.unary.f32(i32 7, float %3959)  ; Saturate(value)
  br label %3961

; <label>:3961                                    ; preds = %3945, %3893
  %3962 = phi float [ %3960, %3945 ], [ %3918, %3893 ]
  %3963 = call float @dx.op.dot2.f32(i32 54, float %3939, float %3940, float %3382, float %3383)  ; Dot2(ax,ay,bx,by)
  %3964 = call float @dx.op.dot2.f32(i32 54, float %3939, float %3940, float %3384, float %3385)  ; Dot2(ax,ay,bx,by)
  br label %3965

; <label>:3965                                    ; preds = %3961, %3871
  %3966 = phi float [ %3962, %3961 ], [ 0x3FD6666660000000, %3871 ]
  %3967 = phi float [ %3963, %3961 ], [ 0.000000e+00, %3871 ]
  %3968 = phi float [ %3964, %3961 ], [ 0.000000e+00, %3871 ]
  %3969 = phi float [ %3905, %3961 ], [ 1.000000e+00, %3871 ]
  %3970 = add i32 %56, 208
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = lshr i32 %3972, 22
  %3974 = shl nuw nsw i32 %3973, 5
  %3975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3974)  ; LegacyF16ToF32(value)
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = and i32 %3977, 64
  %3979 = icmp eq i32 %3978, 0
  br i1 %3979, label %4013, label %3980

; <label>:3980                                    ; preds = %3965
  %3981 = add i32 %56, 404
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = add i32 %3983, 0
  %3985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, 131072
  %3989 = icmp eq i32 %3988, 0
  %3990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3985, %dx.types.Handle %98, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = fmul fast float %3991, %366
  %3995 = fmul fast float %3992, %369
  %3996 = fmul fast float %3993, %372
  br i1 %3989, label %4003, label %3997

; <label>:3997                                    ; preds = %3980
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = fmul fast float %3999, %3994
  %4001 = fmul fast float %3999, %3995
  %4002 = fmul fast float %3999, %3996
  br label %4003

; <label>:4003                                    ; preds = %3997, %3980
  %4004 = phi float [ %4000, %3997 ], [ %3994, %3980 ]
  %4005 = phi float [ %4001, %3997 ], [ %3995, %3980 ]
  %4006 = phi float [ %4002, %3997 ], [ %3996, %3980 ]
  %4007 = fmul fast float %4004, %3975
  %4008 = select i1 %223, float %4007, float %4004
  %4009 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4005, float %4006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = select i1 %223, float 0.000000e+00, float %4004
  %4011 = select i1 %223, float %4009, float %4005
  %4012 = select i1 %223, float 0.000000e+00, float %4006
  br label %4013

; <label>:4013                                    ; preds = %4003, %3965
  %4014 = phi float [ %4010, %4003 ], [ 0.000000e+00, %3965 ]
  %4015 = phi float [ %4011, %4003 ], [ 0.000000e+00, %3965 ]
  %4016 = phi float [ %4012, %4003 ], [ 0.000000e+00, %3965 ]
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 1024
  %4020 = icmp eq i32 %4019, 0
  br i1 %4020, label %4051, label %4021

; <label>:4021                                    ; preds = %4013
  %4022 = add i32 %56, 200
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = fmul fast float %4026, 0x3F70101020000000
  %4028 = lshr i32 %4024, 8
  %4029 = and i32 %4028, 255
  %4030 = uitofp i32 %4029 to float
  %4031 = fmul fast float %4030, 0x3F70101020000000
  %4032 = lshr i32 %4024, 16
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3F70101020000000
  %4036 = fmul fast float %4027, %4027
  %4037 = fmul fast float %4031, %4031
  %4038 = fmul fast float %4035, %4035
  %4039 = add i32 %56, 468
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = add i32 %4041, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4043, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = fmul fast float %4036, %4045
  %4049 = fmul fast float %4037, %4046
  %4050 = fmul fast float %4038, %4047
  br label %4051

; <label>:4051                                    ; preds = %4021, %4013
  %4052 = phi float [ %4048, %4021 ], [ 0.000000e+00, %4013 ]
  %4053 = phi float [ %4049, %4021 ], [ 0.000000e+00, %4013 ]
  %4054 = phi float [ %4050, %4021 ], [ 0.000000e+00, %4013 ]
  %4055 = fcmp fast ogt float %4052, 0.000000e+00
  %4056 = fcmp fast ogt float %4053, 0.000000e+00
  %4057 = fcmp fast ogt float %4054, 0.000000e+00
  %4058 = call float @dx.op.unary.f32(i32 23, float %4052)  ; Log(value)
  %4059 = call float @dx.op.unary.f32(i32 23, float %4053)  ; Log(value)
  %4060 = call float @dx.op.unary.f32(i32 23, float %4054)  ; Log(value)
  %4061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.i32 %4061, 0
  %4063 = lshr i32 %4062, 7
  %4064 = and i32 %4063, 32752
  %4065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4064)  ; LegacyF16ToF32(value)
  %4066 = fmul fast float %4058, 0xBFE62E4300000000
  %4067 = fmul fast float %4066, %4065
  %4068 = fmul fast float %4059, 0xBFE62E4300000000
  %4069 = fmul fast float %4068, %4065
  %4070 = fmul fast float %4060, 0xBFE62E4300000000
  %4071 = fmul fast float %4070, %4065
  %4072 = select i1 %4055, float %4067, float 1.270000e+02
  %4073 = select i1 %4056, float %4069, float 1.270000e+02
  %4074 = select i1 %4057, float %4071, float 1.270000e+02
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = and i32 %4076, 10240
  %4078 = icmp eq i32 %4077, 0
  br i1 %4078, label %4123, label %4079

; <label>:4079                                    ; preds = %4051
  %4080 = add i32 %56, 484
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = add i32 %4082, 0
  %4084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4084, %dx.types.Handle %99, float %3478, float %3479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4085, 3
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, 1048576
  %4091 = icmp ne i32 %4090, 0
  %4092 = and i32 %4089, 8192
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4109, label %4094

; <label>:4094                                    ; preds = %4079
  %4095 = extractvalue %dx.types.ResRet.f32 %4085, 2
  %4096 = select i1 %4091, float %4095, float %4086
  %4097 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4098 = select i1 %4091, float %4097, float %4086
  %4099 = add i32 %56, 144
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = lshr i32 %4101, 16
  %4103 = and i32 %4102, 255
  %4104 = uitofp i32 %4103 to float
  %4105 = fmul fast float %4104, 0x3F80101020000000
  %4106 = fmul fast float %4105, %4098
  %4107 = fmul fast float %4105, %4086
  %4108 = fmul fast float %4105, %4096
  br label %4109

; <label>:4109                                    ; preds = %4094, %4079
  %4110 = phi float [ %4106, %4094 ], [ 0.000000e+00, %4079 ]
  %4111 = phi float [ %4107, %4094 ], [ 0.000000e+00, %4079 ]
  %4112 = phi float [ %4108, %4094 ], [ 0.000000e+00, %4079 ]
  %4113 = and i32 %4089, 2048
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4123, label %4115

; <label>:4115                                    ; preds = %4109
  %4116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.i32 %4116, 0
  %4118 = shl i32 %4117, 4
  %4119 = and i32 %4118, 32752
  %4120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4119)  ; LegacyF16ToF32(value)
  %4121 = fmul fast float %4120, %4087
  %4122 = call float @dx.op.binary.f32(i32 35, float %4121, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4123

; <label>:4123                                    ; preds = %4115, %4109, %4051
  %4124 = phi float [ %4110, %4115 ], [ %4110, %4109 ], [ 0.000000e+00, %4051 ]
  %4125 = phi float [ %4111, %4115 ], [ %4111, %4109 ], [ 0.000000e+00, %4051 ]
  %4126 = phi float [ %4112, %4115 ], [ %4112, %4109 ], [ 0.000000e+00, %4051 ]
  %4127 = phi float [ %4122, %4115 ], [ 0x3F70101020000000, %4109 ], [ 0x3F70101020000000, %4051 ]
  %4128 = add i32 %56, 144
  %4129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.i32 %4129, 0
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4130, 8
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = fmul fast float %4135, %4136
  %4138 = fadd fast float %4137, %4132
  %4139 = fmul fast float %4138, 0x3F70101020000000
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  br i1 %3370, label %4141, label %4176

; <label>:4141                                    ; preds = %4123
  %4142 = fmul fast float %4127, 2.000000e+00
  %4143 = fcmp fast olt float %4072, 1.270000e+02
  %4144 = fcmp fast olt float %4073, 1.270000e+02
  %4145 = fcmp fast olt float %4074, 1.270000e+02
  %4146 = fmul fast float %4072, 0xBFF7154760000000
  %4147 = fmul fast float %4146, %4142
  %4148 = fmul fast float %4073, 0xBFF7154760000000
  %4149 = fmul fast float %4148, %4142
  %4150 = fmul fast float %4074, 0xBFF7154760000000
  %4151 = fmul fast float %4150, %4142
  %4152 = call float @dx.op.unary.f32(i32 21, float %4147)  ; Exp(value)
  %4153 = call float @dx.op.unary.f32(i32 21, float %4149)  ; Exp(value)
  %4154 = call float @dx.op.unary.f32(i32 21, float %4151)  ; Exp(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = fadd fast float %4155, -1.000000e+00
  %4159 = select i1 %4143, float %4158, float -1.000000e+00
  %4160 = fadd fast float %4156, -1.000000e+00
  %4161 = select i1 %4144, float %4160, float -1.000000e+00
  %4162 = fadd fast float %4157, -1.000000e+00
  %4163 = select i1 %4145, float %4162, float -1.000000e+00
  %4164 = fmul fast float %4159, %3666
  %4165 = fmul fast float %4161, %3666
  %4166 = fmul fast float %4163, %3666
  %4167 = fadd fast float %4164, 1.000000e+00
  %4168 = fadd fast float %4165, 1.000000e+00
  %4169 = fadd fast float %4166, 1.000000e+00
  %4170 = fmul fast float %4167, %3352
  %4171 = fmul fast float %4168, %3353
  %4172 = fmul fast float %4169, %3354
  %4173 = fmul fast float %4167, %3355
  %4174 = fmul fast float %4168, %3356
  %4175 = fmul fast float %4169, %3357
  br label %4176

; <label>:4176                                    ; preds = %4141, %4123
  %4177 = phi float [ %4170, %4141 ], [ %3352, %4123 ]
  %4178 = phi float [ %4171, %4141 ], [ %3353, %4123 ]
  %4179 = phi float [ %4172, %4141 ], [ %3354, %4123 ]
  %4180 = phi float [ %4173, %4141 ], [ %3355, %4123 ]
  %4181 = phi float [ %4174, %4141 ], [ %3356, %4123 ]
  %4182 = phi float [ %4175, %4141 ], [ %3357, %4123 ]
  %4183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = and i32 %4184, 3
  %4186 = icmp eq i32 %4185, 3
  br i1 %4186, label %4265, label %4187

; <label>:4187                                    ; preds = %4176
  %4188 = and i32 %4184, 16
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %3666, float 0.000000e+00
  %4191 = icmp eq i32 %4185, 0
  br i1 %4191, label %4192, label %4220

; <label>:4192                                    ; preds = %4187
  %4193 = and i32 %4184, 64
  %4194 = icmp ne i32 %4193, 0
  %4195 = select i1 %4194, float %3666, float 0.000000e+00
  %4196 = fsub fast float %3886, %4177
  %4197 = fsub fast float %3887, %4178
  %4198 = fsub fast float %3888, %4179
  %4199 = fmul fast float %4190, %4196
  %4200 = fmul fast float %4190, %4197
  %4201 = fmul fast float %4190, %4198
  %4202 = fadd fast float %4199, %4177
  %4203 = fadd fast float %4200, %4178
  %4204 = fadd fast float %4201, %4179
  %4205 = fsub fast float %3872, %3364
  %4206 = fmul fast float %4190, %4205
  %4207 = fadd fast float %4206, %3364
  %4208 = fsub fast float %4014, %4180
  %4209 = fsub fast float %4015, %4181
  %4210 = fsub fast float %4016, %4182
  %4211 = fmul fast float %4195, %4208
  %4212 = fmul fast float %4195, %4209
  %4213 = fmul fast float %4195, %4210
  %4214 = fadd fast float %4211, %4180
  %4215 = fadd fast float %4212, %4181
  %4216 = fadd fast float %4213, %4182
  %4217 = fsub fast float %4140, %3368
  %4218 = fmul fast float %4190, %4217
  %4219 = fadd fast float %4218, %3368
  br label %4265

; <label>:4220                                    ; preds = %4187
  %4221 = icmp eq i32 %4185, 1
  br i1 %4221, label %4222, label %4235

; <label>:4222                                    ; preds = %4220
  %4223 = fadd fast float %3886, -1.000000e+00
  %4224 = fadd fast float %3887, -1.000000e+00
  %4225 = fadd fast float %3888, -1.000000e+00
  %4226 = fmul fast float %4190, %4223
  %4227 = fmul fast float %4190, %4224
  %4228 = fmul fast float %4190, %4225
  %4229 = fadd fast float %4226, 1.000000e+00
  %4230 = fadd fast float %4227, 1.000000e+00
  %4231 = fadd fast float %4228, 1.000000e+00
  %4232 = fmul fast float %4229, %4177
  %4233 = fmul fast float %4230, %4178
  %4234 = fmul fast float %4231, %4179
  br label %4265

; <label>:4235                                    ; preds = %4220
  %4236 = icmp eq i32 %4185, 2
  br i1 %4236, label %4237, label %4265

; <label>:4237                                    ; preds = %4235
  %4238 = call float @dx.op.unary.f32(i32 24, float %3886)  ; Sqrt(value)
  %4239 = call float @dx.op.unary.f32(i32 24, float %3887)  ; Sqrt(value)
  %4240 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %4241 = fadd fast float %4238, -5.000000e-01
  %4242 = fadd fast float %4239, -5.000000e-01
  %4243 = fadd fast float %4240, -5.000000e-01
  %4244 = fmul fast float %4241, %4190
  %4245 = fmul fast float %4242, %4190
  %4246 = fmul fast float %4243, %4190
  %4247 = fadd fast float %4244, 5.000000e-01
  %4248 = fadd fast float %4245, 5.000000e-01
  %4249 = fadd fast float %4246, 5.000000e-01
  %4250 = fmul fast float %4247, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4177
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4177
  %4255 = fmul fast float %4248, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4178
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4178
  %4260 = fmul fast float %4249, 2.000000e+00
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = fmul fast float %4261, %4179
  %4263 = fadd fast float %4262, %4260
  %4264 = fmul fast float %4263, %4179
  br label %4265

; <label>:4265                                    ; preds = %4237, %4235, %4222, %4192, %4176
  %4266 = phi float [ %4177, %4176 ], [ %4254, %4237 ], [ %4177, %4235 ], [ %4232, %4222 ], [ %4202, %4192 ]
  %4267 = phi float [ %4178, %4176 ], [ %4259, %4237 ], [ %4178, %4235 ], [ %4233, %4222 ], [ %4203, %4192 ]
  %4268 = phi float [ %4179, %4176 ], [ %4264, %4237 ], [ %4179, %4235 ], [ %4234, %4222 ], [ %4204, %4192 ]
  %4269 = phi float [ %4180, %4176 ], [ %4180, %4237 ], [ %4180, %4235 ], [ %4180, %4222 ], [ %4214, %4192 ]
  %4270 = phi float [ %4181, %4176 ], [ %4181, %4237 ], [ %4181, %4235 ], [ %4181, %4222 ], [ %4215, %4192 ]
  %4271 = phi float [ %4182, %4176 ], [ %4182, %4237 ], [ %4182, %4235 ], [ %4182, %4222 ], [ %4216, %4192 ]
  %4272 = phi float [ %3364, %4176 ], [ %3364, %4237 ], [ %3364, %4235 ], [ %3364, %4222 ], [ %4207, %4192 ]
  %4273 = phi float [ %3368, %4176 ], [ %3368, %4237 ], [ %3368, %4235 ], [ %3368, %4222 ], [ %4219, %4192 ]
  %4274 = and i32 %4184, 12
  %4275 = icmp eq i32 %4274, 12
  br i1 %4275, label %4406, label %4276

; <label>:4276                                    ; preds = %4265
  %4277 = and i32 %4184, 2097184
  %4278 = icmp eq i32 %4277, 2097184
  %4279 = select i1 %4278, float %3666, float 0.000000e+00
  %4280 = and i32 %4184, 4194336
  %4281 = icmp eq i32 %4280, 4194336
  %4282 = select i1 %4281, float %3666, float 0.000000e+00
  %4283 = and i32 %4184, 8388640
  %4284 = icmp eq i32 %4283, 8388640
  %4285 = select i1 %4284, float %3666, float 0.000000e+00
  %4286 = and i32 %4184, 1024
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3666, float 0.000000e+00
  %4289 = and i32 %4184, 2048
  %4290 = icmp ne i32 %4289, 0
  %4291 = select i1 %4290, float %3666, float 0.000000e+00
  %4292 = and i32 %4184, 8192
  %4293 = icmp ne i32 %4292, 0
  %4294 = select i1 %4293, float %3666, float 0.000000e+00
  %4295 = icmp eq i32 %4274, 0
  br i1 %4295, label %4296, label %4330

; <label>:4296                                    ; preds = %4276
  %4297 = fsub fast float %3967, %3350
  %4298 = fsub fast float %3968, %3351
  %4299 = fmul fast float %4279, %4297
  %4300 = fmul fast float %4279, %4298
  %4301 = fadd fast float %4299, %3350
  %4302 = fadd fast float %4300, %3351
  %4303 = fsub fast float %3969, %3366
  %4304 = fmul fast float %4282, %4303
  %4305 = fadd fast float %4304, %3366
  %4306 = fsub fast float %3966, %3365
  %4307 = fmul fast float %4285, %4306
  %4308 = fadd fast float %4307, %3365
  %4309 = fsub fast float %4072, %3361
  %4310 = fsub fast float %4073, %3362
  %4311 = fsub fast float %4074, %3363
  %4312 = fmul fast float %4288, %4309
  %4313 = fmul fast float %4288, %4310
  %4314 = fmul fast float %4288, %4311
  %4315 = fadd fast float %4312, %3361
  %4316 = fadd fast float %4313, %3362
  %4317 = fadd fast float %4314, %3363
  %4318 = fsub fast float %4127, %3367
  %4319 = fmul fast float %4291, %4318
  %4320 = fadd fast float %4319, %3367
  %4321 = fsub fast float %4124, %3358
  %4322 = fsub fast float %4125, %3359
  %4323 = fsub fast float %4126, %3360
  %4324 = fmul fast float %4294, %4321
  %4325 = fmul fast float %4294, %4322
  %4326 = fmul fast float %4294, %4323
  %4327 = fadd fast float %4324, %3358
  %4328 = fadd fast float %4325, %3359
  %4329 = fadd fast float %4326, %3360
  br label %4406

; <label>:4330                                    ; preds = %4276
  %4331 = icmp eq i32 %4274, 4
  br i1 %4331, label %4332, label %4378

; <label>:4332                                    ; preds = %4330
  %4333 = fmul fast float %4279, %3967
  %4334 = fmul fast float %4279, %3968
  %4335 = fadd fast float %4333, %3350
  %4336 = fadd fast float %4334, %3351
  %4337 = call float @dx.op.binary.f32(i32 36, float %3366, float %3969)  ; FMin(a,b)
  %4338 = fsub fast float %4337, %3366
  %4339 = fmul fast float %4338, %4282
  %4340 = fadd fast float %4339, %3366
  %4341 = fadd fast float %3966, %3365
  %4342 = fmul fast float %4341, 0x3FF337FAE0000000
  %4343 = fmul fast float %3365, %3365
  %4344 = fmul fast float %3966, %3966
  %4345 = fadd fast float %4344, %4343
  %4346 = fmul fast float %4345, 0x3FE5152B00000000
  %4347 = fmul fast float %3365, 0xBFCC1F85E0000000
  %4348 = fmul fast float %4347, %3966
  %4349 = fadd fast float %4348, 0xBFE1363700000000
  %4350 = fadd fast float %4349, %4342
  %4351 = fsub fast float %4350, %4346
  %4352 = fmul fast float %4341, 0x3FBA6F0D00000000
  %4353 = fmul fast float %4345, 0x3FD0432880000000
  %4354 = fmul fast float %3365, 0xBFEF110800000000
  %4355 = fmul fast float %4354, %3966
  %4356 = fadd fast float %4355, 1.000000e+00
  %4357 = fsub fast float %4356, %4352
  %4358 = fadd fast float %4357, %4353
  %4359 = fdiv fast float %4351, %4358
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fsub fast float %4360, %3365
  %4362 = fmul fast float %4361, %4285
  %4363 = fadd fast float %4362, %3365
  %4364 = fmul fast float %4288, %4072
  %4365 = fmul fast float %4288, %4073
  %4366 = fmul fast float %4288, %4074
  %4367 = fadd fast float %4364, %3361
  %4368 = fadd fast float %4365, %3362
  %4369 = fadd fast float %4366, %3363
  %4370 = fmul fast float %4291, %4127
  %4371 = fadd fast float %4370, %3367
  %4372 = fmul fast float %4294, %4124
  %4373 = fmul fast float %4294, %4125
  %4374 = fmul fast float %4294, %4126
  %4375 = fadd fast float %4372, %3358
  %4376 = fadd fast float %4373, %3359
  %4377 = fadd fast float %4374, %3360
  br label %4406

; <label>:4378                                    ; preds = %4330
  %4379 = icmp eq i32 %4274, 8
  br i1 %4379, label %4380, label %4406

; <label>:4380                                    ; preds = %4378
  %4381 = fmul fast float %4279, %3967
  %4382 = fmul fast float %4279, %3968
  %4383 = fadd fast float %4381, %3350
  %4384 = fadd fast float %4382, %3351
  %4385 = call float @dx.op.binary.f32(i32 36, float %3366, float %3969)  ; FMin(a,b)
  %4386 = fsub fast float %4385, %3366
  %4387 = fmul fast float %4386, %4282
  %4388 = fadd fast float %4387, %3366
  %4389 = fsub fast float %3966, %3365
  %4390 = fmul fast float %4285, %4389
  %4391 = fadd fast float %4390, %3365
  %4392 = fmul fast float %4288, %4072
  %4393 = fmul fast float %4288, %4073
  %4394 = fmul fast float %4288, %4074
  %4395 = fadd fast float %4392, %3361
  %4396 = fadd fast float %4393, %3362
  %4397 = fadd fast float %4394, %3363
  %4398 = fmul fast float %4291, %4127
  %4399 = fadd fast float %4398, %3367
  %4400 = fmul fast float %4294, %4124
  %4401 = fmul fast float %4294, %4125
  %4402 = fmul fast float %4294, %4126
  %4403 = fadd fast float %4400, %3358
  %4404 = fadd fast float %4401, %3359
  %4405 = fadd fast float %4402, %3360
  br label %4406

; <label>:4406                                    ; preds = %4380, %4378, %4332, %4296, %4265, %3665, %3369, %3349
  %4407 = phi float [ %3350, %4265 ], [ %3350, %3665 ], [ %3350, %3349 ], [ %3350, %3369 ], [ %4301, %4296 ], [ %4335, %4332 ], [ %3350, %4378 ], [ %4383, %4380 ]
  %4408 = phi float [ %3351, %4265 ], [ %3351, %3665 ], [ %3351, %3349 ], [ %3351, %3369 ], [ %4302, %4296 ], [ %4336, %4332 ], [ %3351, %4378 ], [ %4384, %4380 ]
  %4409 = phi float [ %4266, %4265 ], [ %3352, %3665 ], [ %3352, %3349 ], [ %3352, %3369 ], [ %4266, %4296 ], [ %4266, %4332 ], [ %4266, %4378 ], [ %4266, %4380 ]
  %4410 = phi float [ %4267, %4265 ], [ %3353, %3665 ], [ %3353, %3349 ], [ %3353, %3369 ], [ %4267, %4296 ], [ %4267, %4332 ], [ %4267, %4378 ], [ %4267, %4380 ]
  %4411 = phi float [ %4268, %4265 ], [ %3354, %3665 ], [ %3354, %3349 ], [ %3354, %3369 ], [ %4268, %4296 ], [ %4268, %4332 ], [ %4268, %4378 ], [ %4268, %4380 ]
  %4412 = phi float [ %4269, %4265 ], [ %3355, %3665 ], [ %3355, %3349 ], [ %3355, %3369 ], [ %4269, %4296 ], [ %4269, %4332 ], [ %4269, %4378 ], [ %4269, %4380 ]
  %4413 = phi float [ %4270, %4265 ], [ %3356, %3665 ], [ %3356, %3349 ], [ %3356, %3369 ], [ %4270, %4296 ], [ %4270, %4332 ], [ %4270, %4378 ], [ %4270, %4380 ]
  %4414 = phi float [ %4271, %4265 ], [ %3357, %3665 ], [ %3357, %3349 ], [ %3357, %3369 ], [ %4271, %4296 ], [ %4271, %4332 ], [ %4271, %4378 ], [ %4271, %4380 ]
  %4415 = phi float [ %3358, %4265 ], [ %3358, %3665 ], [ %3358, %3349 ], [ %3358, %3369 ], [ %4327, %4296 ], [ %4375, %4332 ], [ %3358, %4378 ], [ %4403, %4380 ]
  %4416 = phi float [ %3359, %4265 ], [ %3359, %3665 ], [ %3359, %3349 ], [ %3359, %3369 ], [ %4328, %4296 ], [ %4376, %4332 ], [ %3359, %4378 ], [ %4404, %4380 ]
  %4417 = phi float [ %3360, %4265 ], [ %3360, %3665 ], [ %3360, %3349 ], [ %3360, %3369 ], [ %4329, %4296 ], [ %4377, %4332 ], [ %3360, %4378 ], [ %4405, %4380 ]
  %4418 = phi float [ %3361, %4265 ], [ %3361, %3665 ], [ %3361, %3349 ], [ %3361, %3369 ], [ %4315, %4296 ], [ %4367, %4332 ], [ %3361, %4378 ], [ %4395, %4380 ]
  %4419 = phi float [ %3362, %4265 ], [ %3362, %3665 ], [ %3362, %3349 ], [ %3362, %3369 ], [ %4316, %4296 ], [ %4368, %4332 ], [ %3362, %4378 ], [ %4396, %4380 ]
  %4420 = phi float [ %3363, %4265 ], [ %3363, %3665 ], [ %3363, %3349 ], [ %3363, %3369 ], [ %4317, %4296 ], [ %4369, %4332 ], [ %3363, %4378 ], [ %4397, %4380 ]
  %4421 = phi float [ %4272, %4265 ], [ %3364, %3665 ], [ %3364, %3349 ], [ %3364, %3369 ], [ %4272, %4296 ], [ %4272, %4332 ], [ %4272, %4378 ], [ %4272, %4380 ]
  %4422 = phi float [ %3365, %4265 ], [ %3365, %3665 ], [ %3365, %3349 ], [ %3365, %3369 ], [ %4308, %4296 ], [ %4363, %4332 ], [ %3365, %4378 ], [ %4391, %4380 ]
  %4423 = phi float [ %3366, %4265 ], [ %3366, %3665 ], [ %3366, %3349 ], [ %3366, %3369 ], [ %4305, %4296 ], [ %4340, %4332 ], [ %3366, %4378 ], [ %4388, %4380 ]
  %4424 = phi float [ %3367, %4265 ], [ %3367, %3665 ], [ %3367, %3349 ], [ %3367, %3369 ], [ %4320, %4296 ], [ %4371, %4332 ], [ %3367, %4378 ], [ %4399, %4380 ]
  %4425 = phi float [ %4273, %4265 ], [ %3368, %3665 ], [ %3368, %3349 ], [ %3368, %3369 ], [ %4273, %4296 ], [ %4273, %4332 ], [ %4273, %4378 ], [ %4273, %4380 ]
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 0
  %4428 = call float @dx.op.dot2.f32(i32 54, float %4407, float %4408, float %4407, float %4408)  ; Dot2(ax,ay,bx,by)
  %4429 = fmul fast float %4428, 0x3FE3333340000000
  %4430 = fsub fast float 1.000000e+00, %4429
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4430, float %4407, float %4408, float %4430)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 25, float %4431)  ; Rsqrt(value)
  %4433 = fmul fast float %4432, %4407
  %4434 = fmul fast float %4432, %4408
  %4435 = fmul fast float %4430, %4432
  %4436 = fmul fast float %4435, %111
  %4437 = fmul fast float %4435, %113
  %4438 = fmul fast float %4435, %115
  %4439 = fmul fast float %4433, %77
  %4440 = fmul fast float %4433, %78
  %4441 = fmul fast float %4433, %79
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fmul fast float %125, %4434
  %4446 = fmul fast float %126, %4434
  %4447 = fmul fast float %127, %4434
  %4448 = fadd fast float %4442, %4445
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = call float @dx.op.unary.f32(i32 25, float %4451)  ; Rsqrt(value)
  %4453 = fmul fast float %4448, %4452
  %4454 = fmul fast float %4449, %4452
  %4455 = fmul fast float %4450, %4452
  %4456 = and i32 %58, 1
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %4458, label %5050

; <label>:4458                                    ; preds = %4406
  %4459 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %4464 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4465 = fadd fast float %4459, %161
  %4466 = fadd fast float %4460, %162
  %4467 = fadd fast float %4461, %163
  %4468 = fadd fast float %4462, %161
  %4469 = fadd fast float %4463, %162
  %4470 = fadd fast float %4464, %163
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4478 = fmul fast float %4472, %102
  %4479 = fmul fast float %4478, %4476
  %4480 = fmul fast float %4473, %103
  %4481 = fmul fast float %4480, %4477
  %4482 = fptoui float %4479 to i32
  %4483 = fptoui float %4481 to i32
  %4484 = fadd fast float %4472, -1.000000e+00
  %4485 = fadd fast float %4473, -1.000000e+00
  %4486 = fptoui float %4484 to i32
  %4487 = fptoui float %4485 to i32
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4486)  ; UMin(a,b)
  %4489 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4487)  ; UMin(a,b)
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4493 = fmul fast float %4491, %93
  %4494 = fsub fast float %4493, %4492
  %4495 = fadd fast float %4474, -1.000000e+00
  %4496 = call float @dx.op.binary.f32(i32 36, float %4494, float %4495)  ; FMin(a,b)
  %4497 = fptoui float %4496 to i32
  %4498 = fptoui float %4472 to i32
  %4499 = fptoui float %4473 to i32
  %4500 = mul i32 %4497, %4499
  %4501 = add i32 %4500, %4489
  %4502 = mul i32 %4501, %4498
  %4503 = add i32 %4502, %4488
  %4504 = shl i32 %4503, 2
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 1023
  %4508 = lshr i32 %4506, 10
  %4509 = icmp eq i32 %4507, 0
  br i1 %4509, label %5013, label %4510

; <label>:4510                                    ; preds = %4458
  %4511 = and i32 %4506, 1023
  br label %4512

; <label>:4512                                    ; preds = %4644, %4510
  %4513 = phi i32 [ %4594, %4644 ], [ 0, %4510 ]
  %4514 = phi float [ %4645, %4644 ], [ 0.000000e+00, %4510 ]
  %4515 = phi float [ %4646, %4644 ], [ %4427, %4510 ]
  %4516 = phi float [ %4647, %4644 ], [ %4425, %4510 ]
  %4517 = phi float [ %4648, %4644 ], [ %4418, %4510 ]
  %4518 = phi float [ %4649, %4644 ], [ %4419, %4510 ]
  %4519 = phi float [ %4650, %4644 ], [ %4420, %4510 ]
  %4520 = phi float [ %4651, %4644 ], [ 0.000000e+00, %4510 ]
  %4521 = phi float [ %4652, %4644 ], [ 0.000000e+00, %4510 ]
  %4522 = phi float [ %4653, %4644 ], [ %4415, %4510 ]
  %4523 = phi float [ %4654, %4644 ], [ %4416, %4510 ]
  %4524 = phi float [ %4655, %4644 ], [ %4417, %4510 ]
  %4525 = phi float [ %4656, %4644 ], [ %4412, %4510 ]
  %4526 = phi float [ %4657, %4644 ], [ %4413, %4510 ]
  %4527 = phi float [ %4658, %4644 ], [ %4414, %4510 ]
  %4528 = phi float [ %4659, %4644 ], [ %4453, %4510 ]
  %4529 = phi float [ %4660, %4644 ], [ %4454, %4510 ]
  %4530 = phi float [ %4661, %4644 ], [ %4455, %4510 ]
  %4531 = phi float [ %4662, %4644 ], [ %4423, %4510 ]
  %4532 = phi float [ %4663, %4644 ], [ %4422, %4510 ]
  %4533 = phi float [ %4664, %4644 ], [ 0.000000e+00, %4510 ]
  %4534 = phi float [ %4665, %4644 ], [ %4421, %4510 ]
  %4535 = phi float [ %4666, %4644 ], [ %4409, %4510 ]
  %4536 = phi float [ %4667, %4644 ], [ %4410, %4510 ]
  %4537 = phi float [ %4668, %4644 ], [ %4411, %4510 ]
  %4538 = add nuw nsw i32 %4513, %4508
  %4539 = shl i32 %4538, 2
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = shl i32 %4541, 8
  %4543 = or i32 %4542, 48
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4549 = or i32 %4542, 64
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.i32 %4550, 1
  %4553 = or i32 %4542, 80
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4557 = or i32 %4542, 96
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4542, 112
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4566 = or i32 %4542, 128
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4542, 144
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = or i32 %4542, 160
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = or i32 %4542, 192
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = or i32 %4542, 208
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = or i32 %4542, 248
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = add nuw nsw i32 %4513, 1
  %4595 = bitcast float %4548 to i32
  %4596 = and i32 %4595, 512
  %4597 = icmp eq i32 %4596, 0
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4604 = or i32 %4542, 16
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = or i32 %4542, 32
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = call float @dx.op.unary.f32(i32 27, float %4603)  ; Round_ni(value)
  %4619 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4620 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4622)  ; Round_ni(value)
  %4624 = fadd fast float %4621, %4619
  %4625 = fadd fast float %4624, %4623
  %4626 = fcmp fast oeq float %4625, 0.000000e+00
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = fsub fast float %4627, %4603
  %4632 = fsub fast float %4629, %4603
  %4633 = fsub fast float %4628, %4610
  %4634 = fsub fast float %4630, %4610
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4638 = fadd fast float %4637, %4635
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4641 = fcmp fast ogt float %4639, %4640
  %4642 = and i1 %4626, %4641
  %4643 = and i1 %4597, %4642
  br i1 %4643, label %4670, label %4644

; <label>:4644                                    ; preds = %4999, %4751, %4670, %4512
  %4645 = phi float [ %4514, %4670 ], [ %4754, %4751 ], [ %4754, %4999 ], [ %4514, %4512 ]
  %4646 = phi float [ %4515, %4670 ], [ %4515, %4751 ], [ %4975, %4999 ], [ %4515, %4512 ]
  %4647 = phi float [ %4516, %4670 ], [ %4516, %4751 ], [ %4973, %4999 ], [ %4516, %4512 ]
  %4648 = phi float [ %4517, %4670 ], [ %4517, %4751 ], [ %4951, %4999 ], [ %4517, %4512 ]
  %4649 = phi float [ %4518, %4670 ], [ %4518, %4751 ], [ %4952, %4999 ], [ %4518, %4512 ]
  %4650 = phi float [ %4519, %4670 ], [ %4519, %4751 ], [ %4953, %4999 ], [ %4519, %4512 ]
  %4651 = phi float [ %4520, %4670 ], [ %4520, %4751 ], [ %4878, %4999 ], [ %4520, %4512 ]
  %4652 = phi float [ %4521, %4670 ], [ %4521, %4751 ], [ %4876, %4999 ], [ %4521, %4512 ]
  %4653 = phi float [ %4522, %4670 ], [ %4522, %4751 ], [ %4921, %4999 ], [ %4522, %4512 ]
  %4654 = phi float [ %4523, %4670 ], [ %4523, %4751 ], [ %4922, %4999 ], [ %4523, %4512 ]
  %4655 = phi float [ %4524, %4670 ], [ %4524, %4751 ], [ %4923, %4999 ], [ %4524, %4512 ]
  %4656 = phi float [ %4525, %4670 ], [ %4525, %4751 ], [ %5009, %4999 ], [ %4525, %4512 ]
  %4657 = phi float [ %4526, %4670 ], [ %4526, %4751 ], [ %5010, %4999 ], [ %4526, %4512 ]
  %4658 = phi float [ %4527, %4670 ], [ %4527, %4751 ], [ %5011, %4999 ], [ %4527, %4512 ]
  %4659 = phi float [ %4528, %4670 ], [ %4528, %4751 ], [ %4857, %4999 ], [ %4528, %4512 ]
  %4660 = phi float [ %4529, %4670 ], [ %4529, %4751 ], [ %4858, %4999 ], [ %4529, %4512 ]
  %4661 = phi float [ %4530, %4670 ], [ %4530, %4751 ], [ %4859, %4999 ], [ %4530, %4512 ]
  %4662 = phi float [ %4531, %4670 ], [ %4531, %4751 ], [ %4931, %4999 ], [ %4531, %4512 ]
  %4663 = phi float [ %4532, %4670 ], [ %4532, %4751 ], [ %4928, %4999 ], [ %4532, %4512 ]
  %4664 = phi float [ %4533, %4670 ], [ %4533, %4751 ], [ %4925, %4999 ], [ %4533, %4512 ]
  %4665 = phi float [ %4534, %4670 ], [ %4534, %4751 ], [ %4874, %4999 ], [ %4534, %4512 ]
  %4666 = phi float [ %4535, %4670 ], [ %4535, %4751 ], [ %4869, %4999 ], [ %4535, %4512 ]
  %4667 = phi float [ %4536, %4670 ], [ %4536, %4751 ], [ %4870, %4999 ], [ %4536, %4512 ]
  %4668 = phi float [ %4537, %4670 ], [ %4537, %4751 ], [ %4871, %4999 ], [ %4537, %4512 ]
  %4669 = icmp eq i32 %4594, %4511
  br i1 %4669, label %5012, label %4512

; <label>:4670                                    ; preds = %4512
  %4671 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4672 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4676 = extractvalue %dx.types.ResRet.i32 %4550, 3
  %4677 = extractvalue %dx.types.ResRet.i32 %4550, 2
  %4678 = add i32 %4676, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4679, %dx.types.Handle %4680, float %4603, float %4610, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4633, float undef, float %4632, float %4634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fmul fast float %4682, %4675
  %4684 = fadd fast float %4683, %4674
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4603, %4559
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4610, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4673
  %4689 = fmul fast float %4603, %4561
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4610, float %4689)  ; FMad(a,b,c)
  %4691 = fadd fast float %4690, %4672
  %4692 = fmul fast float %4631, %4559
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4633, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4631, %4561
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4633, float %4694)  ; FMad(a,b,c)
  %4696 = fmul fast float %4632, %4559
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4634, float %4696)  ; FMad(a,b,c)
  %4698 = fmul fast float %4632, %4561
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4634, float %4698)  ; FMad(a,b,c)
  %4700 = add i32 %4677, 0
  %4701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4700, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4701, %dx.types.Handle %4680, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = and i32 %4595, 1024
  %4705 = icmp ne i32 %4704, 0
  %4706 = fcmp fast ogt float %4703, 0x3FE0101020000000
  %4707 = uitofp i1 %4706 to float
  %4708 = select i1 %4705, float %4707, float %4703
  %4709 = and i32 %4595, 8192
  %4710 = icmp ne i32 %4709, 0
  %4711 = select i1 %4710, float %4671, float 1.000000e+00
  %4712 = fmul fast float %4603, 2.000000e+00
  %4713 = fadd fast float %4712, -1.000000e+00
  %4714 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4715 = fmul fast float %4714, %4592
  %4716 = fsub fast float %4715, %4592
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4610, 2.000000e+00
  %4719 = fadd fast float %4718, -1.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 6, float %4719)  ; FAbs(value)
  %4721 = fmul fast float %4720, %4593
  %4722 = fsub fast float %4721, %4593
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4622, %4555
  %4725 = fsub fast float %4724, %4555
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4685, %4711
  %4728 = fmul fast float %4727, %4682
  %4729 = fmul fast float %4728, %4717
  %4730 = fmul fast float %4729, %4708
  %4731 = fmul fast float %4730, %4723
  %4732 = fmul fast float %4731, %4726
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4736 = fsub fast float %4639, %4735
  %4737 = fmul fast float %4736, %4734
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4732, %4556
  %4740 = fadd fast float %4732, %4556
  %4741 = fmul fast float %4740, %4565
  %4742 = fsub fast float %4741, %4565
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = and i32 %4595, 128
  %4745 = icmp ne i32 %4744, 0
  %4746 = select i1 %4745, float %4743, float %4739
  %4747 = fmul fast float %4746, %4738
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fcmp fast ugt float %4747, %4749
  br i1 %4750, label %4751, label %4644

; <label>:4751                                    ; preds = %4670
  %4752 = select i1 %4710, float %4747, float 0.000000e+00
  %4753 = fadd fast float %4752, %4514
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  br i1 %4710, label %4644, label %4755

; <label>:4755                                    ; preds = %4751
  %4756 = and i32 %4595, 4
  %4757 = and i32 %4595, 8
  %4758 = add i32 %4551, 0
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4758, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4759, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = bitcast float %4577 to i32
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = lshr i32 %4766, 8
  %4770 = and i32 %4769, 255
  %4771 = uitofp i32 %4770 to float
  %4772 = fmul fast float %4765, %4768
  %4773 = fadd fast float %4772, %4771
  %4774 = fmul fast float %4773, 0x3F70101000000000
  %4775 = add i32 %4552, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = extractvalue %dx.types.ResRet.f32 %4777, 3
  %4782 = bitcast float %4571 to i32
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4782, 8
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = lshr i32 %4782, 16
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fmul fast float %4778, %4784
  %4793 = fadd fast float %4792, %4787
  %4794 = fmul fast float %4793, 0x3F70101000000000
  %4795 = fadd fast float %4779, -5.000000e-01
  %4796 = fadd fast float %4781, -5.000000e-01
  %4797 = fmul fast float %4795, %4791
  %4798 = fmul fast float %4796, %4791
  %4799 = fadd fast float %4797, 5.000000e-01
  %4800 = fadd fast float %4798, 5.000000e-01
  %4801 = fmul fast float %4762, %4580
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4764, %4582
  %4804 = fmul fast float %4799, 2.000000e+00
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = fmul fast float %4800, 2.000000e+00
  %4807 = fadd fast float %4806, -1.000000e+00
  %4808 = fadd fast float %4805, %4807
  %4809 = fmul fast float %4808, 5.000000e-01
  %4810 = fsub fast float %4805, %4807
  %4811 = fmul fast float %4810, 5.000000e-01
  %4812 = call float @dx.op.unary.f32(i32 6, float %4809)  ; FAbs(value)
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = call float @dx.op.unary.f32(i32 6, float %4811)  ; FAbs(value)
  %4815 = fsub fast float %4813, %4814
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4811, float %4815, float %4809, float %4811, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4809, %4817
  %4819 = fmul fast float %4811, %4817
  %4820 = fmul fast float %4817, %4815
  %4821 = fmul fast float %4820, %4545
  %4822 = fmul fast float %4820, %4546
  %4823 = fmul fast float %4820, %4547
  %4824 = fmul fast float %4818, %4568
  %4825 = fmul fast float %4818, %4569
  %4826 = fmul fast float %4818, %4570
  %4827 = fadd fast float %4824, %4821
  %4828 = fadd fast float %4825, %4822
  %4829 = fadd fast float %4826, %4823
  %4830 = fmul fast float %4819, %4574
  %4831 = fmul fast float %4819, %4575
  %4832 = fmul fast float %4819, %4576
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = fadd fast float %4829, %4832
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4833, float %4834, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 25, float %4836)  ; Rsqrt(value)
  %4838 = fmul fast float %4833, %4837
  %4839 = fmul fast float %4834, %4837
  %4840 = fmul fast float %4835, %4837
  %4841 = icmp ne i32 %4757, 0
  %4842 = select i1 %4841, float 1.000000e+00, float 0.000000e+00
  %4843 = fmul fast float %4747, %4842
  %4844 = and i32 %4595, 1
  %4845 = icmp eq i32 %4844, 0
  br i1 %4845, label %4846, label %4850

; <label>:4846                                    ; preds = %4755
  %4847 = fsub fast float %4838, %4528
  %4848 = fsub fast float %4839, %4529
  %4849 = fsub fast float %4840, %4530
  br label %4850

; <label>:4850                                    ; preds = %4846, %4755
  %4851 = phi float [ %4847, %4846 ], [ %4838, %4755 ]
  %4852 = phi float [ %4848, %4846 ], [ %4839, %4755 ]
  %4853 = phi float [ %4849, %4846 ], [ %4840, %4755 ]
  %4854 = fmul float %4853, %4843
  %4855 = fmul float %4852, %4843
  %4856 = fmul float %4851, %4843
  %4857 = fadd fast float %4856, %4528
  %4858 = fadd fast float %4855, %4529
  %4859 = fadd fast float %4854, %4530
  %4860 = icmp ne i32 %4756, 0
  %4861 = select i1 %4860, float 1.000000e+00, float 0.000000e+00
  %4862 = fmul fast float %4747, %4861
  %4863 = fsub fast float %4801, %4535
  %4864 = fsub fast float %4802, %4536
  %4865 = fsub fast float %4803, %4537
  %4866 = fmul fast float %4863, %4862
  %4867 = fmul fast float %4864, %4862
  %4868 = fmul fast float %4865, %4862
  %4869 = fadd fast float %4866, %4535
  %4870 = fadd fast float %4867, %4536
  %4871 = fadd fast float %4868, %4537
  %4872 = fsub fast float %4774, %4534
  %4873 = fmul fast float %4872, %4862
  %4874 = fadd fast float %4873, %4534
  %4875 = fmul fast float %4862, %4521
  %4876 = fsub fast float %4521, %4875
  %4877 = fmul fast float %4862, %4520
  %4878 = fsub fast float %4520, %4877
  %4879 = bitcast float %4589 to i32
  %4880 = lshr i32 %4879, 16
  %4881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4880)  ; LegacyF16ToF32(value)
  %4882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4883 = extractvalue %dx.types.ResRet.i32 %4882, 0
  %4884 = and i32 %4883, 1
  %4885 = icmp eq i32 %4884, 0
  br i1 %4885, label %4886, label %4911

; <label>:4886                                    ; preds = %4850
  %4887 = fadd fast float %4774, 0xBFB99999A0000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 0x3FF1C71C80000000
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, %4801
  %4893 = fmul fast float %4891, %4802
  %4894 = fmul fast float %4891, %4803
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float %4897)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4895, float %4898)  ; FMax(a,b)
  %4900 = fcmp fast ogt float %4899, 0.000000e+00
  %4901 = bitcast float %4899 to i32
  %4902 = sub nsw i32 2129859010, %4901
  %4903 = bitcast i32 %4902 to float
  %4904 = select i1 %4900, float %4903, float 0.000000e+00
  %4905 = fmul fast float %4895, %4881
  %4906 = fmul fast float %4896, %4881
  %4907 = fmul fast float %4897, %4881
  %4908 = fmul fast float %4905, %4904
  %4909 = fmul fast float %4906, %4904
  %4910 = fmul fast float %4907, %4904
  br label %4911

; <label>:4911                                    ; preds = %4886, %4850
  %4912 = phi float [ %4881, %4850 ], [ %4908, %4886 ]
  %4913 = phi float [ %4881, %4850 ], [ %4909, %4886 ]
  %4914 = phi float [ %4881, %4850 ], [ %4910, %4886 ]
  %4915 = fsub fast float %4912, %4522
  %4916 = fsub fast float %4913, %4523
  %4917 = fsub fast float %4914, %4524
  %4918 = fmul fast float %4915, %4862
  %4919 = fmul fast float %4916, %4862
  %4920 = fmul fast float %4917, %4862
  %4921 = fadd fast float %4918, %4522
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4920, %4524
  %4924 = fadd fast float %4747, %4533
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fsub fast float %4794, %4532
  %4927 = fmul fast float %4926, %4843
  %4928 = fadd fast float %4927, %4532
  %4929 = fsub fast float %4780, %4531
  %4930 = fmul fast float %4929, %4843
  %4931 = fadd fast float %4930, %4531
  br i1 %4845, label %4940, label %4932

; <label>:4932                                    ; preds = %4911
  %4933 = and i32 %4595, 32768
  %4934 = icmp eq i32 %4933, 0
  br i1 %4934, label %4950, label %4935

; <label>:4935                                    ; preds = %4932
  %4936 = fmul fast float %4843, 1.270000e+02
  %4937 = fadd fast float %4936, %4517
  %4938 = fadd fast float %4936, %4518
  %4939 = fadd fast float %4936, %4519
  br label %4950

; <label>:4940                                    ; preds = %4911
  %4941 = fsub fast float 1.270000e+02, %4517
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fsub fast float 1.270000e+02, %4519
  %4944 = fmul fast float %4843, %4941
  %4945 = fmul fast float %4843, %4942
  %4946 = fmul fast float %4843, %4943
  %4947 = fadd fast float %4944, %4517
  %4948 = fadd fast float %4945, %4518
  %4949 = fadd fast float %4946, %4519
  br label %4950

; <label>:4950                                    ; preds = %4940, %4935, %4932
  %4951 = phi float [ %4937, %4935 ], [ %4517, %4932 ], [ %4947, %4940 ]
  %4952 = phi float [ %4938, %4935 ], [ %4518, %4932 ], [ %4948, %4940 ]
  %4953 = phi float [ %4939, %4935 ], [ %4519, %4932 ], [ %4949, %4940 ]
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4958 = fmul fast float %4957, %4954
  %4959 = fadd fast float %4958, %4956
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = bitcast float %4583 to i32
  %4962 = and i32 %4961, 65535
  %4963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4962)  ; LegacyF16ToF32(value)
  %4964 = lshr i32 %4961, 16
  %4965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4964)  ; LegacyF16ToF32(value)
  %4966 = fcmp fast oge float %4963, 0.000000e+00
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = select i1 %4966, float %4963, float %4968
  %4970 = fadd fast float %4969, %4965
  %4971 = fsub fast float %4960, %4516
  %4972 = fmul fast float %4971, %4747
  %4973 = fadd fast float %4972, %4516
  %4974 = fmul fast float %4970, %4747
  %4975 = call float @dx.op.binary.f32(i32 35, float %4515, float %4974)  ; FMax(a,b)
  %4976 = and i32 %4595, 16
  %4977 = icmp eq i32 %4976, 0
  br i1 %4977, label %4999, label %4978

; <label>:4978                                    ; preds = %4950
  %4979 = add i32 %4586, 0
  %4980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4980, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.ResRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.ResRet.f32 %4981, 2
  %4985 = and i32 %4879, 65535
  %4986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4985)  ; LegacyF16ToF32(value)
  %4987 = fmul fast float %4982, %4580
  %4988 = fmul fast float %4983, %4581
  %4989 = fmul fast float %4984, %4582
  %4990 = and i32 %4595, 16384
  %4991 = icmp ne i32 %4990, 0
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = select i1 %4991, float %4993, float 1.000000e+00
  %4995 = fmul fast float %4994, %4986
  %4996 = fmul fast float %4987, %4995
  %4997 = fmul fast float %4988, %4995
  %4998 = fmul fast float %4989, %4995
  br label %4999

; <label>:4999                                    ; preds = %4978, %4950
  %5000 = phi float [ %4996, %4978 ], [ 0.000000e+00, %4950 ]
  %5001 = phi float [ %4997, %4978 ], [ 0.000000e+00, %4950 ]
  %5002 = phi float [ %4998, %4978 ], [ 0.000000e+00, %4950 ]
  %5003 = fsub fast float %5000, %4525
  %5004 = fsub fast float %5001, %4526
  %5005 = fsub fast float %5002, %4527
  %5006 = fmul fast float %5003, %4747
  %5007 = fmul fast float %5004, %4747
  %5008 = fmul fast float %5005, %4747
  %5009 = fadd fast float %5006, %4525
  %5010 = fadd fast float %5007, %4526
  %5011 = fadd fast float %5008, %4527
  br label %4644

; <label>:5012                                    ; preds = %4644
  br label %5013

; <label>:5013                                    ; preds = %5012, %4458
  %5014 = phi float [ 0.000000e+00, %4458 ], [ %4645, %5012 ]
  %5015 = phi float [ %4427, %4458 ], [ %4646, %5012 ]
  %5016 = phi float [ %4425, %4458 ], [ %4647, %5012 ]
  %5017 = phi float [ %4418, %4458 ], [ %4648, %5012 ]
  %5018 = phi float [ %4419, %4458 ], [ %4649, %5012 ]
  %5019 = phi float [ %4420, %4458 ], [ %4650, %5012 ]
  %5020 = phi float [ 0.000000e+00, %4458 ], [ %4651, %5012 ]
  %5021 = phi float [ 0.000000e+00, %4458 ], [ %4652, %5012 ]
  %5022 = phi float [ %4415, %4458 ], [ %4653, %5012 ]
  %5023 = phi float [ %4416, %4458 ], [ %4654, %5012 ]
  %5024 = phi float [ %4417, %4458 ], [ %4655, %5012 ]
  %5025 = phi float [ %4412, %4458 ], [ %4656, %5012 ]
  %5026 = phi float [ %4413, %4458 ], [ %4657, %5012 ]
  %5027 = phi float [ %4414, %4458 ], [ %4658, %5012 ]
  %5028 = phi float [ %4453, %4458 ], [ %4659, %5012 ]
  %5029 = phi float [ %4454, %4458 ], [ %4660, %5012 ]
  %5030 = phi float [ %4455, %4458 ], [ %4661, %5012 ]
  %5031 = phi float [ %4423, %4458 ], [ %4662, %5012 ]
  %5032 = phi float [ %4422, %4458 ], [ %4663, %5012 ]
  %5033 = phi float [ 0.000000e+00, %4458 ], [ %4664, %5012 ]
  %5034 = phi float [ %4421, %4458 ], [ %4665, %5012 ]
  %5035 = phi float [ %4409, %4458 ], [ %4666, %5012 ]
  %5036 = phi float [ %4410, %4458 ], [ %4667, %5012 ]
  %5037 = phi float [ %4411, %4458 ], [ %4668, %5012 ]
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5039, %5028
  %5041 = fmul fast float %5039, %5029
  %5042 = fmul fast float %5039, %5030
  %5043 = fadd fast float %5033, %1250
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5040
  %5048 = fmul fast float %5046, %5041
  %5049 = fmul fast float %5046, %5042
  br label %5050

; <label>:5050                                    ; preds = %5013, %4406
  %5051 = phi float [ %5017, %5013 ], [ %4418, %4406 ]
  %5052 = phi float [ %5018, %5013 ], [ %4419, %4406 ]
  %5053 = phi float [ %5019, %5013 ], [ %4420, %4406 ]
  %5054 = phi float [ %5047, %5013 ], [ %4453, %4406 ]
  %5055 = phi float [ %5048, %5013 ], [ %4454, %4406 ]
  %5056 = phi float [ %5049, %5013 ], [ %4455, %4406 ]
  %5057 = phi float [ %5035, %5013 ], [ %4409, %4406 ]
  %5058 = phi float [ %5036, %5013 ], [ %4410, %4406 ]
  %5059 = phi float [ %5037, %5013 ], [ %4411, %4406 ]
  %5060 = phi float [ %5025, %5013 ], [ %4412, %4406 ]
  %5061 = phi float [ %5026, %5013 ], [ %4413, %4406 ]
  %5062 = phi float [ %5027, %5013 ], [ %4414, %4406 ]
  %5063 = phi float [ %5022, %5013 ], [ %4415, %4406 ]
  %5064 = phi float [ %5023, %5013 ], [ %4416, %4406 ]
  %5065 = phi float [ %5024, %5013 ], [ %4417, %4406 ]
  %5066 = phi float [ %5034, %5013 ], [ %4421, %4406 ]
  %5067 = phi float [ %5044, %5013 ], [ %1250, %4406 ]
  %5068 = phi float [ %5032, %5013 ], [ %4422, %4406 ]
  %5069 = phi float [ %5031, %5013 ], [ %4423, %4406 ]
  %5070 = phi float [ %5021, %5013 ], [ 0.000000e+00, %4406 ]
  %5071 = phi float [ %5020, %5013 ], [ 0.000000e+00, %4406 ]
  %5072 = phi float [ %5014, %5013 ], [ 0.000000e+00, %4406 ]
  %5073 = phi float [ %5015, %5013 ], [ %4427, %4406 ]
  %5074 = phi float [ %5016, %5013 ], [ %4425, %4406 ]
  %5075 = fadd fast float %5066, 0xBFB99999A0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 0x3FF1C71C80000000
  %5078 = call float @dx.op.binary.f32(i32 36, float %5066, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5057
  %5082 = fmul fast float %5080, %5058
  %5083 = fmul fast float %5080, %5059
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5077, %5057
  %5088 = fmul fast float %5077, %5058
  %5089 = fmul fast float %5077, %5059
  %5090 = fadd fast float %5087, %5078
  %5091 = fadd fast float %5088, %5078
  %5092 = fadd fast float %5089, %5078
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 1
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5115, label %5101

; <label>:5101                                    ; preds = %5050
  %5102 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5084, float %5102)  ; FMax(a,b)
  %5104 = fcmp fast ogt float %5103, 0.000000e+00
  %5105 = bitcast float %5103 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = select i1 %5104, float %5107, float 0.000000e+00
  %5109 = fmul fast float %5084, %5063
  %5110 = fmul fast float %5085, %5064
  %5111 = fmul fast float %5086, %5065
  %5112 = fmul fast float %5109, %5108
  %5113 = fmul fast float %5110, %5108
  %5114 = fmul fast float %5111, %5108
  br label %5115

; <label>:5115                                    ; preds = %5101, %5050
  %5116 = phi float [ %5112, %5101 ], [ %5063, %5050 ]
  %5117 = phi float [ %5113, %5101 ], [ %5064, %5050 ]
  %5118 = phi float [ %5114, %5101 ], [ %5065, %5050 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5051, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5052, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5053, float 1.270000e+02)  ; FMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = and i32 %5123, 8
  %5125 = icmp ne i32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5057)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5057)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5086, float %5057)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %223, float %5057, float %5084
  %5131 = select i1 %223, float %5129, float %5085
  %5132 = select i1 %223, float 1.000000e+00, float %5086
  %5133 = select i1 %5125, float %5126, float %5130
  %5134 = select i1 %5125, float %5127, float %5131
  %5135 = select i1 %5125, float %5128, float %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %223, float %5136, float %5116
  %5138 = select i1 %223, float %5136, float %5117
  %5139 = select i1 %223, float %5136, float %5118
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = fadd fast float %5141, %161
  %5145 = fadd fast float %5142, %162
  %5146 = fadd fast float %5143, %163
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5150 = fsub fast float %5144, %5148
  %5151 = fsub fast float %5145, %5149
  %5152 = fmul fast float %5150, %5150
  %5153 = fmul fast float %5151, %5151
  %5154 = fadd fast float %5152, %5153
  %5155 = call float @dx.op.unary.f32(i32 24, float %5154)  ; Sqrt(value)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5157 = fcmp fast olt float %5155, %5156
  br i1 %5157, label %5158, label %5225

; <label>:5158                                    ; preds = %5115
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5170 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5171 = fadd fast float %5168, %5144
  %5172 = fadd fast float %5169, %5145
  %5173 = fadd fast float %5170, %5146
  %5174 = fmul fast float %5171, %5160
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5162, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = fmul fast float %5171, %5165
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5167, float %5178)  ; FMad(a,b,c)
  %5180 = fsub fast float %5176, %5168
  %5181 = fsub fast float %5179, %5169
  %5182 = fsub fast float %5180, %5148
  %5183 = fadd fast float %5182, %5156
  %5184 = fsub fast float %5181, %5149
  %5185 = fadd fast float %5184, %5156
  %5186 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5187 = fmul fast float %5183, %5186
  %5188 = fmul fast float %5185, %5186
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = fsub fast float 1.000000e+00, %5190
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ugt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5499

; <label>:5196                                    ; preds = %5158
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5199 = fmul fast float %5198, %5194
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5201 = fadd fast float %5200, %5199
  %5202 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5203 = fadd fast float %5201, %5170
  %5204 = fmul fast float %5176, %5164
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5167, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5203, float %5202, float %5205)  ; FMad(a,b,c)
  %5207 = fsub fast float %5206, %5170
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5210 = fsub fast float %5207, %5209
  %5211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = fadd fast float %5216, %5212
  %5220 = fmul fast float %5219, 0x3F847AE140000000
  %5221 = fadd fast float %5217, %5213
  %5222 = fmul fast float %5221, 0x3F847AE140000000
  %5223 = fadd fast float %5218, %5214
  %5224 = fmul fast float %5223, 0x3F847AE140000000
  br label %5499

; <label>:5225                                    ; preds = %5115
  %5226 = and i32 %199, 1
  %5227 = icmp eq i32 %5226, 0
  br i1 %5227, label %5499, label %5228

; <label>:5228                                    ; preds = %5225
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5240 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5241 = fadd fast float %5238, %5144
  %5242 = fadd fast float %5239, %5145
  %5243 = fadd fast float %5240, %5146
  %5244 = fmul fast float %5241, %5230
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5232, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5234, float %5245)  ; FMad(a,b,c)
  %5247 = fmul fast float %5241, %5235
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5237, float %5248)  ; FMad(a,b,c)
  %5250 = fsub fast float %5246, %5238
  %5251 = fsub fast float %5249, %5239
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.i32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.i32 %5259, 1
  %5262 = udiv i32 %5261, %5260
  %5263 = fsub fast float %5250, %5253
  %5264 = fsub fast float %5251, %5254
  %5265 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 35, float %5264, float 0.000000e+00)  ; FMax(a,b)
  %5267 = call float @dx.op.binary.f32(i32 36, float %5265, float %5255)  ; FMin(a,b)
  %5268 = call float @dx.op.binary.f32(i32 36, float %5266, float %5256)  ; FMin(a,b)
  %5269 = add i32 %5260, -1
  %5270 = add i32 %5262, -1
  %5271 = fmul fast float %5267, %5258
  %5272 = fmul fast float %5268, %5258
  %5273 = fptoui float %5271 to i32
  %5274 = fptoui float %5272 to i32
  %5275 = call i32 @dx.op.binary.i32(i32 40, i32 %5273, i32 %5269)  ; UMin(a,b)
  %5276 = call i32 @dx.op.binary.i32(i32 40, i32 %5274, i32 %5270)  ; UMin(a,b)
  %5277 = mul i32 %5276, %5260
  %5278 = add i32 %5277, %5275
  %5279 = shl i32 %5278, 2
  %5280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.i32 %5280, 0
  %5282 = icmp eq i32 %5281, -1
  br i1 %5282, label %5499, label %5283

; <label>:5283                                    ; preds = %5228
  %5284 = mul i32 %5281, 148
  %5285 = add i32 %5284, 4
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = add i32 %5284, 8
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = add i32 %5284, 36
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = add i32 %5284, 60
  %5295 = add i32 %5284, 92
  %5296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5295, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.i32 %5296, 0
  %5298 = add i32 %5284, 116
  %5299 = fsub fast float %5250, %5287
  %5300 = fsub fast float %5251, %5290
  %5301 = fmul fast float %5258, %5299
  %5302 = fmul fast float %5258, %5300
  %5303 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5308 = call float @dx.op.unary.f32(i32 83, float %5303)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 83, float %5305)  ; DerivCoarseX(value)
  %5310 = call float @dx.op.unary.f32(i32 84, float %5303)  ; DerivCoarseY(value)
  %5311 = call float @dx.op.unary.f32(i32 84, float %5305)  ; DerivCoarseY(value)
  %5312 = fmul fast float %5308, %5307
  %5313 = fmul fast float %5309, %5307
  %5314 = fmul fast float %5310, %5307
  %5315 = fmul fast float %5311, %5307
  %5316 = call float @dx.op.dot2.f32(i32 54, float %5314, float %5315, float %5314, float %5315)  ; Dot2(ax,ay,bx,by)
  %5317 = call float @dx.op.dot2.f32(i32 54, float %5312, float %5313, float %5312, float %5313)  ; Dot2(ax,ay,bx,by)
  %5318 = call float @dx.op.binary.f32(i32 35, float %5317, float %5316)  ; FMax(a,b)
  %5319 = call float @dx.op.unary.f32(i32 23, float %5318)  ; Log(value)
  %5320 = fmul fast float %5319, 5.000000e-01
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5323 = fadd fast float %5322, %5320
  %5324 = call float @dx.op.binary.f32(i32 35, float %5323, float 0.000000e+00)  ; FMax(a,b)
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5327 = fadd fast float %5326, %5324
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5330 = fadd fast float %5327, %5329
  %5331 = add i32 %5297, 0
  %5332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5333 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5332, i32 0)  ; GetDimensions(handle,mipLevel)
  %5334 = extractvalue %dx.types.Dimensions %5333, 0
  %5335 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5334)  ; FirstbitLo(value)
  %5336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.i32 %5336, 1
  %5338 = sub nsw i32 %5337, %5335
  %5339 = sitofp i32 %5338 to float
  %5340 = fsub fast float %5330, %5339
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5332, %dx.types.Handle %46, float %5303, float %5305, float %5293, float undef, i32 0, i32 0, i32 undef, float %5341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  %5344 = fcmp ule float %5343, 0x3FE0101020000000
  %5345 = extractvalue %dx.types.CBufRet.i32 %5336, 0
  %5346 = and i32 %5345, 128
  %5347 = icmp ne i32 %5346, 0
  %5348 = and i1 %5344, %5347
  br i1 %5348, label %5499, label %5349

; <label>:5349                                    ; preds = %5283
  %5350 = add i32 %5284, 20
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5284, 24
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = add i32 %5284, 40
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = add i32 %5284, 96
  %5360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.i32 %5360, 0
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 2
  %5364 = fmul fast float %5363, %5303
  %5365 = fmul fast float %5363, %5305
  %5366 = extractvalue %dx.types.CBufRet.f32 %5362, 3
  %5367 = fadd fast float %5364, %5366
  %5368 = fadd fast float %5365, %5366
  %5369 = add i32 %5361, 0
  %5370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5370, i32 0)  ; GetDimensions(handle,mipLevel)
  %5372 = extractvalue %dx.types.Dimensions %5371, 0
  %5373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5372)  ; FirstbitLo(value)
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 1
  %5376 = sub nsw i32 %5375, %5373
  %5377 = sitofp i32 %5376 to float
  %5378 = fsub fast float %5327, %5377
  %5379 = call float @dx.op.binary.f32(i32 35, float %5378, float 0.000000e+00)  ; FMax(a,b)
  %5380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5370, %dx.types.Handle %46, float %5367, float %5368, float %5358, float undef, i32 0, i32 0, i32 undef, float %5379)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = fmul fast float %5381, %5352
  %5383 = fadd fast float %5382, %5355
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5392 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5393 = fadd fast float %5389, %5250
  %5394 = fadd fast float %5391, %5251
  %5395 = fadd fast float %5383, %5392
  %5396 = fmul fast float %5393, %5385
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5386, float %5396)  ; FMad(a,b,c)
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5387, float %5397)  ; FMad(a,b,c)
  %5399 = fsub fast float %5398, %5392
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5402 = fsub fast float %5399, %5401
  %5403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.i32 %5403, 0
  %5405 = call i32 @dx.op.binary.i32(i32 40, i32 %5281, i32 %5404)  ; UMin(a,b)
  %5406 = mul i32 %5405, 36
  %5407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.i32 %5407, 0
  %5409 = add i32 %5406, 4
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = fmul fast float %5411, %5303
  %5413 = fmul fast float %5411, %5305
  %5414 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5415 = fadd fast float %5412, %5414
  %5416 = fadd fast float %5413, %5414
  %5417 = icmp eq i32 %5408, 0
  br i1 %5417, label %5486, label %5418

; <label>:5418                                    ; preds = %5349
  br label %5419

; <label>:5419                                    ; preds = %5476, %5418
  %5420 = phi float [ %5477, %5476 ], [ 0.000000e+00, %5418 ]
  %5421 = phi float [ %5478, %5476 ], [ 0.000000e+00, %5418 ]
  %5422 = phi float [ %5479, %5476 ], [ 0.000000e+00, %5418 ]
  %5423 = phi float [ %5480, %5476 ], [ 0.000000e+00, %5418 ]
  %5424 = phi float [ %5481, %5476 ], [ 0.000000e+00, %5418 ]
  %5425 = phi float [ %5482, %5476 ], [ 0.000000e+00, %5418 ]
  %5426 = phi i32 [ %5483, %5476 ], [ 0, %5418 ]
  %5427 = shl i32 %5426, 2
  %5428 = add i32 %5294, %5427
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = add i32 %5298, %5427
  %5432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.i32 %5432, 0
  %5434 = add i32 %5433, 0
  %5435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5434, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5436 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5435, i32 0)  ; GetDimensions(handle,mipLevel)
  %5437 = extractvalue %dx.types.Dimensions %5436, 0
  %5438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5437)  ; FirstbitLo(value)
  %5439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.i32 %5439, 1
  %5441 = sub nsw i32 %5440, %5438
  %5442 = sitofp i32 %5441 to float
  %5443 = fsub fast float %5327, %5442
  %5444 = call float @dx.op.binary.f32(i32 35, float %5443, float 0.000000e+00)  ; FMax(a,b)
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5435, %dx.types.Handle %46, float %5415, float %5416, float %5430, float undef, i32 0, i32 0, i32 undef, float %5444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = fcmp fast ogt float %5446, 0.000000e+00
  br i1 %5447, label %5448, label %5476

; <label>:5448                                    ; preds = %5419
  %5449 = add i32 %5409, %5427
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = and i32 %5451, 32767
  %5453 = mul nuw nsw i32 %5452, 928
  %5454 = add nuw nsw i32 %5453, 48
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = add nuw nsw i32 %5453, 60
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = fmul fast float %5456, %5446
  %5465 = fmul fast float %5457, %5446
  %5466 = fmul fast float %5458, %5446
  %5467 = fadd fast float %5464, %5420
  %5468 = fadd fast float %5465, %5421
  %5469 = fadd fast float %5466, %5422
  %5470 = fmul fast float %5461, %5446
  %5471 = fmul fast float %5462, %5446
  %5472 = fmul fast float %5463, %5446
  %5473 = fadd fast float %5470, %5423
  %5474 = fadd fast float %5471, %5424
  %5475 = fadd fast float %5472, %5425
  br label %5476

; <label>:5476                                    ; preds = %5448, %5419
  %5477 = phi float [ %5467, %5448 ], [ %5420, %5419 ]
  %5478 = phi float [ %5468, %5448 ], [ %5421, %5419 ]
  %5479 = phi float [ %5469, %5448 ], [ %5422, %5419 ]
  %5480 = phi float [ %5473, %5448 ], [ %5423, %5419 ]
  %5481 = phi float [ %5474, %5448 ], [ %5424, %5419 ]
  %5482 = phi float [ %5475, %5448 ], [ %5425, %5419 ]
  %5483 = add nuw i32 %5426, 1
  %5484 = icmp eq i32 %5483, %5408
  br i1 %5484, label %5485, label %5419

; <label>:5485                                    ; preds = %5476
  br label %5486

; <label>:5486                                    ; preds = %5485, %5349
  %5487 = phi float [ 0.000000e+00, %5349 ], [ %5477, %5485 ]
  %5488 = phi float [ 0.000000e+00, %5349 ], [ %5478, %5485 ]
  %5489 = phi float [ 0.000000e+00, %5349 ], [ %5479, %5485 ]
  %5490 = phi float [ 0.000000e+00, %5349 ], [ %5480, %5485 ]
  %5491 = phi float [ 0.000000e+00, %5349 ], [ %5481, %5485 ]
  %5492 = phi float [ 0.000000e+00, %5349 ], [ %5482, %5485 ]
  %5493 = fadd fast float %5490, %5487
  %5494 = fmul fast float %5493, 0x3F847AE140000000
  %5495 = fadd fast float %5491, %5488
  %5496 = fmul fast float %5495, 0x3F847AE140000000
  %5497 = fadd fast float %5492, %5489
  %5498 = fmul fast float %5497, 0x3F847AE140000000
  br label %5499

; <label>:5499                                    ; preds = %5486, %5283, %5228, %5225, %5196, %5158
  %5500 = phi float [ %5210, %5196 ], [ -1.310720e+05, %5158 ], [ %5402, %5486 ], [ -1.310720e+05, %5228 ], [ -1.310720e+05, %5283 ], [ -1.310720e+05, %5225 ]
  %5501 = phi float [ %5220, %5196 ], [ 0.000000e+00, %5158 ], [ %5494, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5502 = phi float [ %5222, %5196 ], [ 0.000000e+00, %5158 ], [ %5496, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5503 = phi float [ %5224, %5196 ], [ 0.000000e+00, %5158 ], [ %5498, %5486 ], [ 0.000000e+00, %5228 ], [ 0.000000e+00, %5283 ], [ 0.000000e+00, %5225 ]
  %5504 = phi i1 [ true, %5196 ], [ false, %5158 ], [ true, %5486 ], [ false, %5228 ], [ false, %5283 ], [ false, %5225 ]
  %5505 = and i32 %199, 3
  %5506 = icmp eq i32 %5505, 1
  %5507 = select i1 %5506, float 1.000000e+00, float 0.000000e+00
  %5508 = fsub fast float %5500, %163
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = select i1 %5504, float %5509, float 1.000000e+00
  %5511 = fmul fast float %5510, %5507
  %5512 = icmp eq i32 %5505, 3
  %5513 = select i1 %5512, float 1.000000e+00, float %5511
  %5514 = call float @dx.op.binary.f32(i32 35, float %5072, float %5513)  ; FMax(a,b)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fcmp fast une float %5515, 0.000000e+00
  %5517 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 25, float %5517)  ; Rsqrt(value)
  br i1 %5516, label %5526, label %5519

; <label>:5519                                    ; preds = %5499
  %5520 = fmul fast float %5518, %161
  %5521 = fmul fast float %5518, %162
  %5522 = fmul fast float %5518, %163
  %5523 = fsub fast float -0.000000e+00, %5520
  %5524 = fsub fast float -0.000000e+00, %5521
  %5525 = fsub fast float -0.000000e+00, %5522
  br label %5694

; <label>:5526                                    ; preds = %5499
  %5527 = fmul fast float %161, %5518
  %5528 = fsub fast float -0.000000e+00, %5527
  %5529 = fmul fast float %162, %5518
  %5530 = fsub fast float -0.000000e+00, %5529
  %5531 = fmul fast float %163, %5518
  %5532 = fsub fast float -0.000000e+00, %5531
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5530, float %5532, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fmul fast float %5515, 2.500000e+00
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fmul fast float %5515, 0x4013FFFFE0000000
  %5537 = fadd fast float %5536, 0xBFFFFFFFE0000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5515, 0x4004000020000000
  %5540 = fadd fast float %5539, 0xBFF8000040000000
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5543 = fmul fast float %5075, 1.000000e+01
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5544, 2.000000e+00
  %5546 = fsub fast float 3.000000e+00, %5545
  %5547 = fmul fast float %5544, %5544
  %5548 = fmul fast float %5547, %5546
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = fsub fast float 0x3FE3333340000000, %5096
  %5551 = fmul fast float %5550, 0x400AAAAAA0000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5549, %5552
  %5554 = fmul fast float %5133, 0x3FEA2B8620000000
  %5555 = fmul fast float %5134, 0x3FEA2B8620000000
  %5556 = fmul fast float %5135, 0x3FEA2B8620000000
  %5557 = fadd fast float %5554, 0x3FC81DFBA0000000
  %5558 = fmul fast float %5557, %5133
  %5559 = fadd fast float %5558, 0x3F910E6020000000
  %5560 = fadd fast float %5555, 0x3FC81DFBA0000000
  %5561 = fmul fast float %5560, %5134
  %5562 = fadd fast float %5561, 0x3F910E6020000000
  %5563 = fadd fast float %5556, 0x3FC81DFBA0000000
  %5564 = fmul fast float %5563, %5135
  %5565 = fadd fast float %5564, 0x3F910E6020000000
  %5566 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5567 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5568 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5569 = fsub fast float %5566, %5133
  %5570 = fsub fast float %5567, %5134
  %5571 = fsub fast float %5568, %5135
  %5572 = fmul fast float %5569, %5542
  %5573 = fmul fast float %5572, %5553
  %5574 = fmul fast float %5570, %5542
  %5575 = fmul fast float %5574, %5553
  %5576 = fmul fast float %5571, %5542
  %5577 = fmul fast float %5576, %5553
  %5578 = fadd fast float %5573, %5133
  %5579 = fadd fast float %5575, %5134
  %5580 = fadd fast float %5577, %5135
  %5581 = fmul fast float %5069, %5069
  %5582 = fmul fast float %5581, %5581
  %5583 = fadd fast float %5538, 1.000000e+00
  %5584 = fsub fast float %5583, %5553
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fsub fast float 1.000000e+00, %5582
  %5589 = call float @dx.op.binary.f32(i32 36, float %5585, float %5588)  ; FMin(a,b)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5589, float %5590)  ; FMax(a,b)
  %5592 = fadd fast float %5587, 0xBFE4CCCCC0000000
  %5593 = fmul fast float %5592, 0x4006DB6DA0000000
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fmul fast float %5594, 2.000000e+00
  %5596 = fsub fast float 3.000000e+00, %5595
  %5597 = bitcast float %5093 to i32
  %5598 = ashr i32 %5597, 1
  %5599 = add nsw i32 %5598, 532487669
  %5600 = bitcast i32 %5599 to float
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = bitcast float %5601 to i32
  %5603 = sub nsw i32 2129859010, %5602
  %5604 = bitcast i32 %5603 to float
  %5605 = fmul fast float %5604, 2.000000e+00
  %5606 = bitcast float %5094 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = bitcast float %5095 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = fsub fast float 0x4002A9FBE0000000, %5605
  %5625 = fadd fast float %5605, 0x3FD54FDF00000000
  %5626 = bitcast float %5625 to i32
  %5627 = sub nsw i32 2129859010, %5626
  %5628 = bitcast i32 %5627 to float
  %5629 = fmul fast float %5628, %5624
  %5630 = fmul fast float %5629, %5629
  %5631 = fsub fast float 0x4002A9FBE0000000, %5614
  %5632 = fadd fast float %5614, 0x3FD54FDF00000000
  %5633 = bitcast float %5632 to i32
  %5634 = sub nsw i32 2129859010, %5633
  %5635 = bitcast i32 %5634 to float
  %5636 = fmul fast float %5635, %5631
  %5637 = fmul fast float %5636, %5636
  %5638 = fsub fast float 0x4002A9FBE0000000, %5623
  %5639 = fadd fast float %5623, 0x3FD54FDF00000000
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, %5643
  %5645 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5630)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5637)  ; FMax(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5644)  ; FMax(a,b)
  %5648 = fsub fast float 1.000000e+00, %5533
  %5649 = fadd fast float %5648, %5549
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fsub fast float 1.000000e+00, %5513
  %5652 = fmul fast float %5591, %5651
  %5653 = fmul fast float %5594, %5594
  %5654 = fmul fast float %5653, %5652
  %5655 = fmul fast float %5654, %5596
  %5656 = fmul fast float %5651, 0xBFE99999A0000000
  %5657 = fmul fast float %5656, %5542
  %5658 = fmul fast float %5657, %5553
  %5659 = fadd fast float %5658, 1.000000e+00
  %5660 = fadd fast float %5096, -1.000000e+00
  %5661 = fmul fast float %5659, %5660
  %5662 = fadd fast float %5661, 1.000000e+00
  %5663 = fsub fast float %5645, %5093
  %5664 = fsub fast float %5646, %5094
  %5665 = fsub fast float %5647, %5095
  %5666 = fmul fast float %5655, %5663
  %5667 = fmul fast float %5655, %5664
  %5668 = fmul fast float %5655, %5665
  %5669 = fadd fast float %5666, %5093
  %5670 = fadd fast float %5667, %5094
  %5671 = fadd fast float %5668, %5095
  %5672 = fsub fast float %111, %5054
  %5673 = fsub fast float %113, %5055
  %5674 = fsub fast float %115, %5056
  %5675 = fmul fast float %5655, %5672
  %5676 = fmul fast float %5655, %5673
  %5677 = fmul fast float %5655, %5674
  %5678 = fadd fast float %5675, %5054
  %5679 = fadd fast float %5676, %5055
  %5680 = fadd fast float %5677, %5056
  %5681 = fmul fast float %5655, %5650
  %5682 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = fmul fast float %5681, %5683
  %5685 = fadd fast float %5684, %5682
  %5686 = fsub fast float 1.000000e+00, %5069
  %5687 = fmul fast float %5655, %5686
  %5688 = fadd fast float %5687, %5069
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5678, float %5679, float %5680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = call float @dx.op.unary.f32(i32 25, float %5689)  ; Rsqrt(value)
  %5691 = fmul fast float %5678, %5690
  %5692 = fmul fast float %5679, %5690
  %5693 = fmul fast float %5680, %5690
  br label %5694

; <label>:5694                                    ; preds = %5526, %5519
  %5695 = phi float [ %5525, %5519 ], [ %5532, %5526 ]
  %5696 = phi float [ %5524, %5519 ], [ %5530, %5526 ]
  %5697 = phi float [ %5523, %5519 ], [ %5528, %5526 ]
  %5698 = phi float [ %5522, %5519 ], [ %5531, %5526 ]
  %5699 = phi float [ %5521, %5519 ], [ %5529, %5526 ]
  %5700 = phi float [ %5520, %5519 ], [ %5527, %5526 ]
  %5701 = phi float [ %5133, %5519 ], [ %5578, %5526 ]
  %5702 = phi float [ %5134, %5519 ], [ %5579, %5526 ]
  %5703 = phi float [ %5135, %5519 ], [ %5580, %5526 ]
  %5704 = phi float [ %5093, %5519 ], [ %5669, %5526 ]
  %5705 = phi float [ %5094, %5519 ], [ %5670, %5526 ]
  %5706 = phi float [ %5095, %5519 ], [ %5671, %5526 ]
  %5707 = phi float [ %5054, %5519 ], [ %5691, %5526 ]
  %5708 = phi float [ %5055, %5519 ], [ %5692, %5526 ]
  %5709 = phi float [ %5056, %5519 ], [ %5693, %5526 ]
  %5710 = phi float [ %5096, %5519 ], [ %5685, %5526 ]
  %5711 = phi float [ %5069, %5519 ], [ %5688, %5526 ]
  %5712 = fsub fast float -0.000000e+00, %163
  %5713 = select i1 %223, float 0.000000e+00, float %5706
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %5697, float %5696, float %5695)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5699, float %5698, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = fmul fast float %5716, 2.000000e+00
  %5718 = fmul fast float %5717, %5707
  %5719 = fmul fast float %5717, %5708
  %5720 = fmul fast float %5717, %5709
  %5721 = fsub fast float %5700, %5718
  %5722 = fsub fast float %5699, %5719
  %5723 = fsub fast float %5698, %5720
  %5724 = call float @dx.op.binary.f32(i32 36, float %5711, float 1.000000e+00)  ; FMin(a,b)
  %5725 = fsub fast float 1.000000e+00, %5711
  %5726 = bitcast float %5725 to i32
  %5727 = sub nsw i32 2129859010, %5726
  %5728 = bitcast i32 %5727 to float
  %5729 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5730 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fcmp fast oeq float %5730, 0.000000e+00
  %5732 = fcmp fast oeq float %5729, 0.000000e+00
  %5733 = or i1 %5732, %5731
  br i1 %5733, label %5763, label %5734

; <label>:5734                                    ; preds = %5694
  %5735 = fsub fast float -0.000000e+00, %76
  %5736 = fsub fast float -0.000000e+00, %74
  %5737 = call float @dx.op.unary.f32(i32 24, float %5730)  ; Sqrt(value)
  %5738 = fdiv fast float %5737, %5729
  %5739 = fcmp fast ogt float %5738, 0x3FFB6F8900000000
  %5740 = select i1 %5739, float 0x3FFB6F8900000000, float %5738
  %5741 = fmul fast float %5740, 0x3FE8A23460000000
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5740, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5744 = fmul fast float %5742, %5729
  %5745 = fmul fast float %5743, 0x3FF279A740000000
  %5746 = fadd fast float %5745, -1.000000e+00
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %75, float %5735, float %5736, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = call float @dx.op.unary.f32(i32 25, float %5747)  ; Rsqrt(value)
  %5749 = fmul fast float %5748, %5735
  %5750 = fmul fast float %5748, %5736
  %5751 = fmul fast float %5748, %75
  %5752 = fmul fast float %5746, %5746
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = fmul fast float %5743, 0x40005F8BE0000000
  %5755 = fsub fast float 0x400C5BF8A0000000, %5754
  %5756 = fdiv fast float %5744, %5755
  %5757 = fmul fast float %5756, 0x3FEE31C3C0000000
  %5758 = fmul fast float %5757, %5753
  %5759 = fmul fast float %5743, 0x3FDACB7480000000
  %5760 = fadd fast float %5759, 0xBFD7347680000000
  %5761 = fmul fast float %5760, %5756
  %5762 = fmul fast float %5761, %5753
  br label %5763

; <label>:5763                                    ; preds = %5734, %5694
  %5764 = phi float [ %5749, %5734 ], [ 0.000000e+00, %5694 ]
  %5765 = phi float [ %5750, %5734 ], [ 0.000000e+00, %5694 ]
  %5766 = phi float [ %5751, %5734 ], [ 0.000000e+00, %5694 ]
  %5767 = phi float [ %5758, %5734 ], [ 0.000000e+00, %5694 ]
  %5768 = phi float [ %5762, %5734 ], [ 0.000000e+00, %5694 ]
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fmul fast float %5769, 0x3FDF454380000000
  %5771 = fmul fast float %5769, %5769
  %5772 = fmul fast float %5771, 0x3FEE471020000000
  %5773 = fadd fast float %5772, 0xBFD42F6020000000
  %5774 = fmul fast float %5729, 0x3FD20DD760000000
  %5775 = fmul fast float %5773, %5768
  %5776 = fadd fast float %5775, %5774
  %5777 = fmul fast float %5770, %5767
  %5778 = fadd fast float %5776, %5777
  %5779 = fsub fast float %5776, %5777
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fmul fast float %5780, 0x3FDF454380000000
  %5782 = fmul fast float %5780, %5780
  %5783 = fmul fast float %5782, 0x3FEE471020000000
  %5784 = fadd fast float %5783, 0xBFD42F6020000000
  %5785 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5767, float %5768, float 0x3FD20DD760000000, float %5781, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5787 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fcmp fast oeq float %5787, 0.000000e+00
  %5789 = fcmp fast oeq float %5786, 0.000000e+00
  %5790 = or i1 %5789, %5788
  br i1 %5790, label %5820, label %5791

; <label>:5791                                    ; preds = %5763
  %5792 = fsub fast float -0.000000e+00, %72
  %5793 = fsub fast float -0.000000e+00, %70
  %5794 = call float @dx.op.unary.f32(i32 24, float %5787)  ; Sqrt(value)
  %5795 = fdiv fast float %5794, %5786
  %5796 = fcmp fast ogt float %5795, 0x3FFB6F8900000000
  %5797 = select i1 %5796, float 0x3FFB6F8900000000, float %5795
  %5798 = fmul fast float %5797, 0x3FE8A23460000000
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = call float @dx.op.binary.f32(i32 35, float %5797, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5801 = fmul fast float %5799, %5786
  %5802 = fmul fast float %5800, 0x3FF279A740000000
  %5803 = fadd fast float %5802, -1.000000e+00
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %71, float %5792, float %5793, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = call float @dx.op.unary.f32(i32 25, float %5804)  ; Rsqrt(value)
  %5806 = fmul fast float %5805, %5792
  %5807 = fmul fast float %5805, %5793
  %5808 = fmul fast float %5805, %71
  %5809 = fmul fast float %5803, %5803
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = fmul fast float %5800, 0x40005F8BE0000000
  %5812 = fsub fast float 0x400C5BF8A0000000, %5811
  %5813 = fdiv fast float %5801, %5812
  %5814 = fmul fast float %5813, 0x3FEE31C3C0000000
  %5815 = fmul fast float %5814, %5810
  %5816 = fmul fast float %5800, 0x3FDACB7480000000
  %5817 = fadd fast float %5816, 0xBFD7347680000000
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %5818, %5810
  br label %5820

; <label>:5820                                    ; preds = %5791, %5763
  %5821 = phi float [ %5806, %5791 ], [ 0.000000e+00, %5763 ]
  %5822 = phi float [ %5807, %5791 ], [ 0.000000e+00, %5763 ]
  %5823 = phi float [ %5808, %5791 ], [ 0.000000e+00, %5763 ]
  %5824 = phi float [ %5815, %5791 ], [ 0.000000e+00, %5763 ]
  %5825 = phi float [ %5819, %5791 ], [ 0.000000e+00, %5763 ]
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = fmul fast float %5826, 0x3FDF454380000000
  %5828 = fmul fast float %5826, %5826
  %5829 = fmul fast float %5828, 0x3FEE471020000000
  %5830 = fadd fast float %5829, 0xBFD42F6020000000
  %5831 = fmul fast float %5786, 0x3FD20DD760000000
  %5832 = fmul fast float %5830, %5825
  %5833 = fadd fast float %5832, %5831
  %5834 = fmul fast float %5827, %5824
  %5835 = fadd fast float %5833, %5834
  %5836 = fsub fast float %5833, %5834
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fmul fast float %5837, 0x3FDF454380000000
  %5839 = fmul fast float %5837, %5837
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5824, float %5825, float 0x3FD20DD760000000, float %5838, float %5841)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5844 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = fcmp fast oeq float %5844, 0.000000e+00
  %5846 = fcmp fast oeq float %5843, 0.000000e+00
  %5847 = or i1 %5846, %5845
  br i1 %5847, label %5877, label %5848

; <label>:5848                                    ; preds = %5820
  %5849 = fsub fast float -0.000000e+00, %68
  %5850 = fsub fast float -0.000000e+00, %66
  %5851 = call float @dx.op.unary.f32(i32 24, float %5844)  ; Sqrt(value)
  %5852 = fdiv fast float %5851, %5843
  %5853 = fcmp fast ogt float %5852, 0x3FFB6F8900000000
  %5854 = select i1 %5853, float 0x3FFB6F8900000000, float %5852
  %5855 = fmul fast float %5854, 0x3FE8A23460000000
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5854, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5858 = fmul fast float %5856, %5843
  %5859 = fmul fast float %5857, 0x3FF279A740000000
  %5860 = fadd fast float %5859, -1.000000e+00
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %67, float %5849, float %5850, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = call float @dx.op.unary.f32(i32 25, float %5861)  ; Rsqrt(value)
  %5863 = fmul fast float %5862, %5849
  %5864 = fmul fast float %5862, %5850
  %5865 = fmul fast float %5862, %67
  %5866 = fmul fast float %5860, %5860
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = fmul fast float %5857, 0x40005F8BE0000000
  %5869 = fsub fast float 0x400C5BF8A0000000, %5868
  %5870 = fdiv fast float %5858, %5869
  %5871 = fmul fast float %5870, 0x3FEE31C3C0000000
  %5872 = fmul fast float %5871, %5867
  %5873 = fmul fast float %5857, 0x3FDACB7480000000
  %5874 = fadd fast float %5873, 0xBFD7347680000000
  %5875 = fmul fast float %5874, %5870
  %5876 = fmul fast float %5875, %5867
  br label %5877

; <label>:5877                                    ; preds = %5848, %5820
  %5878 = phi float [ %5863, %5848 ], [ 0.000000e+00, %5820 ]
  %5879 = phi float [ %5864, %5848 ], [ 0.000000e+00, %5820 ]
  %5880 = phi float [ %5865, %5848 ], [ 0.000000e+00, %5820 ]
  %5881 = phi float [ %5872, %5848 ], [ 0.000000e+00, %5820 ]
  %5882 = phi float [ %5876, %5848 ], [ 0.000000e+00, %5820 ]
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = fmul fast float %5883, 0x3FDF454380000000
  %5885 = fmul fast float %5883, %5883
  %5886 = fmul fast float %5885, 0x3FEE471020000000
  %5887 = fadd fast float %5886, 0xBFD42F6020000000
  %5888 = fmul fast float %5843, 0x3FD20DD760000000
  %5889 = fmul fast float %5887, %5882
  %5890 = fadd fast float %5889, %5888
  %5891 = fmul fast float %5884, %5881
  %5892 = fadd fast float %5890, %5891
  %5893 = fsub fast float %5890, %5891
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = fmul fast float %5894, 0x3FDF454380000000
  %5896 = fmul fast float %5894, %5894
  %5897 = fmul fast float %5896, 0x3FEE471020000000
  %5898 = fadd fast float %5897, 0xBFD42F6020000000
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5881, float %5882, float 0x3FD20DD760000000, float %5895, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5778, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5892, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5779, float 0.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5836, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5893, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5785, float 0.000000e+00)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5842, float 0.000000e+00)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5899, float 0.000000e+00)  ; FMax(a,b)
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5911 = call float @dx.op.binary.f32(i32 36, float %5701, float %5910)  ; FMin(a,b)
  %5912 = fsub fast float 1.000000e+00, %5724
  %5913 = fmul fast float %5911, %5912
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = bitcast float %5914 to i32
  %5916 = sub nsw i32 2129859010, %5915
  %5917 = bitcast i32 %5916 to float
  %5918 = call float @dx.op.binary.f32(i32 36, float %5702, float %5910)  ; FMin(a,b)
  %5919 = fmul fast float %5918, %5912
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = bitcast float %5920 to i32
  %5922 = sub nsw i32 2129859010, %5921
  %5923 = bitcast i32 %5922 to float
  %5924 = call float @dx.op.binary.f32(i32 36, float %5703, float %5910)  ; FMin(a,b)
  %5925 = fmul fast float %5924, %5912
  %5926 = fsub fast float 1.000000e+00, %5925
  %5927 = bitcast float %5926 to i32
  %5928 = sub nsw i32 2129859010, %5927
  %5929 = bitcast i32 %5928 to float
  %5930 = fmul fast float %5900, %5724
  %5931 = fmul fast float %5930, %5917
  %5932 = fmul fast float %5901, %5724
  %5933 = fmul fast float %5932, %5923
  %5934 = fmul fast float %5902, %5724
  %5935 = fmul fast float %5934, %5929
  %5936 = call float @dx.op.binary.f32(i32 36, float %5704, float %5910)  ; FMin(a,b)
  %5937 = fmul fast float %5936, %5912
  %5938 = fsub fast float 1.000000e+00, %5937
  %5939 = bitcast float %5938 to i32
  %5940 = sub nsw i32 2129859010, %5939
  %5941 = bitcast i32 %5940 to float
  %5942 = call float @dx.op.binary.f32(i32 36, float %5705, float %5910)  ; FMin(a,b)
  %5943 = fmul fast float %5942, %5912
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = bitcast float %5944 to i32
  %5946 = sub nsw i32 2129859010, %5945
  %5947 = bitcast i32 %5946 to float
  %5948 = call float @dx.op.binary.f32(i32 36, float %5713, float %5910)  ; FMin(a,b)
  %5949 = fmul fast float %5948, %5912
  %5950 = fsub fast float 1.000000e+00, %5949
  %5951 = bitcast float %5950 to i32
  %5952 = sub nsw i32 2129859010, %5951
  %5953 = bitcast i32 %5952 to float
  %5954 = fmul fast float %5906, %5724
  %5955 = fmul fast float %5954, %5941
  %5956 = fmul fast float %5907, %5724
  %5957 = fmul fast float %5956, %5947
  %5958 = fmul fast float %5908, %5724
  %5959 = fmul fast float %5958, %5953
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5933, float %5935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = select i1 %223, float 0.000000e+00, float %5931
  %5962 = select i1 %223, float %5960, float %5933
  %5963 = select i1 %223, float 0.000000e+00, float %5935
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = select i1 %223, float 0.000000e+00, float %5903
  %5966 = select i1 %223, float %5964, float %5904
  %5967 = select i1 %223, float 0.000000e+00, float %5905
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5955, float %5957, float %5959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = select i1 %223, float 0.000000e+00, float %5955
  %5970 = select i1 %223, float %5968, float %5957
  %5971 = select i1 %223, float 0.000000e+00, float %5959
  %5972 = fmul fast float %4424, %4424
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5715, 9.843750e-01
  %5975 = fmul fast float %5710, 9.843750e-01
  %5976 = fadd fast float %5974, 7.812500e-03
  %5977 = fadd fast float %5975, 7.812500e-03
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5976, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.ResRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.ResRet.f32 %5978, 2
  %5982 = extractvalue %dx.types.ResRet.f32 %5978, 3
  %5983 = fsub fast float 1.000000e+00, %5973
  %5984 = fsub fast float %5981, %5979
  %5985 = fsub fast float %5982, %5980
  %5986 = fmul fast float %5984, %5983
  %5987 = fmul fast float %5985, %5983
  %5988 = fadd fast float %5986, %5979
  %5989 = fadd fast float %5987, %5980
  %5990 = fmul fast float %5988, %5704
  %5991 = fmul fast float %5988, %5705
  %5992 = fmul fast float %5988, %5713
  %5993 = fadd fast float %5990, %5989
  %5994 = fadd fast float %5991, %5989
  %5995 = fadd fast float %5992, %5989
  %5996 = fcmp fast ogt float %5070, 0.000000e+00
  br i1 %5996, label %5997, label %6023

; <label>:5997                                    ; preds = %5877
  %5998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %5715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = fadd fast float %5999, -5.000000e-01
  %6003 = fadd fast float %6000, -5.000000e-01
  %6004 = fadd fast float %6001, -5.000000e-01
  %6005 = fsub fast float 1.000000e+00, %5704
  %6006 = fsub fast float 1.000000e+00, %5705
  %6007 = fsub fast float 1.000000e+00, %5713
  %6008 = fmul fast float %5704, 4.000000e+00
  %6009 = fmul fast float %6008, %6005
  %6010 = fmul fast float %6009, %6002
  %6011 = fmul fast float %5705, 4.000000e+00
  %6012 = fmul fast float %6011, %6006
  %6013 = fmul fast float %6012, %6003
  %6014 = fmul fast float %5713, 4.000000e+00
  %6015 = fmul fast float %6014, %6007
  %6016 = fmul fast float %6015, %6004
  %6017 = fadd fast float %6010, %5993
  %6018 = fadd fast float %6013, %5994
  %6019 = fadd fast float %6016, %5995
  %6020 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6022 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  br label %6023

; <label>:6023                                    ; preds = %5997, %5877
  %6024 = phi float [ %6020, %5997 ], [ %5993, %5877 ]
  %6025 = phi float [ %6021, %5997 ], [ %5994, %5877 ]
  %6026 = phi float [ %6022, %5997 ], [ %5995, %5877 ]
  %6027 = call float @dx.op.binary.f32(i32 35, float %6025, float %6026)  ; FMax(a,b)
  %6028 = call float @dx.op.binary.f32(i32 35, float %6024, float %6027)  ; FMax(a,b)
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = fcmp fast ogt float %6030, 0x3E7FF19E20000000
  %6032 = fdiv fast float 1.000000e+00, %6030
  %6033 = select i1 %6031, float %6032, float 0.000000e+00
  %6034 = fmul fast float %6033, %5701
  %6035 = fmul fast float %6033, %5702
  %6036 = fmul fast float %6033, %5703
  %6037 = fadd fast float %6034, -1.000000e+00
  %6038 = fadd fast float %6035, -1.000000e+00
  %6039 = fadd fast float %6036, -1.000000e+00
  %6040 = fmul fast float %6037, 5.000000e-01
  %6041 = fmul fast float %6038, 5.000000e-01
  %6042 = fmul fast float %6039, 5.000000e-01
  %6043 = fadd fast float %6040, 1.000000e+00
  %6044 = fadd fast float %6041, 1.000000e+00
  %6045 = fadd fast float %6042, 1.000000e+00
  %6046 = call float @dx.op.binary.f32(i32 35, float %5715, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6047 = fdiv fast float %4424, %6046
  %6048 = fcmp fast olt float %5119, 1.270000e+02
  %6049 = fcmp fast olt float %5120, 1.270000e+02
  %6050 = fcmp fast olt float %5121, 1.270000e+02
  %6051 = fmul fast float %5119, 0xBFF7154760000000
  %6052 = fmul fast float %6051, %6047
  %6053 = fmul fast float %5120, 0xBFF7154760000000
  %6054 = fmul fast float %6053, %6047
  %6055 = fmul fast float %5121, 0xBFF7154760000000
  %6056 = fmul fast float %6055, %6047
  %6057 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6058 = call float @dx.op.unary.f32(i32 21, float %6054)  ; Exp(value)
  %6059 = call float @dx.op.unary.f32(i32 21, float %6056)  ; Exp(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6063 = select i1 %6048, float %6060, float 0.000000e+00
  %6064 = select i1 %6049, float %6061, float 0.000000e+00
  %6065 = select i1 %6050, float %6062, float 0.000000e+00
  %6066 = fmul fast float %6063, %6029
  %6067 = fmul fast float %6064, %6029
  %6068 = fmul fast float %6065, %6029
  %6069 = fadd fast float %6066, -1.000000e+00
  %6070 = fadd fast float %6067, -1.000000e+00
  %6071 = fadd fast float %6068, -1.000000e+00
  %6072 = fmul fast float %6069, %5067
  %6073 = fmul fast float %6070, %5067
  %6074 = fmul fast float %6071, %5067
  %6075 = fmul fast float %6024, %5969
  %6076 = fmul fast float %6025, %5970
  %6077 = fmul fast float %6026, %5971
  %6078 = fsub fast float 1.000000e+00, %5715
  %6079 = bitcast float %6078 to i32
  %6080 = sitofp i32 %6079 to float
  %6081 = fmul fast float %6080, 5.000000e+00
  %6082 = fadd fast float %6081, 0xC1EFBF8940000000
  %6083 = fptosi float %6082 to i32
  %6084 = bitcast i32 %6083 to float
  %6085 = fmul fast float %6084, %5071
  %6086 = fmul fast float %5961, %6085
  %6087 = fmul fast float %6086, %6029
  %6088 = fmul fast float %6087, %6043
  %6089 = fmul fast float %5962, %6085
  %6090 = fmul fast float %6089, %6029
  %6091 = fmul fast float %6090, %6044
  %6092 = fmul fast float %5963, %6085
  %6093 = fmul fast float %6092, %6029
  %6094 = fmul fast float %6093, %6045
  %6095 = fadd fast float %6075, %5060
  %6096 = fadd fast float %6095, %6088
  %6097 = fmul fast float %6096, %5067
  %6098 = fadd fast float %6076, %5061
  %6099 = fadd fast float %6098, %6091
  %6100 = fmul fast float %6099, %5067
  %6101 = fadd fast float %6077, %5062
  %6102 = fadd fast float %6101, %6094
  %6103 = fmul fast float %6102, %5067
  %6104 = fmul fast float %5705, 0x4012D0A400000000
  %6105 = fadd fast float %6074, 1.000000e+00
  %6106 = fadd fast float %6073, 1.000000e+00
  %6107 = fadd fast float %6072, 1.000000e+00
  %6108 = fmul fast float %6029, %5963
  %6109 = fmul fast float %6029, %5962
  %6110 = fmul fast float %6029, %5961
  %6111 = fsub fast float 1.000000e+00, %5710
  %6112 = fmul fast float %6111, %5067
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = fsub fast float 1.000000e+00, %6114
  %6116 = fadd fast float %6104, 0x3FDB6377A0000000
  %6117 = fmul fast float %6115, %6116
  %6118 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6119 = fadd fast float %6117, %6118
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = call float @dx.op.binary.f32(i32 35, float %6120, float 0x3F847AE140000000)  ; FMax(a,b)
  %6122 = fmul fast float %6121, %6121
  %6123 = fmul fast float %6122, %6122
  %6124 = fmul fast float %6123, 0xC00A935000000000
  %6125 = call float @dx.op.unary.f32(i32 21, float %6124)  ; Exp(value)
  %6126 = fsub fast float 1.000000e+00, %6125
  %6127 = fmul fast float %6107, %5965
  %6128 = fmul fast float %6127, %6126
  %6129 = fmul fast float %6106, %5966
  %6130 = fmul fast float %6129, %6126
  %6131 = fmul fast float %6105, %5967
  %6132 = fmul fast float %6131, %6126
  %6133 = fadd fast float %6128, %6110
  %6134 = fmul fast float %6133, %5067
  %6135 = fadd fast float %6130, %6109
  %6136 = fmul fast float %6135, %5067
  %6137 = fadd fast float %6132, %6108
  %6138 = fmul fast float %6137, %5067
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 3
  %6141 = fcmp fast oeq float %6140, 0.000000e+00
  br i1 %6141, label %7346, label %6142

; <label>:6142                                    ; preds = %6023
  %6143 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6147, float %6148, float %6149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = select i1 %223, float %6151, float %6147
  %6155 = select i1 %223, float %6153, float %6148
  %6156 = select i1 %223, float %6152, float %6149
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6159 = fmul fast float %6158, %111
  %6160 = fmul fast float %6158, %113
  %6161 = fmul fast float %6158, %115
  %6162 = fadd fast float %6159, %161
  %6163 = fadd fast float %6160, %162
  %6164 = fadd fast float %6161, %163
  %6165 = fcmp fast olt float %6140, 0.000000e+00
  br i1 %6165, label %6790, label %6166

; <label>:6166                                    ; preds = %6142
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6172, 2
  %6176 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.CBufRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.CBufRet.f32 %6177, 2
  %6181 = extractvalue %dx.types.CBufRet.f32 %6177, 3
  %6182 = fmul fast float %6168, %6162
  %6183 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6169, float %6182)  ; FMad(a,b,c)
  %6184 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6170, float %6183)  ; FMad(a,b,c)
  %6185 = fadd fast float %6184, %6171
  %6186 = fmul fast float %6173, %6162
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6174, float %6186)  ; FMad(a,b,c)
  %6188 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6175, float %6187)  ; FMad(a,b,c)
  %6189 = fadd fast float %6188, %6176
  %6190 = fmul fast float %6178, %6162
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6179, float %6190)  ; FMad(a,b,c)
  %6192 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6180, float %6191)  ; FMad(a,b,c)
  %6193 = fadd fast float %6192, %6181
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6198 = fmul fast float %6197, %6185
  %6199 = fmul fast float %6197, %6189
  %6200 = fadd fast float %6198, %6195
  %6201 = fadd fast float %6199, %6196
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6206 = fmul fast float %6205, %6185
  %6207 = fmul fast float %6205, %6189
  %6208 = fadd fast float %6206, %6203
  %6209 = fadd fast float %6207, %6204
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6212 = fsub fast float %6211, %6193
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = fmul fast float %6212, %6213
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6220 = fadd fast float %6219, %6217
  %6221 = fcmp fast ogt float %6220, 0.000000e+00
  br i1 %6221, label %6222, label %6246

; <label>:6222                                    ; preds = %6166
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = fsub fast float %6208, %6224
  %6227 = fsub fast float %6209, %6225
  %6228 = fcmp fast olt float %6226, 0.000000e+00
  %6229 = fcmp fast olt float %6227, 0.000000e+00
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6235 = select i1 %6228, float %6231, float %6233
  %6236 = select i1 %6229, float %6232, float %6234
  %6237 = fmul fast float %6235, %6226
  %6238 = fmul fast float %6236, %6227
  %6239 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6240 = call float @dx.op.unary.f32(i32 6, float %6238)  ; FAbs(value)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6242 = call float @dx.op.binary.f32(i32 35, float %6239, float %6240)  ; FMax(a,b)
  %6243 = fsub fast float %6241, %6242
  %6244 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  %6245 = fmul fast float %6244, %6216
  br label %6246

; <label>:6246                                    ; preds = %6222, %6166
  %6247 = phi float [ %6245, %6222 ], [ 0.000000e+00, %6166 ]
  %6248 = extractvalue %dx.types.CBufRet.f32 %6194, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6250 = fadd fast float %6249, %6248
  %6251 = fcmp fast ogt float %6250, 0.000000e+00
  %6252 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  br i1 %6251, label %6253, label %6276

; <label>:6253                                    ; preds = %6246
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = fsub fast float %6200, %6255
  %6258 = fsub fast float %6201, %6256
  %6259 = fcmp fast olt float %6257, 0.000000e+00
  %6260 = fcmp fast olt float %6258, 0.000000e+00
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6261, 3
  %6266 = select i1 %6259, float %6262, float %6264
  %6267 = select i1 %6260, float %6263, float %6265
  %6268 = fmul fast float %6266, %6257
  %6269 = fmul fast float %6267, %6258
  %6270 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6271 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6272 = call float @dx.op.binary.f32(i32 35, float %6270, float %6271)  ; FMax(a,b)
  %6273 = fsub fast float %6252, %6272
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = fmul fast float %6274, %6216
  br label %6276

; <label>:6276                                    ; preds = %6253, %6246
  %6277 = phi float [ %6275, %6253 ], [ 0.000000e+00, %6246 ]
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6280 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = fsub fast float %6185, %6282
  %6285 = fsub fast float %6189, %6283
  %6286 = fcmp fast olt float %6284, 0.000000e+00
  %6287 = fcmp fast olt float %6285, 0.000000e+00
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = extractvalue %dx.types.CBufRet.f32 %6288, 3
  %6293 = select i1 %6286, float %6289, float %6291
  %6294 = select i1 %6287, float %6290, float %6292
  %6295 = fmul fast float %6293, %6284
  %6296 = fmul fast float %6294, %6285
  %6297 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6298 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6299 = call float @dx.op.binary.f32(i32 35, float %6297, float %6298)  ; FMax(a,b)
  %6300 = fsub fast float %6252, %6299
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = call float @dx.op.binary.f32(i32 36, float %6301, float %6280)  ; FMin(a,b)
  %6303 = fmul fast float %6302, %6216
  %6304 = fsub fast float %6277, %6303
  %6305 = fsub fast float %6247, %6277
  %6306 = fsub fast float %6305, %6303
  %6307 = call float @dx.op.binary.f32(i32 35, float %6303, float %6277)  ; FMax(a,b)
  %6308 = call float @dx.op.binary.f32(i32 35, float %6307, float %6247)  ; FMax(a,b)
  %6309 = fcmp fast olt float %6308, 1.000000e+00
  br i1 %6309, label %6310, label %6708, !dx.controlflow.hints !94

; <label>:6310                                    ; preds = %6276
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = fcmp fast une float %6312, 0.000000e+00
  br i1 %6313, label %6314, label %6708, !dx.controlflow.hints !95

; <label>:6314                                    ; preds = %6310
  %6315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6315, 2
  %6319 = extractvalue %dx.types.CBufRet.f32 %6315, 3
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6324 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = fmul fast float %6316, %6162
  %6331 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6317, float %6330)  ; FMad(a,b,c)
  %6332 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6318, float %6331)  ; FMad(a,b,c)
  %6333 = fadd fast float %6332, %6319
  %6334 = fmul fast float %6321, %6162
  %6335 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6322, float %6334)  ; FMad(a,b,c)
  %6336 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6323, float %6335)  ; FMad(a,b,c)
  %6337 = fadd fast float %6336, %6324
  %6338 = fmul fast float %6326, %6162
  %6339 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6327, float %6338)  ; FMad(a,b,c)
  %6340 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6328, float %6339)  ; FMad(a,b,c)
  %6341 = fadd fast float %6340, %6329
  %6342 = fcmp fast oge float %6333, 1.000000e+00
  %6343 = fcmp fast oge float %6337, 1.000000e+00
  %6344 = or i1 %6342, %6343
  %6345 = fcmp fast olt float %6333, 0.000000e+00
  %6346 = fcmp fast olt float %6337, 0.000000e+00
  %6347 = or i1 %6345, %6346
  %6348 = or i1 %6344, %6347
  br i1 %6348, label %6708, label %6349, !dx.controlflow.hints !96

; <label>:6349                                    ; preds = %6314
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.i32 %6354, 2
  %6356 = uitofp i32 %6355 to float
  %6357 = extractvalue %dx.types.CBufRet.i32 %6354, 3
  %6358 = uitofp i32 %6357 to float
  %6359 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6360 = fmul fast float %6359, 2.000000e+00
  %6361 = fsub fast float %6333, %6351
  %6362 = fsub fast float %6337, %6352
  %6363 = fmul fast float %6360, %6361
  %6364 = fmul fast float %6360, %6362
  %6365 = fdiv fast float 1.000000e+00, %6145
  %6366 = fmul fast float %6364, %6365
  %6367 = call float @dx.op.unary.f32(i32 6, float %6366)  ; FAbs(value)
  %6368 = fmul fast float %6353, %6164
  %6369 = fmul fast float %6368, %6360
  %6370 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6371 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float %6370)  ; FMax(a,b)
  %6373 = call float @dx.op.binary.f32(i32 35, float %6372, float %6367)  ; FMax(a,b)
  %6374 = fmul fast float %6373, 2.000000e+00
  %6375 = call float @dx.op.unary.f32(i32 23, float %6374)  ; Log(value)
  %6376 = call float @dx.op.binary.f32(i32 35, float %6375, float %6356)  ; FMax(a,b)
  %6377 = call float @dx.op.unary.f32(i32 22, float %6376)  ; Frc(value)
  %6378 = fadd fast float %6377, 0xBFEA666660000000
  %6379 = fmul fast float %6378, 8.000000e+00
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = call float @dx.op.unary.f32(i32 27, float %6376)  ; Round_ni(value)
  %6382 = fadd fast float %6381, %6380
  %6383 = call float @dx.op.binary.f32(i32 36, float %6382, float %6358)  ; FMin(a,b)
  %6384 = call float @dx.op.unary.f32(i32 27, float %6383)  ; Round_ni(value)
  %6385 = fsub fast float -0.000000e+00, %6384
  %6386 = call float @dx.op.unary.f32(i32 21, float %6385)  ; Exp(value)
  %6387 = fmul fast float %6386, %6360
  %6388 = fmul fast float %6387, %6333
  %6389 = fmul fast float %6387, %6337
  %6390 = fmul fast float %6388, 2.500000e-01
  %6391 = fmul fast float %6389, 2.500000e-01
  %6392 = fadd fast float %6390, 5.000000e-01
  %6393 = fadd fast float %6391, 5.000000e-01
  %6394 = fsub fast float %6358, %6356
  %6395 = fptoui float %6394 to i32
  %6396 = add i32 %6395, 320
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6396)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6400 = fcmp fast une float %6383, %6358
  %6401 = fsub fast float %6333, %6398
  %6402 = fsub fast float %6337, %6399
  %6403 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6404 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6405 = fmul fast float %6403, %6387
  %6406 = fmul fast float %6404, %6387
  %6407 = fcmp fast olt float %6405, 1.000000e+00
  %6408 = fcmp fast olt float %6406, 1.000000e+00
  %6409 = and i1 %6407, %6408
  %6410 = or i1 %6400, %6409
  br i1 %6410, label %6411, label %6708, !dx.controlflow.hints !97

; <label>:6411                                    ; preds = %6349
  %6412 = fmul fast float %6389, 5.000000e-01
  %6413 = fmul fast float %6388, 5.000000e-01
  %6414 = fadd fast float %6412, 5.000000e-01
  %6415 = fadd fast float %6413, 5.000000e-01
  %6416 = sitofp i32 %6355 to float
  %6417 = fsub fast float %6383, %6416
  %6418 = call float @dx.op.unary.f32(i32 27, float %6417)  ; Round_ni(value)
  %6419 = call float @dx.op.unary.f32(i32 22, float %6383)  ; Frc(value)
  %6420 = call float @dx.op.unary.f32(i32 22, float %6415)  ; Frc(value)
  %6421 = call float @dx.op.unary.f32(i32 22, float %6414)  ; Frc(value)
  %6422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6420, float %6421, float %6418, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6423 = extractvalue %dx.types.ResRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.ResRet.f32 %6422, 2
  %6426 = extractvalue %dx.types.ResRet.f32 %6422, 3
  %6427 = fcmp fast ogt float %6419, 0.000000e+00
  br i1 %6427, label %6428, label %6449, !dx.controlflow.hints !98

; <label>:6428                                    ; preds = %6411
  %6429 = fadd fast float %6418, 1.000000e+00
  %6430 = call float @dx.op.unary.f32(i32 22, float %6392)  ; Frc(value)
  %6431 = call float @dx.op.unary.f32(i32 22, float %6393)  ; Frc(value)
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6430, float %6431, float %6429, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.ResRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.ResRet.f32 %6432, 3
  %6437 = fsub fast float %6433, %6423
  %6438 = fsub fast float %6434, %6424
  %6439 = fsub fast float %6435, %6425
  %6440 = fsub fast float %6436, %6426
  %6441 = fmul fast float %6437, %6419
  %6442 = fmul fast float %6438, %6419
  %6443 = fmul fast float %6439, %6419
  %6444 = fmul fast float %6440, %6419
  %6445 = fadd fast float %6441, %6423
  %6446 = fadd fast float %6442, %6424
  %6447 = fadd fast float %6443, %6425
  %6448 = fadd fast float %6444, %6426
  br label %6449

; <label>:6449                                    ; preds = %6428, %6411
  %6450 = phi float [ %6445, %6428 ], [ %6423, %6411 ]
  %6451 = phi float [ %6446, %6428 ], [ %6424, %6411 ]
  %6452 = phi float [ %6447, %6428 ], [ %6425, %6411 ]
  %6453 = phi float [ %6448, %6428 ], [ %6426, %6411 ]
  %6454 = fadd fast float %6450, -5.000000e-01
  %6455 = fadd fast float %6452, -5.000000e-01
  %6456 = fmul fast float %6454, 0xBFD5555560000000
  %6457 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6455, float %6456)  ; FMad(a,b,c)
  %6458 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6451, float 0.000000e+00)  ; FMad(a,b,c)
  %6459 = fadd fast float %6458, %6453
  %6460 = fmul fast float %6454, -7.500000e-01
  %6461 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6455, float %6460)  ; FMad(a,b,c)
  %6462 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6451, float 0.000000e+00)  ; FMad(a,b,c)
  %6463 = fadd fast float %6462, %6453
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = fsub fast float %6467, %6457
  %6472 = fsub fast float %6468, %6459
  %6473 = fsub fast float %6469, %6461
  %6474 = fsub fast float %6470, %6463
  %6475 = fmul fast float %6471, %6465
  %6476 = fmul fast float %6472, %6465
  %6477 = fmul fast float %6473, %6465
  %6478 = fmul fast float %6474, %6465
  %6479 = fadd fast float %6475, %6457
  %6480 = fadd fast float %6476, %6459
  %6481 = fadd fast float %6477, %6461
  %6482 = fadd fast float %6478, %6463
  %6483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.i32 %6483, 0
  %6485 = and i32 %6484, 536870911
  %6486 = uitofp i32 %6485 to float
  %6487 = fmul fast float %6486, %6333
  %6488 = fmul fast float %6486, %6337
  %6489 = fptoui float %6487 to i32
  %6490 = fptoui float %6488 to i32
  %6491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6492 = extractvalue %dx.types.ResRet.i32 %6491, 0
  %6493 = and i32 %6492, 31
  %6494 = lshr i32 %6489, %6493
  %6495 = lshr i32 %6490, %6493
  %6496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.i32 %6496, 0
  %6498 = and i32 %6497, 31
  %6499 = shl i32 1, %6498
  %6500 = call i32 @dx.op.binary.i32(i32 40, i32 %6499, i32 4)  ; UMin(a,b)
  %6501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.i32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.i32 %6501, 1
  %6504 = icmp eq i32 %6500, 0
  br i1 %6504, label %6546, label %6505

; <label>:6505                                    ; preds = %6449
  br label %6506

; <label>:6506                                    ; preds = %6534, %6505
  %6507 = phi i32 [ %6537, %6534 ], [ 0, %6505 ]
  %6508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6509 = extractvalue %dx.types.ResRet.i32 %6508, 0
  %6510 = lshr i32 %6509, 16
  %6511 = and i32 %6510, 31
  %6512 = shl i32 %6495, %6511
  %6513 = add i32 %6512, %6494
  %6514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.i32 %6514, 0
  %6516 = and i32 %6515, 31
  %6517 = shl i32 %6513, %6516
  %6518 = add i32 %6517, %6507
  %6519 = shl i32 %6518, 2
  %6520 = add i32 %6519, 32
  %6521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6520, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.i32 %6521, 0
  %6523 = icmp slt i32 %6522, 0
  %6524 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6507
  %6525 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6507
  %6526 = bitcast float* %6524 to i32*
  %6527 = bitcast float* %6525 to i32*
  br i1 %6523, label %6528, label %6534

; <label>:6528                                    ; preds = %6506
  %6529 = and i32 %6522, 1073741823
  %6530 = add nuw nsw i32 %6529, 20
  %6531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6530, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.i32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.i32 %6531, 1
  br label %6534

; <label>:6534                                    ; preds = %6528, %6506
  %6535 = phi i32 [ %6532, %6528 ], [ %6502, %6506 ]
  %6536 = phi i32 [ %6533, %6528 ], [ %6503, %6506 ]
  store i32 %6535, i32* %6526, align 4
  store i32 %6536, i32* %6527, align 4
  %6537 = add nuw i32 %6507, 1
  %6538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.i32 %6538, 2
  %6540 = icmp eq i32 %6539, 0
  %6541 = icmp ugt i32 %6522, -1073741825
  %6542 = and i1 %6541, %6540
  %6543 = icmp ult i32 %6537, %6500
  %6544 = and i1 %6542, %6543
  br i1 %6544, label %6506, label %6545

; <label>:6545                                    ; preds = %6534
  br label %6546

; <label>:6546                                    ; preds = %6545, %6449
  %6547 = phi i32 [ 0, %6449 ], [ %6537, %6545 ]
  %6548 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6549 = fptoui float %6548 to i32
  %6550 = icmp eq i32 %6549, 0
  br i1 %6550, label %6602, label %6551

; <label>:6551                                    ; preds = %6546
  br label %6552

; <label>:6552                                    ; preds = %6597, %6551
  %6553 = phi i32 [ %6598, %6597 ], [ %6547, %6551 ]
  %6554 = phi i32 [ %6599, %6597 ], [ 0, %6551 ]
  %6555 = lshr i32 %6554, 2
  %6556 = and i32 %6554, 3
  %6557 = add nuw nsw i32 %6555, 83
  %6558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6557)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.i32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.i32 %6558, 1
  %6561 = extractvalue %dx.types.CBufRet.i32 %6558, 2
  %6562 = extractvalue %dx.types.CBufRet.i32 %6558, 3
  %6563 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6559, i32* %6563, align 4
  %6564 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6560, i32* %6564, align 4
  %6565 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6561, i32* %6565, align 4
  %6566 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6562, i32* %6566, align 4
  %6567 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6556
  %6568 = load i32, i32* %6567, align 4, !tbaa !99, !noalias !103
  %6569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6570 = extractvalue %dx.types.ResRet.i32 %6569, 0
  %6571 = lshr i32 %6570, 16
  %6572 = and i32 %6571, 31
  %6573 = shl i32 %6495, %6572
  %6574 = add i32 %6573, %6494
  %6575 = shl i32 %6574, 2
  %6576 = add i32 %6575, %6568
  %6577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6576, i32 undef)  ; BufferLoad(srv,index,wot)
  %6578 = extractvalue %dx.types.ResRet.i32 %6577, 0
  %6579 = icmp eq i32 %6578, 0
  br i1 %6579, label %6597, label %6580

; <label>:6580                                    ; preds = %6552
  %6581 = icmp slt i32 %6578, 0
  %6582 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6553
  %6583 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6553
  %6584 = bitcast float* %6582 to i32*
  %6585 = bitcast float* %6583 to i32*
  br i1 %6581, label %6586, label %6593

; <label>:6586                                    ; preds = %6580
  %6587 = and i32 %6578, 1073741823
  %6588 = add i32 %6568, 20
  %6589 = add i32 %6588, %6587
  %6590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6589, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.i32 %6590, 0
  %6592 = extractvalue %dx.types.ResRet.i32 %6590, 1
  br label %6593

; <label>:6593                                    ; preds = %6586, %6580
  %6594 = phi i32 [ %6591, %6586 ], [ %6502, %6580 ]
  %6595 = phi i32 [ %6592, %6586 ], [ %6503, %6580 ]
  store i32 %6594, i32* %6584, align 4
  store i32 %6595, i32* %6585, align 4
  %6596 = add i32 %6553, 1
  br label %6597

; <label>:6597                                    ; preds = %6593, %6552
  %6598 = phi i32 [ %6553, %6552 ], [ %6596, %6593 ]
  %6599 = add nuw i32 %6554, 1
  %6600 = icmp eq i32 %6599, %6549
  br i1 %6600, label %6601, label %6552

; <label>:6601                                    ; preds = %6597
  br label %6602

; <label>:6602                                    ; preds = %6601, %6546
  %6603 = phi i32 [ %6547, %6546 ], [ %6598, %6601 ]
  %6604 = icmp eq i32 %6603, 1
  %6605 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6606 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6604, label %6607, label %6610

; <label>:6607                                    ; preds = %6602
  %6608 = load float, float* %6605, align 4
  %6609 = load float, float* %6606, align 4
  br label %6637

; <label>:6610                                    ; preds = %6602
  %6611 = load float, float* %6605, align 4
  %6612 = load float, float* %6606, align 4
  %6613 = fdiv fast float 1.000000e+00, %6612
  %6614 = fsub fast float %6611, %6613
  %6615 = icmp ugt i32 %6603, 1
  br i1 %6615, label %6616, label %6632

; <label>:6616                                    ; preds = %6610
  br label %6617

; <label>:6617                                    ; preds = %6617, %6616
  %6618 = phi float [ %6627, %6617 ], [ %6614, %6616 ]
  %6619 = phi float [ %6628, %6617 ], [ %6611, %6616 ]
  %6620 = phi i32 [ %6629, %6617 ], [ 1, %6616 ]
  %6621 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6620
  %6622 = load float, float* %6621, align 4
  %6623 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6620
  %6624 = load float, float* %6623, align 4
  %6625 = fdiv fast float 1.000000e+00, %6624
  %6626 = fsub fast float %6622, %6625
  %6627 = call float @dx.op.binary.f32(i32 36, float %6618, float %6626)  ; FMin(a,b)
  %6628 = call float @dx.op.binary.f32(i32 35, float %6619, float %6622)  ; FMax(a,b)
  %6629 = add nuw i32 %6620, 1
  %6630 = icmp eq i32 %6629, %6603
  br i1 %6630, label %6631, label %6617

; <label>:6631                                    ; preds = %6617
  br label %6632

; <label>:6632                                    ; preds = %6631, %6610
  %6633 = phi float [ %6614, %6610 ], [ %6627, %6631 ]
  %6634 = phi float [ %6611, %6610 ], [ %6628, %6631 ]
  %6635 = fsub fast float %6634, %6633
  %6636 = fdiv fast float 1.000000e+00, %6635
  br label %6637

; <label>:6637                                    ; preds = %6632, %6607
  %6638 = phi float [ %6608, %6607 ], [ %6634, %6632 ]
  %6639 = phi float [ %6609, %6607 ], [ %6636, %6632 ]
  %6640 = fadd fast float %6341, %6638
  %6641 = fmul fast float %6640, %6639
  %6642 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6643 = fmul fast float %6642, 2.000000e+00
  %6644 = fsub fast float 1.000000e+00, %6643
  %6645 = fmul fast float %6479, %6479
  %6646 = fsub fast float %6480, %6645
  %6647 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6646)  ; FMax(a,b)
  %6648 = fdiv fast float 1.000000e+00, %6647
  %6649 = fmul fast float %6480, %6479
  %6650 = fsub fast float %6481, %6649
  %6651 = fsub fast float %6644, %6479
  %6652 = fmul fast float %6644, %6644
  %6653 = fsub fast float %6652, %6480
  %6654 = fmul fast float %6648, %6650
  %6655 = fmul fast float %6654, %6651
  %6656 = fsub fast float %6653, %6655
  %6657 = fmul fast float %6480, %6480
  %6658 = fsub fast float %6482, %6657
  %6659 = fmul fast float %6650, %6650
  %6660 = fmul fast float %6659, %6648
  %6661 = fsub fast float %6658, %6660
  %6662 = fdiv fast float %6656, %6661
  %6663 = fmul fast float %6662, %6650
  %6664 = fsub fast float %6651, %6663
  %6665 = fmul fast float %6664, %6648
  %6666 = fmul fast float %6665, %6479
  %6667 = fsub fast float 1.000000e+00, %6666
  %6668 = fmul fast float %6662, %6480
  %6669 = fsub fast float %6667, %6668
  %6670 = fmul fast float %6665, %6665
  %6671 = fmul fast float %6662, 4.000000e+00
  %6672 = fmul fast float %6671, %6669
  %6673 = fsub fast float %6670, %6672
  %6674 = call float @dx.op.unary.f32(i32 24, float %6673)  ; Sqrt(value)
  %6675 = fcmp fast oge float %6665, 0.000000e+00
  %6676 = fsub fast float -0.000000e+00, %6674
  %6677 = select i1 %6675, float %6676, float %6674
  %6678 = fsub fast float %6677, %6665
  %6679 = fdiv fast float %6678, %6662
  %6680 = fdiv fast float %6669, %6678
  %6681 = fmul fast float %6679, 5.000000e-01
  %6682 = fmul fast float %6680, 2.000000e+00
  %6683 = select i1 %6675, float %6681, float %6682
  %6684 = select i1 %6675, float %6682, float %6681
  %6685 = call float @dx.op.binary.f32(i32 35, float %6683, float %6684)  ; FMax(a,b)
  %6686 = call float @dx.op.binary.f32(i32 36, float %6683, float %6684)  ; FMin(a,b)
  %6687 = fcmp fast ogt float %6644, %6685
  %6688 = fsub fast float %6644, %6686
  %6689 = fsub fast float %6644, %6685
  %6690 = fsub fast float %6685, %6686
  %6691 = select i1 %6687, float %6689, float %6690
  %6692 = fmul float %6688, %6691
  %6693 = select i1 %6687, float %6686, float %6644
  %6694 = fcmp fast ogt float %6644, %6686
  %6695 = fmul fast float %6693, %6685
  %6696 = fadd fast float %6693, %6685
  %6697 = fmul fast float %6696, %6479
  %6698 = fadd fast float %6695, %6480
  %6699 = fsub fast float %6698, %6697
  %6700 = fdiv fast float %6699, %6692
  %6701 = select i1 %6694, float %6700, float 0.000000e+00
  %6702 = fsub fast float 1.000000e+00, %6701
  %6703 = select i1 %6687, float %6702, float %6701
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6706 = fmul fast float %6705, %6704
  %6707 = fsub fast float 1.000000e+00, %6706
  br label %6708

; <label>:6708                                    ; preds = %6637, %6349, %6314, %6310, %6276
  %6709 = phi float [ 1.000000e+00, %6276 ], [ %6707, %6637 ], [ 1.000000e+00, %6314 ], [ 1.000000e+00, %6349 ], [ 1.000000e+00, %6310 ]
  %6710 = fcmp fast ogt float %6306, 0.000000e+00
  br i1 %6710, label %6711, label %6717, !dx.controlflow.hints !112

; <label>:6711                                    ; preds = %6708
  %6712 = fadd fast float %6219, %6193
  %6713 = call float @dx.op.binary.f32(i32 35, float %6712, float 0.000000e+00)  ; FMax(a,b)
  %6714 = fadd fast float %6713, 0x3F10000000000000
  %6715 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6208, float %6209, float undef, float undef, i32 0, i32 0, i32 undef, float %6714)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6716 = extractvalue %dx.types.ResRet.f32 %6715, 0
  br label %6717

; <label>:6717                                    ; preds = %6711, %6708
  %6718 = phi float [ %6716, %6711 ], [ 1.000000e+00, %6708 ]
  %6719 = fcmp fast ogt float %6304, 0.000000e+00
  br i1 %6719, label %6720, label %6726, !dx.controlflow.hints !113

; <label>:6720                                    ; preds = %6717
  %6721 = fadd fast float %6249, %6193
  %6722 = call float @dx.op.binary.f32(i32 35, float %6721, float 0.000000e+00)  ; FMax(a,b)
  %6723 = fadd fast float %6722, 0x3F10000000000000
  %6724 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6200, float %6201, float undef, float undef, i32 0, i32 0, i32 undef, float %6723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6725 = extractvalue %dx.types.ResRet.f32 %6724, 0
  br label %6726

; <label>:6726                                    ; preds = %6720, %6717
  %6727 = phi float [ %6725, %6720 ], [ 1.000000e+00, %6717 ]
  %6728 = fcmp fast ogt float %6303, 0.000000e+00
  br i1 %6728, label %6729, label %6736, !dx.controlflow.hints !114

; <label>:6729                                    ; preds = %6726
  %6730 = extractvalue %dx.types.CBufRet.f32 %6218, 0
  %6731 = fadd fast float %6730, %6193
  %6732 = call float @dx.op.binary.f32(i32 35, float %6731, float 0.000000e+00)  ; FMax(a,b)
  %6733 = fadd fast float %6732, 0x3F10000000000000
  %6734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6185, float %6189, float undef, float undef, i32 0, i32 0, i32 undef, float %6733)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  br label %6736

; <label>:6736                                    ; preds = %6729, %6726
  %6737 = phi float [ %6735, %6729 ], [ 1.000000e+00, %6726 ]
  %6738 = fsub fast float %6718, %6709
  %6739 = fmul fast float %6738, %6247
  %6740 = fadd fast float %6739, %6709
  %6741 = fsub fast float %6727, %6740
  %6742 = fmul fast float %6741, %6277
  %6743 = fadd fast float %6742, %6740
  %6744 = fsub fast float %6737, %6743
  %6745 = fmul fast float %6744, %6303
  %6746 = fadd fast float %6745, %6743
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6749 = fcmp fast ogt float %6748, 0.000000e+00
  br i1 %6749, label %6750, label %6790, !dx.controlflow.hints !115

; <label>:6750                                    ; preds = %6736
  %6751 = fcmp fast ugt float %6748, 0.000000e+00
  br i1 %6751, label %6752, label %6787

; <label>:6752                                    ; preds = %6750
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 0
  %6755 = extractvalue %dx.types.CBufRet.f32 %6753, 1
  %6756 = extractvalue %dx.types.CBufRet.f32 %6753, 2
  %6757 = extractvalue %dx.types.CBufRet.f32 %6753, 3
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.CBufRet.f32 %6758, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6758, 3
  %6763 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6764 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6769 = fadd fast float %6766, %6162
  %6770 = fadd fast float %6767, %6163
  %6771 = fadd fast float %6768, %6164
  %6772 = fmul fast float %6769, %6754
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6770, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6756, float %6771, float %6773)  ; FMad(a,b,c)
  %6775 = fadd fast float %6774, %6757
  %6776 = fmul fast float %6769, %6759
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6760, float %6770, float %6776)  ; FMad(a,b,c)
  %6778 = call float @dx.op.tertiary.f32(i32 46, float %6761, float %6771, float %6777)  ; FMad(a,b,c)
  %6779 = fadd fast float %6778, %6762
  %6780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6775, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fmul fast float %6781, %6764
  %6783 = fadd fast float %6782, %6763
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fmul fast float %6784, %6748
  %6786 = fsub fast float 1.000000e+00, %6785
  br label %6787

; <label>:6787                                    ; preds = %6752, %6750
  %6788 = phi float [ %6786, %6752 ], [ 1.000000e+00, %6750 ]
  %6789 = fmul fast float %6788, %6746
  br label %6790

; <label>:6790                                    ; preds = %6787, %6736, %6142
  %6791 = phi float [ 1.000000e+00, %6142 ], [ %6789, %6787 ], [ %6746, %6736 ]
  %6792 = call float @dx.op.binary.f32(i32 36, float %6791, float %6791)  ; FMin(a,b)
  %6793 = call float @dx.op.binary.f32(i32 36, float %6791, float %6792)  ; FMin(a,b)
  %6794 = fcmp fast ogt float %6793, 0.000000e+00
  br i1 %6794, label %6795, label %6955, !dx.controlflow.hints !116

; <label>:6795                                    ; preds = %6790
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6800 = extractvalue %dx.types.CBufRet.f32 %6796, 3
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6810 = extractvalue %dx.types.CBufRet.f32 %6806, 3
  %6811 = fmul fast float %6797, %6162
  %6812 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6798, float %6811)  ; FMad(a,b,c)
  %6813 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6799, float %6812)  ; FMad(a,b,c)
  %6814 = fadd fast float %6813, %6800
  %6815 = fmul fast float %6802, %6162
  %6816 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6803, float %6815)  ; FMad(a,b,c)
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6804, float %6816)  ; FMad(a,b,c)
  %6818 = fadd fast float %6817, %6805
  %6819 = fmul fast float %6807, %6162
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6163, float %6808, float %6819)  ; FMad(a,b,c)
  %6821 = call float @dx.op.tertiary.f32(i32 46, float %6164, float %6809, float %6820)  ; FMad(a,b,c)
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6826 = fmul fast float %6825, %6814
  %6827 = fmul fast float %6825, %6818
  %6828 = fadd fast float %6826, %6823
  %6829 = fadd fast float %6827, %6824
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.CBufRet.f32 %6830, 1
  %6833 = fsub fast float %6828, %6831
  %6834 = fsub fast float %6829, %6832
  %6835 = fcmp fast olt float %6833, 0.000000e+00
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = select i1 %6835, float %6838, float %6840
  %6843 = select i1 %6836, float %6839, float %6841
  %6844 = fmul fast float %6842, %6833
  %6845 = fmul fast float %6843, %6834
  %6846 = call float @dx.op.unary.f32(i32 6, float %6844)  ; FAbs(value)
  %6847 = call float @dx.op.unary.f32(i32 6, float %6845)  ; FAbs(value)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6849 = call float @dx.op.binary.f32(i32 35, float %6846, float %6847)  ; FMax(a,b)
  %6850 = fsub fast float %6848, %6849
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = fcmp fast ogt float %6851, 0.000000e+00
  br i1 %6852, label %6853, label %6894, !dx.controlflow.hints !117

; <label>:6853                                    ; preds = %6795
  %6854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6828, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6855 = extractvalue %dx.types.ResRet.f32 %6854, 1
  %6856 = fcmp fast ogt float %6855, 0.000000e+00
  br i1 %6856, label %6857, label %6889

; <label>:6857                                    ; preds = %6853
  %6858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6828, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6859 = extractvalue %dx.types.ResRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.ResRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.ResRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.ResRet.f32 %6858, 3
  %6863 = fsub fast float 1.000000e+00, %6810
  %6864 = fsub fast float %6863, %6821
  %6865 = fmul fast float %6864, 0x400921FB60000000
  %6866 = fadd fast float %6865, 0x3FF921FB60000000
  %6867 = call float @dx.op.unary.f32(i32 13, float %6866)  ; Sin(value)
  %6868 = fadd fast float %6867, -1.000000e+00
  %6869 = fmul fast float %6868, 0x3FD45F3060000000
  %6870 = fmul fast float %6864, 0x401921FB60000000
  %6871 = fadd fast float %6870, 0x400921FB60000000
  %6872 = call float @dx.op.unary.f32(i32 13, float %6871)  ; Sin(value)
  %6873 = fadd fast float %6872, 0x3E7777A5C0000000
  %6874 = fmul fast float %6873, 0x3FC45F3060000000
  %6875 = fmul fast float %6864, 0x4022D97C80000000
  %6876 = fadd fast float %6875, 0x4012D97C80000000
  %6877 = call float @dx.op.unary.f32(i32 13, float %6876)  ; Sin(value)
  %6878 = fadd fast float %6877, 1.000000e+00
  %6879 = fmul fast float %6878, 0x3FBB2995E0000000
  %6880 = fmul fast float %6864, 0x402921FB60000000
  %6881 = fadd fast float %6880, 0x401921FB60000000
  %6882 = call float @dx.op.unary.f32(i32 13, float %6881)  ; Sin(value)
  %6883 = fadd fast float %6882, 0xBE8777A5C0000000
  %6884 = fmul fast float %6883, 0x3FB45F3060000000
  %6885 = call float @dx.op.dot4.f32(i32 56, float %6859, float %6860, float %6861, float %6862, float %6869, float %6874, float %6879, float %6884)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6886 = fmul fast float %6885, 0xBFF7154760000000
  %6887 = call float @dx.op.unary.f32(i32 21, float %6886)  ; Exp(value)
  %6888 = call float @dx.op.unary.f32(i32 7, float %6887)  ; Saturate(value)
  br label %6889

; <label>:6889                                    ; preds = %6857, %6853
  %6890 = phi float [ %6888, %6857 ], [ 1.000000e+00, %6853 ]
  %6891 = fadd fast float %6890, -1.000000e+00
  %6892 = fmul fast float %6891, %6851
  %6893 = fadd fast float %6892, 1.000000e+00
  br label %6894

; <label>:6894                                    ; preds = %6889, %6795
  %6895 = phi float [ %6893, %6889 ], [ 1.000000e+00, %6795 ]
  %6896 = fmul fast float %6895, %6791
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = fadd fast float %6898, %161
  %6902 = fadd fast float %6899, %162
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 1
  %6905 = fsub fast float -0.000000e+00, %6901
  %6906 = fsub fast float -0.000000e+00, %6902
  %6907 = fsub fast float %5712, %6900
  %6908 = fadd fast float %6907, %6904
  %6909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6905, float %6906, float %6908)  ; Dot3(ax,ay,az,bx,by,bz)
  %6910 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6143, float %6144, float %6145)  ; Dot3(ax,ay,az,bx,by,bz)
  %6911 = fdiv fast float 1.000000e+00, %6910
  %6912 = fmul fast float %6911, %6909
  %6913 = fmul fast float %6143, %6912
  %6914 = fmul fast float %6144, %6912
  %6915 = fadd fast float %6913, %6901
  %6916 = fadd fast float %6914, %6902
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = fsub fast float %6915, %6918
  %6921 = fsub fast float %6916, %6919
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6924 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6925 = fmul fast float %6920, %6923
  %6926 = fmul fast float %6921, %6924
  %6927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.i32 %6927, 3
  %6929 = icmp eq i32 %6928, 0
  br i1 %6929, label %6935, label %6930

; <label>:6930                                    ; preds = %6894
  %6931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6925, float %6926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.ResRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.ResRet.f32 %6931, 2
  br label %6940

; <label>:6935                                    ; preds = %6894
  %6936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6925, float %6926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6937 = extractvalue %dx.types.ResRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.ResRet.f32 %6936, 1
  %6939 = extractvalue %dx.types.ResRet.f32 %6936, 2
  br label %6940

; <label>:6940                                    ; preds = %6935, %6930
  %6941 = phi float [ %6932, %6930 ], [ %6937, %6935 ]
  %6942 = phi float [ %6933, %6930 ], [ %6938, %6935 ]
  %6943 = phi float [ %6934, %6930 ], [ %6939, %6935 ]
  %6944 = extractvalue %dx.types.CBufRet.f32 %6903, 2
  %6945 = fmul fast float %6944, %6941
  %6946 = extractvalue %dx.types.CBufRet.f32 %6903, 0
  %6947 = fsub fast float %6912, %6946
  %6948 = fsub fast float %6947, %6945
  %6949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6948)  ; FMax(a,b)
  %6950 = fmul fast float %6949, %6942
  %6951 = call float @dx.op.binary.f32(i32 36, float %6943, float %6950)  ; FMin(a,b)
  %6952 = fmul fast float %6951, 0xBFF7154760000000
  %6953 = call float @dx.op.unary.f32(i32 21, float %6952)  ; Exp(value)
  %6954 = fmul fast float %6896, %6953
  br label %6955

; <label>:6955                                    ; preds = %6940, %6790
  %6956 = phi float [ %6954, %6940 ], [ %6791, %6790 ]
  %6957 = call float @dx.op.binary.f32(i32 36, float %6956, float %6956)  ; FMin(a,b)
  %6958 = call float @dx.op.binary.f32(i32 36, float %6956, float %6957)  ; FMin(a,b)
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  br i1 %6959, label %6960, label %7346, !dx.controlflow.hints !118

; <label>:6960                                    ; preds = %6955
  %6961 = fmul fast float %6956, %6154
  %6962 = fmul fast float %6956, %6155
  %6963 = fmul fast float %6956, %6156
  %6964 = fsub fast float %163, %5500
  %6965 = fcmp fast ogt float %6964, 0.000000e+00
  %6966 = fmul fast float %6143, 5.120000e+02
  %6967 = fmul fast float %6144, 5.120000e+02
  %6968 = fmul fast float %6145, 5.120000e+02
  %6969 = fadd fast float %6968, %163
  %6970 = fsub fast float %5500, %6969
  %6971 = fmul fast float %6970, 2.000000e+00
  %6972 = fadd fast float %6971, %6969
  %6973 = select i1 %6965, float %6972, float %6969
  %6974 = fsub fast float %6973, %163
  %6975 = call float @dx.op.dot3.f32(i32 55, float %6966, float %6967, float %6974, float %6966, float %6967, float %6974)  ; Dot3(ax,ay,az,bx,by,bz)
  %6976 = call float @dx.op.unary.f32(i32 25, float %6975)  ; Rsqrt(value)
  %6977 = fmul fast float %6976, %6966
  %6978 = fmul fast float %6976, %6967
  %6979 = fmul fast float %6976, %6974
  %6980 = fsub fast float %5500, %163
  %6981 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6980)  ; Dot3(ax,ay,az,bx,by,bz)
  %6982 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6977, float %6978, float %6979)  ; Dot3(ax,ay,az,bx,by,bz)
  %6983 = fdiv fast float 1.000000e+00, %6982
  %6984 = fmul fast float %6983, %6981
  %6985 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6964, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6986 = fcmp fast ogt float %6985, 0.000000e+00
  %6987 = fcmp fast olt float %6985, 0.000000e+00
  %6988 = zext i1 %6986 to i32
  %6989 = zext i1 %6987 to i32
  %6990 = sub nsw i32 %6988, %6989
  %6991 = sitofp i32 %6990 to float
  %6992 = fsub fast float %6973, %5500
  %6993 = call float @dx.op.dot3.f32(i32 55, float %6966, float %6967, float %6992, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = fcmp fast ogt float %6993, 0.000000e+00
  %6995 = fcmp fast olt float %6993, 0.000000e+00
  %6996 = zext i1 %6994 to i32
  %6997 = zext i1 %6995 to i32
  %6998 = sub nsw i32 %6996, %6997
  %6999 = sitofp i32 %6998 to float
  %7000 = fcmp fast une float %6991, %6999
  br i1 %7000, label %7001, label %7011

; <label>:7001                                    ; preds = %6960
  %7002 = fmul fast float %6984, %6979
  %7003 = fmul fast float %6984, %6978
  %7004 = fmul fast float %6984, %6977
  %7005 = fmul fast float %7004, %7004
  %7006 = fmul fast float %7003, %7003
  %7007 = fadd fast float %7005, %7006
  %7008 = fmul fast float %7002, %7002
  %7009 = fadd fast float %7007, %7008
  %7010 = call float @dx.op.unary.f32(i32 24, float %7009)  ; Sqrt(value)
  br label %7021

; <label>:7011                                    ; preds = %6960
  %7012 = icmp slt i32 %6990, 0
  br i1 %7012, label %7013, label %7021

; <label>:7013                                    ; preds = %7011
  %7014 = fsub fast float %163, %6973
  %7015 = fmul fast float %6966, %6966
  %7016 = fmul fast float %6967, %6967
  %7017 = fadd fast float %7015, %7016
  %7018 = fmul fast float %7014, %7014
  %7019 = fadd fast float %7017, %7018
  %7020 = call float @dx.op.unary.f32(i32 24, float %7019)  ; Sqrt(value)
  br label %7021

; <label>:7021                                    ; preds = %7013, %7011, %7001
  %7022 = phi float [ %7010, %7001 ], [ %7020, %7013 ], [ 0.000000e+00, %7011 ]
  %7023 = fsub fast float -0.000000e+00, %7022
  %7024 = select i1 %6965, float -0.000000e+00, float %7023
  %7025 = fmul fast float %5501, 0x3FF7154760000000
  %7026 = fmul fast float %7025, %7024
  %7027 = fmul fast float %5502, 0x3FF7154760000000
  %7028 = fmul fast float %7027, %7024
  %7029 = fmul fast float %5503, 0x3FF7154760000000
  %7030 = fmul fast float %7029, %7024
  %7031 = call float @dx.op.unary.f32(i32 21, float %7026)  ; Exp(value)
  %7032 = call float @dx.op.unary.f32(i32 21, float %7028)  ; Exp(value)
  %7033 = call float @dx.op.unary.f32(i32 21, float %7030)  ; Exp(value)
  %7034 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7035 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  %7036 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7037 = fmul fast float %6961, %7034
  %7038 = fmul fast float %6962, %7035
  %7039 = fmul fast float %6963, %7036
  %7040 = fsub fast float %6143, %5700
  %7041 = fsub fast float %6144, %5699
  %7042 = fsub fast float %6145, %5698
  %7043 = call float @dx.op.dot3.f32(i32 55, float %7040, float %7041, float %7042, float %7040, float %7041, float %7042)  ; Dot3(ax,ay,az,bx,by,bz)
  %7044 = call float @dx.op.unary.f32(i32 25, float %7043)  ; Rsqrt(value)
  %7045 = fmul fast float %7044, %7040
  %7046 = fmul fast float %7044, %7041
  %7047 = fmul fast float %7044, %7042
  %7048 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %7049 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7045, float %7046, float %7047)  ; Dot3(ax,ay,az,bx,by,bz)
  %7050 = call float @dx.op.unary.f32(i32 7, float %7048)  ; Saturate(value)
  %7051 = fmul fast float %7050, %7050
  %7052 = fmul fast float %7051, %5728
  %7053 = call float @dx.op.unary.f32(i32 7, float %7052)  ; Saturate(value)
  %7054 = fmul fast float %7053, %7050
  %7055 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %7045, float %7046, float %7047)  ; Dot3(ax,ay,az,bx,by,bz)
  %7056 = fmul fast float %7055, %7055
  %7057 = call float @dx.op.unary.f32(i32 6, float %7048)  ; FAbs(value)
  %7058 = call float @dx.op.binary.f32(i32 35, float %6111, float 0x3F847AE140000000)  ; FMax(a,b)
  %7059 = fmul fast float %7058, %7058
  %7060 = fmul fast float %7059, %7059
  %7061 = fsub fast float 1.000000e+00, %7060
  %7062 = fmul fast float %5715, %5715
  %7063 = fmul fast float %7062, %7061
  %7064 = fadd fast float %7063, %7060
  %7065 = bitcast float %7064 to i32
  %7066 = ashr i32 %7065, 1
  %7067 = add nsw i32 %7066, 532487669
  %7068 = bitcast i32 %7067 to float
  %7069 = fadd fast float %7068, %5715
  %7070 = fmul fast float %7060, %7056
  %7071 = fsub fast float 1.000000e+00, %7056
  %7072 = fadd fast float %7071, %7070
  %7073 = fmul fast float %7057, %7057
  %7074 = fmul fast float %7073, %7061
  %7075 = fadd fast float %7074, %7060
  %7076 = bitcast float %7075 to i32
  %7077 = ashr i32 %7076, 1
  %7078 = add nsw i32 %7077, 532487669
  %7079 = bitcast i32 %7078 to float
  %7080 = fadd fast float %7079, %7057
  %7081 = fmul fast float %7072, %7072
  %7082 = fmul fast float %7081, %7069
  %7083 = fmul fast float %7082, %7080
  %7084 = fdiv fast float 0x3FF0A00000000000, %7083
  %7085 = fmul fast float %7084, %7060
  %7086 = fmul fast float %5973, 0x3FF9999980000000
  %7087 = fsub fast float 5.000000e+00, %7086
  %7088 = call float @dx.op.unary.f32(i32 6, float %7049)  ; FAbs(value)
  %7089 = fsub fast float 1.000000e+00, %7088
  %7090 = fmul fast float %5973, 0x41D9660740000000
  %7091 = fadd fast float %7090, 0xC1EFBF8940000000
  %7092 = bitcast float %7089 to i32
  %7093 = sitofp i32 %7092 to float
  %7094 = fmul fast float %7093, %7087
  %7095 = fadd fast float %7091, %7094
  %7096 = fptosi float %7095 to i32
  %7097 = bitcast i32 %7096 to float
  %7098 = fsub fast float 1.000000e+00, %5704
  %7099 = fsub fast float 1.000000e+00, %5705
  %7100 = fsub fast float 1.000000e+00, %5713
  %7101 = fmul fast float %7097, %7098
  %7102 = fmul fast float %7097, %7099
  %7103 = fmul fast float %7097, %7100
  %7104 = fadd fast float %7101, %5704
  %7105 = fadd fast float %7102, %5705
  %7106 = fadd fast float %7103, %5713
  br i1 %5996, label %7107, label %7130

; <label>:7107                                    ; preds = %7021
  %7108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7109 = extractvalue %dx.types.ResRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.ResRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.ResRet.f32 %7108, 2
  %7112 = fadd fast float %7109, -5.000000e-01
  %7113 = fadd fast float %7110, -5.000000e-01
  %7114 = fadd fast float %7111, -5.000000e-01
  %7115 = fmul fast float %5704, 4.000000e+00
  %7116 = fmul fast float %7115, %7098
  %7117 = fmul fast float %7116, %7112
  %7118 = fmul fast float %5705, 4.000000e+00
  %7119 = fmul fast float %7118, %7099
  %7120 = fmul fast float %7119, %7113
  %7121 = fmul fast float %5713, 4.000000e+00
  %7122 = fmul fast float %7121, %7100
  %7123 = fmul fast float %7122, %7114
  %7124 = fadd fast float %7117, %7104
  %7125 = fadd fast float %7120, %7105
  %7126 = fadd fast float %7123, %7106
  %7127 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7128 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  br label %7130

; <label>:7130                                    ; preds = %7107, %7021
  %7131 = phi float [ %7127, %7107 ], [ %7104, %7021 ]
  %7132 = phi float [ %7128, %7107 ], [ %7105, %7021 ]
  %7133 = phi float [ %7129, %7107 ], [ %7106, %7021 ]
  %7134 = fmul fast float %7048, 9.843750e-01
  %7135 = fadd fast float %7134, 7.812500e-03
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7135, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = extractvalue %dx.types.ResRet.f32 %7136, 3
  %7141 = fsub fast float %7139, %7137
  %7142 = fsub fast float %7140, %7138
  %7143 = fmul fast float %7141, %5983
  %7144 = fmul fast float %7142, %5983
  %7145 = fadd fast float %7143, %7137
  %7146 = fadd fast float %7144, %7138
  %7147 = fmul fast float %7145, %5704
  %7148 = fmul fast float %7145, %5705
  %7149 = fmul fast float %7145, %5713
  %7150 = fadd fast float %7147, %7146
  %7151 = fadd fast float %7148, %7146
  %7152 = fadd fast float %7149, %7146
  br i1 %5996, label %7153, label %7176

; <label>:7153                                    ; preds = %7130
  %7154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7155 = extractvalue %dx.types.ResRet.f32 %7154, 0
  %7156 = extractvalue %dx.types.ResRet.f32 %7154, 1
  %7157 = extractvalue %dx.types.ResRet.f32 %7154, 2
  %7158 = fadd fast float %7155, -5.000000e-01
  %7159 = fadd fast float %7156, -5.000000e-01
  %7160 = fadd fast float %7157, -5.000000e-01
  %7161 = fmul fast float %5704, 4.000000e+00
  %7162 = fmul fast float %7161, %7098
  %7163 = fmul fast float %7162, %7158
  %7164 = fmul fast float %5705, 4.000000e+00
  %7165 = fmul fast float %7164, %7099
  %7166 = fmul fast float %7165, %7159
  %7167 = fmul fast float %5713, 4.000000e+00
  %7168 = fmul fast float %7167, %7100
  %7169 = fmul fast float %7168, %7160
  %7170 = fadd fast float %7163, %7150
  %7171 = fadd fast float %7166, %7151
  %7172 = fadd fast float %7169, %7152
  %7173 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  br label %7176

; <label>:7176                                    ; preds = %7153, %7130
  %7177 = phi float [ %7173, %7153 ], [ %7150, %7130 ]
  %7178 = phi float [ %7174, %7153 ], [ %7151, %7130 ]
  %7179 = phi float [ %7175, %7153 ], [ %7152, %7130 ]
  %7180 = call float @dx.op.binary.f32(i32 35, float %7178, float %7179)  ; FMax(a,b)
  %7181 = call float @dx.op.binary.f32(i32 35, float %7177, float %7180)  ; FMax(a,b)
  %7182 = fsub fast float 1.000000e+00, %7181
  %7183 = call float @dx.op.binary.f32(i32 35, float %7057, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7184 = fdiv fast float %4424, %7183
  %7185 = fmul fast float %6051, %7184
  %7186 = fmul fast float %6053, %7184
  %7187 = fmul fast float %6055, %7184
  %7188 = call float @dx.op.unary.f32(i32 21, float %7185)  ; Exp(value)
  %7189 = call float @dx.op.unary.f32(i32 21, float %7186)  ; Exp(value)
  %7190 = call float @dx.op.unary.f32(i32 21, float %7187)  ; Exp(value)
  %7191 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7192 = call float @dx.op.unary.f32(i32 7, float %7189)  ; Saturate(value)
  %7193 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7194 = select i1 %6048, float %7191, float 0.000000e+00
  %7195 = select i1 %6049, float %7192, float 0.000000e+00
  %7196 = select i1 %6050, float %7193, float 0.000000e+00
  %7197 = fsub fast float -0.000000e+00, %5707
  %7198 = fsub fast float -0.000000e+00, %5708
  %7199 = fsub fast float -0.000000e+00, %5709
  %7200 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float %7197, float %7198, float %7199)  ; Dot3(ax,ay,az,bx,by,bz)
  %7201 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7202 = fmul fast float %7201, 9.843750e-01
  %7203 = fadd fast float %7202, 7.812500e-03
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7203, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = extractvalue %dx.types.ResRet.f32 %7204, 1
  %7207 = extractvalue %dx.types.ResRet.f32 %7204, 2
  %7208 = extractvalue %dx.types.ResRet.f32 %7204, 3
  %7209 = fsub fast float %7207, %7205
  %7210 = fsub fast float %7208, %7206
  %7211 = fmul fast float %7209, %5983
  %7212 = fmul fast float %7210, %5983
  %7213 = fadd fast float %7211, %7205
  %7214 = fadd fast float %7212, %7206
  %7215 = fmul fast float %7213, %5704
  %7216 = fmul fast float %7213, %5705
  %7217 = fmul fast float %7213, %5713
  %7218 = fadd fast float %7215, %7214
  %7219 = fadd fast float %7216, %7214
  %7220 = fadd fast float %7217, %7214
  br i1 %5996, label %7221, label %7244

; <label>:7221                                    ; preds = %7176
  %7222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = extractvalue %dx.types.ResRet.f32 %7222, 1
  %7225 = extractvalue %dx.types.ResRet.f32 %7222, 2
  %7226 = fadd fast float %7223, -5.000000e-01
  %7227 = fadd fast float %7224, -5.000000e-01
  %7228 = fadd fast float %7225, -5.000000e-01
  %7229 = fmul fast float %5704, 4.000000e+00
  %7230 = fmul fast float %7229, %7098
  %7231 = fmul fast float %7230, %7226
  %7232 = fmul fast float %5705, 4.000000e+00
  %7233 = fmul fast float %7232, %7099
  %7234 = fmul fast float %7233, %7227
  %7235 = fmul fast float %5713, 4.000000e+00
  %7236 = fmul fast float %7235, %7100
  %7237 = fmul fast float %7236, %7228
  %7238 = fadd fast float %7231, %7218
  %7239 = fadd fast float %7234, %7219
  %7240 = fadd fast float %7237, %7220
  %7241 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7242 = call float @dx.op.unary.f32(i32 7, float %7239)  ; Saturate(value)
  %7243 = call float @dx.op.unary.f32(i32 7, float %7240)  ; Saturate(value)
  br label %7244

; <label>:7244                                    ; preds = %7221, %7176
  %7245 = phi float [ %7241, %7221 ], [ %7218, %7176 ]
  %7246 = phi float [ %7242, %7221 ], [ %7219, %7176 ]
  %7247 = phi float [ %7243, %7221 ], [ %7220, %7176 ]
  %7248 = call float @dx.op.binary.f32(i32 35, float %7246, float %7247)  ; FMax(a,b)
  %7249 = call float @dx.op.binary.f32(i32 35, float %7245, float %7248)  ; FMax(a,b)
  %7250 = fsub fast float 1.000000e+00, %7249
  %7251 = fmul fast float %6111, %6116
  %7252 = fadd fast float %6118, %7251
  %7253 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7254 = fsub fast float %6143, %5721
  %7255 = fsub fast float %6144, %5722
  %7256 = fsub fast float %6145, %5723
  %7257 = call float @dx.op.dot3.f32(i32 55, float %7254, float %7255, float %7256, float %7254, float %7255, float %7256)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = call float @dx.op.unary.f32(i32 25, float %7257)  ; Rsqrt(value)
  %7259 = fmul fast float %7258, %7254
  %7260 = fmul fast float %7258, %7255
  %7261 = fmul fast float %7258, %7256
  %7262 = call float @dx.op.dot3.f32(i32 55, float %7197, float %7198, float %7199, float %7259, float %7260, float %7261)  ; Dot3(ax,ay,az,bx,by,bz)
  %7263 = fmul fast float %7262, %7262
  %7264 = call float @dx.op.unary.f32(i32 6, float %7201)  ; FAbs(value)
  %7265 = call float @dx.op.binary.f32(i32 35, float %7253, float 0x3F847AE140000000)  ; FMax(a,b)
  %7266 = fmul fast float %7265, %7265
  %7267 = fmul fast float %7266, %7266
  %7268 = fsub fast float 1.000000e+00, %7267
  %7269 = fmul fast float %7062, %7268
  %7270 = fadd fast float %7269, %7267
  %7271 = bitcast float %7270 to i32
  %7272 = ashr i32 %7271, 1
  %7273 = add nsw i32 %7272, 532487669
  %7274 = bitcast i32 %7273 to float
  %7275 = fadd fast float %7274, %5715
  %7276 = fmul fast float %7267, %7263
  %7277 = fsub fast float 1.000000e+00, %7263
  %7278 = fadd fast float %7277, %7276
  %7279 = fmul fast float %7264, %7264
  %7280 = fmul fast float %7279, %7268
  %7281 = fadd fast float %7280, %7267
  %7282 = bitcast float %7281 to i32
  %7283 = ashr i32 %7282, 1
  %7284 = add nsw i32 %7283, 532487669
  %7285 = bitcast i32 %7284 to float
  %7286 = fadd fast float %7285, %7264
  %7287 = fmul fast float %7278, %7278
  %7288 = fmul fast float %7287, %7275
  %7289 = fmul fast float %7288, %7286
  %7290 = fdiv fast float 0x3FF0A00000000000, %7289
  %7291 = fmul fast float %7290, %7267
  %7292 = fmul fast float %7201, %7194
  %7293 = fmul fast float %7201, %7195
  %7294 = fmul fast float %7201, %7196
  %7295 = fmul fast float %7292, %7250
  %7296 = fmul fast float %7295, %7291
  %7297 = fmul fast float %7293, %7250
  %7298 = fmul fast float %7297, %7291
  %7299 = fmul fast float %7294, %7250
  %7300 = fmul fast float %7299, %7291
  %7301 = fmul fast float %7131, %7085
  %7302 = fmul fast float %7132, %7085
  %7303 = fmul fast float %7133, %7085
  %7304 = fsub fast float 1.000000e+00, %7049
  %7305 = bitcast float %7304 to i32
  %7306 = sitofp i32 %7305 to float
  %7307 = fmul fast float %7306, 5.000000e+00
  %7308 = fadd fast float %7307, 0xC1EFBF8940000000
  %7309 = fptosi float %7308 to i32
  %7310 = bitcast i32 %7309 to float
  %7311 = fmul fast float %7310, %5071
  %7312 = fmul fast float %7182, %7311
  %7313 = fmul fast float %7312, %6043
  %7314 = fmul fast float %7312, %6044
  %7315 = fmul fast float %7312, %6045
  %7316 = fadd fast float %7313, %7301
  %7317 = fadd fast float %7314, %7302
  %7318 = fadd fast float %7315, %7303
  %7319 = fmul fast float %7316, %7054
  %7320 = fmul fast float %7317, %7054
  %7321 = fmul fast float %7318, %7054
  %7322 = fmul fast float %7054, %7037
  %7323 = fmul fast float %7322, %7182
  %7324 = fmul fast float %7054, %7038
  %7325 = fmul fast float %7324, %7182
  %7326 = fmul fast float %7054, %7039
  %7327 = fmul fast float %7326, %7182
  %7328 = fadd fast float %7319, %7296
  %7329 = fadd fast float %7320, %7298
  %7330 = fadd fast float %7321, %7300
  %7331 = fmul fast float %7328, %7037
  %7332 = fmul fast float %7329, %7038
  %7333 = fmul fast float %7330, %7039
  %7334 = fadd fast float %7323, %6133
  %7335 = fmul fast float %7334, %5067
  %7336 = fadd fast float %7325, %6135
  %7337 = fmul fast float %7336, %5067
  %7338 = fadd fast float %7327, %6137
  %7339 = fmul fast float %7338, %5067
  %7340 = fadd fast float %7331, %6096
  %7341 = fmul fast float %7340, %5067
  %7342 = fadd fast float %7332, %6099
  %7343 = fmul fast float %7342, %5067
  %7344 = fadd fast float %7333, %6102
  %7345 = fmul fast float %7344, %5067
  br label %7346

; <label>:7346                                    ; preds = %7244, %6955, %6023
  %7347 = phi float [ %6097, %6023 ], [ %6097, %6955 ], [ %7341, %7244 ]
  %7348 = phi float [ %6100, %6023 ], [ %6100, %6955 ], [ %7343, %7244 ]
  %7349 = phi float [ %6103, %6023 ], [ %6103, %6955 ], [ %7345, %7244 ]
  %7350 = phi float [ %6134, %6023 ], [ %6134, %6955 ], [ %7335, %7244 ]
  %7351 = phi float [ %6136, %6023 ], [ %6136, %6955 ], [ %7337, %7244 ]
  %7352 = phi float [ %6138, %6023 ], [ %6138, %6955 ], [ %7339, %7244 ]
  %7353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.i32 %7353, 0
  %7355 = icmp eq i32 %7354, 0
  br i1 %7355, label %8130, label %7356

; <label>:7356                                    ; preds = %7346
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7359 = extractvalue %dx.types.CBufRet.f32 %7357, 3
  %7360 = fmul fast float %7358, %102
  %7361 = fmul fast float %7359, %103
  %7362 = fptoui float %7360 to i32
  %7363 = fptoui float %7361 to i32
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7366 = extractvalue %dx.types.CBufRet.f32 %7364, 2
  %7367 = extractvalue %dx.types.CBufRet.f32 %7364, 3
  %7368 = fadd fast float %93, -4.000000e+00
  %7369 = call float @dx.op.binary.f32(i32 35, float %7368, float 0.000000e+00)  ; FMax(a,b)
  %7370 = fadd fast float %7369, %7365
  %7371 = fmul fast float %7370, %7366
  %7372 = call float @dx.op.unary.f32(i32 23, float %7371)  ; Log(value)
  %7373 = fmul fast float %7372, %7367
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 2
  %7376 = fmul fast float %7373, %7375
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.i32 %7378, 1
  %7380 = add i32 %7379, -1
  %7381 = uitofp i32 %7379 to float
  %7382 = fmul fast float %7381, %7377
  %7383 = fptoui float %7382 to i32
  %7384 = call i32 @dx.op.binary.i32(i32 40, i32 %7383, i32 %7380)  ; UMin(a,b)
  %7385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.i32 %7385, 2
  %7387 = extractvalue %dx.types.CBufRet.i32 %7385, 3
  %7388 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7363, i32 %7386, i32 %7362)  ; UMad(a,b,c)
  %7389 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7384, i32 %7387, i32 %7388)  ; UMad(a,b,c)
  %7390 = add nsw i32 %7354, -1
  %7391 = call i32 @dx.op.binary.i32(i32 37, i32 %7390, i32 0)  ; IMax(a,b)
  %7392 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7393 = fptoui float %7392 to i32
  %7394 = lshr i32 %7393, 5
  %7395 = call i32 @dx.op.binary.i32(i32 40, i32 %7394, i32 8191)  ; UMin(a,b)
  %7396 = shl i32 %7395, 2
  %7397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7396, i32 undef)  ; BufferLoad(srv,index,wot)
  %7398 = extractvalue %dx.types.ResRet.i32 %7397, 0
  %7399 = lshr i32 %7398, 16
  %7400 = and i32 %7398, 65535
  %7401 = lshr i32 %7398, 21
  %7402 = lshr i32 %7400, 5
  %7403 = call i32 @dx.op.binary.i32(i32 40, i32 %7402, i32 %7391)  ; UMin(a,b)
  %7404 = icmp ugt i32 %7401, %7403
  br i1 %7404, label %8130, label %7405

; <label>:7405                                    ; preds = %7356
  br label %7406

; <label>:7406                                    ; preds = %8120, %7405
  %7407 = phi i32 [ %8127, %8120 ], [ %7401, %7405 ]
  %7408 = phi float [ %8121, %8120 ], [ %7347, %7405 ]
  %7409 = phi float [ %8122, %8120 ], [ %7348, %7405 ]
  %7410 = phi float [ %8123, %8120 ], [ %7349, %7405 ]
  %7411 = phi float [ %8124, %8120 ], [ %7350, %7405 ]
  %7412 = phi float [ %8125, %8120 ], [ %7351, %7405 ]
  %7413 = phi float [ %8126, %8120 ], [ %7352, %7405 ]
  %7414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.i32 %7414, 0
  %7416 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7389, i32 %7415, i32 %7407)  ; UMad(a,b,c)
  %7417 = shl i32 %7416, 2
  %7418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7417, i32 undef)  ; BufferLoad(srv,index,wot)
  %7419 = extractvalue %dx.types.ResRet.i32 %7418, 0
  %7420 = shl i32 %7407, 5
  %7421 = sub nsw i32 %7399, %7420
  %7422 = call i32 @dx.op.binary.i32(i32 37, i32 %7421, i32 0)  ; IMax(a,b)
  %7423 = call i32 @dx.op.binary.i32(i32 38, i32 %7422, i32 31)  ; IMin(a,b)
  %7424 = sub nsw i32 1, %7399
  %7425 = add nsw i32 %7424, %7400
  %7426 = call i32 @dx.op.binary.i32(i32 37, i32 %7425, i32 0)  ; IMax(a,b)
  %7427 = call i32 @dx.op.binary.i32(i32 38, i32 %7426, i32 32)  ; IMin(a,b)
  %7428 = and i32 %7427, 31
  %7429 = shl i32 -1, %7428
  %7430 = xor i32 %7429, -1
  %7431 = and i32 %7423, 31
  %7432 = shl i32 %7430, %7431
  %7433 = icmp eq i32 %7427, 32
  %7434 = select i1 %7433, i32 -1, i32 %7432
  %7435 = and i32 %7434, %7419
  %7436 = icmp eq i32 %7435, 0
  br i1 %7436, label %8120, label %7437

; <label>:7437                                    ; preds = %7406
  br label %7438

; <label>:7438                                    ; preds = %7573, %7437
  %7439 = phi i32 [ %7450, %7573 ], [ %7435, %7437 ]
  %7440 = phi float [ %7574, %7573 ], [ %7408, %7437 ]
  %7441 = phi float [ %7575, %7573 ], [ %7409, %7437 ]
  %7442 = phi float [ %7576, %7573 ], [ %7410, %7437 ]
  %7443 = phi float [ %7577, %7573 ], [ %7411, %7437 ]
  %7444 = phi float [ %7578, %7573 ], [ %7412, %7437 ]
  %7445 = phi float [ %7579, %7573 ], [ %7413, %7437 ]
  %7446 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7439)  ; FirstbitLo(value)
  %7447 = add i32 %7446, %7420
  %7448 = and i32 %7446, 31
  %7449 = shl i32 1, %7448
  %7450 = xor i32 %7449, %7439
  %7451 = mul i32 %7447, 112
  %7452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7451, i32 undef)  ; BufferLoad(srv,index,wot)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.ResRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.ResRet.f32 %7452, 2
  %7456 = or i32 %7451, 12
  %7457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7456, i32 undef)  ; BufferLoad(srv,index,wot)
  %7458 = extractvalue %dx.types.ResRet.f32 %7457, 0
  %7459 = add i32 %7451, 16
  %7460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7459, i32 undef)  ; BufferLoad(srv,index,wot)
  %7461 = extractvalue %dx.types.ResRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.ResRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.ResRet.f32 %7460, 2
  %7464 = add i32 %7451, 28
  %7465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.i32 %7465, 0
  %7467 = add i32 %7451, 44
  %7468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7467, i32 undef)  ; BufferLoad(srv,index,wot)
  %7469 = extractvalue %dx.types.ResRet.f32 %7468, 0
  %7470 = add i32 %7451, 48
  %7471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.ResRet.f32 %7471, 3
  %7476 = add i32 %7451, 64
  %7477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7476, i32 undef)  ; BufferLoad(srv,index,wot)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = extractvalue %dx.types.ResRet.f32 %7477, 1
  %7480 = extractvalue %dx.types.ResRet.f32 %7477, 2
  %7481 = extractvalue %dx.types.ResRet.f32 %7477, 3
  %7482 = add i32 %7451, 80
  %7483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7482, i32 undef)  ; BufferLoad(srv,index,wot)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 1
  %7485 = extractvalue %dx.types.ResRet.f32 %7483, 2
  %7486 = add i32 %7451, 92
  %7487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7486, i32 undef)  ; BufferLoad(srv,index,wot)
  %7488 = extractvalue %dx.types.ResRet.i32 %7487, 0
  %7489 = call float @dx.op.dot3.f32(i32 55, float %7453, float %7454, float %7455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7490 = select i1 %223, float %7484, float %7453
  %7491 = select i1 %223, float %7489, float %7454
  %7492 = select i1 %223, float %7485, float %7455
  %7493 = and i32 %7488, 65535
  %7494 = uitofp i32 %7493 to float
  %7495 = lshr i32 %7488, 16
  %7496 = uitofp i32 %7495 to float
  %7497 = and i32 %7466, 65535
  %7498 = and i32 %7466, 50331648
  %7499 = icmp slt i32 %7466, 0
  %7500 = icmp eq i32 %7498, 33554432
  %7501 = fsub fast float %7472, %161
  %7502 = fsub fast float %7473, %162
  %7503 = fsub fast float %7474, %163
  %7504 = call float @dx.op.dot3.f32(i32 55, float %7501, float %7502, float %7503, float %7501, float %7502, float %7503)  ; Dot3(ax,ay,az,bx,by,bz)
  %7505 = call float @dx.op.unary.f32(i32 24, float %7504)  ; Sqrt(value)
  %7506 = fdiv fast float 1.000000e+00, %7505
  %7507 = fmul fast float %7506, %7501
  %7508 = fmul fast float %7506, %7502
  %7509 = fmul fast float %7506, %7503
  %7510 = fadd fast float %7505, %7458
  %7511 = fdiv fast float 1.000000e+00, %7510
  %7512 = fmul float %7469, %7511
  %7513 = fmul float %7512, %7512
  %7514 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  br i1 %7500, label %7515, label %7536

; <label>:7515                                    ; preds = %7438
  %7516 = fmul fast float %7480, %7461
  %7517 = fmul fast float %7480, %7462
  %7518 = fmul fast float %7480, %7463
  %7519 = fadd fast float %7501, %7516
  %7520 = fadd fast float %7502, %7517
  %7521 = fadd fast float %7503, %7518
  %7522 = call float @dx.op.dot3.f32(i32 55, float %7519, float %7520, float %7521, float %7519, float %7520, float %7521)  ; Dot3(ax,ay,az,bx,by,bz)
  %7523 = call float @dx.op.unary.f32(i32 25, float %7522)  ; Rsqrt(value)
  %7524 = fmul fast float %7523, %7519
  %7525 = fmul fast float %7523, %7520
  %7526 = fmul fast float %7523, %7521
  %7527 = fsub fast float %161, %7472
  %7528 = fsub fast float %162, %7473
  %7529 = fsub fast float %163, %7474
  %7530 = fsub fast float -0.000000e+00, %7527
  %7531 = fsub fast float -0.000000e+00, %7528
  %7532 = fsub fast float -0.000000e+00, %7529
  %7533 = call float @dx.op.dot3.f32(i32 55, float %7530, float %7531, float %7532, float %7461, float %7462, float %7463)  ; Dot3(ax,ay,az,bx,by,bz)
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  %7535 = uitofp i1 %7534 to float
  br label %7536

; <label>:7536                                    ; preds = %7515, %7438
  %7537 = phi float [ %7535, %7515 ], [ 1.000000e+00, %7438 ]
  %7538 = phi float [ %7524, %7515 ], [ %7507, %7438 ]
  %7539 = phi float [ %7525, %7515 ], [ %7508, %7438 ]
  %7540 = phi float [ %7526, %7515 ], [ %7509, %7438 ]
  %7541 = call float @dx.op.dot3.f32(i32 55, float %7461, float %7462, float %7463, float %7538, float %7539, float %7540)  ; Dot3(ax,ay,az,bx,by,bz)
  %7542 = fmul fast float %7541, %7541
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fsub fast float 1.000000e+00, %7543
  %7545 = fmul fast float %7544, 5.000000e-01
  %7546 = fcmp fast ogt float %7541, 0.000000e+00
  %7547 = fsub fast float 1.000000e+00, %7545
  %7548 = select i1 %7546, float %7545, float %7547
  %7549 = fmul fast float %7548, %7496
  %7550 = fadd fast float %7549, %7494
  %7551 = fmul fast float %7550, 0x3EF0001000000000
  %7552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7551, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 0
  %7554 = fmul fast float %7541, %7478
  %7555 = fadd fast float %7554, %7479
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = select i1 %7500, float 1.000000e+00, float %7556
  %7558 = select i1 %7500, float %7556, float 1.000000e+00
  %7559 = fmul fast float %7505, %7475
  %7560 = fsub fast float 1.000000e+00, %7559
  %7561 = fmul fast float %7560, %7481
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = fmul fast float %7562, %7558
  %7564 = fmul fast float %7563, 2.000000e+00
  %7565 = fsub fast float 3.000000e+00, %7564
  %7566 = fmul fast float %7553, %7537
  %7567 = fmul fast float %7563, %7563
  %7568 = fmul fast float %7567, %7566
  %7569 = fmul fast float %7568, %7565
  %7570 = call float @dx.op.binary.f32(i32 36, float %7569, float %7569)  ; FMin(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7569, float %7570)  ; FMin(a,b)
  %7572 = fcmp fast ogt float %7571, 0.000000e+00
  br i1 %7572, label %7581, label %7573, !dx.controlflow.hints !119

; <label>:7573                                    ; preds = %8073, %7681, %7536
  %7574 = phi float [ %7440, %7681 ], [ %7440, %7536 ], [ %8116, %8073 ]
  %7575 = phi float [ %7441, %7681 ], [ %7441, %7536 ], [ %8117, %8073 ]
  %7576 = phi float [ %7442, %7681 ], [ %7442, %7536 ], [ %8118, %8073 ]
  %7577 = phi float [ %7443, %7681 ], [ %7443, %7536 ], [ %8110, %8073 ]
  %7578 = phi float [ %7444, %7681 ], [ %7444, %7536 ], [ %8111, %8073 ]
  %7579 = phi float [ %7445, %7681 ], [ %7445, %7536 ], [ %8112, %8073 ]
  %7580 = icmp eq i32 %7439, %7449
  br i1 %7580, label %8119, label %7438

; <label>:7581                                    ; preds = %7536
  %7582 = icmp eq i32 %7497, 255
  br i1 %7582, label %7681, label %7583, !dx.controlflow.hints !120

; <label>:7583                                    ; preds = %7581
  %7584 = mul nuw nsw i32 %7497, 176
  %7585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7584, i32 undef)  ; BufferLoad(srv,index,wot)
  %7586 = extractvalue %dx.types.ResRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.ResRet.f32 %7585, 1
  %7588 = extractvalue %dx.types.ResRet.f32 %7585, 2
  %7589 = extractvalue %dx.types.ResRet.f32 %7585, 3
  %7590 = add nuw nsw i32 %7584, 16
  %7591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7590, i32 undef)  ; BufferLoad(srv,index,wot)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.ResRet.f32 %7591, 1
  %7594 = add nuw nsw i32 %7584, 32
  %7595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7594, i32 undef)  ; BufferLoad(srv,index,wot)
  %7596 = extractvalue %dx.types.ResRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.ResRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.ResRet.f32 %7595, 2
  %7599 = add nuw nsw i32 %7584, 48
  %7600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7599, i32 undef)  ; BufferLoad(srv,index,wot)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 0
  %7602 = extractvalue %dx.types.ResRet.f32 %7600, 1
  %7603 = extractvalue %dx.types.ResRet.f32 %7600, 2
  %7604 = extractvalue %dx.types.ResRet.f32 %7600, 3
  %7605 = add nuw nsw i32 %7584, 64
  %7606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7605, i32 undef)  ; BufferLoad(srv,index,wot)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.ResRet.f32 %7606, 2
  %7610 = extractvalue %dx.types.ResRet.f32 %7606, 3
  %7611 = add nuw nsw i32 %7584, 80
  %7612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7611, i32 undef)  ; BufferLoad(srv,index,wot)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.ResRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.ResRet.f32 %7612, 2
  %7616 = extractvalue %dx.types.ResRet.f32 %7612, 3
  %7617 = add nuw nsw i32 %7584, 96
  %7618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7617, i32 undef)  ; BufferLoad(srv,index,wot)
  %7619 = extractvalue %dx.types.ResRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.ResRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.ResRet.f32 %7618, 2
  %7622 = extractvalue %dx.types.ResRet.f32 %7618, 3
  %7623 = bitcast float %7593 to i32
  %7624 = fmul fast float %7598, %111
  %7625 = fmul fast float %7598, %113
  %7626 = fmul fast float %7598, %115
  %7627 = fadd fast float %7624, %161
  %7628 = fadd fast float %7625, %162
  %7629 = fadd fast float %7626, %163
  %7630 = fmul fast float %7627, %7601
  %7631 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7607, float %7630)  ; FMad(a,b,c)
  %7632 = call float @dx.op.tertiary.f32(i32 46, float %7629, float %7613, float %7631)  ; FMad(a,b,c)
  %7633 = fadd fast float %7632, %7619
  %7634 = fmul fast float %7627, %7602
  %7635 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7608, float %7634)  ; FMad(a,b,c)
  %7636 = call float @dx.op.tertiary.f32(i32 46, float %7629, float %7614, float %7635)  ; FMad(a,b,c)
  %7637 = fadd fast float %7636, %7620
  %7638 = fmul fast float %7627, %7603
  %7639 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7609, float %7638)  ; FMad(a,b,c)
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %7629, float %7615, float %7639)  ; FMad(a,b,c)
  %7641 = fadd fast float %7640, %7621
  %7642 = fmul fast float %7627, %7604
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7610, float %7642)  ; FMad(a,b,c)
  %7644 = call float @dx.op.tertiary.f32(i32 46, float %7629, float %7616, float %7643)  ; FMad(a,b,c)
  %7645 = fadd fast float %7644, %7622
  %7646 = fdiv fast float %7633, %7645
  %7647 = fdiv fast float %7637, %7645
  %7648 = fdiv fast float %7641, %7645
  %7649 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7648)  ; FMax(a,b)
  %7650 = fmul fast float %234, 0x401921FB60000000
  %7651 = call float @dx.op.unary.f32(i32 13, float %7650)  ; Sin(value)
  %7652 = call float @dx.op.unary.f32(i32 12, float %7650)  ; Cos(value)
  %7653 = fsub fast float -0.000000e+00, %7651
  %7654 = fmul fast float %7588, 5.000000e-01
  %7655 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7656 = call float @dx.op.unary.f32(i32 22, float %7655)  ; Frc(value)
  %7657 = fmul fast float %7656, 0x404A7DD040000000
  %7658 = call float @dx.op.unary.f32(i32 22, float %7657)  ; Frc(value)
  %7659 = fmul fast float %7658, %7597
  %7660 = fadd fast float %7659, %7654
  %7661 = call float @dx.op.tertiary.f32(i32 46, float %7660, float %7653, float 0.000000e+00)  ; FMad(a,b,c)
  %7662 = call float @dx.op.tertiary.f32(i32 46, float %7660, float %7652, float 0.000000e+00)  ; FMad(a,b,c)
  %7663 = fadd fast float %7661, %7646
  %7664 = fadd fast float %7662, %7647
  %7665 = fmul fast float %7663, %7592
  %7666 = fmul fast float %7664, %7592
  %7667 = call float @dx.op.binary.f32(i32 35, float %7665, float %7588)  ; FMax(a,b)
  %7668 = call float @dx.op.binary.f32(i32 35, float %7666, float %7588)  ; FMax(a,b)
  %7669 = call float @dx.op.binary.f32(i32 36, float %7667, float %7589)  ; FMin(a,b)
  %7670 = call float @dx.op.binary.f32(i32 36, float %7668, float %7589)  ; FMin(a,b)
  %7671 = fadd fast float %7669, %7586
  %7672 = fadd fast float %7670, %7587
  %7673 = uitofp i32 %7623 to float
  %7674 = fadd fast float %7649, %7596
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7671, float %7672, float %7673, float undef, i32 0, i32 0, i32 undef, float %7674)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = fadd fast float %7676, -1.000000e+00
  %7678 = fmul fast float %7677, %7557
  %7679 = fadd fast float %7678, 1.000000e+00
  %7680 = fmul fast float %7679, %7569
  br label %7681

; <label>:7681                                    ; preds = %7583, %7581
  %7682 = phi float [ %7680, %7583 ], [ %7569, %7581 ]
  %7683 = call float @dx.op.binary.f32(i32 36, float %7682, float %7682)  ; FMin(a,b)
  %7684 = call float @dx.op.binary.f32(i32 36, float %7682, float %7683)  ; FMin(a,b)
  %7685 = fcmp fast ogt float %7684, 0.000000e+00
  br i1 %7685, label %7686, label %7573, !dx.controlflow.hints !121

; <label>:7686                                    ; preds = %7681
  %7687 = fmul fast float %7682, %7490
  %7688 = fmul fast float %7682, %7491
  %7689 = fmul fast float %7682, %7492
  %7690 = fsub fast float %7474, %5500
  %7691 = fcmp fast ogt float %7690, 0.000000e+00
  %7692 = fsub fast float %163, %5500
  %7693 = fcmp fast ogt float %7692, 0.000000e+00
  %7694 = xor i1 %7693, %7691
  %7695 = fsub fast float %5500, %7474
  %7696 = fmul fast float %7695, 2.000000e+00
  %7697 = fadd fast float %7696, %7474
  %7698 = select i1 %7694, float %7474, float %7697
  %7699 = fsub fast float %7698, %163
  %7700 = call float @dx.op.dot3.f32(i32 55, float %7501, float %7502, float %7699, float %7501, float %7502, float %7699)  ; Dot3(ax,ay,az,bx,by,bz)
  %7701 = call float @dx.op.unary.f32(i32 25, float %7700)  ; Rsqrt(value)
  %7702 = fmul fast float %7701, %7501
  %7703 = fmul fast float %7701, %7502
  %7704 = fmul fast float %7701, %7699
  %7705 = fsub fast float %5500, %163
  %7706 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7705)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7702, float %7703, float %7704)  ; Dot3(ax,ay,az,bx,by,bz)
  %7708 = fdiv fast float 1.000000e+00, %7707
  %7709 = fmul fast float %7708, %7706
  %7710 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7692, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7711 = fcmp fast ogt float %7710, 0.000000e+00
  %7712 = fcmp fast olt float %7710, 0.000000e+00
  %7713 = zext i1 %7711 to i32
  %7714 = zext i1 %7712 to i32
  %7715 = sub nsw i32 %7713, %7714
  %7716 = sitofp i32 %7715 to float
  %7717 = fsub fast float %7698, %5500
  %7718 = call float @dx.op.dot3.f32(i32 55, float %7501, float %7502, float %7717, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7719 = fcmp fast ogt float %7718, 0.000000e+00
  %7720 = fcmp fast olt float %7718, 0.000000e+00
  %7721 = zext i1 %7719 to i32
  %7722 = zext i1 %7720 to i32
  %7723 = sub nsw i32 %7721, %7722
  %7724 = sitofp i32 %7723 to float
  %7725 = fcmp fast une float %7716, %7724
  br i1 %7725, label %7726, label %7736

; <label>:7726                                    ; preds = %7686
  %7727 = fmul fast float %7709, %7704
  %7728 = fmul fast float %7709, %7703
  %7729 = fmul fast float %7709, %7702
  %7730 = fmul fast float %7729, %7729
  %7731 = fmul fast float %7728, %7728
  %7732 = fadd fast float %7730, %7731
  %7733 = fmul fast float %7727, %7727
  %7734 = fadd fast float %7732, %7733
  %7735 = call float @dx.op.unary.f32(i32 24, float %7734)  ; Sqrt(value)
  br label %7748

; <label>:7736                                    ; preds = %7686
  %7737 = icmp slt i32 %7715, 0
  br i1 %7737, label %7738, label %7748

; <label>:7738                                    ; preds = %7736
  %7739 = fsub fast float %161, %7472
  %7740 = fsub fast float %162, %7473
  %7741 = fsub fast float %163, %7698
  %7742 = fmul fast float %7739, %7739
  %7743 = fmul fast float %7740, %7740
  %7744 = fadd fast float %7742, %7743
  %7745 = fmul fast float %7741, %7741
  %7746 = fadd fast float %7744, %7745
  %7747 = call float @dx.op.unary.f32(i32 24, float %7746)  ; Sqrt(value)
  br label %7748

; <label>:7748                                    ; preds = %7738, %7736, %7726
  %7749 = phi float [ %7735, %7726 ], [ %7747, %7738 ], [ 0.000000e+00, %7736 ]
  %7750 = and i1 %7693, %7691
  %7751 = fsub fast float -0.000000e+00, %7749
  %7752 = select i1 %7750, float -0.000000e+00, float %7751
  %7753 = fmul fast float %5501, 0x3FF7154760000000
  %7754 = fmul fast float %7753, %7752
  %7755 = fmul fast float %5502, 0x3FF7154760000000
  %7756 = fmul fast float %7755, %7752
  %7757 = fmul fast float %5503, 0x3FF7154760000000
  %7758 = fmul fast float %7757, %7752
  %7759 = call float @dx.op.unary.f32(i32 21, float %7754)  ; Exp(value)
  %7760 = call float @dx.op.unary.f32(i32 21, float %7756)  ; Exp(value)
  %7761 = call float @dx.op.unary.f32(i32 21, float %7758)  ; Exp(value)
  %7762 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7764 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7765 = fmul fast float %7687, %7762
  %7766 = fmul fast float %7688, %7763
  %7767 = fmul fast float %7689, %7764
  %7768 = fsub fast float %7507, %5700
  %7769 = fsub fast float %7508, %5699
  %7770 = fsub fast float %7509, %5698
  %7771 = call float @dx.op.dot3.f32(i32 55, float %7768, float %7769, float %7770, float %7768, float %7769, float %7770)  ; Dot3(ax,ay,az,bx,by,bz)
  %7772 = call float @dx.op.unary.f32(i32 25, float %7771)  ; Rsqrt(value)
  %7773 = fmul fast float %7772, %7768
  %7774 = fmul fast float %7772, %7769
  %7775 = fmul fast float %7772, %7770
  %7776 = call float @dx.op.dot3.f32(i32 55, float %7507, float %7508, float %7509, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %7777 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7773, float %7774, float %7775)  ; Dot3(ax,ay,az,bx,by,bz)
  %7778 = call float @dx.op.unary.f32(i32 7, float %7776)  ; Saturate(value)
  %7779 = fmul fast float %7778, %7514
  %7780 = fmul fast float %7778, %7778
  %7781 = fmul fast float %7780, %5728
  %7782 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7783 = fmul fast float %7779, %7782
  %7784 = bitcast float %7504 to i32
  %7785 = ashr i32 %7784, 1
  %7786 = sub nsw i32 1597463007, %7785
  %7787 = bitcast i32 %7786 to float
  %7788 = fmul fast float %7787, %7501
  %7789 = fmul fast float %7787, %7502
  %7790 = fmul fast float %7787, %7503
  %7791 = fsub fast float %7788, %5700
  %7792 = fsub fast float %7789, %5699
  %7793 = fsub fast float %7790, %5698
  %7794 = call float @dx.op.dot3.f32(i32 55, float %7791, float %7792, float %7793, float %7791, float %7792, float %7793)  ; Dot3(ax,ay,az,bx,by,bz)
  %7795 = call float @dx.op.unary.f32(i32 25, float %7794)  ; Rsqrt(value)
  %7796 = fmul fast float %7791, %7795
  %7797 = fmul fast float %7792, %7795
  %7798 = fmul fast float %7793, %7795
  %7799 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %7796, float %7797, float %7798)  ; Dot3(ax,ay,az,bx,by,bz)
  %7800 = fmul fast float %7799, %7799
  %7801 = call float @dx.op.unary.f32(i32 6, float %7776)  ; FAbs(value)
  %7802 = call float @dx.op.binary.f32(i32 35, float %6111, float 0x3F847AE140000000)  ; FMax(a,b)
  %7803 = fmul fast float %7802, %7802
  %7804 = fmul fast float %7803, %7803
  %7805 = fsub fast float 1.000000e+00, %7804
  %7806 = fmul fast float %5715, %5715
  %7807 = fmul fast float %7806, %7805
  %7808 = fadd fast float %7807, %7804
  %7809 = bitcast float %7808 to i32
  %7810 = ashr i32 %7809, 1
  %7811 = add nsw i32 %7810, 532487669
  %7812 = bitcast i32 %7811 to float
  %7813 = fadd fast float %7812, %5715
  %7814 = fmul fast float %7804, %7800
  %7815 = fsub fast float 1.000000e+00, %7800
  %7816 = fadd fast float %7815, %7814
  %7817 = fmul fast float %7801, %7801
  %7818 = fmul fast float %7817, %7805
  %7819 = fadd fast float %7818, %7804
  %7820 = bitcast float %7819 to i32
  %7821 = ashr i32 %7820, 1
  %7822 = add nsw i32 %7821, 532487669
  %7823 = bitcast i32 %7822 to float
  %7824 = fadd fast float %7823, %7801
  %7825 = fmul fast float %7816, %7816
  %7826 = fmul fast float %7825, %7813
  %7827 = fmul fast float %7826, %7824
  %7828 = fdiv fast float 1.000000e+00, %7827
  %7829 = bitcast float %7804 to i32
  %7830 = sitofp i32 %7829 to float
  %7831 = fmul fast float %7830, 0x3FE7F73180000000
  %7832 = fadd fast float %7831, 0x41AFE27C40000000
  %7833 = fptosi float %7832 to i32
  %7834 = bitcast i32 %7833 to float
  %7835 = fmul fast float %7469, 0x3FD80E9D60000000
  %7836 = fmul fast float %7835, %7787
  %7837 = fadd fast float %7834, %7836
  %7838 = bitcast float %7837 to i32
  %7839 = sub nsw i32 2129859010, %7838
  %7840 = bitcast i32 %7839 to float
  %7841 = fmul fast float %7804, %7828
  %7842 = fmul fast float %7841, %7834
  %7843 = fmul fast float %7842, %7840
  %7844 = fmul fast float %5973, 0x3FF9999980000000
  %7845 = fsub fast float 5.000000e+00, %7844
  %7846 = call float @dx.op.unary.f32(i32 6, float %7777)  ; FAbs(value)
  %7847 = fsub fast float 1.000000e+00, %7846
  %7848 = fmul fast float %5973, 0x41D9660740000000
  %7849 = fadd fast float %7848, 0xC1EFBF8940000000
  %7850 = bitcast float %7847 to i32
  %7851 = sitofp i32 %7850 to float
  %7852 = fmul fast float %7851, %7845
  %7853 = fadd fast float %7849, %7852
  %7854 = fptosi float %7853 to i32
  %7855 = bitcast i32 %7854 to float
  %7856 = fsub fast float 1.000000e+00, %5704
  %7857 = fsub fast float 1.000000e+00, %5705
  %7858 = fsub fast float 1.000000e+00, %5713
  %7859 = fmul fast float %7855, %7856
  %7860 = fmul fast float %7855, %7857
  %7861 = fmul fast float %7855, %7858
  %7862 = fadd fast float %7859, %5704
  %7863 = fadd fast float %7860, %5705
  %7864 = fadd fast float %7861, %5713
  br i1 %5996, label %7865, label %7888

; <label>:7865                                    ; preds = %7748
  %7866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7867 = extractvalue %dx.types.ResRet.f32 %7866, 0
  %7868 = extractvalue %dx.types.ResRet.f32 %7866, 1
  %7869 = extractvalue %dx.types.ResRet.f32 %7866, 2
  %7870 = fadd fast float %7867, -5.000000e-01
  %7871 = fadd fast float %7868, -5.000000e-01
  %7872 = fadd fast float %7869, -5.000000e-01
  %7873 = fmul fast float %5704, 4.000000e+00
  %7874 = fmul fast float %7873, %7856
  %7875 = fmul fast float %7874, %7870
  %7876 = fmul fast float %5705, 4.000000e+00
  %7877 = fmul fast float %7876, %7857
  %7878 = fmul fast float %7877, %7871
  %7879 = fmul fast float %5713, 4.000000e+00
  %7880 = fmul fast float %7879, %7858
  %7881 = fmul fast float %7880, %7872
  %7882 = fadd fast float %7875, %7862
  %7883 = fadd fast float %7878, %7863
  %7884 = fadd fast float %7881, %7864
  %7885 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7886 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7887 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  br label %7888

; <label>:7888                                    ; preds = %7865, %7748
  %7889 = phi float [ %7885, %7865 ], [ %7862, %7748 ]
  %7890 = phi float [ %7886, %7865 ], [ %7863, %7748 ]
  %7891 = phi float [ %7887, %7865 ], [ %7864, %7748 ]
  %7892 = fmul fast float %7776, 9.843750e-01
  %7893 = fadd fast float %7892, 7.812500e-03
  %7894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7893, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7895 = extractvalue %dx.types.ResRet.f32 %7894, 0
  %7896 = extractvalue %dx.types.ResRet.f32 %7894, 1
  %7897 = extractvalue %dx.types.ResRet.f32 %7894, 2
  %7898 = extractvalue %dx.types.ResRet.f32 %7894, 3
  %7899 = fsub fast float %7897, %7895
  %7900 = fsub fast float %7898, %7896
  %7901 = fmul fast float %7899, %5983
  %7902 = fmul fast float %7900, %5983
  %7903 = fadd fast float %7901, %7895
  %7904 = fadd fast float %7902, %7896
  %7905 = fmul fast float %7903, %5704
  %7906 = fmul fast float %7903, %5705
  %7907 = fmul fast float %7903, %5713
  %7908 = fadd fast float %7905, %7904
  %7909 = fadd fast float %7906, %7904
  %7910 = fadd fast float %7907, %7904
  br i1 %5996, label %7911, label %7934

; <label>:7911                                    ; preds = %7888
  %7912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7776, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7913 = extractvalue %dx.types.ResRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.ResRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.ResRet.f32 %7912, 2
  %7916 = fadd fast float %7913, -5.000000e-01
  %7917 = fadd fast float %7914, -5.000000e-01
  %7918 = fadd fast float %7915, -5.000000e-01
  %7919 = fmul fast float %5704, 4.000000e+00
  %7920 = fmul fast float %7919, %7856
  %7921 = fmul fast float %7920, %7916
  %7922 = fmul fast float %5705, 4.000000e+00
  %7923 = fmul fast float %7922, %7857
  %7924 = fmul fast float %7923, %7917
  %7925 = fmul fast float %5713, 4.000000e+00
  %7926 = fmul fast float %7925, %7858
  %7927 = fmul fast float %7926, %7918
  %7928 = fadd fast float %7921, %7908
  %7929 = fadd fast float %7924, %7909
  %7930 = fadd fast float %7927, %7910
  %7931 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7932 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7933 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  br label %7934

; <label>:7934                                    ; preds = %7911, %7888
  %7935 = phi float [ %7931, %7911 ], [ %7908, %7888 ]
  %7936 = phi float [ %7932, %7911 ], [ %7909, %7888 ]
  %7937 = phi float [ %7933, %7911 ], [ %7910, %7888 ]
  %7938 = call float @dx.op.binary.f32(i32 35, float %7936, float %7937)  ; FMax(a,b)
  %7939 = call float @dx.op.binary.f32(i32 35, float %7935, float %7938)  ; FMax(a,b)
  %7940 = fsub fast float 1.000000e+00, %7939
  %7941 = call float @dx.op.binary.f32(i32 35, float %7801, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7942 = fdiv fast float %4424, %7941
  %7943 = fmul fast float %6051, %7942
  %7944 = fmul fast float %6053, %7942
  %7945 = fmul fast float %6055, %7942
  %7946 = call float @dx.op.unary.f32(i32 21, float %7943)  ; Exp(value)
  %7947 = call float @dx.op.unary.f32(i32 21, float %7944)  ; Exp(value)
  %7948 = call float @dx.op.unary.f32(i32 21, float %7945)  ; Exp(value)
  %7949 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7950 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7951 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  %7952 = select i1 %6048, float %7949, float 0.000000e+00
  %7953 = select i1 %6049, float %7950, float 0.000000e+00
  %7954 = select i1 %6050, float %7951, float 0.000000e+00
  %7955 = fsub fast float -0.000000e+00, %5707
  %7956 = fsub fast float -0.000000e+00, %5708
  %7957 = fsub fast float -0.000000e+00, %5709
  %7958 = call float @dx.op.dot3.f32(i32 55, float %7507, float %7508, float %7509, float %7955, float %7956, float %7957)  ; Dot3(ax,ay,az,bx,by,bz)
  %7959 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7960 = fmul fast float %7959, %7514
  %7961 = fmul fast float %7959, 9.843750e-01
  %7962 = fadd fast float %7961, 7.812500e-03
  %7963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7962, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7964 = extractvalue %dx.types.ResRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.ResRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.ResRet.f32 %7963, 2
  %7967 = extractvalue %dx.types.ResRet.f32 %7963, 3
  %7968 = fsub fast float %7966, %7964
  %7969 = fsub fast float %7967, %7965
  %7970 = fmul fast float %7968, %5983
  %7971 = fmul fast float %7969, %5983
  %7972 = fadd fast float %7970, %7964
  %7973 = fadd fast float %7971, %7965
  %7974 = fmul fast float %7972, %5704
  %7975 = fmul fast float %7972, %5705
  %7976 = fmul fast float %7972, %5713
  %7977 = fadd fast float %7974, %7973
  %7978 = fadd fast float %7975, %7973
  %7979 = fadd fast float %7976, %7973
  br i1 %5996, label %7980, label %8003

; <label>:7980                                    ; preds = %7934
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5070, float %7959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.ResRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.ResRet.f32 %7981, 2
  %7985 = fadd fast float %7982, -5.000000e-01
  %7986 = fadd fast float %7983, -5.000000e-01
  %7987 = fadd fast float %7984, -5.000000e-01
  %7988 = fmul fast float %5704, 4.000000e+00
  %7989 = fmul fast float %7988, %7856
  %7990 = fmul fast float %7989, %7985
  %7991 = fmul fast float %5705, 4.000000e+00
  %7992 = fmul fast float %7991, %7857
  %7993 = fmul fast float %7992, %7986
  %7994 = fmul fast float %5713, 4.000000e+00
  %7995 = fmul fast float %7994, %7858
  %7996 = fmul fast float %7995, %7987
  %7997 = fadd fast float %7990, %7977
  %7998 = fadd fast float %7993, %7978
  %7999 = fadd fast float %7996, %7979
  %8000 = call float @dx.op.unary.f32(i32 7, float %7997)  ; Saturate(value)
  %8001 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8002 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  br label %8003

; <label>:8003                                    ; preds = %7980, %7934
  %8004 = phi float [ %8000, %7980 ], [ %7977, %7934 ]
  %8005 = phi float [ %8001, %7980 ], [ %7978, %7934 ]
  %8006 = phi float [ %8002, %7980 ], [ %7979, %7934 ]
  %8007 = call float @dx.op.binary.f32(i32 35, float %8005, float %8006)  ; FMax(a,b)
  %8008 = call float @dx.op.binary.f32(i32 35, float %8004, float %8007)  ; FMax(a,b)
  %8009 = fsub fast float 1.000000e+00, %8008
  %8010 = fmul fast float %6111, %6116
  %8011 = fadd fast float %6118, %8010
  %8012 = call float @dx.op.unary.f32(i32 7, float %8011)  ; Saturate(value)
  %8013 = fsub fast float %7788, %5721
  %8014 = fsub fast float %7789, %5722
  %8015 = fsub fast float %7790, %5723
  %8016 = call float @dx.op.dot3.f32(i32 55, float %8013, float %8014, float %8015, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = call float @dx.op.unary.f32(i32 25, float %8016)  ; Rsqrt(value)
  %8018 = fmul fast float %8013, %8017
  %8019 = fmul fast float %8014, %8017
  %8020 = fmul fast float %8015, %8017
  %8021 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7957, float %8018, float %8019, float %8020)  ; Dot3(ax,ay,az,bx,by,bz)
  %8022 = fmul fast float %8021, %8021
  %8023 = call float @dx.op.unary.f32(i32 6, float %7959)  ; FAbs(value)
  %8024 = call float @dx.op.binary.f32(i32 35, float %8012, float 0x3F847AE140000000)  ; FMax(a,b)
  %8025 = fmul fast float %8024, %8024
  %8026 = fmul fast float %8025, %8025
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %7806, %8027
  %8029 = fadd fast float %8028, %8026
  %8030 = bitcast float %8029 to i32
  %8031 = ashr i32 %8030, 1
  %8032 = add nsw i32 %8031, 532487669
  %8033 = bitcast i32 %8032 to float
  %8034 = fadd fast float %8033, %5715
  %8035 = fmul fast float %8026, %8022
  %8036 = fsub fast float 1.000000e+00, %8022
  %8037 = fadd fast float %8036, %8035
  %8038 = fmul fast float %8023, %8023
  %8039 = fmul fast float %8038, %8027
  %8040 = fadd fast float %8039, %8026
  %8041 = bitcast float %8040 to i32
  %8042 = ashr i32 %8041, 1
  %8043 = add nsw i32 %8042, 532487669
  %8044 = bitcast i32 %8043 to float
  %8045 = fadd fast float %8044, %8023
  %8046 = fmul fast float %8037, %8037
  %8047 = fmul fast float %8046, %8034
  %8048 = fmul fast float %8047, %8045
  %8049 = fdiv fast float 1.000000e+00, %8048
  %8050 = bitcast float %8026 to i32
  %8051 = sitofp i32 %8050 to float
  %8052 = fmul fast float %8051, 0x3FE7F73180000000
  %8053 = fadd fast float %8052, 0x41AFE27C40000000
  %8054 = fptosi float %8053 to i32
  %8055 = bitcast i32 %8054 to float
  %8056 = fadd fast float %8055, %7836
  %8057 = bitcast float %8056 to i32
  %8058 = sub nsw i32 2129859010, %8057
  %8059 = bitcast i32 %8058 to float
  %8060 = fmul fast float %8026, %8049
  %8061 = fmul fast float %8060, %8055
  %8062 = fmul fast float %8061, %8059
  br i1 %7499, label %8063, label %8073

; <label>:8063                                    ; preds = %8003
  %8064 = fmul fast float %7960, %7952
  %8065 = fmul fast float %7960, %7953
  %8066 = fmul fast float %7960, %7954
  %8067 = fmul fast float %8064, %8009
  %8068 = fmul fast float %8067, %8062
  %8069 = fmul fast float %8065, %8009
  %8070 = fmul fast float %8069, %8062
  %8071 = fmul fast float %8066, %8009
  %8072 = fmul fast float %8071, %8062
  br label %8073

; <label>:8073                                    ; preds = %8063, %8003
  %8074 = phi float [ %8068, %8063 ], [ 0.000000e+00, %8003 ]
  %8075 = phi float [ %8070, %8063 ], [ 0.000000e+00, %8003 ]
  %8076 = phi float [ %8072, %8063 ], [ 0.000000e+00, %8003 ]
  %8077 = fmul fast float %7889, %7843
  %8078 = fmul fast float %7890, %7843
  %8079 = fmul fast float %7891, %7843
  %8080 = fsub fast float 1.000000e+00, %7777
  %8081 = bitcast float %8080 to i32
  %8082 = sitofp i32 %8081 to float
  %8083 = fmul fast float %8082, 5.000000e+00
  %8084 = fadd fast float %8083, 0xC1EFBF8940000000
  %8085 = fptosi float %8084 to i32
  %8086 = bitcast i32 %8085 to float
  %8087 = fmul fast float %8086, %5071
  %8088 = fmul fast float %7940, %8087
  %8089 = fmul fast float %8088, %6043
  %8090 = fmul fast float %8088, %6044
  %8091 = fmul fast float %8088, %6045
  %8092 = fadd fast float %8089, %8077
  %8093 = fadd fast float %8090, %8078
  %8094 = fadd fast float %8091, %8079
  %8095 = fmul fast float %8092, %7783
  %8096 = fmul fast float %8093, %7783
  %8097 = fmul fast float %8094, %7783
  %8098 = fadd fast float %8095, %8074
  %8099 = fadd fast float %8096, %8075
  %8100 = fadd fast float %8097, %8076
  %8101 = fmul fast float %7765, %5067
  %8102 = fmul fast float %8101, %7783
  %8103 = fmul fast float %8102, %7940
  %8104 = fmul fast float %7766, %5067
  %8105 = fmul fast float %8104, %7783
  %8106 = fmul fast float %8105, %7940
  %8107 = fmul fast float %7767, %5067
  %8108 = fmul fast float %8107, %7783
  %8109 = fmul fast float %8108, %7940
  %8110 = fadd fast float %8103, %7443
  %8111 = fadd fast float %8106, %7444
  %8112 = fadd fast float %8109, %7445
  %8113 = fmul fast float %8101, %8098
  %8114 = fmul fast float %8104, %8099
  %8115 = fmul fast float %8107, %8100
  %8116 = fadd fast float %8113, %7440
  %8117 = fadd fast float %8114, %7441
  %8118 = fadd fast float %8115, %7442
  br label %7573

; <label>:8119                                    ; preds = %7573
  br label %8120

; <label>:8120                                    ; preds = %8119, %7406
  %8121 = phi float [ %7408, %7406 ], [ %7574, %8119 ]
  %8122 = phi float [ %7409, %7406 ], [ %7575, %8119 ]
  %8123 = phi float [ %7410, %7406 ], [ %7576, %8119 ]
  %8124 = phi float [ %7411, %7406 ], [ %7577, %8119 ]
  %8125 = phi float [ %7412, %7406 ], [ %7578, %8119 ]
  %8126 = phi float [ %7413, %7406 ], [ %7579, %8119 ]
  %8127 = add i32 %7407, 1
  %8128 = icmp ugt i32 %8127, %7403
  br i1 %8128, label %8129, label %7406

; <label>:8129                                    ; preds = %8120
  br label %8130

; <label>:8130                                    ; preds = %8129, %7356, %7346
  %8131 = phi float [ %7347, %7346 ], [ %7347, %7356 ], [ %8121, %8129 ]
  %8132 = phi float [ %7348, %7346 ], [ %7348, %7356 ], [ %8122, %8129 ]
  %8133 = phi float [ %7349, %7346 ], [ %7349, %7356 ], [ %8123, %8129 ]
  %8134 = phi float [ %7350, %7346 ], [ %7350, %7356 ], [ %8124, %8129 ]
  %8135 = phi float [ %7351, %7346 ], [ %7351, %7356 ], [ %8125, %8129 ]
  %8136 = phi float [ %7352, %7346 ], [ %7352, %7356 ], [ %8126, %8129 ]
  %8137 = fmul fast float %6072, %5067
  %8138 = fmul fast float %6073, %5067
  %8139 = fmul fast float %6074, %5067
  %8140 = fadd fast float %8137, 1.000000e+00
  %8141 = fadd fast float %8138, 1.000000e+00
  %8142 = fadd fast float %8139, 1.000000e+00
  %8143 = call float @dx.op.dot3.f32(i32 55, float %8140, float %8141, float %8142, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8144 = fsub fast float 1.000000e+00, %8143
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = fmul fast float %8146, %6078
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 3
  %8150 = fsub fast float 1.000000e+00, %5074
  %8151 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  %8152 = fadd fast float %8136, %5073
  %8153 = fmul fast float %8152, %5074
  %8154 = fmul fast float %8151, %8149
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8157 = fmul fast float %8134, %5701
  %8158 = fmul fast float %8135, %5702
  %8159 = fmul fast float %8136, %5703
  %8160 = fcmp fast ogt float %93, %183
  %8161 = and i1 %8160, %5506
  %8162 = or i1 %5512, %8161
  %8163 = icmp eq i32 %5505, 2
  %8164 = fcmp fast ole float %93, %183
  %8165 = and i1 %8164, %8163
  %8166 = or i1 %8165, %8162
  br i1 %8161, label %8167, label %8424

; <label>:8167                                    ; preds = %8130
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 3
  %8171 = fmul fast float %8169, %102
  %8172 = fmul fast float %8170, %103
  %8173 = call float @dx.op.unary.f32(i32 7, float %8171)  ; Saturate(value)
  %8174 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8175 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8173, float %8174, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8176 = extractvalue %dx.types.ResRet.f32 %8175, 0
  %8177 = extractvalue %dx.types.ResRet.f32 %8175, 1
  %8178 = extractvalue %dx.types.ResRet.f32 %8175, 2
  %8179 = extractvalue %dx.types.ResRet.f32 %8175, 3
  %8180 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8173, float %8174, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = extractvalue %dx.types.ResRet.f32 %8180, 3
  %8185 = call float @dx.op.binary.f32(i32 35, float %8177, float %8178)  ; FMax(a,b)
  %8186 = call float @dx.op.binary.f32(i32 35, float %8176, float %8185)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8186, float %8179)  ; FMax(a,b)
  %8188 = call float @dx.op.binary.f32(i32 36, float %8182, float %8183)  ; FMin(a,b)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8181, float %8188)  ; FMin(a,b)
  %8190 = call float @dx.op.binary.f32(i32 36, float %8189, float %8184)  ; FMin(a,b)
  %8191 = fmul fast float %8187, 2.550000e+02
  %8192 = fadd fast float %8191, 0x3F70101020000000
  %8193 = fptoui float %8192 to i32
  %8194 = fmul fast float %8190, 2.550000e+02
  %8195 = fadd fast float %8194, 0x3F70101020000000
  %8196 = fptoui float %8195 to i32
  %8197 = icmp ult i32 %8193, %8196
  br i1 %8197, label %8198, label %8366

; <label>:8198                                    ; preds = %8167
  %8199 = fcmp fast ogt float %92, 9.843750e-01
  %8200 = fadd fast float %93, -4.000000e+00
  %8201 = select i1 %8199, float -4.000000e+00, float %8200
  %8202 = call float @dx.op.binary.f32(i32 35, float %8201, float 0.000000e+00)  ; FMax(a,b)
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = fadd fast float %8204, %8202
  %8206 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8207 = fmul fast float %8205, %8206
  %8208 = call float @dx.op.unary.f32(i32 23, float %8207)  ; Log(value)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8210 = fmul fast float %8209, %8208
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8213 = fmul fast float %8210, %8212
  %8214 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8215 = uitofp i32 %8193 to float
  %8216 = uitofp i32 %8196 to float
  %8217 = fadd fast float %8215, 5.000000e-01
  %8218 = fadd fast float %8216, 5.000000e-01
  %8219 = fmul fast float %8212, %8217
  %8220 = fmul fast float %8212, %8218
  %8221 = fadd fast float %8219, 0x3F0FFB4800000000
  %8222 = fadd fast float %8220, 0xBF0FFB4800000000
  %8223 = call float @dx.op.binary.f32(i32 35, float %8214, float %8221)  ; FMax(a,b)
  %8224 = call float @dx.op.binary.f32(i32 36, float %8223, float %8222)  ; FMin(a,b)
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8229 = fmul fast float %8226, %8224
  %8230 = fadd fast float %8228, %8229
  %8231 = fadd fast float %8228, %8227
  %8232 = fsub fast float %8226, %8227
  %8233 = fadd fast float %8232, %8228
  %8234 = call float @dx.op.binary.f32(i32 35, float %8230, float %8231)  ; FMax(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8234, float %8233)  ; FMin(a,b)
  %8236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8173, float %8174, float %8235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8237 = extractvalue %dx.types.ResRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.ResRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.ResRet.f32 %8236, 2
  %8240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.i32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.i32 %8240, 1
  %8243 = uitofp i32 %8241 to float
  %8244 = uitofp i32 %8242 to float
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = fmul fast float %8243, %8173
  %8249 = fmul fast float %8244, %8174
  %8250 = fadd fast float %8248, -5.000000e-01
  %8251 = fadd fast float %8249, -5.000000e-01
  %8252 = call float @dx.op.unary.f32(i32 22, float %8250)  ; Frc(value)
  %8253 = call float @dx.op.unary.f32(i32 22, float %8251)  ; Frc(value)
  %8254 = fmul fast float %8252, %8252
  %8255 = fmul fast float %8254, %8252
  %8256 = fsub fast float 3.000000e+00, %8252
  %8257 = fmul fast float %8254, %8256
  %8258 = fmul fast float %8252, 3.000000e+00
  %8259 = fmul fast float %8255, 3.000000e+00
  %8260 = fmul fast float %8254, 6.000000e+00
  %8261 = fsub fast float %8259, %8260
  %8262 = fadd fast float %8261, 4.000000e+00
  %8263 = fmul fast float %8262, 0x3FC5555560000000
  %8264 = fmul fast float %8255, -3.000000e+00
  %8265 = fadd fast float %8254, %8252
  %8266 = fmul fast float %8265, 3.000000e+00
  %8267 = fadd fast float %8264, 1.000000e+00
  %8268 = fadd fast float %8267, %8266
  %8269 = fmul fast float %8255, 0x3FC5555560000000
  %8270 = fmul fast float %8253, %8253
  %8271 = fmul fast float %8270, %8253
  %8272 = fsub fast float 3.000000e+00, %8253
  %8273 = fmul fast float %8270, %8272
  %8274 = fmul fast float %8253, 3.000000e+00
  %8275 = fmul fast float %8271, 3.000000e+00
  %8276 = fmul fast float %8270, 6.000000e+00
  %8277 = fsub fast float %8275, %8276
  %8278 = fadd fast float %8277, 4.000000e+00
  %8279 = fmul fast float %8278, 0x3FC5555560000000
  %8280 = fmul fast float %8271, -3.000000e+00
  %8281 = fadd fast float %8270, %8253
  %8282 = fmul fast float %8281, 3.000000e+00
  %8283 = fadd fast float %8280, 1.000000e+00
  %8284 = fadd fast float %8283, %8282
  %8285 = fmul fast float %8271, 0x3FC5555560000000
  %8286 = fadd fast float %8252, 1.000000e+00
  %8287 = fsub fast float 1.000000e+00, %8258
  %8288 = fadd fast float %8287, %8257
  %8289 = fadd fast float %8288, %8262
  %8290 = fmul fast float %8289, 0x3FC5555560000000
  %8291 = fdiv fast float %8263, %8290
  %8292 = fsub fast float %8286, %8291
  %8293 = fsub fast float 1.000000e+00, %8252
  %8294 = fadd fast float %8268, %8255
  %8295 = fmul fast float %8294, 0x3FC5555560000000
  %8296 = fdiv fast float %8269, %8295
  %8297 = fadd fast float %8293, %8296
  %8298 = fadd fast float %8253, 1.000000e+00
  %8299 = fsub fast float 1.000000e+00, %8274
  %8300 = fadd fast float %8299, %8273
  %8301 = fadd fast float %8300, %8278
  %8302 = fmul fast float %8301, 0x3FC5555560000000
  %8303 = fdiv fast float %8279, %8302
  %8304 = fsub fast float %8298, %8303
  %8305 = fsub fast float 1.000000e+00, %8253
  %8306 = fadd fast float %8284, %8271
  %8307 = fmul fast float %8306, 0x3FC5555560000000
  %8308 = fdiv fast float %8285, %8307
  %8309 = fadd fast float %8308, %8305
  %8310 = fmul fast float %8292, %8246
  %8311 = fsub fast float %8173, %8310
  %8312 = fmul fast float %8297, %8246
  %8313 = fadd fast float %8312, %8173
  %8314 = fmul fast float %8309, %8247
  %8315 = fadd fast float %8314, %8174
  %8316 = fmul fast float %8304, %8247
  %8317 = fsub fast float %8174, %8316
  %8318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8311, float %8317, float %8235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8319 = extractvalue %dx.types.ResRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.ResRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.ResRet.f32 %8318, 2
  %8322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8313, float %8317, float %8235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8311, float %8315, float %8235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8327 = extractvalue %dx.types.ResRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.ResRet.f32 %8326, 1
  %8329 = extractvalue %dx.types.ResRet.f32 %8326, 2
  %8330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8313, float %8315, float %8235, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8331 = extractvalue %dx.types.ResRet.f32 %8330, 0
  %8332 = extractvalue %dx.types.ResRet.f32 %8330, 1
  %8333 = extractvalue %dx.types.ResRet.f32 %8330, 2
  %8334 = fsub fast float %8327, %8319
  %8335 = fsub fast float %8328, %8320
  %8336 = fsub fast float %8329, %8321
  %8337 = fmul fast float %8334, %8307
  %8338 = fmul fast float %8335, %8307
  %8339 = fmul fast float %8336, %8307
  %8340 = fadd fast float %8337, %8319
  %8341 = fadd fast float %8338, %8320
  %8342 = fadd fast float %8339, %8321
  %8343 = fsub fast float %8331, %8323
  %8344 = fsub fast float %8332, %8324
  %8345 = fsub fast float %8333, %8325
  %8346 = fmul fast float %8343, %8307
  %8347 = fmul fast float %8344, %8307
  %8348 = fmul fast float %8345, %8307
  %8349 = fsub fast float %8323, %8340
  %8350 = fadd fast float %8349, %8346
  %8351 = fsub fast float %8324, %8341
  %8352 = fadd fast float %8351, %8347
  %8353 = fsub fast float %8325, %8342
  %8354 = fadd fast float %8353, %8348
  %8355 = fmul fast float %8350, %8295
  %8356 = fmul fast float %8352, %8295
  %8357 = fmul fast float %8354, %8295
  %8358 = fadd fast float %8355, %8340
  %8359 = fadd fast float %8356, %8341
  %8360 = fadd fast float %8357, %8342
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8363 = fmul fast float %8358, %8362
  %8364 = fmul fast float %8359, %8362
  %8365 = fmul fast float %8360, %8362
  br label %8366

; <label>:8366                                    ; preds = %8198, %8167
  %8367 = phi float [ %8237, %8198 ], [ 1.000000e+00, %8167 ]
  %8368 = phi float [ %8238, %8198 ], [ 1.000000e+00, %8167 ]
  %8369 = phi float [ %8239, %8198 ], [ 1.000000e+00, %8167 ]
  %8370 = phi float [ %8363, %8198 ], [ 0.000000e+00, %8167 ]
  %8371 = phi float [ %8364, %8198 ], [ 0.000000e+00, %8167 ]
  %8372 = phi float [ %8365, %8198 ], [ 0.000000e+00, %8167 ]
  %8373 = fmul fast float %8370, %8144
  %8374 = fmul fast float %8371, %8144
  %8375 = fmul fast float %8372, %8144
  %8376 = call float @dx.op.dot3.f32(i32 55, float %8367, float %8368, float %8369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8377 = call float @dx.op.dot3.f32(i32 55, float %8373, float %8374, float %8375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8378 = select i1 %223, float %8376, float %8367
  %8379 = select i1 %223, float %8376, float %8368
  %8380 = select i1 %223, float 1.000000e+00, float %8369
  %8381 = select i1 %223, float %8377, float %8373
  %8382 = select i1 %223, float 0.000000e+00, float %8374
  %8383 = select i1 %223, float 0.000000e+00, float %8375
  %8384 = fmul fast float %8378, %8157
  %8385 = fmul fast float %8379, %8158
  %8386 = fmul fast float %8380, %8159
  %8387 = fadd fast float %8384, %8381
  %8388 = fadd fast float %8385, %8382
  %8389 = fadd fast float %8383, %8386
  %8390 = fmul fast float %8378, %8131
  %8391 = fmul fast float %8379, %8132
  %8392 = fmul fast float %8380, %8133
  %8393 = fmul fast float %131, %8169
  %8394 = fmul fast float %133, %8170
  %8395 = fsub fast float 1.000000e+00, %8393
  %8396 = fsub fast float 1.000000e+00, %8394
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8401 = fmul fast float %8395, %8398
  %8402 = fmul fast float %8395, %8399
  %8403 = fmul fast float %8395, %8400
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8408 = fmul fast float %8396, %8405
  %8409 = fmul fast float %8396, %8406
  %8410 = fmul fast float %8396, %8407
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = fadd fast float %8408, %8412
  %8416 = fadd fast float %8415, %8401
  %8417 = fadd fast float %8409, %8413
  %8418 = fadd fast float %8417, %8402
  %8419 = fadd fast float %8410, %8414
  %8420 = fadd fast float %8419, %8403
  %8421 = fmul fast float %8416, %183
  %8422 = fmul fast float %8418, %183
  %8423 = fmul fast float %8420, %183
  br label %8424

; <label>:8424                                    ; preds = %8366, %8130
  %8425 = phi float [ %8421, %8366 ], [ %161, %8130 ]
  %8426 = phi float [ %8422, %8366 ], [ %162, %8130 ]
  %8427 = phi float [ %8423, %8366 ], [ %163, %8130 ]
  %8428 = phi float [ %183, %8366 ], [ %93, %8130 ]
  %8429 = phi float [ %8387, %8366 ], [ %8157, %8130 ]
  %8430 = phi float [ %8388, %8366 ], [ %8158, %8130 ]
  %8431 = phi float [ %8389, %8366 ], [ %8159, %8130 ]
  %8432 = phi float [ %8390, %8366 ], [ %8131, %8130 ]
  %8433 = phi float [ %8391, %8366 ], [ %8132, %8130 ]
  %8434 = phi float [ %8392, %8366 ], [ %8133, %8130 ]
  %8435 = phi float [ %8367, %8366 ], [ 1.000000e+00, %8130 ]
  br i1 %8166, label %9586, label %8436

; <label>:8436                                    ; preds = %8424
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = extractvalue %dx.types.CBufRet.f32 %8437, 3
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.CBufRet.f32 %8442, 2
  %8446 = extractvalue %dx.types.CBufRet.f32 %8442, 3
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = extractvalue %dx.types.CBufRet.f32 %8447, 3
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = extractvalue %dx.types.CBufRet.f32 %8452, 3
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 3
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 3
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8463 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8464 = fcmp fast olt float %8463, -5.000000e-01
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8425, float %8426, float %8427, float %8425, float %8426, float %8427)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = call float @dx.op.unary.f32(i32 25, float %8465)  ; Rsqrt(value)
  %8467 = fmul fast float %8466, %8465
  %8468 = fmul fast float %8466, %8425
  %8469 = fmul fast float %8466, %8426
  %8470 = fmul fast float %8466, %8427
  %8471 = fadd fast float %8467, %8441
  %8472 = call float @dx.op.dot3.f32(i32 55, float %8468, float %8469, float %8470, float %8438, float %8439, float %8440)  ; Dot3(ax,ay,az,bx,by,bz)
  %8473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.i32 %8473, 1
  %8475 = and i32 %8474, 1
  %8476 = icmp ne i32 %8475, 0
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8479 = fcmp fast ogt float %8478, 0.000000e+00
  %8480 = and i1 %8476, %8479
  br i1 %8480, label %8481, label %8883, !dx.controlflow.hints !122

; <label>:8481                                    ; preds = %8436
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 2
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8488 = fsub fast float %8485, %8487
  %8489 = and i32 %8474, 2
  %8490 = extractvalue %dx.types.CBufRet.i32 %8473, 0
  %8491 = call i32 @dx.op.binary.i32(i32 40, i32 %8490, i32 3)  ; UMin(a,b)
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8497 = fsub fast float %8493, %8495
  %8498 = fsub fast float %8494, %8496
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = fcmp fast ogt float %8500, 0.000000e+00
  %8502 = fsub fast float -0.000000e+00, %8497
  %8503 = fsub fast float -0.000000e+00, %8498
  %8504 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8468, float %8469)  ; Dot2(ax,ay,bx,by)
  %8505 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8502, float %8503)  ; Dot2(ax,ay,bx,by)
  %8506 = fmul fast float %8505, 2.000000e+00
  %8507 = call float @dx.op.dot2.f32(i32 54, float %8502, float %8503, float %8502, float %8503)  ; Dot2(ax,ay,bx,by)
  %8508 = fmul fast float %8500, %8500
  %8509 = fsub fast float %8507, %8508
  %8510 = fmul fast float %8506, %8506
  %8511 = fmul fast float %8504, 4.000000e+00
  %8512 = fmul fast float %8511, %8509
  %8513 = fsub fast float %8510, %8512
  %8514 = fcmp fast ogt float %8513, 0.000000e+00
  br i1 %8514, label %8515, label %8530

; <label>:8515                                    ; preds = %8481
  %8516 = fcmp fast ogt float %8506, 0.000000e+00
  %8517 = call float @dx.op.unary.f32(i32 24, float %8513)  ; Sqrt(value)
  %8518 = fsub fast float -0.000000e+00, %8517
  %8519 = select i1 %8516, float %8517, float %8518
  %8520 = fadd fast float %8519, %8506
  %8521 = fmul float %8520, -5.000000e-01
  %8522 = fdiv fast float %8521, %8504
  %8523 = call float @dx.op.binary.f32(i32 35, float %8522, float 0.000000e+00)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 36, float %8467, float %8523)  ; FMin(a,b)
  %8525 = fdiv fast float %8509, %8521
  %8526 = call float @dx.op.binary.f32(i32 35, float %8525, float 0.000000e+00)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8467, float %8526)  ; FMin(a,b)
  %8528 = call float @dx.op.binary.f32(i32 36, float %8524, float %8527)  ; FMin(a,b)
  %8529 = call float @dx.op.binary.f32(i32 35, float %8524, float %8527)  ; FMax(a,b)
  br label %8530

; <label>:8530                                    ; preds = %8515, %8481
  %8531 = phi float [ %8529, %8515 ], [ -1.000000e+00, %8481 ]
  %8532 = phi float [ %8528, %8515 ], [ -1.000000e+00, %8481 ]
  %8533 = phi i1 [ true, %8515 ], [ false, %8481 ]
  %8534 = and i1 %8501, %8533
  br i1 %8534, label %8535, label %8537

; <label>:8535                                    ; preds = %8530
  %8536 = fcmp fast oeq float %8532, %8531
  br i1 %8536, label %8836, label %8538

; <label>:8537                                    ; preds = %8530
  br i1 %8501, label %8836, label %8538

; <label>:8538                                    ; preds = %8537, %8535
  %8539 = phi float [ %8467, %8537 ], [ %8531, %8535 ]
  %8540 = phi float [ 0.000000e+00, %8537 ], [ %8532, %8535 ]
  %8541 = icmp ne i32 %8489, 0
  %8542 = fmul fast float %8539, %8470
  %8543 = fadd fast float %8542, %8483
  %8544 = fmul fast float %8543, %8539
  %8545 = select i1 %8541, float 0.000000e+00, float %8544
  %8546 = fcmp fast oeq float %8470, 0.000000e+00
  %8547 = fdiv fast float %8488, %8470
  %8548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8547)  ; FMax(a,b)
  %8549 = select i1 %8546, float %8539, float %8548
  %8550 = call float @dx.op.binary.f32(i32 36, float %8539, float %8549)  ; FMin(a,b)
  %8551 = fcmp fast ogt float %8470, 0.000000e+00
  %8552 = fcmp fast olt float %8488, 0.000000e+00
  br i1 %8551, label %8553, label %8610

; <label>:8553                                    ; preds = %8538
  %8554 = icmp eq i32 %8489, 0
  br i1 %8552, label %8555, label %8599

; <label>:8555                                    ; preds = %8553
  %8556 = select i1 %8554, float %8539, float 0.000000e+00
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = call float @dx.op.unary.f32(i32 6, float %8557)  ; FAbs(value)
  %8559 = fmul fast float %8556, %8470
  %8560 = fadd fast float %8559, %8483
  %8561 = fmul fast float %8558, %8560
  %8562 = fsub fast float %8545, %8561
  %8563 = fsub fast float %8539, %8558
  %8564 = select i1 %8554, float %8563, float 0.000000e+00
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8568 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8570 = extractvalue %dx.types.CBufRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.CBufRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.CBufRet.f32 %8569, 2
  %8573 = extractvalue %dx.types.CBufRet.f32 %8569, 3
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 3
  %8576 = call float @dx.op.binary.f32(i32 36, float %8562, float %8575)  ; FMin(a,b)
  %8577 = fmul fast float %8573, %8564
  %8578 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8579 = fsub fast float %8570, %8566
  %8580 = fsub fast float %8571, %8567
  %8581 = fsub fast float %8572, %8568
  %8582 = fmul fast float %8578, %8579
  %8583 = fmul fast float %8578, %8580
  %8584 = fmul fast float %8578, %8581
  %8585 = fadd fast float %8582, %8566
  %8586 = fadd fast float %8583, %8567
  %8587 = fadd fast float %8584, %8568
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = fadd fast float %8590, %8589
  %8592 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8594 = extractvalue %dx.types.CBufRet.f32 %8588, 3
  %8595 = fadd fast float %8594, %8593
  %8596 = call float @dx.op.unary.f32(i32 7, float %8595)  ; Saturate(value)
  %8597 = fmul fast float %8592, %8576
  %8598 = fmul fast float %8597, %8596
  br label %8836

; <label>:8599                                    ; preds = %8553
  br i1 %8554, label %8600, label %8621

; <label>:8600                                    ; preds = %8599
  %8601 = call float @dx.op.binary.f32(i32 36, float %8550, float %8540)  ; FMin(a,b)
  %8602 = fsub fast float %8550, %8601
  %8603 = fsub fast float %8602, %8539
  %8604 = call float @dx.op.unary.f32(i32 6, float %8603)  ; FAbs(value)
  %8605 = fadd fast float %8602, %8539
  %8606 = fmul fast float %8605, %8470
  %8607 = fadd fast float %8606, %8483
  %8608 = fmul fast float %8607, %8604
  %8609 = fsub fast float %8545, %8608
  br label %8621

; <label>:8610                                    ; preds = %8538
  br i1 %8552, label %8611, label %8621

; <label>:8611                                    ; preds = %8610
  %8612 = call float @dx.op.binary.f32(i32 35, float %8540, float %8550)  ; FMax(a,b)
  %8613 = icmp eq i32 %8489, 0
  %8614 = select i1 %8613, float %8550, float 0.000000e+00
  %8615 = fsub fast float -0.000000e+00, %8614
  %8616 = call float @dx.op.unary.f32(i32 6, float %8615)  ; FAbs(value)
  %8617 = fmul fast float %8614, %8470
  %8618 = fadd fast float %8617, %8483
  %8619 = fmul fast float %8616, %8618
  %8620 = fsub fast float %8545, %8619
  br label %8621

; <label>:8621                                    ; preds = %8611, %8610, %8600, %8599
  %8622 = phi float [ %8540, %8599 ], [ %8540, %8600 ], [ %8612, %8611 ], [ %8540, %8610 ]
  %8623 = phi float [ 0.000000e+00, %8599 ], [ %8604, %8600 ], [ %8616, %8611 ], [ 0.000000e+00, %8610 ]
  %8624 = phi float [ %8545, %8599 ], [ %8609, %8600 ], [ %8620, %8611 ], [ %8545, %8610 ]
  %8625 = phi float [ %8550, %8599 ], [ %8550, %8600 ], [ %8539, %8611 ], [ %8539, %8610 ]
  %8626 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8626, align 4, !tbaa !123, !noalias !125
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8627, align 4, !tbaa !123, !noalias !125
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8628, align 4, !tbaa !123, !noalias !125
  %8629 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8629, align 4, !tbaa !123, !noalias !125
  %8630 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8630, align 4, !tbaa !123, !noalias !125
  %8631 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8631, align 4, !tbaa !123, !noalias !125
  %8632 = icmp sgt i32 %8491, 0
  br i1 %8632, label %8633, label %8694

; <label>:8633                                    ; preds = %8621
  br label %8634

; <label>:8634                                    ; preds = %8683, %8633
  %8635 = phi i32 [ %8684, %8683 ], [ 0, %8633 ]
  %8636 = phi i32 [ %8685, %8683 ], [ 0, %8633 ]
  %8637 = add nuw i32 %8636, 171
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8637)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.CBufRet.f32 %8641, 1
  %8644 = fsub fast float %8639, %8642
  %8645 = fsub fast float %8640, %8643
  %8646 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8647 = fsub fast float -0.000000e+00, %8644
  %8648 = fsub fast float -0.000000e+00, %8645
  %8649 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8647, float %8648)  ; Dot2(ax,ay,bx,by)
  %8650 = fmul fast float %8649, 2.000000e+00
  %8651 = call float @dx.op.dot2.f32(i32 54, float %8647, float %8648, float %8647, float %8648)  ; Dot2(ax,ay,bx,by)
  %8652 = fmul fast float %8646, %8646
  %8653 = fsub fast float %8651, %8652
  %8654 = fmul fast float %8650, %8650
  %8655 = fmul fast float %8511, %8653
  %8656 = fsub fast float %8654, %8655
  %8657 = fcmp fast ogt float %8656, 0.000000e+00
  br i1 %8657, label %8658, label %8673

; <label>:8658                                    ; preds = %8634
  %8659 = fcmp fast ogt float %8650, 0.000000e+00
  %8660 = call float @dx.op.unary.f32(i32 24, float %8656)  ; Sqrt(value)
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = select i1 %8659, float %8660, float %8661
  %8663 = fadd fast float %8662, %8650
  %8664 = fmul float %8663, -5.000000e-01
  %8665 = fdiv fast float %8664, %8504
  %8666 = call float @dx.op.binary.f32(i32 35, float %8665, float 0.000000e+00)  ; FMax(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8539, float %8666)  ; FMin(a,b)
  %8668 = fdiv fast float %8653, %8664
  %8669 = call float @dx.op.binary.f32(i32 35, float %8668, float 0.000000e+00)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 36, float %8539, float %8669)  ; FMin(a,b)
  %8671 = call float @dx.op.binary.f32(i32 36, float %8667, float %8670)  ; FMin(a,b)
  %8672 = call float @dx.op.binary.f32(i32 35, float %8667, float %8670)  ; FMax(a,b)
  br label %8673

; <label>:8673                                    ; preds = %8658, %8634
  %8674 = phi float [ %8672, %8658 ], [ -1.000000e+00, %8634 ]
  %8675 = phi float [ %8671, %8658 ], [ -1.000000e+00, %8634 ]
  %8676 = phi i1 [ true, %8658 ], [ false, %8634 ]
  br i1 %8676, label %8677, label %8683

; <label>:8677                                    ; preds = %8673
  %8678 = call float @dx.op.binary.f32(i32 35, float %8622, float %8675)  ; FMax(a,b)
  %8679 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8636
  store float %8678, float* %8679, align 4, !tbaa !123, !noalias !125
  %8680 = call float @dx.op.binary.f32(i32 35, float %8622, float %8674)  ; FMax(a,b)
  %8681 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8636
  store float %8680, float* %8681, align 4, !tbaa !123, !noalias !125
  %8682 = add nsw i32 %8635, 1
  br label %8683

; <label>:8683                                    ; preds = %8677, %8673
  %8684 = phi i32 [ %8682, %8677 ], [ %8635, %8673 ]
  %8685 = add nuw nsw i32 %8636, 1
  %8686 = icmp eq i32 %8685, %8491
  br i1 %8686, label %8687, label %8634

; <label>:8687                                    ; preds = %8683
  %8688 = load float, float* %8628, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8689 = load float, float* %8627, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8690 = load float, float* %8626, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8691 = load float, float* %8631, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8692 = load float, float* %8630, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8693 = load float, float* %8629, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8694

; <label>:8694                                    ; preds = %8687, %8621
  %8695 = phi float [ -1.000000e+00, %8621 ], [ %8693, %8687 ]
  %8696 = phi float [ -1.000000e+00, %8621 ], [ %8692, %8687 ]
  %8697 = phi float [ -1.000000e+00, %8621 ], [ %8691, %8687 ]
  %8698 = phi float [ -1.000000e+00, %8621 ], [ %8690, %8687 ]
  %8699 = phi float [ -1.000000e+00, %8621 ], [ %8689, %8687 ]
  %8700 = phi float [ -1.000000e+00, %8621 ], [ %8688, %8687 ]
  %8701 = phi i32 [ 0, %8621 ], [ %8684, %8687 ]
  %8702 = call float @dx.op.binary.f32(i32 36, float %8698, float %8699)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8702, float %8700)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8698, float %8699)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8700)  ; FMin(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8702, float %8705)  ; FMax(a,b)
  %8707 = call float @dx.op.binary.f32(i32 35, float %8704, float %8700)  ; FMax(a,b)
  store float %8703, float* %8626, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8706, float* %8627, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8707, float* %8628, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8708 = call float @dx.op.binary.f32(i32 36, float %8695, float %8696)  ; FMin(a,b)
  %8709 = call float @dx.op.binary.f32(i32 36, float %8708, float %8697)  ; FMin(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8695, float %8696)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8710, float %8697)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8708, float %8711)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8710, float %8697)  ; FMax(a,b)
  store float %8709, float* %8629, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8712, float* %8630, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8713, float* %8631, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8714 = sub nsw i32 3, %8701
  %8715 = icmp sgt i32 %8714, 2
  br i1 %8715, label %8716, label %8754

; <label>:8716                                    ; preds = %8694
  %8717 = icmp eq i32 %8489, 0
  %8718 = fsub fast float %8539, %8623
  %8719 = select i1 %8717, float %8718, float %8623
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.CBufRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.CBufRet.f32 %8720, 2
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8728 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8731 = call float @dx.op.binary.f32(i32 36, float %8624, float %8730)  ; FMin(a,b)
  %8732 = fmul fast float %8728, %8719
  %8733 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8734 = fsub fast float %8725, %8721
  %8735 = fsub fast float %8726, %8722
  %8736 = fsub fast float %8727, %8723
  %8737 = fmul fast float %8733, %8734
  %8738 = fmul fast float %8733, %8735
  %8739 = fmul fast float %8733, %8736
  %8740 = fadd fast float %8737, %8721
  %8741 = fadd fast float %8738, %8722
  %8742 = fadd fast float %8739, %8723
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8745 = extractvalue %dx.types.CBufRet.f32 %8743, 1
  %8746 = fadd fast float %8745, %8744
  %8747 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8749 = extractvalue %dx.types.CBufRet.f32 %8743, 3
  %8750 = fadd fast float %8749, %8748
  %8751 = call float @dx.op.unary.f32(i32 7, float %8750)  ; Saturate(value)
  %8752 = fmul fast float %8747, %8731
  %8753 = fmul fast float %8752, %8751
  br label %8836

; <label>:8754                                    ; preds = %8694
  %8755 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8714
  %8756 = load float, float* %8755, align 4, !tbaa !123, !noalias !125
  %8757 = fcmp fast olt float %8756, %8625
  %8758 = icmp sgt i32 %8701, 0
  %8759 = and i1 %8758, %8757
  br i1 %8759, label %8760, label %8797

; <label>:8760                                    ; preds = %8754
  br label %8761

; <label>:8761                                    ; preds = %8790, %8760
  %8762 = phi float [ %8791, %8790 ], [ %8623, %8760 ]
  %8763 = phi float [ %8792, %8790 ], [ %8624, %8760 ]
  %8764 = phi float [ %8772, %8790 ], [ %8756, %8760 ]
  %8765 = phi i32 [ %8769, %8790 ], [ %8714, %8760 ]
  %8766 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8765
  %8767 = load float, float* %8766, align 4, !tbaa !123, !noalias !125
  %8768 = icmp slt i32 %8765, 2
  %8769 = add nsw i32 %8765, 1
  %8770 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8769
  %8771 = load float, float* %8770, align 4, !tbaa !123, !noalias !125
  %8772 = select i1 %8768, float %8771, float %8539
  %8773 = call float @dx.op.binary.f32(i32 36, float %8772, float %8767)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8625, float %8773)  ; FMin(a,b)
  %8775 = icmp eq i32 %8489, 0
  %8776 = fadd fast float %8774, %8764
  %8777 = fmul fast float %8776, %8470
  %8778 = fadd fast float %8777, %8483
  br i1 %8775, label %8784, label %8779

; <label>:8779                                    ; preds = %8761
  %8780 = fsub fast float %8774, %8764
  %8781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8780)  ; FMax(a,b)
  %8782 = fmul fast float %8781, %8778
  %8783 = fadd fast float %8782, %8763
  br label %8790

; <label>:8784                                    ; preds = %8761
  %8785 = fsub fast float %8764, %8774
  %8786 = call float @dx.op.unary.f32(i32 6, float %8785)  ; FAbs(value)
  %8787 = fadd fast float %8786, %8762
  %8788 = fmul fast float %8786, %8778
  %8789 = fsub fast float %8763, %8788
  br label %8790

; <label>:8790                                    ; preds = %8784, %8779
  %8791 = phi float [ %8781, %8779 ], [ %8787, %8784 ]
  %8792 = phi float [ %8783, %8779 ], [ %8789, %8784 ]
  %8793 = fcmp fast olt float %8772, %8625
  %8794 = icmp slt i32 %8769, 3
  %8795 = and i1 %8794, %8793
  br i1 %8795, label %8761, label %8796

; <label>:8796                                    ; preds = %8790
  br label %8797

; <label>:8797                                    ; preds = %8796, %8754
  %8798 = phi float [ %8623, %8754 ], [ %8791, %8796 ]
  %8799 = phi float [ %8624, %8754 ], [ %8792, %8796 ]
  %8800 = fsub fast float %8539, %8798
  %8801 = select i1 %8541, float %8798, float %8800
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8810 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8812 = extractvalue %dx.types.CBufRet.f32 %8811, 3
  %8813 = call float @dx.op.binary.f32(i32 36, float %8799, float %8812)  ; FMin(a,b)
  %8814 = fmul fast float %8810, %8801
  %8815 = call float @dx.op.unary.f32(i32 7, float %8814)  ; Saturate(value)
  %8816 = fsub fast float %8807, %8803
  %8817 = fsub fast float %8808, %8804
  %8818 = fsub fast float %8809, %8805
  %8819 = fmul fast float %8815, %8816
  %8820 = fmul fast float %8815, %8817
  %8821 = fmul fast float %8815, %8818
  %8822 = fadd fast float %8819, %8803
  %8823 = fadd fast float %8820, %8804
  %8824 = fadd fast float %8821, %8805
  %8825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8825, 0
  %8827 = extractvalue %dx.types.CBufRet.f32 %8825, 1
  %8828 = fadd fast float %8827, %8826
  %8829 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8825, 2
  %8831 = extractvalue %dx.types.CBufRet.f32 %8825, 3
  %8832 = fadd fast float %8831, %8830
  %8833 = call float @dx.op.unary.f32(i32 7, float %8832)  ; Saturate(value)
  %8834 = fmul fast float %8829, %8813
  %8835 = fmul fast float %8834, %8833
  br label %8836

; <label>:8836                                    ; preds = %8797, %8716, %8555, %8537, %8535
  %8837 = phi float [ %8564, %8555 ], [ %8719, %8716 ], [ %8801, %8797 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8838 = phi float [ %8598, %8555 ], [ %8753, %8716 ], [ %8835, %8797 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8839 = phi float [ %8585, %8555 ], [ %8740, %8716 ], [ %8822, %8797 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8840 = phi float [ %8586, %8555 ], [ %8741, %8716 ], [ %8823, %8797 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8841 = phi float [ %8587, %8555 ], [ %8742, %8716 ], [ %8824, %8797 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8842 = fmul fast float %8478, %8838
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 2
  %8845 = fsub fast float %8485, %8844
  %8846 = fcmp fast olt float %8842, -2.000000e+01
  %8847 = call float @dx.op.unary.f32(i32 21, float %8842)  ; Exp(value)
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 2
  %8850 = extractvalue %dx.types.CBufRet.f32 %8848, 3
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 2
  %8853 = fmul fast float %8850, %8845
  %8854 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8855 = fsub fast float 1.000000e+00, %8854
  %8856 = fmul fast float %8470, 5.000000e-01
  %8857 = fadd fast float %8856, 5.000000e-01
  %8858 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8859 = fsub fast float 1.000000e+00, %8858
  %8860 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8855)  ; FMax(a,b)
  %8861 = fdiv fast float %8859, %8860
  %8862 = fsub fast float %8845, %8427
  %8863 = call float @dx.op.unary.f32(i32 6, float %8862)  ; FAbs(value)
  %8864 = fmul fast float %8863, %8849
  %8865 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8866 = fsub fast float 1.000000e+00, %8864
  %8867 = fmul fast float %8866, %8865
  %8868 = fadd fast float %8867, %8864
  %8869 = fmul fast float %8852, %8845
  %8870 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8871 = fsub fast float 1.000000e+00, %8868
  %8872 = fmul fast float %8871, %8870
  %8873 = fadd fast float %8872, %8868
  %8874 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8875 = fadd fast float %8847, -1.000000e+00
  %8876 = select i1 %8846, float -1.000000e+00, float %8875
  %8877 = fmul fast float %8874, %8876
  %8878 = fadd fast float %8877, 1.000000e+00
  %8879 = fsub fast float -0.000000e+00, %8877
  %8880 = fmul fast float %8839, %8879
  %8881 = fmul fast float %8840, %8879
  %8882 = fmul fast float %8841, %8879
  br label %8883

; <label>:8883                                    ; preds = %8836, %8436
  %8884 = phi float [ %8837, %8836 ], [ 0.000000e+00, %8436 ]
  %8885 = phi float [ %8878, %8836 ], [ 1.000000e+00, %8436 ]
  %8886 = phi float [ %8880, %8836 ], [ 0.000000e+00, %8436 ]
  %8887 = phi float [ %8881, %8836 ], [ 0.000000e+00, %8436 ]
  %8888 = phi float [ %8882, %8836 ], [ 0.000000e+00, %8436 ]
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 1
  %8891 = fsub fast float 1.000000e+00, %8885
  %8892 = fmul fast float %8891, %8471
  %8893 = fmul fast float %8892, %8890
  %8894 = fsub fast float %8471, %8893
  br i1 %8464, label %8895, label %8924, !dx.controlflow.hints !161

; <label>:8895                                    ; preds = %8883
  %8896 = fmul fast float %8472, %8461
  %8897 = fadd fast float %8896, %8462
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fmul fast float %8443, %8894
  %8900 = fsub fast float -0.000000e+00, %8899
  %8901 = fmul fast float %8444, %8894
  %8902 = fsub fast float -0.000000e+00, %8901
  %8903 = call float @dx.op.unary.f32(i32 21, float %8900)  ; Exp(value)
  %8904 = call float @dx.op.unary.f32(i32 21, float %8902)  ; Exp(value)
  %8905 = call float @dx.op.binary.f32(i32 35, float %8451, float %8903)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 35, float %8451, float %8904)  ; FMax(a,b)
  %8907 = fsub fast float %8906, %8905
  %8908 = fmul fast float %8907, %8898
  %8909 = fadd fast float %8908, %8905
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fsub fast float %8448, %8453
  %8912 = fsub fast float %8449, %8454
  %8913 = fsub fast float %8450, %8455
  %8914 = fmul fast float %8898, %8911
  %8915 = fmul fast float %8898, %8912
  %8916 = fmul fast float %8898, %8913
  %8917 = fadd fast float %8914, %8453
  %8918 = fadd fast float %8915, %8454
  %8919 = fadd fast float %8916, %8455
  %8920 = fsub fast float 1.000000e+00, %8910
  %8921 = fmul fast float %8920, %8917
  %8922 = fmul fast float %8920, %8918
  %8923 = fmul fast float %8920, %8919
  br label %8983

; <label>:8924                                    ; preds = %8883
  %8925 = fmul fast float %8894, %8460
  %8926 = call float @dx.op.unary.f32(i32 7, float %8925)  ; Saturate(value)
  %8927 = fsub fast float 2.000000e+00, %8926
  %8928 = fmul fast float %8926, 9.921875e-01
  %8929 = fmul fast float %8928, %8927
  %8930 = fadd fast float %8929, 3.906250e-03
  %8931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8930, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8932 = extractvalue %dx.types.ResRet.f32 %8931, 0
  %8933 = fsub fast float %8926, %8932
  %8934 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8933)  ; FMax(a,b)
  %8935 = fmul fast float %8446, %8427
  %8936 = call float @dx.op.unary.f32(i32 6, float %8935)  ; FAbs(value)
  %8937 = fcmp fast ogt float %8936, 0x3EB0C6F7A0000000
  br i1 %8937, label %8938, label %8944, !dx.controlflow.hints !162

; <label>:8938                                    ; preds = %8924
  %8939 = fmul fast float %8935, 0xBFF7154760000000
  %8940 = call float @dx.op.unary.f32(i32 21, float %8939)  ; Exp(value)
  %8941 = fsub fast float 1.000000e+00, %8940
  %8942 = fdiv fast float %8941, %8935
  %8943 = fmul fast float %8942, %8456
  br label %8944

; <label>:8944                                    ; preds = %8938, %8924
  %8945 = phi float [ %8943, %8938 ], [ %8456, %8924 ]
  %8946 = fadd fast float %8945, %8458
  %8947 = fmul fast float %8946, %8934
  %8948 = fmul fast float %8443, %8947
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = fmul fast float %8444, %8947
  %8951 = fsub fast float -0.000000e+00, %8950
  %8952 = fmul fast float %8445, %8947
  %8953 = fsub fast float -0.000000e+00, %8952
  %8954 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8955 = call float @dx.op.unary.f32(i32 21, float %8951)  ; Exp(value)
  %8956 = call float @dx.op.unary.f32(i32 21, float %8953)  ; Exp(value)
  %8957 = fmul fast float %8472, %8472
  %8958 = fadd fast float %8957, 1.000000e+00
  %8959 = fmul fast float %8958, 0x3FAE8EC8A0000000
  %8960 = fmul fast float %8959, %8453
  %8961 = fmul fast float %8959, %8454
  %8962 = fmul fast float %8959, %8455
  %8963 = fmul fast float %8472, %8451
  %8964 = fsub fast float 1.000000e+00, %8963
  %8965 = fmul fast float %8451, %8451
  %8966 = fsub fast float 1.000000e+00, %8965
  %8967 = fmul fast float %8966, 0x3FB45F3060000000
  %8968 = fmul fast float %8964, %8964
  %8969 = fdiv fast float 1.000000e+00, %8968
  %8970 = fmul fast float %8967, %8969
  %8971 = fmul fast float %8970, %8448
  %8972 = fmul fast float %8970, %8449
  %8973 = fmul fast float %8970, %8450
  %8974 = fadd fast float %8971, %8960
  %8975 = fadd fast float %8972, %8961
  %8976 = fadd fast float %8973, %8962
  %8977 = fsub fast float 1.000000e+00, %8954
  %8978 = fsub fast float 1.000000e+00, %8955
  %8979 = fsub fast float 1.000000e+00, %8956
  %8980 = fmul fast float %8974, %8977
  %8981 = fmul fast float %8975, %8978
  %8982 = fmul fast float %8976, %8979
  br label %8983

; <label>:8983                                    ; preds = %8944, %8895
  %8984 = phi float [ %8921, %8895 ], [ %8980, %8944 ]
  %8985 = phi float [ %8922, %8895 ], [ %8981, %8944 ]
  %8986 = phi float [ %8923, %8895 ], [ %8982, %8944 ]
  %8987 = phi float [ %8910, %8895 ], [ %8954, %8944 ]
  %8988 = phi float [ %8910, %8895 ], [ %8955, %8944 ]
  %8989 = phi float [ %8910, %8895 ], [ %8956, %8944 ]
  br i1 %8480, label %8990, label %9188, !dx.controlflow.hints !163

; <label>:8990                                    ; preds = %8983
  %8991 = extractvalue %dx.types.CBufRet.f32 %8889, 0
  %8992 = fmul fast float %8991, %8891
  %8993 = fsub fast float %8886, %8984
  %8994 = fsub fast float %8887, %8985
  %8995 = fsub fast float %8888, %8986
  %8996 = fmul fast float %8992, %8993
  %8997 = fmul fast float %8992, %8994
  %8998 = fmul fast float %8992, %8995
  %8999 = fadd fast float %8996, %8984
  %9000 = fadd fast float %8997, %8985
  %9001 = fadd fast float %8998, %8986
  %9002 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8987)  ; FMax(a,b)
  %9003 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8988)  ; FMax(a,b)
  %9004 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8989)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8885)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 35, float %8884, float %8894)  ; FMax(a,b)
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9006)  ; FMax(a,b)
  %9008 = fdiv fast float %8884, %9007
  %9009 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  %9010 = fdiv fast float %8894, %9007
  %9011 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  %9012 = fcmp fast une float %9005, 1.000000e+00
  br i1 %9012, label %9013, label %9026, !dx.controlflow.hints !164

; <label>:9013                                    ; preds = %8990
  %9014 = call float @dx.op.unary.f32(i32 23, float %9005)  ; Log(value)
  %9015 = fmul fast float %9014, 0x3FE62E4300000000
  %9016 = fmul fast float %8886, %9015
  %9017 = fsub fast float -0.000000e+00, %9016
  %9018 = fmul fast float %8887, %9015
  %9019 = fsub fast float -0.000000e+00, %9018
  %9020 = fmul fast float %8888, %9015
  %9021 = fsub fast float -0.000000e+00, %9020
  %9022 = fsub fast float 1.000000e+00, %9005
  %9023 = fdiv fast float %9017, %9022
  %9024 = fdiv fast float %9019, %9022
  %9025 = fdiv fast float %9021, %9022
  br label %9026

; <label>:9026                                    ; preds = %9013, %8990
  %9027 = phi float [ %9023, %9013 ], [ %8886, %8990 ]
  %9028 = phi float [ %9024, %9013 ], [ %8887, %8990 ]
  %9029 = phi float [ %9025, %9013 ], [ %8888, %8990 ]
  %9030 = phi float [ %9015, %9013 ], [ 0.000000e+00, %8990 ]
  %9031 = fcmp fast une float %9002, 1.000000e+00
  br i1 %9031, label %9032, label %9039, !dx.controlflow.hints !165

; <label>:9032                                    ; preds = %9026
  %9033 = call float @dx.op.unary.f32(i32 23, float %9002)  ; Log(value)
  %9034 = fmul fast float %9033, 0x3FE62E4300000000
  %9035 = fmul fast float %8999, %9034
  %9036 = fsub fast float -0.000000e+00, %9035
  %9037 = fsub fast float 1.000000e+00, %9002
  %9038 = fdiv fast float %9036, %9037
  br label %9039

; <label>:9039                                    ; preds = %9032, %9026
  %9040 = phi float [ %9038, %9032 ], [ %8999, %9026 ]
  %9041 = phi float [ %9034, %9032 ], [ 0.000000e+00, %9026 ]
  %9042 = fcmp fast une float %9003, 1.000000e+00
  br i1 %9042, label %9043, label %9050, !dx.controlflow.hints !165

; <label>:9043                                    ; preds = %9039
  %9044 = call float @dx.op.unary.f32(i32 23, float %9003)  ; Log(value)
  %9045 = fmul fast float %9044, 0x3FE62E4300000000
  %9046 = fmul fast float %9000, %9045
  %9047 = fsub fast float -0.000000e+00, %9046
  %9048 = fsub fast float 1.000000e+00, %9003
  %9049 = fdiv fast float %9047, %9048
  br label %9050

; <label>:9050                                    ; preds = %9043, %9039
  %9051 = phi float [ %9049, %9043 ], [ %9000, %9039 ]
  %9052 = phi float [ %9045, %9043 ], [ 0.000000e+00, %9039 ]
  %9053 = fcmp fast une float %9004, 1.000000e+00
  br i1 %9053, label %9054, label %9061, !dx.controlflow.hints !165

; <label>:9054                                    ; preds = %9050
  %9055 = call float @dx.op.unary.f32(i32 23, float %9004)  ; Log(value)
  %9056 = fmul fast float %9055, 0x3FE62E4300000000
  %9057 = fmul fast float %9001, %9056
  %9058 = fsub fast float -0.000000e+00, %9057
  %9059 = fsub fast float 1.000000e+00, %9004
  %9060 = fdiv fast float %9058, %9059
  br label %9061

; <label>:9061                                    ; preds = %9054, %9050
  %9062 = phi float [ %9060, %9054 ], [ %9001, %9050 ]
  %9063 = phi float [ %9056, %9054 ], [ 0.000000e+00, %9050 ]
  %9064 = fmul fast float %9027, %9011
  %9065 = fmul fast float %9028, %9011
  %9066 = fmul fast float %9029, %9011
  %9067 = fmul fast float %9030, %9011
  %9068 = fmul fast float %9040, %9009
  %9069 = fmul fast float %9051, %9009
  %9070 = fmul fast float %9062, %9009
  %9071 = fmul fast float %9041, %9009
  %9072 = fmul fast float %9052, %9009
  %9073 = fmul fast float %9063, %9009
  %9074 = fadd fast float %9068, %9064
  %9075 = fadd fast float %9069, %9065
  %9076 = fadd fast float %9070, %9066
  %9077 = fadd fast float %9071, %9067
  %9078 = fadd fast float %9072, %9067
  %9079 = fadd fast float %9073, %9067
  %9080 = fcmp fast une float %9077, 0.000000e+00
  br i1 %9080, label %9081, label %9088, !dx.controlflow.hints !166

; <label>:9081                                    ; preds = %9061
  %9082 = fmul fast float %9077, 0x3FF7154760000000
  %9083 = call float @dx.op.unary.f32(i32 21, float %9082)  ; Exp(value)
  %9084 = fsub fast float 1.000000e+00, %9083
  %9085 = fmul fast float %9074, %9084
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = fdiv fast float %9086, %9077
  br label %9088

; <label>:9088                                    ; preds = %9081, %9061
  %9089 = phi float [ %9083, %9081 ], [ 1.000000e+00, %9061 ]
  %9090 = phi float [ %9087, %9081 ], [ %9074, %9061 ]
  %9091 = fcmp fast une float %9078, 0.000000e+00
  br i1 %9091, label %9092, label %9099, !dx.controlflow.hints !166

; <label>:9092                                    ; preds = %9088
  %9093 = fmul fast float %9078, 0x3FF7154760000000
  %9094 = call float @dx.op.unary.f32(i32 21, float %9093)  ; Exp(value)
  %9095 = fsub fast float 1.000000e+00, %9094
  %9096 = fmul fast float %9075, %9095
  %9097 = fsub fast float -0.000000e+00, %9096
  %9098 = fdiv fast float %9097, %9078
  br label %9099

; <label>:9099                                    ; preds = %9092, %9088
  %9100 = phi float [ %9094, %9092 ], [ 1.000000e+00, %9088 ]
  %9101 = phi float [ %9098, %9092 ], [ %9075, %9088 ]
  %9102 = fcmp fast une float %9079, 0.000000e+00
  br i1 %9102, label %9103, label %9110, !dx.controlflow.hints !166

; <label>:9103                                    ; preds = %9099
  %9104 = fmul fast float %9079, 0x3FF7154760000000
  %9105 = call float @dx.op.unary.f32(i32 21, float %9104)  ; Exp(value)
  %9106 = fsub fast float 1.000000e+00, %9105
  %9107 = fmul fast float %9076, %9106
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = fdiv fast float %9108, %9079
  br label %9110

; <label>:9110                                    ; preds = %9103, %9099
  %9111 = phi float [ %9105, %9103 ], [ 1.000000e+00, %9099 ]
  %9112 = phi float [ %9109, %9103 ], [ %9076, %9099 ]
  %9113 = fcmp fast ogt float %9009, %9011
  br i1 %9113, label %9114, label %9134

; <label>:9114                                    ; preds = %9110
  %9115 = fsub fast float 1.000000e+00, %9011
  %9116 = fmul fast float %9027, %9115
  %9117 = fmul fast float %9028, %9115
  %9118 = fmul fast float %9029, %9115
  %9119 = fmul fast float %9030, %9115
  %9120 = fcmp fast une float %9119, 0.000000e+00
  br i1 %9120, label %9121, label %9172, !dx.controlflow.hints !167

; <label>:9121                                    ; preds = %9114
  %9122 = fmul fast float %9119, 0x3FF7154760000000
  %9123 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9124 = fsub fast float 1.000000e+00, %9123
  %9125 = fmul fast float %9116, %9124
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fmul fast float %9117, %9124
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = fmul fast float %9118, %9124
  %9130 = fsub fast float -0.000000e+00, %9129
  %9131 = fdiv fast float %9126, %9119
  %9132 = fdiv fast float %9128, %9119
  %9133 = fdiv fast float %9130, %9119
  br label %9172

; <label>:9134                                    ; preds = %9110
  %9135 = fsub fast float 1.000000e+00, %9009
  %9136 = fmul fast float %9040, %9135
  %9137 = fmul fast float %9051, %9135
  %9138 = fmul fast float %9062, %9135
  %9139 = fmul fast float %9041, %9135
  %9140 = fmul fast float %9052, %9135
  %9141 = fmul fast float %9063, %9135
  %9142 = fcmp fast une float %9139, 0.000000e+00
  br i1 %9142, label %9143, label %9150, !dx.controlflow.hints !166

; <label>:9143                                    ; preds = %9134
  %9144 = fmul fast float %9139, 0x3FF7154760000000
  %9145 = call float @dx.op.unary.f32(i32 21, float %9144)  ; Exp(value)
  %9146 = fsub fast float 1.000000e+00, %9145
  %9147 = fmul fast float %9136, %9146
  %9148 = fsub fast float -0.000000e+00, %9147
  %9149 = fdiv fast float %9148, %9139
  br label %9150

; <label>:9150                                    ; preds = %9143, %9134
  %9151 = phi float [ %9149, %9143 ], [ %9136, %9134 ]
  %9152 = phi float [ %9145, %9143 ], [ 1.000000e+00, %9134 ]
  %9153 = fcmp fast une float %9140, 0.000000e+00
  br i1 %9153, label %9154, label %9161, !dx.controlflow.hints !166

; <label>:9154                                    ; preds = %9150
  %9155 = fmul fast float %9140, 0x3FF7154760000000
  %9156 = call float @dx.op.unary.f32(i32 21, float %9155)  ; Exp(value)
  %9157 = fsub fast float 1.000000e+00, %9156
  %9158 = fmul fast float %9137, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fdiv fast float %9159, %9140
  br label %9161

; <label>:9161                                    ; preds = %9154, %9150
  %9162 = phi float [ %9160, %9154 ], [ %9137, %9150 ]
  %9163 = phi float [ %9156, %9154 ], [ 1.000000e+00, %9150 ]
  %9164 = fcmp fast une float %9141, 0.000000e+00
  br i1 %9164, label %9165, label %9172, !dx.controlflow.hints !166

; <label>:9165                                    ; preds = %9161
  %9166 = fmul fast float %9141, 0x3FF7154760000000
  %9167 = call float @dx.op.unary.f32(i32 21, float %9166)  ; Exp(value)
  %9168 = fsub fast float 1.000000e+00, %9167
  %9169 = fmul fast float %9138, %9168
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fdiv fast float %9170, %9141
  br label %9172

; <label>:9172                                    ; preds = %9165, %9161, %9121, %9114
  %9173 = phi float [ %9171, %9165 ], [ %9133, %9121 ], [ %9118, %9114 ], [ %9138, %9161 ]
  %9174 = phi float [ %9162, %9165 ], [ %9132, %9121 ], [ %9117, %9114 ], [ %9162, %9161 ]
  %9175 = phi float [ %9151, %9165 ], [ %9131, %9121 ], [ %9116, %9114 ], [ %9151, %9161 ]
  %9176 = phi float [ %9167, %9165 ], [ %9123, %9121 ], [ 1.000000e+00, %9114 ], [ 1.000000e+00, %9161 ]
  %9177 = phi float [ %9163, %9165 ], [ %9123, %9121 ], [ 1.000000e+00, %9114 ], [ %9163, %9161 ]
  %9178 = phi float [ %9152, %9165 ], [ %9123, %9121 ], [ 1.000000e+00, %9114 ], [ %9152, %9161 ]
  %9179 = fmul fast float %9178, %9090
  %9180 = fmul fast float %9177, %9101
  %9181 = fmul fast float %9176, %9112
  %9182 = fadd fast float %9179, %9175
  %9183 = fadd fast float %9180, %9174
  %9184 = fadd fast float %9181, %9173
  %9185 = fmul fast float %9178, %9089
  %9186 = fmul fast float %9177, %9100
  %9187 = fmul fast float %9176, %9111
  br label %9188

; <label>:9188                                    ; preds = %9172, %8983
  %9189 = phi float [ %9187, %9172 ], [ %8989, %8983 ]
  %9190 = phi float [ %9186, %9172 ], [ %8988, %8983 ]
  %9191 = phi float [ %9185, %9172 ], [ %8987, %8983 ]
  %9192 = phi float [ %9184, %9172 ], [ %8986, %8983 ]
  %9193 = phi float [ %9183, %9172 ], [ %8985, %8983 ]
  %9194 = phi float [ %9182, %9172 ], [ %8984, %8983 ]
  %9195 = fmul fast float %9194, %8144
  %9196 = fmul fast float %9193, %8144
  %9197 = fmul fast float %9192, %8144
  %9198 = fmul fast float %9191, %8435
  %9199 = call float @dx.op.dot3.f32(i32 55, float %9191, float %9190, float %9189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9200 = call float @dx.op.dot3.f32(i32 55, float %9195, float %9196, float %9197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9201 = select i1 %223, float %9199, float %9191
  %9202 = select i1 %223, float %9199, float %9190
  %9203 = select i1 %223, float 1.000000e+00, float %9189
  %9204 = select i1 %223, float %9200, float %9195
  %9205 = select i1 %223, float 0.000000e+00, float %9196
  %9206 = select i1 %223, float 0.000000e+00, float %9197
  %9207 = fmul fast float %9201, %8429
  %9208 = fmul fast float %9202, %8430
  %9209 = fmul fast float %9203, %8431
  %9210 = fadd fast float %9207, %9204
  %9211 = fadd fast float %9208, %9205
  %9212 = fadd fast float %9206, %9209
  %9213 = fmul fast float %9201, %8432
  %9214 = fmul fast float %9202, %8433
  %9215 = fmul fast float %9203, %8434
  %9216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9217 = extractvalue %dx.types.CBufRet.i32 %9216, 0
  %9218 = icmp eq i32 %9217, 0
  br i1 %9218, label %9586, label %9219, !dx.controlflow.hints !168

; <label>:9219                                    ; preds = %9188
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9223 = fmul fast float %9221, %102
  %9224 = fmul fast float %9222, %103
  %9225 = fmul fast float %9223, 2.000000e+00
  %9226 = fmul fast float %9224, 2.000000e+00
  %9227 = fsub fast float 1.000000e+00, %9225
  %9228 = fsub fast float 1.000000e+00, %9226
  %9229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9230 = extractvalue %dx.types.CBufRet.f32 %9229, 0
  %9231 = extractvalue %dx.types.CBufRet.f32 %9229, 1
  %9232 = extractvalue %dx.types.CBufRet.f32 %9229, 2
  %9233 = fmul fast float %9227, %9230
  %9234 = fmul fast float %9227, %9231
  %9235 = fmul fast float %9227, %9232
  %9236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.CBufRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.CBufRet.f32 %9236, 2
  %9240 = fmul fast float %9228, %9237
  %9241 = fmul fast float %9228, %9238
  %9242 = fmul fast float %9228, %9239
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9246 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9247 = fadd fast float %9240, %9244
  %9248 = fadd fast float %9247, %9233
  %9249 = fadd fast float %9241, %9245
  %9250 = fadd fast float %9249, %9234
  %9251 = fadd fast float %9242, %9246
  %9252 = fadd fast float %9251, %9235
  %9253 = fmul fast float %9248, %8428
  %9254 = fmul fast float %9250, %8428
  %9255 = fmul fast float %9252, %8428
  %9256 = fmul fast float %9253, %9253
  %9257 = fmul fast float %9254, %9254
  %9258 = fadd fast float %9256, %9257
  %9259 = fmul fast float %9255, %9255
  %9260 = fadd fast float %9258, %9259
  %9261 = call float @dx.op.unary.f32(i32 24, float %9260)  ; Sqrt(value)
  %9262 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %9263 = fsub fast float %9261, %9262
  %9264 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %9265 = fmul fast float %9263, %9264
  %9266 = call float @dx.op.unary.f32(i32 7, float %9265)  ; Saturate(value)
  %9267 = fadd fast float %9266, -5.000000e-01
  %9268 = fmul fast float %9267, 2.000000e+00
  %9269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.f32 %9269, 2
  %9271 = call float @dx.op.binary.f32(i32 36, float %9270, float %9268)  ; FMin(a,b)
  %9272 = fsub fast float -0.000000e+00, %9270
  %9273 = fcmp fast ogt float %9271, %9272
  br i1 %9273, label %9274, label %9586, !dx.controlflow.hints !169

; <label>:9274                                    ; preds = %9219
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 3
  %9277 = fcmp fast ogt float %9276, 0.000000e+00
  br i1 %9277, label %9278, label %9353, !dx.controlflow.hints !170

; <label>:9278                                    ; preds = %9274
  %9279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9280 = extractvalue %dx.types.Dimensions %9279, 0
  %9281 = sitofp i32 %9280 to float
  %9282 = extractvalue %dx.types.Dimensions %9279, 1
  %9283 = sitofp i32 %9282 to float
  %9284 = fmul fast float %9223, %9281
  %9285 = fmul fast float %9224, %9283
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 1
  %9288 = fsub fast float -0.000000e+00, %9287
  %9289 = fptoui float %9288 to i32
  %9290 = fptoui float %9284 to i32
  %9291 = fptoui float %9285 to i32
  %9292 = and i32 %9289, 31
  %9293 = lshr i32 %9290, %9292
  %9294 = lshr i32 %9291, %9292
  %9295 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9289, i32 %9293, i32 %9294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = fcmp fast olt float %9296, -1.000000e+00
  %9298 = fcmp fast ogt float %9296, -1.000000e+00
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 1
  %9301 = select i1 %9298, float %9300, float 1.000000e+00
  %9302 = fadd fast float %9296, 1.000000e+00
  %9303 = fmul fast float %9301, %9302
  %9304 = call float @dx.op.unary.f32(i32 6, float %9303)  ; FAbs(value)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9299, 3
  %9306 = fcmp fast oge float %9304, %9305
  %9307 = select i1 %9306, float 0x4197782600000000, float %9304
  %9308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.CBufRet.f32 %9308, 1
  %9311 = extractvalue %dx.types.CBufRet.f32 %9308, 2
  %9312 = select i1 %9297, float %9309, float %9230
  %9313 = select i1 %9297, float %9310, float %9231
  %9314 = select i1 %9297, float %9311, float %9232
  %9315 = fmul fast float %9312, %9227
  %9316 = fmul fast float %9313, %9227
  %9317 = fmul fast float %9314, %9227
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.CBufRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9322 = select i1 %9297, float %9319, float %9237
  %9323 = select i1 %9297, float %9320, float %9238
  %9324 = select i1 %9297, float %9321, float %9239
  %9325 = fmul fast float %9322, %9228
  %9326 = fmul fast float %9323, %9228
  %9327 = fmul fast float %9324, %9228
  %9328 = fadd fast float %9325, %9315
  %9329 = fadd fast float %9326, %9316
  %9330 = fadd fast float %9327, %9317
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 0
  %9333 = extractvalue %dx.types.CBufRet.f32 %9331, 1
  %9334 = extractvalue %dx.types.CBufRet.f32 %9331, 2
  %9335 = select i1 %9297, float %9332, float %9244
  %9336 = select i1 %9297, float %9333, float %9245
  %9337 = select i1 %9297, float %9334, float %9246
  %9338 = fadd fast float %9328, %9335
  %9339 = fadd fast float %9329, %9336
  %9340 = fadd fast float %9330, %9337
  %9341 = fmul fast float %9338, %9307
  %9342 = fmul fast float %9339, %9307
  %9343 = fmul fast float %9340, %9307
  %9344 = fmul fast float %9341, %9341
  %9345 = fmul fast float %9342, %9342
  %9346 = fadd fast float %9344, %9345
  %9347 = fmul fast float %9343, %9343
  %9348 = fadd fast float %9346, %9347
  %9349 = call float @dx.op.unary.f32(i32 24, float %9348)  ; Sqrt(value)
  %9350 = fsub fast float %9349, %9262
  %9351 = fmul fast float %9350, %9264
  %9352 = call float @dx.op.unary.f32(i32 7, float %9351)  ; Saturate(value)
  br label %9353

; <label>:9353                                    ; preds = %9278, %9274
  %9354 = phi float [ %9352, %9278 ], [ 1.000000e+00, %9274 ]
  %9355 = fmul fast float %9271, 5.000000e-01
  %9356 = fadd fast float %9355, 5.000000e-01
  %9357 = call float @dx.op.unary.f32(i32 22, float %9356)  ; Frc(value)
  %9358 = call float @dx.op.unary.f32(i32 27, float %9357)  ; Round_ni(value)
  %9359 = call float @dx.op.unary.f32(i32 22, float %9357)  ; Frc(value)
  %9360 = fmul fast float %9359, 2.000000e+00
  %9361 = fadd fast float %9360, -1.000000e+00
  %9362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9223, float %9224, float %9358, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9363 = extractvalue %dx.types.ResRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.ResRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.ResRet.f32 %9362, 2
  %9366 = extractvalue %dx.types.ResRet.f32 %9362, 3
  %9367 = fadd fast float %9363, -5.000000e-01
  %9368 = fadd fast float %9365, -5.000000e-01
  %9369 = fmul fast float %9367, 0xBFD5555560000000
  %9370 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9368, float %9369)  ; FMad(a,b,c)
  %9371 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9364, float 0.000000e+00)  ; FMad(a,b,c)
  %9372 = fadd fast float %9371, %9366
  %9373 = fmul fast float %9367, -7.500000e-01
  %9374 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9368, float %9373)  ; FMad(a,b,c)
  %9375 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9364, float 0.000000e+00)  ; FMad(a,b,c)
  %9376 = fadd fast float %9375, %9366
  %9377 = call float @dx.op.binary.f32(i32 35, float %9370, float -1.000000e+00)  ; FMax(a,b)
  %9378 = call float @dx.op.binary.f32(i32 35, float %9372, float -1.000000e+00)  ; FMax(a,b)
  %9379 = call float @dx.op.binary.f32(i32 35, float %9374, float -1.000000e+00)  ; FMax(a,b)
  %9380 = call float @dx.op.binary.f32(i32 35, float %9376, float -1.000000e+00)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 36, float %9377, float 1.000000e+00)  ; FMin(a,b)
  %9382 = call float @dx.op.binary.f32(i32 36, float %9378, float 1.000000e+00)  ; FMin(a,b)
  %9383 = call float @dx.op.binary.f32(i32 36, float %9379, float 1.000000e+00)  ; FMin(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9380, float 1.000000e+00)  ; FMin(a,b)
  %9385 = fcmp fast olt float %9381, 0x3FEFFF8020000000
  br i1 %9385, label %9386, label %9501, !dx.controlflow.hints !171

; <label>:9386                                    ; preds = %9353
  %9387 = extractvalue %dx.types.CBufRet.f32 %9269, 3
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9393 = fsub fast float %9389, %9381
  %9394 = fsub fast float %9390, %9382
  %9395 = fsub fast float %9391, %9383
  %9396 = fsub fast float %9392, %9384
  %9397 = fmul fast float %9393, %9387
  %9398 = fmul fast float %9394, %9387
  %9399 = fmul fast float %9395, %9387
  %9400 = fmul fast float %9396, %9387
  %9401 = fadd fast float %9397, %9381
  %9402 = fadd fast float %9398, %9382
  %9403 = fsub fast float -0.000000e+00, %9402
  %9404 = fadd fast float %9399, %9383
  %9405 = fadd fast float %9400, %9384
  %9406 = fmul fast float %9401, %9401
  %9407 = fsub fast float %9402, %9406
  %9408 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9407)  ; FMax(a,b)
  %9409 = fdiv fast float 1.000000e+00, %9408
  %9410 = fmul fast float %9402, %9401
  %9411 = fsub fast float %9404, %9410
  %9412 = fsub fast float %9361, %9401
  %9413 = fmul fast float %9361, %9361
  %9414 = fsub fast float %9413, %9402
  %9415 = fmul fast float %9412, %9409
  %9416 = fmul fast float %9415, %9411
  %9417 = fsub fast float %9414, %9416
  %9418 = fmul fast float %9402, %9402
  %9419 = fsub fast float %9405, %9418
  %9420 = fmul fast float %9411, %9411
  %9421 = fmul fast float %9420, %9409
  %9422 = fsub fast float %9419, %9421
  %9423 = fdiv fast float %9417, %9422
  %9424 = fmul fast float %9411, %9423
  %9425 = fsub fast float %9412, %9424
  %9426 = fmul fast float %9425, %9409
  %9427 = fmul fast float %9426, %9401
  %9428 = fsub fast float 1.000000e+00, %9427
  %9429 = fmul fast float %9402, %9423
  %9430 = fsub fast float %9428, %9429
  %9431 = fmul fast float %9426, %9426
  %9432 = fmul fast float %9423, 4.000000e+00
  %9433 = fmul fast float %9432, %9430
  %9434 = fsub fast float %9431, %9433
  %9435 = call float @dx.op.unary.f32(i32 24, float %9434)  ; Sqrt(value)
  %9436 = fcmp fast oge float %9426, 0.000000e+00
  %9437 = fsub fast float -0.000000e+00, %9435
  %9438 = select i1 %9436, float %9437, float %9435
  %9439 = fsub fast float %9438, %9426
  %9440 = fdiv fast float %9439, %9423
  %9441 = fdiv fast float %9430, %9439
  %9442 = fmul fast float %9440, 5.000000e-01
  %9443 = fmul fast float %9441, 2.000000e+00
  %9444 = select i1 %9436, float %9442, float %9443
  %9445 = select i1 %9436, float %9443, float %9442
  %9446 = call float @dx.op.binary.f32(i32 35, float %9444, float %9445)  ; FMax(a,b)
  %9447 = call float @dx.op.binary.f32(i32 36, float %9444, float %9445)  ; FMin(a,b)
  %9448 = fcmp fast ogt float %9361, %9447
  br i1 %9448, label %9449, label %9459

; <label>:9449                                    ; preds = %9386
  %9450 = fsub fast float %9361, %9447
  %9451 = fsub fast float %9446, %9447
  %9452 = fmul fast float %9450, %9451
  %9453 = fmul fast float %9446, %9361
  %9454 = fadd fast float %9446, %9361
  %9455 = fmul fast float %9454, %9401
  %9456 = fadd fast float %9453, %9402
  %9457 = fsub fast float %9456, %9455
  %9458 = fdiv fast float %9457, %9452
  br label %9459

; <label>:9459                                    ; preds = %9449, %9386
  %9460 = phi float [ %9458, %9449 ], [ 0.000000e+00, %9386 ]
  %9461 = fcmp fast ogt float %9361, %9446
  %9462 = fsub fast float %9361, %9446
  br i1 %9461, label %9463, label %9473

; <label>:9463                                    ; preds = %9459
  %9464 = fsub fast float %9446, %9447
  %9465 = fmul fast float %9464, %9462
  %9466 = fmul fast float %9447, %9361
  %9467 = fadd fast float %9447, %9361
  %9468 = fmul fast float %9467, %9401
  %9469 = fsub fast float %9403, %9466
  %9470 = fadd fast float %9469, %9468
  %9471 = fdiv fast float %9470, %9465
  %9472 = fadd fast float %9471, %9460
  br label %9473

; <label>:9473                                    ; preds = %9463, %9459
  %9474 = phi float [ %9472, %9463 ], [ %9460, %9459 ]
  %9475 = fsub fast float %9361, %9447
  %9476 = fmul fast float %9475, %9462
  %9477 = fmul fast float %9447, %9446
  %9478 = fadd fast float %9447, %9446
  %9479 = fmul fast float %9478, %9401
  %9480 = fadd fast float %9477, %9402
  %9481 = fsub fast float %9480, %9479
  %9482 = fdiv fast float %9481, %9476
  %9483 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9484 = fcmp fast oeq float %8156, 0.000000e+00
  %9485 = extractvalue %dx.types.CBufRet.f32 %9269, 0
  %9486 = fcmp fast oeq float %9485, 0.000000e+00
  %9487 = or i1 %9484, %9486
  %9488 = fmul fast float %9485, 2.000000e+00
  %9489 = fadd fast float %9270, %9271
  %9490 = fdiv fast float %9489, %9488
  %9491 = call float @dx.op.unary.f32(i32 7, float %9490)  ; Saturate(value)
  %9492 = fmul fast float %9491, 2.000000e+00
  %9493 = fsub fast float 3.000000e+00, %9492
  %9494 = fmul fast float %9491, %9491
  %9495 = fmul fast float %9494, %9493
  %9496 = select i1 %9487, float 1.000000e+00, float %9495
  %9497 = fmul fast float %9482, %8156
  %9498 = fadd fast float %9483, %9497
  %9499 = call float @dx.op.unary.f32(i32 7, float %9498)  ; Saturate(value)
  %9500 = fmul fast float %9496, %9499
  br label %9501

; <label>:9501                                    ; preds = %9473, %9353
  %9502 = phi float [ %9500, %9473 ], [ 0.000000e+00, %9353 ]
  %9503 = fsub fast float 1.000000e+00, %9502
  %9504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9223, float %9224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9505 = extractvalue %dx.types.ResRet.f32 %9504, 0
  %9506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.i32 %9506, 2
  %9508 = icmp eq i32 %9507, 0
  br i1 %9508, label %9514, label %9509

; <label>:9509                                    ; preds = %9501
  %9510 = call float @dx.op.unary.f32(i32 7, float %9502)  ; Saturate(value)
  %9511 = fadd fast float %9505, -1.000000e+00
  %9512 = fmul fast float %9510, %9511
  %9513 = fadd fast float %9512, 1.000000e+00
  br label %9514

; <label>:9514                                    ; preds = %9509, %9501
  %9515 = phi float [ %9513, %9509 ], [ %9503, %9501 ]
  br i1 %9277, label %9516, label %9534

; <label>:9516                                    ; preds = %9514
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9519 = fsub fast float %9354, %9518
  %9520 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9521 = fsub fast float %9354, %9276
  %9522 = call float @dx.op.unary.f32(i32 7, float %9521)  ; Saturate(value)
  %9523 = fsub fast float %9520, %9522
  %9524 = fsub fast float %9356, %9522
  %9525 = fdiv fast float %9524, %9523
  %9526 = call float @dx.op.unary.f32(i32 7, float %9525)  ; Saturate(value)
  %9527 = fmul fast float %9526, 2.000000e+00
  %9528 = fsub fast float 3.000000e+00, %9527
  %9529 = fsub fast float %9505, %9515
  %9530 = fmul fast float %9526, %9526
  %9531 = fmul fast float %9530, %9529
  %9532 = fmul fast float %9531, %9528
  %9533 = fadd fast float %9532, %9515
  br label %9534

; <label>:9534                                    ; preds = %9516, %9514
  %9535 = phi float [ %9533, %9516 ], [ %9515, %9514 ]
  %9536 = call float @dx.op.binary.f32(i32 35, float %9505, float %9535)  ; FMax(a,b)
  %9537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9538 = extractvalue %dx.types.CBufRet.i32 %9537, 2
  %9539 = and i32 %9538, 1
  %9540 = icmp eq i32 %9539, 0
  %9541 = fcmp fast une float %9536, 1.000000e+00
  %9542 = and i1 %9541, %9540
  br i1 %9542, label %9543, label %9562

; <label>:9543                                    ; preds = %9534
  %9544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9223, float %9224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9545 = extractvalue %dx.types.ResRet.f32 %9544, 0
  %9546 = extractvalue %dx.types.ResRet.f32 %9544, 1
  %9547 = extractvalue %dx.types.ResRet.f32 %9544, 2
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9550 = fmul fast float %9549, %9545
  %9551 = fmul fast float %9549, %9546
  %9552 = fmul fast float %9549, %9547
  %9553 = fcmp fast ogt float %9505, 0x3FEFFF2E40000000
  %9554 = fsub fast float 1.000000e+00, %9536
  %9555 = fsub fast float 1.000000e+00, %9505
  %9556 = fdiv fast float %9554, %9555
  %9557 = call float @dx.op.unary.f32(i32 7, float %9556)  ; Saturate(value)
  %9558 = select i1 %9553, float 0.000000e+00, float %9557
  %9559 = fmul fast float %9550, %9558
  %9560 = fmul fast float %9551, %9558
  %9561 = fmul fast float %9552, %9558
  br label %9562

; <label>:9562                                    ; preds = %9543, %9534
  %9563 = phi float [ 0.000000e+00, %9534 ], [ %9559, %9543 ]
  %9564 = phi float [ 0.000000e+00, %9534 ], [ %9560, %9543 ]
  %9565 = phi float [ 0.000000e+00, %9534 ], [ %9561, %9543 ]
  %9566 = fmul fast float %9563, %8144
  %9567 = fmul fast float %9564, %8144
  %9568 = fmul fast float %9565, %8144
  %9569 = fmul fast float %9536, %9198
  %9570 = call float @dx.op.dot3.f32(i32 55, float %9536, float %9536, float %9536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9571 = call float @dx.op.dot3.f32(i32 55, float %9566, float %9567, float %9568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9572 = select i1 %223, float %9570, float %9536
  %9573 = select i1 %223, float 1.000000e+00, float %9536
  %9574 = select i1 %223, float %9571, float %9566
  %9575 = select i1 %223, float 0.000000e+00, float %9567
  %9576 = select i1 %223, float 0.000000e+00, float %9568
  %9577 = fmul fast float %9572, %9210
  %9578 = fmul fast float %9572, %9211
  %9579 = fmul fast float %9573, %9212
  %9580 = fadd fast float %9577, %9574
  %9581 = fadd fast float %9578, %9575
  %9582 = fadd fast float %9576, %9579
  %9583 = fmul fast float %9572, %9213
  %9584 = fmul fast float %9572, %9214
  %9585 = fmul fast float %9573, %9215
  br label %9586

; <label>:9586                                    ; preds = %9562, %9219, %9188, %8424
  %9587 = phi float [ %8429, %8424 ], [ %9210, %9188 ], [ %9580, %9562 ], [ %9210, %9219 ]
  %9588 = phi float [ %8430, %8424 ], [ %9211, %9188 ], [ %9581, %9562 ], [ %9211, %9219 ]
  %9589 = phi float [ %8431, %8424 ], [ %9212, %9188 ], [ %9582, %9562 ], [ %9212, %9219 ]
  %9590 = phi float [ %8432, %8424 ], [ %9213, %9188 ], [ %9583, %9562 ], [ %9213, %9219 ]
  %9591 = phi float [ %8433, %8424 ], [ %9214, %9188 ], [ %9584, %9562 ], [ %9214, %9219 ]
  %9592 = phi float [ %8434, %8424 ], [ %9215, %9188 ], [ %9585, %9562 ], [ %9215, %9219 ]
  %9593 = phi float [ %8435, %8424 ], [ %9198, %9188 ], [ %9569, %9562 ], [ %9198, %9219 ]
  %9594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %9595 = extractvalue %dx.types.CBufRet.f32 %9594, 2
  %9596 = extractvalue %dx.types.CBufRet.f32 %9594, 3
  %9597 = fmul fast float %9595, %102
  %9598 = fmul fast float %9596, %103
  %9599 = call float @dx.op.unary.f32(i32 7, float %9597)  ; Saturate(value)
  %9600 = call float @dx.op.unary.f32(i32 7, float %9598)  ; Saturate(value)
  %9601 = select i1 %8166, i32 2, i32 0
  %9602 = or i32 %9601, 1
  %9603 = uitofp i32 %9602 to float
  %9604 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9599, float %9600, float %9603, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9605 = extractvalue %dx.types.ResRet.f32 %9604, 0
  %9606 = extractvalue %dx.types.ResRet.f32 %9604, 1
  %9607 = extractvalue %dx.types.ResRet.f32 %9604, 2
  %9608 = extractvalue %dx.types.ResRet.f32 %9604, 3
  %9609 = add nuw nsw i32 %9601, 2
  %9610 = uitofp i32 %9609 to float
  %9611 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9599, float %9600, float %9610, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9612 = extractvalue %dx.types.ResRet.f32 %9611, 0
  %9613 = extractvalue %dx.types.ResRet.f32 %9611, 1
  %9614 = extractvalue %dx.types.ResRet.f32 %9611, 2
  %9615 = extractvalue %dx.types.ResRet.f32 %9611, 3
  %9616 = call float @dx.op.binary.f32(i32 35, float %9606, float %9607)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 35, float %9605, float %9616)  ; FMax(a,b)
  %9618 = call float @dx.op.binary.f32(i32 35, float %9617, float %9608)  ; FMax(a,b)
  %9619 = call float @dx.op.binary.f32(i32 36, float %9613, float %9614)  ; FMin(a,b)
  %9620 = call float @dx.op.binary.f32(i32 36, float %9612, float %9619)  ; FMin(a,b)
  %9621 = call float @dx.op.binary.f32(i32 36, float %9620, float %9615)  ; FMin(a,b)
  %9622 = fmul fast float %9618, 2.550000e+02
  %9623 = fadd fast float %9622, 0x3F70101020000000
  %9624 = fptoui float %9623 to i32
  %9625 = fmul fast float %9621, 2.550000e+02
  %9626 = fadd fast float %9625, 0x3F70101020000000
  %9627 = fptoui float %9626 to i32
  %9628 = icmp ult i32 %9624, %9627
  br i1 %9628, label %9629, label %9798

; <label>:9629                                    ; preds = %9586
  %9630 = fcmp fast ogt float %92, 9.843750e-01
  %9631 = fadd fast float %8428, -4.000000e+00
  %9632 = select i1 %9630, float -4.000000e+00, float %9631
  %9633 = call float @dx.op.binary.f32(i32 35, float %9632, float 0.000000e+00)  ; FMax(a,b)
  %9634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9635 = extractvalue %dx.types.CBufRet.f32 %9634, 0
  %9636 = fadd fast float %9635, %9633
  %9637 = extractvalue %dx.types.CBufRet.f32 %9634, 2
  %9638 = fmul fast float %9636, %9637
  %9639 = call float @dx.op.unary.f32(i32 23, float %9638)  ; Log(value)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9634, 3
  %9641 = fmul fast float %9640, %9639
  %9642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9643 = extractvalue %dx.types.CBufRet.f32 %9642, 2
  %9644 = fmul fast float %9641, %9643
  %9645 = call float @dx.op.unary.f32(i32 7, float %9644)  ; Saturate(value)
  %9646 = uitofp i32 %9624 to float
  %9647 = uitofp i32 %9627 to float
  %9648 = fadd fast float %9646, 5.000000e-01
  %9649 = fadd fast float %9647, 5.000000e-01
  %9650 = fmul fast float %9643, %9648
  %9651 = fmul fast float %9643, %9649
  %9652 = fadd fast float %9650, 0x3F0FFB4800000000
  %9653 = fadd fast float %9651, 0xBF0FFB4800000000
  %9654 = call float @dx.op.binary.f32(i32 35, float %9645, float %9652)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 36, float %9654, float %9653)  ; FMin(a,b)
  %9656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.f32 %9656, 1
  %9658 = extractvalue %dx.types.CBufRet.f32 %9656, 2
  %9659 = extractvalue %dx.types.CBufRet.f32 %9656, 0
  %9660 = select i1 %8166, float %9659, float 0.000000e+00
  %9661 = fmul fast float %9657, %9655
  %9662 = fadd fast float %9660, %9661
  %9663 = fadd fast float %9660, %9658
  %9664 = fsub fast float %9657, %9658
  %9665 = fadd fast float %9664, %9660
  %9666 = call float @dx.op.binary.f32(i32 35, float %9662, float %9663)  ; FMax(a,b)
  %9667 = call float @dx.op.binary.f32(i32 36, float %9666, float %9665)  ; FMin(a,b)
  %9668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9599, float %9600, float %9667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9669 = extractvalue %dx.types.ResRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.ResRet.f32 %9668, 1
  %9671 = extractvalue %dx.types.ResRet.f32 %9668, 2
  %9672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.i32 %9672, 0
  %9674 = extractvalue %dx.types.CBufRet.i32 %9672, 1
  %9675 = uitofp i32 %9673 to float
  %9676 = uitofp i32 %9674 to float
  %9677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9678 = extractvalue %dx.types.CBufRet.f32 %9677, 0
  %9679 = extractvalue %dx.types.CBufRet.f32 %9677, 1
  %9680 = fmul fast float %9675, %9599
  %9681 = fmul fast float %9676, %9600
  %9682 = fadd fast float %9680, -5.000000e-01
  %9683 = fadd fast float %9681, -5.000000e-01
  %9684 = call float @dx.op.unary.f32(i32 22, float %9682)  ; Frc(value)
  %9685 = call float @dx.op.unary.f32(i32 22, float %9683)  ; Frc(value)
  %9686 = fmul fast float %9684, %9684
  %9687 = fmul fast float %9686, %9684
  %9688 = fsub fast float 3.000000e+00, %9684
  %9689 = fmul fast float %9686, %9688
  %9690 = fmul fast float %9684, 3.000000e+00
  %9691 = fmul fast float %9687, 3.000000e+00
  %9692 = fmul fast float %9686, 6.000000e+00
  %9693 = fsub fast float %9691, %9692
  %9694 = fadd fast float %9693, 4.000000e+00
  %9695 = fmul fast float %9694, 0x3FC5555560000000
  %9696 = fmul fast float %9687, -3.000000e+00
  %9697 = fadd fast float %9686, %9684
  %9698 = fmul fast float %9697, 3.000000e+00
  %9699 = fadd fast float %9696, 1.000000e+00
  %9700 = fadd fast float %9699, %9698
  %9701 = fmul fast float %9687, 0x3FC5555560000000
  %9702 = fmul fast float %9685, %9685
  %9703 = fmul fast float %9702, %9685
  %9704 = fsub fast float 3.000000e+00, %9685
  %9705 = fmul fast float %9702, %9704
  %9706 = fmul fast float %9685, 3.000000e+00
  %9707 = fmul fast float %9703, 3.000000e+00
  %9708 = fmul fast float %9702, 6.000000e+00
  %9709 = fsub fast float %9707, %9708
  %9710 = fadd fast float %9709, 4.000000e+00
  %9711 = fmul fast float %9710, 0x3FC5555560000000
  %9712 = fmul fast float %9703, -3.000000e+00
  %9713 = fadd fast float %9702, %9685
  %9714 = fmul fast float %9713, 3.000000e+00
  %9715 = fadd fast float %9712, 1.000000e+00
  %9716 = fadd fast float %9715, %9714
  %9717 = fmul fast float %9703, 0x3FC5555560000000
  %9718 = fadd fast float %9684, 1.000000e+00
  %9719 = fsub fast float 1.000000e+00, %9690
  %9720 = fadd fast float %9719, %9689
  %9721 = fadd fast float %9720, %9694
  %9722 = fmul fast float %9721, 0x3FC5555560000000
  %9723 = fdiv fast float %9695, %9722
  %9724 = fsub fast float %9718, %9723
  %9725 = fsub fast float 1.000000e+00, %9684
  %9726 = fadd fast float %9700, %9687
  %9727 = fmul fast float %9726, 0x3FC5555560000000
  %9728 = fdiv fast float %9701, %9727
  %9729 = fadd fast float %9725, %9728
  %9730 = fadd fast float %9685, 1.000000e+00
  %9731 = fsub fast float 1.000000e+00, %9706
  %9732 = fadd fast float %9731, %9705
  %9733 = fadd fast float %9732, %9710
  %9734 = fmul fast float %9733, 0x3FC5555560000000
  %9735 = fdiv fast float %9711, %9734
  %9736 = fsub fast float %9730, %9735
  %9737 = fsub fast float 1.000000e+00, %9685
  %9738 = fadd fast float %9716, %9703
  %9739 = fmul fast float %9738, 0x3FC5555560000000
  %9740 = fdiv fast float %9717, %9739
  %9741 = fadd fast float %9740, %9737
  %9742 = fmul fast float %9724, %9678
  %9743 = fsub fast float %9599, %9742
  %9744 = fmul fast float %9729, %9678
  %9745 = fadd fast float %9744, %9599
  %9746 = fmul fast float %9741, %9679
  %9747 = fadd fast float %9746, %9600
  %9748 = fmul fast float %9736, %9679
  %9749 = fsub fast float %9600, %9748
  %9750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9743, float %9749, float %9667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9751 = extractvalue %dx.types.ResRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.ResRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.ResRet.f32 %9750, 2
  %9754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9745, float %9749, float %9667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9755 = extractvalue %dx.types.ResRet.f32 %9754, 0
  %9756 = extractvalue %dx.types.ResRet.f32 %9754, 1
  %9757 = extractvalue %dx.types.ResRet.f32 %9754, 2
  %9758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9743, float %9747, float %9667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9759 = extractvalue %dx.types.ResRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.ResRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.ResRet.f32 %9758, 2
  %9762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9745, float %9747, float %9667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9763 = extractvalue %dx.types.ResRet.f32 %9762, 0
  %9764 = extractvalue %dx.types.ResRet.f32 %9762, 1
  %9765 = extractvalue %dx.types.ResRet.f32 %9762, 2
  %9766 = fsub fast float %9759, %9751
  %9767 = fsub fast float %9760, %9752
  %9768 = fsub fast float %9761, %9753
  %9769 = fmul fast float %9766, %9739
  %9770 = fmul fast float %9767, %9739
  %9771 = fmul fast float %9768, %9739
  %9772 = fadd fast float %9769, %9751
  %9773 = fadd fast float %9770, %9752
  %9774 = fadd fast float %9771, %9753
  %9775 = fsub fast float %9763, %9755
  %9776 = fsub fast float %9764, %9756
  %9777 = fsub fast float %9765, %9757
  %9778 = fmul fast float %9775, %9739
  %9779 = fmul fast float %9776, %9739
  %9780 = fmul fast float %9777, %9739
  %9781 = fsub fast float %9755, %9772
  %9782 = fadd fast float %9781, %9778
  %9783 = fsub fast float %9756, %9773
  %9784 = fadd fast float %9783, %9779
  %9785 = fsub fast float %9757, %9774
  %9786 = fadd fast float %9785, %9780
  %9787 = fmul fast float %9782, %9727
  %9788 = fmul fast float %9784, %9727
  %9789 = fmul fast float %9786, %9727
  %9790 = fadd fast float %9787, %9772
  %9791 = fadd fast float %9788, %9773
  %9792 = fadd fast float %9789, %9774
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 1
  %9795 = fmul fast float %9790, %9794
  %9796 = fmul fast float %9791, %9794
  %9797 = fmul fast float %9792, %9794
  br label %9798

; <label>:9798                                    ; preds = %9629, %9586
  %9799 = phi float [ %9669, %9629 ], [ 1.000000e+00, %9586 ]
  %9800 = phi float [ %9670, %9629 ], [ 1.000000e+00, %9586 ]
  %9801 = phi float [ %9671, %9629 ], [ 1.000000e+00, %9586 ]
  %9802 = phi float [ %9795, %9629 ], [ 0.000000e+00, %9586 ]
  %9803 = phi float [ %9796, %9629 ], [ 0.000000e+00, %9586 ]
  %9804 = phi float [ %9797, %9629 ], [ 0.000000e+00, %9586 ]
  %9805 = fmul fast float %9802, %8144
  %9806 = fmul fast float %9803, %8144
  %9807 = fmul fast float %9804, %8144
  %9808 = fmul fast float %9799, %9593
  %9809 = call float @dx.op.dot3.f32(i32 55, float %9799, float %9800, float %9801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9810 = call float @dx.op.dot3.f32(i32 55, float %9805, float %9806, float %9807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9811 = select i1 %223, float %9809, float %9799
  %9812 = select i1 %223, float %9809, float %9800
  %9813 = select i1 %223, float 1.000000e+00, float %9801
  %9814 = select i1 %223, float %9810, float %9805
  %9815 = select i1 %223, float 0.000000e+00, float %9806
  %9816 = select i1 %223, float 0.000000e+00, float %9807
  %9817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9818 = extractvalue %dx.types.CBufRet.i32 %9817, 3
  %9819 = and i32 %9818, 3
  %9820 = icmp ne i32 %9819, 0
  %9821 = and i32 %9818, 4
  %9822 = icmp ne i32 %9821, 0
  %9823 = and i1 %9820, %9822
  %9824 = and i1 %223, %9823
  br i1 %9824, label %9825, label %9831

; <label>:9825                                    ; preds = %9798
  %9826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9827 = extractvalue %dx.types.CBufRet.f32 %9826, 1
  %9828 = fadd fast float %9808, -1.000000e+00
  %9829 = fmul fast float %9827, %9828
  %9830 = fadd fast float %9829, 1.000000e+00
  br label %9831

; <label>:9831                                    ; preds = %9825, %9798
  %9832 = phi float [ %9830, %9825 ], [ %9808, %9798 ]
  %9833 = fadd fast float %9590, %9587
  %9834 = fmul fast float %9811, %9833
  %9835 = fadd fast float %9834, %9814
  %9836 = fadd fast float %9591, %9588
  %9837 = fmul fast float %9812, %9836
  %9838 = fadd fast float %9837, %9815
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 0
  br i1 %223, label %9841, label %9864

; <label>:9841                                    ; preds = %9831
  %9842 = fadd fast float %9835, %9838
  %9843 = fmul fast float %9840, %9842
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 3
  %9846 = extractvalue %dx.types.CBufRet.f32 %8148, 1
  %9847 = fsub fast float %8153, %8147
  %9848 = fadd fast float %9847, %8154
  %9849 = fsub fast float %9848, %9846
  %9850 = extractvalue %dx.types.CBufRet.f32 %8148, 2
  %9851 = fmul fast float %9849, %9850
  %9852 = call float @dx.op.unary.f32(i32 7, float %9851)  ; Saturate(value)
  %9853 = fsub fast float %9852, %9845
  %9854 = fmul fast float %9853, %9832
  %9855 = fadd fast float %9854, %9845
  %9856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9857 = extractvalue %dx.types.CBufRet.f32 %9856, 0
  %9858 = fsub fast float %9855, %9857
  %9859 = fmul fast float %9858, 1.000000e+01
  %9860 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9861 = fmul fast float %9860, %8143
  %9862 = fadd fast float %9861, %8144
  %9863 = fmul fast float %9862, %9855
  br label %9888

; <label>:9864                                    ; preds = %9831
  %9865 = fadd fast float %9592, %9589
  %9866 = fmul fast float %9813, %9865
  %9867 = fadd fast float %9866, %9816
  %9868 = fmul fast float %9840, %9835
  %9869 = fmul fast float %9840, %9838
  %9870 = fmul fast float %9840, %9867
  %9871 = call float @dx.op.binary.f32(i32 35, float %9868, float %9869)  ; FMax(a,b)
  %9872 = call float @dx.op.binary.f32(i32 35, float %9871, float %9870)  ; FMax(a,b)
  %9873 = call float @dx.op.binary.f32(i32 35, float %9872, float %8144)  ; FMax(a,b)
  %9874 = fcmp fast ugt float %9873, 0x3F10000000000000
  br i1 %9874, label %9876, label %9875

; <label>:9875                                    ; preds = %9864
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9876

; <label>:9876                                    ; preds = %9875, %9864
  %9877 = add i32 %56, 356
  %9878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9877, i32 undef)  ; BufferLoad(srv,index,wot)
  %9879 = extractvalue %dx.types.ResRet.i32 %9878, 0
  %9880 = and i32 %9879, 32
  %9881 = icmp eq i32 %9880, 0
  br i1 %9881, label %9888, label %9882

; <label>:9882                                    ; preds = %9876
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 0
  %9885 = fmul fast float %9884, 0x3FE99999A0000000
  %9886 = fadd fast float %9884, %9868
  %9887 = fadd fast float %9885, %9870
  br label %9888

; <label>:9888                                    ; preds = %9882, %9876, %9841
  %9889 = phi float [ %9843, %9841 ], [ %9886, %9882 ], [ %9868, %9876 ]
  %9890 = phi float [ %9863, %9841 ], [ %9869, %9882 ], [ %9869, %9876 ]
  %9891 = phi float [ %9862, %9841 ], [ %9887, %9882 ], [ %9870, %9876 ]
  %9892 = phi float [ %9862, %9841 ], [ %8144, %9882 ], [ %8144, %9876 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9893 = call float @dx.op.binary.f32(i32 36, float %9889, float 3.225500e+04)  ; FMin(a,b)
  %9894 = call float @dx.op.binary.f32(i32 36, float %9890, float 3.225500e+04)  ; FMin(a,b)
  %9895 = call float @dx.op.binary.f32(i32 36, float %9891, float 3.225500e+04)  ; FMin(a,b)
  %9896 = call float @dx.op.binary.f32(i32 36, float %9892, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9893)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9894)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9895)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9896)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
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

