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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
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
; shader hash: b2a7775dee4eb6bacb8898806d422138
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = alloca [12 x float], align 4
  %94 = alloca [12 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fmul fast float %100, %89
  %102 = fmul fast float %100, %90
  %103 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %104 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %105 = bitcast float %104 to i32
  %106 = ashr i32 %105, 1
  %107 = sub nsw i32 1597250115, %106
  %108 = bitcast i32 %107 to float
  %109 = fmul fast float %80, %103
  %110 = fmul fast float %109, %108
  %111 = fmul fast float %81, %103
  %112 = fmul fast float %111, %108
  %113 = fmul fast float %82, %103
  %114 = fmul fast float %113, %108
  %115 = fmul fast float %81, %78
  %116 = fmul fast float %82, %77
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %82, %76
  %119 = fmul fast float %80, %78
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %80, %77
  %122 = fmul fast float %81, %76
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %117, %79
  %125 = fmul fast float %120, %79
  %126 = fmul fast float %123, %79
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %130 = fmul fast float %101, 2.000000e+00
  %131 = fmul fast float %130, %128
  %132 = fmul fast float %102, 2.000000e+00
  %133 = fmul fast float %132, %129
  %134 = fsub fast float 1.000000e+00, %131
  %135 = fsub fast float 1.000000e+00, %133
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %134, %137
  %141 = fmul fast float %134, %138
  %142 = fmul fast float %134, %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fmul fast float %135, %144
  %148 = fmul fast float %135, %145
  %149 = fmul fast float %135, %146
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = fadd fast float %147, %151
  %155 = fadd fast float %154, %140
  %156 = fadd fast float %148, %152
  %157 = fadd fast float %156, %141
  %158 = fadd fast float %149, %153
  %159 = fadd fast float %158, %142
  %160 = fmul fast float %155, %92
  %161 = fmul fast float %157, %92
  %162 = fmul fast float %159, %92
  %163 = fmul fast float %101, 5.000000e-01
  %164 = fmul fast float %102, 5.000000e-01
  %165 = fptosi float %163 to i32
  %166 = fptosi float %164 to i32
  %167 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %165, i32 %166, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = lshr i32 %168, 18
  %170 = uitofp i32 %169 to float
  %171 = fmul fast float %170, 0x3F4C00EBA0000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = fadd fast float %172, -1.000000e+00
  %174 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %175 = extractvalue %dx.types.Dimensions %174, 0
  %176 = sitofp i32 %175 to float
  %177 = extractvalue %dx.types.Dimensions %174, 1
  %178 = sitofp i32 %177 to float
  %179 = fcmp fast oge float %163, %176
  %180 = fcmp fast oge float %164, %178
  %181 = or i1 %179, %180
  %182 = select i1 %181, float 0x4197782600000000, float %173
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %186 = fmul fast float %184, %101
  %187 = fmul fast float %185, %102
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 114688
  %191 = icmp ne i32 %190, 0
  %192 = select i1 %191, float %186, float 0.000000e+00
  %193 = select i1 %191, float %187, float 0.000000e+00
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %192, float %193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fmul fast float %195, 2.550000e+02
  %197 = fptoui float %196 to i32
  %198 = select i1 %191, i32 %197, i32 0
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = and i32 %201, 3
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %201, 4
  %205 = icmp ne i32 %204, 0
  %206 = and i1 %203, %205
  br i1 %206, label %207, label %218

; <label>:207                                     ; preds = %0
  %208 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %209 = fmul fast float %208, %102
  %210 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %211 = fmul fast float %210, %101
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %211, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = fcmp fast olt float %214, %216
  br label %221

; <label>:218                                     ; preds = %0
  %219 = icmp eq i32 %204, 0
  %220 = and i1 %203, %219
  br label %221

; <label>:221                                     ; preds = %218, %207
  %222 = phi i1 [ %217, %207 ], [ %220, %218 ]
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = fmul fast float %224, 0x3FE3C6EF40000000
  %226 = frem fast float %101, 2.560000e+02
  %227 = frem fast float %102, 2.560000e+02
  %228 = fptoui float %226 to i32
  %229 = fptoui float %227 to i32
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fadd fast float %231, %225
  %233 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %234 = add i32 %56, 156
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = shl i32 %236, 4
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %236, 7
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %236, 22
  %244 = shl nuw nsw i32 %243, 5
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %56, 216
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %248, 8
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %248, 16
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = add i32 %56, 36
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %262, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %56, 288
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %271, 0x3F50624DE0000000
  %275 = fmul fast float %273, 0x3F50624DE0000000
  %276 = add i32 %56, 172
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %288 = add i32 %56, 232
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %302 = add i32 %56, 52
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %56, 304
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %56, 188
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %330 = add i32 %56, 248
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %344 = add i32 %56, 68
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %56, 320
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %56, 204
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %372 = add i32 %56, 264
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %386 = add i32 %56, 84
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %56, 336
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %56, 348
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 32
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %404, 64
  %408 = icmp eq i32 %407, 0
  %409 = and i32 %404, 128
  %410 = icmp eq i32 %409, 0
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

; <label>:415                                     ; preds = %221
  %416 = add i32 %56, 472
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = add i32 %418, 0
  %420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %420, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = extractvalue %dx.types.ResRet.f32 %421, 1
  %424 = extractvalue %dx.types.ResRet.f32 %421, 2
  %425 = extractvalue %dx.types.ResRet.f32 %421, 3
  %426 = fmul fast float %425, %85
  %427 = fmul fast float %422, %86
  %428 = fmul fast float %423, %87
  %429 = fmul fast float %424, %88
  br label %430

; <label>:430                                     ; preds = %415, %221
  %431 = phi float [ %88, %221 ], [ %429, %415 ]
  %432 = phi float [ %87, %221 ], [ %428, %415 ]
  %433 = phi float [ %86, %221 ], [ %427, %415 ]
  %434 = phi float [ %85, %221 ], [ %426, %415 ]
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %458, label %439

; <label>:439                                     ; preds = %430
  %440 = add i32 %56, 44
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %433, float 1.000000e+00
  %446 = add i32 %56, 60
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %432, float 1.000000e+00
  %452 = add i32 %56, 76
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 1
  %456 = icmp ne i32 %455, 0
  %457 = select i1 %456, float %431, float 1.000000e+00
  br label %458

; <label>:458                                     ; preds = %439, %430
  %459 = phi float [ %431, %430 ], [ %457, %439 ]
  %460 = phi float [ %432, %430 ], [ %451, %439 ]
  %461 = phi float [ %433, %430 ], [ %445, %439 ]
  %462 = lshr i32 %436, 20
  %463 = and i32 %462, 3
  %464 = add nuw nsw i32 %463, 1
  %465 = add i32 %56, 24
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %56, 28
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = or i32 %470, %467
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %1122, label %473

; <label>:473                                     ; preds = %458
  %474 = and i32 %467, 262144
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %58, float 1.000000e+00
  %477 = select i1 %475, float %59, float 0.000000e+00
  %478 = select i1 %475, float %60, float 0.000000e+00
  %479 = select i1 %475, float %61, float 1.000000e+00
  %480 = select i1 %475, float %62, float %83
  %481 = select i1 %475, float %63, float %84
  %482 = add i32 %56, 284
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = fmul fast float %486, 0x3F50624DE0000000
  %488 = add i32 %56, 88
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = and i32 %491, 255
  %493 = lshr i32 %490, 24
  %494 = add i32 %56, 292
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = add i32 %56, 32
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 22
  %505 = shl nuw nsw i32 %504, 5
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = shl i32 %503, 4
  %508 = and i32 %507, 32752
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %503, 7
  %511 = and i32 %510, 32752
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 3
  %515 = fmul fast float %514, 1.000000e+03
  %516 = fmul fast float %274, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fadd fast float %517, %264
  %519 = fmul fast float %275, %515
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = fadd fast float %520, %266
  %522 = fmul fast float %487, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = fmul fast float %523, 0x401921FB60000000
  %525 = fadd fast float %524, %506
  %526 = call float @dx.op.unary.f32(i32 13, float %525)  ; Sin(value)
  %527 = call float @dx.op.unary.f32(i32 12, float %525)  ; Cos(value)
  %528 = fsub fast float -0.000000e+00, %526
  %529 = fadd fast float %480, -5.000000e-01
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fmul fast float %498, %529
  %532 = fmul fast float %500, %530
  %533 = fadd fast float %531, 5.000000e-01
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fmul fast float %509, %533
  %536 = fmul fast float %512, %534
  %537 = fmul fast float %527, %535
  %538 = call float @dx.op.tertiary.f32(i32 46, float %528, float %536, float %537)  ; FMad(a,b,c)
  %539 = fmul fast float %526, %535
  %540 = call float @dx.op.tertiary.f32(i32 46, float %527, float %536, float %539)  ; FMad(a,b,c)
  %541 = fadd fast float %518, %538
  %542 = fadd fast float %521, %540
  %543 = icmp ugt i32 %492, 1
  %544 = icmp ugt i32 %490, 33554431
  %545 = or i1 %544, %543
  br i1 %545, label %546, label %571

; <label>:546                                     ; preds = %473
  %547 = add i32 %56, 228
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = fmul fast float %514, %551
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = mul nuw nsw i32 %492, %493
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %553, %555
  %557 = call float @dx.op.unary.f32(i32 27, float %556)  ; Round_ni(value)
  %558 = fptoui float %557 to i32
  %559 = urem i32 %558, %492
  %560 = udiv i32 %558, %493
  %561 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = uitofp i32 %559 to float
  %564 = uitofp i32 %560 to float
  %565 = fadd fast float %561, %563
  %566 = fadd fast float %562, %564
  %567 = uitofp i32 %492 to float
  %568 = uitofp i32 %493 to float
  %569 = fdiv fast float %565, %567
  %570 = fdiv fast float %566, %568
  br label %571

; <label>:571                                     ; preds = %546, %473
  %572 = phi float [ %569, %546 ], [ %541, %473 ]
  %573 = phi float [ %570, %546 ], [ %542, %473 ]
  %574 = and i32 %467, 16777216
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %685, label %576

; <label>:576                                     ; preds = %571
  %577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %578 = extractvalue %dx.types.CBufRet.f32 %577, 0
  %579 = extractvalue %dx.types.CBufRet.f32 %577, 1
  %580 = extractvalue %dx.types.CBufRet.f32 %577, 2
  %581 = fadd fast float %578, %160
  %582 = fadd fast float %579, %161
  %583 = fadd fast float %580, %162
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = icmp eq i32 %57, 65535
  br i1 %587, label %682, label %588

; <label>:588                                     ; preds = %576
  %589 = lshr i32 %57, 1
  %590 = shl i32 %589, 2
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %57, 1
  %594 = icmp ne i32 %593, 0
  %595 = lshr i32 %592, 16
  %596 = and i32 %592, 65535
  %597 = select i1 %594, i32 %595, i32 %596
  %598 = icmp eq i32 %597, 65535
  br i1 %598, label %678, label %599

; <label>:599                                     ; preds = %588
  %600 = mul nuw nsw i32 %597, 40
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %600, 12
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %600, 24
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %600, 36
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = fsub fast float %581, %602
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fmul fast float %617, %618
  %622 = fmul fast float %617, %619
  %623 = fmul fast float %617, %620
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fmul fast float %627, %607
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = shl i32 %57, 2
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %637, %dx.types.Handle %49, float %638, float %639, float %640, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fadd fast float %645, 5.000000e-01
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = fsub fast float %621, %624
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fadd fast float %624, 1.250000e-01
  %661 = fadd fast float %660, %657
  %662 = fadd fast float %661, %651
  %663 = fadd fast float %625, 1.250000e-01
  %664 = fadd fast float %663, %658
  %665 = fadd fast float %664, %652
  %666 = fadd fast float %626, 1.250000e-01
  %667 = fadd fast float %666, %659
  %668 = fadd fast float %667, %653
  %669 = fmul fast float %662, %612
  %670 = fmul fast float %665, %613
  %671 = fmul fast float %668, %614
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %675, %dx.types.Handle %47, float %669, float %670, float %671, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  br label %678

; <label>:678                                     ; preds = %599, %588
  %679 = phi float [ %677, %599 ], [ -1.000000e+00, %588 ]
  %680 = fadd fast float %679, %586
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %678, %576
  %683 = phi float [ %681, %678 ], [ %586, %576 ]
  %684 = fmul fast float %683, %434
  br label %685

; <label>:685                                     ; preds = %682, %571
  %686 = phi float [ %684, %682 ], [ %434, %571 ]
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 256
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %737, label %691

; <label>:691                                     ; preds = %685
  %692 = add i32 %56, 424
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %692, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %694, 0
  %696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %696, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = add i32 %56, 100
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = shl i32 %701, 4
  %703 = and i32 %702, 32752
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = lshr i32 %701, 7
  %706 = and i32 %705, 32752
  %707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %706)  ; LegacyF16ToF32(value)
  %708 = fsub fast float 1.000000e+00, %686
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %710 = bitcast float %686 to i32
  %711 = sitofp i32 %710 to float
  %712 = fadd fast float %711, 0xC1CFBF8940000000
  %713 = fmul fast float %707, %712
  %714 = fadd fast float %713, 0x41CFBF8940000000
  %715 = fptosi float %714 to i32
  %716 = bitcast i32 %715 to float
  %717 = bitcast float %709 to i32
  %718 = sitofp i32 %717 to float
  %719 = fadd fast float %718, 0xC1CFBF8940000000
  %720 = fmul fast float %719, %707
  %721 = fadd fast float %720, 0x41CFBF8940000000
  %722 = fptosi float %721 to i32
  %723 = bitcast i32 %722 to float
  %724 = fmul fast float %716, %704
  %725 = fmul fast float %723, %704
  %726 = fsub fast float %709, %724
  %727 = fadd fast float %725, %709
  %728 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = fsub fast float %698, %728
  %731 = fsub fast float %729, %728
  %732 = bitcast float %731 to i32
  %733 = sub nsw i32 2129859010, %732
  %734 = bitcast i32 %733 to float
  %735 = fmul fast float %734, %730
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  br label %737

; <label>:737                                     ; preds = %691, %685
  %738 = phi float [ %736, %691 ], [ %686, %685 ]
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = and i32 %740, 128
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %759, label %743

; <label>:743                                     ; preds = %737
  %744 = add i32 %56, 408
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 524288
  %754 = icmp ne i32 %753, 0
  %755 = fcmp fast ogt float %750, 0x3FE0101020000000
  %756 = select i1 %755, float 1.000000e+00, float 0.000000e+00
  %757 = select i1 %754, float %756, float %750
  %758 = fmul fast float %757, %738
  br label %759

; <label>:759                                     ; preds = %743, %737
  %760 = phi float [ %758, %743 ], [ %738, %737 ]
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 16
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %963, label %765

; <label>:765                                     ; preds = %759
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %56, 360
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %97, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = extractvalue %dx.types.ResRet.f32 %773, 3
  %778 = and i32 %767, 255
  %779 = uitofp i32 %778 to float
  %780 = lshr i32 %767, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %777, %779
  %784 = fadd fast float %783, %782
  %785 = fmul fast float %784, 0x3F70101000000000
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 512
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %798, label %790

; <label>:790                                     ; preds = %765
  %791 = add i32 %56, 440
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %98, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  br label %798

; <label>:798                                     ; preds = %790, %765
  %799 = phi float [ %797, %790 ], [ 1.000000e+00, %765 ]
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 33554432
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %910, label %804

; <label>:804                                     ; preds = %798
  %805 = add i32 %56, 224
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 65535
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = lshr i32 %807, 16
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = add i32 %56, 228
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = lshr i32 %818, 24
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = and i32 %818, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %818, 8
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = lshr i32 %818, 16
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = add i32 %56, 220
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 24
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = and i32 %835, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %835, 8
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = lshr i32 %835, 16
  %847 = and i32 %846, 255
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = bitcast float %774 to i32
  %851 = ashr i32 %850, 1
  %852 = sub nsw i32 1597463174, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %774, 5.000000e-01
  %855 = fmul fast float %853, %853
  %856 = fmul fast float %855, %854
  %857 = fsub fast float 1.500000e+00, %856
  %858 = fmul fast float %853, %774
  %859 = fmul fast float %858, %857
  %860 = bitcast float %775 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %775, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %775
  %869 = fmul fast float %868, %867
  %870 = bitcast float %776 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %776, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %776
  %879 = fmul fast float %878, %877
  %880 = fsub fast float %859, %841
  %881 = fsub fast float %869, %845
  %882 = fsub fast float %879, %849
  %883 = fmul fast float %880, %809
  %884 = fmul fast float %881, %811
  %885 = fmul fast float %882, %816
  %886 = fadd fast float %883, %824
  %887 = fadd fast float %884, %828
  %888 = fadd fast float %885, %832
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = fmul fast float %889, %889
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fsub fast float %892, %774
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fmul fast float %895, %799
  %899 = fmul fast float %896, %799
  %900 = fmul fast float %897, %799
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %821, %785
  %905 = fsub fast float %904, %838
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = fsub fast float %906, %785
  %908 = fmul fast float %907, %799
  %909 = fadd fast float %908, %785
  br label %963

; <label>:910                                     ; preds = %798
  %911 = and i32 %801, 134217728
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %947, label %913

; <label>:913                                     ; preds = %910
  %914 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %915 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fmul fast float %917, %799
  %921 = fmul fast float %918, %799
  %922 = fmul fast float %919, %799
  %923 = fadd fast float %920, 5.000000e-01
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = fmul fast float %923, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %926
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %926
  %934 = fmul fast float %924, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %927
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %927
  %939 = fmul fast float %925, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %928
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %928
  %944 = fmul fast float %933, %933
  %945 = fmul fast float %938, %938
  %946 = fmul fast float %943, %943
  br label %963

; <label>:947                                     ; preds = %910
  %948 = fmul fast float %251, %251
  %949 = fmul fast float %255, %255
  %950 = fmul fast float %259, %259
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fmul fast float %799, %951
  %955 = fmul fast float %799, %952
  %956 = fmul fast float %799, %953
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fmul fast float %957, %774
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  br label %963

; <label>:963                                     ; preds = %947, %913, %804, %759
  %964 = phi float [ %909, %804 ], [ %785, %913 ], [ %785, %947 ], [ 0x3FA23C0BE0000000, %759 ]
  %965 = phi float [ %901, %804 ], [ %944, %913 ], [ %960, %947 ], [ 1.000000e+00, %759 ]
  %966 = phi float [ %902, %804 ], [ %945, %913 ], [ %961, %947 ], [ 1.000000e+00, %759 ]
  %967 = phi float [ %903, %804 ], [ %946, %913 ], [ %962, %947 ], [ 1.000000e+00, %759 ]
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %970 = and i32 %969, 1
  %971 = icmp ne i32 %970, 0
  %972 = add i32 %56, 356
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 32
  %976 = icmp ne i32 %975, 0
  %977 = and i1 %971, %976
  %978 = select i1 %977, float 1.000000e+00, float %965
  %979 = select i1 %977, float 0x3FD3333340000000, float %966
  %980 = select i1 %977, float 0x3FD3333340000000, float %967
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 32
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1057, label %985

; <label>:985                                     ; preds = %963
  %986 = add i32 %56, 92
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = add i32 %56, 376
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %991, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %993, %dx.types.Handle %97, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = and i32 %988, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %988, 8
  %1002 = and i32 %1001, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = lshr i32 %988, 16
  %1005 = and i32 %1004, 255
  %1006 = uitofp i32 %1005 to float
  %1007 = fmul fast float %1006, 0x3F70101000000000
  %1008 = fmul fast float %995, %1000
  %1009 = fadd fast float %1008, %1003
  %1010 = fmul fast float %1009, 0x3F70101000000000
  %1011 = fadd fast float %996, -5.000000e-01
  %1012 = fadd fast float %998, -5.000000e-01
  %1013 = fmul fast float %1011, %1007
  %1014 = fmul fast float %1012, %1007
  %1015 = fadd fast float %1013, 5.000000e-01
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fmul fast float %1016, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fadd fast float %1018, %1020
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = fsub fast float %1018, %1020
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1024, float %1028, float %1022, float %1024, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1022, %1030
  %1032 = fmul fast float %1024, %1030
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 67108864
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1053, label %1037

; <label>:1037                                    ; preds = %985
  %1038 = add i32 %56, 280
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 65535
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = lshr i32 %1040, 16
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = fsub fast float %1010, %1048
  %1050 = fmul fast float %1049, %1042
  %1051 = fadd fast float %1050, %1046
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %1037, %985
  %1054 = phi float [ %1052, %1037 ], [ %1010, %985 ]
  %1055 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1031, float %1032, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  br label %1057

; <label>:1057                                    ; preds = %1053, %963
  %1058 = phi float [ %1054, %1053 ], [ 0x3FD6666660000000, %963 ]
  %1059 = phi float [ %1055, %1053 ], [ 0.000000e+00, %963 ]
  %1060 = phi float [ %1056, %1053 ], [ 0.000000e+00, %963 ]
  %1061 = phi float [ %997, %1053 ], [ 1.000000e+00, %963 ]
  %1062 = add i32 %56, 160
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 22
  %1066 = shl nuw nsw i32 %1065, 5
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %1069, 64
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1105, label %1072

; <label>:1072                                    ; preds = %1057
  %1073 = add i32 %56, 392
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 131072
  %1081 = icmp eq i32 %1080, 0
  %1082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %97, float %572, float %573, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, %239
  %1087 = fmul fast float %1084, %242
  %1088 = fmul fast float %1085, %245
  br i1 %1081, label %1095, label %1089

; <label>:1089                                    ; preds = %1072
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = fmul fast float %1091, %1086
  %1093 = fmul fast float %1091, %1087
  %1094 = fmul fast float %1091, %1088
  br label %1095

; <label>:1095                                    ; preds = %1089, %1072
  %1096 = phi float [ %1092, %1089 ], [ %1086, %1072 ]
  %1097 = phi float [ %1093, %1089 ], [ %1087, %1072 ]
  %1098 = phi float [ %1094, %1089 ], [ %1088, %1072 ]
  %1099 = fmul fast float %1096, %1067
  %1100 = select i1 %222, float %1099, float %1096
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1100, float %1097, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %222, float 0.000000e+00, float %1096
  %1103 = select i1 %222, float %1101, float %1097
  %1104 = select i1 %222, float 0.000000e+00, float %1098
  br label %1105

; <label>:1105                                    ; preds = %1095, %1057
  %1106 = phi float [ %1102, %1095 ], [ 0.000000e+00, %1057 ]
  %1107 = phi float [ %1103, %1095 ], [ 0.000000e+00, %1057 ]
  %1108 = phi float [ %1104, %1095 ], [ 0.000000e+00, %1057 ]
  %1109 = add i32 %56, 96
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = lshr i32 %1111, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = call float @dx.op.dot3.f32(i32 55, float %978, float %979, float %980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = fmul fast float %1116, %1117
  %1119 = fadd fast float %1118, %1113
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  br label %1122

; <label>:1122                                    ; preds = %1105, %458
  %1123 = phi float [ 0.000000e+00, %458 ], [ %1059, %1105 ]
  %1124 = phi float [ 0.000000e+00, %458 ], [ %1060, %1105 ]
  %1125 = phi float [ 0.000000e+00, %458 ], [ %978, %1105 ]
  %1126 = phi float [ 0.000000e+00, %458 ], [ %979, %1105 ]
  %1127 = phi float [ 0.000000e+00, %458 ], [ %980, %1105 ]
  %1128 = phi float [ 0.000000e+00, %458 ], [ %1106, %1105 ]
  %1129 = phi float [ 0.000000e+00, %458 ], [ %1107, %1105 ]
  %1130 = phi float [ 0.000000e+00, %458 ], [ %1108, %1105 ]
  %1131 = phi float [ 0.000000e+00, %458 ], [ %964, %1105 ]
  %1132 = phi float [ 0.000000e+00, %458 ], [ %760, %1105 ]
  %1133 = phi float [ 0.000000e+00, %458 ], [ %1058, %1105 ]
  %1134 = phi float [ 0.000000e+00, %458 ], [ %1061, %1105 ]
  %1135 = phi float [ 0.000000e+00, %458 ], [ %1121, %1105 ]
  br i1 %406, label %1977, label %1136

; <label>:1136                                    ; preds = %1122
  %1137 = icmp ult i32 %464, 2
  %1138 = add i32 %56, 40
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %56, 44
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = or i32 %1143, %1140
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1977, label %1146

; <label>:1146                                    ; preds = %1136
  %1147 = and i32 %1140, 262144
  %1148 = icmp ne i32 %1147, 0
  %1149 = select i1 %1148, float %58, float 1.000000e+00
  %1150 = select i1 %1148, float %59, float 0.000000e+00
  %1151 = select i1 %1148, float %60, float 0.000000e+00
  %1152 = select i1 %1148, float %61, float 1.000000e+00
  %1153 = select i1 %1148, float %62, float %83
  %1154 = select i1 %1148, float %63, float %84
  %1155 = add i32 %56, 300
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fmul fast float %1159, 0x3F50624DE0000000
  %1161 = add i32 %56, 104
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = and i32 %1164, 255
  %1166 = lshr i32 %1163, 24
  %1167 = add i32 %56, 308
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = lshr i32 %1169, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = add i32 %56, 48
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = lshr i32 %1176, 22
  %1178 = shl nuw nsw i32 %1177, 5
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = shl i32 %1176, 4
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1176, 7
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1188 = fmul fast float %1187, 1.000000e+03
  %1189 = fmul fast float %316, %1188
  %1190 = call float @dx.op.unary.f32(i32 22, float %1189)  ; Frc(value)
  %1191 = fadd fast float %1190, %306
  %1192 = fmul fast float %317, %1188
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = fadd fast float %1193, %308
  %1195 = fmul fast float %1160, %1188
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = fmul fast float %1196, 0x401921FB60000000
  %1198 = fadd fast float %1197, %1179
  %1199 = call float @dx.op.unary.f32(i32 13, float %1198)  ; Sin(value)
  %1200 = call float @dx.op.unary.f32(i32 12, float %1198)  ; Cos(value)
  %1201 = fsub fast float -0.000000e+00, %1199
  %1202 = fadd fast float %1153, -5.000000e-01
  %1203 = fadd fast float %1154, -5.000000e-01
  %1204 = fmul fast float %1171, %1202
  %1205 = fmul fast float %1173, %1203
  %1206 = fadd fast float %1204, 5.000000e-01
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fmul fast float %1182, %1206
  %1209 = fmul fast float %1185, %1207
  %1210 = fmul fast float %1200, %1208
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %1209, float %1210)  ; FMad(a,b,c)
  %1212 = fmul fast float %1199, %1208
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %1209, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1191, %1211
  %1215 = fadd fast float %1194, %1213
  %1216 = icmp ugt i32 %1165, 1
  %1217 = icmp ugt i32 %1163, 33554431
  %1218 = or i1 %1217, %1216
  br i1 %1218, label %1219, label %1244

; <label>:1219                                    ; preds = %1146
  %1220 = add i32 %56, 244
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = lshr i32 %1222, 16
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = fmul fast float %1187, %1224
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = mul nuw nsw i32 %1165, %1166
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1226, %1228
  %1230 = call float @dx.op.unary.f32(i32 27, float %1229)  ; Round_ni(value)
  %1231 = fptoui float %1230 to i32
  %1232 = urem i32 %1231, %1165
  %1233 = udiv i32 %1231, %1166
  %1234 = call float @dx.op.unary.f32(i32 22, float %1214)  ; Frc(value)
  %1235 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1236 = uitofp i32 %1232 to float
  %1237 = uitofp i32 %1233 to float
  %1238 = fadd fast float %1234, %1236
  %1239 = fadd fast float %1235, %1237
  %1240 = uitofp i32 %1165 to float
  %1241 = uitofp i32 %1166 to float
  %1242 = fdiv fast float %1238, %1240
  %1243 = fdiv fast float %1239, %1241
  br label %1244

; <label>:1244                                    ; preds = %1219, %1146
  %1245 = phi float [ %1242, %1219 ], [ %1214, %1146 ]
  %1246 = phi float [ %1243, %1219 ], [ %1215, %1146 ]
  %1247 = and i32 %1140, 16777216
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1358, label %1249

; <label>:1249                                    ; preds = %1244
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1254 = fadd fast float %1251, %160
  %1255 = fadd fast float %1252, %161
  %1256 = fadd fast float %1253, %162
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = icmp eq i32 %57, 65535
  br i1 %1260, label %1355, label %1261

; <label>:1261                                    ; preds = %1249
  %1262 = lshr i32 %57, 1
  %1263 = shl i32 %1262, 2
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %57, 1
  %1267 = icmp ne i32 %1266, 0
  %1268 = lshr i32 %1265, 16
  %1269 = and i32 %1265, 65535
  %1270 = select i1 %1267, i32 %1268, i32 %1269
  %1271 = icmp eq i32 %1270, 65535
  br i1 %1271, label %1351, label %1272

; <label>:1272                                    ; preds = %1261
  %1273 = mul nuw nsw i32 %1270, 40
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = add nuw nsw i32 %1273, 12
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = add nuw nsw i32 %1273, 24
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = add nuw nsw i32 %1273, 36
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = fsub fast float %1254, %1275
  %1292 = fsub fast float %1255, %1276
  %1293 = fsub fast float %1256, %1277
  %1294 = fmul fast float %1290, %1291
  %1295 = fmul fast float %1290, %1292
  %1296 = fmul fast float %1290, %1293
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1299 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fadd fast float %1298, 5.000000e-01
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fmul fast float %1300, %1280
  %1304 = fmul fast float %1301, %1281
  %1305 = fmul fast float %1302, %1282
  %1306 = shl i32 %57, 2
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1308, 0
  %1310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1310, %dx.types.Handle %49, float %1311, float %1312, float %1313, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = fmul fast float %1315, 1.023000e+03
  %1319 = fmul fast float %1316, 1.023000e+03
  %1320 = fmul fast float %1317, 1.023000e+03
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = fadd fast float %1319, 5.000000e-01
  %1323 = fadd fast float %1320, 5.000000e-01
  %1324 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1325 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1326 = call float @dx.op.unary.f32(i32 27, float %1323)  ; Round_ni(value)
  %1327 = fsub fast float %1294, %1297
  %1328 = fsub fast float %1295, %1298
  %1329 = fsub fast float %1296, %1299
  %1330 = fmul fast float %1327, 7.500000e-01
  %1331 = fmul fast float %1328, 7.500000e-01
  %1332 = fmul fast float %1329, 7.500000e-01
  %1333 = fadd fast float %1297, 1.250000e-01
  %1334 = fadd fast float %1333, %1330
  %1335 = fadd fast float %1334, %1324
  %1336 = fadd fast float %1298, 1.250000e-01
  %1337 = fadd fast float %1336, %1331
  %1338 = fadd fast float %1337, %1325
  %1339 = fadd fast float %1299, 1.250000e-01
  %1340 = fadd fast float %1339, %1332
  %1341 = fadd fast float %1340, %1326
  %1342 = fmul fast float %1335, %1285
  %1343 = fmul fast float %1338, %1286
  %1344 = fmul fast float %1341, %1287
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1348, %dx.types.Handle %47, float %1342, float %1343, float %1344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  br label %1351

; <label>:1351                                    ; preds = %1272, %1261
  %1352 = phi float [ %1350, %1272 ], [ -1.000000e+00, %1261 ]
  %1353 = fadd fast float %1352, %1259
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1249
  %1356 = phi float [ %1354, %1351 ], [ %1259, %1249 ]
  %1357 = fmul fast float %1356, %461
  br label %1358

; <label>:1358                                    ; preds = %1355, %1244
  %1359 = phi float [ %1357, %1355 ], [ %461, %1244 ]
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 256
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1410, label %1364

; <label>:1364                                    ; preds = %1358
  %1365 = add i32 %56, 428
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %98, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = add i32 %56, 116
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = shl i32 %1374, 4
  %1376 = and i32 %1375, 32752
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = lshr i32 %1374, 7
  %1379 = and i32 %1378, 32752
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = fsub fast float 1.000000e+00, %1359
  %1382 = call float @dx.op.binary.f32(i32 35, float %1381, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1383 = bitcast float %1359 to i32
  %1384 = sitofp i32 %1383 to float
  %1385 = fadd fast float %1384, 0xC1CFBF8940000000
  %1386 = fmul fast float %1380, %1385
  %1387 = fadd fast float %1386, 0x41CFBF8940000000
  %1388 = fptosi float %1387 to i32
  %1389 = bitcast i32 %1388 to float
  %1390 = bitcast float %1382 to i32
  %1391 = sitofp i32 %1390 to float
  %1392 = fadd fast float %1391, 0xC1CFBF8940000000
  %1393 = fmul fast float %1392, %1380
  %1394 = fadd fast float %1393, 0x41CFBF8940000000
  %1395 = fptosi float %1394 to i32
  %1396 = bitcast i32 %1395 to float
  %1397 = fmul fast float %1389, %1377
  %1398 = fmul fast float %1396, %1377
  %1399 = fsub fast float %1382, %1397
  %1400 = fadd fast float %1398, %1382
  %1401 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1402 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1403 = fsub fast float %1371, %1401
  %1404 = fsub fast float %1402, %1401
  %1405 = bitcast float %1404 to i32
  %1406 = sub nsw i32 2129859010, %1405
  %1407 = bitcast i32 %1406 to float
  %1408 = fmul fast float %1407, %1403
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  br label %1410

; <label>:1410                                    ; preds = %1364, %1358
  %1411 = phi float [ %1409, %1364 ], [ %1359, %1358 ]
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 128
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1432, label %1416

; <label>:1416                                    ; preds = %1410
  %1417 = add i32 %56, 412
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = add i32 %1419, 0
  %1421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1421, %dx.types.Handle %98, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 524288
  %1427 = icmp ne i32 %1426, 0
  %1428 = fcmp fast ogt float %1423, 0x3FE0101020000000
  %1429 = select i1 %1428, float 1.000000e+00, float 0.000000e+00
  %1430 = select i1 %1427, float %1429, float %1423
  %1431 = fmul fast float %1430, %1411
  br label %1432

; <label>:1432                                    ; preds = %1416, %1410
  %1433 = phi float [ %1431, %1416 ], [ %1411, %1410 ]
  %1434 = fcmp fast ult float %1433, 0x3F70101020000000
  br i1 %1434, label %1977, label %1435

; <label>:1435                                    ; preds = %1432
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 16
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1638, label %1440

; <label>:1440                                    ; preds = %1435
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %56, 364
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = add i32 %1445, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %97, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = and i32 %1442, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1442, 8
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1452, %1454
  %1459 = fadd fast float %1458, %1457
  %1460 = fmul fast float %1459, 0x3F70101000000000
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 512
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1473, label %1465

; <label>:1465                                    ; preds = %1440
  %1466 = add i32 %56, 444
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %98, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  br label %1473

; <label>:1473                                    ; preds = %1465, %1440
  %1474 = phi float [ %1472, %1465 ], [ 1.000000e+00, %1440 ]
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 33554432
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1585, label %1479

; <label>:1479                                    ; preds = %1473
  %1480 = add i32 %56, 240
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = lshr i32 %1482, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = add i32 %56, 244
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = lshr i32 %1493, 24
  %1495 = uitofp i32 %1494 to float
  %1496 = fmul fast float %1495, 0x3F70101020000000
  %1497 = and i32 %1493, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, 0x3F70101020000000
  %1500 = lshr i32 %1493, 8
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = lshr i32 %1493, 16
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = add i32 %56, 236
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = lshr i32 %1510, 24
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = and i32 %1510, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = lshr i32 %1510, 8
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = lshr i32 %1510, 16
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = bitcast float %1449 to i32
  %1526 = ashr i32 %1525, 1
  %1527 = sub nsw i32 1597463174, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1449, 5.000000e-01
  %1530 = fmul fast float %1528, %1528
  %1531 = fmul fast float %1530, %1529
  %1532 = fsub fast float 1.500000e+00, %1531
  %1533 = fmul fast float %1528, %1449
  %1534 = fmul fast float %1533, %1532
  %1535 = bitcast float %1450 to i32
  %1536 = ashr i32 %1535, 1
  %1537 = sub nsw i32 1597463174, %1536
  %1538 = bitcast i32 %1537 to float
  %1539 = fmul fast float %1450, 5.000000e-01
  %1540 = fmul fast float %1538, %1538
  %1541 = fmul fast float %1540, %1539
  %1542 = fsub fast float 1.500000e+00, %1541
  %1543 = fmul fast float %1538, %1450
  %1544 = fmul fast float %1543, %1542
  %1545 = bitcast float %1451 to i32
  %1546 = ashr i32 %1545, 1
  %1547 = sub nsw i32 1597463174, %1546
  %1548 = bitcast i32 %1547 to float
  %1549 = fmul fast float %1451, 5.000000e-01
  %1550 = fmul fast float %1548, %1548
  %1551 = fmul fast float %1550, %1549
  %1552 = fsub fast float 1.500000e+00, %1551
  %1553 = fmul fast float %1548, %1451
  %1554 = fmul fast float %1553, %1552
  %1555 = fsub fast float %1534, %1516
  %1556 = fsub fast float %1544, %1520
  %1557 = fsub fast float %1554, %1524
  %1558 = fmul fast float %1555, %1484
  %1559 = fmul fast float %1556, %1486
  %1560 = fmul fast float %1557, %1491
  %1561 = fadd fast float %1558, %1499
  %1562 = fadd fast float %1559, %1503
  %1563 = fadd fast float %1560, %1507
  %1564 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1565 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = fmul fast float %1564, %1564
  %1568 = fmul fast float %1565, %1565
  %1569 = fmul fast float %1566, %1566
  %1570 = fsub fast float %1567, %1449
  %1571 = fsub fast float %1568, %1450
  %1572 = fsub fast float %1569, %1451
  %1573 = fmul fast float %1570, %1474
  %1574 = fmul fast float %1571, %1474
  %1575 = fmul fast float %1572, %1474
  %1576 = fadd fast float %1573, %1449
  %1577 = fadd fast float %1574, %1450
  %1578 = fadd fast float %1575, %1451
  %1579 = fadd fast float %1496, %1460
  %1580 = fsub fast float %1579, %1513
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fsub fast float %1581, %1460
  %1583 = fmul fast float %1582, %1474
  %1584 = fadd fast float %1583, %1460
  br label %1638

; <label>:1585                                    ; preds = %1473
  %1586 = and i32 %1476, 134217728
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1622, label %1588

; <label>:1588                                    ; preds = %1585
  %1589 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1590 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1591 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fadd fast float %1590, -5.000000e-01
  %1594 = fadd fast float %1591, -5.000000e-01
  %1595 = fmul fast float %1592, %1474
  %1596 = fmul fast float %1593, %1474
  %1597 = fmul fast float %1594, %1474
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = fadd fast float %1596, 5.000000e-01
  %1600 = fadd fast float %1597, 5.000000e-01
  %1601 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1604 = fmul fast float %1598, 2.000000e+00
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = fmul fast float %1605, %1601
  %1607 = fadd fast float %1606, %1604
  %1608 = fmul fast float %1607, %1601
  %1609 = fmul fast float %1599, 2.000000e+00
  %1610 = fsub fast float 1.000000e+00, %1609
  %1611 = fmul fast float %1610, %1602
  %1612 = fadd fast float %1611, %1609
  %1613 = fmul fast float %1612, %1602
  %1614 = fmul fast float %1600, 2.000000e+00
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = fmul fast float %1615, %1603
  %1617 = fadd fast float %1616, %1614
  %1618 = fmul fast float %1617, %1603
  %1619 = fmul fast float %1608, %1608
  %1620 = fmul fast float %1613, %1613
  %1621 = fmul fast float %1618, %1618
  br label %1638

; <label>:1622                                    ; preds = %1585
  %1623 = fmul fast float %293, %293
  %1624 = fmul fast float %297, %297
  %1625 = fmul fast float %301, %301
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fadd fast float %1624, -1.000000e+00
  %1628 = fadd fast float %1625, -1.000000e+00
  %1629 = fmul fast float %1474, %1626
  %1630 = fmul fast float %1474, %1627
  %1631 = fmul fast float %1474, %1628
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fmul fast float %1632, %1449
  %1636 = fmul fast float %1633, %1450
  %1637 = fmul fast float %1634, %1451
  br label %1638

; <label>:1638                                    ; preds = %1622, %1588, %1479, %1435
  %1639 = phi float [ %1584, %1479 ], [ %1460, %1588 ], [ %1460, %1622 ], [ 0x3FA23C0BE0000000, %1435 ]
  %1640 = phi float [ %1576, %1479 ], [ %1619, %1588 ], [ %1635, %1622 ], [ 1.000000e+00, %1435 ]
  %1641 = phi float [ %1577, %1479 ], [ %1620, %1588 ], [ %1636, %1622 ], [ 1.000000e+00, %1435 ]
  %1642 = phi float [ %1578, %1479 ], [ %1621, %1588 ], [ %1637, %1622 ], [ 1.000000e+00, %1435 ]
  %1643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.i32 %1643, 1
  %1645 = and i32 %1644, 1
  %1646 = icmp ne i32 %1645, 0
  %1647 = add i32 %56, 356
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 32
  %1651 = icmp ne i32 %1650, 0
  %1652 = and i1 %1646, %1651
  %1653 = select i1 %1652, float 1.000000e+00, float %1640
  %1654 = select i1 %1652, float 0x3FD3333340000000, float %1641
  %1655 = select i1 %1652, float 0x3FD3333340000000, float %1642
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 32
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1732, label %1660

; <label>:1660                                    ; preds = %1638
  %1661 = add i32 %56, 108
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %56, 380
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %1666, 0
  %1668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1668, %dx.types.Handle %97, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1673 = extractvalue %dx.types.ResRet.f32 %1669, 3
  %1674 = and i32 %1663, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = lshr i32 %1663, 8
  %1677 = and i32 %1676, 255
  %1678 = uitofp i32 %1677 to float
  %1679 = lshr i32 %1663, 16
  %1680 = and i32 %1679, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1681, 0x3F70101000000000
  %1683 = fmul fast float %1670, %1675
  %1684 = fadd fast float %1683, %1678
  %1685 = fmul fast float %1684, 0x3F70101000000000
  %1686 = fadd fast float %1671, -5.000000e-01
  %1687 = fadd fast float %1673, -5.000000e-01
  %1688 = fmul fast float %1686, %1682
  %1689 = fmul fast float %1687, %1682
  %1690 = fadd fast float %1688, 5.000000e-01
  %1691 = fadd fast float %1689, 5.000000e-01
  %1692 = fmul fast float %1690, 2.000000e+00
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fmul fast float %1691, 2.000000e+00
  %1695 = fadd fast float %1694, -1.000000e+00
  %1696 = fadd fast float %1693, %1695
  %1697 = fmul fast float %1696, 5.000000e-01
  %1698 = fsub fast float %1693, %1695
  %1699 = fmul fast float %1698, 5.000000e-01
  %1700 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = call float @dx.op.unary.f32(i32 6, float %1699)  ; FAbs(value)
  %1703 = fsub fast float %1701, %1702
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1699, float %1703, float %1697, float %1699, float %1703)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = call float @dx.op.unary.f32(i32 25, float %1704)  ; Rsqrt(value)
  %1706 = fmul fast float %1697, %1705
  %1707 = fmul fast float %1699, %1705
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 67108864
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1728, label %1712

; <label>:1712                                    ; preds = %1660
  %1713 = add i32 %56, 296
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 65535
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = lshr i32 %1715, 16
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = fsub fast float %1685, %1723
  %1725 = fmul fast float %1724, %1717
  %1726 = fadd fast float %1725, %1721
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  br label %1728

; <label>:1728                                    ; preds = %1712, %1660
  %1729 = phi float [ %1727, %1712 ], [ %1685, %1660 ]
  %1730 = call float @dx.op.dot2.f32(i32 54, float %1706, float %1707, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  %1731 = call float @dx.op.dot2.f32(i32 54, float %1706, float %1707, float %1151, float %1152)  ; Dot2(ax,ay,bx,by)
  br label %1732

; <label>:1732                                    ; preds = %1728, %1638
  %1733 = phi float [ %1729, %1728 ], [ 0x3FD6666660000000, %1638 ]
  %1734 = phi float [ %1730, %1728 ], [ 0.000000e+00, %1638 ]
  %1735 = phi float [ %1731, %1728 ], [ 0.000000e+00, %1638 ]
  %1736 = phi float [ %1672, %1728 ], [ 1.000000e+00, %1638 ]
  %1737 = add i32 %56, 176
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = lshr i32 %1739, 22
  %1741 = shl nuw nsw i32 %1740, 5
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 64
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1780, label %1747

; <label>:1747                                    ; preds = %1732
  %1748 = add i32 %56, 396
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 131072
  %1756 = icmp eq i32 %1755, 0
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %97, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = fmul fast float %1758, %281
  %1762 = fmul fast float %1759, %284
  %1763 = fmul fast float %1760, %287
  br i1 %1756, label %1770, label %1764

; <label>:1764                                    ; preds = %1747
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1767 = fmul fast float %1766, %1761
  %1768 = fmul fast float %1766, %1762
  %1769 = fmul fast float %1766, %1763
  br label %1770

; <label>:1770                                    ; preds = %1764, %1747
  %1771 = phi float [ %1767, %1764 ], [ %1761, %1747 ]
  %1772 = phi float [ %1768, %1764 ], [ %1762, %1747 ]
  %1773 = phi float [ %1769, %1764 ], [ %1763, %1747 ]
  %1774 = fmul fast float %1771, %1742
  %1775 = select i1 %222, float %1774, float %1771
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = select i1 %222, float 0.000000e+00, float %1771
  %1778 = select i1 %222, float %1776, float %1772
  %1779 = select i1 %222, float 0.000000e+00, float %1773
  br label %1780

; <label>:1780                                    ; preds = %1770, %1732
  %1781 = phi float [ %1777, %1770 ], [ 0.000000e+00, %1732 ]
  %1782 = phi float [ %1778, %1770 ], [ 0.000000e+00, %1732 ]
  %1783 = phi float [ %1779, %1770 ], [ 0.000000e+00, %1732 ]
  %1784 = add i32 %56, 112
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1786, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = fmul fast float %1791, %1792
  %1794 = fadd fast float %1793, %1788
  %1795 = fmul fast float %1794, 0x3F70101020000000
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  br i1 %1137, label %1797, label %1805

; <label>:1797                                    ; preds = %1780
  %1798 = fsub fast float 1.000000e+00, %1433
  %1799 = fmul fast float %1798, %1125
  %1800 = fmul fast float %1798, %1126
  %1801 = fmul fast float %1798, %1127
  %1802 = fmul fast float %1798, %1128
  %1803 = fmul fast float %1798, %1129
  %1804 = fmul fast float %1798, %1130
  br label %1805

; <label>:1805                                    ; preds = %1797, %1780
  %1806 = phi float [ %1799, %1797 ], [ %1125, %1780 ]
  %1807 = phi float [ %1800, %1797 ], [ %1126, %1780 ]
  %1808 = phi float [ %1801, %1797 ], [ %1127, %1780 ]
  %1809 = phi float [ %1802, %1797 ], [ %1128, %1780 ]
  %1810 = phi float [ %1803, %1797 ], [ %1129, %1780 ]
  %1811 = phi float [ %1804, %1797 ], [ %1130, %1780 ]
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = and i32 %1813, 3
  %1815 = icmp eq i32 %1814, 3
  br i1 %1815, label %1894, label %1816

; <label>:1816                                    ; preds = %1805
  %1817 = and i32 %1813, 16
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1818, float %1433, float 0.000000e+00
  %1820 = icmp eq i32 %1814, 0
  br i1 %1820, label %1821, label %1849

; <label>:1821                                    ; preds = %1816
  %1822 = and i32 %1813, 64
  %1823 = icmp ne i32 %1822, 0
  %1824 = select i1 %1823, float %1433, float 0.000000e+00
  %1825 = fsub fast float %1653, %1806
  %1826 = fsub fast float %1654, %1807
  %1827 = fsub fast float %1655, %1808
  %1828 = fmul fast float %1819, %1825
  %1829 = fmul fast float %1819, %1826
  %1830 = fmul fast float %1819, %1827
  %1831 = fadd fast float %1828, %1806
  %1832 = fadd fast float %1829, %1807
  %1833 = fadd fast float %1830, %1808
  %1834 = fsub fast float %1639, %1131
  %1835 = fmul fast float %1819, %1834
  %1836 = fadd fast float %1835, %1131
  %1837 = fsub fast float %1781, %1809
  %1838 = fsub fast float %1782, %1810
  %1839 = fsub fast float %1783, %1811
  %1840 = fmul fast float %1824, %1837
  %1841 = fmul fast float %1824, %1838
  %1842 = fmul fast float %1824, %1839
  %1843 = fadd fast float %1840, %1809
  %1844 = fadd fast float %1841, %1810
  %1845 = fadd fast float %1842, %1811
  %1846 = fsub fast float %1796, %1135
  %1847 = fmul fast float %1819, %1846
  %1848 = fadd fast float %1847, %1135
  br label %1894

; <label>:1849                                    ; preds = %1816
  %1850 = icmp eq i32 %1814, 1
  br i1 %1850, label %1851, label %1864

; <label>:1851                                    ; preds = %1849
  %1852 = fadd fast float %1653, -1.000000e+00
  %1853 = fadd fast float %1654, -1.000000e+00
  %1854 = fadd fast float %1655, -1.000000e+00
  %1855 = fmul fast float %1819, %1852
  %1856 = fmul fast float %1819, %1853
  %1857 = fmul fast float %1819, %1854
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fadd fast float %1856, 1.000000e+00
  %1860 = fadd fast float %1857, 1.000000e+00
  %1861 = fmul fast float %1858, %1806
  %1862 = fmul fast float %1859, %1807
  %1863 = fmul fast float %1860, %1808
  br label %1894

; <label>:1864                                    ; preds = %1849
  %1865 = icmp eq i32 %1814, 2
  br i1 %1865, label %1866, label %1894

; <label>:1866                                    ; preds = %1864
  %1867 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1868 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1869 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fadd fast float %1868, -5.000000e-01
  %1872 = fadd fast float %1869, -5.000000e-01
  %1873 = fmul fast float %1870, %1819
  %1874 = fmul fast float %1871, %1819
  %1875 = fmul fast float %1872, %1819
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = fadd fast float %1875, 5.000000e-01
  %1879 = fmul fast float %1876, 2.000000e+00
  %1880 = fsub fast float 1.000000e+00, %1879
  %1881 = fmul fast float %1880, %1806
  %1882 = fadd fast float %1881, %1879
  %1883 = fmul fast float %1882, %1806
  %1884 = fmul fast float %1877, 2.000000e+00
  %1885 = fsub fast float 1.000000e+00, %1884
  %1886 = fmul fast float %1885, %1807
  %1887 = fadd fast float %1886, %1884
  %1888 = fmul fast float %1887, %1807
  %1889 = fmul fast float %1878, 2.000000e+00
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = fmul fast float %1890, %1808
  %1892 = fadd fast float %1891, %1889
  %1893 = fmul fast float %1892, %1808
  br label %1894

; <label>:1894                                    ; preds = %1866, %1864, %1851, %1821, %1805
  %1895 = phi float [ %1806, %1805 ], [ %1883, %1866 ], [ %1806, %1864 ], [ %1861, %1851 ], [ %1831, %1821 ]
  %1896 = phi float [ %1807, %1805 ], [ %1888, %1866 ], [ %1807, %1864 ], [ %1862, %1851 ], [ %1832, %1821 ]
  %1897 = phi float [ %1808, %1805 ], [ %1893, %1866 ], [ %1808, %1864 ], [ %1863, %1851 ], [ %1833, %1821 ]
  %1898 = phi float [ %1809, %1805 ], [ %1809, %1866 ], [ %1809, %1864 ], [ %1809, %1851 ], [ %1843, %1821 ]
  %1899 = phi float [ %1810, %1805 ], [ %1810, %1866 ], [ %1810, %1864 ], [ %1810, %1851 ], [ %1844, %1821 ]
  %1900 = phi float [ %1811, %1805 ], [ %1811, %1866 ], [ %1811, %1864 ], [ %1811, %1851 ], [ %1845, %1821 ]
  %1901 = phi float [ %1131, %1805 ], [ %1131, %1866 ], [ %1131, %1864 ], [ %1131, %1851 ], [ %1836, %1821 ]
  %1902 = phi float [ %1135, %1805 ], [ %1135, %1866 ], [ %1135, %1864 ], [ %1135, %1851 ], [ %1848, %1821 ]
  %1903 = and i32 %1813, 12
  %1904 = icmp eq i32 %1903, 12
  br i1 %1904, label %1977, label %1905

; <label>:1905                                    ; preds = %1894
  %1906 = and i32 %1813, 2097184
  %1907 = icmp eq i32 %1906, 2097184
  %1908 = select i1 %1907, float %1433, float 0.000000e+00
  %1909 = and i32 %1813, 4194336
  %1910 = icmp eq i32 %1909, 4194336
  %1911 = select i1 %1910, float %1433, float 0.000000e+00
  %1912 = and i32 %1813, 8388640
  %1913 = icmp eq i32 %1912, 8388640
  %1914 = select i1 %1913, float %1433, float 0.000000e+00
  %1915 = icmp eq i32 %1903, 0
  br i1 %1915, label %1916, label %1929

; <label>:1916                                    ; preds = %1905
  %1917 = fsub fast float %1734, %1123
  %1918 = fsub fast float %1735, %1124
  %1919 = fmul fast float %1908, %1917
  %1920 = fmul fast float %1908, %1918
  %1921 = fadd fast float %1919, %1123
  %1922 = fadd fast float %1920, %1124
  %1923 = fsub fast float %1736, %1134
  %1924 = fmul fast float %1911, %1923
  %1925 = fadd fast float %1924, %1134
  %1926 = fsub fast float %1733, %1133
  %1927 = fmul fast float %1914, %1926
  %1928 = fadd fast float %1927, %1133
  br label %1977

; <label>:1929                                    ; preds = %1905
  %1930 = icmp eq i32 %1903, 4
  br i1 %1930, label %1931, label %1963

; <label>:1931                                    ; preds = %1929
  %1932 = fmul fast float %1908, %1734
  %1933 = fmul fast float %1908, %1735
  %1934 = fadd fast float %1932, %1123
  %1935 = fadd fast float %1933, %1124
  %1936 = call float @dx.op.binary.f32(i32 36, float %1134, float %1736)  ; FMin(a,b)
  %1937 = fsub fast float %1936, %1134
  %1938 = fmul fast float %1937, %1911
  %1939 = fadd fast float %1938, %1134
  %1940 = fadd fast float %1733, %1133
  %1941 = fmul fast float %1940, 0x3FF337FAE0000000
  %1942 = fmul fast float %1133, %1133
  %1943 = fmul fast float %1733, %1733
  %1944 = fadd fast float %1943, %1942
  %1945 = fmul fast float %1944, 0x3FE5152B00000000
  %1946 = fmul fast float %1133, 0xBFCC1F85E0000000
  %1947 = fmul fast float %1946, %1733
  %1948 = fadd fast float %1947, 0xBFE1363700000000
  %1949 = fadd fast float %1948, %1941
  %1950 = fsub fast float %1949, %1945
  %1951 = fmul fast float %1940, 0x3FBA6F0D00000000
  %1952 = fmul fast float %1944, 0x3FD0432880000000
  %1953 = fmul fast float %1133, 0xBFEF110800000000
  %1954 = fmul fast float %1953, %1733
  %1955 = fadd fast float %1954, 1.000000e+00
  %1956 = fsub fast float %1955, %1951
  %1957 = fadd fast float %1956, %1952
  %1958 = fdiv fast float %1950, %1957
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = fsub fast float %1959, %1133
  %1961 = fmul fast float %1960, %1914
  %1962 = fadd fast float %1961, %1133
  br label %1977

; <label>:1963                                    ; preds = %1929
  %1964 = icmp eq i32 %1903, 8
  br i1 %1964, label %1965, label %1977

; <label>:1965                                    ; preds = %1963
  %1966 = fmul fast float %1908, %1734
  %1967 = fmul fast float %1908, %1735
  %1968 = fadd fast float %1966, %1123
  %1969 = fadd fast float %1967, %1124
  %1970 = call float @dx.op.binary.f32(i32 36, float %1134, float %1736)  ; FMin(a,b)
  %1971 = fsub fast float %1970, %1134
  %1972 = fmul fast float %1971, %1911
  %1973 = fadd fast float %1972, %1134
  %1974 = fsub fast float %1733, %1133
  %1975 = fmul fast float %1914, %1974
  %1976 = fadd fast float %1975, %1133
  br label %1977

; <label>:1977                                    ; preds = %1965, %1963, %1931, %1916, %1894, %1432, %1136, %1122
  %1978 = phi float [ %1123, %1894 ], [ %1123, %1432 ], [ %1123, %1122 ], [ %1968, %1965 ], [ %1123, %1963 ], [ %1934, %1931 ], [ %1921, %1916 ], [ %1123, %1136 ]
  %1979 = phi float [ %1124, %1894 ], [ %1124, %1432 ], [ %1124, %1122 ], [ %1969, %1965 ], [ %1124, %1963 ], [ %1935, %1931 ], [ %1922, %1916 ], [ %1124, %1136 ]
  %1980 = phi float [ %1895, %1894 ], [ %1125, %1432 ], [ %1125, %1122 ], [ %1895, %1965 ], [ %1895, %1963 ], [ %1895, %1931 ], [ %1895, %1916 ], [ %1125, %1136 ]
  %1981 = phi float [ %1896, %1894 ], [ %1126, %1432 ], [ %1126, %1122 ], [ %1896, %1965 ], [ %1896, %1963 ], [ %1896, %1931 ], [ %1896, %1916 ], [ %1126, %1136 ]
  %1982 = phi float [ %1897, %1894 ], [ %1127, %1432 ], [ %1127, %1122 ], [ %1897, %1965 ], [ %1897, %1963 ], [ %1897, %1931 ], [ %1897, %1916 ], [ %1127, %1136 ]
  %1983 = phi float [ %1898, %1894 ], [ %1128, %1432 ], [ %1128, %1122 ], [ %1898, %1965 ], [ %1898, %1963 ], [ %1898, %1931 ], [ %1898, %1916 ], [ %1128, %1136 ]
  %1984 = phi float [ %1899, %1894 ], [ %1129, %1432 ], [ %1129, %1122 ], [ %1899, %1965 ], [ %1899, %1963 ], [ %1899, %1931 ], [ %1899, %1916 ], [ %1129, %1136 ]
  %1985 = phi float [ %1900, %1894 ], [ %1130, %1432 ], [ %1130, %1122 ], [ %1900, %1965 ], [ %1900, %1963 ], [ %1900, %1931 ], [ %1900, %1916 ], [ %1130, %1136 ]
  %1986 = phi float [ %1901, %1894 ], [ %1131, %1432 ], [ %1131, %1122 ], [ %1901, %1965 ], [ %1901, %1963 ], [ %1901, %1931 ], [ %1901, %1916 ], [ %1131, %1136 ]
  %1987 = phi float [ %1133, %1894 ], [ %1133, %1432 ], [ %1133, %1122 ], [ %1976, %1965 ], [ %1133, %1963 ], [ %1962, %1931 ], [ %1928, %1916 ], [ %1133, %1136 ]
  %1988 = phi float [ %1134, %1894 ], [ %1134, %1432 ], [ %1134, %1122 ], [ %1973, %1965 ], [ %1134, %1963 ], [ %1939, %1931 ], [ %1925, %1916 ], [ %1134, %1136 ]
  %1989 = phi float [ %1902, %1894 ], [ %1135, %1432 ], [ %1135, %1122 ], [ %1902, %1965 ], [ %1902, %1963 ], [ %1902, %1931 ], [ %1902, %1916 ], [ %1135, %1136 ]
  br i1 %408, label %2831, label %1990

; <label>:1990                                    ; preds = %1977
  %1991 = icmp ult i32 %464, 3
  %1992 = add i32 %56, 56
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %56, 60
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = or i32 %1997, %1994
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2831, label %2000

; <label>:2000                                    ; preds = %1990
  %2001 = and i32 %1994, 262144
  %2002 = icmp ne i32 %2001, 0
  %2003 = select i1 %2002, float %58, float 1.000000e+00
  %2004 = select i1 %2002, float %59, float 0.000000e+00
  %2005 = select i1 %2002, float %60, float 0.000000e+00
  %2006 = select i1 %2002, float %61, float 1.000000e+00
  %2007 = select i1 %2002, float %62, float %83
  %2008 = select i1 %2002, float %63, float %84
  %2009 = add i32 %56, 316
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 16
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = fmul fast float %2013, 0x3F50624DE0000000
  %2015 = add i32 %56, 120
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = lshr i32 %2017, 16
  %2019 = and i32 %2018, 255
  %2020 = lshr i32 %2017, 24
  %2021 = add i32 %56, 324
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 65535
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = lshr i32 %2023, 16
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = add i32 %56, 64
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 22
  %2032 = shl nuw nsw i32 %2031, 5
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = shl i32 %2030, 4
  %2035 = and i32 %2034, 32752
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = lshr i32 %2030, 7
  %2038 = and i32 %2037, 32752
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 3
  %2042 = fmul fast float %2041, 1.000000e+03
  %2043 = fmul fast float %358, %2042
  %2044 = call float @dx.op.unary.f32(i32 22, float %2043)  ; Frc(value)
  %2045 = fadd fast float %2044, %348
  %2046 = fmul fast float %359, %2042
  %2047 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2048 = fadd fast float %2047, %350
  %2049 = fmul fast float %2014, %2042
  %2050 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2051 = fmul fast float %2050, 0x401921FB60000000
  %2052 = fadd fast float %2051, %2033
  %2053 = call float @dx.op.unary.f32(i32 13, float %2052)  ; Sin(value)
  %2054 = call float @dx.op.unary.f32(i32 12, float %2052)  ; Cos(value)
  %2055 = fsub fast float -0.000000e+00, %2053
  %2056 = fadd fast float %2007, -5.000000e-01
  %2057 = fadd fast float %2008, -5.000000e-01
  %2058 = fmul fast float %2025, %2056
  %2059 = fmul fast float %2027, %2057
  %2060 = fadd fast float %2058, 5.000000e-01
  %2061 = fadd fast float %2059, 5.000000e-01
  %2062 = fmul fast float %2036, %2060
  %2063 = fmul fast float %2039, %2061
  %2064 = fmul fast float %2054, %2062
  %2065 = call float @dx.op.tertiary.f32(i32 46, float %2055, float %2063, float %2064)  ; FMad(a,b,c)
  %2066 = fmul fast float %2053, %2062
  %2067 = call float @dx.op.tertiary.f32(i32 46, float %2054, float %2063, float %2066)  ; FMad(a,b,c)
  %2068 = fadd fast float %2045, %2065
  %2069 = fadd fast float %2048, %2067
  %2070 = icmp ugt i32 %2019, 1
  %2071 = icmp ugt i32 %2017, 33554431
  %2072 = or i1 %2071, %2070
  br i1 %2072, label %2073, label %2098

; <label>:2073                                    ; preds = %2000
  %2074 = add i32 %56, 260
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = lshr i32 %2076, 16
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = fmul fast float %2041, %2078
  %2080 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2081 = mul nuw nsw i32 %2019, %2020
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2080, %2082
  %2084 = call float @dx.op.unary.f32(i32 27, float %2083)  ; Round_ni(value)
  %2085 = fptoui float %2084 to i32
  %2086 = urem i32 %2085, %2019
  %2087 = udiv i32 %2085, %2020
  %2088 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2089 = call float @dx.op.unary.f32(i32 22, float %2069)  ; Frc(value)
  %2090 = uitofp i32 %2086 to float
  %2091 = uitofp i32 %2087 to float
  %2092 = fadd fast float %2088, %2090
  %2093 = fadd fast float %2089, %2091
  %2094 = uitofp i32 %2019 to float
  %2095 = uitofp i32 %2020 to float
  %2096 = fdiv fast float %2092, %2094
  %2097 = fdiv fast float %2093, %2095
  br label %2098

; <label>:2098                                    ; preds = %2073, %2000
  %2099 = phi float [ %2096, %2073 ], [ %2068, %2000 ]
  %2100 = phi float [ %2097, %2073 ], [ %2069, %2000 ]
  %2101 = and i32 %1994, 16777216
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2212, label %2103

; <label>:2103                                    ; preds = %2098
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2108 = fadd fast float %2105, %160
  %2109 = fadd fast float %2106, %161
  %2110 = fadd fast float %2107, %162
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = icmp eq i32 %57, 65535
  br i1 %2114, label %2209, label %2115

; <label>:2115                                    ; preds = %2103
  %2116 = lshr i32 %57, 1
  %2117 = shl i32 %2116, 2
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %57, 1
  %2121 = icmp ne i32 %2120, 0
  %2122 = lshr i32 %2119, 16
  %2123 = and i32 %2119, 65535
  %2124 = select i1 %2121, i32 %2122, i32 %2123
  %2125 = icmp eq i32 %2124, 65535
  br i1 %2125, label %2205, label %2126

; <label>:2126                                    ; preds = %2115
  %2127 = mul nuw nsw i32 %2124, 40
  %2128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = extractvalue %dx.types.ResRet.f32 %2128, 1
  %2131 = extractvalue %dx.types.ResRet.f32 %2128, 2
  %2132 = add nuw nsw i32 %2127, 12
  %2133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.ResRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.ResRet.f32 %2133, 2
  %2137 = add nuw nsw i32 %2127, 24
  %2138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.ResRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.ResRet.f32 %2138, 2
  %2142 = add nuw nsw i32 %2127, 36
  %2143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = fsub fast float %2108, %2129
  %2146 = fsub fast float %2109, %2130
  %2147 = fsub fast float %2110, %2131
  %2148 = fmul fast float %2144, %2145
  %2149 = fmul fast float %2144, %2146
  %2150 = fmul fast float %2144, %2147
  %2151 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2152 = call float @dx.op.unary.f32(i32 27, float %2149)  ; Round_ni(value)
  %2153 = call float @dx.op.unary.f32(i32 27, float %2150)  ; Round_ni(value)
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = fadd fast float %2153, 5.000000e-01
  %2157 = fmul fast float %2154, %2134
  %2158 = fmul fast float %2155, %2135
  %2159 = fmul fast float %2156, %2136
  %2160 = shl i32 %57, 2
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2157)  ; Frc(value)
  %2166 = call float @dx.op.unary.f32(i32 22, float %2158)  ; Frc(value)
  %2167 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2164, %dx.types.Handle %49, float %2165, float %2166, float %2167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = fmul fast float %2169, 1.023000e+03
  %2173 = fmul fast float %2170, 1.023000e+03
  %2174 = fmul fast float %2171, 1.023000e+03
  %2175 = fadd fast float %2172, 5.000000e-01
  %2176 = fadd fast float %2173, 5.000000e-01
  %2177 = fadd fast float %2174, 5.000000e-01
  %2178 = call float @dx.op.unary.f32(i32 27, float %2175)  ; Round_ni(value)
  %2179 = call float @dx.op.unary.f32(i32 27, float %2176)  ; Round_ni(value)
  %2180 = call float @dx.op.unary.f32(i32 27, float %2177)  ; Round_ni(value)
  %2181 = fsub fast float %2148, %2151
  %2182 = fsub fast float %2149, %2152
  %2183 = fsub fast float %2150, %2153
  %2184 = fmul fast float %2181, 7.500000e-01
  %2185 = fmul fast float %2182, 7.500000e-01
  %2186 = fmul fast float %2183, 7.500000e-01
  %2187 = fadd fast float %2151, 1.250000e-01
  %2188 = fadd fast float %2187, %2184
  %2189 = fadd fast float %2188, %2178
  %2190 = fadd fast float %2152, 1.250000e-01
  %2191 = fadd fast float %2190, %2185
  %2192 = fadd fast float %2191, %2179
  %2193 = fadd fast float %2153, 1.250000e-01
  %2194 = fadd fast float %2193, %2186
  %2195 = fadd fast float %2194, %2180
  %2196 = fmul fast float %2189, %2139
  %2197 = fmul fast float %2192, %2140
  %2198 = fmul fast float %2195, %2141
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %2200, 0
  %2202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2202, %dx.types.Handle %47, float %2196, float %2197, float %2198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  br label %2205

; <label>:2205                                    ; preds = %2126, %2115
  %2206 = phi float [ %2204, %2126 ], [ -1.000000e+00, %2115 ]
  %2207 = fadd fast float %2206, %2113
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  br label %2209

; <label>:2209                                    ; preds = %2205, %2103
  %2210 = phi float [ %2208, %2205 ], [ %2113, %2103 ]
  %2211 = fmul fast float %2210, %460
  br label %2212

; <label>:2212                                    ; preds = %2209, %2098
  %2213 = phi float [ %2211, %2209 ], [ %460, %2098 ]
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = and i32 %2215, 256
  %2217 = icmp eq i32 %2216, 0
  br i1 %2217, label %2264, label %2218

; <label>:2218                                    ; preds = %2212
  %2219 = add i32 %56, 432
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = add i32 %2221, 0
  %2223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2223, %dx.types.Handle %98, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = add i32 %56, 132
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = shl i32 %2228, 4
  %2230 = and i32 %2229, 32752
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = lshr i32 %2228, 7
  %2233 = and i32 %2232, 32752
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = fsub fast float 1.000000e+00, %2213
  %2236 = call float @dx.op.binary.f32(i32 35, float %2235, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2237 = bitcast float %2213 to i32
  %2238 = sitofp i32 %2237 to float
  %2239 = fadd fast float %2238, 0xC1CFBF8940000000
  %2240 = fmul fast float %2234, %2239
  %2241 = fadd fast float %2240, 0x41CFBF8940000000
  %2242 = fptosi float %2241 to i32
  %2243 = bitcast i32 %2242 to float
  %2244 = bitcast float %2236 to i32
  %2245 = sitofp i32 %2244 to float
  %2246 = fadd fast float %2245, 0xC1CFBF8940000000
  %2247 = fmul fast float %2246, %2234
  %2248 = fadd fast float %2247, 0x41CFBF8940000000
  %2249 = fptosi float %2248 to i32
  %2250 = bitcast i32 %2249 to float
  %2251 = fmul fast float %2243, %2231
  %2252 = fmul fast float %2250, %2231
  %2253 = fsub fast float %2236, %2251
  %2254 = fadd fast float %2252, %2236
  %2255 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2256 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2257 = fsub fast float %2225, %2255
  %2258 = fsub fast float %2256, %2255
  %2259 = bitcast float %2258 to i32
  %2260 = sub nsw i32 2129859010, %2259
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2261, %2257
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  br label %2264

; <label>:2264                                    ; preds = %2218, %2212
  %2265 = phi float [ %2263, %2218 ], [ %2213, %2212 ]
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 128
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2286, label %2270

; <label>:2270                                    ; preds = %2264
  %2271 = add i32 %56, 416
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = add i32 %2273, 0
  %2275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2275, %dx.types.Handle %98, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2277 = extractvalue %dx.types.ResRet.f32 %2276, 0
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 524288
  %2281 = icmp ne i32 %2280, 0
  %2282 = fcmp fast ogt float %2277, 0x3FE0101020000000
  %2283 = select i1 %2282, float 1.000000e+00, float 0.000000e+00
  %2284 = select i1 %2281, float %2283, float %2277
  %2285 = fmul fast float %2284, %2265
  br label %2286

; <label>:2286                                    ; preds = %2270, %2264
  %2287 = phi float [ %2285, %2270 ], [ %2265, %2264 ]
  %2288 = fcmp fast ult float %2287, 0x3F70101020000000
  br i1 %2288, label %2831, label %2289

; <label>:2289                                    ; preds = %2286
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 16
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2492, label %2294

; <label>:2294                                    ; preds = %2289
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = add i32 %56, 368
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = add i32 %2299, 0
  %2301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2301, %dx.types.Handle %97, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2303 = extractvalue %dx.types.ResRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.ResRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.ResRet.f32 %2302, 2
  %2306 = extractvalue %dx.types.ResRet.f32 %2302, 3
  %2307 = and i32 %2296, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = lshr i32 %2296, 8
  %2310 = and i32 %2309, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2306, %2308
  %2313 = fadd fast float %2312, %2311
  %2314 = fmul fast float %2313, 0x3F70101000000000
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 512
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2327, label %2319

; <label>:2319                                    ; preds = %2294
  %2320 = add i32 %56, 448
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2324, %dx.types.Handle %98, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  br label %2327

; <label>:2327                                    ; preds = %2319, %2294
  %2328 = phi float [ %2326, %2319 ], [ 1.000000e+00, %2294 ]
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 33554432
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2439, label %2333

; <label>:2333                                    ; preds = %2327
  %2334 = add i32 %56, 256
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 65535
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = lshr i32 %2336, 16
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = add i32 %56, 260
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = lshr i32 %2347, 24
  %2349 = uitofp i32 %2348 to float
  %2350 = fmul fast float %2349, 0x3F70101020000000
  %2351 = and i32 %2347, 255
  %2352 = uitofp i32 %2351 to float
  %2353 = fmul fast float %2352, 0x3F70101020000000
  %2354 = lshr i32 %2347, 8
  %2355 = and i32 %2354, 255
  %2356 = uitofp i32 %2355 to float
  %2357 = fmul fast float %2356, 0x3F70101020000000
  %2358 = lshr i32 %2347, 16
  %2359 = and i32 %2358, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = add i32 %56, 252
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = lshr i32 %2364, 24
  %2366 = uitofp i32 %2365 to float
  %2367 = fmul fast float %2366, 0x3F70101020000000
  %2368 = and i32 %2364, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2369, 0x3F70101020000000
  %2371 = lshr i32 %2364, 8
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 0x3F70101020000000
  %2375 = lshr i32 %2364, 16
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101020000000
  %2379 = bitcast float %2303 to i32
  %2380 = ashr i32 %2379, 1
  %2381 = sub nsw i32 1597463174, %2380
  %2382 = bitcast i32 %2381 to float
  %2383 = fmul fast float %2303, 5.000000e-01
  %2384 = fmul fast float %2382, %2382
  %2385 = fmul fast float %2384, %2383
  %2386 = fsub fast float 1.500000e+00, %2385
  %2387 = fmul fast float %2382, %2303
  %2388 = fmul fast float %2387, %2386
  %2389 = bitcast float %2304 to i32
  %2390 = ashr i32 %2389, 1
  %2391 = sub nsw i32 1597463174, %2390
  %2392 = bitcast i32 %2391 to float
  %2393 = fmul fast float %2304, 5.000000e-01
  %2394 = fmul fast float %2392, %2392
  %2395 = fmul fast float %2394, %2393
  %2396 = fsub fast float 1.500000e+00, %2395
  %2397 = fmul fast float %2392, %2304
  %2398 = fmul fast float %2397, %2396
  %2399 = bitcast float %2305 to i32
  %2400 = ashr i32 %2399, 1
  %2401 = sub nsw i32 1597463174, %2400
  %2402 = bitcast i32 %2401 to float
  %2403 = fmul fast float %2305, 5.000000e-01
  %2404 = fmul fast float %2402, %2402
  %2405 = fmul fast float %2404, %2403
  %2406 = fsub fast float 1.500000e+00, %2405
  %2407 = fmul fast float %2402, %2305
  %2408 = fmul fast float %2407, %2406
  %2409 = fsub fast float %2388, %2370
  %2410 = fsub fast float %2398, %2374
  %2411 = fsub fast float %2408, %2378
  %2412 = fmul fast float %2409, %2338
  %2413 = fmul fast float %2410, %2340
  %2414 = fmul fast float %2411, %2345
  %2415 = fadd fast float %2412, %2353
  %2416 = fadd fast float %2413, %2357
  %2417 = fadd fast float %2414, %2361
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = fmul fast float %2418, %2418
  %2422 = fmul fast float %2419, %2419
  %2423 = fmul fast float %2420, %2420
  %2424 = fsub fast float %2421, %2303
  %2425 = fsub fast float %2422, %2304
  %2426 = fsub fast float %2423, %2305
  %2427 = fmul fast float %2424, %2328
  %2428 = fmul fast float %2425, %2328
  %2429 = fmul fast float %2426, %2328
  %2430 = fadd fast float %2427, %2303
  %2431 = fadd fast float %2428, %2304
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2350, %2314
  %2434 = fsub fast float %2433, %2367
  %2435 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2436 = fsub fast float %2435, %2314
  %2437 = fmul fast float %2436, %2328
  %2438 = fadd fast float %2437, %2314
  br label %2492

; <label>:2439                                    ; preds = %2327
  %2440 = and i32 %2330, 134217728
  %2441 = icmp eq i32 %2440, 0
  br i1 %2441, label %2476, label %2442

; <label>:2442                                    ; preds = %2439
  %2443 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2444 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2445 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %2446 = fadd fast float %2443, -5.000000e-01
  %2447 = fadd fast float %2444, -5.000000e-01
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fmul fast float %2446, %2328
  %2450 = fmul fast float %2447, %2328
  %2451 = fmul fast float %2448, %2328
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %2304)  ; Sqrt(value)
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = fmul fast float %2452, 2.000000e+00
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2459, %2455
  %2461 = fadd fast float %2460, %2458
  %2462 = fmul fast float %2461, %2455
  %2463 = fmul fast float %2453, 2.000000e+00
  %2464 = fsub fast float 1.000000e+00, %2463
  %2465 = fmul fast float %2464, %2456
  %2466 = fadd fast float %2465, %2463
  %2467 = fmul fast float %2466, %2456
  %2468 = fmul fast float %2454, 2.000000e+00
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2469, %2457
  %2471 = fadd fast float %2470, %2468
  %2472 = fmul fast float %2471, %2457
  %2473 = fmul fast float %2462, %2462
  %2474 = fmul fast float %2467, %2467
  %2475 = fmul fast float %2472, %2472
  br label %2492

; <label>:2476                                    ; preds = %2439
  %2477 = fmul fast float %335, %335
  %2478 = fmul fast float %339, %339
  %2479 = fmul fast float %343, %343
  %2480 = fadd fast float %2477, -1.000000e+00
  %2481 = fadd fast float %2478, -1.000000e+00
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fmul fast float %2328, %2480
  %2484 = fmul fast float %2328, %2481
  %2485 = fmul fast float %2328, %2482
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fmul fast float %2486, %2303
  %2490 = fmul fast float %2487, %2304
  %2491 = fmul fast float %2488, %2305
  br label %2492

; <label>:2492                                    ; preds = %2476, %2442, %2333, %2289
  %2493 = phi float [ %2438, %2333 ], [ %2314, %2442 ], [ %2314, %2476 ], [ 0x3FA23C0BE0000000, %2289 ]
  %2494 = phi float [ %2430, %2333 ], [ %2473, %2442 ], [ %2489, %2476 ], [ 1.000000e+00, %2289 ]
  %2495 = phi float [ %2431, %2333 ], [ %2474, %2442 ], [ %2490, %2476 ], [ 1.000000e+00, %2289 ]
  %2496 = phi float [ %2432, %2333 ], [ %2475, %2442 ], [ %2491, %2476 ], [ 1.000000e+00, %2289 ]
  %2497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.i32 %2497, 1
  %2499 = and i32 %2498, 1
  %2500 = icmp ne i32 %2499, 0
  %2501 = add i32 %56, 356
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 32
  %2505 = icmp ne i32 %2504, 0
  %2506 = and i1 %2500, %2505
  %2507 = select i1 %2506, float 1.000000e+00, float %2494
  %2508 = select i1 %2506, float 0x3FD3333340000000, float %2495
  %2509 = select i1 %2506, float 0x3FD3333340000000, float %2496
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 32
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2586, label %2514

; <label>:2514                                    ; preds = %2492
  %2515 = add i32 %56, 124
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2515, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %56, 384
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %97, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2526 = extractvalue %dx.types.ResRet.f32 %2523, 2
  %2527 = extractvalue %dx.types.ResRet.f32 %2523, 3
  %2528 = and i32 %2517, 255
  %2529 = uitofp i32 %2528 to float
  %2530 = lshr i32 %2517, 8
  %2531 = and i32 %2530, 255
  %2532 = uitofp i32 %2531 to float
  %2533 = lshr i32 %2517, 16
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 0x3F70101000000000
  %2537 = fmul fast float %2524, %2529
  %2538 = fadd fast float %2537, %2532
  %2539 = fmul fast float %2538, 0x3F70101000000000
  %2540 = fadd fast float %2525, -5.000000e-01
  %2541 = fadd fast float %2527, -5.000000e-01
  %2542 = fmul fast float %2540, %2536
  %2543 = fmul fast float %2541, %2536
  %2544 = fadd fast float %2542, 5.000000e-01
  %2545 = fadd fast float %2543, 5.000000e-01
  %2546 = fmul fast float %2544, 2.000000e+00
  %2547 = fadd fast float %2546, -1.000000e+00
  %2548 = fmul fast float %2545, 2.000000e+00
  %2549 = fadd fast float %2548, -1.000000e+00
  %2550 = fadd fast float %2547, %2549
  %2551 = fmul fast float %2550, 5.000000e-01
  %2552 = fsub fast float %2547, %2549
  %2553 = fmul fast float %2552, 5.000000e-01
  %2554 = call float @dx.op.unary.f32(i32 6, float %2551)  ; FAbs(value)
  %2555 = fsub fast float 1.000000e+00, %2554
  %2556 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2557 = fsub fast float %2555, %2556
  %2558 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2553, float %2557, float %2551, float %2553, float %2557)  ; Dot3(ax,ay,az,bx,by,bz)
  %2559 = call float @dx.op.unary.f32(i32 25, float %2558)  ; Rsqrt(value)
  %2560 = fmul fast float %2551, %2559
  %2561 = fmul fast float %2553, %2559
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 67108864
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2582, label %2566

; <label>:2566                                    ; preds = %2514
  %2567 = add i32 %56, 312
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 65535
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 65535
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = lshr i32 %2569, 16
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = fsub fast float %2539, %2577
  %2579 = fmul fast float %2578, %2571
  %2580 = fadd fast float %2579, %2575
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  br label %2582

; <label>:2582                                    ; preds = %2566, %2514
  %2583 = phi float [ %2581, %2566 ], [ %2539, %2514 ]
  %2584 = call float @dx.op.dot2.f32(i32 54, float %2560, float %2561, float %2003, float %2004)  ; Dot2(ax,ay,bx,by)
  %2585 = call float @dx.op.dot2.f32(i32 54, float %2560, float %2561, float %2005, float %2006)  ; Dot2(ax,ay,bx,by)
  br label %2586

; <label>:2586                                    ; preds = %2582, %2492
  %2587 = phi float [ %2583, %2582 ], [ 0x3FD6666660000000, %2492 ]
  %2588 = phi float [ %2584, %2582 ], [ 0.000000e+00, %2492 ]
  %2589 = phi float [ %2585, %2582 ], [ 0.000000e+00, %2492 ]
  %2590 = phi float [ %2526, %2582 ], [ 1.000000e+00, %2492 ]
  %2591 = add i32 %56, 192
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = lshr i32 %2593, 22
  %2595 = shl nuw nsw i32 %2594, 5
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = and i32 %2598, 64
  %2600 = icmp eq i32 %2599, 0
  br i1 %2600, label %2634, label %2601

; <label>:2601                                    ; preds = %2586
  %2602 = add i32 %56, 400
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %2604, 0
  %2606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 131072
  %2610 = icmp eq i32 %2609, 0
  %2611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2606, %dx.types.Handle %97, float %2099, float %2100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2612 = extractvalue %dx.types.ResRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.ResRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.ResRet.f32 %2611, 2
  %2615 = fmul fast float %2612, %323
  %2616 = fmul fast float %2613, %326
  %2617 = fmul fast float %2614, %329
  br i1 %2610, label %2624, label %2618

; <label>:2618                                    ; preds = %2601
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2621 = fmul fast float %2620, %2615
  %2622 = fmul fast float %2620, %2616
  %2623 = fmul fast float %2620, %2617
  br label %2624

; <label>:2624                                    ; preds = %2618, %2601
  %2625 = phi float [ %2621, %2618 ], [ %2615, %2601 ]
  %2626 = phi float [ %2622, %2618 ], [ %2616, %2601 ]
  %2627 = phi float [ %2623, %2618 ], [ %2617, %2601 ]
  %2628 = fmul fast float %2625, %2596
  %2629 = select i1 %222, float %2628, float %2625
  %2630 = call float @dx.op.dot3.f32(i32 55, float %2629, float %2626, float %2627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2631 = select i1 %222, float 0.000000e+00, float %2625
  %2632 = select i1 %222, float %2630, float %2626
  %2633 = select i1 %222, float 0.000000e+00, float %2627
  br label %2634

; <label>:2634                                    ; preds = %2624, %2586
  %2635 = phi float [ %2631, %2624 ], [ 0.000000e+00, %2586 ]
  %2636 = phi float [ %2632, %2624 ], [ 0.000000e+00, %2586 ]
  %2637 = phi float [ %2633, %2624 ], [ 0.000000e+00, %2586 ]
  %2638 = add i32 %56, 128
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = lshr i32 %2640, 8
  %2644 = and i32 %2643, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2507, float %2508, float %2509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = fmul fast float %2645, %2646
  %2648 = fadd fast float %2647, %2642
  %2649 = fmul fast float %2648, 0x3F70101020000000
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  br i1 %1991, label %2651, label %2659

; <label>:2651                                    ; preds = %2634
  %2652 = fsub fast float 1.000000e+00, %2287
  %2653 = fmul fast float %2652, %1980
  %2654 = fmul fast float %2652, %1981
  %2655 = fmul fast float %2652, %1982
  %2656 = fmul fast float %2652, %1983
  %2657 = fmul fast float %2652, %1984
  %2658 = fmul fast float %2652, %1985
  br label %2659

; <label>:2659                                    ; preds = %2651, %2634
  %2660 = phi float [ %2653, %2651 ], [ %1980, %2634 ]
  %2661 = phi float [ %2654, %2651 ], [ %1981, %2634 ]
  %2662 = phi float [ %2655, %2651 ], [ %1982, %2634 ]
  %2663 = phi float [ %2656, %2651 ], [ %1983, %2634 ]
  %2664 = phi float [ %2657, %2651 ], [ %1984, %2634 ]
  %2665 = phi float [ %2658, %2651 ], [ %1985, %2634 ]
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = and i32 %2667, 3
  %2669 = icmp eq i32 %2668, 3
  br i1 %2669, label %2748, label %2670

; <label>:2670                                    ; preds = %2659
  %2671 = and i32 %2667, 16
  %2672 = icmp ne i32 %2671, 0
  %2673 = select i1 %2672, float %2287, float 0.000000e+00
  %2674 = icmp eq i32 %2668, 0
  br i1 %2674, label %2675, label %2703

; <label>:2675                                    ; preds = %2670
  %2676 = and i32 %2667, 64
  %2677 = icmp ne i32 %2676, 0
  %2678 = select i1 %2677, float %2287, float 0.000000e+00
  %2679 = fsub fast float %2507, %2660
  %2680 = fsub fast float %2508, %2661
  %2681 = fsub fast float %2509, %2662
  %2682 = fmul fast float %2673, %2679
  %2683 = fmul fast float %2673, %2680
  %2684 = fmul fast float %2673, %2681
  %2685 = fadd fast float %2682, %2660
  %2686 = fadd fast float %2683, %2661
  %2687 = fadd fast float %2684, %2662
  %2688 = fsub fast float %2493, %1986
  %2689 = fmul fast float %2673, %2688
  %2690 = fadd fast float %2689, %1986
  %2691 = fsub fast float %2635, %2663
  %2692 = fsub fast float %2636, %2664
  %2693 = fsub fast float %2637, %2665
  %2694 = fmul fast float %2678, %2691
  %2695 = fmul fast float %2678, %2692
  %2696 = fmul fast float %2678, %2693
  %2697 = fadd fast float %2694, %2663
  %2698 = fadd fast float %2695, %2664
  %2699 = fadd fast float %2696, %2665
  %2700 = fsub fast float %2650, %1989
  %2701 = fmul fast float %2673, %2700
  %2702 = fadd fast float %2701, %1989
  br label %2748

; <label>:2703                                    ; preds = %2670
  %2704 = icmp eq i32 %2668, 1
  br i1 %2704, label %2705, label %2718

; <label>:2705                                    ; preds = %2703
  %2706 = fadd fast float %2507, -1.000000e+00
  %2707 = fadd fast float %2508, -1.000000e+00
  %2708 = fadd fast float %2509, -1.000000e+00
  %2709 = fmul fast float %2673, %2706
  %2710 = fmul fast float %2673, %2707
  %2711 = fmul fast float %2673, %2708
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fadd fast float %2710, 1.000000e+00
  %2714 = fadd fast float %2711, 1.000000e+00
  %2715 = fmul fast float %2712, %2660
  %2716 = fmul fast float %2713, %2661
  %2717 = fmul fast float %2714, %2662
  br label %2748

; <label>:2718                                    ; preds = %2703
  %2719 = icmp eq i32 %2668, 2
  br i1 %2719, label %2720, label %2748

; <label>:2720                                    ; preds = %2718
  %2721 = call float @dx.op.unary.f32(i32 24, float %2507)  ; Sqrt(value)
  %2722 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2723 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fadd fast float %2722, -5.000000e-01
  %2726 = fadd fast float %2723, -5.000000e-01
  %2727 = fmul fast float %2724, %2673
  %2728 = fmul fast float %2725, %2673
  %2729 = fmul fast float %2726, %2673
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fadd fast float %2728, 5.000000e-01
  %2732 = fadd fast float %2729, 5.000000e-01
  %2733 = fmul fast float %2730, 2.000000e+00
  %2734 = fsub fast float 1.000000e+00, %2733
  %2735 = fmul fast float %2734, %2660
  %2736 = fadd fast float %2735, %2733
  %2737 = fmul fast float %2736, %2660
  %2738 = fmul fast float %2731, 2.000000e+00
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = fmul fast float %2739, %2661
  %2741 = fadd fast float %2740, %2738
  %2742 = fmul fast float %2741, %2661
  %2743 = fmul fast float %2732, 2.000000e+00
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fmul fast float %2744, %2662
  %2746 = fadd fast float %2745, %2743
  %2747 = fmul fast float %2746, %2662
  br label %2748

; <label>:2748                                    ; preds = %2720, %2718, %2705, %2675, %2659
  %2749 = phi float [ %2660, %2659 ], [ %2737, %2720 ], [ %2660, %2718 ], [ %2715, %2705 ], [ %2685, %2675 ]
  %2750 = phi float [ %2661, %2659 ], [ %2742, %2720 ], [ %2661, %2718 ], [ %2716, %2705 ], [ %2686, %2675 ]
  %2751 = phi float [ %2662, %2659 ], [ %2747, %2720 ], [ %2662, %2718 ], [ %2717, %2705 ], [ %2687, %2675 ]
  %2752 = phi float [ %2663, %2659 ], [ %2663, %2720 ], [ %2663, %2718 ], [ %2663, %2705 ], [ %2697, %2675 ]
  %2753 = phi float [ %2664, %2659 ], [ %2664, %2720 ], [ %2664, %2718 ], [ %2664, %2705 ], [ %2698, %2675 ]
  %2754 = phi float [ %2665, %2659 ], [ %2665, %2720 ], [ %2665, %2718 ], [ %2665, %2705 ], [ %2699, %2675 ]
  %2755 = phi float [ %1986, %2659 ], [ %1986, %2720 ], [ %1986, %2718 ], [ %1986, %2705 ], [ %2690, %2675 ]
  %2756 = phi float [ %1989, %2659 ], [ %1989, %2720 ], [ %1989, %2718 ], [ %1989, %2705 ], [ %2702, %2675 ]
  %2757 = and i32 %2667, 12
  %2758 = icmp eq i32 %2757, 12
  br i1 %2758, label %2831, label %2759

; <label>:2759                                    ; preds = %2748
  %2760 = and i32 %2667, 2097184
  %2761 = icmp eq i32 %2760, 2097184
  %2762 = select i1 %2761, float %2287, float 0.000000e+00
  %2763 = and i32 %2667, 4194336
  %2764 = icmp eq i32 %2763, 4194336
  %2765 = select i1 %2764, float %2287, float 0.000000e+00
  %2766 = and i32 %2667, 8388640
  %2767 = icmp eq i32 %2766, 8388640
  %2768 = select i1 %2767, float %2287, float 0.000000e+00
  %2769 = icmp eq i32 %2757, 0
  br i1 %2769, label %2770, label %2783

; <label>:2770                                    ; preds = %2759
  %2771 = fsub fast float %2588, %1978
  %2772 = fsub fast float %2589, %1979
  %2773 = fmul fast float %2762, %2771
  %2774 = fmul fast float %2762, %2772
  %2775 = fadd fast float %2773, %1978
  %2776 = fadd fast float %2774, %1979
  %2777 = fsub fast float %2590, %1988
  %2778 = fmul fast float %2765, %2777
  %2779 = fadd fast float %2778, %1988
  %2780 = fsub fast float %2587, %1987
  %2781 = fmul fast float %2768, %2780
  %2782 = fadd fast float %2781, %1987
  br label %2831

; <label>:2783                                    ; preds = %2759
  %2784 = icmp eq i32 %2757, 4
  br i1 %2784, label %2785, label %2817

; <label>:2785                                    ; preds = %2783
  %2786 = fmul fast float %2762, %2588
  %2787 = fmul fast float %2762, %2589
  %2788 = fadd fast float %2786, %1978
  %2789 = fadd fast float %2787, %1979
  %2790 = call float @dx.op.binary.f32(i32 36, float %1988, float %2590)  ; FMin(a,b)
  %2791 = fsub fast float %2790, %1988
  %2792 = fmul fast float %2791, %2765
  %2793 = fadd fast float %2792, %1988
  %2794 = fadd fast float %2587, %1987
  %2795 = fmul fast float %2794, 0x3FF337FAE0000000
  %2796 = fmul fast float %1987, %1987
  %2797 = fmul fast float %2587, %2587
  %2798 = fadd fast float %2797, %2796
  %2799 = fmul fast float %2798, 0x3FE5152B00000000
  %2800 = fmul fast float %1987, 0xBFCC1F85E0000000
  %2801 = fmul fast float %2800, %2587
  %2802 = fadd fast float %2801, 0xBFE1363700000000
  %2803 = fadd fast float %2802, %2795
  %2804 = fsub fast float %2803, %2799
  %2805 = fmul fast float %2794, 0x3FBA6F0D00000000
  %2806 = fmul fast float %2798, 0x3FD0432880000000
  %2807 = fmul fast float %1987, 0xBFEF110800000000
  %2808 = fmul fast float %2807, %2587
  %2809 = fadd fast float %2808, 1.000000e+00
  %2810 = fsub fast float %2809, %2805
  %2811 = fadd fast float %2810, %2806
  %2812 = fdiv fast float %2804, %2811
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2814 = fsub fast float %2813, %1987
  %2815 = fmul fast float %2814, %2768
  %2816 = fadd fast float %2815, %1987
  br label %2831

; <label>:2817                                    ; preds = %2783
  %2818 = icmp eq i32 %2757, 8
  br i1 %2818, label %2819, label %2831

; <label>:2819                                    ; preds = %2817
  %2820 = fmul fast float %2762, %2588
  %2821 = fmul fast float %2762, %2589
  %2822 = fadd fast float %2820, %1978
  %2823 = fadd fast float %2821, %1979
  %2824 = call float @dx.op.binary.f32(i32 36, float %1988, float %2590)  ; FMin(a,b)
  %2825 = fsub fast float %2824, %1988
  %2826 = fmul fast float %2825, %2765
  %2827 = fadd fast float %2826, %1988
  %2828 = fsub fast float %2587, %1987
  %2829 = fmul fast float %2768, %2828
  %2830 = fadd fast float %2829, %1987
  br label %2831

; <label>:2831                                    ; preds = %2819, %2817, %2785, %2770, %2748, %2286, %1990, %1977
  %2832 = phi float [ %1978, %2748 ], [ %1978, %2286 ], [ %1978, %1977 ], [ %2822, %2819 ], [ %1978, %2817 ], [ %2788, %2785 ], [ %2775, %2770 ], [ %1978, %1990 ]
  %2833 = phi float [ %1979, %2748 ], [ %1979, %2286 ], [ %1979, %1977 ], [ %2823, %2819 ], [ %1979, %2817 ], [ %2789, %2785 ], [ %2776, %2770 ], [ %1979, %1990 ]
  %2834 = phi float [ %2749, %2748 ], [ %1980, %2286 ], [ %1980, %1977 ], [ %2749, %2819 ], [ %2749, %2817 ], [ %2749, %2785 ], [ %2749, %2770 ], [ %1980, %1990 ]
  %2835 = phi float [ %2750, %2748 ], [ %1981, %2286 ], [ %1981, %1977 ], [ %2750, %2819 ], [ %2750, %2817 ], [ %2750, %2785 ], [ %2750, %2770 ], [ %1981, %1990 ]
  %2836 = phi float [ %2751, %2748 ], [ %1982, %2286 ], [ %1982, %1977 ], [ %2751, %2819 ], [ %2751, %2817 ], [ %2751, %2785 ], [ %2751, %2770 ], [ %1982, %1990 ]
  %2837 = phi float [ %2752, %2748 ], [ %1983, %2286 ], [ %1983, %1977 ], [ %2752, %2819 ], [ %2752, %2817 ], [ %2752, %2785 ], [ %2752, %2770 ], [ %1983, %1990 ]
  %2838 = phi float [ %2753, %2748 ], [ %1984, %2286 ], [ %1984, %1977 ], [ %2753, %2819 ], [ %2753, %2817 ], [ %2753, %2785 ], [ %2753, %2770 ], [ %1984, %1990 ]
  %2839 = phi float [ %2754, %2748 ], [ %1985, %2286 ], [ %1985, %1977 ], [ %2754, %2819 ], [ %2754, %2817 ], [ %2754, %2785 ], [ %2754, %2770 ], [ %1985, %1990 ]
  %2840 = phi float [ %2755, %2748 ], [ %1986, %2286 ], [ %1986, %1977 ], [ %2755, %2819 ], [ %2755, %2817 ], [ %2755, %2785 ], [ %2755, %2770 ], [ %1986, %1990 ]
  %2841 = phi float [ %1987, %2748 ], [ %1987, %2286 ], [ %1987, %1977 ], [ %2830, %2819 ], [ %1987, %2817 ], [ %2816, %2785 ], [ %2782, %2770 ], [ %1987, %1990 ]
  %2842 = phi float [ %1988, %2748 ], [ %1988, %2286 ], [ %1988, %1977 ], [ %2827, %2819 ], [ %1988, %2817 ], [ %2793, %2785 ], [ %2779, %2770 ], [ %1988, %1990 ]
  %2843 = phi float [ %2756, %2748 ], [ %1989, %2286 ], [ %1989, %1977 ], [ %2756, %2819 ], [ %2756, %2817 ], [ %2756, %2785 ], [ %2756, %2770 ], [ %1989, %1990 ]
  br i1 %410, label %3685, label %2844

; <label>:2844                                    ; preds = %2831
  %2845 = icmp ult i32 %464, 4
  %2846 = add i32 %56, 72
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %56, 76
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = or i32 %2851, %2848
  %2853 = icmp eq i32 %2852, 0
  br i1 %2853, label %3685, label %2854

; <label>:2854                                    ; preds = %2844
  %2855 = and i32 %2848, 262144
  %2856 = icmp ne i32 %2855, 0
  %2857 = select i1 %2856, float %58, float 1.000000e+00
  %2858 = select i1 %2856, float %59, float 0.000000e+00
  %2859 = select i1 %2856, float %60, float 0.000000e+00
  %2860 = select i1 %2856, float %61, float 1.000000e+00
  %2861 = select i1 %2856, float %62, float %83
  %2862 = select i1 %2856, float %63, float %84
  %2863 = add i32 %56, 332
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = fmul fast float %2867, 0x3F50624DE0000000
  %2869 = add i32 %56, 136
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 16
  %2873 = and i32 %2872, 255
  %2874 = lshr i32 %2871, 24
  %2875 = add i32 %56, 340
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 65535
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = lshr i32 %2877, 16
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = add i32 %56, 80
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = lshr i32 %2884, 22
  %2886 = shl nuw nsw i32 %2885, 5
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = shl i32 %2884, 4
  %2889 = and i32 %2888, 32752
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2884, 7
  %2892 = and i32 %2891, 32752
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2896 = fmul fast float %2895, 1.000000e+03
  %2897 = fmul fast float %400, %2896
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = fadd fast float %2898, %390
  %2900 = fmul fast float %401, %2896
  %2901 = call float @dx.op.unary.f32(i32 22, float %2900)  ; Frc(value)
  %2902 = fadd fast float %2901, %392
  %2903 = fmul fast float %2868, %2896
  %2904 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2905 = fmul fast float %2904, 0x401921FB60000000
  %2906 = fadd fast float %2905, %2887
  %2907 = call float @dx.op.unary.f32(i32 13, float %2906)  ; Sin(value)
  %2908 = call float @dx.op.unary.f32(i32 12, float %2906)  ; Cos(value)
  %2909 = fsub fast float -0.000000e+00, %2907
  %2910 = fadd fast float %2861, -5.000000e-01
  %2911 = fadd fast float %2862, -5.000000e-01
  %2912 = fmul fast float %2879, %2910
  %2913 = fmul fast float %2881, %2911
  %2914 = fadd fast float %2912, 5.000000e-01
  %2915 = fadd fast float %2913, 5.000000e-01
  %2916 = fmul fast float %2890, %2914
  %2917 = fmul fast float %2893, %2915
  %2918 = fmul fast float %2908, %2916
  %2919 = call float @dx.op.tertiary.f32(i32 46, float %2909, float %2917, float %2918)  ; FMad(a,b,c)
  %2920 = fmul fast float %2907, %2916
  %2921 = call float @dx.op.tertiary.f32(i32 46, float %2908, float %2917, float %2920)  ; FMad(a,b,c)
  %2922 = fadd fast float %2899, %2919
  %2923 = fadd fast float %2902, %2921
  %2924 = icmp ugt i32 %2873, 1
  %2925 = icmp ugt i32 %2871, 33554431
  %2926 = or i1 %2925, %2924
  br i1 %2926, label %2927, label %2952

; <label>:2927                                    ; preds = %2854
  %2928 = add i32 %56, 276
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = lshr i32 %2930, 16
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = fmul fast float %2895, %2932
  %2934 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2935 = mul nuw nsw i32 %2873, %2874
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2934, %2936
  %2938 = call float @dx.op.unary.f32(i32 27, float %2937)  ; Round_ni(value)
  %2939 = fptoui float %2938 to i32
  %2940 = urem i32 %2939, %2873
  %2941 = udiv i32 %2939, %2874
  %2942 = call float @dx.op.unary.f32(i32 22, float %2922)  ; Frc(value)
  %2943 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2944 = uitofp i32 %2940 to float
  %2945 = uitofp i32 %2941 to float
  %2946 = fadd fast float %2942, %2944
  %2947 = fadd fast float %2943, %2945
  %2948 = uitofp i32 %2873 to float
  %2949 = uitofp i32 %2874 to float
  %2950 = fdiv fast float %2946, %2948
  %2951 = fdiv fast float %2947, %2949
  br label %2952

; <label>:2952                                    ; preds = %2927, %2854
  %2953 = phi float [ %2950, %2927 ], [ %2922, %2854 ]
  %2954 = phi float [ %2951, %2927 ], [ %2923, %2854 ]
  %2955 = and i32 %2848, 16777216
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3066, label %2957

; <label>:2957                                    ; preds = %2952
  %2958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2959 = extractvalue %dx.types.CBufRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.CBufRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.CBufRet.f32 %2958, 2
  %2962 = fadd fast float %2959, %160
  %2963 = fadd fast float %2960, %161
  %2964 = fadd fast float %2961, %162
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2968 = icmp eq i32 %57, 65535
  br i1 %2968, label %3063, label %2969

; <label>:2969                                    ; preds = %2957
  %2970 = lshr i32 %57, 1
  %2971 = shl i32 %2970, 2
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %57, 1
  %2975 = icmp ne i32 %2974, 0
  %2976 = lshr i32 %2973, 16
  %2977 = and i32 %2973, 65535
  %2978 = select i1 %2975, i32 %2976, i32 %2977
  %2979 = icmp eq i32 %2978, 65535
  br i1 %2979, label %3059, label %2980

; <label>:2980                                    ; preds = %2969
  %2981 = mul nuw nsw i32 %2978, 40
  %2982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = add nuw nsw i32 %2981, 12
  %2987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = add nuw nsw i32 %2981, 24
  %2992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = add nuw nsw i32 %2981, 36
  %2997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = fsub fast float %2962, %2983
  %3000 = fsub fast float %2963, %2984
  %3001 = fsub fast float %2964, %2985
  %3002 = fmul fast float %2998, %2999
  %3003 = fmul fast float %2998, %3000
  %3004 = fmul fast float %2998, %3001
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = call float @dx.op.unary.f32(i32 27, float %3003)  ; Round_ni(value)
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fmul fast float %3008, %2988
  %3012 = fmul fast float %3009, %2989
  %3013 = fmul fast float %3010, %2990
  %3014 = shl i32 %57, 2
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = add i32 %3016, 0
  %3018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3019 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3020 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3021 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3018, %dx.types.Handle %49, float %3019, float %3020, float %3021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fmul fast float %3023, 1.023000e+03
  %3027 = fmul fast float %3024, 1.023000e+03
  %3028 = fmul fast float %3025, 1.023000e+03
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = fadd fast float %3027, 5.000000e-01
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3033 = call float @dx.op.unary.f32(i32 27, float %3030)  ; Round_ni(value)
  %3034 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3035 = fsub fast float %3002, %3005
  %3036 = fsub fast float %3003, %3006
  %3037 = fsub fast float %3004, %3007
  %3038 = fmul fast float %3035, 7.500000e-01
  %3039 = fmul fast float %3036, 7.500000e-01
  %3040 = fmul fast float %3037, 7.500000e-01
  %3041 = fadd fast float %3005, 1.250000e-01
  %3042 = fadd fast float %3041, %3038
  %3043 = fadd fast float %3042, %3032
  %3044 = fadd fast float %3006, 1.250000e-01
  %3045 = fadd fast float %3044, %3039
  %3046 = fadd fast float %3045, %3033
  %3047 = fadd fast float %3007, 1.250000e-01
  %3048 = fadd fast float %3047, %3040
  %3049 = fadd fast float %3048, %3034
  %3050 = fmul fast float %3043, %2993
  %3051 = fmul fast float %3046, %2994
  %3052 = fmul fast float %3049, %2995
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3056, %dx.types.Handle %47, float %3050, float %3051, float %3052, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  br label %3059

; <label>:3059                                    ; preds = %2980, %2969
  %3060 = phi float [ %3058, %2980 ], [ -1.000000e+00, %2969 ]
  %3061 = fadd fast float %3060, %2967
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  br label %3063

; <label>:3063                                    ; preds = %3059, %2957
  %3064 = phi float [ %3062, %3059 ], [ %2967, %2957 ]
  %3065 = fmul fast float %3064, %459
  br label %3066

; <label>:3066                                    ; preds = %3063, %2952
  %3067 = phi float [ %3065, %3063 ], [ %459, %2952 ]
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = and i32 %3069, 256
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3118, label %3072

; <label>:3072                                    ; preds = %3066
  %3073 = add i32 %56, 436
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = add i32 %3075, 0
  %3077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3077, %dx.types.Handle %98, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = add i32 %56, 148
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = shl i32 %3082, 4
  %3084 = and i32 %3083, 32752
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = lshr i32 %3082, 7
  %3087 = and i32 %3086, 32752
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = fsub fast float 1.000000e+00, %3067
  %3090 = call float @dx.op.binary.f32(i32 35, float %3089, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3091 = bitcast float %3067 to i32
  %3092 = sitofp i32 %3091 to float
  %3093 = fadd fast float %3092, 0xC1CFBF8940000000
  %3094 = fmul fast float %3088, %3093
  %3095 = fadd fast float %3094, 0x41CFBF8940000000
  %3096 = fptosi float %3095 to i32
  %3097 = bitcast i32 %3096 to float
  %3098 = bitcast float %3090 to i32
  %3099 = sitofp i32 %3098 to float
  %3100 = fadd fast float %3099, 0xC1CFBF8940000000
  %3101 = fmul fast float %3100, %3088
  %3102 = fadd fast float %3101, 0x41CFBF8940000000
  %3103 = fptosi float %3102 to i32
  %3104 = bitcast i32 %3103 to float
  %3105 = fmul fast float %3097, %3085
  %3106 = fmul fast float %3104, %3085
  %3107 = fsub fast float %3090, %3105
  %3108 = fadd fast float %3106, %3090
  %3109 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3110 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3111 = fsub fast float %3079, %3109
  %3112 = fsub fast float %3110, %3109
  %3113 = bitcast float %3112 to i32
  %3114 = sub nsw i32 2129859010, %3113
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3115, %3111
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  br label %3118

; <label>:3118                                    ; preds = %3072, %3066
  %3119 = phi float [ %3117, %3072 ], [ %3067, %3066 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 128
  %3123 = icmp eq i32 %3122, 0
  br i1 %3123, label %3140, label %3124

; <label>:3124                                    ; preds = %3118
  %3125 = add i32 %56, 420
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = add i32 %3127, 0
  %3129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3129, %dx.types.Handle %98, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3131 = extractvalue %dx.types.ResRet.f32 %3130, 0
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 524288
  %3135 = icmp ne i32 %3134, 0
  %3136 = fcmp fast ogt float %3131, 0x3FE0101020000000
  %3137 = select i1 %3136, float 1.000000e+00, float 0.000000e+00
  %3138 = select i1 %3135, float %3137, float %3131
  %3139 = fmul fast float %3138, %3119
  br label %3140

; <label>:3140                                    ; preds = %3124, %3118
  %3141 = phi float [ %3139, %3124 ], [ %3119, %3118 ]
  %3142 = fcmp fast ult float %3141, 0x3F70101020000000
  br i1 %3142, label %3685, label %3143

; <label>:3143                                    ; preds = %3140
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 16
  %3147 = icmp eq i32 %3146, 0
  br i1 %3147, label %3346, label %3148

; <label>:3148                                    ; preds = %3143
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = add i32 %56, 372
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %3153, 0
  %3155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3155, %dx.types.Handle %97, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3157 = extractvalue %dx.types.ResRet.f32 %3156, 0
  %3158 = extractvalue %dx.types.ResRet.f32 %3156, 1
  %3159 = extractvalue %dx.types.ResRet.f32 %3156, 2
  %3160 = extractvalue %dx.types.ResRet.f32 %3156, 3
  %3161 = and i32 %3150, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = lshr i32 %3150, 8
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = fmul fast float %3160, %3162
  %3167 = fadd fast float %3166, %3165
  %3168 = fmul fast float %3167, 0x3F70101000000000
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 512
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3181, label %3173

; <label>:3173                                    ; preds = %3148
  %3174 = add i32 %56, 452
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = add i32 %3176, 0
  %3178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3178, %dx.types.Handle %98, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  br label %3181

; <label>:3181                                    ; preds = %3173, %3148
  %3182 = phi float [ %3180, %3173 ], [ 1.000000e+00, %3148 ]
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 33554432
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3293, label %3187

; <label>:3187                                    ; preds = %3181
  %3188 = add i32 %56, 272
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 65535
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = lshr i32 %3190, 16
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = add i32 %56, 276
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = lshr i32 %3201, 24
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = and i32 %3201, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3201, 8
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3201, 16
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = add i32 %56, 268
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = lshr i32 %3218, 24
  %3220 = uitofp i32 %3219 to float
  %3221 = fmul fast float %3220, 0x3F70101020000000
  %3222 = and i32 %3218, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = lshr i32 %3218, 8
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = lshr i32 %3218, 16
  %3230 = and i32 %3229, 255
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = bitcast float %3157 to i32
  %3234 = ashr i32 %3233, 1
  %3235 = sub nsw i32 1597463174, %3234
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3157, 5.000000e-01
  %3238 = fmul fast float %3236, %3236
  %3239 = fmul fast float %3238, %3237
  %3240 = fsub fast float 1.500000e+00, %3239
  %3241 = fmul fast float %3236, %3157
  %3242 = fmul fast float %3241, %3240
  %3243 = bitcast float %3158 to i32
  %3244 = ashr i32 %3243, 1
  %3245 = sub nsw i32 1597463174, %3244
  %3246 = bitcast i32 %3245 to float
  %3247 = fmul fast float %3158, 5.000000e-01
  %3248 = fmul fast float %3246, %3246
  %3249 = fmul fast float %3248, %3247
  %3250 = fsub fast float 1.500000e+00, %3249
  %3251 = fmul fast float %3246, %3158
  %3252 = fmul fast float %3251, %3250
  %3253 = bitcast float %3159 to i32
  %3254 = ashr i32 %3253, 1
  %3255 = sub nsw i32 1597463174, %3254
  %3256 = bitcast i32 %3255 to float
  %3257 = fmul fast float %3159, 5.000000e-01
  %3258 = fmul fast float %3256, %3256
  %3259 = fmul fast float %3258, %3257
  %3260 = fsub fast float 1.500000e+00, %3259
  %3261 = fmul fast float %3256, %3159
  %3262 = fmul fast float %3261, %3260
  %3263 = fsub fast float %3242, %3224
  %3264 = fsub fast float %3252, %3228
  %3265 = fsub fast float %3262, %3232
  %3266 = fmul fast float %3263, %3192
  %3267 = fmul fast float %3264, %3194
  %3268 = fmul fast float %3265, %3199
  %3269 = fadd fast float %3266, %3207
  %3270 = fadd fast float %3267, %3211
  %3271 = fadd fast float %3268, %3215
  %3272 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3273 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = fmul fast float %3272, %3272
  %3276 = fmul fast float %3273, %3273
  %3277 = fmul fast float %3274, %3274
  %3278 = fsub fast float %3275, %3157
  %3279 = fsub fast float %3276, %3158
  %3280 = fsub fast float %3277, %3159
  %3281 = fmul fast float %3278, %3182
  %3282 = fmul fast float %3279, %3182
  %3283 = fmul fast float %3280, %3182
  %3284 = fadd fast float %3281, %3157
  %3285 = fadd fast float %3282, %3158
  %3286 = fadd fast float %3283, %3159
  %3287 = fadd fast float %3204, %3168
  %3288 = fsub fast float %3287, %3221
  %3289 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3290 = fsub fast float %3289, %3168
  %3291 = fmul fast float %3290, %3182
  %3292 = fadd fast float %3291, %3168
  br label %3346

; <label>:3293                                    ; preds = %3181
  %3294 = and i32 %3184, 134217728
  %3295 = icmp eq i32 %3294, 0
  br i1 %3295, label %3330, label %3296

; <label>:3296                                    ; preds = %3293
  %3297 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3298 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3299 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %3300 = fadd fast float %3297, -5.000000e-01
  %3301 = fadd fast float %3298, -5.000000e-01
  %3302 = fadd fast float %3299, -5.000000e-01
  %3303 = fmul fast float %3300, %3182
  %3304 = fmul fast float %3301, %3182
  %3305 = fmul fast float %3302, %3182
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = fadd fast float %3304, 5.000000e-01
  %3308 = fadd fast float %3305, 5.000000e-01
  %3309 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %3158)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3312 = fmul fast float %3306, 2.000000e+00
  %3313 = fsub fast float 1.000000e+00, %3312
  %3314 = fmul fast float %3313, %3309
  %3315 = fadd fast float %3314, %3312
  %3316 = fmul fast float %3315, %3309
  %3317 = fmul fast float %3307, 2.000000e+00
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3310
  %3320 = fadd fast float %3319, %3317
  %3321 = fmul fast float %3320, %3310
  %3322 = fmul fast float %3308, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3311
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3311
  %3327 = fmul fast float %3316, %3316
  %3328 = fmul fast float %3321, %3321
  %3329 = fmul fast float %3326, %3326
  br label %3346

; <label>:3330                                    ; preds = %3293
  %3331 = fmul fast float %377, %377
  %3332 = fmul fast float %381, %381
  %3333 = fmul fast float %385, %385
  %3334 = fadd fast float %3331, -1.000000e+00
  %3335 = fadd fast float %3332, -1.000000e+00
  %3336 = fadd fast float %3333, -1.000000e+00
  %3337 = fmul fast float %3182, %3334
  %3338 = fmul fast float %3182, %3335
  %3339 = fmul fast float %3182, %3336
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fmul fast float %3340, %3157
  %3344 = fmul fast float %3341, %3158
  %3345 = fmul fast float %3342, %3159
  br label %3346

; <label>:3346                                    ; preds = %3330, %3296, %3187, %3143
  %3347 = phi float [ %3292, %3187 ], [ %3168, %3296 ], [ %3168, %3330 ], [ 0x3FA23C0BE0000000, %3143 ]
  %3348 = phi float [ %3284, %3187 ], [ %3327, %3296 ], [ %3343, %3330 ], [ 1.000000e+00, %3143 ]
  %3349 = phi float [ %3285, %3187 ], [ %3328, %3296 ], [ %3344, %3330 ], [ 1.000000e+00, %3143 ]
  %3350 = phi float [ %3286, %3187 ], [ %3329, %3296 ], [ %3345, %3330 ], [ 1.000000e+00, %3143 ]
  %3351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.i32 %3351, 1
  %3353 = and i32 %3352, 1
  %3354 = icmp ne i32 %3353, 0
  %3355 = add i32 %56, 356
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 32
  %3359 = icmp ne i32 %3358, 0
  %3360 = and i1 %3354, %3359
  %3361 = select i1 %3360, float 1.000000e+00, float %3348
  %3362 = select i1 %3360, float 0x3FD3333340000000, float %3349
  %3363 = select i1 %3360, float 0x3FD3333340000000, float %3350
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = and i32 %3365, 32
  %3367 = icmp eq i32 %3366, 0
  br i1 %3367, label %3440, label %3368

; <label>:3368                                    ; preds = %3346
  %3369 = add i32 %56, 140
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = add i32 %56, 388
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = add i32 %3374, 0
  %3376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3377 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3376, %dx.types.Handle %97, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = extractvalue %dx.types.ResRet.f32 %3377, 3
  %3382 = and i32 %3371, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = lshr i32 %3371, 8
  %3385 = and i32 %3384, 255
  %3386 = uitofp i32 %3385 to float
  %3387 = lshr i32 %3371, 16
  %3388 = and i32 %3387, 255
  %3389 = uitofp i32 %3388 to float
  %3390 = fmul fast float %3389, 0x3F70101000000000
  %3391 = fmul fast float %3378, %3383
  %3392 = fadd fast float %3391, %3386
  %3393 = fmul fast float %3392, 0x3F70101000000000
  %3394 = fadd fast float %3379, -5.000000e-01
  %3395 = fadd fast float %3381, -5.000000e-01
  %3396 = fmul fast float %3394, %3390
  %3397 = fmul fast float %3395, %3390
  %3398 = fadd fast float %3396, 5.000000e-01
  %3399 = fadd fast float %3397, 5.000000e-01
  %3400 = fmul fast float %3398, 2.000000e+00
  %3401 = fadd fast float %3400, -1.000000e+00
  %3402 = fmul fast float %3399, 2.000000e+00
  %3403 = fadd fast float %3402, -1.000000e+00
  %3404 = fadd fast float %3401, %3403
  %3405 = fmul fast float %3404, 5.000000e-01
  %3406 = fsub fast float %3401, %3403
  %3407 = fmul fast float %3406, 5.000000e-01
  %3408 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3409 = fsub fast float 1.000000e+00, %3408
  %3410 = call float @dx.op.unary.f32(i32 6, float %3407)  ; FAbs(value)
  %3411 = fsub fast float %3409, %3410
  %3412 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3407, float %3411, float %3405, float %3407, float %3411)  ; Dot3(ax,ay,az,bx,by,bz)
  %3413 = call float @dx.op.unary.f32(i32 25, float %3412)  ; Rsqrt(value)
  %3414 = fmul fast float %3405, %3413
  %3415 = fmul fast float %3407, %3413
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 67108864
  %3419 = icmp eq i32 %3418, 0
  br i1 %3419, label %3436, label %3420

; <label>:3420                                    ; preds = %3368
  %3421 = add i32 %56, 328
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 65535
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 65535
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = lshr i32 %3423, 16
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = fsub fast float %3393, %3431
  %3433 = fmul fast float %3432, %3425
  %3434 = fadd fast float %3433, %3429
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  br label %3436

; <label>:3436                                    ; preds = %3420, %3368
  %3437 = phi float [ %3435, %3420 ], [ %3393, %3368 ]
  %3438 = call float @dx.op.dot2.f32(i32 54, float %3414, float %3415, float %2857, float %2858)  ; Dot2(ax,ay,bx,by)
  %3439 = call float @dx.op.dot2.f32(i32 54, float %3414, float %3415, float %2859, float %2860)  ; Dot2(ax,ay,bx,by)
  br label %3440

; <label>:3440                                    ; preds = %3436, %3346
  %3441 = phi float [ %3437, %3436 ], [ 0x3FD6666660000000, %3346 ]
  %3442 = phi float [ %3438, %3436 ], [ 0.000000e+00, %3346 ]
  %3443 = phi float [ %3439, %3436 ], [ 0.000000e+00, %3346 ]
  %3444 = phi float [ %3380, %3436 ], [ 1.000000e+00, %3346 ]
  %3445 = add i32 %56, 208
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = lshr i32 %3447, 22
  %3449 = shl nuw nsw i32 %3448, 5
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449)  ; LegacyF16ToF32(value)
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 64
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %3488, label %3455

; <label>:3455                                    ; preds = %3440
  %3456 = add i32 %56, 404
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = add i32 %3458, 0
  %3460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 131072
  %3464 = icmp eq i32 %3463, 0
  %3465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3460, %dx.types.Handle %97, float %2953, float %2954, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = fmul fast float %3466, %365
  %3470 = fmul fast float %3467, %368
  %3471 = fmul fast float %3468, %371
  br i1 %3464, label %3478, label %3472

; <label>:3472                                    ; preds = %3455
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = fmul fast float %3474, %3469
  %3476 = fmul fast float %3474, %3470
  %3477 = fmul fast float %3474, %3471
  br label %3478

; <label>:3478                                    ; preds = %3472, %3455
  %3479 = phi float [ %3475, %3472 ], [ %3469, %3455 ]
  %3480 = phi float [ %3476, %3472 ], [ %3470, %3455 ]
  %3481 = phi float [ %3477, %3472 ], [ %3471, %3455 ]
  %3482 = fmul fast float %3479, %3450
  %3483 = select i1 %222, float %3482, float %3479
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3480, float %3481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = select i1 %222, float 0.000000e+00, float %3479
  %3486 = select i1 %222, float %3484, float %3480
  %3487 = select i1 %222, float 0.000000e+00, float %3481
  br label %3488

; <label>:3488                                    ; preds = %3478, %3440
  %3489 = phi float [ %3485, %3478 ], [ 0.000000e+00, %3440 ]
  %3490 = phi float [ %3486, %3478 ], [ 0.000000e+00, %3440 ]
  %3491 = phi float [ %3487, %3478 ], [ 0.000000e+00, %3440 ]
  %3492 = add i32 %56, 144
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = lshr i32 %3494, 8
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3362, float %3363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = fmul fast float %3499, %3500
  %3502 = fadd fast float %3501, %3496
  %3503 = fmul fast float %3502, 0x3F70101020000000
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  br i1 %2845, label %3505, label %3513

; <label>:3505                                    ; preds = %3488
  %3506 = fsub fast float 1.000000e+00, %3141
  %3507 = fmul fast float %3506, %2834
  %3508 = fmul fast float %3506, %2835
  %3509 = fmul fast float %3506, %2836
  %3510 = fmul fast float %3506, %2837
  %3511 = fmul fast float %3506, %2838
  %3512 = fmul fast float %3506, %2839
  br label %3513

; <label>:3513                                    ; preds = %3505, %3488
  %3514 = phi float [ %3507, %3505 ], [ %2834, %3488 ]
  %3515 = phi float [ %3508, %3505 ], [ %2835, %3488 ]
  %3516 = phi float [ %3509, %3505 ], [ %2836, %3488 ]
  %3517 = phi float [ %3510, %3505 ], [ %2837, %3488 ]
  %3518 = phi float [ %3511, %3505 ], [ %2838, %3488 ]
  %3519 = phi float [ %3512, %3505 ], [ %2839, %3488 ]
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = and i32 %3521, 3
  %3523 = icmp eq i32 %3522, 3
  br i1 %3523, label %3602, label %3524

; <label>:3524                                    ; preds = %3513
  %3525 = and i32 %3521, 16
  %3526 = icmp ne i32 %3525, 0
  %3527 = select i1 %3526, float %3141, float 0.000000e+00
  %3528 = icmp eq i32 %3522, 0
  br i1 %3528, label %3529, label %3557

; <label>:3529                                    ; preds = %3524
  %3530 = and i32 %3521, 64
  %3531 = icmp ne i32 %3530, 0
  %3532 = select i1 %3531, float %3141, float 0.000000e+00
  %3533 = fsub fast float %3361, %3514
  %3534 = fsub fast float %3362, %3515
  %3535 = fsub fast float %3363, %3516
  %3536 = fmul fast float %3527, %3533
  %3537 = fmul fast float %3527, %3534
  %3538 = fmul fast float %3527, %3535
  %3539 = fadd fast float %3536, %3514
  %3540 = fadd fast float %3537, %3515
  %3541 = fadd fast float %3538, %3516
  %3542 = fsub fast float %3347, %2840
  %3543 = fmul fast float %3527, %3542
  %3544 = fadd fast float %3543, %2840
  %3545 = fsub fast float %3489, %3517
  %3546 = fsub fast float %3490, %3518
  %3547 = fsub fast float %3491, %3519
  %3548 = fmul fast float %3532, %3545
  %3549 = fmul fast float %3532, %3546
  %3550 = fmul fast float %3532, %3547
  %3551 = fadd fast float %3548, %3517
  %3552 = fadd fast float %3549, %3518
  %3553 = fadd fast float %3550, %3519
  %3554 = fsub fast float %3504, %2843
  %3555 = fmul fast float %3527, %3554
  %3556 = fadd fast float %3555, %2843
  br label %3602

; <label>:3557                                    ; preds = %3524
  %3558 = icmp eq i32 %3522, 1
  br i1 %3558, label %3559, label %3572

; <label>:3559                                    ; preds = %3557
  %3560 = fadd fast float %3361, -1.000000e+00
  %3561 = fadd fast float %3362, -1.000000e+00
  %3562 = fadd fast float %3363, -1.000000e+00
  %3563 = fmul fast float %3527, %3560
  %3564 = fmul fast float %3527, %3561
  %3565 = fmul fast float %3527, %3562
  %3566 = fadd fast float %3563, 1.000000e+00
  %3567 = fadd fast float %3564, 1.000000e+00
  %3568 = fadd fast float %3565, 1.000000e+00
  %3569 = fmul fast float %3566, %3514
  %3570 = fmul fast float %3567, %3515
  %3571 = fmul fast float %3568, %3516
  br label %3602

; <label>:3572                                    ; preds = %3557
  %3573 = icmp eq i32 %3522, 2
  br i1 %3573, label %3574, label %3602

; <label>:3574                                    ; preds = %3572
  %3575 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3576 = call float @dx.op.unary.f32(i32 24, float %3362)  ; Sqrt(value)
  %3577 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3578 = fadd fast float %3575, -5.000000e-01
  %3579 = fadd fast float %3576, -5.000000e-01
  %3580 = fadd fast float %3577, -5.000000e-01
  %3581 = fmul fast float %3578, %3527
  %3582 = fmul fast float %3579, %3527
  %3583 = fmul fast float %3580, %3527
  %3584 = fadd fast float %3581, 5.000000e-01
  %3585 = fadd fast float %3582, 5.000000e-01
  %3586 = fadd fast float %3583, 5.000000e-01
  %3587 = fmul fast float %3584, 2.000000e+00
  %3588 = fsub fast float 1.000000e+00, %3587
  %3589 = fmul fast float %3588, %3514
  %3590 = fadd fast float %3589, %3587
  %3591 = fmul fast float %3590, %3514
  %3592 = fmul fast float %3585, 2.000000e+00
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = fmul fast float %3593, %3515
  %3595 = fadd fast float %3594, %3592
  %3596 = fmul fast float %3595, %3515
  %3597 = fmul fast float %3586, 2.000000e+00
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = fmul fast float %3598, %3516
  %3600 = fadd fast float %3599, %3597
  %3601 = fmul fast float %3600, %3516
  br label %3602

; <label>:3602                                    ; preds = %3574, %3572, %3559, %3529, %3513
  %3603 = phi float [ %3514, %3513 ], [ %3591, %3574 ], [ %3514, %3572 ], [ %3569, %3559 ], [ %3539, %3529 ]
  %3604 = phi float [ %3515, %3513 ], [ %3596, %3574 ], [ %3515, %3572 ], [ %3570, %3559 ], [ %3540, %3529 ]
  %3605 = phi float [ %3516, %3513 ], [ %3601, %3574 ], [ %3516, %3572 ], [ %3571, %3559 ], [ %3541, %3529 ]
  %3606 = phi float [ %3517, %3513 ], [ %3517, %3574 ], [ %3517, %3572 ], [ %3517, %3559 ], [ %3551, %3529 ]
  %3607 = phi float [ %3518, %3513 ], [ %3518, %3574 ], [ %3518, %3572 ], [ %3518, %3559 ], [ %3552, %3529 ]
  %3608 = phi float [ %3519, %3513 ], [ %3519, %3574 ], [ %3519, %3572 ], [ %3519, %3559 ], [ %3553, %3529 ]
  %3609 = phi float [ %2840, %3513 ], [ %2840, %3574 ], [ %2840, %3572 ], [ %2840, %3559 ], [ %3544, %3529 ]
  %3610 = phi float [ %2843, %3513 ], [ %2843, %3574 ], [ %2843, %3572 ], [ %2843, %3559 ], [ %3556, %3529 ]
  %3611 = and i32 %3521, 12
  %3612 = icmp eq i32 %3611, 12
  br i1 %3612, label %3685, label %3613

; <label>:3613                                    ; preds = %3602
  %3614 = and i32 %3521, 2097184
  %3615 = icmp eq i32 %3614, 2097184
  %3616 = select i1 %3615, float %3141, float 0.000000e+00
  %3617 = and i32 %3521, 4194336
  %3618 = icmp eq i32 %3617, 4194336
  %3619 = select i1 %3618, float %3141, float 0.000000e+00
  %3620 = and i32 %3521, 8388640
  %3621 = icmp eq i32 %3620, 8388640
  %3622 = select i1 %3621, float %3141, float 0.000000e+00
  %3623 = icmp eq i32 %3611, 0
  br i1 %3623, label %3624, label %3637

; <label>:3624                                    ; preds = %3613
  %3625 = fsub fast float %3442, %2832
  %3626 = fsub fast float %3443, %2833
  %3627 = fmul fast float %3616, %3625
  %3628 = fmul fast float %3616, %3626
  %3629 = fadd fast float %3627, %2832
  %3630 = fadd fast float %3628, %2833
  %3631 = fsub fast float %3444, %2842
  %3632 = fmul fast float %3619, %3631
  %3633 = fadd fast float %3632, %2842
  %3634 = fsub fast float %3441, %2841
  %3635 = fmul fast float %3622, %3634
  %3636 = fadd fast float %3635, %2841
  br label %3685

; <label>:3637                                    ; preds = %3613
  %3638 = icmp eq i32 %3611, 4
  br i1 %3638, label %3639, label %3671

; <label>:3639                                    ; preds = %3637
  %3640 = fmul fast float %3616, %3442
  %3641 = fmul fast float %3616, %3443
  %3642 = fadd fast float %3640, %2832
  %3643 = fadd fast float %3641, %2833
  %3644 = call float @dx.op.binary.f32(i32 36, float %2842, float %3444)  ; FMin(a,b)
  %3645 = fsub fast float %3644, %2842
  %3646 = fmul fast float %3645, %3619
  %3647 = fadd fast float %3646, %2842
  %3648 = fadd fast float %3441, %2841
  %3649 = fmul fast float %3648, 0x3FF337FAE0000000
  %3650 = fmul fast float %2841, %2841
  %3651 = fmul fast float %3441, %3441
  %3652 = fadd fast float %3651, %3650
  %3653 = fmul fast float %3652, 0x3FE5152B00000000
  %3654 = fmul fast float %2841, 0xBFCC1F85E0000000
  %3655 = fmul fast float %3654, %3441
  %3656 = fadd fast float %3655, 0xBFE1363700000000
  %3657 = fadd fast float %3656, %3649
  %3658 = fsub fast float %3657, %3653
  %3659 = fmul fast float %3648, 0x3FBA6F0D00000000
  %3660 = fmul fast float %3652, 0x3FD0432880000000
  %3661 = fmul fast float %2841, 0xBFEF110800000000
  %3662 = fmul fast float %3661, %3441
  %3663 = fadd fast float %3662, 1.000000e+00
  %3664 = fsub fast float %3663, %3659
  %3665 = fadd fast float %3664, %3660
  %3666 = fdiv fast float %3658, %3665
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = fsub fast float %3667, %2841
  %3669 = fmul fast float %3668, %3622
  %3670 = fadd fast float %3669, %2841
  br label %3685

; <label>:3671                                    ; preds = %3637
  %3672 = icmp eq i32 %3611, 8
  br i1 %3672, label %3673, label %3685

; <label>:3673                                    ; preds = %3671
  %3674 = fmul fast float %3616, %3442
  %3675 = fmul fast float %3616, %3443
  %3676 = fadd fast float %3674, %2832
  %3677 = fadd fast float %3675, %2833
  %3678 = call float @dx.op.binary.f32(i32 36, float %2842, float %3444)  ; FMin(a,b)
  %3679 = fsub fast float %3678, %2842
  %3680 = fmul fast float %3679, %3619
  %3681 = fadd fast float %3680, %2842
  %3682 = fsub fast float %3441, %2841
  %3683 = fmul fast float %3622, %3682
  %3684 = fadd fast float %3683, %2841
  br label %3685

; <label>:3685                                    ; preds = %3673, %3671, %3639, %3624, %3602, %3140, %2844, %2831
  %3686 = phi float [ %2832, %3602 ], [ %2832, %3140 ], [ %2832, %2831 ], [ %2832, %2844 ], [ %3629, %3624 ], [ %3642, %3639 ], [ %2832, %3671 ], [ %3676, %3673 ]
  %3687 = phi float [ %2833, %3602 ], [ %2833, %3140 ], [ %2833, %2831 ], [ %2833, %2844 ], [ %3630, %3624 ], [ %3643, %3639 ], [ %2833, %3671 ], [ %3677, %3673 ]
  %3688 = phi float [ %3603, %3602 ], [ %2834, %3140 ], [ %2834, %2831 ], [ %2834, %2844 ], [ %3603, %3624 ], [ %3603, %3639 ], [ %3603, %3671 ], [ %3603, %3673 ]
  %3689 = phi float [ %3604, %3602 ], [ %2835, %3140 ], [ %2835, %2831 ], [ %2835, %2844 ], [ %3604, %3624 ], [ %3604, %3639 ], [ %3604, %3671 ], [ %3604, %3673 ]
  %3690 = phi float [ %3605, %3602 ], [ %2836, %3140 ], [ %2836, %2831 ], [ %2836, %2844 ], [ %3605, %3624 ], [ %3605, %3639 ], [ %3605, %3671 ], [ %3605, %3673 ]
  %3691 = phi float [ %3606, %3602 ], [ %2837, %3140 ], [ %2837, %2831 ], [ %2837, %2844 ], [ %3606, %3624 ], [ %3606, %3639 ], [ %3606, %3671 ], [ %3606, %3673 ]
  %3692 = phi float [ %3607, %3602 ], [ %2838, %3140 ], [ %2838, %2831 ], [ %2838, %2844 ], [ %3607, %3624 ], [ %3607, %3639 ], [ %3607, %3671 ], [ %3607, %3673 ]
  %3693 = phi float [ %3608, %3602 ], [ %2839, %3140 ], [ %2839, %2831 ], [ %2839, %2844 ], [ %3608, %3624 ], [ %3608, %3639 ], [ %3608, %3671 ], [ %3608, %3673 ]
  %3694 = phi float [ %3609, %3602 ], [ %2840, %3140 ], [ %2840, %2831 ], [ %2840, %2844 ], [ %3609, %3624 ], [ %3609, %3639 ], [ %3609, %3671 ], [ %3609, %3673 ]
  %3695 = phi float [ %2841, %3602 ], [ %2841, %3140 ], [ %2841, %2831 ], [ %2841, %2844 ], [ %3636, %3624 ], [ %3670, %3639 ], [ %2841, %3671 ], [ %3684, %3673 ]
  %3696 = phi float [ %2842, %3602 ], [ %2842, %3140 ], [ %2842, %2831 ], [ %2842, %2844 ], [ %3633, %3624 ], [ %3647, %3639 ], [ %2842, %3671 ], [ %3681, %3673 ]
  %3697 = phi float [ %3610, %3602 ], [ %2843, %3140 ], [ %2843, %2831 ], [ %2843, %2844 ], [ %3610, %3624 ], [ %3610, %3639 ], [ %3610, %3671 ], [ %3610, %3673 ]
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = call float @dx.op.dot2.f32(i32 54, float %3686, float %3687, float %3686, float %3687)  ; Dot2(ax,ay,bx,by)
  %3701 = fmul fast float %3700, 0x3FE3333340000000
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3686, float %3687, float %3702, float %3686, float %3687, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3704, %3686
  %3706 = fmul fast float %3704, %3687
  %3707 = fmul fast float %3702, %3704
  %3708 = fmul fast float %3707, %110
  %3709 = fmul fast float %3707, %112
  %3710 = fmul fast float %3707, %114
  %3711 = fmul fast float %3705, %76
  %3712 = fmul fast float %3705, %77
  %3713 = fmul fast float %3705, %78
  %3714 = fadd fast float %3708, %3711
  %3715 = fadd fast float %3709, %3712
  %3716 = fadd fast float %3710, %3713
  %3717 = fmul fast float %124, %3706
  %3718 = fmul fast float %125, %3706
  %3719 = fmul fast float %126, %3706
  %3720 = fadd fast float %3714, %3717
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3721, float %3722, float %3720, float %3721, float %3722)  ; Dot3(ax,ay,az,bx,by,bz)
  %3724 = call float @dx.op.unary.f32(i32 25, float %3723)  ; Rsqrt(value)
  %3725 = fmul fast float %3720, %3724
  %3726 = fmul fast float %3721, %3724
  %3727 = fmul fast float %3722, %3724
  %3728 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3729 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %3730 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %3731 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3732 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %3733 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %3734 = fadd fast float %3728, %160
  %3735 = fadd fast float %3729, %161
  %3736 = fadd fast float %3730, %162
  %3737 = fadd fast float %3731, %160
  %3738 = fadd fast float %3732, %161
  %3739 = fadd fast float %3733, %162
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.CBufRet.f32 %3740, 2
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 3
  %3747 = fmul fast float %3741, %101
  %3748 = fmul fast float %3747, %3745
  %3749 = fmul fast float %3742, %102
  %3750 = fmul fast float %3749, %3746
  %3751 = fptoui float %3748 to i32
  %3752 = fptoui float %3750 to i32
  %3753 = fadd fast float %3741, -1.000000e+00
  %3754 = fadd fast float %3742, -1.000000e+00
  %3755 = fptoui float %3753 to i32
  %3756 = fptoui float %3754 to i32
  %3757 = call i32 @dx.op.binary.i32(i32 40, i32 %3751, i32 %3755)  ; UMin(a,b)
  %3758 = call i32 @dx.op.binary.i32(i32 40, i32 %3752, i32 %3756)  ; UMin(a,b)
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3762 = fmul fast float %3760, %92
  %3763 = fsub fast float %3762, %3761
  %3764 = fadd fast float %3743, -1.000000e+00
  %3765 = call float @dx.op.binary.f32(i32 36, float %3763, float %3764)  ; FMin(a,b)
  %3766 = fptoui float %3765 to i32
  %3767 = fptoui float %3741 to i32
  %3768 = fptoui float %3742 to i32
  %3769 = mul i32 %3766, %3768
  %3770 = add i32 %3769, %3758
  %3771 = mul i32 %3770, %3767
  %3772 = add i32 %3771, %3757
  %3773 = shl i32 %3772, 2
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = and i32 %3775, 1023
  %3777 = lshr i32 %3775, 10
  %3778 = icmp eq i32 %3776, 0
  br i1 %3778, label %4207, label %3779

; <label>:3779                                    ; preds = %3685
  %3780 = and i32 %3775, 1023
  br label %3781

; <label>:3781                                    ; preds = %3908, %3779
  %3782 = phi i32 [ %3858, %3908 ], [ 0, %3779 ]
  %3783 = phi float [ %3909, %3908 ], [ 0.000000e+00, %3779 ]
  %3784 = phi float [ %3910, %3908 ], [ %1132, %3779 ]
  %3785 = phi float [ %3911, %3908 ], [ %3699, %3779 ]
  %3786 = phi float [ %3912, %3908 ], [ %3697, %3779 ]
  %3787 = phi float [ %3913, %3908 ], [ 0.000000e+00, %3779 ]
  %3788 = phi float [ %3914, %3908 ], [ 0.000000e+00, %3779 ]
  %3789 = phi float [ %3915, %3908 ], [ %3691, %3779 ]
  %3790 = phi float [ %3916, %3908 ], [ %3692, %3779 ]
  %3791 = phi float [ %3917, %3908 ], [ %3693, %3779 ]
  %3792 = phi float [ %3918, %3908 ], [ %3725, %3779 ]
  %3793 = phi float [ %3919, %3908 ], [ %3726, %3779 ]
  %3794 = phi float [ %3920, %3908 ], [ %3727, %3779 ]
  %3795 = phi float [ %3921, %3908 ], [ %3696, %3779 ]
  %3796 = phi float [ %3922, %3908 ], [ %3695, %3779 ]
  %3797 = phi float [ %3923, %3908 ], [ 0.000000e+00, %3779 ]
  %3798 = phi float [ %3924, %3908 ], [ %3694, %3779 ]
  %3799 = phi float [ %3925, %3908 ], [ %3688, %3779 ]
  %3800 = phi float [ %3926, %3908 ], [ %3689, %3779 ]
  %3801 = phi float [ %3927, %3908 ], [ %3690, %3779 ]
  %3802 = add nuw nsw i32 %3782, %3777
  %3803 = shl i32 %3802, 2
  %3804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.i32 %3804, 0
  %3806 = shl i32 %3805, 8
  %3807 = or i32 %3806, 48
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3813 = or i32 %3806, 64
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.i32 %3814, 1
  %3817 = or i32 %3806, 80
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3821 = or i32 %3806, 96
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = or i32 %3806, 112
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3830 = or i32 %3806, 128
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3806, 144
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3806, 160
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3806, 192
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = or i32 %3806, 208
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = or i32 %3806, 248
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = add nuw nsw i32 %3782, 1
  %3859 = bitcast float %3812 to i32
  %3860 = and i32 %3859, 512
  %3861 = icmp eq i32 %3860, 0
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = or i32 %3806, 16
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3874 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3875 = or i32 %3806, 32
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = call float @dx.op.dot4.f32(i32 56, float %3877, float %3878, float %3879, float %3880, float %160, float %161, float %162, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3882 = call float @dx.op.unary.f32(i32 27, float %3867)  ; Round_ni(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3874)  ; Round_ni(value)
  %3885 = call float @dx.op.unary.f32(i32 6, float %3884)  ; FAbs(value)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3888 = fadd fast float %3885, %3883
  %3889 = fadd fast float %3888, %3887
  %3890 = fcmp fast oeq float %3889, 0.000000e+00
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3737, float %3738, float %3739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3737, float %3738, float %3739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3895 = fsub fast float %3891, %3867
  %3896 = fsub fast float %3893, %3867
  %3897 = fsub fast float %3892, %3874
  %3898 = fsub fast float %3894, %3874
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3810, float %3811, float %110, float %112, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3902 = fadd fast float %3901, %3899
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3905 = fcmp fast ogt float %3903, %3904
  %3906 = and i1 %3890, %3905
  %3907 = and i1 %3861, %3906
  br i1 %3907, label %3929, label %3908

; <label>:3908                                    ; preds = %4193, %4010, %3929, %3781
  %3909 = phi float [ %3783, %3929 ], [ %4013, %4010 ], [ %4013, %4193 ], [ %3783, %3781 ]
  %3910 = phi float [ %3784, %3929 ], [ %3784, %4010 ], [ %4168, %4193 ], [ %3784, %3781 ]
  %3911 = phi float [ %3785, %3929 ], [ %3785, %4010 ], [ %4167, %4193 ], [ %3785, %3781 ]
  %3912 = phi float [ %3786, %3929 ], [ %3786, %4010 ], [ %4165, %4193 ], [ %3786, %3781 ]
  %3913 = phi float [ %3787, %3929 ], [ %3787, %4010 ], [ %4137, %4193 ], [ %3787, %3781 ]
  %3914 = phi float [ %3788, %3929 ], [ %3788, %4010 ], [ %4135, %4193 ], [ %3788, %3781 ]
  %3915 = phi float [ %3789, %3929 ], [ %3789, %4010 ], [ %4203, %4193 ], [ %3789, %3781 ]
  %3916 = phi float [ %3790, %3929 ], [ %3790, %4010 ], [ %4204, %4193 ], [ %3790, %3781 ]
  %3917 = phi float [ %3791, %3929 ], [ %3791, %4010 ], [ %4205, %4193 ], [ %3791, %3781 ]
  %3918 = phi float [ %3792, %3929 ], [ %3792, %4010 ], [ %4116, %4193 ], [ %3792, %3781 ]
  %3919 = phi float [ %3793, %3929 ], [ %3793, %4010 ], [ %4117, %4193 ], [ %3793, %3781 ]
  %3920 = phi float [ %3794, %3929 ], [ %3794, %4010 ], [ %4118, %4193 ], [ %3794, %3781 ]
  %3921 = phi float [ %3795, %3929 ], [ %3795, %4010 ], [ %4145, %4193 ], [ %3795, %3781 ]
  %3922 = phi float [ %3796, %3929 ], [ %3796, %4010 ], [ %4142, %4193 ], [ %3796, %3781 ]
  %3923 = phi float [ %3797, %3929 ], [ %3797, %4010 ], [ %4139, %4193 ], [ %3797, %3781 ]
  %3924 = phi float [ %3798, %3929 ], [ %3798, %4010 ], [ %4133, %4193 ], [ %3798, %3781 ]
  %3925 = phi float [ %3799, %3929 ], [ %3799, %4010 ], [ %4128, %4193 ], [ %3799, %3781 ]
  %3926 = phi float [ %3800, %3929 ], [ %3800, %4010 ], [ %4129, %4193 ], [ %3800, %3781 ]
  %3927 = phi float [ %3801, %3929 ], [ %3801, %4010 ], [ %4130, %4193 ], [ %3801, %3781 ]
  %3928 = icmp eq i32 %3858, %3780
  br i1 %3928, label %4206, label %3781

; <label>:3929                                    ; preds = %3781
  %3930 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3931 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3933 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3934 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3935 = extractvalue %dx.types.ResRet.i32 %3814, 3
  %3936 = extractvalue %dx.types.ResRet.i32 %3814, 2
  %3937 = add i32 %3935, 0
  %3938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3937, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3940 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3938, %dx.types.Handle %3939, float %3867, float %3874, float undef, float undef, i32 0, i32 0, i32 undef, float %3895, float %3897, float undef, float %3896, float %3898, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = fmul fast float %3941, %3934
  %3943 = fadd fast float %3942, %3933
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fmul fast float %3867, %3823
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3874, float %3945)  ; FMad(a,b,c)
  %3947 = fadd fast float %3946, %3932
  %3948 = fmul fast float %3867, %3825
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3874, float %3948)  ; FMad(a,b,c)
  %3950 = fadd fast float %3949, %3931
  %3951 = fmul fast float %3895, %3823
  %3952 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3897, float %3951)  ; FMad(a,b,c)
  %3953 = fmul fast float %3895, %3825
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3897, float %3953)  ; FMad(a,b,c)
  %3955 = fmul fast float %3896, %3823
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3898, float %3955)  ; FMad(a,b,c)
  %3957 = fmul fast float %3896, %3825
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3898, float %3957)  ; FMad(a,b,c)
  %3959 = add i32 %3936, 0
  %3960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3959, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3960, %dx.types.Handle %3939, float %3947, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float %3952, float %3954, float undef, float %3956, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = and i32 %3859, 1024
  %3964 = icmp ne i32 %3963, 0
  %3965 = fcmp fast ogt float %3962, 0x3FE0101020000000
  %3966 = uitofp i1 %3965 to float
  %3967 = select i1 %3964, float %3966, float %3962
  %3968 = and i32 %3859, 8192
  %3969 = icmp ne i32 %3968, 0
  %3970 = select i1 %3969, float %3930, float 1.000000e+00
  %3971 = fmul fast float %3867, 2.000000e+00
  %3972 = fadd fast float %3971, -1.000000e+00
  %3973 = call float @dx.op.unary.f32(i32 6, float %3972)  ; FAbs(value)
  %3974 = fmul fast float %3973, %3856
  %3975 = fsub fast float %3974, %3856
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = fmul fast float %3874, 2.000000e+00
  %3978 = fadd fast float %3977, -1.000000e+00
  %3979 = call float @dx.op.unary.f32(i32 6, float %3978)  ; FAbs(value)
  %3980 = fmul fast float %3979, %3857
  %3981 = fsub fast float %3980, %3857
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3886, %3819
  %3984 = fsub fast float %3983, %3819
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3944, %3970
  %3987 = fmul fast float %3986, %3941
  %3988 = fmul fast float %3987, %3976
  %3989 = fmul fast float %3988, %3967
  %3990 = fmul fast float %3989, %3982
  %3991 = fmul fast float %3990, %3985
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3994 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3995 = fsub fast float %3903, %3994
  %3996 = fmul fast float %3995, %3993
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = fmul fast float %3991, %3820
  %3999 = fadd fast float %3991, %3820
  %4000 = fmul fast float %3999, %3829
  %4001 = fsub fast float %4000, %3829
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = and i32 %3859, 128
  %4004 = icmp ne i32 %4003, 0
  %4005 = select i1 %4004, float %4002, float %3998
  %4006 = fmul fast float %4005, %3997
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = fcmp fast ugt float %4006, %4008
  br i1 %4009, label %4010, label %3908

; <label>:4010                                    ; preds = %3929
  %4011 = select i1 %3969, float %4006, float 0.000000e+00
  %4012 = fadd fast float %4011, %3783
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  br i1 %3969, label %3908, label %4014

; <label>:4014                                    ; preds = %4010
  %4015 = and i32 %3859, 4
  %4016 = and i32 %3859, 8
  %4017 = add i32 %3815, 0
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4017, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4018, %dx.types.Handle %4019, float %3947, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float %3952, float %3954, float undef, float %3956, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = bitcast float %3841 to i32
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = lshr i32 %4025, 8
  %4029 = and i32 %4028, 255
  %4030 = uitofp i32 %4029 to float
  %4031 = fmul fast float %4024, %4027
  %4032 = fadd fast float %4031, %4030
  %4033 = fmul fast float %4032, 0x3F70101000000000
  %4034 = add i32 %3816, 0
  %4035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4034, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4036 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4035, %dx.types.Handle %4019, float %3947, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float %3952, float %3954, float undef, float %3956, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.ResRet.f32 %4036, 3
  %4041 = bitcast float %3835 to i32
  %4042 = and i32 %4041, 255
  %4043 = uitofp i32 %4042 to float
  %4044 = lshr i32 %4041, 8
  %4045 = and i32 %4044, 255
  %4046 = uitofp i32 %4045 to float
  %4047 = lshr i32 %4041, 16
  %4048 = and i32 %4047, 255
  %4049 = uitofp i32 %4048 to float
  %4050 = fmul fast float %4049, 0x3F70101000000000
  %4051 = fmul fast float %4037, %4043
  %4052 = fadd fast float %4051, %4046
  %4053 = fmul fast float %4052, 0x3F70101000000000
  %4054 = fadd fast float %4038, -5.000000e-01
  %4055 = fadd fast float %4040, -5.000000e-01
  %4056 = fmul fast float %4054, %4050
  %4057 = fmul fast float %4055, %4050
  %4058 = fadd fast float %4056, 5.000000e-01
  %4059 = fadd fast float %4057, 5.000000e-01
  %4060 = fmul fast float %4021, %3844
  %4061 = fmul fast float %4022, %3845
  %4062 = fmul fast float %4023, %3846
  %4063 = fmul fast float %4058, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = fmul fast float %4059, 2.000000e+00
  %4066 = fadd fast float %4065, -1.000000e+00
  %4067 = fadd fast float %4064, %4066
  %4068 = fmul fast float %4067, 5.000000e-01
  %4069 = fsub fast float %4064, %4066
  %4070 = fmul fast float %4069, 5.000000e-01
  %4071 = call float @dx.op.unary.f32(i32 6, float %4068)  ; FAbs(value)
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = call float @dx.op.unary.f32(i32 6, float %4070)  ; FAbs(value)
  %4074 = fsub fast float %4072, %4073
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4070, float %4074, float %4068, float %4070, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4068, %4076
  %4078 = fmul fast float %4070, %4076
  %4079 = fmul fast float %4076, %4074
  %4080 = fmul fast float %4079, %3809
  %4081 = fmul fast float %4079, %3810
  %4082 = fmul fast float %4079, %3811
  %4083 = fmul fast float %4077, %3832
  %4084 = fmul fast float %4077, %3833
  %4085 = fmul fast float %4077, %3834
  %4086 = fadd fast float %4083, %4080
  %4087 = fadd fast float %4084, %4081
  %4088 = fadd fast float %4085, %4082
  %4089 = fmul fast float %4078, %3838
  %4090 = fmul fast float %4078, %3839
  %4091 = fmul fast float %4078, %3840
  %4092 = fadd fast float %4086, %4089
  %4093 = fadd fast float %4087, %4090
  %4094 = fadd fast float %4088, %4091
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4093, float %4094, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.unary.f32(i32 25, float %4095)  ; Rsqrt(value)
  %4097 = fmul fast float %4092, %4096
  %4098 = fmul fast float %4093, %4096
  %4099 = fmul fast float %4094, %4096
  %4100 = icmp ne i32 %4016, 0
  %4101 = select i1 %4100, float 1.000000e+00, float 0.000000e+00
  %4102 = fmul fast float %4006, %4101
  %4103 = and i32 %3859, 1
  %4104 = icmp eq i32 %4103, 0
  br i1 %4104, label %4105, label %4109

; <label>:4105                                    ; preds = %4014
  %4106 = fsub fast float %4097, %3792
  %4107 = fsub fast float %4098, %3793
  %4108 = fsub fast float %4099, %3794
  br label %4109

; <label>:4109                                    ; preds = %4105, %4014
  %4110 = phi float [ %4106, %4105 ], [ %4097, %4014 ]
  %4111 = phi float [ %4107, %4105 ], [ %4098, %4014 ]
  %4112 = phi float [ %4108, %4105 ], [ %4099, %4014 ]
  %4113 = fmul float %4112, %4102
  %4114 = fmul float %4111, %4102
  %4115 = fmul float %4110, %4102
  %4116 = fadd fast float %4115, %3792
  %4117 = fadd fast float %4114, %3793
  %4118 = fadd fast float %4113, %3794
  %4119 = icmp ne i32 %4015, 0
  %4120 = select i1 %4119, float 1.000000e+00, float 0.000000e+00
  %4121 = fmul fast float %4006, %4120
  %4122 = fsub fast float %4060, %3799
  %4123 = fsub fast float %4061, %3800
  %4124 = fsub fast float %4062, %3801
  %4125 = fmul fast float %4122, %4121
  %4126 = fmul fast float %4123, %4121
  %4127 = fmul fast float %4124, %4121
  %4128 = fadd fast float %4125, %3799
  %4129 = fadd fast float %4126, %3800
  %4130 = fadd fast float %4127, %3801
  %4131 = fsub fast float %4033, %3798
  %4132 = fmul fast float %4131, %4121
  %4133 = fadd fast float %4132, %3798
  %4134 = fmul fast float %4121, %3788
  %4135 = fsub fast float %3788, %4134
  %4136 = fmul fast float %4121, %3787
  %4137 = fsub fast float %3787, %4136
  %4138 = fadd fast float %4006, %3797
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4140 = fsub fast float %4053, %3796
  %4141 = fmul fast float %4140, %4102
  %4142 = fadd fast float %4141, %3796
  %4143 = fsub fast float %4039, %3795
  %4144 = fmul fast float %4143, %4102
  %4145 = fadd fast float %4144, %3795
  %4146 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4150 = fmul fast float %4149, %4146
  %4151 = fadd fast float %4150, %4148
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = bitcast float %3847 to i32
  %4154 = and i32 %4153, 65535
  %4155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4154)  ; LegacyF16ToF32(value)
  %4156 = lshr i32 %4153, 16
  %4157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4156)  ; LegacyF16ToF32(value)
  %4158 = fcmp fast oge float %4155, 0.000000e+00
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = select i1 %4158, float %4155, float %4160
  %4162 = fadd fast float %4161, %4157
  %4163 = fsub fast float %4152, %3786
  %4164 = fmul fast float %4163, %4006
  %4165 = fadd fast float %4164, %3786
  %4166 = fmul fast float %4162, %4006
  %4167 = call float @dx.op.binary.f32(i32 35, float %3785, float %4166)  ; FMax(a,b)
  %4168 = call float @dx.op.binary.f32(i32 35, float %3784, float %4006)  ; FMax(a,b)
  %4169 = and i32 %3859, 16
  %4170 = icmp eq i32 %4169, 0
  br i1 %4170, label %4193, label %4171

; <label>:4171                                    ; preds = %4109
  %4172 = bitcast float %3853 to i32
  %4173 = add i32 %3850, 0
  %4174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4175 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4174, %dx.types.Handle %4019, float %3947, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float %3952, float %3954, float undef, float %3956, float %3958, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4179 = and i32 %4172, 65535
  %4180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4179)  ; LegacyF16ToF32(value)
  %4181 = fmul fast float %4176, %3844
  %4182 = fmul fast float %4177, %3845
  %4183 = fmul fast float %4178, %3846
  %4184 = and i32 %3859, 16384
  %4185 = icmp ne i32 %4184, 0
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = select i1 %4185, float %4187, float 1.000000e+00
  %4189 = fmul fast float %4188, %4180
  %4190 = fmul fast float %4181, %4189
  %4191 = fmul fast float %4182, %4189
  %4192 = fmul fast float %4183, %4189
  br label %4193

; <label>:4193                                    ; preds = %4171, %4109
  %4194 = phi float [ %4190, %4171 ], [ 0.000000e+00, %4109 ]
  %4195 = phi float [ %4191, %4171 ], [ 0.000000e+00, %4109 ]
  %4196 = phi float [ %4192, %4171 ], [ 0.000000e+00, %4109 ]
  %4197 = fsub fast float %4194, %3789
  %4198 = fsub fast float %4195, %3790
  %4199 = fsub fast float %4196, %3791
  %4200 = fmul fast float %4197, %4006
  %4201 = fmul fast float %4198, %4006
  %4202 = fmul fast float %4199, %4006
  %4203 = fadd fast float %4200, %3789
  %4204 = fadd fast float %4201, %3790
  %4205 = fadd fast float %4202, %3791
  br label %3908

; <label>:4206                                    ; preds = %3908
  br label %4207

; <label>:4207                                    ; preds = %4206, %3685
  %4208 = phi float [ 0.000000e+00, %3685 ], [ %3909, %4206 ]
  %4209 = phi float [ %1132, %3685 ], [ %3910, %4206 ]
  %4210 = phi float [ %3699, %3685 ], [ %3911, %4206 ]
  %4211 = phi float [ %3697, %3685 ], [ %3912, %4206 ]
  %4212 = phi float [ 0.000000e+00, %3685 ], [ %3913, %4206 ]
  %4213 = phi float [ 0.000000e+00, %3685 ], [ %3914, %4206 ]
  %4214 = phi float [ %3691, %3685 ], [ %3915, %4206 ]
  %4215 = phi float [ %3692, %3685 ], [ %3916, %4206 ]
  %4216 = phi float [ %3693, %3685 ], [ %3917, %4206 ]
  %4217 = phi float [ %3725, %3685 ], [ %3918, %4206 ]
  %4218 = phi float [ %3726, %3685 ], [ %3919, %4206 ]
  %4219 = phi float [ %3727, %3685 ], [ %3920, %4206 ]
  %4220 = phi float [ %3696, %3685 ], [ %3921, %4206 ]
  %4221 = phi float [ %3695, %3685 ], [ %3922, %4206 ]
  %4222 = phi float [ 0.000000e+00, %3685 ], [ %3923, %4206 ]
  %4223 = phi float [ %3694, %3685 ], [ %3924, %4206 ]
  %4224 = phi float [ %3688, %3685 ], [ %3925, %4206 ]
  %4225 = phi float [ %3689, %3685 ], [ %3926, %4206 ]
  %4226 = phi float [ %3690, %3685 ], [ %3927, %4206 ]
  %4227 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %4219, float %4217, float %4218, float %4219)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 25, float %4227)  ; Rsqrt(value)
  %4229 = fmul fast float %4228, %4217
  %4230 = fmul fast float %4228, %4218
  %4231 = fmul fast float %4228, %4219
  %4232 = fadd fast float %4222, %1132
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4229, float %4230, float %4231)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = call float @dx.op.unary.f32(i32 25, float %4234)  ; Rsqrt(value)
  %4236 = fmul fast float %4235, %4229
  %4237 = fmul fast float %4235, %4230
  %4238 = fmul fast float %4235, %4231
  %4239 = fadd fast float %4223, 0xBFB99999A0000000
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4240, 0x3FF1C71C80000000
  %4242 = call float @dx.op.binary.f32(i32 36, float %4223, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4243 = fsub fast float 1.000000e+00, %4241
  %4244 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4245 = fmul fast float %4244, %4224
  %4246 = fmul fast float %4244, %4225
  %4247 = fmul fast float %4244, %4226
  %4248 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4249 = call float @dx.op.unary.f32(i32 7, float %4246)  ; Saturate(value)
  %4250 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4251 = fmul fast float %4241, %4224
  %4252 = fmul fast float %4241, %4225
  %4253 = fmul fast float %4241, %4226
  %4254 = fadd fast float %4251, %4242
  %4255 = fadd fast float %4252, %4242
  %4256 = fadd fast float %4253, %4242
  %4257 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4258 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.i32 %4261, 3
  %4263 = and i32 %4262, 8
  %4264 = icmp ne i32 %4263, 0
  %4265 = call float @dx.op.binary.f32(i32 35, float %4248, float %4224)  ; FMax(a,b)
  %4266 = call float @dx.op.binary.f32(i32 35, float %4249, float %4224)  ; FMax(a,b)
  %4267 = call float @dx.op.binary.f32(i32 35, float %4250, float %4224)  ; FMax(a,b)
  %4268 = call float @dx.op.dot3.f32(i32 55, float %4248, float %4249, float %4250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4269 = select i1 %222, float %4224, float %4248
  %4270 = select i1 %222, float %4268, float %4249
  %4271 = select i1 %222, float 1.000000e+00, float %4250
  %4272 = select i1 %4264, float %4265, float %4269
  %4273 = select i1 %4264, float %4266, float %4270
  %4274 = select i1 %4264, float %4267, float %4271
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.CBufRet.f32 %4275, 1
  %4278 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4279 = fadd fast float %4276, %160
  %4280 = fadd fast float %4277, %161
  %4281 = fadd fast float %4278, %162
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4285 = fsub fast float %4279, %4283
  %4286 = fsub fast float %4280, %4284
  %4287 = fmul fast float %4285, %4285
  %4288 = fmul fast float %4286, %4286
  %4289 = fadd fast float %4287, %4288
  %4290 = call float @dx.op.unary.f32(i32 24, float %4289)  ; Sqrt(value)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4292 = fcmp fast olt float %4290, %4291
  br i1 %4292, label %4293, label %4360

; <label>:4293                                    ; preds = %4207
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4294, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4302 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4303 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4304 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4305 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4306 = fadd fast float %4303, %4279
  %4307 = fadd fast float %4304, %4280
  %4308 = fadd fast float %4305, %4281
  %4309 = fmul fast float %4306, %4295
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4297, float %4309)  ; FMad(a,b,c)
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4299, float %4310)  ; FMad(a,b,c)
  %4312 = fmul fast float %4306, %4300
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4307, float %4301, float %4312)  ; FMad(a,b,c)
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4302, float %4313)  ; FMad(a,b,c)
  %4315 = fsub fast float %4311, %4303
  %4316 = fsub fast float %4314, %4304
  %4317 = fsub fast float %4315, %4283
  %4318 = fadd fast float %4317, %4291
  %4319 = fsub fast float %4316, %4284
  %4320 = fadd fast float %4319, %4291
  %4321 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4322 = fmul fast float %4318, %4321
  %4323 = fmul fast float %4320, %4321
  %4324 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4326 = fsub fast float 1.000000e+00, %4324
  %4327 = fsub fast float 1.000000e+00, %4325
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = fcmp fast ugt float %4329, 0.000000e+00
  br i1 %4330, label %4331, label %4634

; <label>:4331                                    ; preds = %4293
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = fmul fast float %4333, %4329
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4336 = fadd fast float %4335, %4334
  %4337 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4338 = fadd fast float %4336, %4305
  %4339 = fmul fast float %4311, %4299
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4302, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4337, float %4340)  ; FMad(a,b,c)
  %4342 = fsub fast float %4341, %4305
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4345 = fsub fast float %4342, %4344
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4326, float %4327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = fadd fast float %4351, %4347
  %4355 = fmul fast float %4354, 0x3F847AE140000000
  %4356 = fadd fast float %4352, %4348
  %4357 = fmul fast float %4356, 0x3F847AE140000000
  %4358 = fadd fast float %4353, %4349
  %4359 = fmul fast float %4358, 0x3F847AE140000000
  br label %4634

; <label>:4360                                    ; preds = %4207
  %4361 = and i32 %198, 1
  %4362 = icmp eq i32 %4361, 0
  br i1 %4362, label %4634, label %4363

; <label>:4363                                    ; preds = %4360
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4371 = extractvalue %dx.types.CBufRet.f32 %4366, 1
  %4372 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4373 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4374 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4375 = extractvalue %dx.types.CBufRet.f32 %4368, 3
  %4376 = fadd fast float %4373, %4279
  %4377 = fadd fast float %4374, %4280
  %4378 = fadd fast float %4375, %4281
  %4379 = fmul fast float %4376, %4365
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4377, float %4367, float %4379)  ; FMad(a,b,c)
  %4381 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4369, float %4380)  ; FMad(a,b,c)
  %4382 = fmul fast float %4376, %4370
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4377, float %4371, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4372, float %4383)  ; FMad(a,b,c)
  %4385 = fsub fast float %4381, %4373
  %4386 = fsub fast float %4384, %4374
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4391 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.i32 %4394, 0
  %4396 = extractvalue %dx.types.CBufRet.i32 %4394, 1
  %4397 = udiv i32 %4396, %4395
  %4398 = fsub fast float %4385, %4388
  %4399 = fsub fast float %4386, %4389
  %4400 = call float @dx.op.binary.f32(i32 35, float %4398, float 0.000000e+00)  ; FMax(a,b)
  %4401 = call float @dx.op.binary.f32(i32 35, float %4399, float 0.000000e+00)  ; FMax(a,b)
  %4402 = call float @dx.op.binary.f32(i32 36, float %4400, float %4390)  ; FMin(a,b)
  %4403 = call float @dx.op.binary.f32(i32 36, float %4401, float %4391)  ; FMin(a,b)
  %4404 = add i32 %4395, -1
  %4405 = add i32 %4397, -1
  %4406 = fmul fast float %4402, %4393
  %4407 = fmul fast float %4403, %4393
  %4408 = fptoui float %4406 to i32
  %4409 = fptoui float %4407 to i32
  %4410 = call i32 @dx.op.binary.i32(i32 40, i32 %4408, i32 %4404)  ; UMin(a,b)
  %4411 = call i32 @dx.op.binary.i32(i32 40, i32 %4409, i32 %4405)  ; UMin(a,b)
  %4412 = mul i32 %4411, %4395
  %4413 = add i32 %4412, %4410
  %4414 = shl i32 %4413, 2
  %4415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.i32 %4415, 0
  %4417 = icmp eq i32 %4416, -1
  br i1 %4417, label %4634, label %4418

; <label>:4418                                    ; preds = %4363
  %4419 = mul i32 %4416, 148
  %4420 = add i32 %4419, 4
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = add i32 %4419, 8
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = add i32 %4419, 36
  %4427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = add i32 %4419, 60
  %4430 = add i32 %4419, 92
  %4431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.i32 %4431, 0
  %4433 = add i32 %4419, 116
  %4434 = fsub fast float %4385, %4422
  %4435 = fsub fast float %4386, %4425
  %4436 = fmul fast float %4393, %4434
  %4437 = fmul fast float %4393, %4435
  %4438 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4440 = fsub fast float 1.000000e+00, %4439
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 2
  %4443 = call float @dx.op.unary.f32(i32 83, float %4438)  ; DerivCoarseX(value)
  %4444 = call float @dx.op.unary.f32(i32 83, float %4440)  ; DerivCoarseX(value)
  %4445 = call float @dx.op.unary.f32(i32 84, float %4438)  ; DerivCoarseY(value)
  %4446 = call float @dx.op.unary.f32(i32 84, float %4440)  ; DerivCoarseY(value)
  %4447 = fmul fast float %4443, %4442
  %4448 = fmul fast float %4444, %4442
  %4449 = fmul fast float %4445, %4442
  %4450 = fmul fast float %4446, %4442
  %4451 = call float @dx.op.dot2.f32(i32 54, float %4449, float %4450, float %4449, float %4450)  ; Dot2(ax,ay,bx,by)
  %4452 = call float @dx.op.dot2.f32(i32 54, float %4447, float %4448, float %4447, float %4448)  ; Dot2(ax,ay,bx,by)
  %4453 = call float @dx.op.binary.f32(i32 35, float %4452, float %4451)  ; FMax(a,b)
  %4454 = call float @dx.op.unary.f32(i32 23, float %4453)  ; Log(value)
  %4455 = fmul fast float %4454, 5.000000e-01
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4458 = fadd fast float %4457, %4455
  %4459 = call float @dx.op.binary.f32(i32 35, float %4458, float 0.000000e+00)  ; FMax(a,b)
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4462 = fadd fast float %4461, %4459
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4465 = fadd fast float %4462, %4464
  %4466 = add i32 %4432, 0
  %4467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4466, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4468 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4467, i32 0)  ; GetDimensions(handle,mipLevel)
  %4469 = extractvalue %dx.types.Dimensions %4468, 0
  %4470 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4469)  ; FirstbitLo(value)
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 1
  %4473 = sub nsw i32 %4472, %4470
  %4474 = sitofp i32 %4473 to float
  %4475 = fsub fast float %4465, %4474
  %4476 = call float @dx.op.binary.f32(i32 35, float %4475, float 0.000000e+00)  ; FMax(a,b)
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4467, %dx.types.Handle %46, float %4438, float %4440, float %4428, float undef, i32 0, i32 0, i32 undef, float %4476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = fcmp ule float %4478, 0x3FE0101020000000
  %4480 = extractvalue %dx.types.CBufRet.i32 %4471, 0
  %4481 = and i32 %4480, 128
  %4482 = icmp ne i32 %4481, 0
  %4483 = and i1 %4479, %4482
  br i1 %4483, label %4634, label %4484

; <label>:4484                                    ; preds = %4418
  %4485 = add i32 %4419, 20
  %4486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = add i32 %4419, 24
  %4489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = add i32 %4419, 40
  %4492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4491, i32 undef)  ; BufferLoad(srv,index,wot)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = add i32 %4419, 96
  %4495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.i32 %4495, 0
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = fmul fast float %4498, %4438
  %4500 = fmul fast float %4498, %4440
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = fadd fast float %4499, %4501
  %4503 = fadd fast float %4500, %4501
  %4504 = add i32 %4496, 0
  %4505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4504, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4506 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4505, i32 0)  ; GetDimensions(handle,mipLevel)
  %4507 = extractvalue %dx.types.Dimensions %4506, 0
  %4508 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4507)  ; FirstbitLo(value)
  %4509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.i32 %4509, 1
  %4511 = sub nsw i32 %4510, %4508
  %4512 = sitofp i32 %4511 to float
  %4513 = fsub fast float %4462, %4512
  %4514 = call float @dx.op.binary.f32(i32 35, float %4513, float 0.000000e+00)  ; FMax(a,b)
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4505, %dx.types.Handle %46, float %4502, float %4503, float %4493, float undef, i32 0, i32 0, i32 undef, float %4514)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = fmul fast float %4516, %4487
  %4518 = fadd fast float %4517, %4490
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4527 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4528 = fadd fast float %4524, %4385
  %4529 = fadd fast float %4526, %4386
  %4530 = fadd fast float %4518, %4527
  %4531 = fmul fast float %4528, %4520
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4521, float %4531)  ; FMad(a,b,c)
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4522, float %4532)  ; FMad(a,b,c)
  %4534 = fsub fast float %4533, %4527
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4537 = fsub fast float %4534, %4536
  %4538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.i32 %4538, 0
  %4540 = call i32 @dx.op.binary.i32(i32 40, i32 %4416, i32 %4539)  ; UMin(a,b)
  %4541 = mul i32 %4540, 36
  %4542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.i32 %4542, 0
  %4544 = add i32 %4541, 4
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 0
  %4547 = fmul fast float %4546, %4438
  %4548 = fmul fast float %4546, %4440
  %4549 = extractvalue %dx.types.CBufRet.f32 %4545, 1
  %4550 = fadd fast float %4547, %4549
  %4551 = fadd fast float %4548, %4549
  %4552 = icmp eq i32 %4543, 0
  br i1 %4552, label %4621, label %4553

; <label>:4553                                    ; preds = %4484
  br label %4554

; <label>:4554                                    ; preds = %4611, %4553
  %4555 = phi float [ %4612, %4611 ], [ 0.000000e+00, %4553 ]
  %4556 = phi float [ %4613, %4611 ], [ 0.000000e+00, %4553 ]
  %4557 = phi float [ %4614, %4611 ], [ 0.000000e+00, %4553 ]
  %4558 = phi float [ %4615, %4611 ], [ 0.000000e+00, %4553 ]
  %4559 = phi float [ %4616, %4611 ], [ 0.000000e+00, %4553 ]
  %4560 = phi float [ %4617, %4611 ], [ 0.000000e+00, %4553 ]
  %4561 = phi i32 [ %4618, %4611 ], [ 0, %4553 ]
  %4562 = shl i32 %4561, 2
  %4563 = add i32 %4429, %4562
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = add i32 %4433, %4562
  %4567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.i32 %4567, 0
  %4569 = add i32 %4568, 0
  %4570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4569, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4571 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4570, i32 0)  ; GetDimensions(handle,mipLevel)
  %4572 = extractvalue %dx.types.Dimensions %4571, 0
  %4573 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4572)  ; FirstbitLo(value)
  %4574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.i32 %4574, 1
  %4576 = sub nsw i32 %4575, %4573
  %4577 = sitofp i32 %4576 to float
  %4578 = fsub fast float %4462, %4577
  %4579 = call float @dx.op.binary.f32(i32 35, float %4578, float 0.000000e+00)  ; FMax(a,b)
  %4580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4570, %dx.types.Handle %46, float %4550, float %4551, float %4565, float undef, i32 0, i32 0, i32 undef, float %4579)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = fcmp fast ogt float %4581, 0.000000e+00
  br i1 %4582, label %4583, label %4611

; <label>:4583                                    ; preds = %4554
  %4584 = add i32 %4544, %4562
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = and i32 %4586, 32767
  %4588 = mul nuw nsw i32 %4587, 928
  %4589 = add nuw nsw i32 %4588, 48
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4593 = extractvalue %dx.types.ResRet.f32 %4590, 2
  %4594 = add nuw nsw i32 %4588, 60
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = fmul fast float %4591, %4581
  %4600 = fmul fast float %4592, %4581
  %4601 = fmul fast float %4593, %4581
  %4602 = fadd fast float %4599, %4555
  %4603 = fadd fast float %4600, %4556
  %4604 = fadd fast float %4601, %4557
  %4605 = fmul fast float %4596, %4581
  %4606 = fmul fast float %4597, %4581
  %4607 = fmul fast float %4598, %4581
  %4608 = fadd fast float %4605, %4558
  %4609 = fadd fast float %4606, %4559
  %4610 = fadd fast float %4607, %4560
  br label %4611

; <label>:4611                                    ; preds = %4583, %4554
  %4612 = phi float [ %4602, %4583 ], [ %4555, %4554 ]
  %4613 = phi float [ %4603, %4583 ], [ %4556, %4554 ]
  %4614 = phi float [ %4604, %4583 ], [ %4557, %4554 ]
  %4615 = phi float [ %4608, %4583 ], [ %4558, %4554 ]
  %4616 = phi float [ %4609, %4583 ], [ %4559, %4554 ]
  %4617 = phi float [ %4610, %4583 ], [ %4560, %4554 ]
  %4618 = add nuw i32 %4561, 1
  %4619 = icmp eq i32 %4618, %4543
  br i1 %4619, label %4620, label %4554

; <label>:4620                                    ; preds = %4611
  br label %4621

; <label>:4621                                    ; preds = %4620, %4484
  %4622 = phi float [ 0.000000e+00, %4484 ], [ %4612, %4620 ]
  %4623 = phi float [ 0.000000e+00, %4484 ], [ %4613, %4620 ]
  %4624 = phi float [ 0.000000e+00, %4484 ], [ %4614, %4620 ]
  %4625 = phi float [ 0.000000e+00, %4484 ], [ %4615, %4620 ]
  %4626 = phi float [ 0.000000e+00, %4484 ], [ %4616, %4620 ]
  %4627 = phi float [ 0.000000e+00, %4484 ], [ %4617, %4620 ]
  %4628 = fadd fast float %4625, %4622
  %4629 = fmul fast float %4628, 0x3F847AE140000000
  %4630 = fadd fast float %4626, %4623
  %4631 = fmul fast float %4630, 0x3F847AE140000000
  %4632 = fadd fast float %4627, %4624
  %4633 = fmul fast float %4632, 0x3F847AE140000000
  br label %4634

; <label>:4634                                    ; preds = %4621, %4418, %4363, %4360, %4331, %4293
  %4635 = phi float [ %4345, %4331 ], [ -1.310720e+05, %4293 ], [ %4537, %4621 ], [ -1.310720e+05, %4363 ], [ -1.310720e+05, %4418 ], [ -1.310720e+05, %4360 ]
  %4636 = phi float [ %4355, %4331 ], [ 0.000000e+00, %4293 ], [ %4629, %4621 ], [ 0.000000e+00, %4363 ], [ 0.000000e+00, %4418 ], [ 0.000000e+00, %4360 ]
  %4637 = phi float [ %4357, %4331 ], [ 0.000000e+00, %4293 ], [ %4631, %4621 ], [ 0.000000e+00, %4363 ], [ 0.000000e+00, %4418 ], [ 0.000000e+00, %4360 ]
  %4638 = phi float [ %4359, %4331 ], [ 0.000000e+00, %4293 ], [ %4633, %4621 ], [ 0.000000e+00, %4363 ], [ 0.000000e+00, %4418 ], [ 0.000000e+00, %4360 ]
  %4639 = phi i1 [ true, %4331 ], [ false, %4293 ], [ true, %4621 ], [ false, %4363 ], [ false, %4418 ], [ false, %4360 ]
  %4640 = and i32 %198, 3
  %4641 = icmp eq i32 %4640, 1
  %4642 = select i1 %4641, float 1.000000e+00, float 0.000000e+00
  %4643 = fsub fast float %4635, %162
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = select i1 %4639, float %4644, float 1.000000e+00
  %4646 = fmul fast float %4645, %4642
  %4647 = icmp eq i32 %4640, 3
  %4648 = select i1 %4647, float 1.000000e+00, float %4646
  %4649 = call float @dx.op.binary.f32(i32 35, float %4208, float %4648)  ; FMax(a,b)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = fcmp fast une float %4650, 0.000000e+00
  %4652 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = call float @dx.op.unary.f32(i32 25, float %4652)  ; Rsqrt(value)
  br i1 %4651, label %4661, label %4654

; <label>:4654                                    ; preds = %4634
  %4655 = fmul fast float %4653, %160
  %4656 = fmul fast float %4653, %161
  %4657 = fmul fast float %4653, %162
  %4658 = fsub fast float -0.000000e+00, %4655
  %4659 = fsub fast float -0.000000e+00, %4656
  %4660 = fsub fast float -0.000000e+00, %4657
  br label %4829

; <label>:4661                                    ; preds = %4634
  %4662 = fmul fast float %160, %4653
  %4663 = fsub fast float -0.000000e+00, %4662
  %4664 = fmul fast float %161, %4653
  %4665 = fsub fast float -0.000000e+00, %4664
  %4666 = fmul fast float %162, %4653
  %4667 = fsub fast float -0.000000e+00, %4666
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4665, float %4667, float %110, float %112, float %114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = fmul fast float %4650, 2.500000e+00
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fmul fast float %4650, 0x4013FFFFE0000000
  %4672 = fadd fast float %4671, 0xBFFFFFFFE0000000
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fmul fast float %4650, 0x4004000020000000
  %4675 = fadd fast float %4674, 0xBFF8000040000000
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4678 = fmul fast float %4239, 1.000000e+01
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4679, 2.000000e+00
  %4681 = fsub fast float 3.000000e+00, %4680
  %4682 = fmul fast float %4679, %4679
  %4683 = fmul fast float %4682, %4681
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = fsub fast float 0x3FE3333340000000, %4260
  %4686 = fmul fast float %4685, 0x400AAAAAA0000000
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = fmul fast float %4684, %4687
  %4689 = fmul fast float %4272, 0x3FEA2B8620000000
  %4690 = fmul fast float %4273, 0x3FEA2B8620000000
  %4691 = fmul fast float %4274, 0x3FEA2B8620000000
  %4692 = fadd fast float %4689, 0x3FC81DFBA0000000
  %4693 = fmul fast float %4692, %4272
  %4694 = fadd fast float %4693, 0x3F910E6020000000
  %4695 = fadd fast float %4690, 0x3FC81DFBA0000000
  %4696 = fmul fast float %4695, %4273
  %4697 = fadd fast float %4696, 0x3F910E6020000000
  %4698 = fadd fast float %4691, 0x3FC81DFBA0000000
  %4699 = fmul fast float %4698, %4274
  %4700 = fadd fast float %4699, 0x3F910E6020000000
  %4701 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = fsub fast float %4701, %4272
  %4705 = fsub fast float %4702, %4273
  %4706 = fsub fast float %4703, %4274
  %4707 = fmul fast float %4704, %4677
  %4708 = fmul fast float %4707, %4688
  %4709 = fmul fast float %4705, %4677
  %4710 = fmul fast float %4709, %4688
  %4711 = fmul fast float %4706, %4677
  %4712 = fmul fast float %4711, %4688
  %4713 = fadd fast float %4708, %4272
  %4714 = fadd fast float %4710, %4273
  %4715 = fadd fast float %4712, %4274
  %4716 = fmul fast float %4220, %4220
  %4717 = fmul fast float %4716, %4716
  %4718 = fadd fast float %4673, 1.000000e+00
  %4719 = fsub fast float %4718, %4688
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = call float @dx.op.dot3.f32(i32 55, float %110, float %112, float %114, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fsub fast float 1.000000e+00, %4717
  %4724 = call float @dx.op.binary.f32(i32 36, float %4720, float %4723)  ; FMin(a,b)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4724, float %4725)  ; FMax(a,b)
  %4727 = fadd fast float %4722, 0xBFE4CCCCC0000000
  %4728 = fmul fast float %4727, 0x4006DB6DA0000000
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, 2.000000e+00
  %4731 = fsub fast float 3.000000e+00, %4730
  %4732 = bitcast float %4257 to i32
  %4733 = ashr i32 %4732, 1
  %4734 = add nsw i32 %4733, 532487669
  %4735 = bitcast i32 %4734 to float
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = bitcast float %4736 to i32
  %4738 = sub nsw i32 2129859010, %4737
  %4739 = bitcast i32 %4738 to float
  %4740 = fmul fast float %4739, 2.000000e+00
  %4741 = bitcast float %4258 to i32
  %4742 = ashr i32 %4741, 1
  %4743 = add nsw i32 %4742, 532487669
  %4744 = bitcast i32 %4743 to float
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = bitcast float %4745 to i32
  %4747 = sub nsw i32 2129859010, %4746
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4748, 2.000000e+00
  %4750 = bitcast float %4259 to i32
  %4751 = ashr i32 %4750, 1
  %4752 = add nsw i32 %4751, 532487669
  %4753 = bitcast i32 %4752 to float
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = bitcast float %4754 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = fmul fast float %4757, 2.000000e+00
  %4759 = fsub fast float 0x4002A9FBE0000000, %4740
  %4760 = fadd fast float %4740, 0x3FD54FDF00000000
  %4761 = bitcast float %4760 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4763, %4759
  %4765 = fmul fast float %4764, %4764
  %4766 = fsub fast float 0x4002A9FBE0000000, %4749
  %4767 = fadd fast float %4749, 0x3FD54FDF00000000
  %4768 = bitcast float %4767 to i32
  %4769 = sub nsw i32 2129859010, %4768
  %4770 = bitcast i32 %4769 to float
  %4771 = fmul fast float %4770, %4766
  %4772 = fmul fast float %4771, %4771
  %4773 = fsub fast float 0x4002A9FBE0000000, %4758
  %4774 = fadd fast float %4758, 0x3FD54FDF00000000
  %4775 = bitcast float %4774 to i32
  %4776 = sub nsw i32 2129859010, %4775
  %4777 = bitcast i32 %4776 to float
  %4778 = fmul fast float %4777, %4773
  %4779 = fmul fast float %4778, %4778
  %4780 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4765)  ; FMax(a,b)
  %4781 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4772)  ; FMax(a,b)
  %4782 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4779)  ; FMax(a,b)
  %4783 = fsub fast float 1.000000e+00, %4668
  %4784 = fadd fast float %4783, %4684
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fsub fast float 1.000000e+00, %4648
  %4787 = fmul fast float %4726, %4786
  %4788 = fmul fast float %4729, %4729
  %4789 = fmul fast float %4788, %4787
  %4790 = fmul fast float %4789, %4731
  %4791 = fmul fast float %4786, 0xBFE99999A0000000
  %4792 = fmul fast float %4791, %4677
  %4793 = fmul fast float %4792, %4688
  %4794 = fadd fast float %4793, 1.000000e+00
  %4795 = fadd fast float %4260, -1.000000e+00
  %4796 = fmul fast float %4794, %4795
  %4797 = fadd fast float %4796, 1.000000e+00
  %4798 = fsub fast float %4780, %4257
  %4799 = fsub fast float %4781, %4258
  %4800 = fsub fast float %4782, %4259
  %4801 = fmul fast float %4790, %4798
  %4802 = fmul fast float %4790, %4799
  %4803 = fmul fast float %4790, %4800
  %4804 = fadd fast float %4801, %4257
  %4805 = fadd fast float %4802, %4258
  %4806 = fadd fast float %4803, %4259
  %4807 = fsub fast float %110, %4236
  %4808 = fsub fast float %112, %4237
  %4809 = fsub fast float %114, %4238
  %4810 = fmul fast float %4790, %4807
  %4811 = fmul fast float %4790, %4808
  %4812 = fmul fast float %4790, %4809
  %4813 = fadd fast float %4810, %4236
  %4814 = fadd fast float %4811, %4237
  %4815 = fadd fast float %4812, %4238
  %4816 = fmul fast float %4790, %4785
  %4817 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = fmul fast float %4816, %4818
  %4820 = fadd fast float %4819, %4817
  %4821 = fsub fast float 1.000000e+00, %4220
  %4822 = fmul fast float %4790, %4821
  %4823 = fadd fast float %4822, %4220
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %4813, float %4814, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 25, float %4824)  ; Rsqrt(value)
  %4826 = fmul fast float %4813, %4825
  %4827 = fmul fast float %4814, %4825
  %4828 = fmul fast float %4815, %4825
  br label %4829

; <label>:4829                                    ; preds = %4661, %4654
  %4830 = phi float [ %4660, %4654 ], [ %4667, %4661 ]
  %4831 = phi float [ %4659, %4654 ], [ %4665, %4661 ]
  %4832 = phi float [ %4658, %4654 ], [ %4663, %4661 ]
  %4833 = phi float [ %4657, %4654 ], [ %4666, %4661 ]
  %4834 = phi float [ %4656, %4654 ], [ %4664, %4661 ]
  %4835 = phi float [ %4655, %4654 ], [ %4662, %4661 ]
  %4836 = phi float [ %4272, %4654 ], [ %4713, %4661 ]
  %4837 = phi float [ %4273, %4654 ], [ %4714, %4661 ]
  %4838 = phi float [ %4274, %4654 ], [ %4715, %4661 ]
  %4839 = phi float [ %4257, %4654 ], [ %4804, %4661 ]
  %4840 = phi float [ %4258, %4654 ], [ %4805, %4661 ]
  %4841 = phi float [ %4259, %4654 ], [ %4806, %4661 ]
  %4842 = phi float [ %4236, %4654 ], [ %4826, %4661 ]
  %4843 = phi float [ %4237, %4654 ], [ %4827, %4661 ]
  %4844 = phi float [ %4238, %4654 ], [ %4828, %4661 ]
  %4845 = phi float [ %4260, %4654 ], [ %4820, %4661 ]
  %4846 = phi float [ %4220, %4654 ], [ %4823, %4661 ]
  %4847 = fsub fast float -0.000000e+00, %162
  %4848 = select i1 %222, float 0.000000e+00, float %4841
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %4832, float %4831, float %4830)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4834, float %4833, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = fmul fast float %4851, 2.000000e+00
  %4853 = fmul fast float %4852, %4842
  %4854 = fmul fast float %4852, %4843
  %4855 = fmul fast float %4852, %4844
  %4856 = fsub fast float %4835, %4853
  %4857 = fsub fast float %4834, %4854
  %4858 = fsub fast float %4833, %4855
  %4859 = call float @dx.op.binary.f32(i32 36, float %4846, float 1.000000e+00)  ; FMin(a,b)
  %4860 = fsub fast float 1.000000e+00, %4846
  %4861 = bitcast float %4860 to i32
  %4862 = sub nsw i32 2129859010, %4861
  %4863 = bitcast i32 %4862 to float
  %4864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %4865 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = fcmp fast oeq float %4865, 0.000000e+00
  %4867 = fcmp fast oeq float %4864, 0.000000e+00
  %4868 = or i1 %4867, %4866
  br i1 %4868, label %4898, label %4869

; <label>:4869                                    ; preds = %4829
  %4870 = fsub fast float -0.000000e+00, %75
  %4871 = fsub fast float -0.000000e+00, %73
  %4872 = call float @dx.op.unary.f32(i32 24, float %4865)  ; Sqrt(value)
  %4873 = fdiv fast float %4872, %4864
  %4874 = fcmp fast ogt float %4873, 0x3FFB6F8900000000
  %4875 = select i1 %4874, float 0x3FFB6F8900000000, float %4873
  %4876 = fmul fast float %4875, 0x3FE8A23460000000
  %4877 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4878 = call float @dx.op.binary.f32(i32 35, float %4875, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4879 = fmul fast float %4877, %4864
  %4880 = fmul fast float %4878, 0x3FF279A740000000
  %4881 = fadd fast float %4880, -1.000000e+00
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4871, float %74, float %4870, float %4871, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = call float @dx.op.unary.f32(i32 25, float %4882)  ; Rsqrt(value)
  %4884 = fmul fast float %4883, %4870
  %4885 = fmul fast float %4883, %4871
  %4886 = fmul fast float %4883, %74
  %4887 = fmul fast float %4881, %4881
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = fmul fast float %4878, 0x40005F8BE0000000
  %4890 = fsub fast float 0x400C5BF8A0000000, %4889
  %4891 = fdiv fast float %4879, %4890
  %4892 = fmul fast float %4891, 0x3FEE31C3C0000000
  %4893 = fmul fast float %4892, %4888
  %4894 = fmul fast float %4878, 0x3FDACB7480000000
  %4895 = fadd fast float %4894, 0xBFD7347680000000
  %4896 = fmul fast float %4895, %4891
  %4897 = fmul fast float %4896, %4888
  br label %4898

; <label>:4898                                    ; preds = %4869, %4829
  %4899 = phi float [ %4884, %4869 ], [ 0.000000e+00, %4829 ]
  %4900 = phi float [ %4885, %4869 ], [ 0.000000e+00, %4829 ]
  %4901 = phi float [ %4886, %4869 ], [ 0.000000e+00, %4829 ]
  %4902 = phi float [ %4893, %4869 ], [ 0.000000e+00, %4829 ]
  %4903 = phi float [ %4897, %4869 ], [ 0.000000e+00, %4829 ]
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = fmul fast float %4904, %4904
  %4906 = fmul fast float %4905, 0x3FEE471020000000
  %4907 = fadd fast float %4906, 0xBFD42F6020000000
  %4908 = fmul fast float %4864, 0x3FD20DD760000000
  %4909 = fmul fast float %4907, %4903
  %4910 = fmul fast float %4902, 0x3FDF454380000000
  %4911 = fmul fast float %4910, %4904
  %4912 = fadd fast float %4911, %4908
  %4913 = fadd fast float %4912, %4909
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float %4856, float %4857, float %4858)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = fmul fast float %4914, 0x3FDF454380000000
  %4916 = fmul fast float %4914, %4914
  %4917 = fmul fast float %4916, 0x3FEE471020000000
  %4918 = fadd fast float %4917, 0xBFD42F6020000000
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4902, float %4903, float 0x3FD20DD760000000, float %4915, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %4921 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = fcmp fast oeq float %4921, 0.000000e+00
  %4923 = fcmp fast oeq float %4920, 0.000000e+00
  %4924 = or i1 %4923, %4922
  br i1 %4924, label %4954, label %4925

; <label>:4925                                    ; preds = %4898
  %4926 = fsub fast float -0.000000e+00, %71
  %4927 = fsub fast float -0.000000e+00, %69
  %4928 = call float @dx.op.unary.f32(i32 24, float %4921)  ; Sqrt(value)
  %4929 = fdiv fast float %4928, %4920
  %4930 = fcmp fast ogt float %4929, 0x3FFB6F8900000000
  %4931 = select i1 %4930, float 0x3FFB6F8900000000, float %4929
  %4932 = fmul fast float %4931, 0x3FE8A23460000000
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = call float @dx.op.binary.f32(i32 35, float %4931, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4935 = fmul fast float %4933, %4920
  %4936 = fmul fast float %4934, 0x3FF279A740000000
  %4937 = fadd fast float %4936, -1.000000e+00
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4926, float %4927, float %70, float %4926, float %4927, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 25, float %4938)  ; Rsqrt(value)
  %4940 = fmul fast float %4939, %4926
  %4941 = fmul fast float %4939, %4927
  %4942 = fmul fast float %4939, %70
  %4943 = fmul fast float %4937, %4937
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4934, 0x40005F8BE0000000
  %4946 = fsub fast float 0x400C5BF8A0000000, %4945
  %4947 = fdiv fast float %4935, %4946
  %4948 = fmul fast float %4947, 0x3FEE31C3C0000000
  %4949 = fmul fast float %4948, %4944
  %4950 = fmul fast float %4934, 0x3FDACB7480000000
  %4951 = fadd fast float %4950, 0xBFD7347680000000
  %4952 = fmul fast float %4951, %4947
  %4953 = fmul fast float %4952, %4944
  br label %4954

; <label>:4954                                    ; preds = %4925, %4898
  %4955 = phi float [ %4940, %4925 ], [ 0.000000e+00, %4898 ]
  %4956 = phi float [ %4941, %4925 ], [ 0.000000e+00, %4898 ]
  %4957 = phi float [ %4942, %4925 ], [ 0.000000e+00, %4898 ]
  %4958 = phi float [ %4949, %4925 ], [ 0.000000e+00, %4898 ]
  %4959 = phi float [ %4953, %4925 ], [ 0.000000e+00, %4898 ]
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = fmul fast float %4960, %4960
  %4962 = fmul fast float %4961, 0x3FEE471020000000
  %4963 = fadd fast float %4962, 0xBFD42F6020000000
  %4964 = fmul fast float %4920, 0x3FD20DD760000000
  %4965 = fmul fast float %4963, %4959
  %4966 = fmul fast float %4958, 0x3FDF454380000000
  %4967 = fmul fast float %4966, %4960
  %4968 = fadd fast float %4967, %4964
  %4969 = fadd fast float %4968, %4965
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %4856, float %4857, float %4858)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = fmul fast float %4970, 0x3FDF454380000000
  %4972 = fmul fast float %4970, %4970
  %4973 = fmul fast float %4972, 0x3FEE471020000000
  %4974 = fadd fast float %4973, 0xBFD42F6020000000
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4958, float %4959, float 0x3FD20DD760000000, float %4971, float %4974)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %4977 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = fcmp fast oeq float %4977, 0.000000e+00
  %4979 = fcmp fast oeq float %4976, 0.000000e+00
  %4980 = or i1 %4979, %4978
  br i1 %4980, label %5010, label %4981

; <label>:4981                                    ; preds = %4954
  %4982 = fsub fast float -0.000000e+00, %67
  %4983 = fsub fast float -0.000000e+00, %65
  %4984 = call float @dx.op.unary.f32(i32 24, float %4977)  ; Sqrt(value)
  %4985 = fdiv fast float %4984, %4976
  %4986 = fcmp fast ogt float %4985, 0x3FFB6F8900000000
  %4987 = select i1 %4986, float 0x3FFB6F8900000000, float %4985
  %4988 = fmul fast float %4987, 0x3FE8A23460000000
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4987, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4991 = fmul fast float %4989, %4976
  %4992 = fmul fast float %4990, 0x3FF279A740000000
  %4993 = fadd fast float %4992, -1.000000e+00
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4983, float %66, float %4982, float %4983, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.unary.f32(i32 25, float %4994)  ; Rsqrt(value)
  %4996 = fmul fast float %4995, %4982
  %4997 = fmul fast float %4995, %4983
  %4998 = fmul fast float %4995, %66
  %4999 = fmul fast float %4993, %4993
  %5000 = fsub fast float 1.000000e+00, %4999
  %5001 = fmul fast float %4990, 0x40005F8BE0000000
  %5002 = fsub fast float 0x400C5BF8A0000000, %5001
  %5003 = fdiv fast float %4991, %5002
  %5004 = fmul fast float %5003, 0x3FEE31C3C0000000
  %5005 = fmul fast float %5004, %5000
  %5006 = fmul fast float %4990, 0x3FDACB7480000000
  %5007 = fadd fast float %5006, 0xBFD7347680000000
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %5008, %5000
  br label %5010

; <label>:5010                                    ; preds = %4981, %4954
  %5011 = phi float [ %4996, %4981 ], [ 0.000000e+00, %4954 ]
  %5012 = phi float [ %4997, %4981 ], [ 0.000000e+00, %4954 ]
  %5013 = phi float [ %4998, %4981 ], [ 0.000000e+00, %4954 ]
  %5014 = phi float [ %5005, %4981 ], [ 0.000000e+00, %4954 ]
  %5015 = phi float [ %5009, %4981 ], [ 0.000000e+00, %4954 ]
  %5016 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5012, float %5013, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = fmul fast float %5016, %5016
  %5018 = fmul fast float %5017, 0x3FEE471020000000
  %5019 = fadd fast float %5018, 0xBFD42F6020000000
  %5020 = fmul fast float %4976, 0x3FD20DD760000000
  %5021 = fmul fast float %5019, %5015
  %5022 = fmul fast float %5014, 0x3FDF454380000000
  %5023 = fmul fast float %5022, %5016
  %5024 = fadd fast float %5023, %5020
  %5025 = fadd fast float %5024, %5021
  %5026 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5012, float %5013, float %4856, float %4857, float %4858)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = fmul fast float %5026, 0x3FDF454380000000
  %5028 = fmul fast float %5026, %5026
  %5029 = fmul fast float %5028, 0x3FEE471020000000
  %5030 = fadd fast float %5029, 0xBFD42F6020000000
  %5031 = call float @dx.op.dot3.f32(i32 55, float %4976, float %5014, float %5015, float 0x3FD20DD760000000, float %5027, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.binary.f32(i32 35, float %4913, float 0.000000e+00)  ; FMax(a,b)
  %5033 = call float @dx.op.binary.f32(i32 35, float %4969, float 0.000000e+00)  ; FMax(a,b)
  %5034 = call float @dx.op.binary.f32(i32 35, float %5025, float 0.000000e+00)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %5036 = call float @dx.op.binary.f32(i32 35, float %4975, float 0.000000e+00)  ; FMax(a,b)
  %5037 = call float @dx.op.binary.f32(i32 35, float %5031, float 0.000000e+00)  ; FMax(a,b)
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = call float @dx.op.binary.f32(i32 36, float %4836, float %5039)  ; FMin(a,b)
  %5041 = fsub fast float 1.000000e+00, %4859
  %5042 = fmul fast float %5040, %5041
  %5043 = fsub fast float 1.000000e+00, %5042
  %5044 = bitcast float %5043 to i32
  %5045 = sub nsw i32 2129859010, %5044
  %5046 = bitcast i32 %5045 to float
  %5047 = call float @dx.op.binary.f32(i32 36, float %4837, float %5039)  ; FMin(a,b)
  %5048 = fmul fast float %5047, %5041
  %5049 = fsub fast float 1.000000e+00, %5048
  %5050 = bitcast float %5049 to i32
  %5051 = sub nsw i32 2129859010, %5050
  %5052 = bitcast i32 %5051 to float
  %5053 = call float @dx.op.binary.f32(i32 36, float %4838, float %5039)  ; FMin(a,b)
  %5054 = fmul fast float %5053, %5041
  %5055 = fsub fast float 1.000000e+00, %5054
  %5056 = bitcast float %5055 to i32
  %5057 = sub nsw i32 2129859010, %5056
  %5058 = bitcast i32 %5057 to float
  %5059 = fmul fast float %5032, %4859
  %5060 = fmul fast float %5059, %5046
  %5061 = fmul fast float %5033, %4859
  %5062 = fmul fast float %5061, %5052
  %5063 = fmul fast float %5034, %4859
  %5064 = fmul fast float %5063, %5058
  %5065 = call float @dx.op.binary.f32(i32 36, float %4839, float %5039)  ; FMin(a,b)
  %5066 = fmul fast float %5065, %5041
  %5067 = fsub fast float 1.000000e+00, %5066
  %5068 = bitcast float %5067 to i32
  %5069 = sub nsw i32 2129859010, %5068
  %5070 = bitcast i32 %5069 to float
  %5071 = call float @dx.op.binary.f32(i32 36, float %4840, float %5039)  ; FMin(a,b)
  %5072 = fmul fast float %5071, %5041
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = bitcast float %5073 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = bitcast i32 %5075 to float
  %5077 = call float @dx.op.binary.f32(i32 36, float %4848, float %5039)  ; FMin(a,b)
  %5078 = fmul fast float %5077, %5041
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = bitcast float %5079 to i32
  %5081 = sub nsw i32 2129859010, %5080
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5035, %4859
  %5084 = fmul fast float %5083, %5070
  %5085 = fmul fast float %5036, %4859
  %5086 = fmul fast float %5085, %5076
  %5087 = fmul fast float %5037, %4859
  %5088 = fmul fast float %5087, %5082
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5060, float %5062, float %5064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = select i1 %222, float 0.000000e+00, float %5060
  %5091 = select i1 %222, float %5089, float %5062
  %5092 = select i1 %222, float 0.000000e+00, float %5064
  %5093 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5086, float %5088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5094 = select i1 %222, float 0.000000e+00, float %5084
  %5095 = select i1 %222, float %5093, float %5086
  %5096 = select i1 %222, float 0.000000e+00, float %5088
  %5097 = fmul fast float %4850, 9.843750e-01
  %5098 = fmul fast float %4845, 9.843750e-01
  %5099 = fadd fast float %5097, 7.812500e-03
  %5100 = fadd fast float %5098, 7.812500e-03
  %5101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5099, float %5100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5102 = extractvalue %dx.types.ResRet.f32 %5101, 2
  %5103 = extractvalue %dx.types.ResRet.f32 %5101, 3
  %5104 = fmul fast float %5102, %4839
  %5105 = fmul fast float %5102, %4840
  %5106 = fmul fast float %5102, %4848
  %5107 = fadd fast float %5104, %5103
  %5108 = fadd fast float %5105, %5103
  %5109 = fadd fast float %5106, %5103
  %5110 = fcmp fast ogt float %4213, 0.000000e+00
  br i1 %5110, label %5111, label %5137

; <label>:5111                                    ; preds = %5010
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4213, float %4850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = fadd fast float %5113, -5.000000e-01
  %5117 = fadd fast float %5114, -5.000000e-01
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fsub fast float 1.000000e+00, %4839
  %5120 = fsub fast float 1.000000e+00, %4840
  %5121 = fsub fast float 1.000000e+00, %4848
  %5122 = fmul fast float %4839, 4.000000e+00
  %5123 = fmul fast float %5122, %5119
  %5124 = fmul fast float %5123, %5116
  %5125 = fmul fast float %4840, 4.000000e+00
  %5126 = fmul fast float %5125, %5120
  %5127 = fmul fast float %5126, %5117
  %5128 = fmul fast float %4848, 4.000000e+00
  %5129 = fmul fast float %5128, %5121
  %5130 = fmul fast float %5129, %5118
  %5131 = fadd fast float %5124, %5107
  %5132 = fadd fast float %5127, %5108
  %5133 = fadd fast float %5130, %5109
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  br label %5137

; <label>:5137                                    ; preds = %5111, %5010
  %5138 = phi float [ %5134, %5111 ], [ %5107, %5010 ]
  %5139 = phi float [ %5135, %5111 ], [ %5108, %5010 ]
  %5140 = phi float [ %5136, %5111 ], [ %5109, %5010 ]
  %5141 = call float @dx.op.binary.f32(i32 35, float %5139, float %5140)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5138, float %5141)  ; FMax(a,b)
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = fmul fast float %5143, %5090
  %5145 = fmul fast float %5143, %5091
  %5146 = fmul fast float %5143, %5092
  %5147 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = fcmp fast ogt float %5147, 0x3E7FF19E20000000
  %5149 = fdiv fast float 1.000000e+00, %5147
  %5150 = select i1 %5148, float %5149, float 0.000000e+00
  %5151 = fmul fast float %5150, %4836
  %5152 = fmul fast float %5150, %4837
  %5153 = fmul fast float %5150, %4838
  %5154 = fadd fast float %5151, -1.000000e+00
  %5155 = fadd fast float %5152, -1.000000e+00
  %5156 = fadd fast float %5153, -1.000000e+00
  %5157 = fmul fast float %5154, 5.000000e-01
  %5158 = fmul fast float %5155, 5.000000e-01
  %5159 = fmul fast float %5156, 5.000000e-01
  %5160 = fadd fast float %5157, 1.000000e+00
  %5161 = fadd fast float %5158, 1.000000e+00
  %5162 = fadd fast float %5159, 1.000000e+00
  %5163 = fmul fast float %5138, %5094
  %5164 = fmul fast float %5139, %5095
  %5165 = fmul fast float %5140, %5096
  %5166 = fsub fast float 1.000000e+00, %4850
  %5167 = bitcast float %5166 to i32
  %5168 = sitofp i32 %5167 to float
  %5169 = fmul fast float %5168, 5.000000e+00
  %5170 = fadd fast float %5169, 0xC1EFBF8940000000
  %5171 = fptosi float %5170 to i32
  %5172 = bitcast i32 %5171 to float
  %5173 = fmul fast float %5172, %4212
  %5174 = fmul fast float %5090, %5173
  %5175 = fmul fast float %5174, %5143
  %5176 = fmul fast float %5175, %5160
  %5177 = fmul fast float %5091, %5173
  %5178 = fmul fast float %5177, %5143
  %5179 = fmul fast float %5178, %5161
  %5180 = fmul fast float %5092, %5173
  %5181 = fmul fast float %5180, %5143
  %5182 = fmul fast float %5181, %5162
  %5183 = fmul fast float %5144, %4233
  %5184 = fmul fast float %5145, %4233
  %5185 = fmul fast float %5146, %4233
  %5186 = fadd fast float %5163, %4214
  %5187 = fadd fast float %5186, %5176
  %5188 = fmul fast float %5187, %4233
  %5189 = fadd fast float %5164, %4215
  %5190 = fadd fast float %5189, %5179
  %5191 = fmul fast float %5190, %4233
  %5192 = fadd fast float %5165, %4216
  %5193 = fadd fast float %5192, %5182
  %5194 = fmul fast float %5193, %4233
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 3
  %5197 = fcmp fast oeq float %5196, 0.000000e+00
  br i1 %5197, label %6267, label %5198

; <label>:5198                                    ; preds = %5137
  %5199 = extractvalue %dx.types.CBufRet.f32 %5195, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5195, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.CBufRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = select i1 %222, float %5207, float %5203
  %5211 = select i1 %222, float %5209, float %5204
  %5212 = select i1 %222, float %5208, float %5205
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 2
  %5215 = fmul fast float %5214, %110
  %5216 = fmul fast float %5214, %112
  %5217 = fmul fast float %5214, %114
  %5218 = fadd fast float %5215, %160
  %5219 = fadd fast float %5216, %161
  %5220 = fadd fast float %5217, %162
  %5221 = fcmp fast olt float %5196, 0.000000e+00
  br i1 %5221, label %5846, label %5222

; <label>:5222                                    ; preds = %5198
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5227 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5228, 2
  %5232 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5238 = fmul fast float %5224, %5218
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5225, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5226, float %5239)  ; FMad(a,b,c)
  %5241 = fadd fast float %5240, %5227
  %5242 = fmul fast float %5229, %5218
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5230, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5231, float %5243)  ; FMad(a,b,c)
  %5245 = fadd fast float %5244, %5232
  %5246 = fmul fast float %5234, %5218
  %5247 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5235, float %5246)  ; FMad(a,b,c)
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = fadd fast float %5248, %5237
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.CBufRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5254 = fmul fast float %5253, %5241
  %5255 = fmul fast float %5253, %5245
  %5256 = fadd fast float %5254, %5251
  %5257 = fadd fast float %5255, %5252
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5262 = fmul fast float %5261, %5241
  %5263 = fmul fast float %5261, %5245
  %5264 = fadd fast float %5262, %5259
  %5265 = fadd fast float %5263, %5260
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5268 = fsub fast float %5267, %5249
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5270 = fmul fast float %5268, %5269
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5276 = fadd fast float %5275, %5273
  %5277 = fcmp fast ogt float %5276, 0.000000e+00
  br i1 %5277, label %5278, label %5302

; <label>:5278                                    ; preds = %5222
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5282 = fsub fast float %5264, %5280
  %5283 = fsub fast float %5265, %5281
  %5284 = fcmp fast olt float %5282, 0.000000e+00
  %5285 = fcmp fast olt float %5283, 0.000000e+00
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5290 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5291 = select i1 %5284, float %5287, float %5289
  %5292 = select i1 %5285, float %5288, float %5290
  %5293 = fmul fast float %5291, %5282
  %5294 = fmul fast float %5292, %5283
  %5295 = call float @dx.op.unary.f32(i32 6, float %5293)  ; FAbs(value)
  %5296 = call float @dx.op.unary.f32(i32 6, float %5294)  ; FAbs(value)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  %5298 = call float @dx.op.binary.f32(i32 35, float %5295, float %5296)  ; FMax(a,b)
  %5299 = fsub fast float %5297, %5298
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5300, %5272
  br label %5302

; <label>:5302                                    ; preds = %5278, %5222
  %5303 = phi float [ %5301, %5278 ], [ 0.000000e+00, %5222 ]
  %5304 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5305 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5306 = fadd fast float %5305, %5304
  %5307 = fcmp fast ogt float %5306, 0.000000e+00
  %5308 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  br i1 %5307, label %5309, label %5332

; <label>:5309                                    ; preds = %5302
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5313 = fsub fast float %5256, %5311
  %5314 = fsub fast float %5257, %5312
  %5315 = fcmp fast olt float %5313, 0.000000e+00
  %5316 = fcmp fast olt float %5314, 0.000000e+00
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5322 = select i1 %5315, float %5318, float %5320
  %5323 = select i1 %5316, float %5319, float %5321
  %5324 = fmul fast float %5322, %5313
  %5325 = fmul fast float %5323, %5314
  %5326 = call float @dx.op.unary.f32(i32 6, float %5324)  ; FAbs(value)
  %5327 = call float @dx.op.unary.f32(i32 6, float %5325)  ; FAbs(value)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5326, float %5327)  ; FMax(a,b)
  %5329 = fsub fast float %5308, %5328
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fmul fast float %5330, %5272
  br label %5332

; <label>:5332                                    ; preds = %5309, %5302
  %5333 = phi float [ %5331, %5309 ], [ 0.000000e+00, %5302 ]
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5336 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5340 = fsub fast float %5241, %5338
  %5341 = fsub fast float %5245, %5339
  %5342 = fcmp fast olt float %5340, 0.000000e+00
  %5343 = fcmp fast olt float %5341, 0.000000e+00
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5348 = extractvalue %dx.types.CBufRet.f32 %5344, 3
  %5349 = select i1 %5342, float %5345, float %5347
  %5350 = select i1 %5343, float %5346, float %5348
  %5351 = fmul fast float %5349, %5340
  %5352 = fmul fast float %5350, %5341
  %5353 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5354 = call float @dx.op.unary.f32(i32 6, float %5352)  ; FAbs(value)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5353, float %5354)  ; FMax(a,b)
  %5356 = fsub fast float %5308, %5355
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = call float @dx.op.binary.f32(i32 36, float %5357, float %5336)  ; FMin(a,b)
  %5359 = fmul fast float %5358, %5272
  %5360 = fsub fast float %5333, %5359
  %5361 = fsub fast float %5303, %5333
  %5362 = fsub fast float %5361, %5359
  %5363 = call float @dx.op.binary.f32(i32 35, float %5333, float %5303)  ; FMax(a,b)
  %5364 = call float @dx.op.binary.f32(i32 35, float %5359, float %5363)  ; FMax(a,b)
  %5365 = fcmp fast olt float %5364, 1.000000e+00
  br i1 %5365, label %5366, label %5764, !dx.controlflow.hints !94

; <label>:5366                                    ; preds = %5332
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5369 = fcmp fast une float %5368, 0.000000e+00
  br i1 %5369, label %5370, label %5764, !dx.controlflow.hints !95

; <label>:5370                                    ; preds = %5366
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5385 = extractvalue %dx.types.CBufRet.f32 %5381, 3
  %5386 = fmul fast float %5372, %5218
  %5387 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5373, float %5386)  ; FMad(a,b,c)
  %5388 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5374, float %5387)  ; FMad(a,b,c)
  %5389 = fadd fast float %5388, %5375
  %5390 = fmul fast float %5377, %5218
  %5391 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5378, float %5390)  ; FMad(a,b,c)
  %5392 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5379, float %5391)  ; FMad(a,b,c)
  %5393 = fadd fast float %5392, %5380
  %5394 = fmul fast float %5382, %5218
  %5395 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5383, float %5394)  ; FMad(a,b,c)
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5384, float %5395)  ; FMad(a,b,c)
  %5397 = fadd fast float %5396, %5385
  %5398 = fcmp fast oge float %5389, 1.000000e+00
  %5399 = fcmp fast oge float %5393, 1.000000e+00
  %5400 = or i1 %5398, %5399
  %5401 = fcmp fast olt float %5389, 0.000000e+00
  %5402 = fcmp fast olt float %5393, 0.000000e+00
  %5403 = or i1 %5401, %5402
  %5404 = or i1 %5400, %5403
  br i1 %5404, label %5764, label %5405, !dx.controlflow.hints !96

; <label>:5405                                    ; preds = %5370
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.i32 %5410, 2
  %5412 = uitofp i32 %5411 to float
  %5413 = extractvalue %dx.types.CBufRet.i32 %5410, 3
  %5414 = uitofp i32 %5413 to float
  %5415 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5416 = fmul fast float %5415, 2.000000e+00
  %5417 = fsub fast float %5389, %5407
  %5418 = fsub fast float %5393, %5408
  %5419 = fmul fast float %5416, %5417
  %5420 = fmul fast float %5416, %5418
  %5421 = fdiv fast float 1.000000e+00, %5201
  %5422 = fmul fast float %5420, %5421
  %5423 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5424 = fmul fast float %5409, %5220
  %5425 = fmul fast float %5424, %5416
  %5426 = call float @dx.op.unary.f32(i32 6, float %5425)  ; FAbs(value)
  %5427 = call float @dx.op.unary.f32(i32 6, float %5419)  ; FAbs(value)
  %5428 = call float @dx.op.binary.f32(i32 35, float %5426, float %5423)  ; FMax(a,b)
  %5429 = call float @dx.op.binary.f32(i32 35, float %5427, float %5428)  ; FMax(a,b)
  %5430 = fmul fast float %5429, 2.000000e+00
  %5431 = call float @dx.op.unary.f32(i32 23, float %5430)  ; Log(value)
  %5432 = call float @dx.op.binary.f32(i32 35, float %5431, float %5412)  ; FMax(a,b)
  %5433 = call float @dx.op.unary.f32(i32 22, float %5432)  ; Frc(value)
  %5434 = fadd fast float %5433, 0xBFEA666660000000
  %5435 = fmul fast float %5434, 8.000000e+00
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = call float @dx.op.unary.f32(i32 27, float %5432)  ; Round_ni(value)
  %5438 = fadd fast float %5437, %5436
  %5439 = call float @dx.op.binary.f32(i32 36, float %5438, float %5414)  ; FMin(a,b)
  %5440 = call float @dx.op.unary.f32(i32 27, float %5439)  ; Round_ni(value)
  %5441 = fsub fast float -0.000000e+00, %5440
  %5442 = call float @dx.op.unary.f32(i32 21, float %5441)  ; Exp(value)
  %5443 = fmul fast float %5442, %5416
  %5444 = fmul fast float %5443, %5389
  %5445 = fmul fast float %5443, %5393
  %5446 = fmul fast float %5444, 2.500000e-01
  %5447 = fmul fast float %5445, 2.500000e-01
  %5448 = fadd fast float %5446, 5.000000e-01
  %5449 = fadd fast float %5447, 5.000000e-01
  %5450 = fsub fast float %5414, %5412
  %5451 = fptoui float %5450 to i32
  %5452 = add i32 %5451, 320
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5452)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5456 = fcmp fast une float %5439, %5414
  %5457 = fsub fast float %5389, %5454
  %5458 = fsub fast float %5393, %5455
  %5459 = call float @dx.op.unary.f32(i32 6, float %5457)  ; FAbs(value)
  %5460 = call float @dx.op.unary.f32(i32 6, float %5458)  ; FAbs(value)
  %5461 = fmul fast float %5459, %5443
  %5462 = fmul fast float %5460, %5443
  %5463 = fcmp fast olt float %5461, 1.000000e+00
  %5464 = fcmp fast olt float %5462, 1.000000e+00
  %5465 = and i1 %5463, %5464
  %5466 = or i1 %5456, %5465
  br i1 %5466, label %5467, label %5764, !dx.controlflow.hints !97

; <label>:5467                                    ; preds = %5405
  %5468 = fmul fast float %5445, 5.000000e-01
  %5469 = fmul fast float %5444, 5.000000e-01
  %5470 = fadd fast float %5468, 5.000000e-01
  %5471 = fadd fast float %5469, 5.000000e-01
  %5472 = sitofp i32 %5411 to float
  %5473 = fsub fast float %5439, %5472
  %5474 = call float @dx.op.unary.f32(i32 27, float %5473)  ; Round_ni(value)
  %5475 = call float @dx.op.unary.f32(i32 22, float %5439)  ; Frc(value)
  %5476 = call float @dx.op.unary.f32(i32 22, float %5471)  ; Frc(value)
  %5477 = call float @dx.op.unary.f32(i32 22, float %5470)  ; Frc(value)
  %5478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5476, float %5477, float %5474, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.ResRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.ResRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.ResRet.f32 %5478, 3
  %5483 = fcmp fast ogt float %5475, 0.000000e+00
  br i1 %5483, label %5484, label %5505, !dx.controlflow.hints !98

; <label>:5484                                    ; preds = %5467
  %5485 = fadd fast float %5474, 1.000000e+00
  %5486 = call float @dx.op.unary.f32(i32 22, float %5448)  ; Frc(value)
  %5487 = call float @dx.op.unary.f32(i32 22, float %5449)  ; Frc(value)
  %5488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5486, float %5487, float %5485, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.ResRet.f32 %5488, 3
  %5493 = fsub fast float %5489, %5479
  %5494 = fsub fast float %5490, %5480
  %5495 = fsub fast float %5491, %5481
  %5496 = fsub fast float %5492, %5482
  %5497 = fmul fast float %5493, %5475
  %5498 = fmul fast float %5494, %5475
  %5499 = fmul fast float %5495, %5475
  %5500 = fmul fast float %5496, %5475
  %5501 = fadd fast float %5497, %5479
  %5502 = fadd fast float %5498, %5480
  %5503 = fadd fast float %5499, %5481
  %5504 = fadd fast float %5500, %5482
  br label %5505

; <label>:5505                                    ; preds = %5484, %5467
  %5506 = phi float [ %5501, %5484 ], [ %5479, %5467 ]
  %5507 = phi float [ %5502, %5484 ], [ %5480, %5467 ]
  %5508 = phi float [ %5503, %5484 ], [ %5481, %5467 ]
  %5509 = phi float [ %5504, %5484 ], [ %5482, %5467 ]
  %5510 = fadd fast float %5506, -5.000000e-01
  %5511 = fadd fast float %5508, -5.000000e-01
  %5512 = fmul fast float %5510, 0xBFD5555560000000
  %5513 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5511, float %5512)  ; FMad(a,b,c)
  %5514 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5507, float 0.000000e+00)  ; FMad(a,b,c)
  %5515 = fadd fast float %5514, %5509
  %5516 = fmul fast float %5510, -7.500000e-01
  %5517 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5511, float %5516)  ; FMad(a,b,c)
  %5518 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5507, float 0.000000e+00)  ; FMad(a,b,c)
  %5519 = fadd fast float %5518, %5509
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.CBufRet.f32 %5522, 1
  %5525 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5526 = extractvalue %dx.types.CBufRet.f32 %5522, 3
  %5527 = fsub fast float %5523, %5513
  %5528 = fsub fast float %5524, %5515
  %5529 = fsub fast float %5525, %5517
  %5530 = fsub fast float %5526, %5519
  %5531 = fmul fast float %5527, %5521
  %5532 = fmul fast float %5528, %5521
  %5533 = fmul fast float %5529, %5521
  %5534 = fmul fast float %5530, %5521
  %5535 = fadd fast float %5531, %5513
  %5536 = fadd fast float %5532, %5515
  %5537 = fadd fast float %5533, %5517
  %5538 = fadd fast float %5534, %5519
  %5539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5540 = extractvalue %dx.types.ResRet.i32 %5539, 0
  %5541 = and i32 %5540, 536870911
  %5542 = uitofp i32 %5541 to float
  %5543 = fmul fast float %5542, %5389
  %5544 = fmul fast float %5542, %5393
  %5545 = fptoui float %5543 to i32
  %5546 = fptoui float %5544 to i32
  %5547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5548 = extractvalue %dx.types.ResRet.i32 %5547, 0
  %5549 = and i32 %5548, 31
  %5550 = lshr i32 %5545, %5549
  %5551 = lshr i32 %5546, %5549
  %5552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5553 = extractvalue %dx.types.ResRet.i32 %5552, 0
  %5554 = and i32 %5553, 31
  %5555 = shl i32 1, %5554
  %5556 = call i32 @dx.op.binary.i32(i32 40, i32 %5555, i32 4)  ; UMin(a,b)
  %5557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5558 = extractvalue %dx.types.ResRet.i32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.i32 %5557, 1
  %5560 = icmp eq i32 %5556, 0
  br i1 %5560, label %5602, label %5561

; <label>:5561                                    ; preds = %5505
  br label %5562

; <label>:5562                                    ; preds = %5590, %5561
  %5563 = phi i32 [ %5593, %5590 ], [ 0, %5561 ]
  %5564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.i32 %5564, 0
  %5566 = lshr i32 %5565, 16
  %5567 = and i32 %5566, 31
  %5568 = shl i32 %5551, %5567
  %5569 = add i32 %5568, %5550
  %5570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5571 = extractvalue %dx.types.ResRet.i32 %5570, 0
  %5572 = and i32 %5571, 31
  %5573 = shl i32 %5569, %5572
  %5574 = add i32 %5573, %5563
  %5575 = shl i32 %5574, 2
  %5576 = add i32 %5575, 32
  %5577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5576, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.i32 %5577, 0
  %5579 = icmp slt i32 %5578, 0
  %5580 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5563
  %5581 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5563
  %5582 = bitcast float* %5580 to i32*
  %5583 = bitcast float* %5581 to i32*
  br i1 %5579, label %5584, label %5590

; <label>:5584                                    ; preds = %5562
  %5585 = and i32 %5578, 1073741823
  %5586 = add nuw nsw i32 %5585, 20
  %5587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5586, i32 undef)  ; BufferLoad(srv,index,wot)
  %5588 = extractvalue %dx.types.ResRet.i32 %5587, 0
  %5589 = extractvalue %dx.types.ResRet.i32 %5587, 1
  br label %5590

; <label>:5590                                    ; preds = %5584, %5562
  %5591 = phi i32 [ %5588, %5584 ], [ %5558, %5562 ]
  %5592 = phi i32 [ %5589, %5584 ], [ %5559, %5562 ]
  store i32 %5591, i32* %5582, align 4
  store i32 %5592, i32* %5583, align 4
  %5593 = add nuw i32 %5563, 1
  %5594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.i32 %5594, 2
  %5596 = icmp eq i32 %5595, 0
  %5597 = icmp ugt i32 %5578, -1073741825
  %5598 = and i1 %5597, %5596
  %5599 = icmp ult i32 %5593, %5556
  %5600 = and i1 %5598, %5599
  br i1 %5600, label %5562, label %5601

; <label>:5601                                    ; preds = %5590
  br label %5602

; <label>:5602                                    ; preds = %5601, %5505
  %5603 = phi i32 [ 0, %5505 ], [ %5593, %5601 ]
  %5604 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5605 = fptoui float %5604 to i32
  %5606 = icmp eq i32 %5605, 0
  br i1 %5606, label %5658, label %5607

; <label>:5607                                    ; preds = %5602
  br label %5608

; <label>:5608                                    ; preds = %5653, %5607
  %5609 = phi i32 [ %5654, %5653 ], [ %5603, %5607 ]
  %5610 = phi i32 [ %5655, %5653 ], [ 0, %5607 ]
  %5611 = lshr i32 %5610, 2
  %5612 = and i32 %5610, 3
  %5613 = add nuw nsw i32 %5611, 83
  %5614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5613)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.i32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.i32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.i32 %5614, 2
  %5618 = extractvalue %dx.types.CBufRet.i32 %5614, 3
  %5619 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5615, i32* %5619, align 4
  %5620 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5616, i32* %5620, align 4
  %5621 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5617, i32* %5621, align 4
  %5622 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5618, i32* %5622, align 4
  %5623 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5612
  %5624 = load i32, i32* %5623, align 4, !tbaa !99, !noalias !103
  %5625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.i32 %5625, 0
  %5627 = lshr i32 %5626, 16
  %5628 = and i32 %5627, 31
  %5629 = shl i32 %5551, %5628
  %5630 = add i32 %5629, %5550
  %5631 = shl i32 %5630, 2
  %5632 = add i32 %5631, %5624
  %5633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.i32 %5633, 0
  %5635 = icmp eq i32 %5634, 0
  br i1 %5635, label %5653, label %5636

; <label>:5636                                    ; preds = %5608
  %5637 = icmp slt i32 %5634, 0
  %5638 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5609
  %5639 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5609
  %5640 = bitcast float* %5638 to i32*
  %5641 = bitcast float* %5639 to i32*
  br i1 %5637, label %5642, label %5649

; <label>:5642                                    ; preds = %5636
  %5643 = and i32 %5634, 1073741823
  %5644 = add i32 %5624, 20
  %5645 = add i32 %5644, %5643
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.i32 %5646, 1
  br label %5649

; <label>:5649                                    ; preds = %5642, %5636
  %5650 = phi i32 [ %5647, %5642 ], [ %5558, %5636 ]
  %5651 = phi i32 [ %5648, %5642 ], [ %5559, %5636 ]
  store i32 %5650, i32* %5640, align 4
  store i32 %5651, i32* %5641, align 4
  %5652 = add i32 %5609, 1
  br label %5653

; <label>:5653                                    ; preds = %5649, %5608
  %5654 = phi i32 [ %5609, %5608 ], [ %5652, %5649 ]
  %5655 = add nuw i32 %5610, 1
  %5656 = icmp eq i32 %5655, %5605
  br i1 %5656, label %5657, label %5608

; <label>:5657                                    ; preds = %5653
  br label %5658

; <label>:5658                                    ; preds = %5657, %5602
  %5659 = phi i32 [ %5603, %5602 ], [ %5654, %5657 ]
  %5660 = icmp eq i32 %5659, 1
  %5661 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %5662 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %5660, label %5663, label %5666

; <label>:5663                                    ; preds = %5658
  %5664 = load float, float* %5661, align 4
  %5665 = load float, float* %5662, align 4
  br label %5693

; <label>:5666                                    ; preds = %5658
  %5667 = load float, float* %5661, align 4
  %5668 = load float, float* %5662, align 4
  %5669 = fdiv fast float 1.000000e+00, %5668
  %5670 = fsub fast float %5667, %5669
  %5671 = icmp ugt i32 %5659, 1
  br i1 %5671, label %5672, label %5688

; <label>:5672                                    ; preds = %5666
  br label %5673

; <label>:5673                                    ; preds = %5673, %5672
  %5674 = phi float [ %5683, %5673 ], [ %5670, %5672 ]
  %5675 = phi float [ %5684, %5673 ], [ %5667, %5672 ]
  %5676 = phi i32 [ %5685, %5673 ], [ 1, %5672 ]
  %5677 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %5676
  %5678 = load float, float* %5677, align 4
  %5679 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5676
  %5680 = load float, float* %5679, align 4
  %5681 = fdiv fast float 1.000000e+00, %5680
  %5682 = fsub fast float %5678, %5681
  %5683 = call float @dx.op.binary.f32(i32 36, float %5674, float %5682)  ; FMin(a,b)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5675, float %5678)  ; FMax(a,b)
  %5685 = add nuw i32 %5676, 1
  %5686 = icmp eq i32 %5685, %5659
  br i1 %5686, label %5687, label %5673

; <label>:5687                                    ; preds = %5673
  br label %5688

; <label>:5688                                    ; preds = %5687, %5666
  %5689 = phi float [ %5670, %5666 ], [ %5683, %5687 ]
  %5690 = phi float [ %5667, %5666 ], [ %5684, %5687 ]
  %5691 = fsub fast float %5690, %5689
  %5692 = fdiv fast float 1.000000e+00, %5691
  br label %5693

; <label>:5693                                    ; preds = %5688, %5663
  %5694 = phi float [ %5664, %5663 ], [ %5690, %5688 ]
  %5695 = phi float [ %5665, %5663 ], [ %5692, %5688 ]
  %5696 = fadd fast float %5397, %5694
  %5697 = fmul fast float %5696, %5695
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = fmul fast float %5698, 2.000000e+00
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = fmul fast float %5535, %5535
  %5702 = fsub fast float %5536, %5701
  %5703 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5702)  ; FMax(a,b)
  %5704 = fdiv fast float 1.000000e+00, %5703
  %5705 = fmul fast float %5536, %5535
  %5706 = fsub fast float %5537, %5705
  %5707 = fsub fast float %5700, %5535
  %5708 = fmul fast float %5700, %5700
  %5709 = fsub fast float %5708, %5536
  %5710 = fmul fast float %5704, %5706
  %5711 = fmul fast float %5710, %5707
  %5712 = fsub fast float %5709, %5711
  %5713 = fmul fast float %5536, %5536
  %5714 = fsub fast float %5538, %5713
  %5715 = fmul fast float %5706, %5706
  %5716 = fmul fast float %5715, %5704
  %5717 = fsub fast float %5714, %5716
  %5718 = fdiv fast float %5712, %5717
  %5719 = fmul fast float %5718, %5706
  %5720 = fsub fast float %5707, %5719
  %5721 = fmul fast float %5720, %5704
  %5722 = fmul fast float %5721, %5535
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = fmul fast float %5718, %5536
  %5725 = fsub fast float %5723, %5724
  %5726 = fmul fast float %5721, %5721
  %5727 = fmul fast float %5718, 4.000000e+00
  %5728 = fmul fast float %5727, %5725
  %5729 = fsub fast float %5726, %5728
  %5730 = call float @dx.op.unary.f32(i32 24, float %5729)  ; Sqrt(value)
  %5731 = fcmp fast oge float %5721, 0.000000e+00
  %5732 = fsub fast float -0.000000e+00, %5730
  %5733 = select i1 %5731, float %5732, float %5730
  %5734 = fsub fast float %5733, %5721
  %5735 = fdiv fast float %5734, %5718
  %5736 = fdiv fast float %5725, %5734
  %5737 = fmul fast float %5735, 5.000000e-01
  %5738 = fmul fast float %5736, 2.000000e+00
  %5739 = select i1 %5731, float %5737, float %5738
  %5740 = select i1 %5731, float %5738, float %5737
  %5741 = call float @dx.op.binary.f32(i32 35, float %5739, float %5740)  ; FMax(a,b)
  %5742 = call float @dx.op.binary.f32(i32 36, float %5739, float %5740)  ; FMin(a,b)
  %5743 = fcmp fast ogt float %5700, %5741
  %5744 = fsub fast float %5700, %5742
  %5745 = fsub fast float %5700, %5741
  %5746 = fsub fast float %5741, %5742
  %5747 = select i1 %5743, float %5745, float %5746
  %5748 = fmul float %5744, %5747
  %5749 = select i1 %5743, float %5742, float %5700
  %5750 = fcmp fast ogt float %5700, %5742
  %5751 = fmul fast float %5749, %5741
  %5752 = fadd fast float %5749, %5741
  %5753 = fmul fast float %5752, %5535
  %5754 = fadd fast float %5751, %5536
  %5755 = fsub fast float %5754, %5753
  %5756 = fdiv fast float %5755, %5748
  %5757 = select i1 %5750, float %5756, float 0.000000e+00
  %5758 = fsub fast float 1.000000e+00, %5757
  %5759 = select i1 %5743, float %5758, float %5757
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5762 = fmul fast float %5761, %5760
  %5763 = fsub fast float 1.000000e+00, %5762
  br label %5764

; <label>:5764                                    ; preds = %5693, %5405, %5370, %5366, %5332
  %5765 = phi float [ 1.000000e+00, %5332 ], [ %5763, %5693 ], [ 1.000000e+00, %5370 ], [ 1.000000e+00, %5405 ], [ 1.000000e+00, %5366 ]
  %5766 = fcmp fast ogt float %5362, 0.000000e+00
  br i1 %5766, label %5767, label %5773, !dx.controlflow.hints !112

; <label>:5767                                    ; preds = %5764
  %5768 = fadd fast float %5275, %5249
  %5769 = call float @dx.op.binary.f32(i32 35, float %5768, float 0.000000e+00)  ; FMax(a,b)
  %5770 = fadd fast float %5769, 0x3F10000000000000
  %5771 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5264, float %5265, float undef, float undef, i32 0, i32 0, i32 undef, float %5770)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 0
  br label %5773

; <label>:5773                                    ; preds = %5767, %5764
  %5774 = phi float [ %5772, %5767 ], [ 1.000000e+00, %5764 ]
  %5775 = fcmp fast ogt float %5360, 0.000000e+00
  br i1 %5775, label %5776, label %5782, !dx.controlflow.hints !113

; <label>:5776                                    ; preds = %5773
  %5777 = fadd fast float %5305, %5249
  %5778 = call float @dx.op.binary.f32(i32 35, float %5777, float 0.000000e+00)  ; FMax(a,b)
  %5779 = fadd fast float %5778, 0x3F10000000000000
  %5780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5256, float %5257, float undef, float undef, i32 0, i32 0, i32 undef, float %5779)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5781 = extractvalue %dx.types.ResRet.f32 %5780, 0
  br label %5782

; <label>:5782                                    ; preds = %5776, %5773
  %5783 = phi float [ %5781, %5776 ], [ 1.000000e+00, %5773 ]
  %5784 = fcmp fast ogt float %5359, 0.000000e+00
  br i1 %5784, label %5785, label %5792, !dx.controlflow.hints !114

; <label>:5785                                    ; preds = %5782
  %5786 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5787 = fadd fast float %5786, %5249
  %5788 = call float @dx.op.binary.f32(i32 35, float %5787, float 0.000000e+00)  ; FMax(a,b)
  %5789 = fadd fast float %5788, 0x3F10000000000000
  %5790 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5241, float %5245, float undef, float undef, i32 0, i32 0, i32 undef, float %5789)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5791 = extractvalue %dx.types.ResRet.f32 %5790, 0
  br label %5792

; <label>:5792                                    ; preds = %5785, %5782
  %5793 = phi float [ %5791, %5785 ], [ 1.000000e+00, %5782 ]
  %5794 = fsub fast float %5774, %5765
  %5795 = fmul fast float %5794, %5303
  %5796 = fadd fast float %5795, %5765
  %5797 = fsub fast float %5783, %5796
  %5798 = fmul fast float %5797, %5333
  %5799 = fadd fast float %5798, %5796
  %5800 = fsub fast float %5793, %5799
  %5801 = fmul fast float %5800, %5359
  %5802 = fadd fast float %5801, %5799
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5805 = fcmp fast ogt float %5804, 0.000000e+00
  br i1 %5805, label %5806, label %5846, !dx.controlflow.hints !115

; <label>:5806                                    ; preds = %5792
  %5807 = fcmp fast ugt float %5804, 0.000000e+00
  br i1 %5807, label %5808, label %5843

; <label>:5808                                    ; preds = %5806
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5813 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5818 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5819 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.CBufRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.CBufRet.f32 %5821, 2
  %5825 = fadd fast float %5822, %5218
  %5826 = fadd fast float %5823, %5219
  %5827 = fadd fast float %5824, %5220
  %5828 = fmul fast float %5825, %5810
  %5829 = call float @dx.op.tertiary.f32(i32 46, float %5811, float %5826, float %5828)  ; FMad(a,b,c)
  %5830 = call float @dx.op.tertiary.f32(i32 46, float %5812, float %5827, float %5829)  ; FMad(a,b,c)
  %5831 = fadd fast float %5830, %5813
  %5832 = fmul fast float %5825, %5815
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5816, float %5826, float %5832)  ; FMad(a,b,c)
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5827, float %5833)  ; FMad(a,b,c)
  %5835 = fadd fast float %5834, %5818
  %5836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5831, float %5835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = fmul fast float %5837, %5820
  %5839 = fadd fast float %5838, %5819
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5841 = fmul fast float %5840, %5804
  %5842 = fsub fast float 1.000000e+00, %5841
  br label %5843

; <label>:5843                                    ; preds = %5808, %5806
  %5844 = phi float [ %5842, %5808 ], [ 1.000000e+00, %5806 ]
  %5845 = fmul fast float %5844, %5802
  br label %5846

; <label>:5846                                    ; preds = %5843, %5792, %5198
  %5847 = phi float [ 1.000000e+00, %5198 ], [ %5845, %5843 ], [ %5802, %5792 ]
  %5848 = call float @dx.op.binary.f32(i32 36, float %5847, float %5847)  ; FMin(a,b)
  %5849 = call float @dx.op.binary.f32(i32 36, float %5847, float %5848)  ; FMin(a,b)
  %5850 = fcmp fast ogt float %5849, 0.000000e+00
  br i1 %5850, label %5851, label %6011, !dx.controlflow.hints !116

; <label>:5851                                    ; preds = %5846
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5866 = extractvalue %dx.types.CBufRet.f32 %5862, 3
  %5867 = fmul fast float %5853, %5218
  %5868 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5854, float %5867)  ; FMad(a,b,c)
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5855, float %5868)  ; FMad(a,b,c)
  %5870 = fadd fast float %5869, %5856
  %5871 = fmul fast float %5858, %5218
  %5872 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5859, float %5871)  ; FMad(a,b,c)
  %5873 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5860, float %5872)  ; FMad(a,b,c)
  %5874 = fadd fast float %5873, %5861
  %5875 = fmul fast float %5863, %5218
  %5876 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5864, float %5875)  ; FMad(a,b,c)
  %5877 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5865, float %5876)  ; FMad(a,b,c)
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5882 = fmul fast float %5881, %5870
  %5883 = fmul fast float %5881, %5874
  %5884 = fadd fast float %5882, %5879
  %5885 = fadd fast float %5883, %5880
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = fsub fast float %5884, %5887
  %5890 = fsub fast float %5885, %5888
  %5891 = fcmp fast olt float %5889, 0.000000e+00
  %5892 = fcmp fast olt float %5890, 0.000000e+00
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %5897 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5898 = select i1 %5891, float %5894, float %5896
  %5899 = select i1 %5892, float %5895, float %5897
  %5900 = fmul fast float %5898, %5889
  %5901 = fmul fast float %5899, %5890
  %5902 = call float @dx.op.unary.f32(i32 6, float %5900)  ; FAbs(value)
  %5903 = call float @dx.op.unary.f32(i32 6, float %5901)  ; FAbs(value)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  %5905 = call float @dx.op.binary.f32(i32 35, float %5902, float %5903)  ; FMax(a,b)
  %5906 = fsub fast float %5904, %5905
  %5907 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  br i1 %5908, label %5909, label %5950, !dx.controlflow.hints !117

; <label>:5909                                    ; preds = %5851
  %5910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5884, float %5885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5911 = extractvalue %dx.types.ResRet.f32 %5910, 1
  %5912 = fcmp fast ogt float %5911, 0.000000e+00
  br i1 %5912, label %5913, label %5945

; <label>:5913                                    ; preds = %5909
  %5914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5884, float %5885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.ResRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.ResRet.f32 %5914, 2
  %5918 = extractvalue %dx.types.ResRet.f32 %5914, 3
  %5919 = fsub fast float 1.000000e+00, %5866
  %5920 = fsub fast float %5919, %5877
  %5921 = fmul fast float %5920, 0x400921FB60000000
  %5922 = fadd fast float %5921, 0x3FF921FB60000000
  %5923 = call float @dx.op.unary.f32(i32 13, float %5922)  ; Sin(value)
  %5924 = fadd fast float %5923, -1.000000e+00
  %5925 = fmul fast float %5924, 0x3FD45F3060000000
  %5926 = fmul fast float %5920, 0x401921FB60000000
  %5927 = fadd fast float %5926, 0x400921FB60000000
  %5928 = call float @dx.op.unary.f32(i32 13, float %5927)  ; Sin(value)
  %5929 = fadd fast float %5928, 0x3E7777A5C0000000
  %5930 = fmul fast float %5929, 0x3FC45F3060000000
  %5931 = fmul fast float %5920, 0x4022D97C80000000
  %5932 = fadd fast float %5931, 0x4012D97C80000000
  %5933 = call float @dx.op.unary.f32(i32 13, float %5932)  ; Sin(value)
  %5934 = fadd fast float %5933, 1.000000e+00
  %5935 = fmul fast float %5934, 0x3FBB2995E0000000
  %5936 = fmul fast float %5920, 0x402921FB60000000
  %5937 = fadd fast float %5936, 0x401921FB60000000
  %5938 = call float @dx.op.unary.f32(i32 13, float %5937)  ; Sin(value)
  %5939 = fadd fast float %5938, 0xBE8777A5C0000000
  %5940 = fmul fast float %5939, 0x3FB45F3060000000
  %5941 = call float @dx.op.dot4.f32(i32 56, float %5915, float %5916, float %5917, float %5918, float %5925, float %5930, float %5935, float %5940)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5942 = fmul fast float %5941, 0xBFF7154760000000
  %5943 = call float @dx.op.unary.f32(i32 21, float %5942)  ; Exp(value)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  br label %5945

; <label>:5945                                    ; preds = %5913, %5909
  %5946 = phi float [ %5944, %5913 ], [ 1.000000e+00, %5909 ]
  %5947 = fadd fast float %5946, -1.000000e+00
  %5948 = fmul fast float %5947, %5907
  %5949 = fadd fast float %5948, 1.000000e+00
  br label %5950

; <label>:5950                                    ; preds = %5945, %5851
  %5951 = phi float [ %5949, %5945 ], [ 1.000000e+00, %5851 ]
  %5952 = fmul fast float %5951, %5847
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = fadd fast float %5954, %160
  %5958 = fadd fast float %5955, %161
  %5959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5959, 1
  %5961 = fsub fast float -0.000000e+00, %5957
  %5962 = fsub fast float -0.000000e+00, %5958
  %5963 = fsub fast float %4847, %5956
  %5964 = fadd fast float %5963, %5960
  %5965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5961, float %5962, float %5964)  ; Dot3(ax,ay,az,bx,by,bz)
  %5966 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5199, float %5200, float %5201)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = fdiv fast float 1.000000e+00, %5966
  %5968 = fmul fast float %5967, %5965
  %5969 = fmul fast float %5199, %5968
  %5970 = fmul fast float %5200, %5968
  %5971 = fadd fast float %5969, %5957
  %5972 = fadd fast float %5970, %5958
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = fsub fast float %5971, %5974
  %5977 = fsub fast float %5972, %5975
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5981 = fmul fast float %5976, %5979
  %5982 = fmul fast float %5977, %5980
  %5983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.i32 %5983, 3
  %5985 = icmp eq i32 %5984, 0
  br i1 %5985, label %5991, label %5986

; <label>:5986                                    ; preds = %5950
  %5987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5981, float %5982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5988 = extractvalue %dx.types.ResRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.ResRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.ResRet.f32 %5987, 2
  br label %5996

; <label>:5991                                    ; preds = %5950
  %5992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5981, float %5982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5993 = extractvalue %dx.types.ResRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5992, 2
  br label %5996

; <label>:5996                                    ; preds = %5991, %5986
  %5997 = phi float [ %5988, %5986 ], [ %5993, %5991 ]
  %5998 = phi float [ %5989, %5986 ], [ %5994, %5991 ]
  %5999 = phi float [ %5990, %5986 ], [ %5995, %5991 ]
  %6000 = extractvalue %dx.types.CBufRet.f32 %5959, 2
  %6001 = fmul fast float %6000, %5997
  %6002 = extractvalue %dx.types.CBufRet.f32 %5959, 0
  %6003 = fsub fast float %5968, %6002
  %6004 = fsub fast float %6003, %6001
  %6005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6004)  ; FMax(a,b)
  %6006 = fmul fast float %6005, %5998
  %6007 = call float @dx.op.binary.f32(i32 36, float %5999, float %6006)  ; FMin(a,b)
  %6008 = fmul fast float %6007, 0xBFF7154760000000
  %6009 = call float @dx.op.unary.f32(i32 21, float %6008)  ; Exp(value)
  %6010 = fmul fast float %5952, %6009
  br label %6011

; <label>:6011                                    ; preds = %5996, %5846
  %6012 = phi float [ %6010, %5996 ], [ %5847, %5846 ]
  %6013 = call float @dx.op.binary.f32(i32 36, float %6012, float %6012)  ; FMin(a,b)
  %6014 = call float @dx.op.binary.f32(i32 36, float %6012, float %6013)  ; FMin(a,b)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  br i1 %6015, label %6016, label %6267, !dx.controlflow.hints !118

; <label>:6016                                    ; preds = %6011
  %6017 = fmul fast float %6012, %5210
  %6018 = fmul fast float %6012, %5211
  %6019 = fmul fast float %6012, %5212
  %6020 = fsub fast float %162, %4635
  %6021 = fcmp fast ogt float %6020, 0.000000e+00
  %6022 = fmul fast float %5199, 5.120000e+02
  %6023 = fmul fast float %5200, 5.120000e+02
  %6024 = fmul fast float %5201, 5.120000e+02
  %6025 = fadd fast float %6024, %162
  %6026 = fsub fast float %4635, %6025
  %6027 = fmul fast float %6026, 2.000000e+00
  %6028 = fadd fast float %6027, %6025
  %6029 = select i1 %6021, float %6028, float %6025
  %6030 = fsub fast float %6029, %162
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6030, float %6022, float %6023, float %6030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.unary.f32(i32 25, float %6031)  ; Rsqrt(value)
  %6033 = fmul fast float %6032, %6022
  %6034 = fmul fast float %6032, %6023
  %6035 = fmul fast float %6032, %6030
  %6036 = fsub fast float %4635, %162
  %6037 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6036)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6033, float %6034, float %6035)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = fdiv fast float 1.000000e+00, %6038
  %6040 = fmul fast float %6039, %6037
  %6041 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6020, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fcmp fast ogt float %6041, 0.000000e+00
  %6043 = fcmp fast olt float %6041, 0.000000e+00
  %6044 = zext i1 %6042 to i32
  %6045 = zext i1 %6043 to i32
  %6046 = sub nsw i32 %6044, %6045
  %6047 = sitofp i32 %6046 to float
  %6048 = fsub fast float %6029, %4635
  %6049 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6048, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = fcmp fast ogt float %6049, 0.000000e+00
  %6051 = fcmp fast olt float %6049, 0.000000e+00
  %6052 = zext i1 %6050 to i32
  %6053 = zext i1 %6051 to i32
  %6054 = sub nsw i32 %6052, %6053
  %6055 = sitofp i32 %6054 to float
  %6056 = fcmp fast une float %6047, %6055
  br i1 %6056, label %6057, label %6067

; <label>:6057                                    ; preds = %6016
  %6058 = fmul fast float %6040, %6035
  %6059 = fmul fast float %6040, %6034
  %6060 = fmul fast float %6040, %6033
  %6061 = fmul fast float %6060, %6060
  %6062 = fmul fast float %6059, %6059
  %6063 = fadd fast float %6061, %6062
  %6064 = fmul fast float %6058, %6058
  %6065 = fadd fast float %6063, %6064
  %6066 = call float @dx.op.unary.f32(i32 24, float %6065)  ; Sqrt(value)
  br label %6077

; <label>:6067                                    ; preds = %6016
  %6068 = icmp slt i32 %6046, 0
  br i1 %6068, label %6069, label %6077

; <label>:6069                                    ; preds = %6067
  %6070 = fsub fast float %162, %6029
  %6071 = fmul fast float %6022, %6022
  %6072 = fmul fast float %6023, %6023
  %6073 = fadd fast float %6071, %6072
  %6074 = fmul fast float %6070, %6070
  %6075 = fadd fast float %6073, %6074
  %6076 = call float @dx.op.unary.f32(i32 24, float %6075)  ; Sqrt(value)
  br label %6077

; <label>:6077                                    ; preds = %6069, %6067, %6057
  %6078 = phi float [ %6066, %6057 ], [ %6076, %6069 ], [ 0.000000e+00, %6067 ]
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = select i1 %6021, float -0.000000e+00, float %6079
  %6081 = fmul fast float %4636, 0x3FF7154760000000
  %6082 = fmul fast float %6081, %6080
  %6083 = fmul fast float %4637, 0x3FF7154760000000
  %6084 = fmul fast float %6083, %6080
  %6085 = fmul fast float %4638, 0x3FF7154760000000
  %6086 = fmul fast float %6085, %6080
  %6087 = call float @dx.op.unary.f32(i32 21, float %6082)  ; Exp(value)
  %6088 = call float @dx.op.unary.f32(i32 21, float %6084)  ; Exp(value)
  %6089 = call float @dx.op.unary.f32(i32 21, float %6086)  ; Exp(value)
  %6090 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6091 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6092 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6093 = fmul fast float %6017, %6090
  %6094 = fmul fast float %6018, %6091
  %6095 = fmul fast float %6019, %6092
  %6096 = fsub fast float %5199, %4835
  %6097 = fsub fast float %5200, %4834
  %6098 = fsub fast float %5201, %4833
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6096, float %6097, float %6098, float %6096, float %6097, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 25, float %6099)  ; Rsqrt(value)
  %6101 = fmul fast float %6100, %6096
  %6102 = fmul fast float %6100, %6097
  %6103 = fmul fast float %6100, %6098
  %6104 = call float @dx.op.dot3.f32(i32 55, float %5199, float %5200, float %5201, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4831, float %4830, float %6101, float %6102, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6107 = fmul fast float %6106, %6106
  %6108 = fmul fast float %6107, %4863
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = fmul fast float %6109, %6106
  %6111 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %6101, float %6102, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = fmul fast float %6111, %6111
  %6113 = call float @dx.op.unary.f32(i32 6, float %6104)  ; FAbs(value)
  %6114 = fsub fast float 1.000000e+00, %4845
  %6115 = call float @dx.op.binary.f32(i32 35, float %6114, float 0x3F847AE140000000)  ; FMax(a,b)
  %6116 = fmul fast float %6115, %6115
  %6117 = fmul fast float %6116, %6116
  %6118 = fsub fast float 1.000000e+00, %6117
  %6119 = fmul fast float %4850, %4850
  %6120 = fmul fast float %6119, %6118
  %6121 = fadd fast float %6120, %6117
  %6122 = bitcast float %6121 to i32
  %6123 = ashr i32 %6122, 1
  %6124 = add nsw i32 %6123, 532487669
  %6125 = bitcast i32 %6124 to float
  %6126 = fadd fast float %6125, %4850
  %6127 = fmul fast float %6117, %6112
  %6128 = fsub fast float 1.000000e+00, %6112
  %6129 = fadd fast float %6128, %6127
  %6130 = fmul fast float %6113, %6113
  %6131 = fmul fast float %6130, %6118
  %6132 = fadd fast float %6131, %6117
  %6133 = bitcast float %6132 to i32
  %6134 = ashr i32 %6133, 1
  %6135 = add nsw i32 %6134, 532487669
  %6136 = bitcast i32 %6135 to float
  %6137 = fadd fast float %6136, %6113
  %6138 = fmul fast float %6129, %6129
  %6139 = fmul fast float %6138, %6126
  %6140 = fmul fast float %6139, %6137
  %6141 = fdiv fast float 0x3FF0A00000000000, %6140
  %6142 = fmul fast float %6141, %6117
  %6143 = call float @dx.op.unary.f32(i32 6, float %6105)  ; FAbs(value)
  %6144 = fsub fast float 1.000000e+00, %6143
  %6145 = bitcast float %6144 to i32
  %6146 = sitofp i32 %6145 to float
  %6147 = fmul fast float %6146, 5.000000e+00
  %6148 = fadd fast float %6147, 0xC1EFBF8940000000
  %6149 = fptosi float %6148 to i32
  %6150 = bitcast i32 %6149 to float
  %6151 = fsub fast float 1.000000e+00, %4839
  %6152 = fsub fast float 1.000000e+00, %4840
  %6153 = fsub fast float 1.000000e+00, %4848
  %6154 = fmul fast float %6150, %6151
  %6155 = fmul fast float %6150, %6152
  %6156 = fmul fast float %6150, %6153
  %6157 = fadd fast float %6154, %4839
  %6158 = fadd fast float %6155, %4840
  %6159 = fadd fast float %6156, %4848
  br i1 %5110, label %6160, label %6183

; <label>:6160                                    ; preds = %6077
  %6161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4213, float %6143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  %6165 = fadd fast float %6162, -5.000000e-01
  %6166 = fadd fast float %6163, -5.000000e-01
  %6167 = fadd fast float %6164, -5.000000e-01
  %6168 = fmul fast float %4839, 4.000000e+00
  %6169 = fmul fast float %6168, %6151
  %6170 = fmul fast float %6169, %6165
  %6171 = fmul fast float %4840, 4.000000e+00
  %6172 = fmul fast float %6171, %6152
  %6173 = fmul fast float %6172, %6166
  %6174 = fmul fast float %4848, 4.000000e+00
  %6175 = fmul fast float %6174, %6153
  %6176 = fmul fast float %6175, %6167
  %6177 = fadd fast float %6170, %6157
  %6178 = fadd fast float %6173, %6158
  %6179 = fadd fast float %6176, %6159
  %6180 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  %6181 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6182 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  br label %6183

; <label>:6183                                    ; preds = %6160, %6077
  %6184 = phi float [ %6180, %6160 ], [ %6157, %6077 ]
  %6185 = phi float [ %6181, %6160 ], [ %6158, %6077 ]
  %6186 = phi float [ %6182, %6160 ], [ %6159, %6077 ]
  %6187 = fmul fast float %6104, 9.843750e-01
  %6188 = fadd fast float %6187, 7.812500e-03
  %6189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6188, float %5100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 2
  %6191 = extractvalue %dx.types.ResRet.f32 %6189, 3
  %6192 = fmul fast float %6190, %4839
  %6193 = fmul fast float %6190, %4840
  %6194 = fmul fast float %6190, %4848
  %6195 = fadd fast float %6192, %6191
  %6196 = fadd fast float %6193, %6191
  %6197 = fadd fast float %6194, %6191
  br i1 %5110, label %6198, label %6221

; <label>:6198                                    ; preds = %6183
  %6199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4213, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6200 = extractvalue %dx.types.ResRet.f32 %6199, 0
  %6201 = extractvalue %dx.types.ResRet.f32 %6199, 1
  %6202 = extractvalue %dx.types.ResRet.f32 %6199, 2
  %6203 = fadd fast float %6200, -5.000000e-01
  %6204 = fadd fast float %6201, -5.000000e-01
  %6205 = fadd fast float %6202, -5.000000e-01
  %6206 = fmul fast float %4839, 4.000000e+00
  %6207 = fmul fast float %6206, %6151
  %6208 = fmul fast float %6207, %6203
  %6209 = fmul fast float %4840, 4.000000e+00
  %6210 = fmul fast float %6209, %6152
  %6211 = fmul fast float %6210, %6204
  %6212 = fmul fast float %4848, 4.000000e+00
  %6213 = fmul fast float %6212, %6153
  %6214 = fmul fast float %6213, %6205
  %6215 = fadd fast float %6208, %6195
  %6216 = fadd fast float %6211, %6196
  %6217 = fadd fast float %6214, %6197
  %6218 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6219 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6220 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  br label %6221

; <label>:6221                                    ; preds = %6198, %6183
  %6222 = phi float [ %6218, %6198 ], [ %6195, %6183 ]
  %6223 = phi float [ %6219, %6198 ], [ %6196, %6183 ]
  %6224 = phi float [ %6220, %6198 ], [ %6197, %6183 ]
  %6225 = call float @dx.op.binary.f32(i32 35, float %6223, float %6224)  ; FMax(a,b)
  %6226 = call float @dx.op.binary.f32(i32 35, float %6222, float %6225)  ; FMax(a,b)
  %6227 = fsub fast float 1.000000e+00, %6226
  %6228 = fmul fast float %6184, %6142
  %6229 = fmul fast float %6185, %6142
  %6230 = fmul fast float %6186, %6142
  %6231 = fsub fast float 1.000000e+00, %6105
  %6232 = bitcast float %6231 to i32
  %6233 = sitofp i32 %6232 to float
  %6234 = fmul fast float %6233, 5.000000e+00
  %6235 = fadd fast float %6234, 0xC1EFBF8940000000
  %6236 = fptosi float %6235 to i32
  %6237 = bitcast i32 %6236 to float
  %6238 = fmul fast float %6237, %4212
  %6239 = fmul fast float %6227, %6238
  %6240 = fmul fast float %6239, %5160
  %6241 = fmul fast float %6239, %5161
  %6242 = fmul fast float %6239, %5162
  %6243 = fadd fast float %6240, %6228
  %6244 = fadd fast float %6241, %6229
  %6245 = fadd fast float %6242, %6230
  %6246 = fmul fast float %6110, %6093
  %6247 = fmul fast float %6246, %6227
  %6248 = fmul fast float %6110, %6094
  %6249 = fmul fast float %6248, %6227
  %6250 = fmul fast float %6110, %6095
  %6251 = fmul fast float %6250, %6227
  %6252 = fmul fast float %6246, %6243
  %6253 = fmul fast float %6248, %6244
  %6254 = fmul fast float %6250, %6245
  %6255 = fadd fast float %6247, %5144
  %6256 = fmul fast float %6255, %4233
  %6257 = fadd fast float %6249, %5145
  %6258 = fmul fast float %6257, %4233
  %6259 = fadd fast float %6251, %5146
  %6260 = fmul fast float %6259, %4233
  %6261 = fadd fast float %6252, %5187
  %6262 = fmul fast float %6261, %4233
  %6263 = fadd fast float %6253, %5190
  %6264 = fmul fast float %6263, %4233
  %6265 = fadd fast float %6254, %5193
  %6266 = fmul fast float %6265, %4233
  br label %6267

; <label>:6267                                    ; preds = %6221, %6011, %5137
  %6268 = phi float [ %5188, %5137 ], [ %5188, %6011 ], [ %6262, %6221 ]
  %6269 = phi float [ %5191, %5137 ], [ %5191, %6011 ], [ %6264, %6221 ]
  %6270 = phi float [ %5194, %5137 ], [ %5194, %6011 ], [ %6266, %6221 ]
  %6271 = phi float [ %5183, %5137 ], [ %5183, %6011 ], [ %6256, %6221 ]
  %6272 = phi float [ %5184, %5137 ], [ %5184, %6011 ], [ %6258, %6221 ]
  %6273 = phi float [ %5185, %5137 ], [ %5185, %6011 ], [ %6260, %6221 ]
  %6274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.i32 %6274, 0
  %6276 = icmp eq i32 %6275, 0
  br i1 %6276, label %6897, label %6277

; <label>:6277                                    ; preds = %6267
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 2
  %6280 = extractvalue %dx.types.CBufRet.f32 %6278, 3
  %6281 = fmul fast float %6279, %101
  %6282 = fmul fast float %6280, %102
  %6283 = fptoui float %6281 to i32
  %6284 = fptoui float %6282 to i32
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6289 = fadd fast float %92, -4.000000e+00
  %6290 = call float @dx.op.binary.f32(i32 35, float %6289, float 0.000000e+00)  ; FMax(a,b)
  %6291 = fadd fast float %6290, %6286
  %6292 = fmul fast float %6291, %6287
  %6293 = call float @dx.op.unary.f32(i32 23, float %6292)  ; Log(value)
  %6294 = fmul fast float %6293, %6288
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6297 = fmul fast float %6294, %6296
  %6298 = call float @dx.op.unary.f32(i32 7, float %6297)  ; Saturate(value)
  %6299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.i32 %6299, 1
  %6301 = add i32 %6300, -1
  %6302 = uitofp i32 %6300 to float
  %6303 = fmul fast float %6302, %6298
  %6304 = fptoui float %6303 to i32
  %6305 = call i32 @dx.op.binary.i32(i32 40, i32 %6304, i32 %6301)  ; UMin(a,b)
  %6306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.i32 %6306, 2
  %6308 = extractvalue %dx.types.CBufRet.i32 %6306, 3
  %6309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6284, i32 %6307, i32 %6283)  ; UMad(a,b,c)
  %6310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6305, i32 %6308, i32 %6309)  ; UMad(a,b,c)
  %6311 = add nsw i32 %6275, -1
  %6312 = call i32 @dx.op.binary.i32(i32 37, i32 %6311, i32 0)  ; IMax(a,b)
  %6313 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %6314 = fptoui float %6313 to i32
  %6315 = lshr i32 %6314, 5
  %6316 = call i32 @dx.op.binary.i32(i32 40, i32 %6315, i32 8191)  ; UMin(a,b)
  %6317 = shl i32 %6316, 2
  %6318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6317, i32 undef)  ; BufferLoad(srv,index,wot)
  %6319 = extractvalue %dx.types.ResRet.i32 %6318, 0
  %6320 = lshr i32 %6319, 16
  %6321 = and i32 %6319, 65535
  %6322 = lshr i32 %6319, 21
  %6323 = lshr i32 %6321, 5
  %6324 = call i32 @dx.op.binary.i32(i32 40, i32 %6323, i32 %6312)  ; UMin(a,b)
  %6325 = icmp ugt i32 %6322, %6324
  br i1 %6325, label %6897, label %6326

; <label>:6326                                    ; preds = %6277
  br label %6327

; <label>:6327                                    ; preds = %6887, %6326
  %6328 = phi i32 [ %6894, %6887 ], [ %6322, %6326 ]
  %6329 = phi float [ %6888, %6887 ], [ %6268, %6326 ]
  %6330 = phi float [ %6889, %6887 ], [ %6269, %6326 ]
  %6331 = phi float [ %6890, %6887 ], [ %6270, %6326 ]
  %6332 = phi float [ %6891, %6887 ], [ %6271, %6326 ]
  %6333 = phi float [ %6892, %6887 ], [ %6272, %6326 ]
  %6334 = phi float [ %6893, %6887 ], [ %6273, %6326 ]
  %6335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.i32 %6335, 0
  %6337 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6310, i32 %6336, i32 %6328)  ; UMad(a,b,c)
  %6338 = shl i32 %6337, 2
  %6339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6338, i32 undef)  ; BufferLoad(srv,index,wot)
  %6340 = extractvalue %dx.types.ResRet.i32 %6339, 0
  %6341 = shl i32 %6328, 5
  %6342 = sub nsw i32 %6320, %6341
  %6343 = call i32 @dx.op.binary.i32(i32 37, i32 %6342, i32 0)  ; IMax(a,b)
  %6344 = call i32 @dx.op.binary.i32(i32 38, i32 %6343, i32 31)  ; IMin(a,b)
  %6345 = sub nsw i32 1, %6320
  %6346 = add nsw i32 %6345, %6321
  %6347 = call i32 @dx.op.binary.i32(i32 37, i32 %6346, i32 0)  ; IMax(a,b)
  %6348 = call i32 @dx.op.binary.i32(i32 38, i32 %6347, i32 32)  ; IMin(a,b)
  %6349 = and i32 %6348, 31
  %6350 = shl i32 -1, %6349
  %6351 = xor i32 %6350, -1
  %6352 = and i32 %6344, 31
  %6353 = shl i32 %6351, %6352
  %6354 = icmp eq i32 %6348, 32
  %6355 = select i1 %6354, i32 -1, i32 %6353
  %6356 = and i32 %6355, %6340
  %6357 = icmp eq i32 %6356, 0
  br i1 %6357, label %6887, label %6358

; <label>:6358                                    ; preds = %6327
  br label %6359

; <label>:6359                                    ; preds = %6493, %6358
  %6360 = phi i32 [ %6371, %6493 ], [ %6356, %6358 ]
  %6361 = phi float [ %6494, %6493 ], [ %6329, %6358 ]
  %6362 = phi float [ %6495, %6493 ], [ %6330, %6358 ]
  %6363 = phi float [ %6496, %6493 ], [ %6331, %6358 ]
  %6364 = phi float [ %6497, %6493 ], [ %6332, %6358 ]
  %6365 = phi float [ %6498, %6493 ], [ %6333, %6358 ]
  %6366 = phi float [ %6499, %6493 ], [ %6334, %6358 ]
  %6367 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6360)  ; FirstbitLo(value)
  %6368 = add i32 %6367, %6341
  %6369 = and i32 %6367, 31
  %6370 = shl i32 1, %6369
  %6371 = xor i32 %6370, %6360
  %6372 = mul i32 %6368, 112
  %6373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6372, i32 undef)  ; BufferLoad(srv,index,wot)
  %6374 = extractvalue %dx.types.ResRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.ResRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.ResRet.f32 %6373, 2
  %6377 = or i32 %6372, 12
  %6378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6377, i32 undef)  ; BufferLoad(srv,index,wot)
  %6379 = extractvalue %dx.types.ResRet.f32 %6378, 0
  %6380 = add i32 %6372, 16
  %6381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6380, i32 undef)  ; BufferLoad(srv,index,wot)
  %6382 = extractvalue %dx.types.ResRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.ResRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.ResRet.f32 %6381, 2
  %6385 = add i32 %6372, 28
  %6386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6385, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.i32 %6386, 0
  %6388 = add i32 %6372, 44
  %6389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6388, i32 undef)  ; BufferLoad(srv,index,wot)
  %6390 = extractvalue %dx.types.ResRet.f32 %6389, 0
  %6391 = add i32 %6372, 48
  %6392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6391, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = extractvalue %dx.types.ResRet.f32 %6392, 3
  %6397 = add i32 %6372, 64
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.ResRet.f32 %6398, 3
  %6403 = add i32 %6372, 80
  %6404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6403, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.f32 %6404, 1
  %6406 = extractvalue %dx.types.ResRet.f32 %6404, 2
  %6407 = add i32 %6372, 92
  %6408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6407, i32 undef)  ; BufferLoad(srv,index,wot)
  %6409 = extractvalue %dx.types.ResRet.i32 %6408, 0
  %6410 = call float @dx.op.dot3.f32(i32 55, float %6374, float %6375, float %6376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6411 = select i1 %222, float %6405, float %6374
  %6412 = select i1 %222, float %6410, float %6375
  %6413 = select i1 %222, float %6406, float %6376
  %6414 = and i32 %6409, 65535
  %6415 = uitofp i32 %6414 to float
  %6416 = lshr i32 %6409, 16
  %6417 = uitofp i32 %6416 to float
  %6418 = and i32 %6387, 65535
  %6419 = and i32 %6387, 50331648
  %6420 = icmp eq i32 %6419, 33554432
  %6421 = fsub fast float %6393, %160
  %6422 = fsub fast float %6394, %161
  %6423 = fsub fast float %6395, %162
  %6424 = call float @dx.op.dot3.f32(i32 55, float %6421, float %6422, float %6423, float %6421, float %6422, float %6423)  ; Dot3(ax,ay,az,bx,by,bz)
  %6425 = call float @dx.op.unary.f32(i32 24, float %6424)  ; Sqrt(value)
  %6426 = fdiv fast float 1.000000e+00, %6425
  %6427 = fmul fast float %6426, %6421
  %6428 = fmul fast float %6426, %6422
  %6429 = fmul fast float %6426, %6423
  %6430 = fadd fast float %6425, %6379
  %6431 = fdiv fast float 1.000000e+00, %6430
  %6432 = fmul float %6390, %6431
  %6433 = fmul float %6432, %6432
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  br i1 %6420, label %6435, label %6456

; <label>:6435                                    ; preds = %6359
  %6436 = fmul fast float %6401, %6382
  %6437 = fmul fast float %6401, %6383
  %6438 = fmul fast float %6401, %6384
  %6439 = fadd fast float %6421, %6436
  %6440 = fadd fast float %6422, %6437
  %6441 = fadd fast float %6423, %6438
  %6442 = call float @dx.op.dot3.f32(i32 55, float %6439, float %6440, float %6441, float %6439, float %6440, float %6441)  ; Dot3(ax,ay,az,bx,by,bz)
  %6443 = call float @dx.op.unary.f32(i32 25, float %6442)  ; Rsqrt(value)
  %6444 = fmul fast float %6443, %6439
  %6445 = fmul fast float %6443, %6440
  %6446 = fmul fast float %6443, %6441
  %6447 = fsub fast float %160, %6393
  %6448 = fsub fast float %161, %6394
  %6449 = fsub fast float %162, %6395
  %6450 = fsub fast float -0.000000e+00, %6447
  %6451 = fsub fast float -0.000000e+00, %6448
  %6452 = fsub fast float -0.000000e+00, %6449
  %6453 = call float @dx.op.dot3.f32(i32 55, float %6450, float %6451, float %6452, float %6382, float %6383, float %6384)  ; Dot3(ax,ay,az,bx,by,bz)
  %6454 = fcmp fast ogt float %6453, 0.000000e+00
  %6455 = uitofp i1 %6454 to float
  br label %6456

; <label>:6456                                    ; preds = %6435, %6359
  %6457 = phi float [ %6455, %6435 ], [ 1.000000e+00, %6359 ]
  %6458 = phi float [ %6444, %6435 ], [ %6427, %6359 ]
  %6459 = phi float [ %6445, %6435 ], [ %6428, %6359 ]
  %6460 = phi float [ %6446, %6435 ], [ %6429, %6359 ]
  %6461 = call float @dx.op.dot3.f32(i32 55, float %6382, float %6383, float %6384, float %6458, float %6459, float %6460)  ; Dot3(ax,ay,az,bx,by,bz)
  %6462 = fmul fast float %6461, %6461
  %6463 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6464 = fsub fast float 1.000000e+00, %6463
  %6465 = fmul fast float %6464, 5.000000e-01
  %6466 = fcmp fast ogt float %6461, 0.000000e+00
  %6467 = fsub fast float 1.000000e+00, %6465
  %6468 = select i1 %6466, float %6465, float %6467
  %6469 = fmul fast float %6468, %6417
  %6470 = fadd fast float %6469, %6415
  %6471 = fmul fast float %6470, 0x3EF0001000000000
  %6472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6471, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = fmul fast float %6461, %6399
  %6475 = fadd fast float %6474, %6400
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = select i1 %6420, float 1.000000e+00, float %6476
  %6478 = select i1 %6420, float %6476, float 1.000000e+00
  %6479 = fmul fast float %6425, %6396
  %6480 = fsub fast float 1.000000e+00, %6479
  %6481 = fmul fast float %6480, %6402
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6483 = fmul fast float %6482, %6478
  %6484 = fmul fast float %6483, 2.000000e+00
  %6485 = fsub fast float 3.000000e+00, %6484
  %6486 = fmul fast float %6473, %6457
  %6487 = fmul fast float %6483, %6483
  %6488 = fmul fast float %6487, %6486
  %6489 = fmul fast float %6488, %6485
  %6490 = call float @dx.op.binary.f32(i32 36, float %6489, float %6489)  ; FMin(a,b)
  %6491 = call float @dx.op.binary.f32(i32 36, float %6489, float %6490)  ; FMin(a,b)
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  br i1 %6492, label %6501, label %6493, !dx.controlflow.hints !119

; <label>:6493                                    ; preds = %6843, %6601, %6456
  %6494 = phi float [ %6361, %6601 ], [ %6361, %6456 ], [ %6883, %6843 ]
  %6495 = phi float [ %6362, %6601 ], [ %6362, %6456 ], [ %6884, %6843 ]
  %6496 = phi float [ %6363, %6601 ], [ %6363, %6456 ], [ %6885, %6843 ]
  %6497 = phi float [ %6364, %6601 ], [ %6364, %6456 ], [ %6877, %6843 ]
  %6498 = phi float [ %6365, %6601 ], [ %6365, %6456 ], [ %6878, %6843 ]
  %6499 = phi float [ %6366, %6601 ], [ %6366, %6456 ], [ %6879, %6843 ]
  %6500 = icmp eq i32 %6360, %6370
  br i1 %6500, label %6886, label %6359

; <label>:6501                                    ; preds = %6456
  %6502 = icmp eq i32 %6418, 255
  br i1 %6502, label %6601, label %6503, !dx.controlflow.hints !120

; <label>:6503                                    ; preds = %6501
  %6504 = mul nuw nsw i32 %6418, 176
  %6505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.ResRet.f32 %6505, 2
  %6509 = extractvalue %dx.types.ResRet.f32 %6505, 3
  %6510 = add nuw nsw i32 %6504, 16
  %6511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.f32 %6511, 1
  %6514 = add nuw nsw i32 %6504, 32
  %6515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6514, i32 undef)  ; BufferLoad(srv,index,wot)
  %6516 = extractvalue %dx.types.ResRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.ResRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.ResRet.f32 %6515, 2
  %6519 = add nuw nsw i32 %6504, 48
  %6520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6519, i32 undef)  ; BufferLoad(srv,index,wot)
  %6521 = extractvalue %dx.types.ResRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.ResRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.ResRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.ResRet.f32 %6520, 3
  %6525 = add nuw nsw i32 %6504, 64
  %6526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6525, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.ResRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.ResRet.f32 %6526, 3
  %6531 = add nuw nsw i32 %6504, 80
  %6532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.ResRet.f32 %6532, 3
  %6537 = add nuw nsw i32 %6504, 96
  %6538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6537, i32 undef)  ; BufferLoad(srv,index,wot)
  %6539 = extractvalue %dx.types.ResRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.ResRet.f32 %6538, 1
  %6541 = extractvalue %dx.types.ResRet.f32 %6538, 2
  %6542 = extractvalue %dx.types.ResRet.f32 %6538, 3
  %6543 = bitcast float %6513 to i32
  %6544 = fmul fast float %6518, %110
  %6545 = fmul fast float %6518, %112
  %6546 = fmul fast float %6518, %114
  %6547 = fadd fast float %6544, %160
  %6548 = fadd fast float %6545, %161
  %6549 = fadd fast float %6546, %162
  %6550 = fmul fast float %6547, %6521
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6527, float %6550)  ; FMad(a,b,c)
  %6552 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6533, float %6551)  ; FMad(a,b,c)
  %6553 = fadd fast float %6552, %6539
  %6554 = fmul fast float %6547, %6522
  %6555 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6528, float %6554)  ; FMad(a,b,c)
  %6556 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6534, float %6555)  ; FMad(a,b,c)
  %6557 = fadd fast float %6556, %6540
  %6558 = fmul fast float %6547, %6523
  %6559 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6529, float %6558)  ; FMad(a,b,c)
  %6560 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6535, float %6559)  ; FMad(a,b,c)
  %6561 = fadd fast float %6560, %6541
  %6562 = fmul fast float %6547, %6524
  %6563 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6530, float %6562)  ; FMad(a,b,c)
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6536, float %6563)  ; FMad(a,b,c)
  %6565 = fadd fast float %6564, %6542
  %6566 = fdiv fast float %6553, %6565
  %6567 = fdiv fast float %6557, %6565
  %6568 = fdiv fast float %6561, %6565
  %6569 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6568)  ; FMax(a,b)
  %6570 = fmul fast float %233, 0x401921FB60000000
  %6571 = call float @dx.op.unary.f32(i32 13, float %6570)  ; Sin(value)
  %6572 = call float @dx.op.unary.f32(i32 12, float %6570)  ; Cos(value)
  %6573 = fsub fast float -0.000000e+00, %6571
  %6574 = fmul fast float %6508, 5.000000e-01
  %6575 = call float @dx.op.dot2.f32(i32 54, float %233, float %233, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6576 = call float @dx.op.unary.f32(i32 22, float %6575)  ; Frc(value)
  %6577 = fmul fast float %6576, 0x404A7DD040000000
  %6578 = call float @dx.op.unary.f32(i32 22, float %6577)  ; Frc(value)
  %6579 = fmul fast float %6578, %6517
  %6580 = fadd fast float %6579, %6574
  %6581 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6573, float 0.000000e+00)  ; FMad(a,b,c)
  %6582 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6572, float 0.000000e+00)  ; FMad(a,b,c)
  %6583 = fadd fast float %6581, %6566
  %6584 = fadd fast float %6582, %6567
  %6585 = fmul fast float %6583, %6512
  %6586 = fmul fast float %6584, %6512
  %6587 = call float @dx.op.binary.f32(i32 35, float %6585, float %6508)  ; FMax(a,b)
  %6588 = call float @dx.op.binary.f32(i32 35, float %6586, float %6508)  ; FMax(a,b)
  %6589 = call float @dx.op.binary.f32(i32 36, float %6587, float %6509)  ; FMin(a,b)
  %6590 = call float @dx.op.binary.f32(i32 36, float %6588, float %6509)  ; FMin(a,b)
  %6591 = fadd fast float %6589, %6506
  %6592 = fadd fast float %6590, %6507
  %6593 = uitofp i32 %6543 to float
  %6594 = fadd fast float %6569, %6516
  %6595 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6591, float %6592, float %6593, float undef, i32 0, i32 0, i32 undef, float %6594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = fadd fast float %6596, -1.000000e+00
  %6598 = fmul fast float %6597, %6477
  %6599 = fadd fast float %6598, 1.000000e+00
  %6600 = fmul fast float %6599, %6489
  br label %6601

; <label>:6601                                    ; preds = %6503, %6501
  %6602 = phi float [ %6600, %6503 ], [ %6489, %6501 ]
  %6603 = call float @dx.op.binary.f32(i32 36, float %6602, float %6602)  ; FMin(a,b)
  %6604 = call float @dx.op.binary.f32(i32 36, float %6602, float %6603)  ; FMin(a,b)
  %6605 = fcmp fast ogt float %6604, 0.000000e+00
  br i1 %6605, label %6606, label %6493, !dx.controlflow.hints !121

; <label>:6606                                    ; preds = %6601
  %6607 = fmul fast float %6602, %6411
  %6608 = fmul fast float %6602, %6412
  %6609 = fmul fast float %6602, %6413
  %6610 = fsub fast float %6395, %4635
  %6611 = fcmp fast ogt float %6610, 0.000000e+00
  %6612 = fsub fast float %162, %4635
  %6613 = fcmp fast ogt float %6612, 0.000000e+00
  %6614 = xor i1 %6613, %6611
  %6615 = fsub fast float %4635, %6395
  %6616 = fmul fast float %6615, 2.000000e+00
  %6617 = fadd fast float %6616, %6395
  %6618 = select i1 %6614, float %6395, float %6617
  %6619 = fsub fast float %6618, %162
  %6620 = call float @dx.op.dot3.f32(i32 55, float %6421, float %6422, float %6619, float %6421, float %6422, float %6619)  ; Dot3(ax,ay,az,bx,by,bz)
  %6621 = call float @dx.op.unary.f32(i32 25, float %6620)  ; Rsqrt(value)
  %6622 = fmul fast float %6621, %6421
  %6623 = fmul fast float %6621, %6422
  %6624 = fmul fast float %6621, %6619
  %6625 = fsub fast float %4635, %162
  %6626 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6625)  ; Dot3(ax,ay,az,bx,by,bz)
  %6627 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6628 = fdiv fast float 1.000000e+00, %6627
  %6629 = fmul fast float %6628, %6626
  %6630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6612, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6631 = fcmp fast ogt float %6630, 0.000000e+00
  %6632 = fcmp fast olt float %6630, 0.000000e+00
  %6633 = zext i1 %6631 to i32
  %6634 = zext i1 %6632 to i32
  %6635 = sub nsw i32 %6633, %6634
  %6636 = sitofp i32 %6635 to float
  %6637 = fsub fast float %6618, %4635
  %6638 = call float @dx.op.dot3.f32(i32 55, float %6421, float %6422, float %6637, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6639 = fcmp fast ogt float %6638, 0.000000e+00
  %6640 = fcmp fast olt float %6638, 0.000000e+00
  %6641 = zext i1 %6639 to i32
  %6642 = zext i1 %6640 to i32
  %6643 = sub nsw i32 %6641, %6642
  %6644 = sitofp i32 %6643 to float
  %6645 = fcmp fast une float %6636, %6644
  br i1 %6645, label %6646, label %6656

; <label>:6646                                    ; preds = %6606
  %6647 = fmul fast float %6629, %6624
  %6648 = fmul fast float %6629, %6623
  %6649 = fmul fast float %6629, %6622
  %6650 = fmul fast float %6649, %6649
  %6651 = fmul fast float %6648, %6648
  %6652 = fadd fast float %6650, %6651
  %6653 = fmul fast float %6647, %6647
  %6654 = fadd fast float %6652, %6653
  %6655 = call float @dx.op.unary.f32(i32 24, float %6654)  ; Sqrt(value)
  br label %6668

; <label>:6656                                    ; preds = %6606
  %6657 = icmp slt i32 %6635, 0
  br i1 %6657, label %6658, label %6668

; <label>:6658                                    ; preds = %6656
  %6659 = fsub fast float %160, %6393
  %6660 = fsub fast float %161, %6394
  %6661 = fsub fast float %162, %6618
  %6662 = fmul fast float %6659, %6659
  %6663 = fmul fast float %6660, %6660
  %6664 = fadd fast float %6662, %6663
  %6665 = fmul fast float %6661, %6661
  %6666 = fadd fast float %6664, %6665
  %6667 = call float @dx.op.unary.f32(i32 24, float %6666)  ; Sqrt(value)
  br label %6668

; <label>:6668                                    ; preds = %6658, %6656, %6646
  %6669 = phi float [ %6655, %6646 ], [ %6667, %6658 ], [ 0.000000e+00, %6656 ]
  %6670 = and i1 %6613, %6611
  %6671 = fsub fast float -0.000000e+00, %6669
  %6672 = select i1 %6670, float -0.000000e+00, float %6671
  %6673 = fmul fast float %4636, 0x3FF7154760000000
  %6674 = fmul fast float %6673, %6672
  %6675 = fmul fast float %4637, 0x3FF7154760000000
  %6676 = fmul fast float %6675, %6672
  %6677 = fmul fast float %4638, 0x3FF7154760000000
  %6678 = fmul fast float %6677, %6672
  %6679 = call float @dx.op.unary.f32(i32 21, float %6674)  ; Exp(value)
  %6680 = call float @dx.op.unary.f32(i32 21, float %6676)  ; Exp(value)
  %6681 = call float @dx.op.unary.f32(i32 21, float %6678)  ; Exp(value)
  %6682 = call float @dx.op.unary.f32(i32 7, float %6679)  ; Saturate(value)
  %6683 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6684 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6685 = fmul fast float %6607, %6682
  %6686 = fmul fast float %6608, %6683
  %6687 = fmul fast float %6609, %6684
  %6688 = fsub fast float %6427, %4835
  %6689 = fsub fast float %6428, %4834
  %6690 = fsub fast float %6429, %4833
  %6691 = call float @dx.op.dot3.f32(i32 55, float %6688, float %6689, float %6690, float %6688, float %6689, float %6690)  ; Dot3(ax,ay,az,bx,by,bz)
  %6692 = call float @dx.op.unary.f32(i32 25, float %6691)  ; Rsqrt(value)
  %6693 = fmul fast float %6692, %6688
  %6694 = fmul fast float %6692, %6689
  %6695 = fmul fast float %6692, %6690
  %6696 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %6697 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4831, float %4830, float %6693, float %6694, float %6695)  ; Dot3(ax,ay,az,bx,by,bz)
  %6698 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6699 = fmul fast float %6698, %6434
  %6700 = fmul fast float %6698, %6698
  %6701 = fmul fast float %6700, %4863
  %6702 = call float @dx.op.unary.f32(i32 7, float %6701)  ; Saturate(value)
  %6703 = fmul fast float %6699, %6702
  %6704 = bitcast float %6424 to i32
  %6705 = ashr i32 %6704, 1
  %6706 = sub nsw i32 1597463007, %6705
  %6707 = bitcast i32 %6706 to float
  %6708 = fmul fast float %6707, %6421
  %6709 = fmul fast float %6707, %6422
  %6710 = fmul fast float %6707, %6423
  %6711 = fsub fast float %6708, %4835
  %6712 = fsub fast float %6709, %4834
  %6713 = fsub fast float %6710, %4833
  %6714 = call float @dx.op.dot3.f32(i32 55, float %6711, float %6712, float %6713, float %6711, float %6712, float %6713)  ; Dot3(ax,ay,az,bx,by,bz)
  %6715 = call float @dx.op.unary.f32(i32 25, float %6714)  ; Rsqrt(value)
  %6716 = fmul fast float %6711, %6715
  %6717 = fmul fast float %6712, %6715
  %6718 = fmul fast float %6713, %6715
  %6719 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %6716, float %6717, float %6718)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = fmul fast float %6719, %6719
  %6721 = call float @dx.op.unary.f32(i32 6, float %6696)  ; FAbs(value)
  %6722 = fsub fast float 1.000000e+00, %4845
  %6723 = call float @dx.op.binary.f32(i32 35, float %6722, float 0x3F847AE140000000)  ; FMax(a,b)
  %6724 = fmul fast float %6723, %6723
  %6725 = fmul fast float %6724, %6724
  %6726 = fsub fast float 1.000000e+00, %6725
  %6727 = fmul fast float %4850, %4850
  %6728 = fmul fast float %6727, %6726
  %6729 = fadd fast float %6728, %6725
  %6730 = bitcast float %6729 to i32
  %6731 = ashr i32 %6730, 1
  %6732 = add nsw i32 %6731, 532487669
  %6733 = bitcast i32 %6732 to float
  %6734 = fadd fast float %6733, %4850
  %6735 = fmul fast float %6725, %6720
  %6736 = fsub fast float 1.000000e+00, %6720
  %6737 = fadd fast float %6736, %6735
  %6738 = fmul fast float %6721, %6721
  %6739 = fmul fast float %6738, %6726
  %6740 = fadd fast float %6739, %6725
  %6741 = bitcast float %6740 to i32
  %6742 = ashr i32 %6741, 1
  %6743 = add nsw i32 %6742, 532487669
  %6744 = bitcast i32 %6743 to float
  %6745 = fadd fast float %6744, %6721
  %6746 = fmul fast float %6737, %6737
  %6747 = fmul fast float %6746, %6734
  %6748 = fmul fast float %6747, %6745
  %6749 = fdiv fast float 1.000000e+00, %6748
  %6750 = bitcast float %6725 to i32
  %6751 = sitofp i32 %6750 to float
  %6752 = fmul fast float %6751, 0x3FE7F73180000000
  %6753 = fadd fast float %6752, 0x41AFE27C40000000
  %6754 = fptosi float %6753 to i32
  %6755 = bitcast i32 %6754 to float
  %6756 = fmul fast float %6390, 0x3FD80E9D60000000
  %6757 = fmul fast float %6756, %6707
  %6758 = fadd fast float %6755, %6757
  %6759 = bitcast float %6758 to i32
  %6760 = sub nsw i32 2129859010, %6759
  %6761 = bitcast i32 %6760 to float
  %6762 = fmul fast float %6725, %6749
  %6763 = fmul fast float %6762, %6755
  %6764 = fmul fast float %6763, %6761
  %6765 = call float @dx.op.unary.f32(i32 6, float %6697)  ; FAbs(value)
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = bitcast float %6766 to i32
  %6768 = sitofp i32 %6767 to float
  %6769 = fmul fast float %6768, 5.000000e+00
  %6770 = fadd fast float %6769, 0xC1EFBF8940000000
  %6771 = fptosi float %6770 to i32
  %6772 = bitcast i32 %6771 to float
  %6773 = fsub fast float 1.000000e+00, %4839
  %6774 = fsub fast float 1.000000e+00, %4840
  %6775 = fsub fast float 1.000000e+00, %4848
  %6776 = fmul fast float %6772, %6773
  %6777 = fmul fast float %6772, %6774
  %6778 = fmul fast float %6772, %6775
  %6779 = fadd fast float %6776, %4839
  %6780 = fadd fast float %6777, %4840
  %6781 = fadd fast float %6778, %4848
  br i1 %5110, label %6782, label %6805

; <label>:6782                                    ; preds = %6668
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4213, float %6765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.ResRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.ResRet.f32 %6783, 2
  %6787 = fadd fast float %6784, -5.000000e-01
  %6788 = fadd fast float %6785, -5.000000e-01
  %6789 = fadd fast float %6786, -5.000000e-01
  %6790 = fmul fast float %4839, 4.000000e+00
  %6791 = fmul fast float %6790, %6773
  %6792 = fmul fast float %6791, %6787
  %6793 = fmul fast float %4840, 4.000000e+00
  %6794 = fmul fast float %6793, %6774
  %6795 = fmul fast float %6794, %6788
  %6796 = fmul fast float %4848, 4.000000e+00
  %6797 = fmul fast float %6796, %6775
  %6798 = fmul fast float %6797, %6789
  %6799 = fadd fast float %6792, %6779
  %6800 = fadd fast float %6795, %6780
  %6801 = fadd fast float %6798, %6781
  %6802 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6803 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6804 = call float @dx.op.unary.f32(i32 7, float %6801)  ; Saturate(value)
  br label %6805

; <label>:6805                                    ; preds = %6782, %6668
  %6806 = phi float [ %6802, %6782 ], [ %6779, %6668 ]
  %6807 = phi float [ %6803, %6782 ], [ %6780, %6668 ]
  %6808 = phi float [ %6804, %6782 ], [ %6781, %6668 ]
  %6809 = fmul fast float %6696, 9.843750e-01
  %6810 = fadd fast float %6809, 7.812500e-03
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6810, float %5100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 3
  %6814 = fmul fast float %6812, %4839
  %6815 = fmul fast float %6812, %4840
  %6816 = fmul fast float %6812, %4848
  %6817 = fadd fast float %6814, %6813
  %6818 = fadd fast float %6815, %6813
  %6819 = fadd fast float %6816, %6813
  br i1 %5110, label %6820, label %6843

; <label>:6820                                    ; preds = %6805
  %6821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4213, float %6696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = fadd fast float %6822, -5.000000e-01
  %6826 = fadd fast float %6823, -5.000000e-01
  %6827 = fadd fast float %6824, -5.000000e-01
  %6828 = fmul fast float %4839, 4.000000e+00
  %6829 = fmul fast float %6828, %6773
  %6830 = fmul fast float %6829, %6825
  %6831 = fmul fast float %4840, 4.000000e+00
  %6832 = fmul fast float %6831, %6774
  %6833 = fmul fast float %6832, %6826
  %6834 = fmul fast float %4848, 4.000000e+00
  %6835 = fmul fast float %6834, %6775
  %6836 = fmul fast float %6835, %6827
  %6837 = fadd fast float %6830, %6817
  %6838 = fadd fast float %6833, %6818
  %6839 = fadd fast float %6836, %6819
  %6840 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6841 = call float @dx.op.unary.f32(i32 7, float %6838)  ; Saturate(value)
  %6842 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  br label %6843

; <label>:6843                                    ; preds = %6820, %6805
  %6844 = phi float [ %6840, %6820 ], [ %6817, %6805 ]
  %6845 = phi float [ %6841, %6820 ], [ %6818, %6805 ]
  %6846 = phi float [ %6842, %6820 ], [ %6819, %6805 ]
  %6847 = call float @dx.op.binary.f32(i32 35, float %6845, float %6846)  ; FMax(a,b)
  %6848 = call float @dx.op.binary.f32(i32 35, float %6844, float %6847)  ; FMax(a,b)
  %6849 = fsub fast float 1.000000e+00, %6848
  %6850 = fmul fast float %6806, %6764
  %6851 = fmul fast float %6807, %6764
  %6852 = fmul fast float %6808, %6764
  %6853 = fsub fast float 1.000000e+00, %6697
  %6854 = bitcast float %6853 to i32
  %6855 = sitofp i32 %6854 to float
  %6856 = fmul fast float %6855, 5.000000e+00
  %6857 = fadd fast float %6856, 0xC1EFBF8940000000
  %6858 = fptosi float %6857 to i32
  %6859 = bitcast i32 %6858 to float
  %6860 = fmul fast float %6859, %4212
  %6861 = fmul fast float %6849, %6860
  %6862 = fmul fast float %6861, %5160
  %6863 = fmul fast float %6861, %5161
  %6864 = fmul fast float %6861, %5162
  %6865 = fadd fast float %6862, %6850
  %6866 = fadd fast float %6863, %6851
  %6867 = fadd fast float %6864, %6852
  %6868 = fmul fast float %6685, %4233
  %6869 = fmul fast float %6868, %6703
  %6870 = fmul fast float %6869, %6849
  %6871 = fmul fast float %6686, %4233
  %6872 = fmul fast float %6871, %6703
  %6873 = fmul fast float %6872, %6849
  %6874 = fmul fast float %6687, %4233
  %6875 = fmul fast float %6874, %6703
  %6876 = fmul fast float %6875, %6849
  %6877 = fadd fast float %6870, %6364
  %6878 = fadd fast float %6873, %6365
  %6879 = fadd fast float %6876, %6366
  %6880 = fmul fast float %6869, %6865
  %6881 = fmul fast float %6872, %6866
  %6882 = fmul fast float %6875, %6867
  %6883 = fadd fast float %6880, %6361
  %6884 = fadd fast float %6881, %6362
  %6885 = fadd fast float %6882, %6363
  br label %6493

; <label>:6886                                    ; preds = %6493
  br label %6887

; <label>:6887                                    ; preds = %6886, %6327
  %6888 = phi float [ %6329, %6327 ], [ %6494, %6886 ]
  %6889 = phi float [ %6330, %6327 ], [ %6495, %6886 ]
  %6890 = phi float [ %6331, %6327 ], [ %6496, %6886 ]
  %6891 = phi float [ %6332, %6327 ], [ %6497, %6886 ]
  %6892 = phi float [ %6333, %6327 ], [ %6498, %6886 ]
  %6893 = phi float [ %6334, %6327 ], [ %6499, %6886 ]
  %6894 = add i32 %6328, 1
  %6895 = icmp ugt i32 %6894, %6324
  br i1 %6895, label %6896, label %6327

; <label>:6896                                    ; preds = %6887
  br label %6897

; <label>:6897                                    ; preds = %6896, %6277, %6267
  %6898 = phi float [ %6268, %6267 ], [ %6268, %6277 ], [ %6888, %6896 ]
  %6899 = phi float [ %6269, %6267 ], [ %6269, %6277 ], [ %6889, %6896 ]
  %6900 = phi float [ %6270, %6267 ], [ %6270, %6277 ], [ %6890, %6896 ]
  %6901 = phi float [ %6271, %6267 ], [ %6271, %6277 ], [ %6891, %6896 ]
  %6902 = phi float [ %6272, %6267 ], [ %6272, %6277 ], [ %6892, %6896 ]
  %6903 = phi float [ %6273, %6267 ], [ %6273, %6277 ], [ %6893, %6896 ]
  %6904 = fmul fast float %4233, %4233
  %6905 = fsub fast float 1.000000e+00, %6904
  %6906 = call float @dx.op.dot3.f32(i32 55, float %6905, float %6905, float %6905, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6907 = fsub fast float 1.000000e+00, %6906
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = fmul fast float %6909, %5166
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 3
  %6913 = fsub fast float 1.000000e+00, %4211
  %6914 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6915 = fadd fast float %6903, %4210
  %6916 = fmul fast float %6915, %4211
  %6917 = fmul fast float %6914, %6912
  %6918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6919 = extractvalue %dx.types.CBufRet.f32 %6918, 3
  %6920 = fmul fast float %6901, %4836
  %6921 = fmul fast float %6902, %4837
  %6922 = fmul fast float %6903, %4838
  %6923 = fcmp fast ogt float %92, %182
  %6924 = and i1 %6923, %4641
  %6925 = or i1 %4647, %6924
  %6926 = icmp eq i32 %4640, 2
  %6927 = fcmp fast ole float %92, %182
  %6928 = and i1 %6927, %6926
  %6929 = or i1 %6928, %6925
  br i1 %6924, label %6930, label %7187

; <label>:6930                                    ; preds = %6897
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 2
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 3
  %6934 = fmul fast float %6932, %101
  %6935 = fmul fast float %6933, %102
  %6936 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6937 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6936, float %6937, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6939 = extractvalue %dx.types.ResRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.ResRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.ResRet.f32 %6938, 2
  %6942 = extractvalue %dx.types.ResRet.f32 %6938, 3
  %6943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6936, float %6937, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 1
  %6946 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6947 = extractvalue %dx.types.ResRet.f32 %6943, 3
  %6948 = call float @dx.op.binary.f32(i32 35, float %6940, float %6941)  ; FMax(a,b)
  %6949 = call float @dx.op.binary.f32(i32 35, float %6939, float %6948)  ; FMax(a,b)
  %6950 = call float @dx.op.binary.f32(i32 35, float %6949, float %6942)  ; FMax(a,b)
  %6951 = call float @dx.op.binary.f32(i32 36, float %6945, float %6946)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6944, float %6951)  ; FMin(a,b)
  %6953 = call float @dx.op.binary.f32(i32 36, float %6952, float %6947)  ; FMin(a,b)
  %6954 = fmul fast float %6950, 2.550000e+02
  %6955 = fadd fast float %6954, 0x3F70101020000000
  %6956 = fptoui float %6955 to i32
  %6957 = fmul fast float %6953, 2.550000e+02
  %6958 = fadd fast float %6957, 0x3F70101020000000
  %6959 = fptoui float %6958 to i32
  %6960 = icmp ult i32 %6956, %6959
  br i1 %6960, label %6961, label %7129

; <label>:6961                                    ; preds = %6930
  %6962 = fcmp fast ogt float %91, 9.843750e-01
  %6963 = fadd fast float %92, -4.000000e+00
  %6964 = select i1 %6962, float -4.000000e+00, float %6963
  %6965 = call float @dx.op.binary.f32(i32 35, float %6964, float 0.000000e+00)  ; FMax(a,b)
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = fadd fast float %6967, %6965
  %6969 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6970 = fmul fast float %6968, %6969
  %6971 = call float @dx.op.unary.f32(i32 23, float %6970)  ; Log(value)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6973 = fmul fast float %6972, %6971
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %6976 = fmul fast float %6973, %6975
  %6977 = call float @dx.op.unary.f32(i32 7, float %6976)  ; Saturate(value)
  %6978 = uitofp i32 %6956 to float
  %6979 = uitofp i32 %6959 to float
  %6980 = fadd fast float %6978, 5.000000e-01
  %6981 = fadd fast float %6979, 5.000000e-01
  %6982 = fmul fast float %6975, %6980
  %6983 = fmul fast float %6975, %6981
  %6984 = fadd fast float %6982, 0x3F0FFB4800000000
  %6985 = fadd fast float %6983, 0xBF0FFB4800000000
  %6986 = call float @dx.op.binary.f32(i32 35, float %6977, float %6984)  ; FMax(a,b)
  %6987 = call float @dx.op.binary.f32(i32 36, float %6986, float %6985)  ; FMin(a,b)
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6992 = fmul fast float %6989, %6987
  %6993 = fadd fast float %6991, %6992
  %6994 = fadd fast float %6991, %6990
  %6995 = fsub fast float %6989, %6990
  %6996 = fadd fast float %6995, %6991
  %6997 = call float @dx.op.binary.f32(i32 35, float %6993, float %6994)  ; FMax(a,b)
  %6998 = call float @dx.op.binary.f32(i32 36, float %6997, float %6996)  ; FMin(a,b)
  %6999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6936, float %6937, float %6998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7000 = extractvalue %dx.types.ResRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.ResRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.ResRet.f32 %6999, 2
  %7003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.i32 %7003, 0
  %7005 = extractvalue %dx.types.CBufRet.i32 %7003, 1
  %7006 = uitofp i32 %7004 to float
  %7007 = uitofp i32 %7005 to float
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.CBufRet.f32 %7008, 1
  %7011 = fmul fast float %7006, %6936
  %7012 = fmul fast float %7007, %6937
  %7013 = fadd fast float %7011, -5.000000e-01
  %7014 = fadd fast float %7012, -5.000000e-01
  %7015 = call float @dx.op.unary.f32(i32 22, float %7013)  ; Frc(value)
  %7016 = call float @dx.op.unary.f32(i32 22, float %7014)  ; Frc(value)
  %7017 = fmul fast float %7015, %7015
  %7018 = fmul fast float %7017, %7015
  %7019 = fsub fast float 3.000000e+00, %7015
  %7020 = fmul fast float %7017, %7019
  %7021 = fmul fast float %7015, 3.000000e+00
  %7022 = fmul fast float %7018, 3.000000e+00
  %7023 = fmul fast float %7017, 6.000000e+00
  %7024 = fsub fast float %7022, %7023
  %7025 = fadd fast float %7024, 4.000000e+00
  %7026 = fmul fast float %7025, 0x3FC5555560000000
  %7027 = fmul fast float %7018, -3.000000e+00
  %7028 = fadd fast float %7017, %7015
  %7029 = fmul fast float %7028, 3.000000e+00
  %7030 = fadd fast float %7027, 1.000000e+00
  %7031 = fadd fast float %7030, %7029
  %7032 = fmul fast float %7018, 0x3FC5555560000000
  %7033 = fmul fast float %7016, %7016
  %7034 = fmul fast float %7033, %7016
  %7035 = fsub fast float 3.000000e+00, %7016
  %7036 = fmul fast float %7033, %7035
  %7037 = fmul fast float %7016, 3.000000e+00
  %7038 = fmul fast float %7034, 3.000000e+00
  %7039 = fmul fast float %7033, 6.000000e+00
  %7040 = fsub fast float %7038, %7039
  %7041 = fadd fast float %7040, 4.000000e+00
  %7042 = fmul fast float %7041, 0x3FC5555560000000
  %7043 = fmul fast float %7034, -3.000000e+00
  %7044 = fadd fast float %7033, %7016
  %7045 = fmul fast float %7044, 3.000000e+00
  %7046 = fadd fast float %7043, 1.000000e+00
  %7047 = fadd fast float %7046, %7045
  %7048 = fmul fast float %7034, 0x3FC5555560000000
  %7049 = fadd fast float %7015, 1.000000e+00
  %7050 = fsub fast float 1.000000e+00, %7021
  %7051 = fadd fast float %7050, %7020
  %7052 = fadd fast float %7051, %7025
  %7053 = fmul fast float %7052, 0x3FC5555560000000
  %7054 = fdiv fast float %7026, %7053
  %7055 = fsub fast float %7049, %7054
  %7056 = fsub fast float 1.000000e+00, %7015
  %7057 = fadd fast float %7031, %7018
  %7058 = fmul fast float %7057, 0x3FC5555560000000
  %7059 = fdiv fast float %7032, %7058
  %7060 = fadd fast float %7056, %7059
  %7061 = fadd fast float %7016, 1.000000e+00
  %7062 = fsub fast float 1.000000e+00, %7037
  %7063 = fadd fast float %7062, %7036
  %7064 = fadd fast float %7063, %7041
  %7065 = fmul fast float %7064, 0x3FC5555560000000
  %7066 = fdiv fast float %7042, %7065
  %7067 = fsub fast float %7061, %7066
  %7068 = fsub fast float 1.000000e+00, %7016
  %7069 = fadd fast float %7047, %7034
  %7070 = fmul fast float %7069, 0x3FC5555560000000
  %7071 = fdiv fast float %7048, %7070
  %7072 = fadd fast float %7071, %7068
  %7073 = fmul fast float %7055, %7009
  %7074 = fsub fast float %6936, %7073
  %7075 = fmul fast float %7060, %7009
  %7076 = fadd fast float %7075, %6936
  %7077 = fmul fast float %7072, %7010
  %7078 = fadd fast float %7077, %6937
  %7079 = fmul fast float %7067, %7010
  %7080 = fsub fast float %6937, %7079
  %7081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7074, float %7080, float %6998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7082 = extractvalue %dx.types.ResRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.ResRet.f32 %7081, 1
  %7084 = extractvalue %dx.types.ResRet.f32 %7081, 2
  %7085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7076, float %7080, float %6998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7086 = extractvalue %dx.types.ResRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.ResRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.ResRet.f32 %7085, 2
  %7089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7074, float %7078, float %6998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7076, float %7078, float %6998, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.ResRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7093, 2
  %7097 = fsub fast float %7090, %7082
  %7098 = fsub fast float %7091, %7083
  %7099 = fsub fast float %7092, %7084
  %7100 = fmul fast float %7097, %7070
  %7101 = fmul fast float %7098, %7070
  %7102 = fmul fast float %7099, %7070
  %7103 = fadd fast float %7100, %7082
  %7104 = fadd fast float %7101, %7083
  %7105 = fadd fast float %7102, %7084
  %7106 = fsub fast float %7094, %7086
  %7107 = fsub fast float %7095, %7087
  %7108 = fsub fast float %7096, %7088
  %7109 = fmul fast float %7106, %7070
  %7110 = fmul fast float %7107, %7070
  %7111 = fmul fast float %7108, %7070
  %7112 = fsub fast float %7086, %7103
  %7113 = fadd fast float %7112, %7109
  %7114 = fsub fast float %7087, %7104
  %7115 = fadd fast float %7114, %7110
  %7116 = fsub fast float %7088, %7105
  %7117 = fadd fast float %7116, %7111
  %7118 = fmul fast float %7113, %7058
  %7119 = fmul fast float %7115, %7058
  %7120 = fmul fast float %7117, %7058
  %7121 = fadd fast float %7118, %7103
  %7122 = fadd fast float %7119, %7104
  %7123 = fadd fast float %7120, %7105
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 1
  %7126 = fmul fast float %7121, %7125
  %7127 = fmul fast float %7122, %7125
  %7128 = fmul fast float %7123, %7125
  br label %7129

; <label>:7129                                    ; preds = %6961, %6930
  %7130 = phi float [ %7000, %6961 ], [ 1.000000e+00, %6930 ]
  %7131 = phi float [ %7001, %6961 ], [ 1.000000e+00, %6930 ]
  %7132 = phi float [ %7002, %6961 ], [ 1.000000e+00, %6930 ]
  %7133 = phi float [ %7126, %6961 ], [ 0.000000e+00, %6930 ]
  %7134 = phi float [ %7127, %6961 ], [ 0.000000e+00, %6930 ]
  %7135 = phi float [ %7128, %6961 ], [ 0.000000e+00, %6930 ]
  %7136 = fmul fast float %7133, %6907
  %7137 = fmul fast float %7134, %6907
  %7138 = fmul fast float %7135, %6907
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = call float @dx.op.dot3.f32(i32 55, float %7136, float %7137, float %7138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7141 = select i1 %222, float %7139, float %7130
  %7142 = select i1 %222, float %7139, float %7131
  %7143 = select i1 %222, float 1.000000e+00, float %7132
  %7144 = select i1 %222, float %7140, float %7136
  %7145 = select i1 %222, float 0.000000e+00, float %7137
  %7146 = select i1 %222, float 0.000000e+00, float %7138
  %7147 = fmul fast float %7141, %6920
  %7148 = fmul fast float %7142, %6921
  %7149 = fmul fast float %7143, %6922
  %7150 = fadd fast float %7147, %7144
  %7151 = fadd fast float %7148, %7145
  %7152 = fadd fast float %7146, %7149
  %7153 = fmul fast float %7141, %6898
  %7154 = fmul fast float %7142, %6899
  %7155 = fmul fast float %7143, %6900
  %7156 = fmul fast float %130, %6932
  %7157 = fmul fast float %132, %6933
  %7158 = fsub fast float 1.000000e+00, %7156
  %7159 = fsub fast float 1.000000e+00, %7157
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7164 = fmul fast float %7158, %7161
  %7165 = fmul fast float %7158, %7162
  %7166 = fmul fast float %7158, %7163
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7169 = extractvalue %dx.types.CBufRet.f32 %7167, 1
  %7170 = extractvalue %dx.types.CBufRet.f32 %7167, 2
  %7171 = fmul fast float %7159, %7168
  %7172 = fmul fast float %7159, %7169
  %7173 = fmul fast float %7159, %7170
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = fadd fast float %7171, %7175
  %7179 = fadd fast float %7178, %7164
  %7180 = fadd fast float %7172, %7176
  %7181 = fadd fast float %7180, %7165
  %7182 = fadd fast float %7173, %7177
  %7183 = fadd fast float %7182, %7166
  %7184 = fmul fast float %7179, %182
  %7185 = fmul fast float %7181, %182
  %7186 = fmul fast float %7183, %182
  br label %7187

; <label>:7187                                    ; preds = %7129, %6897
  %7188 = phi float [ %7184, %7129 ], [ %160, %6897 ]
  %7189 = phi float [ %7185, %7129 ], [ %161, %6897 ]
  %7190 = phi float [ %7186, %7129 ], [ %162, %6897 ]
  %7191 = phi float [ %182, %7129 ], [ %92, %6897 ]
  %7192 = phi float [ %7150, %7129 ], [ %6920, %6897 ]
  %7193 = phi float [ %7151, %7129 ], [ %6921, %6897 ]
  %7194 = phi float [ %7152, %7129 ], [ %6922, %6897 ]
  %7195 = phi float [ %7153, %7129 ], [ %6898, %6897 ]
  %7196 = phi float [ %7154, %7129 ], [ %6899, %6897 ]
  %7197 = phi float [ %7155, %7129 ], [ %6900, %6897 ]
  %7198 = phi float [ %7130, %7129 ], [ 1.000000e+00, %6897 ]
  br i1 %6929, label %8353, label %7199

; <label>:7199                                    ; preds = %7187
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.CBufRet.f32 %7200, 2
  %7204 = extractvalue %dx.types.CBufRet.f32 %7200, 3
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.CBufRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.CBufRet.f32 %7205, 2
  %7209 = extractvalue %dx.types.CBufRet.f32 %7205, 3
  %7210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7211 = extractvalue %dx.types.CBufRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.CBufRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.CBufRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.CBufRet.f32 %7210, 3
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7219 = extractvalue %dx.types.CBufRet.f32 %7215, 3
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 3
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 3
  %7224 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7225 = extractvalue %dx.types.CBufRet.f32 %7222, 1
  %7226 = extractvalue %dx.types.CBufRet.f32 %7222, 2
  %7227 = fcmp fast olt float %7226, -5.000000e-01
  %7228 = call float @dx.op.dot3.f32(i32 55, float %7188, float %7189, float %7190, float %7188, float %7189, float %7190)  ; Dot3(ax,ay,az,bx,by,bz)
  %7229 = call float @dx.op.unary.f32(i32 25, float %7228)  ; Rsqrt(value)
  %7230 = fmul fast float %7229, %7228
  %7231 = fmul fast float %7229, %7188
  %7232 = fmul fast float %7229, %7189
  %7233 = fmul fast float %7229, %7190
  %7234 = fadd fast float %7230, %7204
  %7235 = call float @dx.op.dot3.f32(i32 55, float %7231, float %7232, float %7233, float %7201, float %7202, float %7203)  ; Dot3(ax,ay,az,bx,by,bz)
  %7236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.i32 %7236, 1
  %7238 = and i32 %7237, 1
  %7239 = icmp ne i32 %7238, 0
  %7240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7240, 2
  %7242 = fcmp fast ogt float %7241, 0.000000e+00
  %7243 = and i1 %7239, %7242
  br i1 %7243, label %7244, label %7650, !dx.controlflow.hints !122

; <label>:7244                                    ; preds = %7199
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 3
  %7247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7248 = extractvalue %dx.types.CBufRet.f32 %7247, 2
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 2
  %7251 = fsub fast float %7248, %7250
  %7252 = and i32 %7237, 2
  %7253 = extractvalue %dx.types.CBufRet.i32 %7236, 0
  %7254 = call i32 @dx.op.binary.i32(i32 40, i32 %7253, i32 3)  ; UMin(a,b)
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7249, 0
  %7259 = extractvalue %dx.types.CBufRet.f32 %7249, 1
  %7260 = fsub fast float %7256, %7258
  %7261 = fsub fast float %7257, %7259
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = fcmp fast ogt float %7263, 0.000000e+00
  %7265 = fsub fast float -0.000000e+00, %7260
  %7266 = fsub fast float -0.000000e+00, %7261
  %7267 = call float @dx.op.dot2.f32(i32 54, float %7231, float %7232, float %7231, float %7232)  ; Dot2(ax,ay,bx,by)
  %7268 = call float @dx.op.dot2.f32(i32 54, float %7231, float %7232, float %7265, float %7266)  ; Dot2(ax,ay,bx,by)
  %7269 = fmul fast float %7268, 2.000000e+00
  %7270 = call float @dx.op.dot2.f32(i32 54, float %7265, float %7266, float %7265, float %7266)  ; Dot2(ax,ay,bx,by)
  %7271 = fmul fast float %7263, %7263
  %7272 = fsub fast float %7270, %7271
  %7273 = fmul fast float %7269, %7269
  %7274 = fmul fast float %7267, 4.000000e+00
  %7275 = fmul fast float %7274, %7272
  %7276 = fsub fast float %7273, %7275
  %7277 = fcmp fast ogt float %7276, 0.000000e+00
  br i1 %7277, label %7278, label %7293

; <label>:7278                                    ; preds = %7244
  %7279 = fcmp fast ogt float %7269, 0.000000e+00
  %7280 = call float @dx.op.unary.f32(i32 24, float %7276)  ; Sqrt(value)
  %7281 = fsub fast float -0.000000e+00, %7280
  %7282 = select i1 %7279, float %7280, float %7281
  %7283 = fadd fast float %7282, %7269
  %7284 = fmul float %7283, -5.000000e-01
  %7285 = fdiv fast float %7284, %7267
  %7286 = call float @dx.op.binary.f32(i32 35, float %7285, float 0.000000e+00)  ; FMax(a,b)
  %7287 = call float @dx.op.binary.f32(i32 36, float %7230, float %7286)  ; FMin(a,b)
  %7288 = fdiv fast float %7272, %7284
  %7289 = call float @dx.op.binary.f32(i32 35, float %7288, float 0.000000e+00)  ; FMax(a,b)
  %7290 = call float @dx.op.binary.f32(i32 36, float %7230, float %7289)  ; FMin(a,b)
  %7291 = call float @dx.op.binary.f32(i32 36, float %7287, float %7290)  ; FMin(a,b)
  %7292 = call float @dx.op.binary.f32(i32 35, float %7287, float %7290)  ; FMax(a,b)
  br label %7293

; <label>:7293                                    ; preds = %7278, %7244
  %7294 = phi float [ %7292, %7278 ], [ -1.000000e+00, %7244 ]
  %7295 = phi float [ %7291, %7278 ], [ -1.000000e+00, %7244 ]
  %7296 = phi i1 [ true, %7278 ], [ false, %7244 ]
  %7297 = and i1 %7264, %7296
  br i1 %7297, label %7298, label %7300

; <label>:7298                                    ; preds = %7293
  %7299 = fcmp fast oeq float %7295, %7294
  br i1 %7299, label %7603, label %7301

; <label>:7300                                    ; preds = %7293
  br i1 %7264, label %7603, label %7301

; <label>:7301                                    ; preds = %7300, %7298
  %7302 = phi float [ %7230, %7300 ], [ %7294, %7298 ]
  %7303 = phi float [ 0.000000e+00, %7300 ], [ %7295, %7298 ]
  %7304 = icmp ne i32 %7252, 0
  %7305 = fmul fast float %7302, %7233
  %7306 = fadd fast float %7305, %7246
  %7307 = fmul fast float %7306, %7302
  %7308 = select i1 %7304, float 0.000000e+00, float %7307
  %7309 = fcmp fast oeq float %7233, 0.000000e+00
  %7310 = fdiv fast float %7251, %7233
  %7311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7310)  ; FMax(a,b)
  %7312 = select i1 %7309, float %7302, float %7311
  %7313 = call float @dx.op.binary.f32(i32 36, float %7302, float %7312)  ; FMin(a,b)
  %7314 = fcmp fast ogt float %7233, 0.000000e+00
  %7315 = fcmp fast olt float %7251, 0.000000e+00
  br i1 %7314, label %7316, label %7373

; <label>:7316                                    ; preds = %7301
  %7317 = icmp eq i32 %7252, 0
  br i1 %7315, label %7318, label %7362

; <label>:7318                                    ; preds = %7316
  %7319 = select i1 %7317, float %7302, float 0.000000e+00
  %7320 = fsub fast float -0.000000e+00, %7319
  %7321 = call float @dx.op.unary.f32(i32 6, float %7320)  ; FAbs(value)
  %7322 = fmul fast float %7319, %7233
  %7323 = fadd fast float %7322, %7246
  %7324 = fmul fast float %7321, %7323
  %7325 = fsub fast float %7308, %7324
  %7326 = fsub fast float %7302, %7321
  %7327 = select i1 %7317, float %7326, float 0.000000e+00
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7335 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7336 = extractvalue %dx.types.CBufRet.f32 %7332, 3
  %7337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.f32 %7337, 3
  %7339 = call float @dx.op.binary.f32(i32 36, float %7325, float %7338)  ; FMin(a,b)
  %7340 = fmul fast float %7336, %7327
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7342 = fsub fast float %7333, %7329
  %7343 = fsub fast float %7334, %7330
  %7344 = fsub fast float %7335, %7331
  %7345 = fmul fast float %7341, %7342
  %7346 = fmul fast float %7341, %7343
  %7347 = fmul fast float %7341, %7344
  %7348 = fadd fast float %7345, %7329
  %7349 = fadd fast float %7346, %7330
  %7350 = fadd fast float %7347, %7331
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = fadd fast float %7353, %7352
  %7355 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7357 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7358 = fadd fast float %7357, %7356
  %7359 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7360 = fmul fast float %7355, %7339
  %7361 = fmul fast float %7360, %7359
  br label %7603

; <label>:7362                                    ; preds = %7316
  br i1 %7317, label %7363, label %7384

; <label>:7363                                    ; preds = %7362
  %7364 = call float @dx.op.binary.f32(i32 36, float %7313, float %7303)  ; FMin(a,b)
  %7365 = fsub fast float %7313, %7364
  %7366 = fsub fast float %7365, %7302
  %7367 = call float @dx.op.unary.f32(i32 6, float %7366)  ; FAbs(value)
  %7368 = fadd fast float %7365, %7302
  %7369 = fmul fast float %7368, %7233
  %7370 = fadd fast float %7369, %7246
  %7371 = fmul fast float %7370, %7367
  %7372 = fsub fast float %7308, %7371
  br label %7384

; <label>:7373                                    ; preds = %7301
  br i1 %7315, label %7374, label %7384

; <label>:7374                                    ; preds = %7373
  %7375 = call float @dx.op.binary.f32(i32 35, float %7303, float %7313)  ; FMax(a,b)
  %7376 = icmp eq i32 %7252, 0
  %7377 = select i1 %7376, float %7313, float 0.000000e+00
  %7378 = fsub fast float -0.000000e+00, %7377
  %7379 = call float @dx.op.unary.f32(i32 6, float %7378)  ; FAbs(value)
  %7380 = fmul fast float %7377, %7233
  %7381 = fadd fast float %7380, %7246
  %7382 = fmul fast float %7379, %7381
  %7383 = fsub fast float %7308, %7382
  br label %7384

; <label>:7384                                    ; preds = %7374, %7373, %7363, %7362
  %7385 = phi float [ %7303, %7362 ], [ %7303, %7363 ], [ %7375, %7374 ], [ %7303, %7373 ]
  %7386 = phi float [ 0.000000e+00, %7362 ], [ %7367, %7363 ], [ %7379, %7374 ], [ 0.000000e+00, %7373 ]
  %7387 = phi float [ %7308, %7362 ], [ %7372, %7363 ], [ %7383, %7374 ], [ %7308, %7373 ]
  %7388 = phi float [ %7313, %7362 ], [ %7313, %7363 ], [ %7302, %7374 ], [ %7302, %7373 ]
  %7389 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %7389, align 4, !tbaa !123, !noalias !125
  %7390 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %7390, align 4, !tbaa !123, !noalias !125
  %7391 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %7391, align 4, !tbaa !123, !noalias !125
  %7392 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7392, align 4, !tbaa !123, !noalias !125
  %7393 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7393, align 4, !tbaa !123, !noalias !125
  %7394 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7394, align 4, !tbaa !123, !noalias !125
  %7395 = icmp sgt i32 %7254, 0
  br i1 %7395, label %7396, label %7457

; <label>:7396                                    ; preds = %7384
  br label %7397

; <label>:7397                                    ; preds = %7446, %7396
  %7398 = phi i32 [ %7447, %7446 ], [ 0, %7396 ]
  %7399 = phi i32 [ %7448, %7446 ], [ 0, %7396 ]
  %7400 = add nuw i32 %7399, 171
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7400)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.CBufRet.f32 %7404, 1
  %7407 = fsub fast float %7402, %7405
  %7408 = fsub fast float %7403, %7406
  %7409 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7410 = fsub fast float -0.000000e+00, %7407
  %7411 = fsub fast float -0.000000e+00, %7408
  %7412 = call float @dx.op.dot2.f32(i32 54, float %7231, float %7232, float %7410, float %7411)  ; Dot2(ax,ay,bx,by)
  %7413 = fmul fast float %7412, 2.000000e+00
  %7414 = call float @dx.op.dot2.f32(i32 54, float %7410, float %7411, float %7410, float %7411)  ; Dot2(ax,ay,bx,by)
  %7415 = fmul fast float %7409, %7409
  %7416 = fsub fast float %7414, %7415
  %7417 = fmul fast float %7413, %7413
  %7418 = fmul fast float %7274, %7416
  %7419 = fsub fast float %7417, %7418
  %7420 = fcmp fast ogt float %7419, 0.000000e+00
  br i1 %7420, label %7421, label %7436

; <label>:7421                                    ; preds = %7397
  %7422 = fcmp fast ogt float %7413, 0.000000e+00
  %7423 = call float @dx.op.unary.f32(i32 24, float %7419)  ; Sqrt(value)
  %7424 = fsub fast float -0.000000e+00, %7423
  %7425 = select i1 %7422, float %7423, float %7424
  %7426 = fadd fast float %7425, %7413
  %7427 = fmul float %7426, -5.000000e-01
  %7428 = fdiv fast float %7427, %7267
  %7429 = call float @dx.op.binary.f32(i32 35, float %7428, float 0.000000e+00)  ; FMax(a,b)
  %7430 = call float @dx.op.binary.f32(i32 36, float %7302, float %7429)  ; FMin(a,b)
  %7431 = fdiv fast float %7416, %7427
  %7432 = call float @dx.op.binary.f32(i32 35, float %7431, float 0.000000e+00)  ; FMax(a,b)
  %7433 = call float @dx.op.binary.f32(i32 36, float %7302, float %7432)  ; FMin(a,b)
  %7434 = call float @dx.op.binary.f32(i32 36, float %7430, float %7433)  ; FMin(a,b)
  %7435 = call float @dx.op.binary.f32(i32 35, float %7430, float %7433)  ; FMax(a,b)
  br label %7436

; <label>:7436                                    ; preds = %7421, %7397
  %7437 = phi float [ %7435, %7421 ], [ -1.000000e+00, %7397 ]
  %7438 = phi float [ %7434, %7421 ], [ -1.000000e+00, %7397 ]
  %7439 = phi i1 [ true, %7421 ], [ false, %7397 ]
  br i1 %7439, label %7440, label %7446

; <label>:7440                                    ; preds = %7436
  %7441 = call float @dx.op.binary.f32(i32 35, float %7385, float %7438)  ; FMax(a,b)
  %7442 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7399
  store float %7441, float* %7442, align 4, !tbaa !123, !noalias !125
  %7443 = call float @dx.op.binary.f32(i32 35, float %7385, float %7437)  ; FMax(a,b)
  %7444 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7399
  store float %7443, float* %7444, align 4, !tbaa !123, !noalias !125
  %7445 = add nsw i32 %7398, 1
  br label %7446

; <label>:7446                                    ; preds = %7440, %7436
  %7447 = phi i32 [ %7445, %7440 ], [ %7398, %7436 ]
  %7448 = add nuw nsw i32 %7399, 1
  %7449 = icmp eq i32 %7448, %7254
  br i1 %7449, label %7450, label %7397

; <label>:7450                                    ; preds = %7446
  %7451 = load float, float* %7391, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7452 = load float, float* %7390, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7453 = load float, float* %7389, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7454 = load float, float* %7394, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7455 = load float, float* %7393, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7456 = load float, float* %7392, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7457

; <label>:7457                                    ; preds = %7450, %7384
  %7458 = phi float [ -1.000000e+00, %7384 ], [ %7456, %7450 ]
  %7459 = phi float [ -1.000000e+00, %7384 ], [ %7455, %7450 ]
  %7460 = phi float [ -1.000000e+00, %7384 ], [ %7454, %7450 ]
  %7461 = phi float [ -1.000000e+00, %7384 ], [ %7453, %7450 ]
  %7462 = phi float [ -1.000000e+00, %7384 ], [ %7452, %7450 ]
  %7463 = phi float [ -1.000000e+00, %7384 ], [ %7451, %7450 ]
  %7464 = phi i32 [ 0, %7384 ], [ %7447, %7450 ]
  %7465 = call float @dx.op.binary.f32(i32 36, float %7462, float %7463)  ; FMin(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7461, float %7465)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 35, float %7461, float %7462)  ; FMax(a,b)
  %7468 = call float @dx.op.binary.f32(i32 36, float %7467, float %7463)  ; FMin(a,b)
  %7469 = call float @dx.op.binary.f32(i32 36, float %7461, float %7462)  ; FMin(a,b)
  %7470 = call float @dx.op.binary.f32(i32 35, float %7469, float %7468)  ; FMax(a,b)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7462, float %7463)  ; FMax(a,b)
  %7472 = call float @dx.op.binary.f32(i32 35, float %7461, float %7471)  ; FMax(a,b)
  store float %7466, float* %7389, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7470, float* %7390, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7472, float* %7391, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7473 = call float @dx.op.binary.f32(i32 36, float %7459, float %7460)  ; FMin(a,b)
  %7474 = call float @dx.op.binary.f32(i32 36, float %7458, float %7473)  ; FMin(a,b)
  %7475 = call float @dx.op.binary.f32(i32 35, float %7458, float %7459)  ; FMax(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7475, float %7460)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7458, float %7459)  ; FMin(a,b)
  %7478 = call float @dx.op.binary.f32(i32 35, float %7477, float %7476)  ; FMax(a,b)
  %7479 = call float @dx.op.binary.f32(i32 35, float %7459, float %7460)  ; FMax(a,b)
  %7480 = call float @dx.op.binary.f32(i32 35, float %7458, float %7479)  ; FMax(a,b)
  store float %7474, float* %7392, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7478, float* %7393, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7480, float* %7394, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7481 = sub nsw i32 3, %7464
  %7482 = icmp sgt i32 %7481, 2
  br i1 %7482, label %7483, label %7521

; <label>:7483                                    ; preds = %7457
  %7484 = icmp eq i32 %7252, 0
  %7485 = fsub fast float %7302, %7386
  %7486 = select i1 %7484, float %7485, float %7386
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7490 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7498 = call float @dx.op.binary.f32(i32 36, float %7387, float %7497)  ; FMin(a,b)
  %7499 = fmul fast float %7495, %7486
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7501 = fsub fast float %7492, %7488
  %7502 = fsub fast float %7493, %7489
  %7503 = fsub fast float %7494, %7490
  %7504 = fmul fast float %7500, %7501
  %7505 = fmul fast float %7500, %7502
  %7506 = fmul fast float %7500, %7503
  %7507 = fadd fast float %7504, %7488
  %7508 = fadd fast float %7505, %7489
  %7509 = fadd fast float %7506, %7490
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7513 = fadd fast float %7512, %7511
  %7514 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7516 = extractvalue %dx.types.CBufRet.f32 %7510, 3
  %7517 = fadd fast float %7516, %7515
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  %7519 = fmul fast float %7514, %7498
  %7520 = fmul fast float %7519, %7518
  br label %7603

; <label>:7521                                    ; preds = %7457
  %7522 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7481
  %7523 = load float, float* %7522, align 4, !tbaa !123, !noalias !125
  %7524 = fcmp fast olt float %7523, %7388
  %7525 = icmp sgt i32 %7464, 0
  %7526 = and i1 %7525, %7524
  br i1 %7526, label %7527, label %7564

; <label>:7527                                    ; preds = %7521
  br label %7528

; <label>:7528                                    ; preds = %7557, %7527
  %7529 = phi float [ %7558, %7557 ], [ %7386, %7527 ]
  %7530 = phi float [ %7559, %7557 ], [ %7387, %7527 ]
  %7531 = phi float [ %7539, %7557 ], [ %7523, %7527 ]
  %7532 = phi i32 [ %7536, %7557 ], [ %7481, %7527 ]
  %7533 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7532
  %7534 = load float, float* %7533, align 4, !tbaa !123, !noalias !125
  %7535 = icmp slt i32 %7532, 2
  %7536 = add nsw i32 %7532, 1
  %7537 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %7536
  %7538 = load float, float* %7537, align 4, !tbaa !123, !noalias !125
  %7539 = select i1 %7535, float %7538, float %7302
  %7540 = call float @dx.op.binary.f32(i32 36, float %7539, float %7534)  ; FMin(a,b)
  %7541 = call float @dx.op.binary.f32(i32 36, float %7388, float %7540)  ; FMin(a,b)
  %7542 = icmp eq i32 %7252, 0
  %7543 = fadd fast float %7541, %7531
  %7544 = fmul fast float %7543, %7233
  %7545 = fadd fast float %7544, %7246
  br i1 %7542, label %7551, label %7546

; <label>:7546                                    ; preds = %7528
  %7547 = fsub fast float %7541, %7531
  %7548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7547)  ; FMax(a,b)
  %7549 = fmul fast float %7548, %7545
  %7550 = fadd fast float %7549, %7530
  br label %7557

; <label>:7551                                    ; preds = %7528
  %7552 = fsub fast float %7531, %7541
  %7553 = call float @dx.op.unary.f32(i32 6, float %7552)  ; FAbs(value)
  %7554 = fadd fast float %7553, %7529
  %7555 = fmul fast float %7553, %7545
  %7556 = fsub fast float %7530, %7555
  br label %7557

; <label>:7557                                    ; preds = %7551, %7546
  %7558 = phi float [ %7548, %7546 ], [ %7554, %7551 ]
  %7559 = phi float [ %7550, %7546 ], [ %7556, %7551 ]
  %7560 = fcmp fast olt float %7539, %7388
  %7561 = icmp slt i32 %7536, 3
  %7562 = and i1 %7561, %7560
  br i1 %7562, label %7528, label %7563

; <label>:7563                                    ; preds = %7557
  br label %7564

; <label>:7564                                    ; preds = %7563, %7521
  %7565 = phi float [ %7386, %7521 ], [ %7558, %7563 ]
  %7566 = phi float [ %7387, %7521 ], [ %7559, %7563 ]
  %7567 = fsub fast float %7302, %7565
  %7568 = select i1 %7304, float %7565, float %7567
  %7569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7570 = extractvalue %dx.types.CBufRet.f32 %7569, 0
  %7571 = extractvalue %dx.types.CBufRet.f32 %7569, 1
  %7572 = extractvalue %dx.types.CBufRet.f32 %7569, 2
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.CBufRet.f32 %7573, 1
  %7576 = extractvalue %dx.types.CBufRet.f32 %7573, 2
  %7577 = extractvalue %dx.types.CBufRet.f32 %7573, 3
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 3
  %7580 = call float @dx.op.binary.f32(i32 36, float %7566, float %7579)  ; FMin(a,b)
  %7581 = fmul fast float %7577, %7568
  %7582 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7583 = fsub fast float %7574, %7570
  %7584 = fsub fast float %7575, %7571
  %7585 = fsub fast float %7576, %7572
  %7586 = fmul fast float %7582, %7583
  %7587 = fmul fast float %7582, %7584
  %7588 = fmul fast float %7582, %7585
  %7589 = fadd fast float %7586, %7570
  %7590 = fadd fast float %7587, %7571
  %7591 = fadd fast float %7588, %7572
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = fadd fast float %7594, %7593
  %7596 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7592, 2
  %7598 = extractvalue %dx.types.CBufRet.f32 %7592, 3
  %7599 = fadd fast float %7598, %7597
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = fmul fast float %7596, %7580
  %7602 = fmul fast float %7601, %7600
  br label %7603

; <label>:7603                                    ; preds = %7564, %7483, %7318, %7300, %7298
  %7604 = phi float [ %7327, %7318 ], [ %7486, %7483 ], [ %7568, %7564 ], [ 0.000000e+00, %7298 ], [ 0.000000e+00, %7300 ]
  %7605 = phi float [ %7361, %7318 ], [ %7520, %7483 ], [ %7602, %7564 ], [ 0.000000e+00, %7298 ], [ 0.000000e+00, %7300 ]
  %7606 = phi float [ %7348, %7318 ], [ %7507, %7483 ], [ %7589, %7564 ], [ 0.000000e+00, %7298 ], [ 0.000000e+00, %7300 ]
  %7607 = phi float [ %7349, %7318 ], [ %7508, %7483 ], [ %7590, %7564 ], [ 0.000000e+00, %7298 ], [ 0.000000e+00, %7300 ]
  %7608 = phi float [ %7350, %7318 ], [ %7509, %7483 ], [ %7591, %7564 ], [ 0.000000e+00, %7298 ], [ 0.000000e+00, %7300 ]
  %7609 = fmul fast float %7241, %7605
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %7612 = fsub fast float %7248, %7611
  %7613 = fcmp fast olt float %7609, -2.000000e+01
  %7614 = call float @dx.op.unary.f32(i32 21, float %7609)  ; Exp(value)
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7620 = fmul fast float %7617, %7612
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fsub fast float 1.000000e+00, %7621
  %7623 = fmul fast float %7233, 5.000000e-01
  %7624 = fadd fast float %7623, 5.000000e-01
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = fsub fast float 1.000000e+00, %7625
  %7627 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7622)  ; FMax(a,b)
  %7628 = fdiv fast float %7626, %7627
  %7629 = fsub fast float %7612, %7190
  %7630 = call float @dx.op.unary.f32(i32 6, float %7629)  ; FAbs(value)
  %7631 = fmul fast float %7630, %7616
  %7632 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7633 = fsub fast float 1.000000e+00, %7631
  %7634 = fmul fast float %7633, %7632
  %7635 = fadd fast float %7634, %7631
  %7636 = fmul fast float %7619, %7612
  %7637 = call float @dx.op.unary.f32(i32 7, float %7636)  ; Saturate(value)
  %7638 = fsub fast float 1.000000e+00, %7635
  %7639 = fmul fast float %7638, %7637
  %7640 = fadd fast float %7639, %7635
  %7641 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7642 = fadd fast float %7614, -1.000000e+00
  %7643 = select i1 %7613, float -1.000000e+00, float %7642
  %7644 = fmul fast float %7641, %7643
  %7645 = fadd fast float %7644, 1.000000e+00
  %7646 = fsub fast float -0.000000e+00, %7644
  %7647 = fmul fast float %7606, %7646
  %7648 = fmul fast float %7607, %7646
  %7649 = fmul fast float %7608, %7646
  br label %7650

; <label>:7650                                    ; preds = %7603, %7199
  %7651 = phi float [ %7604, %7603 ], [ 0.000000e+00, %7199 ]
  %7652 = phi float [ %7645, %7603 ], [ 1.000000e+00, %7199 ]
  %7653 = phi float [ %7647, %7603 ], [ 0.000000e+00, %7199 ]
  %7654 = phi float [ %7648, %7603 ], [ 0.000000e+00, %7199 ]
  %7655 = phi float [ %7649, %7603 ], [ 0.000000e+00, %7199 ]
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 1
  %7658 = fsub fast float 1.000000e+00, %7652
  %7659 = fmul fast float %7658, %7234
  %7660 = fmul fast float %7659, %7657
  %7661 = fsub fast float %7234, %7660
  br i1 %7227, label %7662, label %7691, !dx.controlflow.hints !161

; <label>:7662                                    ; preds = %7650
  %7663 = fmul fast float %7235, %7224
  %7664 = fadd fast float %7663, %7225
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7666 = fmul fast float %7206, %7661
  %7667 = fsub fast float -0.000000e+00, %7666
  %7668 = fmul fast float %7207, %7661
  %7669 = fsub fast float -0.000000e+00, %7668
  %7670 = call float @dx.op.unary.f32(i32 21, float %7667)  ; Exp(value)
  %7671 = call float @dx.op.unary.f32(i32 21, float %7669)  ; Exp(value)
  %7672 = call float @dx.op.binary.f32(i32 35, float %7214, float %7670)  ; FMax(a,b)
  %7673 = call float @dx.op.binary.f32(i32 35, float %7214, float %7671)  ; FMax(a,b)
  %7674 = fsub fast float %7673, %7672
  %7675 = fmul fast float %7674, %7665
  %7676 = fadd fast float %7675, %7672
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = fsub fast float %7211, %7216
  %7679 = fsub fast float %7212, %7217
  %7680 = fsub fast float %7213, %7218
  %7681 = fmul fast float %7665, %7678
  %7682 = fmul fast float %7665, %7679
  %7683 = fmul fast float %7665, %7680
  %7684 = fadd fast float %7681, %7216
  %7685 = fadd fast float %7682, %7217
  %7686 = fadd fast float %7683, %7218
  %7687 = fsub fast float 1.000000e+00, %7677
  %7688 = fmul fast float %7687, %7684
  %7689 = fmul fast float %7687, %7685
  %7690 = fmul fast float %7687, %7686
  br label %7750

; <label>:7691                                    ; preds = %7650
  %7692 = fmul fast float %7661, %7223
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fsub fast float 2.000000e+00, %7693
  %7695 = fmul fast float %7693, 9.921875e-01
  %7696 = fmul fast float %7695, %7694
  %7697 = fadd fast float %7696, 3.906250e-03
  %7698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7697, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7699 = extractvalue %dx.types.ResRet.f32 %7698, 0
  %7700 = fsub fast float %7693, %7699
  %7701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7700)  ; FMax(a,b)
  %7702 = fmul fast float %7209, %7190
  %7703 = call float @dx.op.unary.f32(i32 6, float %7702)  ; FAbs(value)
  %7704 = fcmp fast ogt float %7703, 0x3EB0C6F7A0000000
  br i1 %7704, label %7705, label %7711, !dx.controlflow.hints !162

; <label>:7705                                    ; preds = %7691
  %7706 = fmul fast float %7702, 0xBFF7154760000000
  %7707 = call float @dx.op.unary.f32(i32 21, float %7706)  ; Exp(value)
  %7708 = fsub fast float 1.000000e+00, %7707
  %7709 = fdiv fast float %7708, %7702
  %7710 = fmul fast float %7709, %7219
  br label %7711

; <label>:7711                                    ; preds = %7705, %7691
  %7712 = phi float [ %7710, %7705 ], [ %7219, %7691 ]
  %7713 = fadd fast float %7712, %7221
  %7714 = fmul fast float %7713, %7701
  %7715 = fmul fast float %7206, %7714
  %7716 = fsub fast float -0.000000e+00, %7715
  %7717 = fmul fast float %7207, %7714
  %7718 = fsub fast float -0.000000e+00, %7717
  %7719 = fmul fast float %7208, %7714
  %7720 = fsub fast float -0.000000e+00, %7719
  %7721 = call float @dx.op.unary.f32(i32 21, float %7716)  ; Exp(value)
  %7722 = call float @dx.op.unary.f32(i32 21, float %7718)  ; Exp(value)
  %7723 = call float @dx.op.unary.f32(i32 21, float %7720)  ; Exp(value)
  %7724 = fmul fast float %7235, %7235
  %7725 = fadd fast float %7724, 1.000000e+00
  %7726 = fmul fast float %7725, 0x3FAE8EC8A0000000
  %7727 = fmul fast float %7726, %7216
  %7728 = fmul fast float %7726, %7217
  %7729 = fmul fast float %7726, %7218
  %7730 = fmul fast float %7235, %7214
  %7731 = fsub fast float 1.000000e+00, %7730
  %7732 = fmul fast float %7214, %7214
  %7733 = fsub fast float 1.000000e+00, %7732
  %7734 = fmul fast float %7733, 0x3FB45F3060000000
  %7735 = fmul fast float %7731, %7731
  %7736 = fdiv fast float 1.000000e+00, %7735
  %7737 = fmul fast float %7734, %7736
  %7738 = fmul fast float %7737, %7211
  %7739 = fmul fast float %7737, %7212
  %7740 = fmul fast float %7737, %7213
  %7741 = fadd fast float %7738, %7727
  %7742 = fadd fast float %7739, %7728
  %7743 = fadd fast float %7740, %7729
  %7744 = fsub fast float 1.000000e+00, %7721
  %7745 = fsub fast float 1.000000e+00, %7722
  %7746 = fsub fast float 1.000000e+00, %7723
  %7747 = fmul fast float %7741, %7744
  %7748 = fmul fast float %7742, %7745
  %7749 = fmul fast float %7743, %7746
  br label %7750

; <label>:7750                                    ; preds = %7711, %7662
  %7751 = phi float [ %7688, %7662 ], [ %7747, %7711 ]
  %7752 = phi float [ %7689, %7662 ], [ %7748, %7711 ]
  %7753 = phi float [ %7690, %7662 ], [ %7749, %7711 ]
  %7754 = phi float [ %7677, %7662 ], [ %7721, %7711 ]
  %7755 = phi float [ %7677, %7662 ], [ %7722, %7711 ]
  %7756 = phi float [ %7677, %7662 ], [ %7723, %7711 ]
  br i1 %7243, label %7757, label %7955, !dx.controlflow.hints !163

; <label>:7757                                    ; preds = %7750
  %7758 = extractvalue %dx.types.CBufRet.f32 %7656, 0
  %7759 = fmul fast float %7758, %7658
  %7760 = fsub fast float %7653, %7751
  %7761 = fsub fast float %7654, %7752
  %7762 = fsub fast float %7655, %7753
  %7763 = fmul fast float %7759, %7760
  %7764 = fmul fast float %7759, %7761
  %7765 = fmul fast float %7759, %7762
  %7766 = fadd fast float %7763, %7751
  %7767 = fadd fast float %7764, %7752
  %7768 = fadd fast float %7765, %7753
  %7769 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7754)  ; FMax(a,b)
  %7770 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7755)  ; FMax(a,b)
  %7771 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7756)  ; FMax(a,b)
  %7772 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7652)  ; FMax(a,b)
  %7773 = call float @dx.op.binary.f32(i32 35, float %7651, float %7661)  ; FMax(a,b)
  %7774 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7773)  ; FMax(a,b)
  %7775 = fdiv fast float %7651, %7774
  %7776 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7777 = fdiv fast float %7661, %7774
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fcmp fast une float %7772, 1.000000e+00
  br i1 %7779, label %7780, label %7793, !dx.controlflow.hints !164

; <label>:7780                                    ; preds = %7757
  %7781 = call float @dx.op.unary.f32(i32 23, float %7772)  ; Log(value)
  %7782 = fmul fast float %7781, 0x3FE62E4300000000
  %7783 = fmul fast float %7653, %7782
  %7784 = fsub fast float -0.000000e+00, %7783
  %7785 = fmul fast float %7654, %7782
  %7786 = fsub fast float -0.000000e+00, %7785
  %7787 = fmul fast float %7655, %7782
  %7788 = fsub fast float -0.000000e+00, %7787
  %7789 = fsub fast float 1.000000e+00, %7772
  %7790 = fdiv fast float %7784, %7789
  %7791 = fdiv fast float %7786, %7789
  %7792 = fdiv fast float %7788, %7789
  br label %7793

; <label>:7793                                    ; preds = %7780, %7757
  %7794 = phi float [ %7790, %7780 ], [ %7653, %7757 ]
  %7795 = phi float [ %7791, %7780 ], [ %7654, %7757 ]
  %7796 = phi float [ %7792, %7780 ], [ %7655, %7757 ]
  %7797 = phi float [ %7782, %7780 ], [ 0.000000e+00, %7757 ]
  %7798 = fcmp fast une float %7769, 1.000000e+00
  br i1 %7798, label %7799, label %7806, !dx.controlflow.hints !165

; <label>:7799                                    ; preds = %7793
  %7800 = call float @dx.op.unary.f32(i32 23, float %7769)  ; Log(value)
  %7801 = fmul fast float %7800, 0x3FE62E4300000000
  %7802 = fmul fast float %7766, %7801
  %7803 = fsub fast float -0.000000e+00, %7802
  %7804 = fsub fast float 1.000000e+00, %7769
  %7805 = fdiv fast float %7803, %7804
  br label %7806

; <label>:7806                                    ; preds = %7799, %7793
  %7807 = phi float [ %7805, %7799 ], [ %7766, %7793 ]
  %7808 = phi float [ %7801, %7799 ], [ 0.000000e+00, %7793 ]
  %7809 = fcmp fast une float %7770, 1.000000e+00
  br i1 %7809, label %7810, label %7817, !dx.controlflow.hints !165

; <label>:7810                                    ; preds = %7806
  %7811 = call float @dx.op.unary.f32(i32 23, float %7770)  ; Log(value)
  %7812 = fmul fast float %7811, 0x3FE62E4300000000
  %7813 = fmul fast float %7767, %7812
  %7814 = fsub fast float -0.000000e+00, %7813
  %7815 = fsub fast float 1.000000e+00, %7770
  %7816 = fdiv fast float %7814, %7815
  br label %7817

; <label>:7817                                    ; preds = %7810, %7806
  %7818 = phi float [ %7816, %7810 ], [ %7767, %7806 ]
  %7819 = phi float [ %7812, %7810 ], [ 0.000000e+00, %7806 ]
  %7820 = fcmp fast une float %7771, 1.000000e+00
  br i1 %7820, label %7821, label %7828, !dx.controlflow.hints !165

; <label>:7821                                    ; preds = %7817
  %7822 = call float @dx.op.unary.f32(i32 23, float %7771)  ; Log(value)
  %7823 = fmul fast float %7822, 0x3FE62E4300000000
  %7824 = fmul fast float %7768, %7823
  %7825 = fsub fast float -0.000000e+00, %7824
  %7826 = fsub fast float 1.000000e+00, %7771
  %7827 = fdiv fast float %7825, %7826
  br label %7828

; <label>:7828                                    ; preds = %7821, %7817
  %7829 = phi float [ %7827, %7821 ], [ %7768, %7817 ]
  %7830 = phi float [ %7823, %7821 ], [ 0.000000e+00, %7817 ]
  %7831 = fmul fast float %7794, %7778
  %7832 = fmul fast float %7795, %7778
  %7833 = fmul fast float %7796, %7778
  %7834 = fmul fast float %7797, %7778
  %7835 = fmul fast float %7807, %7776
  %7836 = fmul fast float %7818, %7776
  %7837 = fmul fast float %7829, %7776
  %7838 = fmul fast float %7808, %7776
  %7839 = fmul fast float %7819, %7776
  %7840 = fmul fast float %7830, %7776
  %7841 = fadd fast float %7835, %7831
  %7842 = fadd fast float %7836, %7832
  %7843 = fadd fast float %7837, %7833
  %7844 = fadd fast float %7838, %7834
  %7845 = fadd fast float %7839, %7834
  %7846 = fadd fast float %7840, %7834
  %7847 = fcmp fast une float %7844, 0.000000e+00
  br i1 %7847, label %7848, label %7855, !dx.controlflow.hints !166

; <label>:7848                                    ; preds = %7828
  %7849 = fmul fast float %7844, 0x3FF7154760000000
  %7850 = call float @dx.op.unary.f32(i32 21, float %7849)  ; Exp(value)
  %7851 = fsub fast float 1.000000e+00, %7850
  %7852 = fmul fast float %7841, %7851
  %7853 = fsub fast float -0.000000e+00, %7852
  %7854 = fdiv fast float %7853, %7844
  br label %7855

; <label>:7855                                    ; preds = %7848, %7828
  %7856 = phi float [ %7850, %7848 ], [ 1.000000e+00, %7828 ]
  %7857 = phi float [ %7854, %7848 ], [ %7841, %7828 ]
  %7858 = fcmp fast une float %7845, 0.000000e+00
  br i1 %7858, label %7859, label %7866, !dx.controlflow.hints !166

; <label>:7859                                    ; preds = %7855
  %7860 = fmul fast float %7845, 0x3FF7154760000000
  %7861 = call float @dx.op.unary.f32(i32 21, float %7860)  ; Exp(value)
  %7862 = fsub fast float 1.000000e+00, %7861
  %7863 = fmul fast float %7842, %7862
  %7864 = fsub fast float -0.000000e+00, %7863
  %7865 = fdiv fast float %7864, %7845
  br label %7866

; <label>:7866                                    ; preds = %7859, %7855
  %7867 = phi float [ %7861, %7859 ], [ 1.000000e+00, %7855 ]
  %7868 = phi float [ %7865, %7859 ], [ %7842, %7855 ]
  %7869 = fcmp fast une float %7846, 0.000000e+00
  br i1 %7869, label %7870, label %7877, !dx.controlflow.hints !166

; <label>:7870                                    ; preds = %7866
  %7871 = fmul fast float %7846, 0x3FF7154760000000
  %7872 = call float @dx.op.unary.f32(i32 21, float %7871)  ; Exp(value)
  %7873 = fsub fast float 1.000000e+00, %7872
  %7874 = fmul fast float %7843, %7873
  %7875 = fsub fast float -0.000000e+00, %7874
  %7876 = fdiv fast float %7875, %7846
  br label %7877

; <label>:7877                                    ; preds = %7870, %7866
  %7878 = phi float [ %7872, %7870 ], [ 1.000000e+00, %7866 ]
  %7879 = phi float [ %7876, %7870 ], [ %7843, %7866 ]
  %7880 = fcmp fast ogt float %7776, %7778
  br i1 %7880, label %7881, label %7901

; <label>:7881                                    ; preds = %7877
  %7882 = fsub fast float 1.000000e+00, %7778
  %7883 = fmul fast float %7794, %7882
  %7884 = fmul fast float %7795, %7882
  %7885 = fmul fast float %7796, %7882
  %7886 = fmul fast float %7797, %7882
  %7887 = fcmp fast une float %7886, 0.000000e+00
  br i1 %7887, label %7888, label %7939, !dx.controlflow.hints !167

; <label>:7888                                    ; preds = %7881
  %7889 = fmul fast float %7886, 0x3FF7154760000000
  %7890 = call float @dx.op.unary.f32(i32 21, float %7889)  ; Exp(value)
  %7891 = fsub fast float 1.000000e+00, %7890
  %7892 = fmul fast float %7883, %7891
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fmul fast float %7884, %7891
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fmul fast float %7885, %7891
  %7897 = fsub fast float -0.000000e+00, %7896
  %7898 = fdiv fast float %7893, %7886
  %7899 = fdiv fast float %7895, %7886
  %7900 = fdiv fast float %7897, %7886
  br label %7939

; <label>:7901                                    ; preds = %7877
  %7902 = fsub fast float 1.000000e+00, %7776
  %7903 = fmul fast float %7807, %7902
  %7904 = fmul fast float %7818, %7902
  %7905 = fmul fast float %7829, %7902
  %7906 = fmul fast float %7808, %7902
  %7907 = fmul fast float %7819, %7902
  %7908 = fmul fast float %7830, %7902
  %7909 = fcmp fast une float %7906, 0.000000e+00
  br i1 %7909, label %7910, label %7917, !dx.controlflow.hints !166

; <label>:7910                                    ; preds = %7901
  %7911 = fmul fast float %7906, 0x3FF7154760000000
  %7912 = call float @dx.op.unary.f32(i32 21, float %7911)  ; Exp(value)
  %7913 = fsub fast float 1.000000e+00, %7912
  %7914 = fmul fast float %7903, %7913
  %7915 = fsub fast float -0.000000e+00, %7914
  %7916 = fdiv fast float %7915, %7906
  br label %7917

; <label>:7917                                    ; preds = %7910, %7901
  %7918 = phi float [ %7916, %7910 ], [ %7903, %7901 ]
  %7919 = phi float [ %7912, %7910 ], [ 1.000000e+00, %7901 ]
  %7920 = fcmp fast une float %7907, 0.000000e+00
  br i1 %7920, label %7921, label %7928, !dx.controlflow.hints !166

; <label>:7921                                    ; preds = %7917
  %7922 = fmul fast float %7907, 0x3FF7154760000000
  %7923 = call float @dx.op.unary.f32(i32 21, float %7922)  ; Exp(value)
  %7924 = fsub fast float 1.000000e+00, %7923
  %7925 = fmul fast float %7904, %7924
  %7926 = fsub fast float -0.000000e+00, %7925
  %7927 = fdiv fast float %7926, %7907
  br label %7928

; <label>:7928                                    ; preds = %7921, %7917
  %7929 = phi float [ %7927, %7921 ], [ %7904, %7917 ]
  %7930 = phi float [ %7923, %7921 ], [ 1.000000e+00, %7917 ]
  %7931 = fcmp fast une float %7908, 0.000000e+00
  br i1 %7931, label %7932, label %7939, !dx.controlflow.hints !166

; <label>:7932                                    ; preds = %7928
  %7933 = fmul fast float %7908, 0x3FF7154760000000
  %7934 = call float @dx.op.unary.f32(i32 21, float %7933)  ; Exp(value)
  %7935 = fsub fast float 1.000000e+00, %7934
  %7936 = fmul fast float %7905, %7935
  %7937 = fsub fast float -0.000000e+00, %7936
  %7938 = fdiv fast float %7937, %7908
  br label %7939

; <label>:7939                                    ; preds = %7932, %7928, %7888, %7881
  %7940 = phi float [ %7938, %7932 ], [ %7900, %7888 ], [ %7885, %7881 ], [ %7905, %7928 ]
  %7941 = phi float [ %7929, %7932 ], [ %7899, %7888 ], [ %7884, %7881 ], [ %7929, %7928 ]
  %7942 = phi float [ %7918, %7932 ], [ %7898, %7888 ], [ %7883, %7881 ], [ %7918, %7928 ]
  %7943 = phi float [ %7934, %7932 ], [ %7890, %7888 ], [ 1.000000e+00, %7881 ], [ 1.000000e+00, %7928 ]
  %7944 = phi float [ %7930, %7932 ], [ %7890, %7888 ], [ 1.000000e+00, %7881 ], [ %7930, %7928 ]
  %7945 = phi float [ %7919, %7932 ], [ %7890, %7888 ], [ 1.000000e+00, %7881 ], [ %7919, %7928 ]
  %7946 = fmul fast float %7945, %7857
  %7947 = fmul fast float %7944, %7868
  %7948 = fmul fast float %7943, %7879
  %7949 = fadd fast float %7946, %7942
  %7950 = fadd fast float %7947, %7941
  %7951 = fadd fast float %7948, %7940
  %7952 = fmul fast float %7945, %7856
  %7953 = fmul fast float %7944, %7867
  %7954 = fmul fast float %7943, %7878
  br label %7955

; <label>:7955                                    ; preds = %7939, %7750
  %7956 = phi float [ %7954, %7939 ], [ %7756, %7750 ]
  %7957 = phi float [ %7953, %7939 ], [ %7755, %7750 ]
  %7958 = phi float [ %7952, %7939 ], [ %7754, %7750 ]
  %7959 = phi float [ %7951, %7939 ], [ %7753, %7750 ]
  %7960 = phi float [ %7950, %7939 ], [ %7752, %7750 ]
  %7961 = phi float [ %7949, %7939 ], [ %7751, %7750 ]
  %7962 = fmul fast float %7961, %6907
  %7963 = fmul fast float %7960, %6907
  %7964 = fmul fast float %7959, %6907
  %7965 = fmul fast float %7958, %7198
  %7966 = call float @dx.op.dot3.f32(i32 55, float %7958, float %7957, float %7956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7967 = call float @dx.op.dot3.f32(i32 55, float %7962, float %7963, float %7964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7968 = select i1 %222, float %7966, float %7958
  %7969 = select i1 %222, float %7966, float %7957
  %7970 = select i1 %222, float 1.000000e+00, float %7956
  %7971 = select i1 %222, float %7967, float %7962
  %7972 = select i1 %222, float 0.000000e+00, float %7963
  %7973 = select i1 %222, float 0.000000e+00, float %7964
  %7974 = fmul fast float %7968, %7192
  %7975 = fmul fast float %7969, %7193
  %7976 = fmul fast float %7970, %7194
  %7977 = fadd fast float %7974, %7971
  %7978 = fadd fast float %7975, %7972
  %7979 = fadd fast float %7973, %7976
  %7980 = fmul fast float %7968, %7195
  %7981 = fmul fast float %7969, %7196
  %7982 = fmul fast float %7970, %7197
  %7983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.i32 %7983, 0
  %7985 = icmp eq i32 %7984, 0
  br i1 %7985, label %8353, label %7986, !dx.controlflow.hints !168

; <label>:7986                                    ; preds = %7955
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %7989 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7990 = fmul fast float %7988, %101
  %7991 = fmul fast float %7989, %102
  %7992 = fmul fast float %7990, 2.000000e+00
  %7993 = fmul fast float %7991, 2.000000e+00
  %7994 = fsub fast float 1.000000e+00, %7992
  %7995 = fsub fast float 1.000000e+00, %7993
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7998 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %7999 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %8000 = fmul fast float %7994, %7997
  %8001 = fmul fast float %7994, %7998
  %8002 = fmul fast float %7994, %7999
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.CBufRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8007 = fmul fast float %7995, %8004
  %8008 = fmul fast float %7995, %8005
  %8009 = fmul fast float %7995, %8006
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.CBufRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8014 = fadd fast float %8007, %8011
  %8015 = fadd fast float %8014, %8000
  %8016 = fadd fast float %8008, %8012
  %8017 = fadd fast float %8016, %8001
  %8018 = fadd fast float %8009, %8013
  %8019 = fadd fast float %8018, %8002
  %8020 = fmul fast float %8015, %7191
  %8021 = fmul fast float %8017, %7191
  %8022 = fmul fast float %8019, %7191
  %8023 = fmul fast float %8020, %8020
  %8024 = fmul fast float %8021, %8021
  %8025 = fadd fast float %8023, %8024
  %8026 = fmul fast float %8022, %8022
  %8027 = fadd fast float %8025, %8026
  %8028 = call float @dx.op.unary.f32(i32 24, float %8027)  ; Sqrt(value)
  %8029 = extractvalue %dx.types.CBufRet.f32 %6918, 0
  %8030 = fsub fast float %8028, %8029
  %8031 = extractvalue %dx.types.CBufRet.f32 %6918, 2
  %8032 = fmul fast float %8030, %8031
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fadd fast float %8033, -5.000000e-01
  %8035 = fmul fast float %8034, 2.000000e+00
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 2
  %8038 = call float @dx.op.binary.f32(i32 36, float %8037, float %8035)  ; FMin(a,b)
  %8039 = fsub fast float -0.000000e+00, %8037
  %8040 = fcmp fast ogt float %8038, %8039
  br i1 %8040, label %8041, label %8353, !dx.controlflow.hints !169

; <label>:8041                                    ; preds = %7986
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 3
  %8044 = fcmp fast ogt float %8043, 0.000000e+00
  br i1 %8044, label %8045, label %8120, !dx.controlflow.hints !170

; <label>:8045                                    ; preds = %8041
  %8046 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8047 = extractvalue %dx.types.Dimensions %8046, 0
  %8048 = sitofp i32 %8047 to float
  %8049 = extractvalue %dx.types.Dimensions %8046, 1
  %8050 = sitofp i32 %8049 to float
  %8051 = fmul fast float %7990, %8048
  %8052 = fmul fast float %7991, %8050
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 1
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = fptoui float %8055 to i32
  %8057 = fptoui float %8051 to i32
  %8058 = fptoui float %8052 to i32
  %8059 = and i32 %8056, 31
  %8060 = lshr i32 %8057, %8059
  %8061 = lshr i32 %8058, %8059
  %8062 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8056, i32 %8060, i32 %8061, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = fcmp fast olt float %8063, -1.000000e+00
  %8065 = fcmp fast ogt float %8063, -1.000000e+00
  %8066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8066, 1
  %8068 = select i1 %8065, float %8067, float 1.000000e+00
  %8069 = fadd fast float %8063, 1.000000e+00
  %8070 = fmul fast float %8068, %8069
  %8071 = call float @dx.op.unary.f32(i32 6, float %8070)  ; FAbs(value)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8066, 3
  %8073 = fcmp fast oge float %8071, %8072
  %8074 = select i1 %8073, float 0x4197782600000000, float %8071
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8079 = select i1 %8064, float %8076, float %7997
  %8080 = select i1 %8064, float %8077, float %7998
  %8081 = select i1 %8064, float %8078, float %7999
  %8082 = fmul fast float %8079, %7994
  %8083 = fmul fast float %8080, %7994
  %8084 = fmul fast float %8081, %7994
  %8085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8086 = extractvalue %dx.types.CBufRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.CBufRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.CBufRet.f32 %8085, 2
  %8089 = select i1 %8064, float %8086, float %8004
  %8090 = select i1 %8064, float %8087, float %8005
  %8091 = select i1 %8064, float %8088, float %8006
  %8092 = fmul fast float %8089, %7995
  %8093 = fmul fast float %8090, %7995
  %8094 = fmul fast float %8091, %7995
  %8095 = fadd fast float %8092, %8082
  %8096 = fadd fast float %8093, %8083
  %8097 = fadd fast float %8094, %8084
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = select i1 %8064, float %8099, float %8011
  %8103 = select i1 %8064, float %8100, float %8012
  %8104 = select i1 %8064, float %8101, float %8013
  %8105 = fadd fast float %8095, %8102
  %8106 = fadd fast float %8096, %8103
  %8107 = fadd fast float %8097, %8104
  %8108 = fmul fast float %8105, %8074
  %8109 = fmul fast float %8106, %8074
  %8110 = fmul fast float %8107, %8074
  %8111 = fmul fast float %8108, %8108
  %8112 = fmul fast float %8109, %8109
  %8113 = fadd fast float %8111, %8112
  %8114 = fmul fast float %8110, %8110
  %8115 = fadd fast float %8113, %8114
  %8116 = call float @dx.op.unary.f32(i32 24, float %8115)  ; Sqrt(value)
  %8117 = fsub fast float %8116, %8029
  %8118 = fmul fast float %8117, %8031
  %8119 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  br label %8120

; <label>:8120                                    ; preds = %8045, %8041
  %8121 = phi float [ %8119, %8045 ], [ 1.000000e+00, %8041 ]
  %8122 = fmul fast float %8038, 5.000000e-01
  %8123 = fadd fast float %8122, 5.000000e-01
  %8124 = call float @dx.op.unary.f32(i32 22, float %8123)  ; Frc(value)
  %8125 = call float @dx.op.unary.f32(i32 27, float %8124)  ; Round_ni(value)
  %8126 = call float @dx.op.unary.f32(i32 22, float %8124)  ; Frc(value)
  %8127 = fmul fast float %8126, 2.000000e+00
  %8128 = fadd fast float %8127, -1.000000e+00
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7990, float %7991, float %8125, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = extractvalue %dx.types.ResRet.f32 %8129, 3
  %8134 = fadd fast float %8130, -5.000000e-01
  %8135 = fadd fast float %8132, -5.000000e-01
  %8136 = fmul fast float %8134, 0xBFD5555560000000
  %8137 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8135, float %8136)  ; FMad(a,b,c)
  %8138 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8131, float 0.000000e+00)  ; FMad(a,b,c)
  %8139 = fadd fast float %8138, %8133
  %8140 = fmul fast float %8134, -7.500000e-01
  %8141 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8135, float %8140)  ; FMad(a,b,c)
  %8142 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8131, float 0.000000e+00)  ; FMad(a,b,c)
  %8143 = fadd fast float %8142, %8133
  %8144 = call float @dx.op.binary.f32(i32 35, float %8137, float -1.000000e+00)  ; FMax(a,b)
  %8145 = call float @dx.op.binary.f32(i32 35, float %8139, float -1.000000e+00)  ; FMax(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8141, float -1.000000e+00)  ; FMax(a,b)
  %8147 = call float @dx.op.binary.f32(i32 35, float %8143, float -1.000000e+00)  ; FMax(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8144, float 1.000000e+00)  ; FMin(a,b)
  %8149 = call float @dx.op.binary.f32(i32 36, float %8145, float 1.000000e+00)  ; FMin(a,b)
  %8150 = call float @dx.op.binary.f32(i32 36, float %8146, float 1.000000e+00)  ; FMin(a,b)
  %8151 = call float @dx.op.binary.f32(i32 36, float %8147, float 1.000000e+00)  ; FMin(a,b)
  %8152 = fcmp fast olt float %8148, 0x3FEFFF8020000000
  br i1 %8152, label %8153, label %8268, !dx.controlflow.hints !171

; <label>:8153                                    ; preds = %8120
  %8154 = extractvalue %dx.types.CBufRet.f32 %8036, 3
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8155, 2
  %8159 = extractvalue %dx.types.CBufRet.f32 %8155, 3
  %8160 = fsub fast float %8156, %8148
  %8161 = fsub fast float %8157, %8149
  %8162 = fsub fast float %8158, %8150
  %8163 = fsub fast float %8159, %8151
  %8164 = fmul fast float %8160, %8154
  %8165 = fmul fast float %8161, %8154
  %8166 = fmul fast float %8162, %8154
  %8167 = fmul fast float %8163, %8154
  %8168 = fadd fast float %8164, %8148
  %8169 = fadd fast float %8165, %8149
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = fadd fast float %8166, %8150
  %8172 = fadd fast float %8167, %8151
  %8173 = fmul fast float %8168, %8168
  %8174 = fsub fast float %8169, %8173
  %8175 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8174)  ; FMax(a,b)
  %8176 = fdiv fast float 1.000000e+00, %8175
  %8177 = fmul fast float %8169, %8168
  %8178 = fsub fast float %8171, %8177
  %8179 = fsub fast float %8128, %8168
  %8180 = fmul fast float %8128, %8128
  %8181 = fsub fast float %8180, %8169
  %8182 = fmul fast float %8179, %8176
  %8183 = fmul fast float %8182, %8178
  %8184 = fsub fast float %8181, %8183
  %8185 = fmul fast float %8169, %8169
  %8186 = fsub fast float %8172, %8185
  %8187 = fmul fast float %8178, %8178
  %8188 = fmul fast float %8187, %8176
  %8189 = fsub fast float %8186, %8188
  %8190 = fdiv fast float %8184, %8189
  %8191 = fmul fast float %8178, %8190
  %8192 = fsub fast float %8179, %8191
  %8193 = fmul fast float %8192, %8176
  %8194 = fmul fast float %8193, %8168
  %8195 = fsub fast float 1.000000e+00, %8194
  %8196 = fmul fast float %8169, %8190
  %8197 = fsub fast float %8195, %8196
  %8198 = fmul fast float %8193, %8193
  %8199 = fmul fast float %8190, 4.000000e+00
  %8200 = fmul fast float %8199, %8197
  %8201 = fsub fast float %8198, %8200
  %8202 = call float @dx.op.unary.f32(i32 24, float %8201)  ; Sqrt(value)
  %8203 = fcmp fast oge float %8193, 0.000000e+00
  %8204 = fsub fast float -0.000000e+00, %8202
  %8205 = select i1 %8203, float %8204, float %8202
  %8206 = fsub fast float %8205, %8193
  %8207 = fdiv fast float %8206, %8190
  %8208 = fdiv fast float %8197, %8206
  %8209 = fmul fast float %8207, 5.000000e-01
  %8210 = fmul fast float %8208, 2.000000e+00
  %8211 = select i1 %8203, float %8209, float %8210
  %8212 = select i1 %8203, float %8210, float %8209
  %8213 = call float @dx.op.binary.f32(i32 35, float %8211, float %8212)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8211, float %8212)  ; FMin(a,b)
  %8215 = fcmp fast ogt float %8128, %8214
  br i1 %8215, label %8216, label %8226

; <label>:8216                                    ; preds = %8153
  %8217 = fsub fast float %8128, %8214
  %8218 = fsub fast float %8213, %8214
  %8219 = fmul fast float %8217, %8218
  %8220 = fmul fast float %8213, %8128
  %8221 = fadd fast float %8213, %8128
  %8222 = fmul fast float %8221, %8168
  %8223 = fadd fast float %8220, %8169
  %8224 = fsub fast float %8223, %8222
  %8225 = fdiv fast float %8224, %8219
  br label %8226

; <label>:8226                                    ; preds = %8216, %8153
  %8227 = phi float [ %8225, %8216 ], [ 0.000000e+00, %8153 ]
  %8228 = fcmp fast ogt float %8128, %8213
  %8229 = fsub fast float %8128, %8213
  br i1 %8228, label %8230, label %8240

; <label>:8230                                    ; preds = %8226
  %8231 = fsub fast float %8213, %8214
  %8232 = fmul fast float %8231, %8229
  %8233 = fmul fast float %8214, %8128
  %8234 = fadd fast float %8214, %8128
  %8235 = fmul fast float %8234, %8168
  %8236 = fsub fast float %8170, %8233
  %8237 = fadd fast float %8236, %8235
  %8238 = fdiv fast float %8237, %8232
  %8239 = fadd fast float %8238, %8227
  br label %8240

; <label>:8240                                    ; preds = %8230, %8226
  %8241 = phi float [ %8239, %8230 ], [ %8227, %8226 ]
  %8242 = fsub fast float %8128, %8214
  %8243 = fmul fast float %8242, %8229
  %8244 = fmul fast float %8214, %8213
  %8245 = fadd fast float %8214, %8213
  %8246 = fmul fast float %8245, %8168
  %8247 = fadd fast float %8244, %8169
  %8248 = fsub fast float %8247, %8246
  %8249 = fdiv fast float %8248, %8243
  %8250 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8251 = fcmp fast oeq float %6919, 0.000000e+00
  %8252 = extractvalue %dx.types.CBufRet.f32 %8036, 0
  %8253 = fcmp fast oeq float %8252, 0.000000e+00
  %8254 = or i1 %8251, %8253
  %8255 = fmul fast float %8252, 2.000000e+00
  %8256 = fadd fast float %8037, %8038
  %8257 = fdiv fast float %8256, %8255
  %8258 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8259 = fmul fast float %8258, 2.000000e+00
  %8260 = fsub fast float 3.000000e+00, %8259
  %8261 = fmul fast float %8258, %8258
  %8262 = fmul fast float %8261, %8260
  %8263 = select i1 %8254, float 1.000000e+00, float %8262
  %8264 = fmul fast float %8249, %6919
  %8265 = fadd fast float %8250, %8264
  %8266 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8267 = fmul fast float %8263, %8266
  br label %8268

; <label>:8268                                    ; preds = %8240, %8120
  %8269 = phi float [ %8267, %8240 ], [ 0.000000e+00, %8120 ]
  %8270 = fsub fast float 1.000000e+00, %8269
  %8271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7990, float %7991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8272 = extractvalue %dx.types.ResRet.f32 %8271, 0
  %8273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.i32 %8273, 2
  %8275 = icmp eq i32 %8274, 0
  br i1 %8275, label %8281, label %8276

; <label>:8276                                    ; preds = %8268
  %8277 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8278 = fadd fast float %8272, -1.000000e+00
  %8279 = fmul fast float %8277, %8278
  %8280 = fadd fast float %8279, 1.000000e+00
  br label %8281

; <label>:8281                                    ; preds = %8276, %8268
  %8282 = phi float [ %8280, %8276 ], [ %8270, %8268 ]
  br i1 %8044, label %8283, label %8301

; <label>:8283                                    ; preds = %8281
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8286 = fsub fast float %8121, %8285
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = fsub fast float %8121, %8043
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fsub fast float %8287, %8289
  %8291 = fsub fast float %8123, %8289
  %8292 = fdiv fast float %8291, %8290
  %8293 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8294 = fmul fast float %8293, 2.000000e+00
  %8295 = fsub fast float 3.000000e+00, %8294
  %8296 = fsub fast float %8272, %8282
  %8297 = fmul fast float %8293, %8293
  %8298 = fmul fast float %8297, %8296
  %8299 = fmul fast float %8298, %8295
  %8300 = fadd fast float %8299, %8282
  br label %8301

; <label>:8301                                    ; preds = %8283, %8281
  %8302 = phi float [ %8300, %8283 ], [ %8282, %8281 ]
  %8303 = call float @dx.op.binary.f32(i32 35, float %8272, float %8302)  ; FMax(a,b)
  %8304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.i32 %8304, 2
  %8306 = and i32 %8305, 1
  %8307 = icmp eq i32 %8306, 0
  %8308 = fcmp fast une float %8303, 1.000000e+00
  %8309 = and i1 %8308, %8307
  br i1 %8309, label %8310, label %8329

; <label>:8310                                    ; preds = %8301
  %8311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7990, float %7991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8312 = extractvalue %dx.types.ResRet.f32 %8311, 0
  %8313 = extractvalue %dx.types.ResRet.f32 %8311, 1
  %8314 = extractvalue %dx.types.ResRet.f32 %8311, 2
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 1
  %8317 = fmul fast float %8316, %8312
  %8318 = fmul fast float %8316, %8313
  %8319 = fmul fast float %8316, %8314
  %8320 = fcmp fast ogt float %8272, 0x3FEFFF2E40000000
  %8321 = fsub fast float 1.000000e+00, %8303
  %8322 = fsub fast float 1.000000e+00, %8272
  %8323 = fdiv fast float %8321, %8322
  %8324 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8325 = select i1 %8320, float 0.000000e+00, float %8324
  %8326 = fmul fast float %8317, %8325
  %8327 = fmul fast float %8318, %8325
  %8328 = fmul fast float %8319, %8325
  br label %8329

; <label>:8329                                    ; preds = %8310, %8301
  %8330 = phi float [ 0.000000e+00, %8301 ], [ %8326, %8310 ]
  %8331 = phi float [ 0.000000e+00, %8301 ], [ %8327, %8310 ]
  %8332 = phi float [ 0.000000e+00, %8301 ], [ %8328, %8310 ]
  %8333 = fmul fast float %8330, %6907
  %8334 = fmul fast float %8331, %6907
  %8335 = fmul fast float %8332, %6907
  %8336 = fmul fast float %8303, %7965
  %8337 = call float @dx.op.dot3.f32(i32 55, float %8303, float %8303, float %8303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8338 = call float @dx.op.dot3.f32(i32 55, float %8333, float %8334, float %8335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8339 = select i1 %222, float %8337, float %8303
  %8340 = select i1 %222, float 1.000000e+00, float %8303
  %8341 = select i1 %222, float %8338, float %8333
  %8342 = select i1 %222, float 0.000000e+00, float %8334
  %8343 = select i1 %222, float 0.000000e+00, float %8335
  %8344 = fmul fast float %8339, %7977
  %8345 = fmul fast float %8339, %7978
  %8346 = fmul fast float %8340, %7979
  %8347 = fadd fast float %8344, %8341
  %8348 = fadd fast float %8345, %8342
  %8349 = fadd fast float %8343, %8346
  %8350 = fmul fast float %8339, %7980
  %8351 = fmul fast float %8339, %7981
  %8352 = fmul fast float %8340, %7982
  br label %8353

; <label>:8353                                    ; preds = %8329, %7986, %7955, %7187
  %8354 = phi float [ %7192, %7187 ], [ %7977, %7955 ], [ %8347, %8329 ], [ %7977, %7986 ]
  %8355 = phi float [ %7193, %7187 ], [ %7978, %7955 ], [ %8348, %8329 ], [ %7978, %7986 ]
  %8356 = phi float [ %7194, %7187 ], [ %7979, %7955 ], [ %8349, %8329 ], [ %7979, %7986 ]
  %8357 = phi float [ %7195, %7187 ], [ %7980, %7955 ], [ %8350, %8329 ], [ %7980, %7986 ]
  %8358 = phi float [ %7196, %7187 ], [ %7981, %7955 ], [ %8351, %8329 ], [ %7981, %7986 ]
  %8359 = phi float [ %7197, %7187 ], [ %7982, %7955 ], [ %8352, %8329 ], [ %7982, %7986 ]
  %8360 = phi float [ %7198, %7187 ], [ %7965, %7955 ], [ %8336, %8329 ], [ %7965, %7986 ]
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8364 = fmul fast float %8362, %101
  %8365 = fmul fast float %8363, %102
  %8366 = call float @dx.op.unary.f32(i32 7, float %8364)  ; Saturate(value)
  %8367 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8368 = select i1 %6929, i32 2, i32 0
  %8369 = or i32 %8368, 1
  %8370 = uitofp i32 %8369 to float
  %8371 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8366, float %8367, float %8370, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = extractvalue %dx.types.ResRet.f32 %8371, 3
  %8376 = add nuw nsw i32 %8368, 2
  %8377 = uitofp i32 %8376 to float
  %8378 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8366, float %8367, float %8377, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = extractvalue %dx.types.ResRet.f32 %8378, 3
  %8383 = call float @dx.op.binary.f32(i32 35, float %8373, float %8374)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 35, float %8372, float %8383)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8384, float %8375)  ; FMax(a,b)
  %8386 = call float @dx.op.binary.f32(i32 36, float %8380, float %8381)  ; FMin(a,b)
  %8387 = call float @dx.op.binary.f32(i32 36, float %8379, float %8386)  ; FMin(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8387, float %8382)  ; FMin(a,b)
  %8389 = fmul fast float %8385, 2.550000e+02
  %8390 = fadd fast float %8389, 0x3F70101020000000
  %8391 = fptoui float %8390 to i32
  %8392 = fmul fast float %8388, 2.550000e+02
  %8393 = fadd fast float %8392, 0x3F70101020000000
  %8394 = fptoui float %8393 to i32
  %8395 = icmp ult i32 %8391, %8394
  br i1 %8395, label %8396, label %8565

; <label>:8396                                    ; preds = %8353
  %8397 = fcmp fast ogt float %91, 9.843750e-01
  %8398 = fadd fast float %7191, -4.000000e+00
  %8399 = select i1 %8397, float -4.000000e+00, float %8398
  %8400 = call float @dx.op.binary.f32(i32 35, float %8399, float 0.000000e+00)  ; FMax(a,b)
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 0
  %8403 = fadd fast float %8402, %8400
  %8404 = extractvalue %dx.types.CBufRet.f32 %8401, 2
  %8405 = fmul fast float %8403, %8404
  %8406 = call float @dx.op.unary.f32(i32 23, float %8405)  ; Log(value)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8408 = fmul fast float %8407, %8406
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8411 = fmul fast float %8408, %8410
  %8412 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8413 = uitofp i32 %8391 to float
  %8414 = uitofp i32 %8394 to float
  %8415 = fadd fast float %8413, 5.000000e-01
  %8416 = fadd fast float %8414, 5.000000e-01
  %8417 = fmul fast float %8410, %8415
  %8418 = fmul fast float %8410, %8416
  %8419 = fadd fast float %8417, 0x3F0FFB4800000000
  %8420 = fadd fast float %8418, 0xBF0FFB4800000000
  %8421 = call float @dx.op.binary.f32(i32 35, float %8412, float %8419)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 36, float %8421, float %8420)  ; FMin(a,b)
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 1
  %8425 = extractvalue %dx.types.CBufRet.f32 %8423, 2
  %8426 = extractvalue %dx.types.CBufRet.f32 %8423, 0
  %8427 = select i1 %6929, float %8426, float 0.000000e+00
  %8428 = fmul fast float %8424, %8422
  %8429 = fadd fast float %8427, %8428
  %8430 = fadd fast float %8427, %8425
  %8431 = fsub fast float %8424, %8425
  %8432 = fadd fast float %8431, %8427
  %8433 = call float @dx.op.binary.f32(i32 35, float %8429, float %8430)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 36, float %8433, float %8432)  ; FMin(a,b)
  %8435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8366, float %8367, float %8434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8436 = extractvalue %dx.types.ResRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.ResRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.ResRet.f32 %8435, 2
  %8439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.i32 %8439, 0
  %8441 = extractvalue %dx.types.CBufRet.i32 %8439, 1
  %8442 = uitofp i32 %8440 to float
  %8443 = uitofp i32 %8441 to float
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8447 = fmul fast float %8442, %8366
  %8448 = fmul fast float %8443, %8367
  %8449 = fadd fast float %8447, -5.000000e-01
  %8450 = fadd fast float %8448, -5.000000e-01
  %8451 = call float @dx.op.unary.f32(i32 22, float %8449)  ; Frc(value)
  %8452 = call float @dx.op.unary.f32(i32 22, float %8450)  ; Frc(value)
  %8453 = fmul fast float %8451, %8451
  %8454 = fmul fast float %8453, %8451
  %8455 = fsub fast float 3.000000e+00, %8451
  %8456 = fmul fast float %8453, %8455
  %8457 = fmul fast float %8451, 3.000000e+00
  %8458 = fmul fast float %8454, 3.000000e+00
  %8459 = fmul fast float %8453, 6.000000e+00
  %8460 = fsub fast float %8458, %8459
  %8461 = fadd fast float %8460, 4.000000e+00
  %8462 = fmul fast float %8461, 0x3FC5555560000000
  %8463 = fmul fast float %8454, -3.000000e+00
  %8464 = fadd fast float %8453, %8451
  %8465 = fmul fast float %8464, 3.000000e+00
  %8466 = fadd fast float %8463, 1.000000e+00
  %8467 = fadd fast float %8466, %8465
  %8468 = fmul fast float %8454, 0x3FC5555560000000
  %8469 = fmul fast float %8452, %8452
  %8470 = fmul fast float %8469, %8452
  %8471 = fsub fast float 3.000000e+00, %8452
  %8472 = fmul fast float %8469, %8471
  %8473 = fmul fast float %8452, 3.000000e+00
  %8474 = fmul fast float %8470, 3.000000e+00
  %8475 = fmul fast float %8469, 6.000000e+00
  %8476 = fsub fast float %8474, %8475
  %8477 = fadd fast float %8476, 4.000000e+00
  %8478 = fmul fast float %8477, 0x3FC5555560000000
  %8479 = fmul fast float %8470, -3.000000e+00
  %8480 = fadd fast float %8469, %8452
  %8481 = fmul fast float %8480, 3.000000e+00
  %8482 = fadd fast float %8479, 1.000000e+00
  %8483 = fadd fast float %8482, %8481
  %8484 = fmul fast float %8470, 0x3FC5555560000000
  %8485 = fadd fast float %8451, 1.000000e+00
  %8486 = fsub fast float 1.000000e+00, %8457
  %8487 = fadd fast float %8486, %8456
  %8488 = fadd fast float %8487, %8461
  %8489 = fmul fast float %8488, 0x3FC5555560000000
  %8490 = fdiv fast float %8462, %8489
  %8491 = fsub fast float %8485, %8490
  %8492 = fsub fast float 1.000000e+00, %8451
  %8493 = fadd fast float %8467, %8454
  %8494 = fmul fast float %8493, 0x3FC5555560000000
  %8495 = fdiv fast float %8468, %8494
  %8496 = fadd fast float %8492, %8495
  %8497 = fadd fast float %8452, 1.000000e+00
  %8498 = fsub fast float 1.000000e+00, %8473
  %8499 = fadd fast float %8498, %8472
  %8500 = fadd fast float %8499, %8477
  %8501 = fmul fast float %8500, 0x3FC5555560000000
  %8502 = fdiv fast float %8478, %8501
  %8503 = fsub fast float %8497, %8502
  %8504 = fsub fast float 1.000000e+00, %8452
  %8505 = fadd fast float %8483, %8470
  %8506 = fmul fast float %8505, 0x3FC5555560000000
  %8507 = fdiv fast float %8484, %8506
  %8508 = fadd fast float %8507, %8504
  %8509 = fmul fast float %8491, %8445
  %8510 = fsub fast float %8366, %8509
  %8511 = fmul fast float %8496, %8445
  %8512 = fadd fast float %8511, %8366
  %8513 = fmul fast float %8508, %8446
  %8514 = fadd fast float %8513, %8367
  %8515 = fmul fast float %8503, %8446
  %8516 = fsub fast float %8367, %8515
  %8517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8510, float %8516, float %8434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8518 = extractvalue %dx.types.ResRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.ResRet.f32 %8517, 1
  %8520 = extractvalue %dx.types.ResRet.f32 %8517, 2
  %8521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8512, float %8516, float %8434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8522 = extractvalue %dx.types.ResRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.ResRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.ResRet.f32 %8521, 2
  %8525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8510, float %8514, float %8434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8526 = extractvalue %dx.types.ResRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.ResRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.ResRet.f32 %8525, 2
  %8529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8512, float %8514, float %8434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8533 = fsub fast float %8526, %8518
  %8534 = fsub fast float %8527, %8519
  %8535 = fsub fast float %8528, %8520
  %8536 = fmul fast float %8533, %8506
  %8537 = fmul fast float %8534, %8506
  %8538 = fmul fast float %8535, %8506
  %8539 = fadd fast float %8536, %8518
  %8540 = fadd fast float %8537, %8519
  %8541 = fadd fast float %8538, %8520
  %8542 = fsub fast float %8530, %8522
  %8543 = fsub fast float %8531, %8523
  %8544 = fsub fast float %8532, %8524
  %8545 = fmul fast float %8542, %8506
  %8546 = fmul fast float %8543, %8506
  %8547 = fmul fast float %8544, %8506
  %8548 = fsub fast float %8522, %8539
  %8549 = fadd fast float %8548, %8545
  %8550 = fsub fast float %8523, %8540
  %8551 = fadd fast float %8550, %8546
  %8552 = fsub fast float %8524, %8541
  %8553 = fadd fast float %8552, %8547
  %8554 = fmul fast float %8549, %8494
  %8555 = fmul fast float %8551, %8494
  %8556 = fmul fast float %8553, %8494
  %8557 = fadd fast float %8554, %8539
  %8558 = fadd fast float %8555, %8540
  %8559 = fadd fast float %8556, %8541
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 1
  %8562 = fmul fast float %8557, %8561
  %8563 = fmul fast float %8558, %8561
  %8564 = fmul fast float %8559, %8561
  br label %8565

; <label>:8565                                    ; preds = %8396, %8353
  %8566 = phi float [ %8436, %8396 ], [ 1.000000e+00, %8353 ]
  %8567 = phi float [ %8437, %8396 ], [ 1.000000e+00, %8353 ]
  %8568 = phi float [ %8438, %8396 ], [ 1.000000e+00, %8353 ]
  %8569 = phi float [ %8562, %8396 ], [ 0.000000e+00, %8353 ]
  %8570 = phi float [ %8563, %8396 ], [ 0.000000e+00, %8353 ]
  %8571 = phi float [ %8564, %8396 ], [ 0.000000e+00, %8353 ]
  %8572 = fmul fast float %8569, %6907
  %8573 = fmul fast float %8570, %6907
  %8574 = fmul fast float %8571, %6907
  %8575 = fmul fast float %8566, %8360
  %8576 = call float @dx.op.dot3.f32(i32 55, float %8566, float %8567, float %8568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8577 = call float @dx.op.dot3.f32(i32 55, float %8572, float %8573, float %8574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8578 = select i1 %222, float %8576, float %8566
  %8579 = select i1 %222, float %8576, float %8567
  %8580 = select i1 %222, float 1.000000e+00, float %8568
  %8581 = select i1 %222, float %8577, float %8572
  %8582 = select i1 %222, float 0.000000e+00, float %8573
  %8583 = select i1 %222, float 0.000000e+00, float %8574
  %8584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.i32 %8584, 3
  %8586 = and i32 %8585, 3
  %8587 = icmp ne i32 %8586, 0
  %8588 = and i32 %8585, 4
  %8589 = icmp ne i32 %8588, 0
  %8590 = and i1 %8587, %8589
  %8591 = and i1 %222, %8590
  br i1 %8591, label %8592, label %8598

; <label>:8592                                    ; preds = %8565
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8595 = fadd fast float %8575, -1.000000e+00
  %8596 = fmul fast float %8594, %8595
  %8597 = fadd fast float %8596, 1.000000e+00
  br label %8598

; <label>:8598                                    ; preds = %8592, %8565
  %8599 = phi float [ %8597, %8592 ], [ %8575, %8565 ]
  %8600 = fadd fast float %8357, %8354
  %8601 = fmul fast float %8578, %8600
  %8602 = fadd fast float %8601, %8581
  %8603 = fadd fast float %8358, %8355
  %8604 = fmul fast float %8579, %8603
  %8605 = fadd fast float %8604, %8582
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  br i1 %222, label %8608, label %8632

; <label>:8608                                    ; preds = %8598
  %8609 = fadd fast float %8602, %8605
  %8610 = fmul fast float %8607, %8609
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8613 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %8614 = fsub fast float %6916, %6910
  %8615 = fadd fast float %8614, %6917
  %8616 = fsub fast float %8615, %8613
  %8617 = extractvalue %dx.types.CBufRet.f32 %6911, 2
  %8618 = fmul fast float %8616, %8617
  %8619 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8620 = fsub fast float %8619, %8612
  %8621 = fmul fast float %8620, %8599
  %8622 = fadd fast float %8621, %8612
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = fsub fast float %8622, %8624
  %8626 = fmul fast float %8625, 1.000000e+01
  %8627 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8628 = fsub fast float %4209, %6907
  %8629 = fmul fast float %8627, %8628
  %8630 = fadd fast float %8629, %6907
  %8631 = fmul fast float %8630, %8622
  br label %8656

; <label>:8632                                    ; preds = %8598
  %8633 = fadd fast float %8359, %8356
  %8634 = fmul fast float %8580, %8633
  %8635 = fadd fast float %8634, %8583
  %8636 = fmul fast float %8607, %8602
  %8637 = fmul fast float %8607, %8605
  %8638 = fmul fast float %8607, %8635
  %8639 = call float @dx.op.binary.f32(i32 35, float %8637, float %8638)  ; FMax(a,b)
  %8640 = call float @dx.op.binary.f32(i32 35, float %8636, float %8639)  ; FMax(a,b)
  %8641 = call float @dx.op.binary.f32(i32 35, float %8640, float %6907)  ; FMax(a,b)
  %8642 = fcmp fast ugt float %8641, 0x3F10000000000000
  br i1 %8642, label %8644, label %8643

; <label>:8643                                    ; preds = %8632
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8644

; <label>:8644                                    ; preds = %8643, %8632
  %8645 = add i32 %56, 356
  %8646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8645, i32 undef)  ; BufferLoad(srv,index,wot)
  %8647 = extractvalue %dx.types.ResRet.i32 %8646, 0
  %8648 = and i32 %8647, 32
  %8649 = icmp eq i32 %8648, 0
  br i1 %8649, label %8656, label %8650

; <label>:8650                                    ; preds = %8644
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 0
  %8653 = fmul fast float %8652, 0x3FE99999A0000000
  %8654 = fadd fast float %8652, %8636
  %8655 = fadd fast float %8653, %8638
  br label %8656

; <label>:8656                                    ; preds = %8650, %8644, %8608
  %8657 = phi float [ %8610, %8608 ], [ %8654, %8650 ], [ %8636, %8644 ]
  %8658 = phi float [ %8631, %8608 ], [ %8637, %8650 ], [ %8637, %8644 ]
  %8659 = phi float [ %8630, %8608 ], [ %8655, %8650 ], [ %8638, %8644 ]
  %8660 = phi float [ %8630, %8608 ], [ %6907, %8650 ], [ %6907, %8644 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8661 = call float @dx.op.binary.f32(i32 36, float %8657, float 3.225500e+04)  ; FMin(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8658, float 3.225500e+04)  ; FMin(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8659, float 3.225500e+04)  ; FMin(a,b)
  %8664 = call float @dx.op.binary.f32(i32 36, float %8660, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8661)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8662)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8663)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8664)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15]}
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
!87 = !{i32 3, i32 5}
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

