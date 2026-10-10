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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 19768647659a96e1de2a15672f3012c4
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
; Number of inputs: 45, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  br i1 %473, label %1248, label %474

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
  %1170 = and i32 %1169, 26624
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1229, label %1172

; <label>:1172                                    ; preds = %1144
  %1173 = add i32 %56, 472
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 1048576
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i32 %1183, 8192
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1202, label %1188

; <label>:1188                                    ; preds = %1172
  %1189 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1190 = select i1 %1185, float %1189, float %1180
  %1191 = select i1 %1185, float %1179, float %1180
  %1192 = add i32 %56, 96
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80101020000000
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1198, %1180
  %1201 = fmul fast float %1198, %1190
  br label %1202

; <label>:1202                                    ; preds = %1188, %1172
  %1203 = phi float [ %1199, %1188 ], [ 0.000000e+00, %1172 ]
  %1204 = phi float [ %1200, %1188 ], [ 0.000000e+00, %1172 ]
  %1205 = phi float [ %1201, %1188 ], [ 0.000000e+00, %1172 ]
  %1206 = and i32 %1183, 2048
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1216, label %1208

; <label>:1208                                    ; preds = %1202
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1210, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = fmul fast float %1213, %1181
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1208, %1202
  %1217 = phi float [ %1215, %1208 ], [ 0x3F70101020000000, %1202 ]
  %1218 = and i32 %1183, 16384
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1229, label %1220

; <label>:1220                                    ; preds = %1216
  %1221 = add i32 %56, 96
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 24
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1179, 0x3F70101020000000
  %1227 = select i1 %1185, float 0x3F70101020000000, float %1226
  %1228 = fmul fast float %1227, %1225
  br label %1229

; <label>:1229                                    ; preds = %1220, %1216, %1144
  %1230 = phi float [ %1203, %1220 ], [ %1203, %1216 ], [ 0.000000e+00, %1144 ]
  %1231 = phi float [ %1204, %1220 ], [ %1204, %1216 ], [ 0.000000e+00, %1144 ]
  %1232 = phi float [ %1205, %1220 ], [ %1205, %1216 ], [ 0.000000e+00, %1144 ]
  %1233 = phi float [ %1217, %1220 ], [ %1217, %1216 ], [ 0x3F70101020000000, %1144 ]
  %1234 = phi float [ %1228, %1220 ], [ 0.000000e+00, %1216 ], [ 0.000000e+00, %1144 ]
  %1235 = add i32 %56, 96
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = lshr i32 %1237, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fmul fast float %1242, %1243
  %1245 = fadd fast float %1244, %1239
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  br label %1248

; <label>:1248                                    ; preds = %1229, %459
  %1249 = phi float [ 0.000000e+00, %459 ], [ %1060, %1229 ]
  %1250 = phi float [ 0.000000e+00, %459 ], [ %1061, %1229 ]
  %1251 = phi float [ 0.000000e+00, %459 ], [ %979, %1229 ]
  %1252 = phi float [ 0.000000e+00, %459 ], [ %980, %1229 ]
  %1253 = phi float [ 0.000000e+00, %459 ], [ %981, %1229 ]
  %1254 = phi float [ 0.000000e+00, %459 ], [ %1107, %1229 ]
  %1255 = phi float [ 0.000000e+00, %459 ], [ %1108, %1229 ]
  %1256 = phi float [ 0.000000e+00, %459 ], [ %1109, %1229 ]
  %1257 = phi float [ 0.000000e+00, %459 ], [ %1230, %1229 ]
  %1258 = phi float [ 0.000000e+00, %459 ], [ %1231, %1229 ]
  %1259 = phi float [ 0.000000e+00, %459 ], [ %1232, %1229 ]
  %1260 = phi float [ 0.000000e+00, %459 ], [ %1165, %1229 ]
  %1261 = phi float [ 0.000000e+00, %459 ], [ %1166, %1229 ]
  %1262 = phi float [ 0.000000e+00, %459 ], [ %1167, %1229 ]
  %1263 = phi float [ 0.000000e+00, %459 ], [ %965, %1229 ]
  %1264 = phi float [ 0.000000e+00, %459 ], [ %761, %1229 ]
  %1265 = phi float [ 0.000000e+00, %459 ], [ %1059, %1229 ]
  %1266 = phi float [ 0.000000e+00, %459 ], [ %1062, %1229 ]
  %1267 = phi float [ 0.000000e+00, %459 ], [ %1233, %1229 ]
  %1268 = phi float [ 0.000000e+00, %459 ], [ %1234, %1229 ]
  %1269 = phi float [ 0.000000e+00, %459 ], [ %1247, %1229 ]
  br i1 %407, label %2331, label %1270

; <label>:1270                                    ; preds = %1248
  %1271 = icmp ult i32 %465, 2
  %1272 = add i32 %56, 40
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %56, 44
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = or i32 %1277, %1274
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %2331, label %1280

; <label>:1280                                    ; preds = %1270
  %1281 = and i32 %1274, 262144
  %1282 = icmp ne i32 %1281, 0
  %1283 = select i1 %1282, float %59, float 1.000000e+00
  %1284 = select i1 %1282, float %60, float 0.000000e+00
  %1285 = select i1 %1282, float %61, float 0.000000e+00
  %1286 = select i1 %1282, float %62, float 1.000000e+00
  %1287 = select i1 %1282, float %63, float %84
  %1288 = select i1 %1282, float %64, float %85
  %1289 = add i32 %56, 300
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fmul fast float %1293, 0x3F50624DE0000000
  %1295 = add i32 %56, 104
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = and i32 %1298, 255
  %1300 = lshr i32 %1297, 24
  %1301 = add i32 %56, 308
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %56, 48
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 22
  %1312 = shl nuw nsw i32 %1311, 5
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = shl i32 %1310, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = lshr i32 %1310, 7
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 3
  %1322 = fmul fast float %1321, 1.000000e+03
  %1323 = fmul fast float %317, %1322
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fadd fast float %1324, %307
  %1326 = fmul fast float %318, %1322
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = fadd fast float %1327, %309
  %1329 = fmul fast float %1294, %1322
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = fmul fast float %1330, 0x401921FB60000000
  %1332 = fadd fast float %1331, %1313
  %1333 = call float @dx.op.unary.f32(i32 13, float %1332)  ; Sin(value)
  %1334 = call float @dx.op.unary.f32(i32 12, float %1332)  ; Cos(value)
  %1335 = fsub fast float -0.000000e+00, %1333
  %1336 = fadd fast float %1287, -5.000000e-01
  %1337 = fadd fast float %1288, -5.000000e-01
  %1338 = fmul fast float %1305, %1336
  %1339 = fmul fast float %1307, %1337
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1316, %1340
  %1343 = fmul fast float %1319, %1341
  %1344 = fmul fast float %1334, %1342
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1343, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1333, %1342
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1343, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1325, %1345
  %1349 = fadd fast float %1328, %1347
  %1350 = icmp ugt i32 %1299, 1
  %1351 = icmp ugt i32 %1297, 33554431
  %1352 = or i1 %1351, %1350
  br i1 %1352, label %1353, label %1378

; <label>:1353                                    ; preds = %1280
  %1354 = add i32 %56, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fmul fast float %1321, %1358
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = mul nuw nsw i32 %1299, %1300
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1360, %1362
  %1364 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1365 = fptoui float %1364 to i32
  %1366 = urem i32 %1365, %1299
  %1367 = udiv i32 %1365, %1300
  %1368 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1370 = uitofp i32 %1366 to float
  %1371 = uitofp i32 %1367 to float
  %1372 = fadd fast float %1368, %1370
  %1373 = fadd fast float %1369, %1371
  %1374 = uitofp i32 %1299 to float
  %1375 = uitofp i32 %1300 to float
  %1376 = fdiv fast float %1372, %1374
  %1377 = fdiv fast float %1373, %1375
  br label %1378

; <label>:1378                                    ; preds = %1353, %1280
  %1379 = phi float [ %1376, %1353 ], [ %1348, %1280 ]
  %1380 = phi float [ %1377, %1353 ], [ %1349, %1280 ]
  %1381 = and i32 %1274, 16777216
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1492, label %1383

; <label>:1383                                    ; preds = %1378
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1388 = fadd fast float %1385, %161
  %1389 = fadd fast float %1386, %162
  %1390 = fadd fast float %1387, %163
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = icmp eq i32 %57, 65535
  br i1 %1394, label %1489, label %1395

; <label>:1395                                    ; preds = %1383
  %1396 = lshr i32 %57, 1
  %1397 = shl i32 %1396, 2
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %57, 1
  %1401 = icmp ne i32 %1400, 0
  %1402 = lshr i32 %1399, 16
  %1403 = and i32 %1399, 65535
  %1404 = select i1 %1401, i32 %1402, i32 %1403
  %1405 = icmp eq i32 %1404, 65535
  br i1 %1405, label %1485, label %1406

; <label>:1406                                    ; preds = %1395
  %1407 = mul nuw nsw i32 %1404, 40
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = add nuw nsw i32 %1407, 12
  %1413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = add nuw nsw i32 %1407, 24
  %1418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = add nuw nsw i32 %1407, 36
  %1423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = fsub fast float %1388, %1409
  %1426 = fsub fast float %1389, %1410
  %1427 = fsub fast float %1390, %1411
  %1428 = fmul fast float %1424, %1425
  %1429 = fmul fast float %1424, %1426
  %1430 = fmul fast float %1424, %1427
  %1431 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1432 = call float @dx.op.unary.f32(i32 27, float %1429)  ; Round_ni(value)
  %1433 = call float @dx.op.unary.f32(i32 27, float %1430)  ; Round_ni(value)
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fmul fast float %1434, %1414
  %1438 = fmul fast float %1435, %1415
  %1439 = fmul fast float %1436, %1416
  %1440 = shl i32 %57, 2
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1442, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  %1446 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1447 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1444, %dx.types.Handle %49, float %1445, float %1446, float %1447, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = fmul fast float %1449, 1.023000e+03
  %1453 = fmul fast float %1450, 1.023000e+03
  %1454 = fmul fast float %1451, 1.023000e+03
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 27, float %1455)  ; Round_ni(value)
  %1459 = call float @dx.op.unary.f32(i32 27, float %1456)  ; Round_ni(value)
  %1460 = call float @dx.op.unary.f32(i32 27, float %1457)  ; Round_ni(value)
  %1461 = fsub fast float %1428, %1431
  %1462 = fsub fast float %1429, %1432
  %1463 = fsub fast float %1430, %1433
  %1464 = fmul fast float %1461, 7.500000e-01
  %1465 = fmul fast float %1462, 7.500000e-01
  %1466 = fmul fast float %1463, 7.500000e-01
  %1467 = fadd fast float %1431, 1.250000e-01
  %1468 = fadd fast float %1467, %1464
  %1469 = fadd fast float %1468, %1458
  %1470 = fadd fast float %1432, 1.250000e-01
  %1471 = fadd fast float %1470, %1465
  %1472 = fadd fast float %1471, %1459
  %1473 = fadd fast float %1433, 1.250000e-01
  %1474 = fadd fast float %1473, %1466
  %1475 = fadd fast float %1474, %1460
  %1476 = fmul fast float %1469, %1419
  %1477 = fmul fast float %1472, %1420
  %1478 = fmul fast float %1475, %1421
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1482, %dx.types.Handle %47, float %1476, float %1477, float %1478, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  br label %1485

; <label>:1485                                    ; preds = %1406, %1395
  %1486 = phi float [ %1484, %1406 ], [ -1.000000e+00, %1395 ]
  %1487 = fadd fast float %1486, %1393
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1489

; <label>:1489                                    ; preds = %1485, %1383
  %1490 = phi float [ %1488, %1485 ], [ %1393, %1383 ]
  %1491 = fmul fast float %1490, %462
  br label %1492

; <label>:1492                                    ; preds = %1489, %1378
  %1493 = phi float [ %1491, %1489 ], [ %462, %1378 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 256
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1544, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %56, 428
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1503, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = add i32 %56, 116
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = shl i32 %1508, 4
  %1510 = and i32 %1509, 32752
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = lshr i32 %1508, 7
  %1513 = and i32 %1512, 32752
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = fsub fast float 1.000000e+00, %1493
  %1516 = call float @dx.op.binary.f32(i32 35, float %1515, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1517 = bitcast float %1493 to i32
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %1518, 0xC1CFBF8940000000
  %1520 = fmul fast float %1514, %1519
  %1521 = fadd fast float %1520, 0x41CFBF8940000000
  %1522 = fptosi float %1521 to i32
  %1523 = bitcast i32 %1522 to float
  %1524 = bitcast float %1516 to i32
  %1525 = sitofp i32 %1524 to float
  %1526 = fadd fast float %1525, 0xC1CFBF8940000000
  %1527 = fmul fast float %1526, %1514
  %1528 = fadd fast float %1527, 0x41CFBF8940000000
  %1529 = fptosi float %1528 to i32
  %1530 = bitcast i32 %1529 to float
  %1531 = fmul fast float %1523, %1511
  %1532 = fmul fast float %1530, %1511
  %1533 = fsub fast float %1516, %1531
  %1534 = fadd fast float %1532, %1516
  %1535 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1536 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1537 = fsub fast float %1505, %1535
  %1538 = fsub fast float %1536, %1535
  %1539 = bitcast float %1538 to i32
  %1540 = sub nsw i32 2129859010, %1539
  %1541 = bitcast i32 %1540 to float
  %1542 = fmul fast float %1541, %1537
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  br label %1544

; <label>:1544                                    ; preds = %1498, %1492
  %1545 = phi float [ %1543, %1498 ], [ %1493, %1492 ]
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 128
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1566, label %1550

; <label>:1550                                    ; preds = %1544
  %1551 = add i32 %56, 412
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 524288
  %1561 = icmp ne i32 %1560, 0
  %1562 = fcmp fast ogt float %1557, 0x3FE0101020000000
  %1563 = select i1 %1562, float 1.000000e+00, float 0.000000e+00
  %1564 = select i1 %1561, float %1563, float %1557
  %1565 = fmul fast float %1564, %1545
  br label %1566

; <label>:1566                                    ; preds = %1550, %1544
  %1567 = phi float [ %1565, %1550 ], [ %1545, %1544 ]
  %1568 = fcmp fast ult float %1567, 0x3F70101020000000
  br i1 %1568, label %2331, label %1569

; <label>:1569                                    ; preds = %1566
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 16
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1772, label %1574

; <label>:1574                                    ; preds = %1569
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %56, 364
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.ResRet.f32 %1582, 3
  %1587 = and i32 %1576, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = lshr i32 %1576, 8
  %1590 = and i32 %1589, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = fmul fast float %1586, %1588
  %1593 = fadd fast float %1592, %1591
  %1594 = fmul fast float %1593, 0x3F70101000000000
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 512
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1607, label %1599

; <label>:1599                                    ; preds = %1574
  %1600 = add i32 %56, 444
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  br label %1607

; <label>:1607                                    ; preds = %1599, %1574
  %1608 = phi float [ %1606, %1599 ], [ 1.000000e+00, %1574 ]
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 33554432
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1719, label %1613

; <label>:1613                                    ; preds = %1607
  %1614 = add i32 %56, 240
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = lshr i32 %1616, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = add i32 %56, 244
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = lshr i32 %1627, 24
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = and i32 %1627, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1627, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = lshr i32 %1627, 16
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = fmul fast float %1640, 0x3F70101020000000
  %1642 = add i32 %56, 236
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = lshr i32 %1644, 24
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = and i32 %1644, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = lshr i32 %1644, 8
  %1652 = and i32 %1651, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = fmul fast float %1653, 0x3F70101020000000
  %1655 = lshr i32 %1644, 16
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101020000000
  %1659 = bitcast float %1583 to i32
  %1660 = ashr i32 %1659, 1
  %1661 = sub nsw i32 1597463174, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1583, 5.000000e-01
  %1664 = fmul fast float %1662, %1662
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float 1.500000e+00, %1665
  %1667 = fmul fast float %1662, %1583
  %1668 = fmul fast float %1667, %1666
  %1669 = bitcast float %1584 to i32
  %1670 = ashr i32 %1669, 1
  %1671 = sub nsw i32 1597463174, %1670
  %1672 = bitcast i32 %1671 to float
  %1673 = fmul fast float %1584, 5.000000e-01
  %1674 = fmul fast float %1672, %1672
  %1675 = fmul fast float %1674, %1673
  %1676 = fsub fast float 1.500000e+00, %1675
  %1677 = fmul fast float %1672, %1584
  %1678 = fmul fast float %1677, %1676
  %1679 = bitcast float %1585 to i32
  %1680 = ashr i32 %1679, 1
  %1681 = sub nsw i32 1597463174, %1680
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1585, 5.000000e-01
  %1684 = fmul fast float %1682, %1682
  %1685 = fmul fast float %1684, %1683
  %1686 = fsub fast float 1.500000e+00, %1685
  %1687 = fmul fast float %1682, %1585
  %1688 = fmul fast float %1687, %1686
  %1689 = fsub fast float %1668, %1650
  %1690 = fsub fast float %1678, %1654
  %1691 = fsub fast float %1688, %1658
  %1692 = fmul fast float %1689, %1618
  %1693 = fmul fast float %1690, %1620
  %1694 = fmul fast float %1691, %1625
  %1695 = fadd fast float %1692, %1633
  %1696 = fadd fast float %1693, %1637
  %1697 = fadd fast float %1694, %1641
  %1698 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1699 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1700 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1701 = fmul fast float %1698, %1698
  %1702 = fmul fast float %1699, %1699
  %1703 = fmul fast float %1700, %1700
  %1704 = fsub fast float %1701, %1583
  %1705 = fsub fast float %1702, %1584
  %1706 = fsub fast float %1703, %1585
  %1707 = fmul fast float %1704, %1608
  %1708 = fmul fast float %1705, %1608
  %1709 = fmul fast float %1706, %1608
  %1710 = fadd fast float %1707, %1583
  %1711 = fadd fast float %1708, %1584
  %1712 = fadd fast float %1709, %1585
  %1713 = fadd fast float %1630, %1594
  %1714 = fsub fast float %1713, %1647
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fsub fast float %1715, %1594
  %1717 = fmul fast float %1716, %1608
  %1718 = fadd fast float %1717, %1594
  br label %1772

; <label>:1719                                    ; preds = %1607
  %1720 = and i32 %1610, 134217728
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1756, label %1722

; <label>:1722                                    ; preds = %1719
  %1723 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fmul fast float %1726, %1608
  %1730 = fmul fast float %1727, %1608
  %1731 = fmul fast float %1728, %1608
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1736 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1737 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1738 = fmul fast float %1732, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1735
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1735
  %1743 = fmul fast float %1733, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1736
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1736
  %1748 = fmul fast float %1734, 2.000000e+00
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = fmul fast float %1749, %1737
  %1751 = fadd fast float %1750, %1748
  %1752 = fmul fast float %1751, %1737
  %1753 = fmul fast float %1742, %1742
  %1754 = fmul fast float %1747, %1747
  %1755 = fmul fast float %1752, %1752
  br label %1772

; <label>:1756                                    ; preds = %1719
  %1757 = fmul fast float %294, %294
  %1758 = fmul fast float %298, %298
  %1759 = fmul fast float %302, %302
  %1760 = fadd fast float %1757, -1.000000e+00
  %1761 = fadd fast float %1758, -1.000000e+00
  %1762 = fadd fast float %1759, -1.000000e+00
  %1763 = fmul fast float %1608, %1760
  %1764 = fmul fast float %1608, %1761
  %1765 = fmul fast float %1608, %1762
  %1766 = fadd fast float %1763, 1.000000e+00
  %1767 = fadd fast float %1764, 1.000000e+00
  %1768 = fadd fast float %1765, 1.000000e+00
  %1769 = fmul fast float %1766, %1583
  %1770 = fmul fast float %1767, %1584
  %1771 = fmul fast float %1768, %1585
  br label %1772

; <label>:1772                                    ; preds = %1756, %1722, %1613, %1569
  %1773 = phi float [ %1718, %1613 ], [ %1594, %1722 ], [ %1594, %1756 ], [ 0x3FA23C0BE0000000, %1569 ]
  %1774 = phi float [ %1710, %1613 ], [ %1753, %1722 ], [ %1769, %1756 ], [ 1.000000e+00, %1569 ]
  %1775 = phi float [ %1711, %1613 ], [ %1754, %1722 ], [ %1770, %1756 ], [ 1.000000e+00, %1569 ]
  %1776 = phi float [ %1712, %1613 ], [ %1755, %1722 ], [ %1771, %1756 ], [ 1.000000e+00, %1569 ]
  %1777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.i32 %1777, 1
  %1779 = and i32 %1778, 1
  %1780 = icmp ne i32 %1779, 0
  %1781 = add i32 %56, 356
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 32
  %1785 = icmp ne i32 %1784, 0
  %1786 = and i1 %1780, %1785
  %1787 = select i1 %1786, float 1.000000e+00, float %1774
  %1788 = select i1 %1786, float 0x3FD3333340000000, float %1775
  %1789 = select i1 %1786, float 0x3FD3333340000000, float %1776
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 32
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1866, label %1794

; <label>:1794                                    ; preds = %1772
  %1795 = add i32 %56, 108
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = add i32 %56, 380
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = add i32 %1800, 0
  %1802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1802, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = extractvalue %dx.types.ResRet.f32 %1803, 3
  %1808 = and i32 %1797, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = lshr i32 %1797, 8
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = lshr i32 %1797, 16
  %1814 = and i32 %1813, 255
  %1815 = uitofp i32 %1814 to float
  %1816 = fmul fast float %1815, 0x3F70101000000000
  %1817 = fmul fast float %1804, %1809
  %1818 = fadd fast float %1817, %1812
  %1819 = fmul fast float %1818, 0x3F70101000000000
  %1820 = fadd fast float %1805, -5.000000e-01
  %1821 = fadd fast float %1807, -5.000000e-01
  %1822 = fmul fast float %1820, %1816
  %1823 = fmul fast float %1821, %1816
  %1824 = fadd fast float %1822, 5.000000e-01
  %1825 = fadd fast float %1823, 5.000000e-01
  %1826 = fmul fast float %1824, 2.000000e+00
  %1827 = fadd fast float %1826, -1.000000e+00
  %1828 = fmul fast float %1825, 2.000000e+00
  %1829 = fadd fast float %1828, -1.000000e+00
  %1830 = fadd fast float %1827, %1829
  %1831 = fmul fast float %1830, 5.000000e-01
  %1832 = fsub fast float %1827, %1829
  %1833 = fmul fast float %1832, 5.000000e-01
  %1834 = call float @dx.op.unary.f32(i32 6, float %1831)  ; FAbs(value)
  %1835 = fsub fast float 1.000000e+00, %1834
  %1836 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1837 = fsub fast float %1835, %1836
  %1838 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1833, float %1837, float %1831, float %1833, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %1839 = call float @dx.op.unary.f32(i32 25, float %1838)  ; Rsqrt(value)
  %1840 = fmul fast float %1831, %1839
  %1841 = fmul fast float %1833, %1839
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 67108864
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1862, label %1846

; <label>:1846                                    ; preds = %1794
  %1847 = add i32 %56, 296
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 65535
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 65535
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = lshr i32 %1849, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = fsub fast float %1819, %1857
  %1859 = fmul fast float %1858, %1851
  %1860 = fadd fast float %1859, %1855
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  br label %1862

; <label>:1862                                    ; preds = %1846, %1794
  %1863 = phi float [ %1861, %1846 ], [ %1819, %1794 ]
  %1864 = call float @dx.op.dot2.f32(i32 54, float %1840, float %1841, float %1283, float %1284)  ; Dot2(ax,ay,bx,by)
  %1865 = call float @dx.op.dot2.f32(i32 54, float %1840, float %1841, float %1285, float %1286)  ; Dot2(ax,ay,bx,by)
  br label %1866

; <label>:1866                                    ; preds = %1862, %1772
  %1867 = phi float [ %1863, %1862 ], [ 0x3FD6666660000000, %1772 ]
  %1868 = phi float [ %1864, %1862 ], [ 0.000000e+00, %1772 ]
  %1869 = phi float [ %1865, %1862 ], [ 0.000000e+00, %1772 ]
  %1870 = phi float [ %1806, %1862 ], [ 1.000000e+00, %1772 ]
  %1871 = add i32 %56, 176
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 22
  %1875 = shl nuw nsw i32 %1874, 5
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 64
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1914, label %1881

; <label>:1881                                    ; preds = %1866
  %1882 = add i32 %56, 396
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = add i32 %1884, 0
  %1886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %1888, 131072
  %1890 = icmp eq i32 %1889, 0
  %1891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1886, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = fmul fast float %1892, %282
  %1896 = fmul fast float %1893, %285
  %1897 = fmul fast float %1894, %288
  br i1 %1890, label %1904, label %1898

; <label>:1898                                    ; preds = %1881
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = fmul fast float %1900, %1895
  %1902 = fmul fast float %1900, %1896
  %1903 = fmul fast float %1900, %1897
  br label %1904

; <label>:1904                                    ; preds = %1898, %1881
  %1905 = phi float [ %1901, %1898 ], [ %1895, %1881 ]
  %1906 = phi float [ %1902, %1898 ], [ %1896, %1881 ]
  %1907 = phi float [ %1903, %1898 ], [ %1897, %1881 ]
  %1908 = fmul fast float %1905, %1876
  %1909 = select i1 %223, float %1908, float %1905
  %1910 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1906, float %1907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = select i1 %223, float 0.000000e+00, float %1905
  %1912 = select i1 %223, float %1910, float %1906
  %1913 = select i1 %223, float 0.000000e+00, float %1907
  br label %1914

; <label>:1914                                    ; preds = %1904, %1866
  %1915 = phi float [ %1911, %1904 ], [ 0.000000e+00, %1866 ]
  %1916 = phi float [ %1912, %1904 ], [ 0.000000e+00, %1866 ]
  %1917 = phi float [ %1913, %1904 ], [ 0.000000e+00, %1866 ]
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 1024
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1952, label %1922

; <label>:1922                                    ; preds = %1914
  %1923 = add i32 %56, 168
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = lshr i32 %1925, 8
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = lshr i32 %1925, 16
  %1934 = and i32 %1933, 255
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = fmul fast float %1928, %1928
  %1938 = fmul fast float %1932, %1932
  %1939 = fmul fast float %1936, %1936
  %1940 = add i32 %56, 460
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = add i32 %1942, 0
  %1944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1944, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.ResRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.ResRet.f32 %1945, 2
  %1949 = fmul fast float %1937, %1946
  %1950 = fmul fast float %1938, %1947
  %1951 = fmul fast float %1939, %1948
  br label %1952

; <label>:1952                                    ; preds = %1922, %1914
  %1953 = phi float [ %1949, %1922 ], [ 0.000000e+00, %1914 ]
  %1954 = phi float [ %1950, %1922 ], [ 0.000000e+00, %1914 ]
  %1955 = phi float [ %1951, %1922 ], [ 0.000000e+00, %1914 ]
  %1956 = fcmp fast ogt float %1953, 0.000000e+00
  %1957 = fcmp fast ogt float %1954, 0.000000e+00
  %1958 = fcmp fast ogt float %1955, 0.000000e+00
  %1959 = call float @dx.op.unary.f32(i32 23, float %1953)  ; Log(value)
  %1960 = call float @dx.op.unary.f32(i32 23, float %1954)  ; Log(value)
  %1961 = call float @dx.op.unary.f32(i32 23, float %1955)  ; Log(value)
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = lshr i32 %1963, 7
  %1965 = and i32 %1964, 32752
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1959, 0xBFE62E4300000000
  %1968 = fmul fast float %1967, %1966
  %1969 = fmul fast float %1960, 0xBFE62E4300000000
  %1970 = fmul fast float %1969, %1966
  %1971 = fmul fast float %1961, 0xBFE62E4300000000
  %1972 = fmul fast float %1971, %1966
  %1973 = select i1 %1956, float %1968, float 1.270000e+02
  %1974 = select i1 %1957, float %1970, float 1.270000e+02
  %1975 = select i1 %1958, float %1972, float 1.270000e+02
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 26624
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2037, label %1980

; <label>:1980                                    ; preds = %1952
  %1981 = add i32 %56, 476
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = add i32 %1983, 0
  %1985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1985, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.f32 %1986, 3
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 1048576
  %1993 = icmp ne i32 %1992, 0
  %1994 = and i32 %1991, 8192
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2010, label %1996

; <label>:1996                                    ; preds = %1980
  %1997 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1998 = select i1 %1993, float %1997, float %1988
  %1999 = select i1 %1993, float %1987, float %1988
  %2000 = add i32 %56, 112
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = lshr i32 %2002, 16
  %2004 = and i32 %2003, 255
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2005, 0x3F80101020000000
  %2007 = fmul fast float %2006, %1999
  %2008 = fmul fast float %2006, %1988
  %2009 = fmul fast float %2006, %1998
  br label %2010

; <label>:2010                                    ; preds = %1996, %1980
  %2011 = phi float [ %2007, %1996 ], [ 0.000000e+00, %1980 ]
  %2012 = phi float [ %2008, %1996 ], [ 0.000000e+00, %1980 ]
  %2013 = phi float [ %2009, %1996 ], [ 0.000000e+00, %1980 ]
  %2014 = and i32 %1991, 2048
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2024, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = shl i32 %2018, 4
  %2020 = and i32 %2019, 32752
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %2021, %1989
  %2023 = call float @dx.op.binary.f32(i32 35, float %2022, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2024

; <label>:2024                                    ; preds = %2016, %2010
  %2025 = phi float [ %2023, %2016 ], [ 0x3F70101020000000, %2010 ]
  %2026 = and i32 %1991, 16384
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2037, label %2028

; <label>:2028                                    ; preds = %2024
  %2029 = add i32 %56, 112
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 24
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %1987, 0x3F70101020000000
  %2035 = select i1 %1993, float 0x3F70101020000000, float %2034
  %2036 = fmul fast float %2035, %2033
  br label %2037

; <label>:2037                                    ; preds = %2028, %2024, %1952
  %2038 = phi float [ %2011, %2028 ], [ %2011, %2024 ], [ 0.000000e+00, %1952 ]
  %2039 = phi float [ %2012, %2028 ], [ %2012, %2024 ], [ 0.000000e+00, %1952 ]
  %2040 = phi float [ %2013, %2028 ], [ %2013, %2024 ], [ 0.000000e+00, %1952 ]
  %2041 = phi float [ %2025, %2028 ], [ %2025, %2024 ], [ 0x3F70101020000000, %1952 ]
  %2042 = phi float [ %2036, %2028 ], [ 0.000000e+00, %2024 ], [ 0.000000e+00, %1952 ]
  %2043 = add i32 %56, 112
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = lshr i32 %2045, 8
  %2049 = and i32 %2048, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = call float @dx.op.dot3.f32(i32 55, float %1787, float %1788, float %1789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = fmul fast float %2050, %2051
  %2053 = fadd fast float %2052, %2047
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  br i1 %1271, label %2056, label %2091

; <label>:2056                                    ; preds = %2037
  %2057 = fmul fast float %2041, 2.000000e+00
  %2058 = fcmp fast olt float %1973, 1.270000e+02
  %2059 = fcmp fast olt float %1974, 1.270000e+02
  %2060 = fcmp fast olt float %1975, 1.270000e+02
  %2061 = fmul fast float %1973, 0xBFF7154760000000
  %2062 = fmul fast float %2061, %2057
  %2063 = fmul fast float %1974, 0xBFF7154760000000
  %2064 = fmul fast float %2063, %2057
  %2065 = fmul fast float %1975, 0xBFF7154760000000
  %2066 = fmul fast float %2065, %2057
  %2067 = call float @dx.op.unary.f32(i32 21, float %2062)  ; Exp(value)
  %2068 = call float @dx.op.unary.f32(i32 21, float %2064)  ; Exp(value)
  %2069 = call float @dx.op.unary.f32(i32 21, float %2066)  ; Exp(value)
  %2070 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2071 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2073 = fadd fast float %2070, -1.000000e+00
  %2074 = select i1 %2058, float %2073, float -1.000000e+00
  %2075 = fadd fast float %2071, -1.000000e+00
  %2076 = select i1 %2059, float %2075, float -1.000000e+00
  %2077 = fadd fast float %2072, -1.000000e+00
  %2078 = select i1 %2060, float %2077, float -1.000000e+00
  %2079 = fmul fast float %2074, %1567
  %2080 = fmul fast float %2076, %1567
  %2081 = fmul fast float %2078, %1567
  %2082 = fadd fast float %2079, 1.000000e+00
  %2083 = fadd fast float %2080, 1.000000e+00
  %2084 = fadd fast float %2081, 1.000000e+00
  %2085 = fmul fast float %2082, %1251
  %2086 = fmul fast float %2083, %1252
  %2087 = fmul fast float %2084, %1253
  %2088 = fmul fast float %2082, %1254
  %2089 = fmul fast float %2083, %1255
  %2090 = fmul fast float %2084, %1256
  br label %2091

; <label>:2091                                    ; preds = %2056, %2037
  %2092 = phi float [ %2085, %2056 ], [ %1251, %2037 ]
  %2093 = phi float [ %2086, %2056 ], [ %1252, %2037 ]
  %2094 = phi float [ %2087, %2056 ], [ %1253, %2037 ]
  %2095 = phi float [ %2088, %2056 ], [ %1254, %2037 ]
  %2096 = phi float [ %2089, %2056 ], [ %1255, %2037 ]
  %2097 = phi float [ %2090, %2056 ], [ %1256, %2037 ]
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 3
  %2101 = icmp eq i32 %2100, 3
  br i1 %2101, label %2180, label %2102

; <label>:2102                                    ; preds = %2091
  %2103 = and i32 %2099, 16
  %2104 = icmp ne i32 %2103, 0
  %2105 = select i1 %2104, float %1567, float 0.000000e+00
  %2106 = icmp eq i32 %2100, 0
  br i1 %2106, label %2107, label %2135

; <label>:2107                                    ; preds = %2102
  %2108 = and i32 %2099, 64
  %2109 = icmp ne i32 %2108, 0
  %2110 = select i1 %2109, float %1567, float 0.000000e+00
  %2111 = fsub fast float %1787, %2092
  %2112 = fsub fast float %1788, %2093
  %2113 = fsub fast float %1789, %2094
  %2114 = fmul fast float %2105, %2111
  %2115 = fmul fast float %2105, %2112
  %2116 = fmul fast float %2105, %2113
  %2117 = fadd fast float %2114, %2092
  %2118 = fadd fast float %2115, %2093
  %2119 = fadd fast float %2116, %2094
  %2120 = fsub fast float %1773, %1263
  %2121 = fmul fast float %2105, %2120
  %2122 = fadd fast float %2121, %1263
  %2123 = fsub fast float %1915, %2095
  %2124 = fsub fast float %1916, %2096
  %2125 = fsub fast float %1917, %2097
  %2126 = fmul fast float %2110, %2123
  %2127 = fmul fast float %2110, %2124
  %2128 = fmul fast float %2110, %2125
  %2129 = fadd fast float %2126, %2095
  %2130 = fadd fast float %2127, %2096
  %2131 = fadd fast float %2128, %2097
  %2132 = fsub fast float %2055, %1269
  %2133 = fmul fast float %2105, %2132
  %2134 = fadd fast float %2133, %1269
  br label %2180

; <label>:2135                                    ; preds = %2102
  %2136 = icmp eq i32 %2100, 1
  br i1 %2136, label %2137, label %2150

; <label>:2137                                    ; preds = %2135
  %2138 = fadd fast float %1787, -1.000000e+00
  %2139 = fadd fast float %1788, -1.000000e+00
  %2140 = fadd fast float %1789, -1.000000e+00
  %2141 = fmul fast float %2105, %2138
  %2142 = fmul fast float %2105, %2139
  %2143 = fmul fast float %2105, %2140
  %2144 = fadd fast float %2141, 1.000000e+00
  %2145 = fadd fast float %2142, 1.000000e+00
  %2146 = fadd fast float %2143, 1.000000e+00
  %2147 = fmul fast float %2144, %2092
  %2148 = fmul fast float %2145, %2093
  %2149 = fmul fast float %2146, %2094
  br label %2180

; <label>:2150                                    ; preds = %2135
  %2151 = icmp eq i32 %2100, 2
  br i1 %2151, label %2152, label %2180

; <label>:2152                                    ; preds = %2150
  %2153 = call float @dx.op.unary.f32(i32 24, float %1787)  ; Sqrt(value)
  %2154 = call float @dx.op.unary.f32(i32 24, float %1788)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %1789)  ; Sqrt(value)
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fmul fast float %2156, %2105
  %2160 = fmul fast float %2157, %2105
  %2161 = fmul fast float %2158, %2105
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fmul fast float %2162, 2.000000e+00
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2166, %2092
  %2168 = fadd fast float %2167, %2165
  %2169 = fmul fast float %2168, %2092
  %2170 = fmul fast float %2163, 2.000000e+00
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = fmul fast float %2171, %2093
  %2173 = fadd fast float %2172, %2170
  %2174 = fmul fast float %2173, %2093
  %2175 = fmul fast float %2164, 2.000000e+00
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = fmul fast float %2176, %2094
  %2178 = fadd fast float %2177, %2175
  %2179 = fmul fast float %2178, %2094
  br label %2180

; <label>:2180                                    ; preds = %2152, %2150, %2137, %2107, %2091
  %2181 = phi float [ %2092, %2091 ], [ %2169, %2152 ], [ %2092, %2150 ], [ %2147, %2137 ], [ %2117, %2107 ]
  %2182 = phi float [ %2093, %2091 ], [ %2174, %2152 ], [ %2093, %2150 ], [ %2148, %2137 ], [ %2118, %2107 ]
  %2183 = phi float [ %2094, %2091 ], [ %2179, %2152 ], [ %2094, %2150 ], [ %2149, %2137 ], [ %2119, %2107 ]
  %2184 = phi float [ %2095, %2091 ], [ %2095, %2152 ], [ %2095, %2150 ], [ %2095, %2137 ], [ %2129, %2107 ]
  %2185 = phi float [ %2096, %2091 ], [ %2096, %2152 ], [ %2096, %2150 ], [ %2096, %2137 ], [ %2130, %2107 ]
  %2186 = phi float [ %2097, %2091 ], [ %2097, %2152 ], [ %2097, %2150 ], [ %2097, %2137 ], [ %2131, %2107 ]
  %2187 = phi float [ %1263, %2091 ], [ %1263, %2152 ], [ %1263, %2150 ], [ %1263, %2137 ], [ %2122, %2107 ]
  %2188 = phi float [ %1269, %2091 ], [ %1269, %2152 ], [ %1269, %2150 ], [ %1269, %2137 ], [ %2134, %2107 ]
  %2189 = and i32 %2099, 12
  %2190 = icmp eq i32 %2189, 12
  br i1 %2190, label %2331, label %2191

; <label>:2191                                    ; preds = %2180
  %2192 = and i32 %2099, 2097184
  %2193 = icmp eq i32 %2192, 2097184
  %2194 = select i1 %2193, float %1567, float 0.000000e+00
  %2195 = and i32 %2099, 4194336
  %2196 = icmp eq i32 %2195, 4194336
  %2197 = select i1 %2196, float %1567, float 0.000000e+00
  %2198 = and i32 %2099, 8388640
  %2199 = icmp eq i32 %2198, 8388640
  %2200 = select i1 %2199, float %1567, float 0.000000e+00
  %2201 = and i32 %2099, 1024
  %2202 = icmp ne i32 %2201, 0
  %2203 = select i1 %2202, float %1567, float 0.000000e+00
  %2204 = and i32 %2099, 2048
  %2205 = icmp ne i32 %2204, 0
  %2206 = select i1 %2205, float %1567, float 0.000000e+00
  %2207 = and i32 %2099, 8192
  %2208 = icmp ne i32 %2207, 0
  %2209 = select i1 %2208, float %1567, float 0.000000e+00
  %2210 = and i32 %2099, 16384
  %2211 = icmp ne i32 %2210, 0
  %2212 = select i1 %2211, float %1567, float 0.000000e+00
  %2213 = icmp eq i32 %2189, 0
  br i1 %2213, label %2214, label %2251

; <label>:2214                                    ; preds = %2191
  %2215 = fsub fast float %1868, %1249
  %2216 = fsub fast float %1869, %1250
  %2217 = fmul fast float %2194, %2215
  %2218 = fmul fast float %2194, %2216
  %2219 = fadd fast float %2217, %1249
  %2220 = fadd fast float %2218, %1250
  %2221 = fsub fast float %1870, %1266
  %2222 = fmul fast float %2197, %2221
  %2223 = fadd fast float %2222, %1266
  %2224 = fsub fast float %1867, %1265
  %2225 = fmul fast float %2200, %2224
  %2226 = fadd fast float %2225, %1265
  %2227 = fsub fast float %1973, %1260
  %2228 = fsub fast float %1974, %1261
  %2229 = fsub fast float %1975, %1262
  %2230 = fmul fast float %2203, %2227
  %2231 = fmul fast float %2203, %2228
  %2232 = fmul fast float %2203, %2229
  %2233 = fadd fast float %2230, %1260
  %2234 = fadd fast float %2231, %1261
  %2235 = fadd fast float %2232, %1262
  %2236 = fsub fast float %2041, %1267
  %2237 = fmul fast float %2206, %2236
  %2238 = fadd fast float %2237, %1267
  %2239 = fsub fast float %2038, %1257
  %2240 = fsub fast float %2039, %1258
  %2241 = fsub fast float %2040, %1259
  %2242 = fmul fast float %2209, %2239
  %2243 = fmul fast float %2209, %2240
  %2244 = fmul fast float %2209, %2241
  %2245 = fadd fast float %2242, %1257
  %2246 = fadd fast float %2243, %1258
  %2247 = fadd fast float %2244, %1259
  %2248 = fsub fast float %2042, %1268
  %2249 = fmul fast float %2212, %2248
  %2250 = fadd fast float %2249, %1268
  br label %2331

; <label>:2251                                    ; preds = %2191
  %2252 = icmp eq i32 %2189, 4
  br i1 %2252, label %2253, label %2301

; <label>:2253                                    ; preds = %2251
  %2254 = fmul fast float %2194, %1868
  %2255 = fmul fast float %2194, %1869
  %2256 = fadd fast float %2254, %1249
  %2257 = fadd fast float %2255, %1250
  %2258 = call float @dx.op.binary.f32(i32 36, float %1266, float %1870)  ; FMin(a,b)
  %2259 = fsub fast float %2258, %1266
  %2260 = fmul fast float %2259, %2197
  %2261 = fadd fast float %2260, %1266
  %2262 = fadd fast float %1867, %1265
  %2263 = fmul fast float %2262, 0x3FF337FAE0000000
  %2264 = fmul fast float %1265, %1265
  %2265 = fmul fast float %1867, %1867
  %2266 = fadd fast float %2265, %2264
  %2267 = fmul fast float %2266, 0x3FE5152B00000000
  %2268 = fmul fast float %1265, 0xBFCC1F85E0000000
  %2269 = fmul fast float %2268, %1867
  %2270 = fadd fast float %2269, 0xBFE1363700000000
  %2271 = fadd fast float %2270, %2263
  %2272 = fsub fast float %2271, %2267
  %2273 = fmul fast float %2262, 0x3FBA6F0D00000000
  %2274 = fmul fast float %2266, 0x3FD0432880000000
  %2275 = fmul fast float %1265, 0xBFEF110800000000
  %2276 = fmul fast float %2275, %1867
  %2277 = fadd fast float %2276, 1.000000e+00
  %2278 = fsub fast float %2277, %2273
  %2279 = fadd fast float %2278, %2274
  %2280 = fdiv fast float %2272, %2279
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float %2281, %1265
  %2283 = fmul fast float %2282, %2200
  %2284 = fadd fast float %2283, %1265
  %2285 = fmul fast float %2203, %1973
  %2286 = fmul fast float %2203, %1974
  %2287 = fmul fast float %2203, %1975
  %2288 = fadd fast float %2285, %1260
  %2289 = fadd fast float %2286, %1261
  %2290 = fadd fast float %2287, %1262
  %2291 = fmul fast float %2206, %2041
  %2292 = fadd fast float %2291, %1267
  %2293 = fmul fast float %2209, %2038
  %2294 = fmul fast float %2209, %2039
  %2295 = fmul fast float %2209, %2040
  %2296 = fadd fast float %2293, %1257
  %2297 = fadd fast float %2294, %1258
  %2298 = fadd fast float %2295, %1259
  %2299 = fmul fast float %2212, %2042
  %2300 = fadd fast float %2299, %1268
  br label %2331

; <label>:2301                                    ; preds = %2251
  %2302 = icmp eq i32 %2189, 8
  br i1 %2302, label %2303, label %2331

; <label>:2303                                    ; preds = %2301
  %2304 = fmul fast float %2194, %1868
  %2305 = fmul fast float %2194, %1869
  %2306 = fadd fast float %2304, %1249
  %2307 = fadd fast float %2305, %1250
  %2308 = call float @dx.op.binary.f32(i32 36, float %1266, float %1870)  ; FMin(a,b)
  %2309 = fsub fast float %2308, %1266
  %2310 = fmul fast float %2309, %2197
  %2311 = fadd fast float %2310, %1266
  %2312 = fsub fast float %1867, %1265
  %2313 = fmul fast float %2200, %2312
  %2314 = fadd fast float %2313, %1265
  %2315 = fmul fast float %2203, %1973
  %2316 = fmul fast float %2203, %1974
  %2317 = fmul fast float %2203, %1975
  %2318 = fadd fast float %2315, %1260
  %2319 = fadd fast float %2316, %1261
  %2320 = fadd fast float %2317, %1262
  %2321 = fmul fast float %2206, %2041
  %2322 = fadd fast float %2321, %1267
  %2323 = fmul fast float %2209, %2038
  %2324 = fmul fast float %2209, %2039
  %2325 = fmul fast float %2209, %2040
  %2326 = fadd fast float %2323, %1257
  %2327 = fadd fast float %2324, %1258
  %2328 = fadd fast float %2325, %1259
  %2329 = fmul fast float %2212, %2042
  %2330 = fadd fast float %2329, %1268
  br label %2331

; <label>:2331                                    ; preds = %2303, %2301, %2253, %2214, %2180, %1566, %1270, %1248
  %2332 = phi float [ %1249, %2180 ], [ %1249, %1566 ], [ %1249, %1248 ], [ %2306, %2303 ], [ %1249, %2301 ], [ %2256, %2253 ], [ %2219, %2214 ], [ %1249, %1270 ]
  %2333 = phi float [ %1250, %2180 ], [ %1250, %1566 ], [ %1250, %1248 ], [ %2307, %2303 ], [ %1250, %2301 ], [ %2257, %2253 ], [ %2220, %2214 ], [ %1250, %1270 ]
  %2334 = phi float [ %2181, %2180 ], [ %1251, %1566 ], [ %1251, %1248 ], [ %2181, %2303 ], [ %2181, %2301 ], [ %2181, %2253 ], [ %2181, %2214 ], [ %1251, %1270 ]
  %2335 = phi float [ %2182, %2180 ], [ %1252, %1566 ], [ %1252, %1248 ], [ %2182, %2303 ], [ %2182, %2301 ], [ %2182, %2253 ], [ %2182, %2214 ], [ %1252, %1270 ]
  %2336 = phi float [ %2183, %2180 ], [ %1253, %1566 ], [ %1253, %1248 ], [ %2183, %2303 ], [ %2183, %2301 ], [ %2183, %2253 ], [ %2183, %2214 ], [ %1253, %1270 ]
  %2337 = phi float [ %2184, %2180 ], [ %1254, %1566 ], [ %1254, %1248 ], [ %2184, %2303 ], [ %2184, %2301 ], [ %2184, %2253 ], [ %2184, %2214 ], [ %1254, %1270 ]
  %2338 = phi float [ %2185, %2180 ], [ %1255, %1566 ], [ %1255, %1248 ], [ %2185, %2303 ], [ %2185, %2301 ], [ %2185, %2253 ], [ %2185, %2214 ], [ %1255, %1270 ]
  %2339 = phi float [ %2186, %2180 ], [ %1256, %1566 ], [ %1256, %1248 ], [ %2186, %2303 ], [ %2186, %2301 ], [ %2186, %2253 ], [ %2186, %2214 ], [ %1256, %1270 ]
  %2340 = phi float [ %1257, %2180 ], [ %1257, %1566 ], [ %1257, %1248 ], [ %2326, %2303 ], [ %1257, %2301 ], [ %2296, %2253 ], [ %2245, %2214 ], [ %1257, %1270 ]
  %2341 = phi float [ %1258, %2180 ], [ %1258, %1566 ], [ %1258, %1248 ], [ %2327, %2303 ], [ %1258, %2301 ], [ %2297, %2253 ], [ %2246, %2214 ], [ %1258, %1270 ]
  %2342 = phi float [ %1259, %2180 ], [ %1259, %1566 ], [ %1259, %1248 ], [ %2328, %2303 ], [ %1259, %2301 ], [ %2298, %2253 ], [ %2247, %2214 ], [ %1259, %1270 ]
  %2343 = phi float [ %1260, %2180 ], [ %1260, %1566 ], [ %1260, %1248 ], [ %2318, %2303 ], [ %1260, %2301 ], [ %2288, %2253 ], [ %2233, %2214 ], [ %1260, %1270 ]
  %2344 = phi float [ %1261, %2180 ], [ %1261, %1566 ], [ %1261, %1248 ], [ %2319, %2303 ], [ %1261, %2301 ], [ %2289, %2253 ], [ %2234, %2214 ], [ %1261, %1270 ]
  %2345 = phi float [ %1262, %2180 ], [ %1262, %1566 ], [ %1262, %1248 ], [ %2320, %2303 ], [ %1262, %2301 ], [ %2290, %2253 ], [ %2235, %2214 ], [ %1262, %1270 ]
  %2346 = phi float [ %2187, %2180 ], [ %1263, %1566 ], [ %1263, %1248 ], [ %2187, %2303 ], [ %2187, %2301 ], [ %2187, %2253 ], [ %2187, %2214 ], [ %1263, %1270 ]
  %2347 = phi float [ %1265, %2180 ], [ %1265, %1566 ], [ %1265, %1248 ], [ %2314, %2303 ], [ %1265, %2301 ], [ %2284, %2253 ], [ %2226, %2214 ], [ %1265, %1270 ]
  %2348 = phi float [ %1266, %2180 ], [ %1266, %1566 ], [ %1266, %1248 ], [ %2311, %2303 ], [ %1266, %2301 ], [ %2261, %2253 ], [ %2223, %2214 ], [ %1266, %1270 ]
  %2349 = phi float [ %1267, %2180 ], [ %1267, %1566 ], [ %1267, %1248 ], [ %2322, %2303 ], [ %1267, %2301 ], [ %2292, %2253 ], [ %2238, %2214 ], [ %1267, %1270 ]
  %2350 = phi float [ %1268, %2180 ], [ %1268, %1566 ], [ %1268, %1248 ], [ %2330, %2303 ], [ %1268, %2301 ], [ %2300, %2253 ], [ %2250, %2214 ], [ %1268, %1270 ]
  %2351 = phi float [ %2188, %2180 ], [ %1269, %1566 ], [ %1269, %1248 ], [ %2188, %2303 ], [ %2188, %2301 ], [ %2188, %2253 ], [ %2188, %2214 ], [ %1269, %1270 ]
  br i1 %409, label %3413, label %2352

; <label>:2352                                    ; preds = %2331
  %2353 = icmp ult i32 %465, 3
  %2354 = add i32 %56, 56
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %56, 60
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = or i32 %2359, %2356
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %3413, label %2362

; <label>:2362                                    ; preds = %2352
  %2363 = and i32 %2356, 262144
  %2364 = icmp ne i32 %2363, 0
  %2365 = select i1 %2364, float %59, float 1.000000e+00
  %2366 = select i1 %2364, float %60, float 0.000000e+00
  %2367 = select i1 %2364, float %61, float 0.000000e+00
  %2368 = select i1 %2364, float %62, float 1.000000e+00
  %2369 = select i1 %2364, float %63, float %84
  %2370 = select i1 %2364, float %64, float %85
  %2371 = add i32 %56, 316
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 16
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = fmul fast float %2375, 0x3F50624DE0000000
  %2377 = add i32 %56, 120
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = lshr i32 %2379, 16
  %2381 = and i32 %2380, 255
  %2382 = lshr i32 %2379, 24
  %2383 = add i32 %56, 324
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = lshr i32 %2385, 16
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = add i32 %56, 64
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 22
  %2394 = shl nuw nsw i32 %2393, 5
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = shl i32 %2392, 4
  %2397 = and i32 %2396, 32752
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = lshr i32 %2392, 7
  %2400 = and i32 %2399, 32752
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = fmul fast float %2403, 1.000000e+03
  %2405 = fmul fast float %359, %2404
  %2406 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2407 = fadd fast float %2406, %349
  %2408 = fmul fast float %360, %2404
  %2409 = call float @dx.op.unary.f32(i32 22, float %2408)  ; Frc(value)
  %2410 = fadd fast float %2409, %351
  %2411 = fmul fast float %2376, %2404
  %2412 = call float @dx.op.unary.f32(i32 22, float %2411)  ; Frc(value)
  %2413 = fmul fast float %2412, 0x401921FB60000000
  %2414 = fadd fast float %2413, %2395
  %2415 = call float @dx.op.unary.f32(i32 13, float %2414)  ; Sin(value)
  %2416 = call float @dx.op.unary.f32(i32 12, float %2414)  ; Cos(value)
  %2417 = fsub fast float -0.000000e+00, %2415
  %2418 = fadd fast float %2369, -5.000000e-01
  %2419 = fadd fast float %2370, -5.000000e-01
  %2420 = fmul fast float %2387, %2418
  %2421 = fmul fast float %2389, %2419
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = fmul fast float %2398, %2422
  %2425 = fmul fast float %2401, %2423
  %2426 = fmul fast float %2416, %2424
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2425, float %2426)  ; FMad(a,b,c)
  %2428 = fmul fast float %2415, %2424
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2425, float %2428)  ; FMad(a,b,c)
  %2430 = fadd fast float %2407, %2427
  %2431 = fadd fast float %2410, %2429
  %2432 = icmp ugt i32 %2381, 1
  %2433 = icmp ugt i32 %2379, 33554431
  %2434 = or i1 %2433, %2432
  br i1 %2434, label %2435, label %2460

; <label>:2435                                    ; preds = %2362
  %2436 = add i32 %56, 260
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = fmul fast float %2403, %2440
  %2442 = call float @dx.op.unary.f32(i32 22, float %2441)  ; Frc(value)
  %2443 = mul nuw nsw i32 %2381, %2382
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2442, %2444
  %2446 = call float @dx.op.unary.f32(i32 27, float %2445)  ; Round_ni(value)
  %2447 = fptoui float %2446 to i32
  %2448 = urem i32 %2447, %2381
  %2449 = udiv i32 %2447, %2382
  %2450 = call float @dx.op.unary.f32(i32 22, float %2430)  ; Frc(value)
  %2451 = call float @dx.op.unary.f32(i32 22, float %2431)  ; Frc(value)
  %2452 = uitofp i32 %2448 to float
  %2453 = uitofp i32 %2449 to float
  %2454 = fadd fast float %2450, %2452
  %2455 = fadd fast float %2451, %2453
  %2456 = uitofp i32 %2381 to float
  %2457 = uitofp i32 %2382 to float
  %2458 = fdiv fast float %2454, %2456
  %2459 = fdiv fast float %2455, %2457
  br label %2460

; <label>:2460                                    ; preds = %2435, %2362
  %2461 = phi float [ %2458, %2435 ], [ %2430, %2362 ]
  %2462 = phi float [ %2459, %2435 ], [ %2431, %2362 ]
  %2463 = and i32 %2356, 16777216
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2574, label %2465

; <label>:2465                                    ; preds = %2460
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fadd fast float %2467, %161
  %2471 = fadd fast float %2468, %162
  %2472 = fadd fast float %2469, %163
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = icmp eq i32 %57, 65535
  br i1 %2476, label %2571, label %2477

; <label>:2477                                    ; preds = %2465
  %2478 = lshr i32 %57, 1
  %2479 = shl i32 %2478, 2
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %57, 1
  %2483 = icmp ne i32 %2482, 0
  %2484 = lshr i32 %2481, 16
  %2485 = and i32 %2481, 65535
  %2486 = select i1 %2483, i32 %2484, i32 %2485
  %2487 = icmp eq i32 %2486, 65535
  br i1 %2487, label %2567, label %2488

; <label>:2488                                    ; preds = %2477
  %2489 = mul nuw nsw i32 %2486, 40
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = add nuw nsw i32 %2489, 12
  %2495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = add nuw nsw i32 %2489, 24
  %2500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = add nuw nsw i32 %2489, 36
  %2505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = fsub fast float %2470, %2491
  %2508 = fsub fast float %2471, %2492
  %2509 = fsub fast float %2472, %2493
  %2510 = fmul fast float %2506, %2507
  %2511 = fmul fast float %2506, %2508
  %2512 = fmul fast float %2506, %2509
  %2513 = call float @dx.op.unary.f32(i32 27, float %2510)  ; Round_ni(value)
  %2514 = call float @dx.op.unary.f32(i32 27, float %2511)  ; Round_ni(value)
  %2515 = call float @dx.op.unary.f32(i32 27, float %2512)  ; Round_ni(value)
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fmul fast float %2516, %2496
  %2520 = fmul fast float %2517, %2497
  %2521 = fmul fast float %2518, %2498
  %2522 = shl i32 %57, 2
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call float @dx.op.unary.f32(i32 22, float %2519)  ; Frc(value)
  %2528 = call float @dx.op.unary.f32(i32 22, float %2520)  ; Frc(value)
  %2529 = call float @dx.op.unary.f32(i32 22, float %2521)  ; Frc(value)
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2526, %dx.types.Handle %49, float %2527, float %2528, float %2529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = fmul fast float %2531, 1.023000e+03
  %2535 = fmul fast float %2532, 1.023000e+03
  %2536 = fmul fast float %2533, 1.023000e+03
  %2537 = fadd fast float %2534, 5.000000e-01
  %2538 = fadd fast float %2535, 5.000000e-01
  %2539 = fadd fast float %2536, 5.000000e-01
  %2540 = call float @dx.op.unary.f32(i32 27, float %2537)  ; Round_ni(value)
  %2541 = call float @dx.op.unary.f32(i32 27, float %2538)  ; Round_ni(value)
  %2542 = call float @dx.op.unary.f32(i32 27, float %2539)  ; Round_ni(value)
  %2543 = fsub fast float %2510, %2513
  %2544 = fsub fast float %2511, %2514
  %2545 = fsub fast float %2512, %2515
  %2546 = fmul fast float %2543, 7.500000e-01
  %2547 = fmul fast float %2544, 7.500000e-01
  %2548 = fmul fast float %2545, 7.500000e-01
  %2549 = fadd fast float %2513, 1.250000e-01
  %2550 = fadd fast float %2549, %2546
  %2551 = fadd fast float %2550, %2540
  %2552 = fadd fast float %2514, 1.250000e-01
  %2553 = fadd fast float %2552, %2547
  %2554 = fadd fast float %2553, %2541
  %2555 = fadd fast float %2515, 1.250000e-01
  %2556 = fadd fast float %2555, %2548
  %2557 = fadd fast float %2556, %2542
  %2558 = fmul fast float %2551, %2501
  %2559 = fmul fast float %2554, %2502
  %2560 = fmul fast float %2557, %2503
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2564, %dx.types.Handle %47, float %2558, float %2559, float %2560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  br label %2567

; <label>:2567                                    ; preds = %2488, %2477
  %2568 = phi float [ %2566, %2488 ], [ -1.000000e+00, %2477 ]
  %2569 = fadd fast float %2568, %2475
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  br label %2571

; <label>:2571                                    ; preds = %2567, %2465
  %2572 = phi float [ %2570, %2567 ], [ %2475, %2465 ]
  %2573 = fmul fast float %2572, %461
  br label %2574

; <label>:2574                                    ; preds = %2571, %2460
  %2575 = phi float [ %2573, %2571 ], [ %461, %2460 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 256
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2626, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %56, 432
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = add i32 %2583, 0
  %2585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2585, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = add i32 %56, 132
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = shl i32 %2590, 4
  %2592 = and i32 %2591, 32752
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = lshr i32 %2590, 7
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = fsub fast float 1.000000e+00, %2575
  %2598 = call float @dx.op.binary.f32(i32 35, float %2597, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2599 = bitcast float %2575 to i32
  %2600 = sitofp i32 %2599 to float
  %2601 = fadd fast float %2600, 0xC1CFBF8940000000
  %2602 = fmul fast float %2596, %2601
  %2603 = fadd fast float %2602, 0x41CFBF8940000000
  %2604 = fptosi float %2603 to i32
  %2605 = bitcast i32 %2604 to float
  %2606 = bitcast float %2598 to i32
  %2607 = sitofp i32 %2606 to float
  %2608 = fadd fast float %2607, 0xC1CFBF8940000000
  %2609 = fmul fast float %2608, %2596
  %2610 = fadd fast float %2609, 0x41CFBF8940000000
  %2611 = fptosi float %2610 to i32
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2605, %2593
  %2614 = fmul fast float %2612, %2593
  %2615 = fsub fast float %2598, %2613
  %2616 = fadd fast float %2614, %2598
  %2617 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2618 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2619 = fsub fast float %2587, %2617
  %2620 = fsub fast float %2618, %2617
  %2621 = bitcast float %2620 to i32
  %2622 = sub nsw i32 2129859010, %2621
  %2623 = bitcast i32 %2622 to float
  %2624 = fmul fast float %2623, %2619
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  br label %2626

; <label>:2626                                    ; preds = %2580, %2574
  %2627 = phi float [ %2625, %2580 ], [ %2575, %2574 ]
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 128
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2648, label %2632

; <label>:2632                                    ; preds = %2626
  %2633 = add i32 %56, 416
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %2635, 0
  %2637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2637, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 524288
  %2643 = icmp ne i32 %2642, 0
  %2644 = fcmp fast ogt float %2639, 0x3FE0101020000000
  %2645 = select i1 %2644, float 1.000000e+00, float 0.000000e+00
  %2646 = select i1 %2643, float %2645, float %2639
  %2647 = fmul fast float %2646, %2627
  br label %2648

; <label>:2648                                    ; preds = %2632, %2626
  %2649 = phi float [ %2647, %2632 ], [ %2627, %2626 ]
  %2650 = fcmp fast ult float %2649, 0x3F70101020000000
  br i1 %2650, label %3413, label %2651

; <label>:2651                                    ; preds = %2648
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 16
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2854, label %2656

; <label>:2656                                    ; preds = %2651
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = add i32 %56, 368
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = add i32 %2661, 0
  %2663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2663, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = extractvalue %dx.types.ResRet.f32 %2664, 3
  %2669 = and i32 %2658, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = lshr i32 %2658, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2668, %2670
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2675, 0x3F70101000000000
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 512
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2689, label %2681

; <label>:2681                                    ; preds = %2656
  %2682 = add i32 %56, 448
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = add i32 %2684, 0
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2686, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  br label %2689

; <label>:2689                                    ; preds = %2681, %2656
  %2690 = phi float [ %2688, %2681 ], [ 1.000000e+00, %2656 ]
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 33554432
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2801, label %2695

; <label>:2695                                    ; preds = %2689
  %2696 = add i32 %56, 256
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 65535
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = lshr i32 %2698, 16
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = add i32 %56, 260
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = and i32 %2705, 65535
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = lshr i32 %2709, 24
  %2711 = uitofp i32 %2710 to float
  %2712 = fmul fast float %2711, 0x3F70101020000000
  %2713 = and i32 %2709, 255
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = lshr i32 %2709, 8
  %2717 = and i32 %2716, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = lshr i32 %2709, 16
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = add i32 %56, 252
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 24
  %2728 = uitofp i32 %2727 to float
  %2729 = fmul fast float %2728, 0x3F70101020000000
  %2730 = and i32 %2726, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F70101020000000
  %2733 = lshr i32 %2726, 8
  %2734 = and i32 %2733, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 0x3F70101020000000
  %2737 = lshr i32 %2726, 16
  %2738 = and i32 %2737, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2739, 0x3F70101020000000
  %2741 = bitcast float %2665 to i32
  %2742 = ashr i32 %2741, 1
  %2743 = sub nsw i32 1597463174, %2742
  %2744 = bitcast i32 %2743 to float
  %2745 = fmul fast float %2665, 5.000000e-01
  %2746 = fmul fast float %2744, %2744
  %2747 = fmul fast float %2746, %2745
  %2748 = fsub fast float 1.500000e+00, %2747
  %2749 = fmul fast float %2744, %2665
  %2750 = fmul fast float %2749, %2748
  %2751 = bitcast float %2666 to i32
  %2752 = ashr i32 %2751, 1
  %2753 = sub nsw i32 1597463174, %2752
  %2754 = bitcast i32 %2753 to float
  %2755 = fmul fast float %2666, 5.000000e-01
  %2756 = fmul fast float %2754, %2754
  %2757 = fmul fast float %2756, %2755
  %2758 = fsub fast float 1.500000e+00, %2757
  %2759 = fmul fast float %2754, %2666
  %2760 = fmul fast float %2759, %2758
  %2761 = bitcast float %2667 to i32
  %2762 = ashr i32 %2761, 1
  %2763 = sub nsw i32 1597463174, %2762
  %2764 = bitcast i32 %2763 to float
  %2765 = fmul fast float %2667, 5.000000e-01
  %2766 = fmul fast float %2764, %2764
  %2767 = fmul fast float %2766, %2765
  %2768 = fsub fast float 1.500000e+00, %2767
  %2769 = fmul fast float %2764, %2667
  %2770 = fmul fast float %2769, %2768
  %2771 = fsub fast float %2750, %2732
  %2772 = fsub fast float %2760, %2736
  %2773 = fsub fast float %2770, %2740
  %2774 = fmul fast float %2771, %2700
  %2775 = fmul fast float %2772, %2702
  %2776 = fmul fast float %2773, %2707
  %2777 = fadd fast float %2774, %2715
  %2778 = fadd fast float %2775, %2719
  %2779 = fadd fast float %2776, %2723
  %2780 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2781 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2782 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2783 = fmul fast float %2780, %2780
  %2784 = fmul fast float %2781, %2781
  %2785 = fmul fast float %2782, %2782
  %2786 = fsub fast float %2783, %2665
  %2787 = fsub fast float %2784, %2666
  %2788 = fsub fast float %2785, %2667
  %2789 = fmul fast float %2786, %2690
  %2790 = fmul fast float %2787, %2690
  %2791 = fmul fast float %2788, %2690
  %2792 = fadd fast float %2789, %2665
  %2793 = fadd fast float %2790, %2666
  %2794 = fadd fast float %2791, %2667
  %2795 = fadd fast float %2712, %2676
  %2796 = fsub fast float %2795, %2729
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fsub fast float %2797, %2676
  %2799 = fmul fast float %2798, %2690
  %2800 = fadd fast float %2799, %2676
  br label %2854

; <label>:2801                                    ; preds = %2689
  %2802 = and i32 %2692, 134217728
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2838, label %2804

; <label>:2804                                    ; preds = %2801
  %2805 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2806 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2807 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2808 = fadd fast float %2805, -5.000000e-01
  %2809 = fadd fast float %2806, -5.000000e-01
  %2810 = fadd fast float %2807, -5.000000e-01
  %2811 = fmul fast float %2808, %2690
  %2812 = fmul fast float %2809, %2690
  %2813 = fmul fast float %2810, %2690
  %2814 = fadd fast float %2811, 5.000000e-01
  %2815 = fadd fast float %2812, 5.000000e-01
  %2816 = fadd fast float %2813, 5.000000e-01
  %2817 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2818 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2819 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2820 = fmul fast float %2814, 2.000000e+00
  %2821 = fsub fast float 1.000000e+00, %2820
  %2822 = fmul fast float %2821, %2817
  %2823 = fadd fast float %2822, %2820
  %2824 = fmul fast float %2823, %2817
  %2825 = fmul fast float %2815, 2.000000e+00
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2826, %2818
  %2828 = fadd fast float %2827, %2825
  %2829 = fmul fast float %2828, %2818
  %2830 = fmul fast float %2816, 2.000000e+00
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = fmul fast float %2831, %2819
  %2833 = fadd fast float %2832, %2830
  %2834 = fmul fast float %2833, %2819
  %2835 = fmul fast float %2824, %2824
  %2836 = fmul fast float %2829, %2829
  %2837 = fmul fast float %2834, %2834
  br label %2854

; <label>:2838                                    ; preds = %2801
  %2839 = fmul fast float %336, %336
  %2840 = fmul fast float %340, %340
  %2841 = fmul fast float %344, %344
  %2842 = fadd fast float %2839, -1.000000e+00
  %2843 = fadd fast float %2840, -1.000000e+00
  %2844 = fadd fast float %2841, -1.000000e+00
  %2845 = fmul fast float %2690, %2842
  %2846 = fmul fast float %2690, %2843
  %2847 = fmul fast float %2690, %2844
  %2848 = fadd fast float %2845, 1.000000e+00
  %2849 = fadd fast float %2846, 1.000000e+00
  %2850 = fadd fast float %2847, 1.000000e+00
  %2851 = fmul fast float %2848, %2665
  %2852 = fmul fast float %2849, %2666
  %2853 = fmul fast float %2850, %2667
  br label %2854

; <label>:2854                                    ; preds = %2838, %2804, %2695, %2651
  %2855 = phi float [ %2800, %2695 ], [ %2676, %2804 ], [ %2676, %2838 ], [ 0x3FA23C0BE0000000, %2651 ]
  %2856 = phi float [ %2792, %2695 ], [ %2835, %2804 ], [ %2851, %2838 ], [ 1.000000e+00, %2651 ]
  %2857 = phi float [ %2793, %2695 ], [ %2836, %2804 ], [ %2852, %2838 ], [ 1.000000e+00, %2651 ]
  %2858 = phi float [ %2794, %2695 ], [ %2837, %2804 ], [ %2853, %2838 ], [ 1.000000e+00, %2651 ]
  %2859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.i32 %2859, 1
  %2861 = and i32 %2860, 1
  %2862 = icmp ne i32 %2861, 0
  %2863 = add i32 %56, 356
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 32
  %2867 = icmp ne i32 %2866, 0
  %2868 = and i1 %2862, %2867
  %2869 = select i1 %2868, float 1.000000e+00, float %2856
  %2870 = select i1 %2868, float 0x3FD3333340000000, float %2857
  %2871 = select i1 %2868, float 0x3FD3333340000000, float %2858
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 32
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2948, label %2876

; <label>:2876                                    ; preds = %2854
  %2877 = add i32 %56, 124
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %56, 384
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = add i32 %2882, 0
  %2884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2884, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = and i32 %2879, 255
  %2891 = uitofp i32 %2890 to float
  %2892 = lshr i32 %2879, 8
  %2893 = and i32 %2892, 255
  %2894 = uitofp i32 %2893 to float
  %2895 = lshr i32 %2879, 16
  %2896 = and i32 %2895, 255
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101000000000
  %2899 = fmul fast float %2886, %2891
  %2900 = fadd fast float %2899, %2894
  %2901 = fmul fast float %2900, 0x3F70101000000000
  %2902 = fadd fast float %2887, -5.000000e-01
  %2903 = fadd fast float %2889, -5.000000e-01
  %2904 = fmul fast float %2902, %2898
  %2905 = fmul fast float %2903, %2898
  %2906 = fadd fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2905, 5.000000e-01
  %2908 = fmul fast float %2906, 2.000000e+00
  %2909 = fadd fast float %2908, -1.000000e+00
  %2910 = fmul fast float %2907, 2.000000e+00
  %2911 = fadd fast float %2910, -1.000000e+00
  %2912 = fadd fast float %2909, %2911
  %2913 = fmul fast float %2912, 5.000000e-01
  %2914 = fsub fast float %2909, %2911
  %2915 = fmul fast float %2914, 5.000000e-01
  %2916 = call float @dx.op.unary.f32(i32 6, float %2913)  ; FAbs(value)
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = call float @dx.op.unary.f32(i32 6, float %2915)  ; FAbs(value)
  %2919 = fsub fast float %2917, %2918
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2915, float %2919, float %2913, float %2915, float %2919)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = call float @dx.op.unary.f32(i32 25, float %2920)  ; Rsqrt(value)
  %2922 = fmul fast float %2913, %2921
  %2923 = fmul fast float %2915, %2921
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 67108864
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2944, label %2928

; <label>:2928                                    ; preds = %2876
  %2929 = add i32 %56, 312
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = lshr i32 %2931, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fsub fast float %2901, %2939
  %2941 = fmul fast float %2940, %2933
  %2942 = fadd fast float %2941, %2937
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  br label %2944

; <label>:2944                                    ; preds = %2928, %2876
  %2945 = phi float [ %2943, %2928 ], [ %2901, %2876 ]
  %2946 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2365, float %2366)  ; Dot2(ax,ay,bx,by)
  %2947 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2367, float %2368)  ; Dot2(ax,ay,bx,by)
  br label %2948

; <label>:2948                                    ; preds = %2944, %2854
  %2949 = phi float [ %2945, %2944 ], [ 0x3FD6666660000000, %2854 ]
  %2950 = phi float [ %2946, %2944 ], [ 0.000000e+00, %2854 ]
  %2951 = phi float [ %2947, %2944 ], [ 0.000000e+00, %2854 ]
  %2952 = phi float [ %2888, %2944 ], [ 1.000000e+00, %2854 ]
  %2953 = add i32 %56, 192
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 22
  %2957 = shl nuw nsw i32 %2956, 5
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 64
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2996, label %2963

; <label>:2963                                    ; preds = %2948
  %2964 = add i32 %56, 400
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = add i32 %2966, 0
  %2968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 131072
  %2972 = icmp eq i32 %2971, 0
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2968, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = fmul fast float %2974, %324
  %2978 = fmul fast float %2975, %327
  %2979 = fmul fast float %2976, %330
  br i1 %2972, label %2986, label %2980

; <label>:2980                                    ; preds = %2963
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = fmul fast float %2982, %2977
  %2984 = fmul fast float %2982, %2978
  %2985 = fmul fast float %2982, %2979
  br label %2986

; <label>:2986                                    ; preds = %2980, %2963
  %2987 = phi float [ %2983, %2980 ], [ %2977, %2963 ]
  %2988 = phi float [ %2984, %2980 ], [ %2978, %2963 ]
  %2989 = phi float [ %2985, %2980 ], [ %2979, %2963 ]
  %2990 = fmul fast float %2987, %2958
  %2991 = select i1 %223, float %2990, float %2987
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2988, float %2989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = select i1 %223, float 0.000000e+00, float %2987
  %2994 = select i1 %223, float %2992, float %2988
  %2995 = select i1 %223, float 0.000000e+00, float %2989
  br label %2996

; <label>:2996                                    ; preds = %2986, %2948
  %2997 = phi float [ %2993, %2986 ], [ 0.000000e+00, %2948 ]
  %2998 = phi float [ %2994, %2986 ], [ 0.000000e+00, %2948 ]
  %2999 = phi float [ %2995, %2986 ], [ 0.000000e+00, %2948 ]
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 1024
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3034, label %3004

; <label>:3004                                    ; preds = %2996
  %3005 = add i32 %56, 184
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = lshr i32 %3007, 8
  %3012 = and i32 %3011, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = lshr i32 %3007, 16
  %3016 = and i32 %3015, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = fmul fast float %3010, %3010
  %3020 = fmul fast float %3014, %3014
  %3021 = fmul fast float %3018, %3018
  %3022 = add i32 %56, 464
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3031 = fmul fast float %3019, %3028
  %3032 = fmul fast float %3020, %3029
  %3033 = fmul fast float %3021, %3030
  br label %3034

; <label>:3034                                    ; preds = %3004, %2996
  %3035 = phi float [ %3031, %3004 ], [ 0.000000e+00, %2996 ]
  %3036 = phi float [ %3032, %3004 ], [ 0.000000e+00, %2996 ]
  %3037 = phi float [ %3033, %3004 ], [ 0.000000e+00, %2996 ]
  %3038 = fcmp fast ogt float %3035, 0.000000e+00
  %3039 = fcmp fast ogt float %3036, 0.000000e+00
  %3040 = fcmp fast ogt float %3037, 0.000000e+00
  %3041 = call float @dx.op.unary.f32(i32 23, float %3035)  ; Log(value)
  %3042 = call float @dx.op.unary.f32(i32 23, float %3036)  ; Log(value)
  %3043 = call float @dx.op.unary.f32(i32 23, float %3037)  ; Log(value)
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 7
  %3047 = and i32 %3046, 32752
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = fmul fast float %3041, 0xBFE62E4300000000
  %3050 = fmul fast float %3049, %3048
  %3051 = fmul fast float %3042, 0xBFE62E4300000000
  %3052 = fmul fast float %3051, %3048
  %3053 = fmul fast float %3043, 0xBFE62E4300000000
  %3054 = fmul fast float %3053, %3048
  %3055 = select i1 %3038, float %3050, float 1.270000e+02
  %3056 = select i1 %3039, float %3052, float 1.270000e+02
  %3057 = select i1 %3040, float %3054, float 1.270000e+02
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 26624
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3119, label %3062

; <label>:3062                                    ; preds = %3034
  %3063 = add i32 %56, 480
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3067, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 3
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 1048576
  %3075 = icmp ne i32 %3074, 0
  %3076 = and i32 %3073, 8192
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3092, label %3078

; <label>:3078                                    ; preds = %3062
  %3079 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3080 = select i1 %3075, float %3079, float %3070
  %3081 = select i1 %3075, float %3069, float %3070
  %3082 = add i32 %56, 128
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F80101020000000
  %3089 = fmul fast float %3088, %3081
  %3090 = fmul fast float %3088, %3070
  %3091 = fmul fast float %3088, %3080
  br label %3092

; <label>:3092                                    ; preds = %3078, %3062
  %3093 = phi float [ %3089, %3078 ], [ 0.000000e+00, %3062 ]
  %3094 = phi float [ %3090, %3078 ], [ 0.000000e+00, %3062 ]
  %3095 = phi float [ %3091, %3078 ], [ 0.000000e+00, %3062 ]
  %3096 = and i32 %3073, 2048
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3106, label %3098

; <label>:3098                                    ; preds = %3092
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = shl i32 %3100, 4
  %3102 = and i32 %3101, 32752
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = fmul fast float %3103, %3071
  %3105 = call float @dx.op.binary.f32(i32 35, float %3104, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3106

; <label>:3106                                    ; preds = %3098, %3092
  %3107 = phi float [ %3105, %3098 ], [ 0x3F70101020000000, %3092 ]
  %3108 = and i32 %3073, 16384
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3119, label %3110

; <label>:3110                                    ; preds = %3106
  %3111 = add i32 %56, 128
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = lshr i32 %3113, 24
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3069, 0x3F70101020000000
  %3117 = select i1 %3075, float 0x3F70101020000000, float %3116
  %3118 = fmul fast float %3117, %3115
  br label %3119

; <label>:3119                                    ; preds = %3110, %3106, %3034
  %3120 = phi float [ %3093, %3110 ], [ %3093, %3106 ], [ 0.000000e+00, %3034 ]
  %3121 = phi float [ %3094, %3110 ], [ %3094, %3106 ], [ 0.000000e+00, %3034 ]
  %3122 = phi float [ %3095, %3110 ], [ %3095, %3106 ], [ 0.000000e+00, %3034 ]
  %3123 = phi float [ %3107, %3110 ], [ %3107, %3106 ], [ 0x3F70101020000000, %3034 ]
  %3124 = phi float [ %3118, %3110 ], [ 0.000000e+00, %3106 ], [ 0.000000e+00, %3034 ]
  %3125 = add i32 %56, 128
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3127, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = fmul fast float %3132, %3133
  %3135 = fadd fast float %3134, %3129
  %3136 = fmul fast float %3135, 0x3F70101020000000
  %3137 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  br i1 %2353, label %3138, label %3173

; <label>:3138                                    ; preds = %3119
  %3139 = fmul fast float %3123, 2.000000e+00
  %3140 = fcmp fast olt float %3055, 1.270000e+02
  %3141 = fcmp fast olt float %3056, 1.270000e+02
  %3142 = fcmp fast olt float %3057, 1.270000e+02
  %3143 = fmul fast float %3055, 0xBFF7154760000000
  %3144 = fmul fast float %3143, %3139
  %3145 = fmul fast float %3056, 0xBFF7154760000000
  %3146 = fmul fast float %3145, %3139
  %3147 = fmul fast float %3057, 0xBFF7154760000000
  %3148 = fmul fast float %3147, %3139
  %3149 = call float @dx.op.unary.f32(i32 21, float %3144)  ; Exp(value)
  %3150 = call float @dx.op.unary.f32(i32 21, float %3146)  ; Exp(value)
  %3151 = call float @dx.op.unary.f32(i32 21, float %3148)  ; Exp(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = fadd fast float %3152, -1.000000e+00
  %3156 = select i1 %3140, float %3155, float -1.000000e+00
  %3157 = fadd fast float %3153, -1.000000e+00
  %3158 = select i1 %3141, float %3157, float -1.000000e+00
  %3159 = fadd fast float %3154, -1.000000e+00
  %3160 = select i1 %3142, float %3159, float -1.000000e+00
  %3161 = fmul fast float %3156, %2649
  %3162 = fmul fast float %3158, %2649
  %3163 = fmul fast float %3160, %2649
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fmul fast float %3164, %2334
  %3168 = fmul fast float %3165, %2335
  %3169 = fmul fast float %3166, %2336
  %3170 = fmul fast float %3164, %2337
  %3171 = fmul fast float %3165, %2338
  %3172 = fmul fast float %3166, %2339
  br label %3173

; <label>:3173                                    ; preds = %3138, %3119
  %3174 = phi float [ %3167, %3138 ], [ %2334, %3119 ]
  %3175 = phi float [ %3168, %3138 ], [ %2335, %3119 ]
  %3176 = phi float [ %3169, %3138 ], [ %2336, %3119 ]
  %3177 = phi float [ %3170, %3138 ], [ %2337, %3119 ]
  %3178 = phi float [ %3171, %3138 ], [ %2338, %3119 ]
  %3179 = phi float [ %3172, %3138 ], [ %2339, %3119 ]
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 3
  %3183 = icmp eq i32 %3182, 3
  br i1 %3183, label %3262, label %3184

; <label>:3184                                    ; preds = %3173
  %3185 = and i32 %3181, 16
  %3186 = icmp ne i32 %3185, 0
  %3187 = select i1 %3186, float %2649, float 0.000000e+00
  %3188 = icmp eq i32 %3182, 0
  br i1 %3188, label %3189, label %3217

; <label>:3189                                    ; preds = %3184
  %3190 = and i32 %3181, 64
  %3191 = icmp ne i32 %3190, 0
  %3192 = select i1 %3191, float %2649, float 0.000000e+00
  %3193 = fsub fast float %2869, %3174
  %3194 = fsub fast float %2870, %3175
  %3195 = fsub fast float %2871, %3176
  %3196 = fmul fast float %3187, %3193
  %3197 = fmul fast float %3187, %3194
  %3198 = fmul fast float %3187, %3195
  %3199 = fadd fast float %3196, %3174
  %3200 = fadd fast float %3197, %3175
  %3201 = fadd fast float %3198, %3176
  %3202 = fsub fast float %2855, %2346
  %3203 = fmul fast float %3187, %3202
  %3204 = fadd fast float %3203, %2346
  %3205 = fsub fast float %2997, %3177
  %3206 = fsub fast float %2998, %3178
  %3207 = fsub fast float %2999, %3179
  %3208 = fmul fast float %3192, %3205
  %3209 = fmul fast float %3192, %3206
  %3210 = fmul fast float %3192, %3207
  %3211 = fadd fast float %3208, %3177
  %3212 = fadd fast float %3209, %3178
  %3213 = fadd fast float %3210, %3179
  %3214 = fsub fast float %3137, %2351
  %3215 = fmul fast float %3187, %3214
  %3216 = fadd fast float %3215, %2351
  br label %3262

; <label>:3217                                    ; preds = %3184
  %3218 = icmp eq i32 %3182, 1
  br i1 %3218, label %3219, label %3232

; <label>:3219                                    ; preds = %3217
  %3220 = fadd fast float %2869, -1.000000e+00
  %3221 = fadd fast float %2870, -1.000000e+00
  %3222 = fadd fast float %2871, -1.000000e+00
  %3223 = fmul fast float %3187, %3220
  %3224 = fmul fast float %3187, %3221
  %3225 = fmul fast float %3187, %3222
  %3226 = fadd fast float %3223, 1.000000e+00
  %3227 = fadd fast float %3224, 1.000000e+00
  %3228 = fadd fast float %3225, 1.000000e+00
  %3229 = fmul fast float %3226, %3174
  %3230 = fmul fast float %3227, %3175
  %3231 = fmul fast float %3228, %3176
  br label %3262

; <label>:3232                                    ; preds = %3217
  %3233 = icmp eq i32 %3182, 2
  br i1 %3233, label %3234, label %3262

; <label>:3234                                    ; preds = %3232
  %3235 = call float @dx.op.unary.f32(i32 24, float %2869)  ; Sqrt(value)
  %3236 = call float @dx.op.unary.f32(i32 24, float %2870)  ; Sqrt(value)
  %3237 = call float @dx.op.unary.f32(i32 24, float %2871)  ; Sqrt(value)
  %3238 = fadd fast float %3235, -5.000000e-01
  %3239 = fadd fast float %3236, -5.000000e-01
  %3240 = fadd fast float %3237, -5.000000e-01
  %3241 = fmul fast float %3238, %3187
  %3242 = fmul fast float %3239, %3187
  %3243 = fmul fast float %3240, %3187
  %3244 = fadd fast float %3241, 5.000000e-01
  %3245 = fadd fast float %3242, 5.000000e-01
  %3246 = fadd fast float %3243, 5.000000e-01
  %3247 = fmul fast float %3244, 2.000000e+00
  %3248 = fsub fast float 1.000000e+00, %3247
  %3249 = fmul fast float %3248, %3174
  %3250 = fadd fast float %3249, %3247
  %3251 = fmul fast float %3250, %3174
  %3252 = fmul fast float %3245, 2.000000e+00
  %3253 = fsub fast float 1.000000e+00, %3252
  %3254 = fmul fast float %3253, %3175
  %3255 = fadd fast float %3254, %3252
  %3256 = fmul fast float %3255, %3175
  %3257 = fmul fast float %3246, 2.000000e+00
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = fmul fast float %3258, %3176
  %3260 = fadd fast float %3259, %3257
  %3261 = fmul fast float %3260, %3176
  br label %3262

; <label>:3262                                    ; preds = %3234, %3232, %3219, %3189, %3173
  %3263 = phi float [ %3174, %3173 ], [ %3251, %3234 ], [ %3174, %3232 ], [ %3229, %3219 ], [ %3199, %3189 ]
  %3264 = phi float [ %3175, %3173 ], [ %3256, %3234 ], [ %3175, %3232 ], [ %3230, %3219 ], [ %3200, %3189 ]
  %3265 = phi float [ %3176, %3173 ], [ %3261, %3234 ], [ %3176, %3232 ], [ %3231, %3219 ], [ %3201, %3189 ]
  %3266 = phi float [ %3177, %3173 ], [ %3177, %3234 ], [ %3177, %3232 ], [ %3177, %3219 ], [ %3211, %3189 ]
  %3267 = phi float [ %3178, %3173 ], [ %3178, %3234 ], [ %3178, %3232 ], [ %3178, %3219 ], [ %3212, %3189 ]
  %3268 = phi float [ %3179, %3173 ], [ %3179, %3234 ], [ %3179, %3232 ], [ %3179, %3219 ], [ %3213, %3189 ]
  %3269 = phi float [ %2346, %3173 ], [ %2346, %3234 ], [ %2346, %3232 ], [ %2346, %3219 ], [ %3204, %3189 ]
  %3270 = phi float [ %2351, %3173 ], [ %2351, %3234 ], [ %2351, %3232 ], [ %2351, %3219 ], [ %3216, %3189 ]
  %3271 = and i32 %3181, 12
  %3272 = icmp eq i32 %3271, 12
  br i1 %3272, label %3413, label %3273

; <label>:3273                                    ; preds = %3262
  %3274 = and i32 %3181, 2097184
  %3275 = icmp eq i32 %3274, 2097184
  %3276 = select i1 %3275, float %2649, float 0.000000e+00
  %3277 = and i32 %3181, 4194336
  %3278 = icmp eq i32 %3277, 4194336
  %3279 = select i1 %3278, float %2649, float 0.000000e+00
  %3280 = and i32 %3181, 8388640
  %3281 = icmp eq i32 %3280, 8388640
  %3282 = select i1 %3281, float %2649, float 0.000000e+00
  %3283 = and i32 %3181, 1024
  %3284 = icmp ne i32 %3283, 0
  %3285 = select i1 %3284, float %2649, float 0.000000e+00
  %3286 = and i32 %3181, 2048
  %3287 = icmp ne i32 %3286, 0
  %3288 = select i1 %3287, float %2649, float 0.000000e+00
  %3289 = and i32 %3181, 8192
  %3290 = icmp ne i32 %3289, 0
  %3291 = select i1 %3290, float %2649, float 0.000000e+00
  %3292 = and i32 %3181, 16384
  %3293 = icmp ne i32 %3292, 0
  %3294 = select i1 %3293, float %2649, float 0.000000e+00
  %3295 = icmp eq i32 %3271, 0
  br i1 %3295, label %3296, label %3333

; <label>:3296                                    ; preds = %3273
  %3297 = fsub fast float %2950, %2332
  %3298 = fsub fast float %2951, %2333
  %3299 = fmul fast float %3276, %3297
  %3300 = fmul fast float %3276, %3298
  %3301 = fadd fast float %3299, %2332
  %3302 = fadd fast float %3300, %2333
  %3303 = fsub fast float %2952, %2348
  %3304 = fmul fast float %3279, %3303
  %3305 = fadd fast float %3304, %2348
  %3306 = fsub fast float %2949, %2347
  %3307 = fmul fast float %3282, %3306
  %3308 = fadd fast float %3307, %2347
  %3309 = fsub fast float %3055, %2343
  %3310 = fsub fast float %3056, %2344
  %3311 = fsub fast float %3057, %2345
  %3312 = fmul fast float %3285, %3309
  %3313 = fmul fast float %3285, %3310
  %3314 = fmul fast float %3285, %3311
  %3315 = fadd fast float %3312, %2343
  %3316 = fadd fast float %3313, %2344
  %3317 = fadd fast float %3314, %2345
  %3318 = fsub fast float %3123, %2349
  %3319 = fmul fast float %3288, %3318
  %3320 = fadd fast float %3319, %2349
  %3321 = fsub fast float %3120, %2340
  %3322 = fsub fast float %3121, %2341
  %3323 = fsub fast float %3122, %2342
  %3324 = fmul fast float %3291, %3321
  %3325 = fmul fast float %3291, %3322
  %3326 = fmul fast float %3291, %3323
  %3327 = fadd fast float %3324, %2340
  %3328 = fadd fast float %3325, %2341
  %3329 = fadd fast float %3326, %2342
  %3330 = fsub fast float %3124, %2350
  %3331 = fmul fast float %3294, %3330
  %3332 = fadd fast float %3331, %2350
  br label %3413

; <label>:3333                                    ; preds = %3273
  %3334 = icmp eq i32 %3271, 4
  br i1 %3334, label %3335, label %3383

; <label>:3335                                    ; preds = %3333
  %3336 = fmul fast float %3276, %2950
  %3337 = fmul fast float %3276, %2951
  %3338 = fadd fast float %3336, %2332
  %3339 = fadd fast float %3337, %2333
  %3340 = call float @dx.op.binary.f32(i32 36, float %2348, float %2952)  ; FMin(a,b)
  %3341 = fsub fast float %3340, %2348
  %3342 = fmul fast float %3341, %3279
  %3343 = fadd fast float %3342, %2348
  %3344 = fadd fast float %2949, %2347
  %3345 = fmul fast float %3344, 0x3FF337FAE0000000
  %3346 = fmul fast float %2347, %2347
  %3347 = fmul fast float %2949, %2949
  %3348 = fadd fast float %3347, %3346
  %3349 = fmul fast float %3348, 0x3FE5152B00000000
  %3350 = fmul fast float %2347, 0xBFCC1F85E0000000
  %3351 = fmul fast float %3350, %2949
  %3352 = fadd fast float %3351, 0xBFE1363700000000
  %3353 = fadd fast float %3352, %3345
  %3354 = fsub fast float %3353, %3349
  %3355 = fmul fast float %3344, 0x3FBA6F0D00000000
  %3356 = fmul fast float %3348, 0x3FD0432880000000
  %3357 = fmul fast float %2347, 0xBFEF110800000000
  %3358 = fmul fast float %3357, %2949
  %3359 = fadd fast float %3358, 1.000000e+00
  %3360 = fsub fast float %3359, %3355
  %3361 = fadd fast float %3360, %3356
  %3362 = fdiv fast float %3354, %3361
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = fsub fast float %3363, %2347
  %3365 = fmul fast float %3364, %3282
  %3366 = fadd fast float %3365, %2347
  %3367 = fmul fast float %3285, %3055
  %3368 = fmul fast float %3285, %3056
  %3369 = fmul fast float %3285, %3057
  %3370 = fadd fast float %3367, %2343
  %3371 = fadd fast float %3368, %2344
  %3372 = fadd fast float %3369, %2345
  %3373 = fmul fast float %3288, %3123
  %3374 = fadd fast float %3373, %2349
  %3375 = fmul fast float %3291, %3120
  %3376 = fmul fast float %3291, %3121
  %3377 = fmul fast float %3291, %3122
  %3378 = fadd fast float %3375, %2340
  %3379 = fadd fast float %3376, %2341
  %3380 = fadd fast float %3377, %2342
  %3381 = fmul fast float %3294, %3124
  %3382 = fadd fast float %3381, %2350
  br label %3413

; <label>:3383                                    ; preds = %3333
  %3384 = icmp eq i32 %3271, 8
  br i1 %3384, label %3385, label %3413

; <label>:3385                                    ; preds = %3383
  %3386 = fmul fast float %3276, %2950
  %3387 = fmul fast float %3276, %2951
  %3388 = fadd fast float %3386, %2332
  %3389 = fadd fast float %3387, %2333
  %3390 = call float @dx.op.binary.f32(i32 36, float %2348, float %2952)  ; FMin(a,b)
  %3391 = fsub fast float %3390, %2348
  %3392 = fmul fast float %3391, %3279
  %3393 = fadd fast float %3392, %2348
  %3394 = fsub fast float %2949, %2347
  %3395 = fmul fast float %3282, %3394
  %3396 = fadd fast float %3395, %2347
  %3397 = fmul fast float %3285, %3055
  %3398 = fmul fast float %3285, %3056
  %3399 = fmul fast float %3285, %3057
  %3400 = fadd fast float %3397, %2343
  %3401 = fadd fast float %3398, %2344
  %3402 = fadd fast float %3399, %2345
  %3403 = fmul fast float %3288, %3123
  %3404 = fadd fast float %3403, %2349
  %3405 = fmul fast float %3291, %3120
  %3406 = fmul fast float %3291, %3121
  %3407 = fmul fast float %3291, %3122
  %3408 = fadd fast float %3405, %2340
  %3409 = fadd fast float %3406, %2341
  %3410 = fadd fast float %3407, %2342
  %3411 = fmul fast float %3294, %3124
  %3412 = fadd fast float %3411, %2350
  br label %3413

; <label>:3413                                    ; preds = %3385, %3383, %3335, %3296, %3262, %2648, %2352, %2331
  %3414 = phi float [ %2332, %3262 ], [ %2332, %2648 ], [ %2332, %2331 ], [ %3388, %3385 ], [ %2332, %3383 ], [ %3338, %3335 ], [ %3301, %3296 ], [ %2332, %2352 ]
  %3415 = phi float [ %2333, %3262 ], [ %2333, %2648 ], [ %2333, %2331 ], [ %3389, %3385 ], [ %2333, %3383 ], [ %3339, %3335 ], [ %3302, %3296 ], [ %2333, %2352 ]
  %3416 = phi float [ %3263, %3262 ], [ %2334, %2648 ], [ %2334, %2331 ], [ %3263, %3385 ], [ %3263, %3383 ], [ %3263, %3335 ], [ %3263, %3296 ], [ %2334, %2352 ]
  %3417 = phi float [ %3264, %3262 ], [ %2335, %2648 ], [ %2335, %2331 ], [ %3264, %3385 ], [ %3264, %3383 ], [ %3264, %3335 ], [ %3264, %3296 ], [ %2335, %2352 ]
  %3418 = phi float [ %3265, %3262 ], [ %2336, %2648 ], [ %2336, %2331 ], [ %3265, %3385 ], [ %3265, %3383 ], [ %3265, %3335 ], [ %3265, %3296 ], [ %2336, %2352 ]
  %3419 = phi float [ %3266, %3262 ], [ %2337, %2648 ], [ %2337, %2331 ], [ %3266, %3385 ], [ %3266, %3383 ], [ %3266, %3335 ], [ %3266, %3296 ], [ %2337, %2352 ]
  %3420 = phi float [ %3267, %3262 ], [ %2338, %2648 ], [ %2338, %2331 ], [ %3267, %3385 ], [ %3267, %3383 ], [ %3267, %3335 ], [ %3267, %3296 ], [ %2338, %2352 ]
  %3421 = phi float [ %3268, %3262 ], [ %2339, %2648 ], [ %2339, %2331 ], [ %3268, %3385 ], [ %3268, %3383 ], [ %3268, %3335 ], [ %3268, %3296 ], [ %2339, %2352 ]
  %3422 = phi float [ %2340, %3262 ], [ %2340, %2648 ], [ %2340, %2331 ], [ %3408, %3385 ], [ %2340, %3383 ], [ %3378, %3335 ], [ %3327, %3296 ], [ %2340, %2352 ]
  %3423 = phi float [ %2341, %3262 ], [ %2341, %2648 ], [ %2341, %2331 ], [ %3409, %3385 ], [ %2341, %3383 ], [ %3379, %3335 ], [ %3328, %3296 ], [ %2341, %2352 ]
  %3424 = phi float [ %2342, %3262 ], [ %2342, %2648 ], [ %2342, %2331 ], [ %3410, %3385 ], [ %2342, %3383 ], [ %3380, %3335 ], [ %3329, %3296 ], [ %2342, %2352 ]
  %3425 = phi float [ %2343, %3262 ], [ %2343, %2648 ], [ %2343, %2331 ], [ %3400, %3385 ], [ %2343, %3383 ], [ %3370, %3335 ], [ %3315, %3296 ], [ %2343, %2352 ]
  %3426 = phi float [ %2344, %3262 ], [ %2344, %2648 ], [ %2344, %2331 ], [ %3401, %3385 ], [ %2344, %3383 ], [ %3371, %3335 ], [ %3316, %3296 ], [ %2344, %2352 ]
  %3427 = phi float [ %2345, %3262 ], [ %2345, %2648 ], [ %2345, %2331 ], [ %3402, %3385 ], [ %2345, %3383 ], [ %3372, %3335 ], [ %3317, %3296 ], [ %2345, %2352 ]
  %3428 = phi float [ %3269, %3262 ], [ %2346, %2648 ], [ %2346, %2331 ], [ %3269, %3385 ], [ %3269, %3383 ], [ %3269, %3335 ], [ %3269, %3296 ], [ %2346, %2352 ]
  %3429 = phi float [ %2347, %3262 ], [ %2347, %2648 ], [ %2347, %2331 ], [ %3396, %3385 ], [ %2347, %3383 ], [ %3366, %3335 ], [ %3308, %3296 ], [ %2347, %2352 ]
  %3430 = phi float [ %2348, %3262 ], [ %2348, %2648 ], [ %2348, %2331 ], [ %3393, %3385 ], [ %2348, %3383 ], [ %3343, %3335 ], [ %3305, %3296 ], [ %2348, %2352 ]
  %3431 = phi float [ %2349, %3262 ], [ %2349, %2648 ], [ %2349, %2331 ], [ %3404, %3385 ], [ %2349, %3383 ], [ %3374, %3335 ], [ %3320, %3296 ], [ %2349, %2352 ]
  %3432 = phi float [ %2350, %3262 ], [ %2350, %2648 ], [ %2350, %2331 ], [ %3412, %3385 ], [ %2350, %3383 ], [ %3382, %3335 ], [ %3332, %3296 ], [ %2350, %2352 ]
  %3433 = phi float [ %3270, %3262 ], [ %2351, %2648 ], [ %2351, %2331 ], [ %3270, %3385 ], [ %3270, %3383 ], [ %3270, %3335 ], [ %3270, %3296 ], [ %2351, %2352 ]
  br i1 %411, label %4495, label %3434

; <label>:3434                                    ; preds = %3413
  %3435 = icmp ult i32 %465, 4
  %3436 = add i32 %56, 72
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %56, 76
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = or i32 %3441, %3438
  %3443 = icmp eq i32 %3442, 0
  br i1 %3443, label %4495, label %3444

; <label>:3444                                    ; preds = %3434
  %3445 = and i32 %3438, 262144
  %3446 = icmp ne i32 %3445, 0
  %3447 = select i1 %3446, float %59, float 1.000000e+00
  %3448 = select i1 %3446, float %60, float 0.000000e+00
  %3449 = select i1 %3446, float %61, float 0.000000e+00
  %3450 = select i1 %3446, float %62, float 1.000000e+00
  %3451 = select i1 %3446, float %63, float %84
  %3452 = select i1 %3446, float %64, float %85
  %3453 = add i32 %56, 332
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = lshr i32 %3455, 16
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = fmul fast float %3457, 0x3F50624DE0000000
  %3459 = add i32 %56, 136
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = lshr i32 %3461, 16
  %3463 = and i32 %3462, 255
  %3464 = lshr i32 %3461, 24
  %3465 = add i32 %56, 340
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %3467, 65535
  %3469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3468)  ; LegacyF16ToF32(value)
  %3470 = lshr i32 %3467, 16
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = add i32 %56, 80
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = lshr i32 %3474, 22
  %3476 = shl nuw nsw i32 %3475, 5
  %3477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3476)  ; LegacyF16ToF32(value)
  %3478 = shl i32 %3474, 4
  %3479 = and i32 %3478, 32752
  %3480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3479)  ; LegacyF16ToF32(value)
  %3481 = lshr i32 %3474, 7
  %3482 = and i32 %3481, 32752
  %3483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3482)  ; LegacyF16ToF32(value)
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3486 = fmul fast float %3485, 1.000000e+03
  %3487 = fmul fast float %401, %3486
  %3488 = call float @dx.op.unary.f32(i32 22, float %3487)  ; Frc(value)
  %3489 = fadd fast float %3488, %391
  %3490 = fmul fast float %402, %3486
  %3491 = call float @dx.op.unary.f32(i32 22, float %3490)  ; Frc(value)
  %3492 = fadd fast float %3491, %393
  %3493 = fmul fast float %3458, %3486
  %3494 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3495 = fmul fast float %3494, 0x401921FB60000000
  %3496 = fadd fast float %3495, %3477
  %3497 = call float @dx.op.unary.f32(i32 13, float %3496)  ; Sin(value)
  %3498 = call float @dx.op.unary.f32(i32 12, float %3496)  ; Cos(value)
  %3499 = fsub fast float -0.000000e+00, %3497
  %3500 = fadd fast float %3451, -5.000000e-01
  %3501 = fadd fast float %3452, -5.000000e-01
  %3502 = fmul fast float %3469, %3500
  %3503 = fmul fast float %3471, %3501
  %3504 = fadd fast float %3502, 5.000000e-01
  %3505 = fadd fast float %3503, 5.000000e-01
  %3506 = fmul fast float %3480, %3504
  %3507 = fmul fast float %3483, %3505
  %3508 = fmul fast float %3498, %3506
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3507, float %3508)  ; FMad(a,b,c)
  %3510 = fmul fast float %3497, %3506
  %3511 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3507, float %3510)  ; FMad(a,b,c)
  %3512 = fadd fast float %3489, %3509
  %3513 = fadd fast float %3492, %3511
  %3514 = icmp ugt i32 %3463, 1
  %3515 = icmp ugt i32 %3461, 33554431
  %3516 = or i1 %3515, %3514
  br i1 %3516, label %3517, label %3542

; <label>:3517                                    ; preds = %3444
  %3518 = add i32 %56, 276
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = lshr i32 %3520, 16
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = fmul fast float %3485, %3522
  %3524 = call float @dx.op.unary.f32(i32 22, float %3523)  ; Frc(value)
  %3525 = mul nuw nsw i32 %3463, %3464
  %3526 = uitofp i32 %3525 to float
  %3527 = fmul fast float %3524, %3526
  %3528 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3529 = fptoui float %3528 to i32
  %3530 = urem i32 %3529, %3463
  %3531 = udiv i32 %3529, %3464
  %3532 = call float @dx.op.unary.f32(i32 22, float %3512)  ; Frc(value)
  %3533 = call float @dx.op.unary.f32(i32 22, float %3513)  ; Frc(value)
  %3534 = uitofp i32 %3530 to float
  %3535 = uitofp i32 %3531 to float
  %3536 = fadd fast float %3532, %3534
  %3537 = fadd fast float %3533, %3535
  %3538 = uitofp i32 %3463 to float
  %3539 = uitofp i32 %3464 to float
  %3540 = fdiv fast float %3536, %3538
  %3541 = fdiv fast float %3537, %3539
  br label %3542

; <label>:3542                                    ; preds = %3517, %3444
  %3543 = phi float [ %3540, %3517 ], [ %3512, %3444 ]
  %3544 = phi float [ %3541, %3517 ], [ %3513, %3444 ]
  %3545 = and i32 %3438, 16777216
  %3546 = icmp eq i32 %3545, 0
  br i1 %3546, label %3656, label %3547

; <label>:3547                                    ; preds = %3542
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = fadd fast float %3549, %161
  %3553 = fadd fast float %3550, %162
  %3554 = fadd fast float %3551, %163
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = icmp eq i32 %57, 65535
  br i1 %3558, label %3653, label %3559

; <label>:3559                                    ; preds = %3547
  %3560 = lshr i32 %57, 1
  %3561 = shl i32 %3560, 2
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %57, 1
  %3565 = icmp ne i32 %3564, 0
  %3566 = lshr i32 %3563, 16
  %3567 = and i32 %3563, 65535
  %3568 = select i1 %3565, i32 %3566, i32 %3567
  %3569 = icmp eq i32 %3568, 65535
  br i1 %3569, label %3649, label %3570

; <label>:3570                                    ; preds = %3559
  %3571 = mul nuw nsw i32 %3568, 40
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = add nuw nsw i32 %3571, 12
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = add nuw nsw i32 %3571, 24
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = add nuw nsw i32 %3571, 36
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = fsub fast float %3552, %3573
  %3590 = fsub fast float %3553, %3574
  %3591 = fsub fast float %3554, %3575
  %3592 = fmul fast float %3588, %3589
  %3593 = fmul fast float %3588, %3590
  %3594 = fmul fast float %3588, %3591
  %3595 = call float @dx.op.unary.f32(i32 27, float %3592)  ; Round_ni(value)
  %3596 = call float @dx.op.unary.f32(i32 27, float %3593)  ; Round_ni(value)
  %3597 = call float @dx.op.unary.f32(i32 27, float %3594)  ; Round_ni(value)
  %3598 = fadd fast float %3595, 5.000000e-01
  %3599 = fadd fast float %3596, 5.000000e-01
  %3600 = fadd fast float %3597, 5.000000e-01
  %3601 = fmul fast float %3598, %3578
  %3602 = fmul fast float %3599, %3579
  %3603 = fmul fast float %3600, %3580
  %3604 = shl i32 %57, 2
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3606, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call float @dx.op.unary.f32(i32 22, float %3601)  ; Frc(value)
  %3610 = call float @dx.op.unary.f32(i32 22, float %3602)  ; Frc(value)
  %3611 = call float @dx.op.unary.f32(i32 22, float %3603)  ; Frc(value)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3608, %dx.types.Handle %49, float %3609, float %3610, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = fmul fast float %3613, 1.023000e+03
  %3617 = fmul fast float %3614, 1.023000e+03
  %3618 = fmul fast float %3615, 1.023000e+03
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3623 = call float @dx.op.unary.f32(i32 27, float %3620)  ; Round_ni(value)
  %3624 = call float @dx.op.unary.f32(i32 27, float %3621)  ; Round_ni(value)
  %3625 = fsub fast float %3592, %3595
  %3626 = fsub fast float %3593, %3596
  %3627 = fsub fast float %3594, %3597
  %3628 = fmul fast float %3625, 7.500000e-01
  %3629 = fmul fast float %3626, 7.500000e-01
  %3630 = fmul fast float %3627, 7.500000e-01
  %3631 = fadd fast float %3595, 1.250000e-01
  %3632 = fadd fast float %3631, %3628
  %3633 = fadd fast float %3632, %3622
  %3634 = fadd fast float %3596, 1.250000e-01
  %3635 = fadd fast float %3634, %3629
  %3636 = fadd fast float %3635, %3623
  %3637 = fadd fast float %3597, 1.250000e-01
  %3638 = fadd fast float %3637, %3630
  %3639 = fadd fast float %3638, %3624
  %3640 = fmul fast float %3633, %3583
  %3641 = fmul fast float %3636, %3584
  %3642 = fmul fast float %3639, %3585
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = add i32 %3644, 0
  %3646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3646, %dx.types.Handle %47, float %3640, float %3641, float %3642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  br label %3649

; <label>:3649                                    ; preds = %3570, %3559
  %3650 = phi float [ %3648, %3570 ], [ -1.000000e+00, %3559 ]
  %3651 = fadd fast float %3650, %3557
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  br label %3653

; <label>:3653                                    ; preds = %3649, %3547
  %3654 = phi float [ %3652, %3649 ], [ %3557, %3547 ]
  %3655 = fmul fast float %3654, %460
  br label %3656

; <label>:3656                                    ; preds = %3653, %3542
  %3657 = phi float [ %3655, %3653 ], [ %460, %3542 ]
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3659, 256
  %3661 = icmp eq i32 %3660, 0
  br i1 %3661, label %3708, label %3662

; <label>:3662                                    ; preds = %3656
  %3663 = add i32 %56, 436
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = add i32 %3665, 0
  %3667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3667, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = add i32 %56, 148
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = shl i32 %3672, 4
  %3674 = and i32 %3673, 32752
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = lshr i32 %3672, 7
  %3677 = and i32 %3676, 32752
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = fsub fast float 1.000000e+00, %3657
  %3680 = call float @dx.op.binary.f32(i32 35, float %3679, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3681 = bitcast float %3657 to i32
  %3682 = sitofp i32 %3681 to float
  %3683 = fadd fast float %3682, 0xC1CFBF8940000000
  %3684 = fmul fast float %3678, %3683
  %3685 = fadd fast float %3684, 0x41CFBF8940000000
  %3686 = fptosi float %3685 to i32
  %3687 = bitcast i32 %3686 to float
  %3688 = bitcast float %3680 to i32
  %3689 = sitofp i32 %3688 to float
  %3690 = fadd fast float %3689, 0xC1CFBF8940000000
  %3691 = fmul fast float %3690, %3678
  %3692 = fadd fast float %3691, 0x41CFBF8940000000
  %3693 = fptosi float %3692 to i32
  %3694 = bitcast i32 %3693 to float
  %3695 = fmul fast float %3687, %3675
  %3696 = fmul fast float %3694, %3675
  %3697 = fsub fast float %3680, %3695
  %3698 = fadd fast float %3696, %3680
  %3699 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3701 = fsub fast float %3669, %3699
  %3702 = fsub fast float %3700, %3699
  %3703 = bitcast float %3702 to i32
  %3704 = sub nsw i32 2129859010, %3703
  %3705 = bitcast i32 %3704 to float
  %3706 = fmul fast float %3705, %3701
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  br label %3708

; <label>:3708                                    ; preds = %3662, %3656
  %3709 = phi float [ %3707, %3662 ], [ %3657, %3656 ]
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 128
  %3713 = icmp eq i32 %3712, 0
  br i1 %3713, label %3730, label %3714

; <label>:3714                                    ; preds = %3708
  %3715 = add i32 %56, 420
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = add i32 %3717, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3719, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 524288
  %3725 = icmp ne i32 %3724, 0
  %3726 = fcmp fast ogt float %3721, 0x3FE0101020000000
  %3727 = select i1 %3726, float 1.000000e+00, float 0.000000e+00
  %3728 = select i1 %3725, float %3727, float %3721
  %3729 = fmul fast float %3728, %3709
  br label %3730

; <label>:3730                                    ; preds = %3714, %3708
  %3731 = phi float [ %3729, %3714 ], [ %3709, %3708 ]
  %3732 = fcmp fast ult float %3731, 0x3F70101020000000
  br i1 %3732, label %4495, label %3733

; <label>:3733                                    ; preds = %3730
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 16
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3936, label %3738

; <label>:3738                                    ; preds = %3733
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = add i32 %56, 372
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = add i32 %3743, 0
  %3745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3745, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = and i32 %3740, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = lshr i32 %3740, 8
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3750, %3752
  %3757 = fadd fast float %3756, %3755
  %3758 = fmul fast float %3757, 0x3F70101000000000
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 512
  %3762 = icmp eq i32 %3761, 0
  br i1 %3762, label %3771, label %3763

; <label>:3763                                    ; preds = %3738
  %3764 = add i32 %56, 452
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = add i32 %3766, 0
  %3768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3768, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  br label %3771

; <label>:3771                                    ; preds = %3763, %3738
  %3772 = phi float [ %3770, %3763 ], [ 1.000000e+00, %3738 ]
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = and i32 %3774, 33554432
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3883, label %3777

; <label>:3777                                    ; preds = %3771
  %3778 = add i32 %56, 272
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = and i32 %3780, 65535
  %3782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3781)  ; LegacyF16ToF32(value)
  %3783 = lshr i32 %3780, 16
  %3784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3783)  ; LegacyF16ToF32(value)
  %3785 = add i32 %56, 276
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = and i32 %3787, 65535
  %3789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3788)  ; LegacyF16ToF32(value)
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = lshr i32 %3791, 24
  %3793 = uitofp i32 %3792 to float
  %3794 = fmul fast float %3793, 0x3F70101020000000
  %3795 = and i32 %3791, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = fmul fast float %3796, 0x3F70101020000000
  %3798 = lshr i32 %3791, 8
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = fmul fast float %3800, 0x3F70101020000000
  %3802 = lshr i32 %3791, 16
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3804, 0x3F70101020000000
  %3806 = add i32 %56, 268
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = lshr i32 %3808, 24
  %3810 = uitofp i32 %3809 to float
  %3811 = fmul fast float %3810, 0x3F70101020000000
  %3812 = and i32 %3808, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = fmul fast float %3813, 0x3F70101020000000
  %3815 = lshr i32 %3808, 8
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = fmul fast float %3817, 0x3F70101020000000
  %3819 = lshr i32 %3808, 16
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = fmul fast float %3821, 0x3F70101020000000
  %3823 = bitcast float %3747 to i32
  %3824 = ashr i32 %3823, 1
  %3825 = sub nsw i32 1597463174, %3824
  %3826 = bitcast i32 %3825 to float
  %3827 = fmul fast float %3747, 5.000000e-01
  %3828 = fmul fast float %3826, %3826
  %3829 = fmul fast float %3828, %3827
  %3830 = fsub fast float 1.500000e+00, %3829
  %3831 = fmul fast float %3826, %3747
  %3832 = fmul fast float %3831, %3830
  %3833 = bitcast float %3748 to i32
  %3834 = ashr i32 %3833, 1
  %3835 = sub nsw i32 1597463174, %3834
  %3836 = bitcast i32 %3835 to float
  %3837 = fmul fast float %3748, 5.000000e-01
  %3838 = fmul fast float %3836, %3836
  %3839 = fmul fast float %3838, %3837
  %3840 = fsub fast float 1.500000e+00, %3839
  %3841 = fmul fast float %3836, %3748
  %3842 = fmul fast float %3841, %3840
  %3843 = bitcast float %3749 to i32
  %3844 = ashr i32 %3843, 1
  %3845 = sub nsw i32 1597463174, %3844
  %3846 = bitcast i32 %3845 to float
  %3847 = fmul fast float %3749, 5.000000e-01
  %3848 = fmul fast float %3846, %3846
  %3849 = fmul fast float %3848, %3847
  %3850 = fsub fast float 1.500000e+00, %3849
  %3851 = fmul fast float %3846, %3749
  %3852 = fmul fast float %3851, %3850
  %3853 = fsub fast float %3832, %3814
  %3854 = fsub fast float %3842, %3818
  %3855 = fsub fast float %3852, %3822
  %3856 = fmul fast float %3853, %3782
  %3857 = fmul fast float %3854, %3784
  %3858 = fmul fast float %3855, %3789
  %3859 = fadd fast float %3856, %3797
  %3860 = fadd fast float %3857, %3801
  %3861 = fadd fast float %3858, %3805
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = fmul fast float %3862, %3862
  %3866 = fmul fast float %3863, %3863
  %3867 = fmul fast float %3864, %3864
  %3868 = fsub fast float %3865, %3747
  %3869 = fsub fast float %3866, %3748
  %3870 = fsub fast float %3867, %3749
  %3871 = fmul fast float %3868, %3772
  %3872 = fmul fast float %3869, %3772
  %3873 = fmul fast float %3870, %3772
  %3874 = fadd fast float %3871, %3747
  %3875 = fadd fast float %3872, %3748
  %3876 = fadd fast float %3873, %3749
  %3877 = fadd fast float %3794, %3758
  %3878 = fsub fast float %3877, %3811
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fsub fast float %3879, %3758
  %3881 = fmul fast float %3880, %3772
  %3882 = fadd fast float %3881, %3758
  br label %3936

; <label>:3883                                    ; preds = %3771
  %3884 = and i32 %3774, 134217728
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3920, label %3886

; <label>:3886                                    ; preds = %3883
  %3887 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3888 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3889 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3890 = fadd fast float %3887, -5.000000e-01
  %3891 = fadd fast float %3888, -5.000000e-01
  %3892 = fadd fast float %3889, -5.000000e-01
  %3893 = fmul fast float %3890, %3772
  %3894 = fmul fast float %3891, %3772
  %3895 = fmul fast float %3892, %3772
  %3896 = fadd fast float %3893, 5.000000e-01
  %3897 = fadd fast float %3894, 5.000000e-01
  %3898 = fadd fast float %3895, 5.000000e-01
  %3899 = call float @dx.op.unary.f32(i32 24, float %3747)  ; Sqrt(value)
  %3900 = call float @dx.op.unary.f32(i32 24, float %3748)  ; Sqrt(value)
  %3901 = call float @dx.op.unary.f32(i32 24, float %3749)  ; Sqrt(value)
  %3902 = fmul fast float %3896, 2.000000e+00
  %3903 = fsub fast float 1.000000e+00, %3902
  %3904 = fmul fast float %3903, %3899
  %3905 = fadd fast float %3904, %3902
  %3906 = fmul fast float %3905, %3899
  %3907 = fmul fast float %3897, 2.000000e+00
  %3908 = fsub fast float 1.000000e+00, %3907
  %3909 = fmul fast float %3908, %3900
  %3910 = fadd fast float %3909, %3907
  %3911 = fmul fast float %3910, %3900
  %3912 = fmul fast float %3898, 2.000000e+00
  %3913 = fsub fast float 1.000000e+00, %3912
  %3914 = fmul fast float %3913, %3901
  %3915 = fadd fast float %3914, %3912
  %3916 = fmul fast float %3915, %3901
  %3917 = fmul fast float %3906, %3906
  %3918 = fmul fast float %3911, %3911
  %3919 = fmul fast float %3916, %3916
  br label %3936

; <label>:3920                                    ; preds = %3883
  %3921 = fmul fast float %378, %378
  %3922 = fmul fast float %382, %382
  %3923 = fmul fast float %386, %386
  %3924 = fadd fast float %3921, -1.000000e+00
  %3925 = fadd fast float %3922, -1.000000e+00
  %3926 = fadd fast float %3923, -1.000000e+00
  %3927 = fmul fast float %3772, %3924
  %3928 = fmul fast float %3772, %3925
  %3929 = fmul fast float %3772, %3926
  %3930 = fadd fast float %3927, 1.000000e+00
  %3931 = fadd fast float %3928, 1.000000e+00
  %3932 = fadd fast float %3929, 1.000000e+00
  %3933 = fmul fast float %3930, %3747
  %3934 = fmul fast float %3931, %3748
  %3935 = fmul fast float %3932, %3749
  br label %3936

; <label>:3936                                    ; preds = %3920, %3886, %3777, %3733
  %3937 = phi float [ %3882, %3777 ], [ %3758, %3886 ], [ %3758, %3920 ], [ 0x3FA23C0BE0000000, %3733 ]
  %3938 = phi float [ %3874, %3777 ], [ %3917, %3886 ], [ %3933, %3920 ], [ 1.000000e+00, %3733 ]
  %3939 = phi float [ %3875, %3777 ], [ %3918, %3886 ], [ %3934, %3920 ], [ 1.000000e+00, %3733 ]
  %3940 = phi float [ %3876, %3777 ], [ %3919, %3886 ], [ %3935, %3920 ], [ 1.000000e+00, %3733 ]
  %3941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.i32 %3941, 1
  %3943 = and i32 %3942, 1
  %3944 = icmp ne i32 %3943, 0
  %3945 = add i32 %56, 356
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 32
  %3949 = icmp ne i32 %3948, 0
  %3950 = and i1 %3944, %3949
  %3951 = select i1 %3950, float 1.000000e+00, float %3938
  %3952 = select i1 %3950, float 0x3FD3333340000000, float %3939
  %3953 = select i1 %3950, float 0x3FD3333340000000, float %3940
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 0
  %3956 = and i32 %3955, 32
  %3957 = icmp eq i32 %3956, 0
  br i1 %3957, label %4030, label %3958

; <label>:3958                                    ; preds = %3936
  %3959 = add i32 %56, 140
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = add i32 %56, 388
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = add i32 %3964, 0
  %3966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3966, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = extractvalue %dx.types.ResRet.f32 %3967, 3
  %3972 = and i32 %3961, 255
  %3973 = uitofp i32 %3972 to float
  %3974 = lshr i32 %3961, 8
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3961, 16
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3979, 0x3F70101000000000
  %3981 = fmul fast float %3968, %3973
  %3982 = fadd fast float %3981, %3976
  %3983 = fmul fast float %3982, 0x3F70101000000000
  %3984 = fadd fast float %3969, -5.000000e-01
  %3985 = fadd fast float %3971, -5.000000e-01
  %3986 = fmul fast float %3984, %3980
  %3987 = fmul fast float %3985, %3980
  %3988 = fadd fast float %3986, 5.000000e-01
  %3989 = fadd fast float %3987, 5.000000e-01
  %3990 = fmul fast float %3988, 2.000000e+00
  %3991 = fadd fast float %3990, -1.000000e+00
  %3992 = fmul fast float %3989, 2.000000e+00
  %3993 = fadd fast float %3992, -1.000000e+00
  %3994 = fadd fast float %3991, %3993
  %3995 = fmul fast float %3994, 5.000000e-01
  %3996 = fsub fast float %3991, %3993
  %3997 = fmul fast float %3996, 5.000000e-01
  %3998 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4001 = fsub fast float %3999, %4000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3997, float %4001, float %3995, float %3997, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %3995, %4003
  %4005 = fmul fast float %3997, %4003
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = and i32 %4007, 67108864
  %4009 = icmp eq i32 %4008, 0
  br i1 %4009, label %4026, label %4010

; <label>:4010                                    ; preds = %3958
  %4011 = add i32 %56, 328
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 65535
  %4015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4014)  ; LegacyF16ToF32(value)
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 65535
  %4019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4018)  ; LegacyF16ToF32(value)
  %4020 = lshr i32 %4013, 16
  %4021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4020)  ; LegacyF16ToF32(value)
  %4022 = fsub fast float %3983, %4021
  %4023 = fmul fast float %4022, %4015
  %4024 = fadd fast float %4023, %4019
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  br label %4026

; <label>:4026                                    ; preds = %4010, %3958
  %4027 = phi float [ %4025, %4010 ], [ %3983, %3958 ]
  %4028 = call float @dx.op.dot2.f32(i32 54, float %4004, float %4005, float %3447, float %3448)  ; Dot2(ax,ay,bx,by)
  %4029 = call float @dx.op.dot2.f32(i32 54, float %4004, float %4005, float %3449, float %3450)  ; Dot2(ax,ay,bx,by)
  br label %4030

; <label>:4030                                    ; preds = %4026, %3936
  %4031 = phi float [ %4027, %4026 ], [ 0x3FD6666660000000, %3936 ]
  %4032 = phi float [ %4028, %4026 ], [ 0.000000e+00, %3936 ]
  %4033 = phi float [ %4029, %4026 ], [ 0.000000e+00, %3936 ]
  %4034 = phi float [ %3970, %4026 ], [ 1.000000e+00, %3936 ]
  %4035 = add i32 %56, 208
  %4036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.i32 %4036, 0
  %4038 = lshr i32 %4037, 22
  %4039 = shl nuw nsw i32 %4038, 5
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, 64
  %4044 = icmp eq i32 %4043, 0
  br i1 %4044, label %4078, label %4045

; <label>:4045                                    ; preds = %4030
  %4046 = add i32 %56, 404
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = add i32 %4048, 0
  %4050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.i32 %4051, 0
  %4053 = and i32 %4052, 131072
  %4054 = icmp eq i32 %4053, 0
  %4055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4050, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %4055, 2
  %4059 = fmul fast float %4056, %366
  %4060 = fmul fast float %4057, %369
  %4061 = fmul fast float %4058, %372
  br i1 %4054, label %4068, label %4062

; <label>:4062                                    ; preds = %4045
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = fmul fast float %4064, %4059
  %4066 = fmul fast float %4064, %4060
  %4067 = fmul fast float %4064, %4061
  br label %4068

; <label>:4068                                    ; preds = %4062, %4045
  %4069 = phi float [ %4065, %4062 ], [ %4059, %4045 ]
  %4070 = phi float [ %4066, %4062 ], [ %4060, %4045 ]
  %4071 = phi float [ %4067, %4062 ], [ %4061, %4045 ]
  %4072 = fmul fast float %4069, %4040
  %4073 = select i1 %223, float %4072, float %4069
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4073, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = select i1 %223, float 0.000000e+00, float %4069
  %4076 = select i1 %223, float %4074, float %4070
  %4077 = select i1 %223, float 0.000000e+00, float %4071
  br label %4078

; <label>:4078                                    ; preds = %4068, %4030
  %4079 = phi float [ %4075, %4068 ], [ 0.000000e+00, %4030 ]
  %4080 = phi float [ %4076, %4068 ], [ 0.000000e+00, %4030 ]
  %4081 = phi float [ %4077, %4068 ], [ 0.000000e+00, %4030 ]
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 1024
  %4085 = icmp eq i32 %4084, 0
  br i1 %4085, label %4116, label %4086

; <label>:4086                                    ; preds = %4078
  %4087 = add i32 %56, 200
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, 255
  %4091 = uitofp i32 %4090 to float
  %4092 = fmul fast float %4091, 0x3F70101020000000
  %4093 = lshr i32 %4089, 8
  %4094 = and i32 %4093, 255
  %4095 = uitofp i32 %4094 to float
  %4096 = fmul fast float %4095, 0x3F70101020000000
  %4097 = lshr i32 %4089, 16
  %4098 = and i32 %4097, 255
  %4099 = uitofp i32 %4098 to float
  %4100 = fmul fast float %4099, 0x3F70101020000000
  %4101 = fmul fast float %4092, %4092
  %4102 = fmul fast float %4096, %4096
  %4103 = fmul fast float %4100, %4100
  %4104 = add i32 %56, 468
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = add i32 %4106, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4108, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = fmul fast float %4101, %4110
  %4114 = fmul fast float %4102, %4111
  %4115 = fmul fast float %4103, %4112
  br label %4116

; <label>:4116                                    ; preds = %4086, %4078
  %4117 = phi float [ %4113, %4086 ], [ 0.000000e+00, %4078 ]
  %4118 = phi float [ %4114, %4086 ], [ 0.000000e+00, %4078 ]
  %4119 = phi float [ %4115, %4086 ], [ 0.000000e+00, %4078 ]
  %4120 = fcmp fast ogt float %4117, 0.000000e+00
  %4121 = fcmp fast ogt float %4118, 0.000000e+00
  %4122 = fcmp fast ogt float %4119, 0.000000e+00
  %4123 = call float @dx.op.unary.f32(i32 23, float %4117)  ; Log(value)
  %4124 = call float @dx.op.unary.f32(i32 23, float %4118)  ; Log(value)
  %4125 = call float @dx.op.unary.f32(i32 23, float %4119)  ; Log(value)
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = lshr i32 %4127, 7
  %4129 = and i32 %4128, 32752
  %4130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4129)  ; LegacyF16ToF32(value)
  %4131 = fmul fast float %4123, 0xBFE62E4300000000
  %4132 = fmul fast float %4131, %4130
  %4133 = fmul fast float %4124, 0xBFE62E4300000000
  %4134 = fmul fast float %4133, %4130
  %4135 = fmul fast float %4125, 0xBFE62E4300000000
  %4136 = fmul fast float %4135, %4130
  %4137 = select i1 %4120, float %4132, float 1.270000e+02
  %4138 = select i1 %4121, float %4134, float 1.270000e+02
  %4139 = select i1 %4122, float %4136, float 1.270000e+02
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = and i32 %4141, 26624
  %4143 = icmp eq i32 %4142, 0
  br i1 %4143, label %4201, label %4144

; <label>:4144                                    ; preds = %4116
  %4145 = add i32 %56, 484
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = add i32 %4147, 0
  %4149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4149, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 3
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = and i32 %4155, 1048576
  %4157 = icmp ne i32 %4156, 0
  %4158 = and i32 %4155, 8192
  %4159 = icmp eq i32 %4158, 0
  br i1 %4159, label %4174, label %4160

; <label>:4160                                    ; preds = %4144
  %4161 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4162 = select i1 %4157, float %4161, float %4152
  %4163 = select i1 %4157, float %4151, float %4152
  %4164 = add i32 %56, 144
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = lshr i32 %4166, 16
  %4168 = and i32 %4167, 255
  %4169 = uitofp i32 %4168 to float
  %4170 = fmul fast float %4169, 0x3F80101020000000
  %4171 = fmul fast float %4170, %4163
  %4172 = fmul fast float %4170, %4152
  %4173 = fmul fast float %4170, %4162
  br label %4174

; <label>:4174                                    ; preds = %4160, %4144
  %4175 = phi float [ %4171, %4160 ], [ 0.000000e+00, %4144 ]
  %4176 = phi float [ %4172, %4160 ], [ 0.000000e+00, %4144 ]
  %4177 = phi float [ %4173, %4160 ], [ 0.000000e+00, %4144 ]
  %4178 = and i32 %4155, 2048
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4188, label %4180

; <label>:4180                                    ; preds = %4174
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = shl i32 %4182, 4
  %4184 = and i32 %4183, 32752
  %4185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4184)  ; LegacyF16ToF32(value)
  %4186 = fmul fast float %4185, %4153
  %4187 = call float @dx.op.binary.f32(i32 35, float %4186, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4188

; <label>:4188                                    ; preds = %4180, %4174
  %4189 = phi float [ %4187, %4180 ], [ 0x3F70101020000000, %4174 ]
  %4190 = and i32 %4155, 16384
  %4191 = icmp eq i32 %4190, 0
  br i1 %4191, label %4201, label %4192

; <label>:4192                                    ; preds = %4188
  %4193 = add i32 %56, 144
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = lshr i32 %4195, 24
  %4197 = uitofp i32 %4196 to float
  %4198 = fmul fast float %4151, 0x3F70101020000000
  %4199 = select i1 %4157, float 0x3F70101020000000, float %4198
  %4200 = fmul fast float %4199, %4197
  br label %4201

; <label>:4201                                    ; preds = %4192, %4188, %4116
  %4202 = phi float [ %4175, %4192 ], [ %4175, %4188 ], [ 0.000000e+00, %4116 ]
  %4203 = phi float [ %4176, %4192 ], [ %4176, %4188 ], [ 0.000000e+00, %4116 ]
  %4204 = phi float [ %4177, %4192 ], [ %4177, %4188 ], [ 0.000000e+00, %4116 ]
  %4205 = phi float [ %4189, %4192 ], [ %4189, %4188 ], [ 0x3F70101020000000, %4116 ]
  %4206 = phi float [ %4200, %4192 ], [ 0.000000e+00, %4188 ], [ 0.000000e+00, %4116 ]
  %4207 = add i32 %56, 144
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = and i32 %4209, 255
  %4211 = uitofp i32 %4210 to float
  %4212 = lshr i32 %4209, 8
  %4213 = and i32 %4212, 255
  %4214 = uitofp i32 %4213 to float
  %4215 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %3953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4216 = fmul fast float %4214, %4215
  %4217 = fadd fast float %4216, %4211
  %4218 = fmul fast float %4217, 0x3F70101020000000
  %4219 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  br i1 %3435, label %4220, label %4255

; <label>:4220                                    ; preds = %4201
  %4221 = fmul fast float %4205, 2.000000e+00
  %4222 = fcmp fast olt float %4137, 1.270000e+02
  %4223 = fcmp fast olt float %4138, 1.270000e+02
  %4224 = fcmp fast olt float %4139, 1.270000e+02
  %4225 = fmul fast float %4137, 0xBFF7154760000000
  %4226 = fmul fast float %4225, %4221
  %4227 = fmul fast float %4138, 0xBFF7154760000000
  %4228 = fmul fast float %4227, %4221
  %4229 = fmul fast float %4139, 0xBFF7154760000000
  %4230 = fmul fast float %4229, %4221
  %4231 = call float @dx.op.unary.f32(i32 21, float %4226)  ; Exp(value)
  %4232 = call float @dx.op.unary.f32(i32 21, float %4228)  ; Exp(value)
  %4233 = call float @dx.op.unary.f32(i32 21, float %4230)  ; Exp(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = fadd fast float %4234, -1.000000e+00
  %4238 = select i1 %4222, float %4237, float -1.000000e+00
  %4239 = fadd fast float %4235, -1.000000e+00
  %4240 = select i1 %4223, float %4239, float -1.000000e+00
  %4241 = fadd fast float %4236, -1.000000e+00
  %4242 = select i1 %4224, float %4241, float -1.000000e+00
  %4243 = fmul fast float %4238, %3731
  %4244 = fmul fast float %4240, %3731
  %4245 = fmul fast float %4242, %3731
  %4246 = fadd fast float %4243, 1.000000e+00
  %4247 = fadd fast float %4244, 1.000000e+00
  %4248 = fadd fast float %4245, 1.000000e+00
  %4249 = fmul fast float %4246, %3416
  %4250 = fmul fast float %4247, %3417
  %4251 = fmul fast float %4248, %3418
  %4252 = fmul fast float %4246, %3419
  %4253 = fmul fast float %4247, %3420
  %4254 = fmul fast float %4248, %3421
  br label %4255

; <label>:4255                                    ; preds = %4220, %4201
  %4256 = phi float [ %4249, %4220 ], [ %3416, %4201 ]
  %4257 = phi float [ %4250, %4220 ], [ %3417, %4201 ]
  %4258 = phi float [ %4251, %4220 ], [ %3418, %4201 ]
  %4259 = phi float [ %4252, %4220 ], [ %3419, %4201 ]
  %4260 = phi float [ %4253, %4220 ], [ %3420, %4201 ]
  %4261 = phi float [ %4254, %4220 ], [ %3421, %4201 ]
  %4262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.i32 %4262, 0
  %4264 = and i32 %4263, 3
  %4265 = icmp eq i32 %4264, 3
  br i1 %4265, label %4344, label %4266

; <label>:4266                                    ; preds = %4255
  %4267 = and i32 %4263, 16
  %4268 = icmp ne i32 %4267, 0
  %4269 = select i1 %4268, float %3731, float 0.000000e+00
  %4270 = icmp eq i32 %4264, 0
  br i1 %4270, label %4271, label %4299

; <label>:4271                                    ; preds = %4266
  %4272 = and i32 %4263, 64
  %4273 = icmp ne i32 %4272, 0
  %4274 = select i1 %4273, float %3731, float 0.000000e+00
  %4275 = fsub fast float %3951, %4256
  %4276 = fsub fast float %3952, %4257
  %4277 = fsub fast float %3953, %4258
  %4278 = fmul fast float %4269, %4275
  %4279 = fmul fast float %4269, %4276
  %4280 = fmul fast float %4269, %4277
  %4281 = fadd fast float %4278, %4256
  %4282 = fadd fast float %4279, %4257
  %4283 = fadd fast float %4280, %4258
  %4284 = fsub fast float %3937, %3428
  %4285 = fmul fast float %4269, %4284
  %4286 = fadd fast float %4285, %3428
  %4287 = fsub fast float %4079, %4259
  %4288 = fsub fast float %4080, %4260
  %4289 = fsub fast float %4081, %4261
  %4290 = fmul fast float %4274, %4287
  %4291 = fmul fast float %4274, %4288
  %4292 = fmul fast float %4274, %4289
  %4293 = fadd fast float %4290, %4259
  %4294 = fadd fast float %4291, %4260
  %4295 = fadd fast float %4292, %4261
  %4296 = fsub fast float %4219, %3433
  %4297 = fmul fast float %4269, %4296
  %4298 = fadd fast float %4297, %3433
  br label %4344

; <label>:4299                                    ; preds = %4266
  %4300 = icmp eq i32 %4264, 1
  br i1 %4300, label %4301, label %4314

; <label>:4301                                    ; preds = %4299
  %4302 = fadd fast float %3951, -1.000000e+00
  %4303 = fadd fast float %3952, -1.000000e+00
  %4304 = fadd fast float %3953, -1.000000e+00
  %4305 = fmul fast float %4269, %4302
  %4306 = fmul fast float %4269, %4303
  %4307 = fmul fast float %4269, %4304
  %4308 = fadd fast float %4305, 1.000000e+00
  %4309 = fadd fast float %4306, 1.000000e+00
  %4310 = fadd fast float %4307, 1.000000e+00
  %4311 = fmul fast float %4308, %4256
  %4312 = fmul fast float %4309, %4257
  %4313 = fmul fast float %4310, %4258
  br label %4344

; <label>:4314                                    ; preds = %4299
  %4315 = icmp eq i32 %4264, 2
  br i1 %4315, label %4316, label %4344

; <label>:4316                                    ; preds = %4314
  %4317 = call float @dx.op.unary.f32(i32 24, float %3951)  ; Sqrt(value)
  %4318 = call float @dx.op.unary.f32(i32 24, float %3952)  ; Sqrt(value)
  %4319 = call float @dx.op.unary.f32(i32 24, float %3953)  ; Sqrt(value)
  %4320 = fadd fast float %4317, -5.000000e-01
  %4321 = fadd fast float %4318, -5.000000e-01
  %4322 = fadd fast float %4319, -5.000000e-01
  %4323 = fmul fast float %4320, %4269
  %4324 = fmul fast float %4321, %4269
  %4325 = fmul fast float %4322, %4269
  %4326 = fadd fast float %4323, 5.000000e-01
  %4327 = fadd fast float %4324, 5.000000e-01
  %4328 = fadd fast float %4325, 5.000000e-01
  %4329 = fmul fast float %4326, 2.000000e+00
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4330, %4256
  %4332 = fadd fast float %4331, %4329
  %4333 = fmul fast float %4332, %4256
  %4334 = fmul fast float %4327, 2.000000e+00
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = fmul fast float %4335, %4257
  %4337 = fadd fast float %4336, %4334
  %4338 = fmul fast float %4337, %4257
  %4339 = fmul fast float %4328, 2.000000e+00
  %4340 = fsub fast float 1.000000e+00, %4339
  %4341 = fmul fast float %4340, %4258
  %4342 = fadd fast float %4341, %4339
  %4343 = fmul fast float %4342, %4258
  br label %4344

; <label>:4344                                    ; preds = %4316, %4314, %4301, %4271, %4255
  %4345 = phi float [ %4256, %4255 ], [ %4333, %4316 ], [ %4256, %4314 ], [ %4311, %4301 ], [ %4281, %4271 ]
  %4346 = phi float [ %4257, %4255 ], [ %4338, %4316 ], [ %4257, %4314 ], [ %4312, %4301 ], [ %4282, %4271 ]
  %4347 = phi float [ %4258, %4255 ], [ %4343, %4316 ], [ %4258, %4314 ], [ %4313, %4301 ], [ %4283, %4271 ]
  %4348 = phi float [ %4259, %4255 ], [ %4259, %4316 ], [ %4259, %4314 ], [ %4259, %4301 ], [ %4293, %4271 ]
  %4349 = phi float [ %4260, %4255 ], [ %4260, %4316 ], [ %4260, %4314 ], [ %4260, %4301 ], [ %4294, %4271 ]
  %4350 = phi float [ %4261, %4255 ], [ %4261, %4316 ], [ %4261, %4314 ], [ %4261, %4301 ], [ %4295, %4271 ]
  %4351 = phi float [ %3428, %4255 ], [ %3428, %4316 ], [ %3428, %4314 ], [ %3428, %4301 ], [ %4286, %4271 ]
  %4352 = phi float [ %3433, %4255 ], [ %3433, %4316 ], [ %3433, %4314 ], [ %3433, %4301 ], [ %4298, %4271 ]
  %4353 = and i32 %4263, 12
  %4354 = icmp eq i32 %4353, 12
  br i1 %4354, label %4495, label %4355

; <label>:4355                                    ; preds = %4344
  %4356 = and i32 %4263, 2097184
  %4357 = icmp eq i32 %4356, 2097184
  %4358 = select i1 %4357, float %3731, float 0.000000e+00
  %4359 = and i32 %4263, 4194336
  %4360 = icmp eq i32 %4359, 4194336
  %4361 = select i1 %4360, float %3731, float 0.000000e+00
  %4362 = and i32 %4263, 8388640
  %4363 = icmp eq i32 %4362, 8388640
  %4364 = select i1 %4363, float %3731, float 0.000000e+00
  %4365 = and i32 %4263, 1024
  %4366 = icmp ne i32 %4365, 0
  %4367 = select i1 %4366, float %3731, float 0.000000e+00
  %4368 = and i32 %4263, 2048
  %4369 = icmp ne i32 %4368, 0
  %4370 = select i1 %4369, float %3731, float 0.000000e+00
  %4371 = and i32 %4263, 8192
  %4372 = icmp ne i32 %4371, 0
  %4373 = select i1 %4372, float %3731, float 0.000000e+00
  %4374 = and i32 %4263, 16384
  %4375 = icmp ne i32 %4374, 0
  %4376 = select i1 %4375, float %3731, float 0.000000e+00
  %4377 = icmp eq i32 %4353, 0
  br i1 %4377, label %4378, label %4415

; <label>:4378                                    ; preds = %4355
  %4379 = fsub fast float %4032, %3414
  %4380 = fsub fast float %4033, %3415
  %4381 = fmul fast float %4358, %4379
  %4382 = fmul fast float %4358, %4380
  %4383 = fadd fast float %4381, %3414
  %4384 = fadd fast float %4382, %3415
  %4385 = fsub fast float %4034, %3430
  %4386 = fmul fast float %4361, %4385
  %4387 = fadd fast float %4386, %3430
  %4388 = fsub fast float %4031, %3429
  %4389 = fmul fast float %4364, %4388
  %4390 = fadd fast float %4389, %3429
  %4391 = fsub fast float %4137, %3425
  %4392 = fsub fast float %4138, %3426
  %4393 = fsub fast float %4139, %3427
  %4394 = fmul fast float %4367, %4391
  %4395 = fmul fast float %4367, %4392
  %4396 = fmul fast float %4367, %4393
  %4397 = fadd fast float %4394, %3425
  %4398 = fadd fast float %4395, %3426
  %4399 = fadd fast float %4396, %3427
  %4400 = fsub fast float %4205, %3431
  %4401 = fmul fast float %4370, %4400
  %4402 = fadd fast float %4401, %3431
  %4403 = fsub fast float %4202, %3422
  %4404 = fsub fast float %4203, %3423
  %4405 = fsub fast float %4204, %3424
  %4406 = fmul fast float %4373, %4403
  %4407 = fmul fast float %4373, %4404
  %4408 = fmul fast float %4373, %4405
  %4409 = fadd fast float %4406, %3422
  %4410 = fadd fast float %4407, %3423
  %4411 = fadd fast float %4408, %3424
  %4412 = fsub fast float %4206, %3432
  %4413 = fmul fast float %4376, %4412
  %4414 = fadd fast float %4413, %3432
  br label %4495

; <label>:4415                                    ; preds = %4355
  %4416 = icmp eq i32 %4353, 4
  br i1 %4416, label %4417, label %4465

; <label>:4417                                    ; preds = %4415
  %4418 = fmul fast float %4358, %4032
  %4419 = fmul fast float %4358, %4033
  %4420 = fadd fast float %4418, %3414
  %4421 = fadd fast float %4419, %3415
  %4422 = call float @dx.op.binary.f32(i32 36, float %3430, float %4034)  ; FMin(a,b)
  %4423 = fsub fast float %4422, %3430
  %4424 = fmul fast float %4423, %4361
  %4425 = fadd fast float %4424, %3430
  %4426 = fadd fast float %4031, %3429
  %4427 = fmul fast float %4426, 0x3FF337FAE0000000
  %4428 = fmul fast float %3429, %3429
  %4429 = fmul fast float %4031, %4031
  %4430 = fadd fast float %4429, %4428
  %4431 = fmul fast float %4430, 0x3FE5152B00000000
  %4432 = fmul fast float %3429, 0xBFCC1F85E0000000
  %4433 = fmul fast float %4432, %4031
  %4434 = fadd fast float %4433, 0xBFE1363700000000
  %4435 = fadd fast float %4434, %4427
  %4436 = fsub fast float %4435, %4431
  %4437 = fmul fast float %4426, 0x3FBA6F0D00000000
  %4438 = fmul fast float %4430, 0x3FD0432880000000
  %4439 = fmul fast float %3429, 0xBFEF110800000000
  %4440 = fmul fast float %4439, %4031
  %4441 = fadd fast float %4440, 1.000000e+00
  %4442 = fsub fast float %4441, %4437
  %4443 = fadd fast float %4442, %4438
  %4444 = fdiv fast float %4436, %4443
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fsub fast float %4445, %3429
  %4447 = fmul fast float %4446, %4364
  %4448 = fadd fast float %4447, %3429
  %4449 = fmul fast float %4367, %4137
  %4450 = fmul fast float %4367, %4138
  %4451 = fmul fast float %4367, %4139
  %4452 = fadd fast float %4449, %3425
  %4453 = fadd fast float %4450, %3426
  %4454 = fadd fast float %4451, %3427
  %4455 = fmul fast float %4370, %4205
  %4456 = fadd fast float %4455, %3431
  %4457 = fmul fast float %4373, %4202
  %4458 = fmul fast float %4373, %4203
  %4459 = fmul fast float %4373, %4204
  %4460 = fadd fast float %4457, %3422
  %4461 = fadd fast float %4458, %3423
  %4462 = fadd fast float %4459, %3424
  %4463 = fmul fast float %4376, %4206
  %4464 = fadd fast float %4463, %3432
  br label %4495

; <label>:4465                                    ; preds = %4415
  %4466 = icmp eq i32 %4353, 8
  br i1 %4466, label %4467, label %4495

; <label>:4467                                    ; preds = %4465
  %4468 = fmul fast float %4358, %4032
  %4469 = fmul fast float %4358, %4033
  %4470 = fadd fast float %4468, %3414
  %4471 = fadd fast float %4469, %3415
  %4472 = call float @dx.op.binary.f32(i32 36, float %3430, float %4034)  ; FMin(a,b)
  %4473 = fsub fast float %4472, %3430
  %4474 = fmul fast float %4473, %4361
  %4475 = fadd fast float %4474, %3430
  %4476 = fsub fast float %4031, %3429
  %4477 = fmul fast float %4364, %4476
  %4478 = fadd fast float %4477, %3429
  %4479 = fmul fast float %4367, %4137
  %4480 = fmul fast float %4367, %4138
  %4481 = fmul fast float %4367, %4139
  %4482 = fadd fast float %4479, %3425
  %4483 = fadd fast float %4480, %3426
  %4484 = fadd fast float %4481, %3427
  %4485 = fmul fast float %4370, %4205
  %4486 = fadd fast float %4485, %3431
  %4487 = fmul fast float %4373, %4202
  %4488 = fmul fast float %4373, %4203
  %4489 = fmul fast float %4373, %4204
  %4490 = fadd fast float %4487, %3422
  %4491 = fadd fast float %4488, %3423
  %4492 = fadd fast float %4489, %3424
  %4493 = fmul fast float %4376, %4206
  %4494 = fadd fast float %4493, %3432
  br label %4495

; <label>:4495                                    ; preds = %4467, %4465, %4417, %4378, %4344, %3730, %3434, %3413
  %4496 = phi float [ %3414, %4344 ], [ %3414, %3730 ], [ %3414, %3413 ], [ %3414, %3434 ], [ %4383, %4378 ], [ %4420, %4417 ], [ %3414, %4465 ], [ %4470, %4467 ]
  %4497 = phi float [ %3415, %4344 ], [ %3415, %3730 ], [ %3415, %3413 ], [ %3415, %3434 ], [ %4384, %4378 ], [ %4421, %4417 ], [ %3415, %4465 ], [ %4471, %4467 ]
  %4498 = phi float [ %4345, %4344 ], [ %3416, %3730 ], [ %3416, %3413 ], [ %3416, %3434 ], [ %4345, %4378 ], [ %4345, %4417 ], [ %4345, %4465 ], [ %4345, %4467 ]
  %4499 = phi float [ %4346, %4344 ], [ %3417, %3730 ], [ %3417, %3413 ], [ %3417, %3434 ], [ %4346, %4378 ], [ %4346, %4417 ], [ %4346, %4465 ], [ %4346, %4467 ]
  %4500 = phi float [ %4347, %4344 ], [ %3418, %3730 ], [ %3418, %3413 ], [ %3418, %3434 ], [ %4347, %4378 ], [ %4347, %4417 ], [ %4347, %4465 ], [ %4347, %4467 ]
  %4501 = phi float [ %4348, %4344 ], [ %3419, %3730 ], [ %3419, %3413 ], [ %3419, %3434 ], [ %4348, %4378 ], [ %4348, %4417 ], [ %4348, %4465 ], [ %4348, %4467 ]
  %4502 = phi float [ %4349, %4344 ], [ %3420, %3730 ], [ %3420, %3413 ], [ %3420, %3434 ], [ %4349, %4378 ], [ %4349, %4417 ], [ %4349, %4465 ], [ %4349, %4467 ]
  %4503 = phi float [ %4350, %4344 ], [ %3421, %3730 ], [ %3421, %3413 ], [ %3421, %3434 ], [ %4350, %4378 ], [ %4350, %4417 ], [ %4350, %4465 ], [ %4350, %4467 ]
  %4504 = phi float [ %3422, %4344 ], [ %3422, %3730 ], [ %3422, %3413 ], [ %3422, %3434 ], [ %4409, %4378 ], [ %4460, %4417 ], [ %3422, %4465 ], [ %4490, %4467 ]
  %4505 = phi float [ %3423, %4344 ], [ %3423, %3730 ], [ %3423, %3413 ], [ %3423, %3434 ], [ %4410, %4378 ], [ %4461, %4417 ], [ %3423, %4465 ], [ %4491, %4467 ]
  %4506 = phi float [ %3424, %4344 ], [ %3424, %3730 ], [ %3424, %3413 ], [ %3424, %3434 ], [ %4411, %4378 ], [ %4462, %4417 ], [ %3424, %4465 ], [ %4492, %4467 ]
  %4507 = phi float [ %3425, %4344 ], [ %3425, %3730 ], [ %3425, %3413 ], [ %3425, %3434 ], [ %4397, %4378 ], [ %4452, %4417 ], [ %3425, %4465 ], [ %4482, %4467 ]
  %4508 = phi float [ %3426, %4344 ], [ %3426, %3730 ], [ %3426, %3413 ], [ %3426, %3434 ], [ %4398, %4378 ], [ %4453, %4417 ], [ %3426, %4465 ], [ %4483, %4467 ]
  %4509 = phi float [ %3427, %4344 ], [ %3427, %3730 ], [ %3427, %3413 ], [ %3427, %3434 ], [ %4399, %4378 ], [ %4454, %4417 ], [ %3427, %4465 ], [ %4484, %4467 ]
  %4510 = phi float [ %4351, %4344 ], [ %3428, %3730 ], [ %3428, %3413 ], [ %3428, %3434 ], [ %4351, %4378 ], [ %4351, %4417 ], [ %4351, %4465 ], [ %4351, %4467 ]
  %4511 = phi float [ %3429, %4344 ], [ %3429, %3730 ], [ %3429, %3413 ], [ %3429, %3434 ], [ %4390, %4378 ], [ %4448, %4417 ], [ %3429, %4465 ], [ %4478, %4467 ]
  %4512 = phi float [ %3430, %4344 ], [ %3430, %3730 ], [ %3430, %3413 ], [ %3430, %3434 ], [ %4387, %4378 ], [ %4425, %4417 ], [ %3430, %4465 ], [ %4475, %4467 ]
  %4513 = phi float [ %3431, %4344 ], [ %3431, %3730 ], [ %3431, %3413 ], [ %3431, %3434 ], [ %4402, %4378 ], [ %4456, %4417 ], [ %3431, %4465 ], [ %4486, %4467 ]
  %4514 = phi float [ %3432, %4344 ], [ %3432, %3730 ], [ %3432, %3413 ], [ %3432, %3434 ], [ %4414, %4378 ], [ %4464, %4417 ], [ %3432, %4465 ], [ %4494, %4467 ]
  %4515 = phi float [ %4352, %4344 ], [ %3433, %3730 ], [ %3433, %3413 ], [ %3433, %3434 ], [ %4352, %4378 ], [ %4352, %4417 ], [ %4352, %4465 ], [ %4352, %4467 ]
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 0
  %4518 = call float @dx.op.dot2.f32(i32 54, float %4496, float %4497, float %4496, float %4497)  ; Dot2(ax,ay,bx,by)
  %4519 = fmul fast float %4518, 0x3FE3333340000000
  %4520 = fsub fast float 1.000000e+00, %4519
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4520, float %4496, float %4497, float %4520)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.unary.f32(i32 25, float %4521)  ; Rsqrt(value)
  %4523 = fmul fast float %4522, %4496
  %4524 = fmul fast float %4522, %4497
  %4525 = fmul fast float %4520, %4522
  %4526 = fmul fast float %4525, %111
  %4527 = fmul fast float %4525, %113
  %4528 = fmul fast float %4525, %115
  %4529 = fmul fast float %4523, %77
  %4530 = fmul fast float %4523, %78
  %4531 = fmul fast float %4523, %79
  %4532 = fadd fast float %4526, %4529
  %4533 = fadd fast float %4527, %4530
  %4534 = fadd fast float %4528, %4531
  %4535 = fmul fast float %125, %4524
  %4536 = fmul fast float %126, %4524
  %4537 = fmul fast float %127, %4524
  %4538 = fadd fast float %4532, %4535
  %4539 = fadd fast float %4533, %4536
  %4540 = fadd fast float %4534, %4537
  %4541 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4538, float %4539, float %4540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = call float @dx.op.unary.f32(i32 25, float %4541)  ; Rsqrt(value)
  %4543 = fmul fast float %4538, %4542
  %4544 = fmul fast float %4539, %4542
  %4545 = fmul fast float %4540, %4542
  %4546 = and i32 %58, 1
  %4547 = icmp eq i32 %4546, 0
  br i1 %4547, label %4548, label %5140

; <label>:4548                                    ; preds = %4495
  %4549 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %4550 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %4551 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4552 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %4553 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %4554 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4555 = fadd fast float %4549, %161
  %4556 = fadd fast float %4550, %162
  %4557 = fadd fast float %4551, %163
  %4558 = fadd fast float %4552, %161
  %4559 = fadd fast float %4553, %162
  %4560 = fadd fast float %4554, %163
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4568 = fmul fast float %4562, %102
  %4569 = fmul fast float %4568, %4566
  %4570 = fmul fast float %4563, %103
  %4571 = fmul fast float %4570, %4567
  %4572 = fptoui float %4569 to i32
  %4573 = fptoui float %4571 to i32
  %4574 = fadd fast float %4562, -1.000000e+00
  %4575 = fadd fast float %4563, -1.000000e+00
  %4576 = fptoui float %4574 to i32
  %4577 = fptoui float %4575 to i32
  %4578 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 %4576)  ; UMin(a,b)
  %4579 = call i32 @dx.op.binary.i32(i32 40, i32 %4573, i32 %4577)  ; UMin(a,b)
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4582 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4583 = fmul fast float %4581, %93
  %4584 = fsub fast float %4583, %4582
  %4585 = fadd fast float %4564, -1.000000e+00
  %4586 = call float @dx.op.binary.f32(i32 36, float %4584, float %4585)  ; FMin(a,b)
  %4587 = fptoui float %4586 to i32
  %4588 = fptoui float %4562 to i32
  %4589 = fptoui float %4563 to i32
  %4590 = mul i32 %4587, %4589
  %4591 = add i32 %4590, %4579
  %4592 = mul i32 %4591, %4588
  %4593 = add i32 %4592, %4578
  %4594 = shl i32 %4593, 2
  %4595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.i32 %4595, 0
  %4597 = and i32 %4596, 1023
  %4598 = lshr i32 %4596, 10
  %4599 = icmp eq i32 %4597, 0
  br i1 %4599, label %5103, label %4600

; <label>:4600                                    ; preds = %4548
  %4601 = and i32 %4596, 1023
  br label %4602

; <label>:4602                                    ; preds = %4734, %4600
  %4603 = phi i32 [ %4684, %4734 ], [ 0, %4600 ]
  %4604 = phi float [ %4735, %4734 ], [ 0.000000e+00, %4600 ]
  %4605 = phi float [ %4736, %4734 ], [ %4517, %4600 ]
  %4606 = phi float [ %4737, %4734 ], [ %4515, %4600 ]
  %4607 = phi float [ %4738, %4734 ], [ %4507, %4600 ]
  %4608 = phi float [ %4739, %4734 ], [ %4508, %4600 ]
  %4609 = phi float [ %4740, %4734 ], [ %4509, %4600 ]
  %4610 = phi float [ %4741, %4734 ], [ %4514, %4600 ]
  %4611 = phi float [ %4742, %4734 ], [ 0.000000e+00, %4600 ]
  %4612 = phi float [ %4743, %4734 ], [ %4504, %4600 ]
  %4613 = phi float [ %4744, %4734 ], [ %4505, %4600 ]
  %4614 = phi float [ %4745, %4734 ], [ %4506, %4600 ]
  %4615 = phi float [ %4746, %4734 ], [ %4501, %4600 ]
  %4616 = phi float [ %4747, %4734 ], [ %4502, %4600 ]
  %4617 = phi float [ %4748, %4734 ], [ %4503, %4600 ]
  %4618 = phi float [ %4749, %4734 ], [ %4543, %4600 ]
  %4619 = phi float [ %4750, %4734 ], [ %4544, %4600 ]
  %4620 = phi float [ %4751, %4734 ], [ %4545, %4600 ]
  %4621 = phi float [ %4752, %4734 ], [ %4512, %4600 ]
  %4622 = phi float [ %4753, %4734 ], [ %4511, %4600 ]
  %4623 = phi float [ %4754, %4734 ], [ 0.000000e+00, %4600 ]
  %4624 = phi float [ %4755, %4734 ], [ %4510, %4600 ]
  %4625 = phi float [ %4756, %4734 ], [ %4498, %4600 ]
  %4626 = phi float [ %4757, %4734 ], [ %4499, %4600 ]
  %4627 = phi float [ %4758, %4734 ], [ %4500, %4600 ]
  %4628 = add nuw nsw i32 %4603, %4598
  %4629 = shl i32 %4628, 2
  %4630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.i32 %4630, 0
  %4632 = shl i32 %4631, 8
  %4633 = or i32 %4632, 48
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = or i32 %4632, 64
  %4640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.i32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.i32 %4640, 1
  %4643 = or i32 %4632, 80
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4647 = or i32 %4632, 96
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.ResRet.f32 %4648, 3
  %4653 = or i32 %4632, 112
  %4654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 2
  %4656 = or i32 %4632, 128
  %4657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  %4661 = extractvalue %dx.types.ResRet.f32 %4657, 3
  %4662 = or i32 %4632, 144
  %4663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4662, i32 undef)  ; BufferLoad(srv,index,wot)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4663, 2
  %4667 = extractvalue %dx.types.ResRet.f32 %4663, 3
  %4668 = or i32 %4632, 160
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = extractvalue %dx.types.ResRet.f32 %4669, 3
  %4674 = or i32 %4632, 192
  %4675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4674, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.i32 %4675, 0
  %4677 = or i32 %4632, 208
  %4678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = or i32 %4632, 248
  %4681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4680, i32 undef)  ; BufferLoad(srv,index,wot)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = add nuw nsw i32 %4603, 1
  %4685 = bitcast float %4638 to i32
  %4686 = and i32 %4685, 512
  %4687 = icmp eq i32 %4686, 0
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = extractvalue %dx.types.ResRet.f32 %4688, 3
  %4693 = call float @dx.op.dot4.f32(i32 56, float %4689, float %4690, float %4691, float %4692, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4694 = or i32 %4632, 16
  %4695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4694, i32 undef)  ; BufferLoad(srv,index,wot)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = extractvalue %dx.types.ResRet.f32 %4695, 1
  %4698 = extractvalue %dx.types.ResRet.f32 %4695, 2
  %4699 = extractvalue %dx.types.ResRet.f32 %4695, 3
  %4700 = call float @dx.op.dot4.f32(i32 56, float %4696, float %4697, float %4698, float %4699, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4701 = or i32 %4632, 32
  %4702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4701, i32 undef)  ; BufferLoad(srv,index,wot)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4706 = extractvalue %dx.types.ResRet.f32 %4702, 3
  %4707 = call float @dx.op.dot4.f32(i32 56, float %4703, float %4704, float %4705, float %4706, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4708 = call float @dx.op.unary.f32(i32 27, float %4693)  ; Round_ni(value)
  %4709 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4710 = call float @dx.op.unary.f32(i32 27, float %4700)  ; Round_ni(value)
  %4711 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4712 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4713 = call float @dx.op.unary.f32(i32 27, float %4712)  ; Round_ni(value)
  %4714 = fadd fast float %4711, %4709
  %4715 = fadd fast float %4714, %4713
  %4716 = fcmp fast oeq float %4715, 0.000000e+00
  %4717 = call float @dx.op.dot4.f32(i32 56, float %4689, float %4690, float %4691, float %4692, float %4555, float %4556, float %4557, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4718 = call float @dx.op.dot4.f32(i32 56, float %4696, float %4697, float %4698, float %4699, float %4555, float %4556, float %4557, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4719 = call float @dx.op.dot4.f32(i32 56, float %4689, float %4690, float %4691, float %4692, float %4558, float %4559, float %4560, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4720 = call float @dx.op.dot4.f32(i32 56, float %4696, float %4697, float %4698, float %4699, float %4558, float %4559, float %4560, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4721 = fsub fast float %4717, %4693
  %4722 = fsub fast float %4719, %4693
  %4723 = fsub fast float %4718, %4700
  %4724 = fsub fast float %4720, %4700
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4728 = fadd fast float %4727, %4725
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4731 = fcmp fast ogt float %4729, %4730
  %4732 = and i1 %4716, %4731
  %4733 = and i1 %4687, %4732
  br i1 %4733, label %4760, label %4734

; <label>:4734                                    ; preds = %5089, %4841, %4760, %4602
  %4735 = phi float [ %4604, %4760 ], [ %4844, %4841 ], [ %4844, %5089 ], [ %4604, %4602 ]
  %4736 = phi float [ %4605, %4760 ], [ %4605, %4841 ], [ %5065, %5089 ], [ %4605, %4602 ]
  %4737 = phi float [ %4606, %4760 ], [ %4606, %4841 ], [ %5063, %5089 ], [ %4606, %4602 ]
  %4738 = phi float [ %4607, %4760 ], [ %4607, %4841 ], [ %5041, %5089 ], [ %4607, %4602 ]
  %4739 = phi float [ %4608, %4760 ], [ %4608, %4841 ], [ %5042, %5089 ], [ %4608, %4602 ]
  %4740 = phi float [ %4609, %4760 ], [ %4609, %4841 ], [ %5043, %5089 ], [ %4609, %4602 ]
  %4741 = phi float [ %4610, %4760 ], [ %4610, %4841 ], [ %4968, %5089 ], [ %4610, %4602 ]
  %4742 = phi float [ %4611, %4760 ], [ %4611, %4841 ], [ %4966, %5089 ], [ %4611, %4602 ]
  %4743 = phi float [ %4612, %4760 ], [ %4612, %4841 ], [ %5011, %5089 ], [ %4612, %4602 ]
  %4744 = phi float [ %4613, %4760 ], [ %4613, %4841 ], [ %5012, %5089 ], [ %4613, %4602 ]
  %4745 = phi float [ %4614, %4760 ], [ %4614, %4841 ], [ %5013, %5089 ], [ %4614, %4602 ]
  %4746 = phi float [ %4615, %4760 ], [ %4615, %4841 ], [ %5099, %5089 ], [ %4615, %4602 ]
  %4747 = phi float [ %4616, %4760 ], [ %4616, %4841 ], [ %5100, %5089 ], [ %4616, %4602 ]
  %4748 = phi float [ %4617, %4760 ], [ %4617, %4841 ], [ %5101, %5089 ], [ %4617, %4602 ]
  %4749 = phi float [ %4618, %4760 ], [ %4618, %4841 ], [ %4947, %5089 ], [ %4618, %4602 ]
  %4750 = phi float [ %4619, %4760 ], [ %4619, %4841 ], [ %4948, %5089 ], [ %4619, %4602 ]
  %4751 = phi float [ %4620, %4760 ], [ %4620, %4841 ], [ %4949, %5089 ], [ %4620, %4602 ]
  %4752 = phi float [ %4621, %4760 ], [ %4621, %4841 ], [ %5021, %5089 ], [ %4621, %4602 ]
  %4753 = phi float [ %4622, %4760 ], [ %4622, %4841 ], [ %5018, %5089 ], [ %4622, %4602 ]
  %4754 = phi float [ %4623, %4760 ], [ %4623, %4841 ], [ %5015, %5089 ], [ %4623, %4602 ]
  %4755 = phi float [ %4624, %4760 ], [ %4624, %4841 ], [ %4964, %5089 ], [ %4624, %4602 ]
  %4756 = phi float [ %4625, %4760 ], [ %4625, %4841 ], [ %4959, %5089 ], [ %4625, %4602 ]
  %4757 = phi float [ %4626, %4760 ], [ %4626, %4841 ], [ %4960, %5089 ], [ %4626, %4602 ]
  %4758 = phi float [ %4627, %4760 ], [ %4627, %4841 ], [ %4961, %5089 ], [ %4627, %4602 ]
  %4759 = icmp eq i32 %4684, %4601
  br i1 %4759, label %5102, label %4602

; <label>:4760                                    ; preds = %4602
  %4761 = extractvalue %dx.types.ResRet.f32 %4654, 3
  %4762 = extractvalue %dx.types.ResRet.f32 %4654, 1
  %4763 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4766 = extractvalue %dx.types.ResRet.i32 %4640, 3
  %4767 = extractvalue %dx.types.ResRet.i32 %4640, 2
  %4768 = add i32 %4766, 0
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4769, %dx.types.Handle %4770, float %4693, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4721, float %4723, float undef, float %4722, float %4724, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = fmul fast float %4772, %4765
  %4774 = fadd fast float %4773, %4764
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4693, %4649
  %4777 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4700, float %4776)  ; FMad(a,b,c)
  %4778 = fadd fast float %4777, %4763
  %4779 = fmul fast float %4693, %4651
  %4780 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4700, float %4779)  ; FMad(a,b,c)
  %4781 = fadd fast float %4780, %4762
  %4782 = fmul fast float %4721, %4649
  %4783 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4723, float %4782)  ; FMad(a,b,c)
  %4784 = fmul fast float %4721, %4651
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4723, float %4784)  ; FMad(a,b,c)
  %4786 = fmul fast float %4722, %4649
  %4787 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4724, float %4786)  ; FMad(a,b,c)
  %4788 = fmul fast float %4722, %4651
  %4789 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4724, float %4788)  ; FMad(a,b,c)
  %4790 = add i32 %4767, 0
  %4791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4791, %dx.types.Handle %4770, float %4778, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4783, float %4785, float undef, float %4787, float %4789, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = and i32 %4685, 1024
  %4795 = icmp ne i32 %4794, 0
  %4796 = fcmp fast ogt float %4793, 0x3FE0101020000000
  %4797 = uitofp i1 %4796 to float
  %4798 = select i1 %4795, float %4797, float %4793
  %4799 = and i32 %4685, 8192
  %4800 = icmp ne i32 %4799, 0
  %4801 = select i1 %4800, float %4761, float 1.000000e+00
  %4802 = fmul fast float %4693, 2.000000e+00
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4805 = fmul fast float %4804, %4682
  %4806 = fsub fast float %4805, %4682
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fmul fast float %4700, 2.000000e+00
  %4809 = fadd fast float %4808, -1.000000e+00
  %4810 = call float @dx.op.unary.f32(i32 6, float %4809)  ; FAbs(value)
  %4811 = fmul fast float %4810, %4683
  %4812 = fsub fast float %4811, %4683
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fmul fast float %4712, %4645
  %4815 = fsub fast float %4814, %4645
  %4816 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4817 = fmul fast float %4775, %4801
  %4818 = fmul fast float %4817, %4772
  %4819 = fmul fast float %4818, %4807
  %4820 = fmul fast float %4819, %4798
  %4821 = fmul fast float %4820, %4813
  %4822 = fmul fast float %4821, %4816
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4826 = fsub fast float %4729, %4825
  %4827 = fmul fast float %4826, %4824
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = fmul fast float %4822, %4646
  %4830 = fadd fast float %4822, %4646
  %4831 = fmul fast float %4830, %4655
  %4832 = fsub fast float %4831, %4655
  %4833 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4834 = and i32 %4685, 128
  %4835 = icmp ne i32 %4834, 0
  %4836 = select i1 %4835, float %4833, float %4829
  %4837 = fmul fast float %4836, %4828
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = fcmp fast ugt float %4837, %4839
  br i1 %4840, label %4841, label %4734

; <label>:4841                                    ; preds = %4760
  %4842 = select i1 %4800, float %4837, float 0.000000e+00
  %4843 = fadd fast float %4842, %4604
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  br i1 %4800, label %4734, label %4845

; <label>:4845                                    ; preds = %4841
  %4846 = and i32 %4685, 4
  %4847 = and i32 %4685, 8
  %4848 = add i32 %4641, 0
  %4849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4848, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4851 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4849, %dx.types.Handle %4850, float %4778, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4783, float %4785, float undef, float %4787, float %4789, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4852 = extractvalue %dx.types.ResRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.ResRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.ResRet.f32 %4851, 2
  %4855 = extractvalue %dx.types.ResRet.f32 %4851, 3
  %4856 = bitcast float %4667 to i32
  %4857 = and i32 %4856, 255
  %4858 = uitofp i32 %4857 to float
  %4859 = lshr i32 %4856, 8
  %4860 = and i32 %4859, 255
  %4861 = uitofp i32 %4860 to float
  %4862 = fmul fast float %4855, %4858
  %4863 = fadd fast float %4862, %4861
  %4864 = fmul fast float %4863, 0x3F70101000000000
  %4865 = add i32 %4642, 0
  %4866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4865, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4867 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4866, %dx.types.Handle %4850, float %4778, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4783, float %4785, float undef, float %4787, float %4789, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4868 = extractvalue %dx.types.ResRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.ResRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.ResRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.ResRet.f32 %4867, 3
  %4872 = bitcast float %4661 to i32
  %4873 = and i32 %4872, 255
  %4874 = uitofp i32 %4873 to float
  %4875 = lshr i32 %4872, 8
  %4876 = and i32 %4875, 255
  %4877 = uitofp i32 %4876 to float
  %4878 = lshr i32 %4872, 16
  %4879 = and i32 %4878, 255
  %4880 = uitofp i32 %4879 to float
  %4881 = fmul fast float %4880, 0x3F70101000000000
  %4882 = fmul fast float %4868, %4874
  %4883 = fadd fast float %4882, %4877
  %4884 = fmul fast float %4883, 0x3F70101000000000
  %4885 = fadd fast float %4869, -5.000000e-01
  %4886 = fadd fast float %4871, -5.000000e-01
  %4887 = fmul fast float %4885, %4881
  %4888 = fmul fast float %4886, %4881
  %4889 = fadd fast float %4887, 5.000000e-01
  %4890 = fadd fast float %4888, 5.000000e-01
  %4891 = fmul fast float %4852, %4670
  %4892 = fmul fast float %4853, %4671
  %4893 = fmul fast float %4854, %4672
  %4894 = fmul fast float %4889, 2.000000e+00
  %4895 = fadd fast float %4894, -1.000000e+00
  %4896 = fmul fast float %4890, 2.000000e+00
  %4897 = fadd fast float %4896, -1.000000e+00
  %4898 = fadd fast float %4895, %4897
  %4899 = fmul fast float %4898, 5.000000e-01
  %4900 = fsub fast float %4895, %4897
  %4901 = fmul fast float %4900, 5.000000e-01
  %4902 = call float @dx.op.unary.f32(i32 6, float %4899)  ; FAbs(value)
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = call float @dx.op.unary.f32(i32 6, float %4901)  ; FAbs(value)
  %4905 = fsub fast float %4903, %4904
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4901, float %4905, float %4899, float %4901, float %4905)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 25, float %4906)  ; Rsqrt(value)
  %4908 = fmul fast float %4899, %4907
  %4909 = fmul fast float %4901, %4907
  %4910 = fmul fast float %4907, %4905
  %4911 = fmul fast float %4910, %4635
  %4912 = fmul fast float %4910, %4636
  %4913 = fmul fast float %4910, %4637
  %4914 = fmul fast float %4908, %4658
  %4915 = fmul fast float %4908, %4659
  %4916 = fmul fast float %4908, %4660
  %4917 = fadd fast float %4914, %4911
  %4918 = fadd fast float %4915, %4912
  %4919 = fadd fast float %4916, %4913
  %4920 = fmul fast float %4909, %4664
  %4921 = fmul fast float %4909, %4665
  %4922 = fmul fast float %4909, %4666
  %4923 = fadd fast float %4917, %4920
  %4924 = fadd fast float %4918, %4921
  %4925 = fadd fast float %4919, %4922
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4923, %4927
  %4929 = fmul fast float %4924, %4927
  %4930 = fmul fast float %4925, %4927
  %4931 = icmp ne i32 %4847, 0
  %4932 = select i1 %4931, float 1.000000e+00, float 0.000000e+00
  %4933 = fmul fast float %4837, %4932
  %4934 = and i32 %4685, 1
  %4935 = icmp eq i32 %4934, 0
  br i1 %4935, label %4936, label %4940

; <label>:4936                                    ; preds = %4845
  %4937 = fsub fast float %4928, %4618
  %4938 = fsub fast float %4929, %4619
  %4939 = fsub fast float %4930, %4620
  br label %4940

; <label>:4940                                    ; preds = %4936, %4845
  %4941 = phi float [ %4937, %4936 ], [ %4928, %4845 ]
  %4942 = phi float [ %4938, %4936 ], [ %4929, %4845 ]
  %4943 = phi float [ %4939, %4936 ], [ %4930, %4845 ]
  %4944 = fmul float %4943, %4933
  %4945 = fmul float %4942, %4933
  %4946 = fmul float %4941, %4933
  %4947 = fadd fast float %4946, %4618
  %4948 = fadd fast float %4945, %4619
  %4949 = fadd fast float %4944, %4620
  %4950 = icmp ne i32 %4846, 0
  %4951 = select i1 %4950, float 1.000000e+00, float 0.000000e+00
  %4952 = fmul fast float %4837, %4951
  %4953 = fsub fast float %4891, %4625
  %4954 = fsub fast float %4892, %4626
  %4955 = fsub fast float %4893, %4627
  %4956 = fmul fast float %4953, %4952
  %4957 = fmul fast float %4954, %4952
  %4958 = fmul fast float %4955, %4952
  %4959 = fadd fast float %4956, %4625
  %4960 = fadd fast float %4957, %4626
  %4961 = fadd fast float %4958, %4627
  %4962 = fsub fast float %4864, %4624
  %4963 = fmul fast float %4962, %4952
  %4964 = fadd fast float %4963, %4624
  %4965 = fmul fast float %4952, %4611
  %4966 = fsub fast float %4611, %4965
  %4967 = fmul fast float %4952, %4610
  %4968 = fsub fast float %4610, %4967
  %4969 = bitcast float %4679 to i32
  %4970 = lshr i32 %4969, 16
  %4971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4970)  ; LegacyF16ToF32(value)
  %4972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4973 = extractvalue %dx.types.ResRet.i32 %4972, 0
  %4974 = and i32 %4973, 1
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %4976, label %5001

; <label>:4976                                    ; preds = %4940
  %4977 = fadd fast float %4864, 0xBFB99999A0000000
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, 0x3FF1C71C80000000
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = fmul fast float %4981, %4891
  %4983 = fmul fast float %4981, %4892
  %4984 = fmul fast float %4981, %4893
  %4985 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.binary.f32(i32 35, float %4986, float %4987)  ; FMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %4985, float %4988)  ; FMax(a,b)
  %4990 = fcmp fast ogt float %4989, 0.000000e+00
  %4991 = bitcast float %4989 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = select i1 %4990, float %4993, float 0.000000e+00
  %4995 = fmul fast float %4985, %4971
  %4996 = fmul fast float %4986, %4971
  %4997 = fmul fast float %4987, %4971
  %4998 = fmul fast float %4995, %4994
  %4999 = fmul fast float %4996, %4994
  %5000 = fmul fast float %4997, %4994
  br label %5001

; <label>:5001                                    ; preds = %4976, %4940
  %5002 = phi float [ %4971, %4940 ], [ %4998, %4976 ]
  %5003 = phi float [ %4971, %4940 ], [ %4999, %4976 ]
  %5004 = phi float [ %4971, %4940 ], [ %5000, %4976 ]
  %5005 = fsub fast float %5002, %4612
  %5006 = fsub fast float %5003, %4613
  %5007 = fsub fast float %5004, %4614
  %5008 = fmul fast float %5005, %4952
  %5009 = fmul fast float %5006, %4952
  %5010 = fmul fast float %5007, %4952
  %5011 = fadd fast float %5008, %4612
  %5012 = fadd fast float %5009, %4613
  %5013 = fadd fast float %5010, %4614
  %5014 = fadd fast float %4837, %4623
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fsub fast float %4884, %4622
  %5017 = fmul fast float %5016, %4933
  %5018 = fadd fast float %5017, %4622
  %5019 = fsub fast float %4870, %4621
  %5020 = fmul fast float %5019, %4933
  %5021 = fadd fast float %5020, %4621
  br i1 %4935, label %5030, label %5022

; <label>:5022                                    ; preds = %5001
  %5023 = and i32 %4685, 32768
  %5024 = icmp eq i32 %5023, 0
  br i1 %5024, label %5040, label %5025

; <label>:5025                                    ; preds = %5022
  %5026 = fmul fast float %4933, 1.270000e+02
  %5027 = fadd fast float %5026, %4607
  %5028 = fadd fast float %5026, %4608
  %5029 = fadd fast float %5026, %4609
  br label %5040

; <label>:5030                                    ; preds = %5001
  %5031 = fsub fast float 1.270000e+02, %4607
  %5032 = fsub fast float 1.270000e+02, %4608
  %5033 = fsub fast float 1.270000e+02, %4609
  %5034 = fmul fast float %4933, %5031
  %5035 = fmul fast float %4933, %5032
  %5036 = fmul fast float %4933, %5033
  %5037 = fadd fast float %5034, %4607
  %5038 = fadd fast float %5035, %4608
  %5039 = fadd fast float %5036, %4609
  br label %5040

; <label>:5040                                    ; preds = %5030, %5025, %5022
  %5041 = phi float [ %5027, %5025 ], [ %4607, %5022 ], [ %5037, %5030 ]
  %5042 = phi float [ %5028, %5025 ], [ %4608, %5022 ], [ %5038, %5030 ]
  %5043 = phi float [ %5029, %5025 ], [ %4609, %5022 ], [ %5039, %5030 ]
  %5044 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.CBufRet.f32 %5045, 1
  %5048 = fmul fast float %5047, %5044
  %5049 = fadd fast float %5048, %5046
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = bitcast float %4673 to i32
  %5052 = and i32 %5051, 65535
  %5053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5052)  ; LegacyF16ToF32(value)
  %5054 = lshr i32 %5051, 16
  %5055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5054)  ; LegacyF16ToF32(value)
  %5056 = fcmp fast oge float %5053, 0.000000e+00
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = select i1 %5056, float %5053, float %5058
  %5060 = fadd fast float %5059, %5055
  %5061 = fsub fast float %5050, %4606
  %5062 = fmul fast float %5061, %4837
  %5063 = fadd fast float %5062, %4606
  %5064 = fmul fast float %5060, %4837
  %5065 = call float @dx.op.binary.f32(i32 35, float %4605, float %5064)  ; FMax(a,b)
  %5066 = and i32 %4685, 16
  %5067 = icmp eq i32 %5066, 0
  br i1 %5067, label %5089, label %5068

; <label>:5068                                    ; preds = %5040
  %5069 = add i32 %4676, 0
  %5070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5070, %dx.types.Handle %4850, float %4778, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4783, float %4785, float undef, float %4787, float %4789, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5072 = extractvalue %dx.types.ResRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.ResRet.f32 %5071, 1
  %5074 = extractvalue %dx.types.ResRet.f32 %5071, 2
  %5075 = and i32 %4969, 65535
  %5076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5075)  ; LegacyF16ToF32(value)
  %5077 = fmul fast float %5072, %4670
  %5078 = fmul fast float %5073, %4671
  %5079 = fmul fast float %5074, %4672
  %5080 = and i32 %4685, 16384
  %5081 = icmp ne i32 %5080, 0
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 0
  %5084 = select i1 %5081, float %5083, float 1.000000e+00
  %5085 = fmul fast float %5084, %5076
  %5086 = fmul fast float %5077, %5085
  %5087 = fmul fast float %5078, %5085
  %5088 = fmul fast float %5079, %5085
  br label %5089

; <label>:5089                                    ; preds = %5068, %5040
  %5090 = phi float [ %5086, %5068 ], [ 0.000000e+00, %5040 ]
  %5091 = phi float [ %5087, %5068 ], [ 0.000000e+00, %5040 ]
  %5092 = phi float [ %5088, %5068 ], [ 0.000000e+00, %5040 ]
  %5093 = fsub fast float %5090, %4615
  %5094 = fsub fast float %5091, %4616
  %5095 = fsub fast float %5092, %4617
  %5096 = fmul fast float %5093, %4837
  %5097 = fmul fast float %5094, %4837
  %5098 = fmul fast float %5095, %4837
  %5099 = fadd fast float %5096, %4615
  %5100 = fadd fast float %5097, %4616
  %5101 = fadd fast float %5098, %4617
  br label %4734

; <label>:5102                                    ; preds = %4734
  br label %5103

; <label>:5103                                    ; preds = %5102, %4548
  %5104 = phi float [ 0.000000e+00, %4548 ], [ %4735, %5102 ]
  %5105 = phi float [ %4517, %4548 ], [ %4736, %5102 ]
  %5106 = phi float [ %4515, %4548 ], [ %4737, %5102 ]
  %5107 = phi float [ %4507, %4548 ], [ %4738, %5102 ]
  %5108 = phi float [ %4508, %4548 ], [ %4739, %5102 ]
  %5109 = phi float [ %4509, %4548 ], [ %4740, %5102 ]
  %5110 = phi float [ %4514, %4548 ], [ %4741, %5102 ]
  %5111 = phi float [ 0.000000e+00, %4548 ], [ %4742, %5102 ]
  %5112 = phi float [ %4504, %4548 ], [ %4743, %5102 ]
  %5113 = phi float [ %4505, %4548 ], [ %4744, %5102 ]
  %5114 = phi float [ %4506, %4548 ], [ %4745, %5102 ]
  %5115 = phi float [ %4501, %4548 ], [ %4746, %5102 ]
  %5116 = phi float [ %4502, %4548 ], [ %4747, %5102 ]
  %5117 = phi float [ %4503, %4548 ], [ %4748, %5102 ]
  %5118 = phi float [ %4543, %4548 ], [ %4749, %5102 ]
  %5119 = phi float [ %4544, %4548 ], [ %4750, %5102 ]
  %5120 = phi float [ %4545, %4548 ], [ %4751, %5102 ]
  %5121 = phi float [ %4512, %4548 ], [ %4752, %5102 ]
  %5122 = phi float [ %4511, %4548 ], [ %4753, %5102 ]
  %5123 = phi float [ 0.000000e+00, %4548 ], [ %4754, %5102 ]
  %5124 = phi float [ %4510, %4548 ], [ %4755, %5102 ]
  %5125 = phi float [ %4498, %4548 ], [ %4756, %5102 ]
  %5126 = phi float [ %4499, %4548 ], [ %4757, %5102 ]
  %5127 = phi float [ %4500, %4548 ], [ %4758, %5102 ]
  %5128 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = call float @dx.op.unary.f32(i32 25, float %5128)  ; Rsqrt(value)
  %5130 = fmul fast float %5129, %5118
  %5131 = fmul fast float %5129, %5119
  %5132 = fmul fast float %5129, %5120
  %5133 = fadd fast float %5123, %1264
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float %5130, float %5131, float %5132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = call float @dx.op.unary.f32(i32 25, float %5135)  ; Rsqrt(value)
  %5137 = fmul fast float %5136, %5130
  %5138 = fmul fast float %5136, %5131
  %5139 = fmul fast float %5136, %5132
  br label %5140

; <label>:5140                                    ; preds = %5103, %4495
  %5141 = phi float [ %5137, %5103 ], [ %4543, %4495 ]
  %5142 = phi float [ %5138, %5103 ], [ %4544, %4495 ]
  %5143 = phi float [ %5139, %5103 ], [ %4545, %4495 ]
  %5144 = phi float [ %5125, %5103 ], [ %4498, %4495 ]
  %5145 = phi float [ %5126, %5103 ], [ %4499, %4495 ]
  %5146 = phi float [ %5127, %5103 ], [ %4500, %4495 ]
  %5147 = phi float [ %5115, %5103 ], [ %4501, %4495 ]
  %5148 = phi float [ %5116, %5103 ], [ %4502, %4495 ]
  %5149 = phi float [ %5117, %5103 ], [ %4503, %4495 ]
  %5150 = phi float [ %5112, %5103 ], [ %4504, %4495 ]
  %5151 = phi float [ %5113, %5103 ], [ %4505, %4495 ]
  %5152 = phi float [ %5114, %5103 ], [ %4506, %4495 ]
  %5153 = phi float [ %5107, %5103 ], [ %4507, %4495 ]
  %5154 = phi float [ %5108, %5103 ], [ %4508, %4495 ]
  %5155 = phi float [ %5109, %5103 ], [ %4509, %4495 ]
  %5156 = phi float [ %5124, %5103 ], [ %4510, %4495 ]
  %5157 = phi float [ %5134, %5103 ], [ %1264, %4495 ]
  %5158 = phi float [ %5122, %5103 ], [ %4511, %4495 ]
  %5159 = phi float [ %5121, %5103 ], [ %4512, %4495 ]
  %5160 = phi float [ %5111, %5103 ], [ 0.000000e+00, %4495 ]
  %5161 = phi float [ %5110, %5103 ], [ %4514, %4495 ]
  %5162 = phi float [ %5104, %5103 ], [ 0.000000e+00, %4495 ]
  %5163 = phi float [ %5105, %5103 ], [ %4517, %4495 ]
  %5164 = phi float [ %5106, %5103 ], [ %4515, %4495 ]
  %5165 = fadd fast float %5156, 0xBFB99999A0000000
  %5166 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5167 = fmul fast float %5166, 0x3FF1C71C80000000
  %5168 = call float @dx.op.binary.f32(i32 36, float %5156, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5169 = fsub fast float 1.000000e+00, %5167
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5170, %5144
  %5172 = fmul fast float %5170, %5145
  %5173 = fmul fast float %5170, %5146
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5177 = fmul fast float %5167, %5144
  %5178 = fmul fast float %5167, %5145
  %5179 = fmul fast float %5167, %5146
  %5180 = fadd fast float %5177, %5168
  %5181 = fadd fast float %5178, %5168
  %5182 = fadd fast float %5179, %5168
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5185 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5186 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5188 = extractvalue %dx.types.ResRet.i32 %5187, 0
  %5189 = and i32 %5188, 1
  %5190 = icmp eq i32 %5189, 0
  br i1 %5190, label %5205, label %5191

; <label>:5191                                    ; preds = %5140
  %5192 = call float @dx.op.binary.f32(i32 35, float %5175, float %5176)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5174, float %5192)  ; FMax(a,b)
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  %5195 = bitcast float %5193 to i32
  %5196 = sub nsw i32 2129859010, %5195
  %5197 = bitcast i32 %5196 to float
  %5198 = select i1 %5194, float %5197, float 0.000000e+00
  %5199 = fmul fast float %5174, %5150
  %5200 = fmul fast float %5175, %5151
  %5201 = fmul fast float %5176, %5152
  %5202 = fmul fast float %5199, %5198
  %5203 = fmul fast float %5200, %5198
  %5204 = fmul fast float %5201, %5198
  br label %5205

; <label>:5205                                    ; preds = %5191, %5140
  %5206 = phi float [ %5202, %5191 ], [ %5150, %5140 ]
  %5207 = phi float [ %5203, %5191 ], [ %5151, %5140 ]
  %5208 = phi float [ %5204, %5191 ], [ %5152, %5140 ]
  %5209 = call float @dx.op.binary.f32(i32 36, float %5153, float 1.270000e+02)  ; FMin(a,b)
  %5210 = call float @dx.op.binary.f32(i32 36, float %5154, float 1.270000e+02)  ; FMin(a,b)
  %5211 = call float @dx.op.binary.f32(i32 36, float %5155, float 1.270000e+02)  ; FMin(a,b)
  %5212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.i32 %5212, 3
  %5214 = and i32 %5213, 8
  %5215 = icmp ne i32 %5214, 0
  %5216 = call float @dx.op.binary.f32(i32 35, float %5174, float %5144)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5175, float %5144)  ; FMax(a,b)
  %5218 = call float @dx.op.binary.f32(i32 35, float %5176, float %5144)  ; FMax(a,b)
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = select i1 %223, float %5144, float %5174
  %5221 = select i1 %223, float %5219, float %5175
  %5222 = select i1 %223, float 1.000000e+00, float %5176
  %5223 = select i1 %5215, float %5216, float %5220
  %5224 = select i1 %5215, float %5217, float %5221
  %5225 = select i1 %5215, float %5218, float %5222
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = select i1 %223, float %5226, float %5206
  %5228 = select i1 %223, float %5226, float %5207
  %5229 = select i1 %223, float %5226, float %5208
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5234 = fadd fast float %5231, %161
  %5235 = fadd fast float %5232, %162
  %5236 = fadd fast float %5233, %163
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5240 = fsub fast float %5234, %5238
  %5241 = fsub fast float %5235, %5239
  %5242 = fmul fast float %5240, %5240
  %5243 = fmul fast float %5241, %5241
  %5244 = fadd fast float %5242, %5243
  %5245 = call float @dx.op.unary.f32(i32 24, float %5244)  ; Sqrt(value)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5247 = fcmp fast olt float %5245, %5246
  br i1 %5247, label %5248, label %5315

; <label>:5248                                    ; preds = %5205
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5256 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5253, 1
  %5258 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5259 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5260 = extractvalue %dx.types.CBufRet.f32 %5253, 3
  %5261 = fadd fast float %5258, %5234
  %5262 = fadd fast float %5259, %5235
  %5263 = fadd fast float %5260, %5236
  %5264 = fmul fast float %5261, %5250
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5252, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5263, float %5254, float %5265)  ; FMad(a,b,c)
  %5267 = fmul fast float %5261, %5255
  %5268 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5256, float %5267)  ; FMad(a,b,c)
  %5269 = call float @dx.op.tertiary.f32(i32 46, float %5263, float %5257, float %5268)  ; FMad(a,b,c)
  %5270 = fsub fast float %5266, %5258
  %5271 = fsub fast float %5269, %5259
  %5272 = fsub fast float %5270, %5238
  %5273 = fadd fast float %5272, %5246
  %5274 = fsub fast float %5271, %5239
  %5275 = fadd fast float %5274, %5246
  %5276 = extractvalue %dx.types.CBufRet.f32 %5237, 3
  %5277 = fmul fast float %5273, %5276
  %5278 = fmul fast float %5275, %5276
  %5279 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5280 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5281 = fsub fast float 1.000000e+00, %5279
  %5282 = fsub fast float 1.000000e+00, %5280
  %5283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5281, float %5282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = fcmp fast ugt float %5284, 0.000000e+00
  br i1 %5285, label %5286, label %5589

; <label>:5286                                    ; preds = %5248
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5289 = fmul fast float %5288, %5284
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5291 = fadd fast float %5290, %5289
  %5292 = extractvalue %dx.types.CBufRet.f32 %5253, 2
  %5293 = fadd fast float %5291, %5260
  %5294 = fmul fast float %5266, %5254
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5257, float %5294)  ; FMad(a,b,c)
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5293, float %5292, float %5295)  ; FMad(a,b,c)
  %5297 = fsub fast float %5296, %5260
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5300 = fsub fast float %5297, %5299
  %5301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5281, float %5282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5281, float %5282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = fadd fast float %5306, %5302
  %5310 = fmul fast float %5309, 0x3F847AE140000000
  %5311 = fadd fast float %5307, %5303
  %5312 = fmul fast float %5311, 0x3F847AE140000000
  %5313 = fadd fast float %5308, %5304
  %5314 = fmul fast float %5313, 0x3F847AE140000000
  br label %5589

; <label>:5315                                    ; preds = %5205
  %5316 = and i32 %199, 1
  %5317 = icmp eq i32 %5316, 0
  br i1 %5317, label %5589, label %5318

; <label>:5318                                    ; preds = %5315
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 0
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5326 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5327 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5329 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5330 = extractvalue %dx.types.CBufRet.f32 %5323, 3
  %5331 = fadd fast float %5328, %5234
  %5332 = fadd fast float %5329, %5235
  %5333 = fadd fast float %5330, %5236
  %5334 = fmul fast float %5331, %5320
  %5335 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5322, float %5334)  ; FMad(a,b,c)
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5324, float %5335)  ; FMad(a,b,c)
  %5337 = fmul fast float %5331, %5325
  %5338 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5326, float %5337)  ; FMad(a,b,c)
  %5339 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5327, float %5338)  ; FMad(a,b,c)
  %5340 = fsub fast float %5336, %5328
  %5341 = fsub fast float %5339, %5329
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.CBufRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.CBufRet.f32 %5342, 2
  %5346 = extractvalue %dx.types.CBufRet.f32 %5342, 3
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 3
  %5349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.i32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.i32 %5349, 1
  %5352 = udiv i32 %5351, %5350
  %5353 = fsub fast float %5340, %5343
  %5354 = fsub fast float %5341, %5344
  %5355 = call float @dx.op.binary.f32(i32 35, float %5353, float 0.000000e+00)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float %5354, float 0.000000e+00)  ; FMax(a,b)
  %5357 = call float @dx.op.binary.f32(i32 36, float %5355, float %5345)  ; FMin(a,b)
  %5358 = call float @dx.op.binary.f32(i32 36, float %5356, float %5346)  ; FMin(a,b)
  %5359 = add i32 %5350, -1
  %5360 = add i32 %5352, -1
  %5361 = fmul fast float %5357, %5348
  %5362 = fmul fast float %5358, %5348
  %5363 = fptoui float %5361 to i32
  %5364 = fptoui float %5362 to i32
  %5365 = call i32 @dx.op.binary.i32(i32 40, i32 %5363, i32 %5359)  ; UMin(a,b)
  %5366 = call i32 @dx.op.binary.i32(i32 40, i32 %5364, i32 %5360)  ; UMin(a,b)
  %5367 = mul i32 %5366, %5350
  %5368 = add i32 %5367, %5365
  %5369 = shl i32 %5368, 2
  %5370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5369, i32 undef)  ; BufferLoad(srv,index,wot)
  %5371 = extractvalue %dx.types.ResRet.i32 %5370, 0
  %5372 = icmp eq i32 %5371, -1
  br i1 %5372, label %5589, label %5373

; <label>:5373                                    ; preds = %5318
  %5374 = mul i32 %5371, 148
  %5375 = add i32 %5374, 4
  %5376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = add i32 %5374, 8
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = add i32 %5374, 36
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = add i32 %5374, 60
  %5385 = add i32 %5374, 92
  %5386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5385, i32 undef)  ; BufferLoad(srv,index,wot)
  %5387 = extractvalue %dx.types.ResRet.i32 %5386, 0
  %5388 = add i32 %5374, 116
  %5389 = fsub fast float %5340, %5377
  %5390 = fsub fast float %5341, %5380
  %5391 = fmul fast float %5348, %5389
  %5392 = fmul fast float %5348, %5390
  %5393 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5395 = fsub fast float 1.000000e+00, %5394
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5398 = call float @dx.op.unary.f32(i32 83, float %5393)  ; DerivCoarseX(value)
  %5399 = call float @dx.op.unary.f32(i32 83, float %5395)  ; DerivCoarseX(value)
  %5400 = call float @dx.op.unary.f32(i32 84, float %5393)  ; DerivCoarseY(value)
  %5401 = call float @dx.op.unary.f32(i32 84, float %5395)  ; DerivCoarseY(value)
  %5402 = fmul fast float %5398, %5397
  %5403 = fmul fast float %5399, %5397
  %5404 = fmul fast float %5400, %5397
  %5405 = fmul fast float %5401, %5397
  %5406 = call float @dx.op.dot2.f32(i32 54, float %5404, float %5405, float %5404, float %5405)  ; Dot2(ax,ay,bx,by)
  %5407 = call float @dx.op.dot2.f32(i32 54, float %5402, float %5403, float %5402, float %5403)  ; Dot2(ax,ay,bx,by)
  %5408 = call float @dx.op.binary.f32(i32 35, float %5407, float %5406)  ; FMax(a,b)
  %5409 = call float @dx.op.unary.f32(i32 23, float %5408)  ; Log(value)
  %5410 = fmul fast float %5409, 5.000000e-01
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5413 = fadd fast float %5412, %5410
  %5414 = call float @dx.op.binary.f32(i32 35, float %5413, float 0.000000e+00)  ; FMax(a,b)
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 3
  %5417 = fadd fast float %5416, %5414
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5420 = fadd fast float %5417, %5419
  %5421 = add i32 %5387, 0
  %5422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5423 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5422, i32 0)  ; GetDimensions(handle,mipLevel)
  %5424 = extractvalue %dx.types.Dimensions %5423, 0
  %5425 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5424)  ; FirstbitLo(value)
  %5426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.i32 %5426, 1
  %5428 = sub nsw i32 %5427, %5425
  %5429 = sitofp i32 %5428 to float
  %5430 = fsub fast float %5420, %5429
  %5431 = call float @dx.op.binary.f32(i32 35, float %5430, float 0.000000e+00)  ; FMax(a,b)
  %5432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5422, %dx.types.Handle %46, float %5393, float %5395, float %5383, float undef, i32 0, i32 0, i32 undef, float %5431)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = fcmp ule float %5433, 0x3FE0101020000000
  %5435 = extractvalue %dx.types.CBufRet.i32 %5426, 0
  %5436 = and i32 %5435, 128
  %5437 = icmp ne i32 %5436, 0
  %5438 = and i1 %5434, %5437
  br i1 %5438, label %5589, label %5439

; <label>:5439                                    ; preds = %5373
  %5440 = add i32 %5374, 20
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = add i32 %5374, 24
  %5444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = add i32 %5374, 40
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = add i32 %5374, 96
  %5450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5449, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.i32 %5450, 0
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5454 = fmul fast float %5453, %5393
  %5455 = fmul fast float %5453, %5395
  %5456 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5457 = fadd fast float %5454, %5456
  %5458 = fadd fast float %5455, %5456
  %5459 = add i32 %5451, 0
  %5460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5459, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5461 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5460, i32 0)  ; GetDimensions(handle,mipLevel)
  %5462 = extractvalue %dx.types.Dimensions %5461, 0
  %5463 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5462)  ; FirstbitLo(value)
  %5464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.i32 %5464, 1
  %5466 = sub nsw i32 %5465, %5463
  %5467 = sitofp i32 %5466 to float
  %5468 = fsub fast float %5417, %5467
  %5469 = call float @dx.op.binary.f32(i32 35, float %5468, float 0.000000e+00)  ; FMax(a,b)
  %5470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5460, %dx.types.Handle %46, float %5457, float %5458, float %5448, float undef, i32 0, i32 0, i32 undef, float %5469)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = fmul fast float %5471, %5442
  %5473 = fadd fast float %5472, %5445
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.CBufRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5482 = extractvalue %dx.types.CBufRet.f32 %5474, 3
  %5483 = fadd fast float %5479, %5340
  %5484 = fadd fast float %5481, %5341
  %5485 = fadd fast float %5473, %5482
  %5486 = fmul fast float %5483, %5475
  %5487 = call float @dx.op.tertiary.f32(i32 46, float %5484, float %5476, float %5486)  ; FMad(a,b,c)
  %5488 = call float @dx.op.tertiary.f32(i32 46, float %5485, float %5477, float %5487)  ; FMad(a,b,c)
  %5489 = fsub fast float %5488, %5482
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5492 = fsub fast float %5489, %5491
  %5493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.i32 %5493, 0
  %5495 = call i32 @dx.op.binary.i32(i32 40, i32 %5371, i32 %5494)  ; UMin(a,b)
  %5496 = mul i32 %5495, 36
  %5497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5496, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.i32 %5497, 0
  %5499 = add i32 %5496, 4
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = fmul fast float %5501, %5393
  %5503 = fmul fast float %5501, %5395
  %5504 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5505 = fadd fast float %5502, %5504
  %5506 = fadd fast float %5503, %5504
  %5507 = icmp eq i32 %5498, 0
  br i1 %5507, label %5576, label %5508

; <label>:5508                                    ; preds = %5439
  br label %5509

; <label>:5509                                    ; preds = %5566, %5508
  %5510 = phi float [ %5567, %5566 ], [ 0.000000e+00, %5508 ]
  %5511 = phi float [ %5568, %5566 ], [ 0.000000e+00, %5508 ]
  %5512 = phi float [ %5569, %5566 ], [ 0.000000e+00, %5508 ]
  %5513 = phi float [ %5570, %5566 ], [ 0.000000e+00, %5508 ]
  %5514 = phi float [ %5571, %5566 ], [ 0.000000e+00, %5508 ]
  %5515 = phi float [ %5572, %5566 ], [ 0.000000e+00, %5508 ]
  %5516 = phi i32 [ %5573, %5566 ], [ 0, %5508 ]
  %5517 = shl i32 %5516, 2
  %5518 = add i32 %5384, %5517
  %5519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5518, i32 undef)  ; BufferLoad(srv,index,wot)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = add i32 %5388, %5517
  %5522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.i32 %5522, 0
  %5524 = add i32 %5523, 0
  %5525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5524, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5526 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5525, i32 0)  ; GetDimensions(handle,mipLevel)
  %5527 = extractvalue %dx.types.Dimensions %5526, 0
  %5528 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5527)  ; FirstbitLo(value)
  %5529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.i32 %5529, 1
  %5531 = sub nsw i32 %5530, %5528
  %5532 = sitofp i32 %5531 to float
  %5533 = fsub fast float %5417, %5532
  %5534 = call float @dx.op.binary.f32(i32 35, float %5533, float 0.000000e+00)  ; FMax(a,b)
  %5535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5525, %dx.types.Handle %46, float %5505, float %5506, float %5520, float undef, i32 0, i32 0, i32 undef, float %5534)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 0
  %5537 = fcmp fast ogt float %5536, 0.000000e+00
  br i1 %5537, label %5538, label %5566

; <label>:5538                                    ; preds = %5509
  %5539 = add i32 %5499, %5517
  %5540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5539, i32 undef)  ; BufferLoad(srv,index,wot)
  %5541 = extractvalue %dx.types.ResRet.i32 %5540, 0
  %5542 = and i32 %5541, 32767
  %5543 = mul nuw nsw i32 %5542, 928
  %5544 = add nuw nsw i32 %5543, 48
  %5545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5544, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.f32 %5545, 0
  %5547 = extractvalue %dx.types.ResRet.f32 %5545, 1
  %5548 = extractvalue %dx.types.ResRet.f32 %5545, 2
  %5549 = add nuw nsw i32 %5543, 60
  %5550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5549, i32 undef)  ; BufferLoad(srv,index,wot)
  %5551 = extractvalue %dx.types.ResRet.f32 %5550, 0
  %5552 = extractvalue %dx.types.ResRet.f32 %5550, 1
  %5553 = extractvalue %dx.types.ResRet.f32 %5550, 2
  %5554 = fmul fast float %5546, %5536
  %5555 = fmul fast float %5547, %5536
  %5556 = fmul fast float %5548, %5536
  %5557 = fadd fast float %5554, %5510
  %5558 = fadd fast float %5555, %5511
  %5559 = fadd fast float %5556, %5512
  %5560 = fmul fast float %5551, %5536
  %5561 = fmul fast float %5552, %5536
  %5562 = fmul fast float %5553, %5536
  %5563 = fadd fast float %5560, %5513
  %5564 = fadd fast float %5561, %5514
  %5565 = fadd fast float %5562, %5515
  br label %5566

; <label>:5566                                    ; preds = %5538, %5509
  %5567 = phi float [ %5557, %5538 ], [ %5510, %5509 ]
  %5568 = phi float [ %5558, %5538 ], [ %5511, %5509 ]
  %5569 = phi float [ %5559, %5538 ], [ %5512, %5509 ]
  %5570 = phi float [ %5563, %5538 ], [ %5513, %5509 ]
  %5571 = phi float [ %5564, %5538 ], [ %5514, %5509 ]
  %5572 = phi float [ %5565, %5538 ], [ %5515, %5509 ]
  %5573 = add nuw i32 %5516, 1
  %5574 = icmp eq i32 %5573, %5498
  br i1 %5574, label %5575, label %5509

; <label>:5575                                    ; preds = %5566
  br label %5576

; <label>:5576                                    ; preds = %5575, %5439
  %5577 = phi float [ 0.000000e+00, %5439 ], [ %5567, %5575 ]
  %5578 = phi float [ 0.000000e+00, %5439 ], [ %5568, %5575 ]
  %5579 = phi float [ 0.000000e+00, %5439 ], [ %5569, %5575 ]
  %5580 = phi float [ 0.000000e+00, %5439 ], [ %5570, %5575 ]
  %5581 = phi float [ 0.000000e+00, %5439 ], [ %5571, %5575 ]
  %5582 = phi float [ 0.000000e+00, %5439 ], [ %5572, %5575 ]
  %5583 = fadd fast float %5580, %5577
  %5584 = fmul fast float %5583, 0x3F847AE140000000
  %5585 = fadd fast float %5581, %5578
  %5586 = fmul fast float %5585, 0x3F847AE140000000
  %5587 = fadd fast float %5582, %5579
  %5588 = fmul fast float %5587, 0x3F847AE140000000
  br label %5589

; <label>:5589                                    ; preds = %5576, %5373, %5318, %5315, %5286, %5248
  %5590 = phi float [ %5300, %5286 ], [ -1.310720e+05, %5248 ], [ %5492, %5576 ], [ -1.310720e+05, %5318 ], [ -1.310720e+05, %5373 ], [ -1.310720e+05, %5315 ]
  %5591 = phi float [ %5310, %5286 ], [ 0.000000e+00, %5248 ], [ %5584, %5576 ], [ 0.000000e+00, %5318 ], [ 0.000000e+00, %5373 ], [ 0.000000e+00, %5315 ]
  %5592 = phi float [ %5312, %5286 ], [ 0.000000e+00, %5248 ], [ %5586, %5576 ], [ 0.000000e+00, %5318 ], [ 0.000000e+00, %5373 ], [ 0.000000e+00, %5315 ]
  %5593 = phi float [ %5314, %5286 ], [ 0.000000e+00, %5248 ], [ %5588, %5576 ], [ 0.000000e+00, %5318 ], [ 0.000000e+00, %5373 ], [ 0.000000e+00, %5315 ]
  %5594 = phi i1 [ true, %5286 ], [ false, %5248 ], [ true, %5576 ], [ false, %5318 ], [ false, %5373 ], [ false, %5315 ]
  %5595 = and i32 %199, 3
  %5596 = icmp eq i32 %5595, 1
  %5597 = select i1 %5596, float 1.000000e+00, float 0.000000e+00
  %5598 = fsub fast float %5590, %163
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = select i1 %5594, float %5599, float 1.000000e+00
  %5601 = fmul fast float %5600, %5597
  %5602 = icmp eq i32 %5595, 3
  %5603 = select i1 %5602, float 1.000000e+00, float %5601
  %5604 = call float @dx.op.binary.f32(i32 35, float %5162, float %5603)  ; FMax(a,b)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fcmp fast une float %5605, 0.000000e+00
  %5607 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 25, float %5607)  ; Rsqrt(value)
  br i1 %5606, label %5616, label %5609

; <label>:5609                                    ; preds = %5589
  %5610 = fmul fast float %5608, %161
  %5611 = fmul fast float %5608, %162
  %5612 = fmul fast float %5608, %163
  %5613 = fsub fast float -0.000000e+00, %5610
  %5614 = fsub fast float -0.000000e+00, %5611
  %5615 = fsub fast float -0.000000e+00, %5612
  br label %5784

; <label>:5616                                    ; preds = %5589
  %5617 = fmul fast float %161, %5608
  %5618 = fsub fast float -0.000000e+00, %5617
  %5619 = fmul fast float %162, %5608
  %5620 = fsub fast float -0.000000e+00, %5619
  %5621 = fmul fast float %163, %5608
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5620, float %5622, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fmul fast float %5605, 2.500000e+00
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fmul fast float %5605, 0x4013FFFFE0000000
  %5627 = fadd fast float %5626, 0xBFFFFFFFE0000000
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = fmul fast float %5605, 0x4004000020000000
  %5630 = fadd fast float %5629, 0xBFF8000040000000
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5633 = fmul fast float %5165, 1.000000e+01
  %5634 = call float @dx.op.unary.f32(i32 7, float %5633)  ; Saturate(value)
  %5635 = fmul fast float %5634, 2.000000e+00
  %5636 = fsub fast float 3.000000e+00, %5635
  %5637 = fmul fast float %5634, %5634
  %5638 = fmul fast float %5637, %5636
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = fsub fast float 0x3FE3333340000000, %5186
  %5641 = fmul fast float %5640, 0x400AAAAAA0000000
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5639, %5642
  %5644 = fmul fast float %5223, 0x3FEA2B8620000000
  %5645 = fmul fast float %5224, 0x3FEA2B8620000000
  %5646 = fmul fast float %5225, 0x3FEA2B8620000000
  %5647 = fadd fast float %5644, 0x3FC81DFBA0000000
  %5648 = fmul fast float %5647, %5223
  %5649 = fadd fast float %5648, 0x3F910E6020000000
  %5650 = fadd fast float %5645, 0x3FC81DFBA0000000
  %5651 = fmul fast float %5650, %5224
  %5652 = fadd fast float %5651, 0x3F910E6020000000
  %5653 = fadd fast float %5646, 0x3FC81DFBA0000000
  %5654 = fmul fast float %5653, %5225
  %5655 = fadd fast float %5654, 0x3F910E6020000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5657 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5659 = fsub fast float %5656, %5223
  %5660 = fsub fast float %5657, %5224
  %5661 = fsub fast float %5658, %5225
  %5662 = fmul fast float %5659, %5632
  %5663 = fmul fast float %5662, %5643
  %5664 = fmul fast float %5660, %5632
  %5665 = fmul fast float %5664, %5643
  %5666 = fmul fast float %5661, %5632
  %5667 = fmul fast float %5666, %5643
  %5668 = fadd fast float %5663, %5223
  %5669 = fadd fast float %5665, %5224
  %5670 = fadd fast float %5667, %5225
  %5671 = fmul fast float %5159, %5159
  %5672 = fmul fast float %5671, %5671
  %5673 = fadd fast float %5628, 1.000000e+00
  %5674 = fsub fast float %5673, %5643
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fsub fast float 1.000000e+00, %5672
  %5679 = call float @dx.op.binary.f32(i32 36, float %5675, float %5678)  ; FMin(a,b)
  %5680 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5679, float %5680)  ; FMax(a,b)
  %5682 = fadd fast float %5677, 0xBFE4CCCCC0000000
  %5683 = fmul fast float %5682, 0x4006DB6DA0000000
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5684, 2.000000e+00
  %5686 = fsub fast float 3.000000e+00, %5685
  %5687 = bitcast float %5183 to i32
  %5688 = ashr i32 %5687, 1
  %5689 = add nsw i32 %5688, 532487669
  %5690 = bitcast i32 %5689 to float
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = fmul fast float %5694, 2.000000e+00
  %5696 = bitcast float %5184 to i32
  %5697 = ashr i32 %5696, 1
  %5698 = add nsw i32 %5697, 532487669
  %5699 = bitcast i32 %5698 to float
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = bitcast float %5700 to i32
  %5702 = sub nsw i32 2129859010, %5701
  %5703 = bitcast i32 %5702 to float
  %5704 = fmul fast float %5703, 2.000000e+00
  %5705 = bitcast float %5185 to i32
  %5706 = ashr i32 %5705, 1
  %5707 = add nsw i32 %5706, 532487669
  %5708 = bitcast i32 %5707 to float
  %5709 = fsub fast float 1.000000e+00, %5708
  %5710 = bitcast float %5709 to i32
  %5711 = sub nsw i32 2129859010, %5710
  %5712 = bitcast i32 %5711 to float
  %5713 = fmul fast float %5712, 2.000000e+00
  %5714 = fsub fast float 0x4002A9FBE0000000, %5695
  %5715 = fadd fast float %5695, 0x3FD54FDF00000000
  %5716 = bitcast float %5715 to i32
  %5717 = sub nsw i32 2129859010, %5716
  %5718 = bitcast i32 %5717 to float
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5719, %5719
  %5721 = fsub fast float 0x4002A9FBE0000000, %5704
  %5722 = fadd fast float %5704, 0x3FD54FDF00000000
  %5723 = bitcast float %5722 to i32
  %5724 = sub nsw i32 2129859010, %5723
  %5725 = bitcast i32 %5724 to float
  %5726 = fmul fast float %5725, %5721
  %5727 = fmul fast float %5726, %5726
  %5728 = fsub fast float 0x4002A9FBE0000000, %5713
  %5729 = fadd fast float %5713, 0x3FD54FDF00000000
  %5730 = bitcast float %5729 to i32
  %5731 = sub nsw i32 2129859010, %5730
  %5732 = bitcast i32 %5731 to float
  %5733 = fmul fast float %5732, %5728
  %5734 = fmul fast float %5733, %5733
  %5735 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5720)  ; FMax(a,b)
  %5736 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5727)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5734)  ; FMax(a,b)
  %5738 = fsub fast float 1.000000e+00, %5623
  %5739 = fadd fast float %5738, %5639
  %5740 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5741 = fsub fast float 1.000000e+00, %5603
  %5742 = fmul fast float %5681, %5741
  %5743 = fmul fast float %5684, %5684
  %5744 = fmul fast float %5743, %5742
  %5745 = fmul fast float %5744, %5686
  %5746 = fmul fast float %5741, 0xBFE99999A0000000
  %5747 = fmul fast float %5746, %5632
  %5748 = fmul fast float %5747, %5643
  %5749 = fadd fast float %5748, 1.000000e+00
  %5750 = fadd fast float %5186, -1.000000e+00
  %5751 = fmul fast float %5749, %5750
  %5752 = fadd fast float %5751, 1.000000e+00
  %5753 = fsub fast float %5735, %5183
  %5754 = fsub fast float %5736, %5184
  %5755 = fsub fast float %5737, %5185
  %5756 = fmul fast float %5745, %5753
  %5757 = fmul fast float %5745, %5754
  %5758 = fmul fast float %5745, %5755
  %5759 = fadd fast float %5756, %5183
  %5760 = fadd fast float %5757, %5184
  %5761 = fadd fast float %5758, %5185
  %5762 = fsub fast float %111, %5141
  %5763 = fsub fast float %113, %5142
  %5764 = fsub fast float %115, %5143
  %5765 = fmul fast float %5745, %5762
  %5766 = fmul fast float %5745, %5763
  %5767 = fmul fast float %5745, %5764
  %5768 = fadd fast float %5765, %5141
  %5769 = fadd fast float %5766, %5142
  %5770 = fadd fast float %5767, %5143
  %5771 = fmul fast float %5745, %5740
  %5772 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = fmul fast float %5771, %5773
  %5775 = fadd fast float %5774, %5772
  %5776 = fsub fast float 1.000000e+00, %5159
  %5777 = fmul fast float %5745, %5776
  %5778 = fadd fast float %5777, %5159
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = call float @dx.op.unary.f32(i32 25, float %5779)  ; Rsqrt(value)
  %5781 = fmul fast float %5768, %5780
  %5782 = fmul fast float %5769, %5780
  %5783 = fmul fast float %5770, %5780
  br label %5784

; <label>:5784                                    ; preds = %5616, %5609
  %5785 = phi float [ %5615, %5609 ], [ %5622, %5616 ]
  %5786 = phi float [ %5614, %5609 ], [ %5620, %5616 ]
  %5787 = phi float [ %5613, %5609 ], [ %5618, %5616 ]
  %5788 = phi float [ %5612, %5609 ], [ %5621, %5616 ]
  %5789 = phi float [ %5611, %5609 ], [ %5619, %5616 ]
  %5790 = phi float [ %5610, %5609 ], [ %5617, %5616 ]
  %5791 = phi float [ %5183, %5609 ], [ %5759, %5616 ]
  %5792 = phi float [ %5184, %5609 ], [ %5760, %5616 ]
  %5793 = phi float [ %5185, %5609 ], [ %5761, %5616 ]
  %5794 = phi float [ %5223, %5609 ], [ %5668, %5616 ]
  %5795 = phi float [ %5224, %5609 ], [ %5669, %5616 ]
  %5796 = phi float [ %5225, %5609 ], [ %5670, %5616 ]
  %5797 = phi float [ %5141, %5609 ], [ %5781, %5616 ]
  %5798 = phi float [ %5142, %5609 ], [ %5782, %5616 ]
  %5799 = phi float [ %5143, %5609 ], [ %5783, %5616 ]
  %5800 = phi float [ %5186, %5609 ], [ %5775, %5616 ]
  %5801 = phi float [ %5159, %5609 ], [ %5778, %5616 ]
  %5802 = fsub fast float -0.000000e+00, %163
  %5803 = select i1 %223, float 0.000000e+00, float %5793
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5787, float %5786, float %5785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5789, float %5788, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = fmul fast float %5806, 2.000000e+00
  %5808 = fmul fast float %5807, %5797
  %5809 = fmul fast float %5807, %5798
  %5810 = fmul fast float %5807, %5799
  %5811 = fsub fast float %5790, %5808
  %5812 = fsub fast float %5789, %5809
  %5813 = fsub fast float %5788, %5810
  %5814 = call float @dx.op.binary.f32(i32 36, float %5801, float 1.000000e+00)  ; FMin(a,b)
  %5815 = fsub fast float 1.000000e+00, %5801
  %5816 = bitcast float %5815 to i32
  %5817 = sub nsw i32 2129859010, %5816
  %5818 = bitcast i32 %5817 to float
  %5819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5820 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fcmp fast oeq float %5820, 0.000000e+00
  %5822 = fcmp fast oeq float %5819, 0.000000e+00
  %5823 = or i1 %5822, %5821
  br i1 %5823, label %5853, label %5824

; <label>:5824                                    ; preds = %5784
  %5825 = fsub fast float -0.000000e+00, %76
  %5826 = fsub fast float -0.000000e+00, %74
  %5827 = call float @dx.op.unary.f32(i32 24, float %5820)  ; Sqrt(value)
  %5828 = fdiv fast float %5827, %5819
  %5829 = fcmp fast ogt float %5828, 0x3FFB6F8900000000
  %5830 = select i1 %5829, float 0x3FFB6F8900000000, float %5828
  %5831 = fmul fast float %5830, 0x3FE8A23460000000
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5830, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5834 = fmul fast float %5832, %5819
  %5835 = fmul fast float %5833, 0x3FF279A740000000
  %5836 = fadd fast float %5835, -1.000000e+00
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %75, float %5825, float %5826, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = call float @dx.op.unary.f32(i32 25, float %5837)  ; Rsqrt(value)
  %5839 = fmul fast float %5838, %5825
  %5840 = fmul fast float %5838, %5826
  %5841 = fmul fast float %5838, %75
  %5842 = fmul fast float %5836, %5836
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = fmul fast float %5833, 0x40005F8BE0000000
  %5845 = fsub fast float 0x400C5BF8A0000000, %5844
  %5846 = fdiv fast float %5834, %5845
  %5847 = fmul fast float %5846, 0x3FEE31C3C0000000
  %5848 = fmul fast float %5847, %5843
  %5849 = fmul fast float %5833, 0x3FDACB7480000000
  %5850 = fadd fast float %5849, 0xBFD7347680000000
  %5851 = fmul fast float %5850, %5846
  %5852 = fmul fast float %5851, %5843
  br label %5853

; <label>:5853                                    ; preds = %5824, %5784
  %5854 = phi float [ %5839, %5824 ], [ 0.000000e+00, %5784 ]
  %5855 = phi float [ %5840, %5824 ], [ 0.000000e+00, %5784 ]
  %5856 = phi float [ %5841, %5824 ], [ 0.000000e+00, %5784 ]
  %5857 = phi float [ %5848, %5824 ], [ 0.000000e+00, %5784 ]
  %5858 = phi float [ %5852, %5824 ], [ 0.000000e+00, %5784 ]
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5855, float %5856, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fmul fast float %5859, 0x3FDF454380000000
  %5861 = fmul fast float %5859, %5859
  %5862 = fmul fast float %5861, 0x3FEE471020000000
  %5863 = fadd fast float %5862, 0xBFD42F6020000000
  %5864 = fmul fast float %5819, 0x3FD20DD760000000
  %5865 = fmul fast float %5863, %5858
  %5866 = fadd fast float %5865, %5864
  %5867 = fmul fast float %5860, %5857
  %5868 = fadd fast float %5866, %5867
  %5869 = fsub fast float %5866, %5867
  %5870 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5855, float %5856, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5871 = fmul fast float %5870, 0x3FDF454380000000
  %5872 = fmul fast float %5870, %5870
  %5873 = fmul fast float %5872, 0x3FEE471020000000
  %5874 = fadd fast float %5873, 0xBFD42F6020000000
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5819, float %5857, float %5858, float 0x3FD20DD760000000, float %5871, float %5874)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5877 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = fcmp fast oeq float %5877, 0.000000e+00
  %5879 = fcmp fast oeq float %5876, 0.000000e+00
  %5880 = or i1 %5879, %5878
  br i1 %5880, label %5910, label %5881

; <label>:5881                                    ; preds = %5853
  %5882 = fsub fast float -0.000000e+00, %72
  %5883 = fsub fast float -0.000000e+00, %70
  %5884 = call float @dx.op.unary.f32(i32 24, float %5877)  ; Sqrt(value)
  %5885 = fdiv fast float %5884, %5876
  %5886 = fcmp fast ogt float %5885, 0x3FFB6F8900000000
  %5887 = select i1 %5886, float 0x3FFB6F8900000000, float %5885
  %5888 = fmul fast float %5887, 0x3FE8A23460000000
  %5889 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5887, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5891 = fmul fast float %5889, %5876
  %5892 = fmul fast float %5890, 0x3FF279A740000000
  %5893 = fadd fast float %5892, -1.000000e+00
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %71, float %5882, float %5883, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = call float @dx.op.unary.f32(i32 25, float %5894)  ; Rsqrt(value)
  %5896 = fmul fast float %5895, %5882
  %5897 = fmul fast float %5895, %5883
  %5898 = fmul fast float %5895, %71
  %5899 = fmul fast float %5893, %5893
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = fmul fast float %5890, 0x40005F8BE0000000
  %5902 = fsub fast float 0x400C5BF8A0000000, %5901
  %5903 = fdiv fast float %5891, %5902
  %5904 = fmul fast float %5903, 0x3FEE31C3C0000000
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %5890, 0x3FDACB7480000000
  %5907 = fadd fast float %5906, 0xBFD7347680000000
  %5908 = fmul fast float %5907, %5903
  %5909 = fmul fast float %5908, %5900
  br label %5910

; <label>:5910                                    ; preds = %5881, %5853
  %5911 = phi float [ %5896, %5881 ], [ 0.000000e+00, %5853 ]
  %5912 = phi float [ %5897, %5881 ], [ 0.000000e+00, %5853 ]
  %5913 = phi float [ %5898, %5881 ], [ 0.000000e+00, %5853 ]
  %5914 = phi float [ %5905, %5881 ], [ 0.000000e+00, %5853 ]
  %5915 = phi float [ %5909, %5881 ], [ 0.000000e+00, %5853 ]
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %5913, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fmul fast float %5916, 0x3FDF454380000000
  %5918 = fmul fast float %5916, %5916
  %5919 = fmul fast float %5918, 0x3FEE471020000000
  %5920 = fadd fast float %5919, 0xBFD42F6020000000
  %5921 = fmul fast float %5876, 0x3FD20DD760000000
  %5922 = fmul fast float %5920, %5915
  %5923 = fadd fast float %5922, %5921
  %5924 = fmul fast float %5917, %5914
  %5925 = fadd fast float %5923, %5924
  %5926 = fsub fast float %5923, %5924
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %5913, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fmul fast float %5927, 0x3FDF454380000000
  %5929 = fmul fast float %5927, %5927
  %5930 = fmul fast float %5929, 0x3FEE471020000000
  %5931 = fadd fast float %5930, 0xBFD42F6020000000
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5914, float %5915, float 0x3FD20DD760000000, float %5928, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5934 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fcmp fast oeq float %5934, 0.000000e+00
  %5936 = fcmp fast oeq float %5933, 0.000000e+00
  %5937 = or i1 %5936, %5935
  br i1 %5937, label %5967, label %5938

; <label>:5938                                    ; preds = %5910
  %5939 = fsub fast float -0.000000e+00, %68
  %5940 = fsub fast float -0.000000e+00, %66
  %5941 = call float @dx.op.unary.f32(i32 24, float %5934)  ; Sqrt(value)
  %5942 = fdiv fast float %5941, %5933
  %5943 = fcmp fast ogt float %5942, 0x3FFB6F8900000000
  %5944 = select i1 %5943, float 0x3FFB6F8900000000, float %5942
  %5945 = fmul fast float %5944, 0x3FE8A23460000000
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = call float @dx.op.binary.f32(i32 35, float %5944, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5948 = fmul fast float %5946, %5933
  %5949 = fmul fast float %5947, 0x3FF279A740000000
  %5950 = fadd fast float %5949, -1.000000e+00
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %67, float %5939, float %5940, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = call float @dx.op.unary.f32(i32 25, float %5951)  ; Rsqrt(value)
  %5953 = fmul fast float %5952, %5939
  %5954 = fmul fast float %5952, %5940
  %5955 = fmul fast float %5952, %67
  %5956 = fmul fast float %5950, %5950
  %5957 = fsub fast float 1.000000e+00, %5956
  %5958 = fmul fast float %5947, 0x40005F8BE0000000
  %5959 = fsub fast float 0x400C5BF8A0000000, %5958
  %5960 = fdiv fast float %5948, %5959
  %5961 = fmul fast float %5960, 0x3FEE31C3C0000000
  %5962 = fmul fast float %5961, %5957
  %5963 = fmul fast float %5947, 0x3FDACB7480000000
  %5964 = fadd fast float %5963, 0xBFD7347680000000
  %5965 = fmul fast float %5964, %5960
  %5966 = fmul fast float %5965, %5957
  br label %5967

; <label>:5967                                    ; preds = %5938, %5910
  %5968 = phi float [ %5953, %5938 ], [ 0.000000e+00, %5910 ]
  %5969 = phi float [ %5954, %5938 ], [ 0.000000e+00, %5910 ]
  %5970 = phi float [ %5955, %5938 ], [ 0.000000e+00, %5910 ]
  %5971 = phi float [ %5962, %5938 ], [ 0.000000e+00, %5910 ]
  %5972 = phi float [ %5966, %5938 ], [ 0.000000e+00, %5910 ]
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5968, float %5969, float %5970, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = fmul fast float %5973, 0x3FDF454380000000
  %5975 = fmul fast float %5973, %5973
  %5976 = fmul fast float %5975, 0x3FEE471020000000
  %5977 = fadd fast float %5976, 0xBFD42F6020000000
  %5978 = fmul fast float %5933, 0x3FD20DD760000000
  %5979 = fmul fast float %5977, %5972
  %5980 = fadd fast float %5979, %5978
  %5981 = fmul fast float %5974, %5971
  %5982 = fadd fast float %5980, %5981
  %5983 = fsub fast float %5980, %5981
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5968, float %5969, float %5970, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = fmul fast float %5984, 0x3FDF454380000000
  %5986 = fmul fast float %5984, %5984
  %5987 = fmul fast float %5986, 0x3FEE471020000000
  %5988 = fadd fast float %5987, 0xBFD42F6020000000
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5971, float %5972, float 0x3FD20DD760000000, float %5985, float %5988)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = call float @dx.op.binary.f32(i32 35, float %5868, float 0.000000e+00)  ; FMax(a,b)
  %5991 = call float @dx.op.binary.f32(i32 35, float %5925, float 0.000000e+00)  ; FMax(a,b)
  %5992 = call float @dx.op.binary.f32(i32 35, float %5982, float 0.000000e+00)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5869, float 0.000000e+00)  ; FMax(a,b)
  %5994 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5995 = call float @dx.op.binary.f32(i32 35, float %5983, float 0.000000e+00)  ; FMax(a,b)
  %5996 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5932, float 0.000000e+00)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 35, float %5989, float 0.000000e+00)  ; FMax(a,b)
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 0
  %6001 = call float @dx.op.binary.f32(i32 36, float %5794, float %6000)  ; FMin(a,b)
  %6002 = fsub fast float 1.000000e+00, %5814
  %6003 = fmul fast float %6001, %6002
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sub nsw i32 2129859010, %6005
  %6007 = bitcast i32 %6006 to float
  %6008 = call float @dx.op.binary.f32(i32 36, float %5795, float %6000)  ; FMin(a,b)
  %6009 = fmul fast float %6008, %6002
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = bitcast float %6010 to i32
  %6012 = sub nsw i32 2129859010, %6011
  %6013 = bitcast i32 %6012 to float
  %6014 = call float @dx.op.binary.f32(i32 36, float %5796, float %6000)  ; FMin(a,b)
  %6015 = fmul fast float %6014, %6002
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = bitcast float %6016 to i32
  %6018 = sub nsw i32 2129859010, %6017
  %6019 = bitcast i32 %6018 to float
  %6020 = fmul fast float %5990, %5814
  %6021 = fmul fast float %6020, %6007
  %6022 = fmul fast float %5991, %5814
  %6023 = fmul fast float %6022, %6013
  %6024 = fmul fast float %5992, %5814
  %6025 = fmul fast float %6024, %6019
  %6026 = call float @dx.op.binary.f32(i32 36, float %5791, float %6000)  ; FMin(a,b)
  %6027 = fmul fast float %6026, %6002
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = bitcast float %6028 to i32
  %6030 = sub nsw i32 2129859010, %6029
  %6031 = bitcast i32 %6030 to float
  %6032 = call float @dx.op.binary.f32(i32 36, float %5792, float %6000)  ; FMin(a,b)
  %6033 = fmul fast float %6032, %6002
  %6034 = fsub fast float 1.000000e+00, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = sub nsw i32 2129859010, %6035
  %6037 = bitcast i32 %6036 to float
  %6038 = call float @dx.op.binary.f32(i32 36, float %5803, float %6000)  ; FMin(a,b)
  %6039 = fmul fast float %6038, %6002
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = bitcast float %6040 to i32
  %6042 = sub nsw i32 2129859010, %6041
  %6043 = bitcast i32 %6042 to float
  %6044 = fmul fast float %5996, %5814
  %6045 = fmul fast float %6044, %6031
  %6046 = fmul fast float %5997, %5814
  %6047 = fmul fast float %6046, %6037
  %6048 = fmul fast float %5998, %5814
  %6049 = fmul fast float %6048, %6043
  %6050 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6023, float %6025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = select i1 %223, float 0.000000e+00, float %6021
  %6052 = select i1 %223, float %6050, float %6023
  %6053 = select i1 %223, float 0.000000e+00, float %6025
  %6054 = call float @dx.op.dot3.f32(i32 55, float %5993, float %5994, float %5995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = select i1 %223, float 0.000000e+00, float %5993
  %6056 = select i1 %223, float %6054, float %5994
  %6057 = select i1 %223, float 0.000000e+00, float %5995
  %6058 = call float @dx.op.dot3.f32(i32 55, float %6045, float %6047, float %6049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = select i1 %223, float 0.000000e+00, float %6045
  %6060 = select i1 %223, float %6058, float %6047
  %6061 = select i1 %223, float 0.000000e+00, float %6049
  %6062 = fmul fast float %4513, %4513
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6064 = fmul fast float %5805, 9.843750e-01
  %6065 = fmul fast float %5800, 9.843750e-01
  %6066 = fadd fast float %6064, 7.812500e-03
  %6067 = fadd fast float %6065, 7.812500e-03
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6066, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = extractvalue %dx.types.ResRet.f32 %6068, 3
  %6073 = fsub fast float 1.000000e+00, %6063
  %6074 = fsub fast float %6071, %6069
  %6075 = fsub fast float %6072, %6070
  %6076 = fmul fast float %6074, %6073
  %6077 = fmul fast float %6075, %6073
  %6078 = fadd fast float %6076, %6069
  %6079 = fadd fast float %6077, %6070
  %6080 = fmul fast float %6078, %5791
  %6081 = fmul fast float %6078, %5792
  %6082 = fmul fast float %6078, %5803
  %6083 = fadd fast float %6080, %6079
  %6084 = fadd fast float %6081, %6079
  %6085 = fadd fast float %6082, %6079
  %6086 = fcmp fast ogt float %5160, 0.000000e+00
  br i1 %6086, label %6087, label %6113

; <label>:6087                                    ; preds = %5967
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %5805, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6088, 2
  %6092 = fadd fast float %6089, -5.000000e-01
  %6093 = fadd fast float %6090, -5.000000e-01
  %6094 = fadd fast float %6091, -5.000000e-01
  %6095 = fsub fast float 1.000000e+00, %5791
  %6096 = fsub fast float 1.000000e+00, %5792
  %6097 = fsub fast float 1.000000e+00, %5803
  %6098 = fmul fast float %5791, 4.000000e+00
  %6099 = fmul fast float %6098, %6095
  %6100 = fmul fast float %6099, %6092
  %6101 = fmul fast float %5792, 4.000000e+00
  %6102 = fmul fast float %6101, %6096
  %6103 = fmul fast float %6102, %6093
  %6104 = fmul fast float %5803, 4.000000e+00
  %6105 = fmul fast float %6104, %6097
  %6106 = fmul fast float %6105, %6094
  %6107 = fadd fast float %6100, %6083
  %6108 = fadd fast float %6103, %6084
  %6109 = fadd fast float %6106, %6085
  %6110 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6111 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6112 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  br label %6113

; <label>:6113                                    ; preds = %6087, %5967
  %6114 = phi float [ %6110, %6087 ], [ %6083, %5967 ]
  %6115 = phi float [ %6111, %6087 ], [ %6084, %5967 ]
  %6116 = phi float [ %6112, %6087 ], [ %6085, %5967 ]
  %6117 = call float @dx.op.binary.f32(i32 35, float %6115, float %6116)  ; FMax(a,b)
  %6118 = call float @dx.op.binary.f32(i32 35, float %6114, float %6117)  ; FMax(a,b)
  %6119 = fsub fast float 1.000000e+00, %6118
  %6120 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = fcmp fast ogt float %6120, 0x3E7FF19E20000000
  %6122 = fdiv fast float 1.000000e+00, %6120
  %6123 = select i1 %6121, float %6122, float 0.000000e+00
  %6124 = fmul fast float %6123, %5794
  %6125 = fmul fast float %6123, %5795
  %6126 = fmul fast float %6123, %5796
  %6127 = fadd fast float %6124, -1.000000e+00
  %6128 = fadd fast float %6125, -1.000000e+00
  %6129 = fadd fast float %6126, -1.000000e+00
  %6130 = fmul fast float %6127, 5.000000e-01
  %6131 = fmul fast float %6128, 5.000000e-01
  %6132 = fmul fast float %6129, 5.000000e-01
  %6133 = fadd fast float %6130, 1.000000e+00
  %6134 = fadd fast float %6131, 1.000000e+00
  %6135 = fadd fast float %6132, 1.000000e+00
  %6136 = call float @dx.op.binary.f32(i32 35, float %5805, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6137 = fdiv fast float %4513, %6136
  %6138 = fcmp fast olt float %5209, 1.270000e+02
  %6139 = fcmp fast olt float %5210, 1.270000e+02
  %6140 = fcmp fast olt float %5211, 1.270000e+02
  %6141 = fmul fast float %5209, 0xBFF7154760000000
  %6142 = fmul fast float %6141, %6137
  %6143 = fmul fast float %5210, 0xBFF7154760000000
  %6144 = fmul fast float %6143, %6137
  %6145 = fmul fast float %5211, 0xBFF7154760000000
  %6146 = fmul fast float %6145, %6137
  %6147 = call float @dx.op.unary.f32(i32 21, float %6142)  ; Exp(value)
  %6148 = call float @dx.op.unary.f32(i32 21, float %6144)  ; Exp(value)
  %6149 = call float @dx.op.unary.f32(i32 21, float %6146)  ; Exp(value)
  %6150 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6151 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6152 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6153 = select i1 %6138, float %6150, float 0.000000e+00
  %6154 = select i1 %6139, float %6151, float 0.000000e+00
  %6155 = select i1 %6140, float %6152, float 0.000000e+00
  %6156 = fmul fast float %6153, %6119
  %6157 = fmul fast float %6154, %6119
  %6158 = fmul fast float %6155, %6119
  %6159 = fadd fast float %6156, -1.000000e+00
  %6160 = fadd fast float %6157, -1.000000e+00
  %6161 = fadd fast float %6158, -1.000000e+00
  %6162 = fmul fast float %6159, %5157
  %6163 = fmul fast float %6160, %5157
  %6164 = fmul fast float %6161, %5157
  %6165 = fmul fast float %6114, %6059
  %6166 = fmul fast float %6115, %6060
  %6167 = fmul fast float %6116, %6061
  %6168 = fsub fast float 1.000000e+00, %5805
  %6169 = bitcast float %6168 to i32
  %6170 = sitofp i32 %6169 to float
  %6171 = fmul fast float %6170, 5.000000e+00
  %6172 = fadd fast float %6171, 0xC1EFBF8940000000
  %6173 = fptosi float %6172 to i32
  %6174 = bitcast i32 %6173 to float
  %6175 = fmul fast float %6174, %5161
  %6176 = fmul fast float %6051, %6175
  %6177 = fmul fast float %6176, %6119
  %6178 = fmul fast float %6177, %6133
  %6179 = fmul fast float %6052, %6175
  %6180 = fmul fast float %6179, %6119
  %6181 = fmul fast float %6180, %6134
  %6182 = fmul fast float %6053, %6175
  %6183 = fmul fast float %6182, %6119
  %6184 = fmul fast float %6183, %6135
  %6185 = fadd fast float %6165, %5147
  %6186 = fadd fast float %6185, %6178
  %6187 = fmul fast float %6186, %5157
  %6188 = fadd fast float %6166, %5148
  %6189 = fadd fast float %6188, %6181
  %6190 = fmul fast float %6189, %5157
  %6191 = fadd fast float %6167, %5149
  %6192 = fadd fast float %6191, %6184
  %6193 = fmul fast float %6192, %5157
  %6194 = fmul fast float %5792, 0x4012D0A400000000
  %6195 = fadd fast float %6164, 1.000000e+00
  %6196 = fadd fast float %6163, 1.000000e+00
  %6197 = fadd fast float %6162, 1.000000e+00
  %6198 = fmul fast float %6119, %6053
  %6199 = fmul fast float %6119, %6052
  %6200 = fmul fast float %6119, %6051
  %6201 = fsub fast float 1.000000e+00, %5800
  %6202 = fmul fast float %6201, %5157
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6205 = fsub fast float 1.000000e+00, %6204
  %6206 = fadd fast float %6194, 0x3FDB6377A0000000
  %6207 = fmul fast float %6205, %6206
  %6208 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5228, float %5229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = fadd fast float %6207, %6208
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6210, float 0x3F847AE140000000)  ; FMax(a,b)
  %6212 = fmul fast float %6211, %6211
  %6213 = fmul fast float %6212, %6212
  %6214 = fmul fast float %6213, 0xC00A935000000000
  %6215 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6216 = fsub fast float 1.000000e+00, %6215
  %6217 = fmul fast float %6197, %6055
  %6218 = fmul fast float %6217, %6216
  %6219 = fmul fast float %6196, %6056
  %6220 = fmul fast float %6219, %6216
  %6221 = fmul fast float %6195, %6057
  %6222 = fmul fast float %6221, %6216
  %6223 = fadd fast float %6218, %6200
  %6224 = fmul fast float %6223, %5157
  %6225 = fadd fast float %6220, %6199
  %6226 = fmul fast float %6225, %5157
  %6227 = fadd fast float %6222, %6198
  %6228 = fmul fast float %6227, %5157
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6231 = fcmp fast oeq float %6230, 0.000000e+00
  br i1 %6231, label %7436, label %6232

; <label>:6232                                    ; preds = %6113
  %6233 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6243 = call float @dx.op.dot3.f32(i32 55, float %6237, float %6238, float %6239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = select i1 %223, float %6241, float %6237
  %6245 = select i1 %223, float %6243, float %6238
  %6246 = select i1 %223, float %6242, float %6239
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = fmul fast float %6248, %111
  %6250 = fmul fast float %6248, %113
  %6251 = fmul fast float %6248, %115
  %6252 = fadd fast float %6249, %161
  %6253 = fadd fast float %6250, %162
  %6254 = fadd fast float %6251, %163
  %6255 = fcmp fast olt float %6230, 0.000000e+00
  br i1 %6255, label %6880, label %6256

; <label>:6256                                    ; preds = %6232
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = extractvalue %dx.types.CBufRet.f32 %6257, 3
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = fmul fast float %6258, %6252
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6259, float %6272)  ; FMad(a,b,c)
  %6274 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6260, float %6273)  ; FMad(a,b,c)
  %6275 = fadd fast float %6274, %6261
  %6276 = fmul fast float %6263, %6252
  %6277 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6264, float %6276)  ; FMad(a,b,c)
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6265, float %6277)  ; FMad(a,b,c)
  %6279 = fadd fast float %6278, %6266
  %6280 = fmul fast float %6268, %6252
  %6281 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6269, float %6280)  ; FMad(a,b,c)
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6270, float %6281)  ; FMad(a,b,c)
  %6283 = fadd fast float %6282, %6271
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 3
  %6288 = fmul fast float %6287, %6275
  %6289 = fmul fast float %6287, %6279
  %6290 = fadd fast float %6288, %6285
  %6291 = fadd fast float %6289, %6286
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6296 = fmul fast float %6295, %6275
  %6297 = fmul fast float %6295, %6279
  %6298 = fadd fast float %6296, %6293
  %6299 = fadd fast float %6297, %6294
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6302 = fsub fast float %6301, %6283
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = fmul fast float %6302, %6303
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6310 = fadd fast float %6309, %6307
  %6311 = fcmp fast ogt float %6310, 0.000000e+00
  br i1 %6311, label %6312, label %6336

; <label>:6312                                    ; preds = %6256
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6316 = fsub fast float %6298, %6314
  %6317 = fsub fast float %6299, %6315
  %6318 = fcmp fast olt float %6316, 0.000000e+00
  %6319 = fcmp fast olt float %6317, 0.000000e+00
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6324 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6325 = select i1 %6318, float %6321, float %6323
  %6326 = select i1 %6319, float %6322, float %6324
  %6327 = fmul fast float %6325, %6316
  %6328 = fmul fast float %6326, %6317
  %6329 = call float @dx.op.unary.f32(i32 6, float %6327)  ; FAbs(value)
  %6330 = call float @dx.op.unary.f32(i32 6, float %6328)  ; FAbs(value)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6332 = call float @dx.op.binary.f32(i32 35, float %6329, float %6330)  ; FMax(a,b)
  %6333 = fsub fast float %6331, %6332
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = fmul fast float %6334, %6306
  br label %6336

; <label>:6336                                    ; preds = %6312, %6256
  %6337 = phi float [ %6335, %6312 ], [ 0.000000e+00, %6256 ]
  %6338 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6339 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6340 = fadd fast float %6339, %6338
  %6341 = fcmp fast ogt float %6340, 0.000000e+00
  %6342 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  br i1 %6341, label %6343, label %6366

; <label>:6343                                    ; preds = %6336
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = fsub fast float %6290, %6345
  %6348 = fsub fast float %6291, %6346
  %6349 = fcmp fast olt float %6347, 0.000000e+00
  %6350 = fcmp fast olt float %6348, 0.000000e+00
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = select i1 %6349, float %6352, float %6354
  %6357 = select i1 %6350, float %6353, float %6355
  %6358 = fmul fast float %6356, %6347
  %6359 = fmul fast float %6357, %6348
  %6360 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6361 = call float @dx.op.unary.f32(i32 6, float %6359)  ; FAbs(value)
  %6362 = call float @dx.op.binary.f32(i32 35, float %6360, float %6361)  ; FMax(a,b)
  %6363 = fsub fast float %6342, %6362
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fmul fast float %6364, %6306
  br label %6366

; <label>:6366                                    ; preds = %6343, %6336
  %6367 = phi float [ %6365, %6343 ], [ 0.000000e+00, %6336 ]
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6370 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6372 = extractvalue %dx.types.CBufRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.CBufRet.f32 %6371, 1
  %6374 = fsub fast float %6275, %6372
  %6375 = fsub fast float %6279, %6373
  %6376 = fcmp fast olt float %6374, 0.000000e+00
  %6377 = fcmp fast olt float %6375, 0.000000e+00
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = select i1 %6376, float %6379, float %6381
  %6384 = select i1 %6377, float %6380, float %6382
  %6385 = fmul fast float %6383, %6374
  %6386 = fmul fast float %6384, %6375
  %6387 = call float @dx.op.unary.f32(i32 6, float %6385)  ; FAbs(value)
  %6388 = call float @dx.op.unary.f32(i32 6, float %6386)  ; FAbs(value)
  %6389 = call float @dx.op.binary.f32(i32 35, float %6387, float %6388)  ; FMax(a,b)
  %6390 = fsub fast float %6342, %6389
  %6391 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6392 = call float @dx.op.binary.f32(i32 36, float %6391, float %6370)  ; FMin(a,b)
  %6393 = fmul fast float %6392, %6306
  %6394 = fsub fast float %6367, %6393
  %6395 = fsub fast float %6337, %6367
  %6396 = fsub fast float %6395, %6393
  %6397 = call float @dx.op.binary.f32(i32 35, float %6367, float %6337)  ; FMax(a,b)
  %6398 = call float @dx.op.binary.f32(i32 35, float %6393, float %6397)  ; FMax(a,b)
  %6399 = fcmp fast olt float %6398, 1.000000e+00
  br i1 %6399, label %6400, label %6798, !dx.controlflow.hints !96

; <label>:6400                                    ; preds = %6366
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = fcmp fast une float %6402, 0.000000e+00
  br i1 %6403, label %6404, label %6798, !dx.controlflow.hints !97

; <label>:6404                                    ; preds = %6400
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.CBufRet.f32 %6405, 3
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6420 = fmul fast float %6406, %6252
  %6421 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6407, float %6420)  ; FMad(a,b,c)
  %6422 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6408, float %6421)  ; FMad(a,b,c)
  %6423 = fadd fast float %6422, %6409
  %6424 = fmul fast float %6411, %6252
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6412, float %6424)  ; FMad(a,b,c)
  %6426 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6413, float %6425)  ; FMad(a,b,c)
  %6427 = fadd fast float %6426, %6414
  %6428 = fmul fast float %6416, %6252
  %6429 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6417, float %6428)  ; FMad(a,b,c)
  %6430 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6418, float %6429)  ; FMad(a,b,c)
  %6431 = fadd fast float %6430, %6419
  %6432 = fcmp fast oge float %6423, 1.000000e+00
  %6433 = fcmp fast oge float %6427, 1.000000e+00
  %6434 = or i1 %6432, %6433
  %6435 = fcmp fast olt float %6423, 0.000000e+00
  %6436 = fcmp fast olt float %6427, 0.000000e+00
  %6437 = or i1 %6435, %6436
  %6438 = or i1 %6434, %6437
  br i1 %6438, label %6798, label %6439, !dx.controlflow.hints !98

; <label>:6439                                    ; preds = %6404
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.i32 %6444, 2
  %6446 = uitofp i32 %6445 to float
  %6447 = extractvalue %dx.types.CBufRet.i32 %6444, 3
  %6448 = uitofp i32 %6447 to float
  %6449 = extractvalue %dx.types.CBufRet.f32 %6440, 3
  %6450 = fmul fast float %6449, 2.000000e+00
  %6451 = fsub fast float %6423, %6441
  %6452 = fsub fast float %6427, %6442
  %6453 = fmul fast float %6450, %6451
  %6454 = fmul fast float %6450, %6452
  %6455 = fdiv fast float 1.000000e+00, %6235
  %6456 = fmul fast float %6454, %6455
  %6457 = call float @dx.op.unary.f32(i32 6, float %6456)  ; FAbs(value)
  %6458 = fmul fast float %6443, %6254
  %6459 = fmul fast float %6458, %6450
  %6460 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6461 = call float @dx.op.unary.f32(i32 6, float %6453)  ; FAbs(value)
  %6462 = call float @dx.op.binary.f32(i32 35, float %6460, float %6457)  ; FMax(a,b)
  %6463 = call float @dx.op.binary.f32(i32 35, float %6461, float %6462)  ; FMax(a,b)
  %6464 = fmul fast float %6463, 2.000000e+00
  %6465 = call float @dx.op.unary.f32(i32 23, float %6464)  ; Log(value)
  %6466 = call float @dx.op.binary.f32(i32 35, float %6465, float %6446)  ; FMax(a,b)
  %6467 = call float @dx.op.unary.f32(i32 22, float %6466)  ; Frc(value)
  %6468 = fadd fast float %6467, 0xBFEA666660000000
  %6469 = fmul fast float %6468, 8.000000e+00
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = call float @dx.op.unary.f32(i32 27, float %6466)  ; Round_ni(value)
  %6472 = fadd fast float %6471, %6470
  %6473 = call float @dx.op.binary.f32(i32 36, float %6472, float %6448)  ; FMin(a,b)
  %6474 = call float @dx.op.unary.f32(i32 27, float %6473)  ; Round_ni(value)
  %6475 = fsub fast float -0.000000e+00, %6474
  %6476 = call float @dx.op.unary.f32(i32 21, float %6475)  ; Exp(value)
  %6477 = fmul fast float %6476, %6450
  %6478 = fmul fast float %6477, %6423
  %6479 = fmul fast float %6477, %6427
  %6480 = fmul fast float %6478, 2.500000e-01
  %6481 = fmul fast float %6479, 2.500000e-01
  %6482 = fadd fast float %6480, 5.000000e-01
  %6483 = fadd fast float %6481, 5.000000e-01
  %6484 = fsub fast float %6448, %6446
  %6485 = fptoui float %6484 to i32
  %6486 = add i32 %6485, 320
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6486)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = fcmp fast une float %6473, %6448
  %6491 = fsub fast float %6423, %6488
  %6492 = fsub fast float %6427, %6489
  %6493 = call float @dx.op.unary.f32(i32 6, float %6491)  ; FAbs(value)
  %6494 = call float @dx.op.unary.f32(i32 6, float %6492)  ; FAbs(value)
  %6495 = fmul fast float %6493, %6477
  %6496 = fmul fast float %6494, %6477
  %6497 = fcmp fast olt float %6495, 1.000000e+00
  %6498 = fcmp fast olt float %6496, 1.000000e+00
  %6499 = and i1 %6497, %6498
  %6500 = or i1 %6490, %6499
  br i1 %6500, label %6501, label %6798, !dx.controlflow.hints !99

; <label>:6501                                    ; preds = %6439
  %6502 = fmul fast float %6479, 5.000000e-01
  %6503 = fmul fast float %6478, 5.000000e-01
  %6504 = fadd fast float %6502, 5.000000e-01
  %6505 = fadd fast float %6503, 5.000000e-01
  %6506 = sitofp i32 %6445 to float
  %6507 = fsub fast float %6473, %6506
  %6508 = call float @dx.op.unary.f32(i32 27, float %6507)  ; Round_ni(value)
  %6509 = call float @dx.op.unary.f32(i32 22, float %6473)  ; Frc(value)
  %6510 = call float @dx.op.unary.f32(i32 22, float %6505)  ; Frc(value)
  %6511 = call float @dx.op.unary.f32(i32 22, float %6504)  ; Frc(value)
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6510, float %6511, float %6508, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.ResRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.ResRet.f32 %6512, 2
  %6516 = extractvalue %dx.types.ResRet.f32 %6512, 3
  %6517 = fcmp fast ogt float %6509, 0.000000e+00
  br i1 %6517, label %6518, label %6539, !dx.controlflow.hints !100

; <label>:6518                                    ; preds = %6501
  %6519 = fadd fast float %6508, 1.000000e+00
  %6520 = call float @dx.op.unary.f32(i32 22, float %6482)  ; Frc(value)
  %6521 = call float @dx.op.unary.f32(i32 22, float %6483)  ; Frc(value)
  %6522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6520, float %6521, float %6519, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.ResRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.ResRet.f32 %6522, 2
  %6526 = extractvalue %dx.types.ResRet.f32 %6522, 3
  %6527 = fsub fast float %6523, %6513
  %6528 = fsub fast float %6524, %6514
  %6529 = fsub fast float %6525, %6515
  %6530 = fsub fast float %6526, %6516
  %6531 = fmul fast float %6527, %6509
  %6532 = fmul fast float %6528, %6509
  %6533 = fmul fast float %6529, %6509
  %6534 = fmul fast float %6530, %6509
  %6535 = fadd fast float %6531, %6513
  %6536 = fadd fast float %6532, %6514
  %6537 = fadd fast float %6533, %6515
  %6538 = fadd fast float %6534, %6516
  br label %6539

; <label>:6539                                    ; preds = %6518, %6501
  %6540 = phi float [ %6535, %6518 ], [ %6513, %6501 ]
  %6541 = phi float [ %6536, %6518 ], [ %6514, %6501 ]
  %6542 = phi float [ %6537, %6518 ], [ %6515, %6501 ]
  %6543 = phi float [ %6538, %6518 ], [ %6516, %6501 ]
  %6544 = fadd fast float %6540, -5.000000e-01
  %6545 = fadd fast float %6542, -5.000000e-01
  %6546 = fmul fast float %6544, 0xBFD5555560000000
  %6547 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6545, float %6546)  ; FMad(a,b,c)
  %6548 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6541, float 0.000000e+00)  ; FMad(a,b,c)
  %6549 = fadd fast float %6548, %6543
  %6550 = fmul fast float %6544, -7.500000e-01
  %6551 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6545, float %6550)  ; FMad(a,b,c)
  %6552 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6541, float 0.000000e+00)  ; FMad(a,b,c)
  %6553 = fadd fast float %6552, %6543
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 0
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6560 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6561 = fsub fast float %6557, %6547
  %6562 = fsub fast float %6558, %6549
  %6563 = fsub fast float %6559, %6551
  %6564 = fsub fast float %6560, %6553
  %6565 = fmul fast float %6561, %6555
  %6566 = fmul fast float %6562, %6555
  %6567 = fmul fast float %6563, %6555
  %6568 = fmul fast float %6564, %6555
  %6569 = fadd fast float %6565, %6547
  %6570 = fadd fast float %6566, %6549
  %6571 = fadd fast float %6567, %6551
  %6572 = fadd fast float %6568, %6553
  %6573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6574 = extractvalue %dx.types.ResRet.i32 %6573, 0
  %6575 = and i32 %6574, 536870911
  %6576 = uitofp i32 %6575 to float
  %6577 = fmul fast float %6576, %6423
  %6578 = fmul fast float %6576, %6427
  %6579 = fptoui float %6577 to i32
  %6580 = fptoui float %6578 to i32
  %6581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6582 = extractvalue %dx.types.ResRet.i32 %6581, 0
  %6583 = and i32 %6582, 31
  %6584 = lshr i32 %6579, %6583
  %6585 = lshr i32 %6580, %6583
  %6586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6587 = extractvalue %dx.types.ResRet.i32 %6586, 0
  %6588 = and i32 %6587, 31
  %6589 = shl i32 1, %6588
  %6590 = call i32 @dx.op.binary.i32(i32 40, i32 %6589, i32 4)  ; UMin(a,b)
  %6591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6592 = extractvalue %dx.types.ResRet.i32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.i32 %6591, 1
  %6594 = icmp eq i32 %6590, 0
  br i1 %6594, label %6636, label %6595

; <label>:6595                                    ; preds = %6539
  br label %6596

; <label>:6596                                    ; preds = %6624, %6595
  %6597 = phi i32 [ %6627, %6624 ], [ 0, %6595 ]
  %6598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6599 = extractvalue %dx.types.ResRet.i32 %6598, 0
  %6600 = lshr i32 %6599, 16
  %6601 = and i32 %6600, 31
  %6602 = shl i32 %6585, %6601
  %6603 = add i32 %6602, %6584
  %6604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.i32 %6604, 0
  %6606 = and i32 %6605, 31
  %6607 = shl i32 %6603, %6606
  %6608 = add i32 %6607, %6597
  %6609 = shl i32 %6608, 2
  %6610 = add i32 %6609, 32
  %6611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6610, i32 undef)  ; BufferLoad(srv,index,wot)
  %6612 = extractvalue %dx.types.ResRet.i32 %6611, 0
  %6613 = icmp slt i32 %6612, 0
  %6614 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6597
  %6615 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6597
  %6616 = bitcast float* %6614 to i32*
  %6617 = bitcast float* %6615 to i32*
  br i1 %6613, label %6618, label %6624

; <label>:6618                                    ; preds = %6596
  %6619 = and i32 %6612, 1073741823
  %6620 = add nuw nsw i32 %6619, 20
  %6621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6620, i32 undef)  ; BufferLoad(srv,index,wot)
  %6622 = extractvalue %dx.types.ResRet.i32 %6621, 0
  %6623 = extractvalue %dx.types.ResRet.i32 %6621, 1
  br label %6624

; <label>:6624                                    ; preds = %6618, %6596
  %6625 = phi i32 [ %6622, %6618 ], [ %6592, %6596 ]
  %6626 = phi i32 [ %6623, %6618 ], [ %6593, %6596 ]
  store i32 %6625, i32* %6616, align 4
  store i32 %6626, i32* %6617, align 4
  %6627 = add nuw i32 %6597, 1
  %6628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.i32 %6628, 2
  %6630 = icmp eq i32 %6629, 0
  %6631 = icmp ugt i32 %6612, -1073741825
  %6632 = and i1 %6631, %6630
  %6633 = icmp ult i32 %6627, %6590
  %6634 = and i1 %6632, %6633
  br i1 %6634, label %6596, label %6635

; <label>:6635                                    ; preds = %6624
  br label %6636

; <label>:6636                                    ; preds = %6635, %6539
  %6637 = phi i32 [ 0, %6539 ], [ %6627, %6635 ]
  %6638 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6639 = fptoui float %6638 to i32
  %6640 = icmp eq i32 %6639, 0
  br i1 %6640, label %6692, label %6641

; <label>:6641                                    ; preds = %6636
  br label %6642

; <label>:6642                                    ; preds = %6687, %6641
  %6643 = phi i32 [ %6688, %6687 ], [ %6637, %6641 ]
  %6644 = phi i32 [ %6689, %6687 ], [ 0, %6641 ]
  %6645 = lshr i32 %6644, 2
  %6646 = and i32 %6644, 3
  %6647 = add nuw nsw i32 %6645, 83
  %6648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6647)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.i32 %6648, 0
  %6650 = extractvalue %dx.types.CBufRet.i32 %6648, 1
  %6651 = extractvalue %dx.types.CBufRet.i32 %6648, 2
  %6652 = extractvalue %dx.types.CBufRet.i32 %6648, 3
  %6653 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6649, i32* %6653, align 4
  %6654 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6650, i32* %6654, align 4
  %6655 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6651, i32* %6655, align 4
  %6656 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6652, i32* %6656, align 4
  %6657 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6646
  %6658 = load i32, i32* %6657, align 4, !tbaa !101, !noalias !105
  %6659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6660 = extractvalue %dx.types.ResRet.i32 %6659, 0
  %6661 = lshr i32 %6660, 16
  %6662 = and i32 %6661, 31
  %6663 = shl i32 %6585, %6662
  %6664 = add i32 %6663, %6584
  %6665 = shl i32 %6664, 2
  %6666 = add i32 %6665, %6658
  %6667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6666, i32 undef)  ; BufferLoad(srv,index,wot)
  %6668 = extractvalue %dx.types.ResRet.i32 %6667, 0
  %6669 = icmp eq i32 %6668, 0
  br i1 %6669, label %6687, label %6670

; <label>:6670                                    ; preds = %6642
  %6671 = icmp slt i32 %6668, 0
  %6672 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6643
  %6673 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6643
  %6674 = bitcast float* %6672 to i32*
  %6675 = bitcast float* %6673 to i32*
  br i1 %6671, label %6676, label %6683

; <label>:6676                                    ; preds = %6670
  %6677 = and i32 %6668, 1073741823
  %6678 = add i32 %6658, 20
  %6679 = add i32 %6678, %6677
  %6680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6679, i32 undef)  ; BufferLoad(srv,index,wot)
  %6681 = extractvalue %dx.types.ResRet.i32 %6680, 0
  %6682 = extractvalue %dx.types.ResRet.i32 %6680, 1
  br label %6683

; <label>:6683                                    ; preds = %6676, %6670
  %6684 = phi i32 [ %6681, %6676 ], [ %6592, %6670 ]
  %6685 = phi i32 [ %6682, %6676 ], [ %6593, %6670 ]
  store i32 %6684, i32* %6674, align 4
  store i32 %6685, i32* %6675, align 4
  %6686 = add i32 %6643, 1
  br label %6687

; <label>:6687                                    ; preds = %6683, %6642
  %6688 = phi i32 [ %6643, %6642 ], [ %6686, %6683 ]
  %6689 = add nuw i32 %6644, 1
  %6690 = icmp eq i32 %6689, %6639
  br i1 %6690, label %6691, label %6642

; <label>:6691                                    ; preds = %6687
  br label %6692

; <label>:6692                                    ; preds = %6691, %6636
  %6693 = phi i32 [ %6637, %6636 ], [ %6688, %6691 ]
  %6694 = icmp eq i32 %6693, 1
  %6695 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6696 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6694, label %6697, label %6700

; <label>:6697                                    ; preds = %6692
  %6698 = load float, float* %6695, align 4
  %6699 = load float, float* %6696, align 4
  br label %6727

; <label>:6700                                    ; preds = %6692
  %6701 = load float, float* %6695, align 4
  %6702 = load float, float* %6696, align 4
  %6703 = fdiv fast float 1.000000e+00, %6702
  %6704 = fsub fast float %6701, %6703
  %6705 = icmp ugt i32 %6693, 1
  br i1 %6705, label %6706, label %6722

; <label>:6706                                    ; preds = %6700
  br label %6707

; <label>:6707                                    ; preds = %6707, %6706
  %6708 = phi float [ %6717, %6707 ], [ %6704, %6706 ]
  %6709 = phi float [ %6718, %6707 ], [ %6701, %6706 ]
  %6710 = phi i32 [ %6719, %6707 ], [ 1, %6706 ]
  %6711 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6710
  %6712 = load float, float* %6711, align 4
  %6713 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6710
  %6714 = load float, float* %6713, align 4
  %6715 = fdiv fast float 1.000000e+00, %6714
  %6716 = fsub fast float %6712, %6715
  %6717 = call float @dx.op.binary.f32(i32 36, float %6708, float %6716)  ; FMin(a,b)
  %6718 = call float @dx.op.binary.f32(i32 35, float %6709, float %6712)  ; FMax(a,b)
  %6719 = add nuw i32 %6710, 1
  %6720 = icmp eq i32 %6719, %6693
  br i1 %6720, label %6721, label %6707

; <label>:6721                                    ; preds = %6707
  br label %6722

; <label>:6722                                    ; preds = %6721, %6700
  %6723 = phi float [ %6704, %6700 ], [ %6717, %6721 ]
  %6724 = phi float [ %6701, %6700 ], [ %6718, %6721 ]
  %6725 = fsub fast float %6724, %6723
  %6726 = fdiv fast float 1.000000e+00, %6725
  br label %6727

; <label>:6727                                    ; preds = %6722, %6697
  %6728 = phi float [ %6698, %6697 ], [ %6724, %6722 ]
  %6729 = phi float [ %6699, %6697 ], [ %6726, %6722 ]
  %6730 = fadd fast float %6431, %6728
  %6731 = fmul fast float %6730, %6729
  %6732 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6733 = fmul fast float %6732, 2.000000e+00
  %6734 = fsub fast float 1.000000e+00, %6733
  %6735 = fmul fast float %6569, %6569
  %6736 = fsub fast float %6570, %6735
  %6737 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6736)  ; FMax(a,b)
  %6738 = fdiv fast float 1.000000e+00, %6737
  %6739 = fmul fast float %6570, %6569
  %6740 = fsub fast float %6571, %6739
  %6741 = fsub fast float %6734, %6569
  %6742 = fmul fast float %6734, %6734
  %6743 = fsub fast float %6742, %6570
  %6744 = fmul fast float %6738, %6740
  %6745 = fmul fast float %6744, %6741
  %6746 = fsub fast float %6743, %6745
  %6747 = fmul fast float %6570, %6570
  %6748 = fsub fast float %6572, %6747
  %6749 = fmul fast float %6740, %6740
  %6750 = fmul fast float %6749, %6738
  %6751 = fsub fast float %6748, %6750
  %6752 = fdiv fast float %6746, %6751
  %6753 = fmul fast float %6752, %6740
  %6754 = fsub fast float %6741, %6753
  %6755 = fmul fast float %6754, %6738
  %6756 = fmul fast float %6755, %6569
  %6757 = fsub fast float 1.000000e+00, %6756
  %6758 = fmul fast float %6752, %6570
  %6759 = fsub fast float %6757, %6758
  %6760 = fmul fast float %6755, %6755
  %6761 = fmul fast float %6752, 4.000000e+00
  %6762 = fmul fast float %6761, %6759
  %6763 = fsub fast float %6760, %6762
  %6764 = call float @dx.op.unary.f32(i32 24, float %6763)  ; Sqrt(value)
  %6765 = fcmp fast oge float %6755, 0.000000e+00
  %6766 = fsub fast float -0.000000e+00, %6764
  %6767 = select i1 %6765, float %6766, float %6764
  %6768 = fsub fast float %6767, %6755
  %6769 = fdiv fast float %6768, %6752
  %6770 = fdiv fast float %6759, %6768
  %6771 = fmul fast float %6769, 5.000000e-01
  %6772 = fmul fast float %6770, 2.000000e+00
  %6773 = select i1 %6765, float %6771, float %6772
  %6774 = select i1 %6765, float %6772, float %6771
  %6775 = call float @dx.op.binary.f32(i32 35, float %6773, float %6774)  ; FMax(a,b)
  %6776 = call float @dx.op.binary.f32(i32 36, float %6773, float %6774)  ; FMin(a,b)
  %6777 = fcmp fast ogt float %6734, %6775
  %6778 = fsub fast float %6734, %6776
  %6779 = fsub fast float %6734, %6775
  %6780 = fsub fast float %6775, %6776
  %6781 = select i1 %6777, float %6779, float %6780
  %6782 = fmul float %6778, %6781
  %6783 = select i1 %6777, float %6776, float %6734
  %6784 = fcmp fast ogt float %6734, %6776
  %6785 = fmul fast float %6783, %6775
  %6786 = fadd fast float %6783, %6775
  %6787 = fmul fast float %6786, %6569
  %6788 = fadd fast float %6785, %6570
  %6789 = fsub fast float %6788, %6787
  %6790 = fdiv fast float %6789, %6782
  %6791 = select i1 %6784, float %6790, float 0.000000e+00
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = select i1 %6777, float %6792, float %6791
  %6794 = call float @dx.op.unary.f32(i32 7, float %6793)  ; Saturate(value)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6554, 3
  %6796 = fmul fast float %6795, %6794
  %6797 = fsub fast float 1.000000e+00, %6796
  br label %6798

; <label>:6798                                    ; preds = %6727, %6439, %6404, %6400, %6366
  %6799 = phi float [ 1.000000e+00, %6366 ], [ %6797, %6727 ], [ 1.000000e+00, %6404 ], [ 1.000000e+00, %6439 ], [ 1.000000e+00, %6400 ]
  %6800 = fcmp fast ogt float %6396, 0.000000e+00
  br i1 %6800, label %6801, label %6807, !dx.controlflow.hints !114

; <label>:6801                                    ; preds = %6798
  %6802 = fadd fast float %6309, %6283
  %6803 = call float @dx.op.binary.f32(i32 35, float %6802, float 0.000000e+00)  ; FMax(a,b)
  %6804 = fadd fast float %6803, 0x3F10000000000000
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6298, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float %6804)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  br label %6807

; <label>:6807                                    ; preds = %6801, %6798
  %6808 = phi float [ %6806, %6801 ], [ 1.000000e+00, %6798 ]
  %6809 = fcmp fast ogt float %6394, 0.000000e+00
  br i1 %6809, label %6810, label %6816, !dx.controlflow.hints !115

; <label>:6810                                    ; preds = %6807
  %6811 = fadd fast float %6339, %6283
  %6812 = call float @dx.op.binary.f32(i32 35, float %6811, float 0.000000e+00)  ; FMax(a,b)
  %6813 = fadd fast float %6812, 0x3F10000000000000
  %6814 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6290, float %6291, float undef, float undef, i32 0, i32 0, i32 undef, float %6813)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  br label %6816

; <label>:6816                                    ; preds = %6810, %6807
  %6817 = phi float [ %6815, %6810 ], [ 1.000000e+00, %6807 ]
  %6818 = fcmp fast ogt float %6393, 0.000000e+00
  br i1 %6818, label %6819, label %6826, !dx.controlflow.hints !116

; <label>:6819                                    ; preds = %6816
  %6820 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6821 = fadd fast float %6820, %6283
  %6822 = call float @dx.op.binary.f32(i32 35, float %6821, float 0.000000e+00)  ; FMax(a,b)
  %6823 = fadd fast float %6822, 0x3F10000000000000
  %6824 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6275, float %6279, float undef, float undef, i32 0, i32 0, i32 undef, float %6823)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6825 = extractvalue %dx.types.ResRet.f32 %6824, 0
  br label %6826

; <label>:6826                                    ; preds = %6819, %6816
  %6827 = phi float [ %6825, %6819 ], [ 1.000000e+00, %6816 ]
  %6828 = fsub fast float %6808, %6799
  %6829 = fmul fast float %6828, %6337
  %6830 = fadd fast float %6829, %6799
  %6831 = fsub fast float %6817, %6830
  %6832 = fmul fast float %6831, %6367
  %6833 = fadd fast float %6832, %6830
  %6834 = fsub fast float %6827, %6833
  %6835 = fmul fast float %6834, %6393
  %6836 = fadd fast float %6835, %6833
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6839 = fcmp fast ogt float %6838, 0.000000e+00
  br i1 %6839, label %6840, label %6880, !dx.controlflow.hints !117

; <label>:6840                                    ; preds = %6826
  %6841 = fcmp fast ugt float %6838, 0.000000e+00
  br i1 %6841, label %6842, label %6877

; <label>:6842                                    ; preds = %6840
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = extractvalue %dx.types.CBufRet.f32 %6843, 3
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6853 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6859 = fadd fast float %6856, %6252
  %6860 = fadd fast float %6857, %6253
  %6861 = fadd fast float %6858, %6254
  %6862 = fmul fast float %6859, %6844
  %6863 = call float @dx.op.tertiary.f32(i32 46, float %6845, float %6860, float %6862)  ; FMad(a,b,c)
  %6864 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6861, float %6863)  ; FMad(a,b,c)
  %6865 = fadd fast float %6864, %6847
  %6866 = fmul fast float %6859, %6849
  %6867 = call float @dx.op.tertiary.f32(i32 46, float %6850, float %6860, float %6866)  ; FMad(a,b,c)
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %6851, float %6861, float %6867)  ; FMad(a,b,c)
  %6869 = fadd fast float %6868, %6852
  %6870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6865, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6854
  %6873 = fadd fast float %6872, %6853
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6875 = fmul fast float %6874, %6838
  %6876 = fsub fast float 1.000000e+00, %6875
  br label %6877

; <label>:6877                                    ; preds = %6842, %6840
  %6878 = phi float [ %6876, %6842 ], [ 1.000000e+00, %6840 ]
  %6879 = fmul fast float %6878, %6836
  br label %6880

; <label>:6880                                    ; preds = %6877, %6826, %6232
  %6881 = phi float [ 1.000000e+00, %6232 ], [ %6879, %6877 ], [ %6836, %6826 ]
  %6882 = call float @dx.op.binary.f32(i32 36, float %6881, float %6881)  ; FMin(a,b)
  %6883 = call float @dx.op.binary.f32(i32 36, float %6881, float %6882)  ; FMin(a,b)
  %6884 = fcmp fast ogt float %6883, 0.000000e+00
  br i1 %6884, label %6885, label %7045, !dx.controlflow.hints !118

; <label>:6885                                    ; preds = %6880
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6890 = extractvalue %dx.types.CBufRet.f32 %6886, 3
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6901 = fmul fast float %6887, %6252
  %6902 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6888, float %6901)  ; FMad(a,b,c)
  %6903 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6889, float %6902)  ; FMad(a,b,c)
  %6904 = fadd fast float %6903, %6890
  %6905 = fmul fast float %6892, %6252
  %6906 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6893, float %6905)  ; FMad(a,b,c)
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6894, float %6906)  ; FMad(a,b,c)
  %6908 = fadd fast float %6907, %6895
  %6909 = fmul fast float %6897, %6252
  %6910 = call float @dx.op.tertiary.f32(i32 46, float %6253, float %6898, float %6909)  ; FMad(a,b,c)
  %6911 = call float @dx.op.tertiary.f32(i32 46, float %6254, float %6899, float %6910)  ; FMad(a,b,c)
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6916 = fmul fast float %6915, %6904
  %6917 = fmul fast float %6915, %6908
  %6918 = fadd fast float %6916, %6913
  %6919 = fadd fast float %6917, %6914
  %6920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6921 = extractvalue %dx.types.CBufRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.CBufRet.f32 %6920, 1
  %6923 = fsub fast float %6918, %6921
  %6924 = fsub fast float %6919, %6922
  %6925 = fcmp fast olt float %6923, 0.000000e+00
  %6926 = fcmp fast olt float %6924, 0.000000e+00
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.CBufRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.CBufRet.f32 %6927, 2
  %6931 = extractvalue %dx.types.CBufRet.f32 %6927, 3
  %6932 = select i1 %6925, float %6928, float %6930
  %6933 = select i1 %6926, float %6929, float %6931
  %6934 = fmul fast float %6932, %6923
  %6935 = fmul fast float %6933, %6924
  %6936 = call float @dx.op.unary.f32(i32 6, float %6934)  ; FAbs(value)
  %6937 = call float @dx.op.unary.f32(i32 6, float %6935)  ; FAbs(value)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6939 = call float @dx.op.binary.f32(i32 35, float %6936, float %6937)  ; FMax(a,b)
  %6940 = fsub fast float %6938, %6939
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fcmp fast ogt float %6941, 0.000000e+00
  br i1 %6942, label %6943, label %6984, !dx.controlflow.hints !119

; <label>:6943                                    ; preds = %6885
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6918, float %6919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 1
  %6946 = fcmp fast ogt float %6945, 0.000000e+00
  br i1 %6946, label %6947, label %6979

; <label>:6947                                    ; preds = %6943
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6918, float %6919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = extractvalue %dx.types.ResRet.f32 %6948, 3
  %6953 = fsub fast float 1.000000e+00, %6900
  %6954 = fsub fast float %6953, %6911
  %6955 = fmul fast float %6954, 0x400921FB60000000
  %6956 = fadd fast float %6955, 0x3FF921FB60000000
  %6957 = call float @dx.op.unary.f32(i32 13, float %6956)  ; Sin(value)
  %6958 = fadd fast float %6957, -1.000000e+00
  %6959 = fmul fast float %6958, 0x3FD45F3060000000
  %6960 = fmul fast float %6954, 0x401921FB60000000
  %6961 = fadd fast float %6960, 0x400921FB60000000
  %6962 = call float @dx.op.unary.f32(i32 13, float %6961)  ; Sin(value)
  %6963 = fadd fast float %6962, 0x3E7777A5C0000000
  %6964 = fmul fast float %6963, 0x3FC45F3060000000
  %6965 = fmul fast float %6954, 0x4022D97C80000000
  %6966 = fadd fast float %6965, 0x4012D97C80000000
  %6967 = call float @dx.op.unary.f32(i32 13, float %6966)  ; Sin(value)
  %6968 = fadd fast float %6967, 1.000000e+00
  %6969 = fmul fast float %6968, 0x3FBB2995E0000000
  %6970 = fmul fast float %6954, 0x402921FB60000000
  %6971 = fadd fast float %6970, 0x401921FB60000000
  %6972 = call float @dx.op.unary.f32(i32 13, float %6971)  ; Sin(value)
  %6973 = fadd fast float %6972, 0xBE8777A5C0000000
  %6974 = fmul fast float %6973, 0x3FB45F3060000000
  %6975 = call float @dx.op.dot4.f32(i32 56, float %6949, float %6950, float %6951, float %6952, float %6959, float %6964, float %6969, float %6974)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6976 = fmul fast float %6975, 0xBFF7154760000000
  %6977 = call float @dx.op.unary.f32(i32 21, float %6976)  ; Exp(value)
  %6978 = call float @dx.op.unary.f32(i32 7, float %6977)  ; Saturate(value)
  br label %6979

; <label>:6979                                    ; preds = %6947, %6943
  %6980 = phi float [ %6978, %6947 ], [ 1.000000e+00, %6943 ]
  %6981 = fadd fast float %6980, -1.000000e+00
  %6982 = fmul fast float %6981, %6941
  %6983 = fadd fast float %6982, 1.000000e+00
  br label %6984

; <label>:6984                                    ; preds = %6979, %6885
  %6985 = phi float [ %6983, %6979 ], [ 1.000000e+00, %6885 ]
  %6986 = fmul fast float %6985, %6881
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %6991 = fadd fast float %6988, %161
  %6992 = fadd fast float %6989, %162
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %6995 = fsub fast float -0.000000e+00, %6991
  %6996 = fsub fast float -0.000000e+00, %6992
  %6997 = fsub fast float %5802, %6990
  %6998 = fadd fast float %6997, %6994
  %6999 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6995, float %6996, float %6998)  ; Dot3(ax,ay,az,bx,by,bz)
  %7000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = fdiv fast float 1.000000e+00, %7000
  %7002 = fmul fast float %7001, %6999
  %7003 = fmul fast float %6233, %7002
  %7004 = fmul fast float %6234, %7002
  %7005 = fadd fast float %7003, %6991
  %7006 = fadd fast float %7004, %6992
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7010 = fsub fast float %7005, %7008
  %7011 = fsub fast float %7006, %7009
  %7012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7012, 2
  %7014 = extractvalue %dx.types.CBufRet.f32 %7012, 3
  %7015 = fmul fast float %7010, %7013
  %7016 = fmul fast float %7011, %7014
  %7017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.i32 %7017, 3
  %7019 = icmp eq i32 %7018, 0
  br i1 %7019, label %7025, label %7020

; <label>:7020                                    ; preds = %6984
  %7021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %7015, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  br label %7030

; <label>:7025                                    ; preds = %6984
  %7026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %7015, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.ResRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.ResRet.f32 %7026, 2
  br label %7030

; <label>:7030                                    ; preds = %7025, %7020
  %7031 = phi float [ %7022, %7020 ], [ %7027, %7025 ]
  %7032 = phi float [ %7023, %7020 ], [ %7028, %7025 ]
  %7033 = phi float [ %7024, %7020 ], [ %7029, %7025 ]
  %7034 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %7035 = fmul fast float %7034, %7031
  %7036 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %7037 = fsub fast float %7002, %7036
  %7038 = fsub fast float %7037, %7035
  %7039 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7038)  ; FMax(a,b)
  %7040 = fmul fast float %7039, %7032
  %7041 = call float @dx.op.binary.f32(i32 36, float %7033, float %7040)  ; FMin(a,b)
  %7042 = fmul fast float %7041, 0xBFF7154760000000
  %7043 = call float @dx.op.unary.f32(i32 21, float %7042)  ; Exp(value)
  %7044 = fmul fast float %6986, %7043
  br label %7045

; <label>:7045                                    ; preds = %7030, %6880
  %7046 = phi float [ %7044, %7030 ], [ %6881, %6880 ]
  %7047 = call float @dx.op.binary.f32(i32 36, float %7046, float %7046)  ; FMin(a,b)
  %7048 = call float @dx.op.binary.f32(i32 36, float %7046, float %7047)  ; FMin(a,b)
  %7049 = fcmp fast ogt float %7048, 0.000000e+00
  br i1 %7049, label %7050, label %7436, !dx.controlflow.hints !120

; <label>:7050                                    ; preds = %7045
  %7051 = fmul fast float %7046, %6244
  %7052 = fmul fast float %7046, %6245
  %7053 = fmul fast float %7046, %6246
  %7054 = fsub fast float %163, %5590
  %7055 = fcmp fast ogt float %7054, 0.000000e+00
  %7056 = fmul fast float %6233, 5.120000e+02
  %7057 = fmul fast float %6234, 5.120000e+02
  %7058 = fmul fast float %6235, 5.120000e+02
  %7059 = fadd fast float %7058, %163
  %7060 = fsub fast float %5590, %7059
  %7061 = fmul fast float %7060, 2.000000e+00
  %7062 = fadd fast float %7061, %7059
  %7063 = select i1 %7055, float %7062, float %7059
  %7064 = fsub fast float %7063, %163
  %7065 = call float @dx.op.dot3.f32(i32 55, float %7056, float %7057, float %7064, float %7056, float %7057, float %7064)  ; Dot3(ax,ay,az,bx,by,bz)
  %7066 = call float @dx.op.unary.f32(i32 25, float %7065)  ; Rsqrt(value)
  %7067 = fmul fast float %7066, %7056
  %7068 = fmul fast float %7066, %7057
  %7069 = fmul fast float %7066, %7064
  %7070 = fsub fast float %5590, %163
  %7071 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7070)  ; Dot3(ax,ay,az,bx,by,bz)
  %7072 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7067, float %7068, float %7069)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = fdiv fast float 1.000000e+00, %7072
  %7074 = fmul fast float %7073, %7071
  %7075 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7054, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7076 = fcmp fast ogt float %7075, 0.000000e+00
  %7077 = fcmp fast olt float %7075, 0.000000e+00
  %7078 = zext i1 %7076 to i32
  %7079 = zext i1 %7077 to i32
  %7080 = sub nsw i32 %7078, %7079
  %7081 = sitofp i32 %7080 to float
  %7082 = fsub fast float %7063, %5590
  %7083 = call float @dx.op.dot3.f32(i32 55, float %7056, float %7057, float %7082, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7084 = fcmp fast ogt float %7083, 0.000000e+00
  %7085 = fcmp fast olt float %7083, 0.000000e+00
  %7086 = zext i1 %7084 to i32
  %7087 = zext i1 %7085 to i32
  %7088 = sub nsw i32 %7086, %7087
  %7089 = sitofp i32 %7088 to float
  %7090 = fcmp fast une float %7081, %7089
  br i1 %7090, label %7091, label %7101

; <label>:7091                                    ; preds = %7050
  %7092 = fmul fast float %7074, %7069
  %7093 = fmul fast float %7074, %7068
  %7094 = fmul fast float %7074, %7067
  %7095 = fmul fast float %7094, %7094
  %7096 = fmul fast float %7093, %7093
  %7097 = fadd fast float %7095, %7096
  %7098 = fmul fast float %7092, %7092
  %7099 = fadd fast float %7097, %7098
  %7100 = call float @dx.op.unary.f32(i32 24, float %7099)  ; Sqrt(value)
  br label %7111

; <label>:7101                                    ; preds = %7050
  %7102 = icmp slt i32 %7080, 0
  br i1 %7102, label %7103, label %7111

; <label>:7103                                    ; preds = %7101
  %7104 = fsub fast float %163, %7063
  %7105 = fmul fast float %7056, %7056
  %7106 = fmul fast float %7057, %7057
  %7107 = fadd fast float %7105, %7106
  %7108 = fmul fast float %7104, %7104
  %7109 = fadd fast float %7107, %7108
  %7110 = call float @dx.op.unary.f32(i32 24, float %7109)  ; Sqrt(value)
  br label %7111

; <label>:7111                                    ; preds = %7103, %7101, %7091
  %7112 = phi float [ %7100, %7091 ], [ %7110, %7103 ], [ 0.000000e+00, %7101 ]
  %7113 = fsub fast float -0.000000e+00, %7112
  %7114 = select i1 %7055, float -0.000000e+00, float %7113
  %7115 = fmul fast float %5591, 0x3FF7154760000000
  %7116 = fmul fast float %7115, %7114
  %7117 = fmul fast float %5592, 0x3FF7154760000000
  %7118 = fmul fast float %7117, %7114
  %7119 = fmul fast float %5593, 0x3FF7154760000000
  %7120 = fmul fast float %7119, %7114
  %7121 = call float @dx.op.unary.f32(i32 21, float %7116)  ; Exp(value)
  %7122 = call float @dx.op.unary.f32(i32 21, float %7118)  ; Exp(value)
  %7123 = call float @dx.op.unary.f32(i32 21, float %7120)  ; Exp(value)
  %7124 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  %7125 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7126 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7127 = fmul fast float %7051, %7124
  %7128 = fmul fast float %7052, %7125
  %7129 = fmul fast float %7053, %7126
  %7130 = fsub fast float %6233, %5790
  %7131 = fsub fast float %6234, %5789
  %7132 = fsub fast float %6235, %5788
  %7133 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7132, float %7130, float %7131, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.unary.f32(i32 25, float %7133)  ; Rsqrt(value)
  %7135 = fmul fast float %7134, %7130
  %7136 = fmul fast float %7134, %7131
  %7137 = fmul fast float %7134, %7132
  %7138 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %7139 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5786, float %5785, float %7135, float %7136, float %7137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7141 = fmul fast float %7140, %7140
  %7142 = fmul fast float %7141, %5818
  %7143 = call float @dx.op.unary.f32(i32 7, float %7142)  ; Saturate(value)
  %7144 = fmul fast float %7143, %7140
  %7145 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %7135, float %7136, float %7137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = fmul fast float %7145, %7145
  %7147 = call float @dx.op.unary.f32(i32 6, float %7138)  ; FAbs(value)
  %7148 = call float @dx.op.binary.f32(i32 35, float %6201, float 0x3F847AE140000000)  ; FMax(a,b)
  %7149 = fmul fast float %7148, %7148
  %7150 = fmul fast float %7149, %7149
  %7151 = fsub fast float 1.000000e+00, %7150
  %7152 = fmul fast float %5805, %5805
  %7153 = fmul fast float %7152, %7151
  %7154 = fadd fast float %7153, %7150
  %7155 = bitcast float %7154 to i32
  %7156 = ashr i32 %7155, 1
  %7157 = add nsw i32 %7156, 532487669
  %7158 = bitcast i32 %7157 to float
  %7159 = fadd fast float %7158, %5805
  %7160 = fmul fast float %7150, %7146
  %7161 = fsub fast float 1.000000e+00, %7146
  %7162 = fadd fast float %7161, %7160
  %7163 = fmul fast float %7147, %7147
  %7164 = fmul fast float %7163, %7151
  %7165 = fadd fast float %7164, %7150
  %7166 = bitcast float %7165 to i32
  %7167 = ashr i32 %7166, 1
  %7168 = add nsw i32 %7167, 532487669
  %7169 = bitcast i32 %7168 to float
  %7170 = fadd fast float %7169, %7147
  %7171 = fmul fast float %7162, %7162
  %7172 = fmul fast float %7171, %7159
  %7173 = fmul fast float %7172, %7170
  %7174 = fdiv fast float 0x3FF0A00000000000, %7173
  %7175 = fmul fast float %7174, %7150
  %7176 = fmul fast float %6063, 0x3FF9999980000000
  %7177 = fsub fast float 5.000000e+00, %7176
  %7178 = call float @dx.op.unary.f32(i32 6, float %7139)  ; FAbs(value)
  %7179 = fsub fast float 1.000000e+00, %7178
  %7180 = fmul fast float %6063, 0x41D9660740000000
  %7181 = fadd fast float %7180, 0xC1EFBF8940000000
  %7182 = bitcast float %7179 to i32
  %7183 = sitofp i32 %7182 to float
  %7184 = fmul fast float %7183, %7177
  %7185 = fadd fast float %7181, %7184
  %7186 = fptosi float %7185 to i32
  %7187 = bitcast i32 %7186 to float
  %7188 = fsub fast float 1.000000e+00, %5791
  %7189 = fsub fast float 1.000000e+00, %5792
  %7190 = fsub fast float 1.000000e+00, %5803
  %7191 = fmul fast float %7187, %7188
  %7192 = fmul fast float %7187, %7189
  %7193 = fmul fast float %7187, %7190
  %7194 = fadd fast float %7191, %5791
  %7195 = fadd fast float %7192, %5792
  %7196 = fadd fast float %7193, %5803
  br i1 %6086, label %7197, label %7220

; <label>:7197                                    ; preds = %7111
  %7198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %7178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7199 = extractvalue %dx.types.ResRet.f32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.f32 %7198, 1
  %7201 = extractvalue %dx.types.ResRet.f32 %7198, 2
  %7202 = fadd fast float %7199, -5.000000e-01
  %7203 = fadd fast float %7200, -5.000000e-01
  %7204 = fadd fast float %7201, -5.000000e-01
  %7205 = fmul fast float %5791, 4.000000e+00
  %7206 = fmul fast float %7205, %7188
  %7207 = fmul fast float %7206, %7202
  %7208 = fmul fast float %5792, 4.000000e+00
  %7209 = fmul fast float %7208, %7189
  %7210 = fmul fast float %7209, %7203
  %7211 = fmul fast float %5803, 4.000000e+00
  %7212 = fmul fast float %7211, %7190
  %7213 = fmul fast float %7212, %7204
  %7214 = fadd fast float %7207, %7194
  %7215 = fadd fast float %7210, %7195
  %7216 = fadd fast float %7213, %7196
  %7217 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7218 = call float @dx.op.unary.f32(i32 7, float %7215)  ; Saturate(value)
  %7219 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  br label %7220

; <label>:7220                                    ; preds = %7197, %7111
  %7221 = phi float [ %7217, %7197 ], [ %7194, %7111 ]
  %7222 = phi float [ %7218, %7197 ], [ %7195, %7111 ]
  %7223 = phi float [ %7219, %7197 ], [ %7196, %7111 ]
  %7224 = fmul fast float %7138, 9.843750e-01
  %7225 = fadd fast float %7224, 7.812500e-03
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7225, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = extractvalue %dx.types.ResRet.f32 %7226, 1
  %7229 = extractvalue %dx.types.ResRet.f32 %7226, 2
  %7230 = extractvalue %dx.types.ResRet.f32 %7226, 3
  %7231 = fsub fast float %7229, %7227
  %7232 = fsub fast float %7230, %7228
  %7233 = fmul fast float %7231, %6073
  %7234 = fmul fast float %7232, %6073
  %7235 = fadd fast float %7233, %7227
  %7236 = fadd fast float %7234, %7228
  %7237 = fmul fast float %7235, %5791
  %7238 = fmul fast float %7235, %5792
  %7239 = fmul fast float %7235, %5803
  %7240 = fadd fast float %7237, %7236
  %7241 = fadd fast float %7238, %7236
  %7242 = fadd fast float %7239, %7236
  br i1 %6086, label %7243, label %7266

; <label>:7243                                    ; preds = %7220
  %7244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %7138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.ResRet.f32 %7244, 2
  %7248 = fadd fast float %7245, -5.000000e-01
  %7249 = fadd fast float %7246, -5.000000e-01
  %7250 = fadd fast float %7247, -5.000000e-01
  %7251 = fmul fast float %5791, 4.000000e+00
  %7252 = fmul fast float %7251, %7188
  %7253 = fmul fast float %7252, %7248
  %7254 = fmul fast float %5792, 4.000000e+00
  %7255 = fmul fast float %7254, %7189
  %7256 = fmul fast float %7255, %7249
  %7257 = fmul fast float %5803, 4.000000e+00
  %7258 = fmul fast float %7257, %7190
  %7259 = fmul fast float %7258, %7250
  %7260 = fadd fast float %7253, %7240
  %7261 = fadd fast float %7256, %7241
  %7262 = fadd fast float %7259, %7242
  %7263 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7264 = call float @dx.op.unary.f32(i32 7, float %7261)  ; Saturate(value)
  %7265 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  br label %7266

; <label>:7266                                    ; preds = %7243, %7220
  %7267 = phi float [ %7263, %7243 ], [ %7240, %7220 ]
  %7268 = phi float [ %7264, %7243 ], [ %7241, %7220 ]
  %7269 = phi float [ %7265, %7243 ], [ %7242, %7220 ]
  %7270 = call float @dx.op.binary.f32(i32 35, float %7268, float %7269)  ; FMax(a,b)
  %7271 = call float @dx.op.binary.f32(i32 35, float %7267, float %7270)  ; FMax(a,b)
  %7272 = fsub fast float 1.000000e+00, %7271
  %7273 = call float @dx.op.binary.f32(i32 35, float %7147, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7274 = fdiv fast float %4513, %7273
  %7275 = fmul fast float %6141, %7274
  %7276 = fmul fast float %6143, %7274
  %7277 = fmul fast float %6145, %7274
  %7278 = call float @dx.op.unary.f32(i32 21, float %7275)  ; Exp(value)
  %7279 = call float @dx.op.unary.f32(i32 21, float %7276)  ; Exp(value)
  %7280 = call float @dx.op.unary.f32(i32 21, float %7277)  ; Exp(value)
  %7281 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7279)  ; Saturate(value)
  %7283 = call float @dx.op.unary.f32(i32 7, float %7280)  ; Saturate(value)
  %7284 = select i1 %6138, float %7281, float 0.000000e+00
  %7285 = select i1 %6139, float %7282, float 0.000000e+00
  %7286 = select i1 %6140, float %7283, float 0.000000e+00
  %7287 = fsub fast float -0.000000e+00, %5797
  %7288 = fsub fast float -0.000000e+00, %5798
  %7289 = fsub fast float -0.000000e+00, %5799
  %7290 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float %7287, float %7288, float %7289)  ; Dot3(ax,ay,az,bx,by,bz)
  %7291 = call float @dx.op.unary.f32(i32 7, float %7290)  ; Saturate(value)
  %7292 = fmul fast float %7291, 9.843750e-01
  %7293 = fadd fast float %7292, 7.812500e-03
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7293, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.ResRet.f32 %7294, 2
  %7298 = extractvalue %dx.types.ResRet.f32 %7294, 3
  %7299 = fsub fast float %7297, %7295
  %7300 = fsub fast float %7298, %7296
  %7301 = fmul fast float %7299, %6073
  %7302 = fmul fast float %7300, %6073
  %7303 = fadd fast float %7301, %7295
  %7304 = fadd fast float %7302, %7296
  %7305 = fmul fast float %7303, %5791
  %7306 = fmul fast float %7303, %5792
  %7307 = fmul fast float %7303, %5803
  %7308 = fadd fast float %7305, %7304
  %7309 = fadd fast float %7306, %7304
  %7310 = fadd fast float %7307, %7304
  br i1 %6086, label %7311, label %7334

; <label>:7311                                    ; preds = %7266
  %7312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %7291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7313 = extractvalue %dx.types.ResRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.ResRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.ResRet.f32 %7312, 2
  %7316 = fadd fast float %7313, -5.000000e-01
  %7317 = fadd fast float %7314, -5.000000e-01
  %7318 = fadd fast float %7315, -5.000000e-01
  %7319 = fmul fast float %5791, 4.000000e+00
  %7320 = fmul fast float %7319, %7188
  %7321 = fmul fast float %7320, %7316
  %7322 = fmul fast float %5792, 4.000000e+00
  %7323 = fmul fast float %7322, %7189
  %7324 = fmul fast float %7323, %7317
  %7325 = fmul fast float %5803, 4.000000e+00
  %7326 = fmul fast float %7325, %7190
  %7327 = fmul fast float %7326, %7318
  %7328 = fadd fast float %7321, %7308
  %7329 = fadd fast float %7324, %7309
  %7330 = fadd fast float %7327, %7310
  %7331 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7332 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7333 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  br label %7334

; <label>:7334                                    ; preds = %7311, %7266
  %7335 = phi float [ %7331, %7311 ], [ %7308, %7266 ]
  %7336 = phi float [ %7332, %7311 ], [ %7309, %7266 ]
  %7337 = phi float [ %7333, %7311 ], [ %7310, %7266 ]
  %7338 = call float @dx.op.binary.f32(i32 35, float %7336, float %7337)  ; FMax(a,b)
  %7339 = call float @dx.op.binary.f32(i32 35, float %7335, float %7338)  ; FMax(a,b)
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = fmul fast float %6201, %6206
  %7342 = fadd fast float %6208, %7341
  %7343 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7344 = fsub fast float %6233, %5811
  %7345 = fsub fast float %6234, %5812
  %7346 = fsub fast float %6235, %5813
  %7347 = call float @dx.op.dot3.f32(i32 55, float %7344, float %7345, float %7346, float %7344, float %7345, float %7346)  ; Dot3(ax,ay,az,bx,by,bz)
  %7348 = call float @dx.op.unary.f32(i32 25, float %7347)  ; Rsqrt(value)
  %7349 = fmul fast float %7348, %7344
  %7350 = fmul fast float %7348, %7345
  %7351 = fmul fast float %7348, %7346
  %7352 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7289, float %7349, float %7350, float %7351)  ; Dot3(ax,ay,az,bx,by,bz)
  %7353 = fmul fast float %7352, %7352
  %7354 = call float @dx.op.unary.f32(i32 6, float %7291)  ; FAbs(value)
  %7355 = call float @dx.op.binary.f32(i32 35, float %7343, float 0x3F847AE140000000)  ; FMax(a,b)
  %7356 = fmul fast float %7355, %7355
  %7357 = fmul fast float %7356, %7356
  %7358 = fsub fast float 1.000000e+00, %7357
  %7359 = fmul fast float %7152, %7358
  %7360 = fadd fast float %7359, %7357
  %7361 = bitcast float %7360 to i32
  %7362 = ashr i32 %7361, 1
  %7363 = add nsw i32 %7362, 532487669
  %7364 = bitcast i32 %7363 to float
  %7365 = fadd fast float %7364, %5805
  %7366 = fmul fast float %7357, %7353
  %7367 = fsub fast float 1.000000e+00, %7353
  %7368 = fadd fast float %7367, %7366
  %7369 = fmul fast float %7354, %7354
  %7370 = fmul fast float %7369, %7358
  %7371 = fadd fast float %7370, %7357
  %7372 = bitcast float %7371 to i32
  %7373 = ashr i32 %7372, 1
  %7374 = add nsw i32 %7373, 532487669
  %7375 = bitcast i32 %7374 to float
  %7376 = fadd fast float %7375, %7354
  %7377 = fmul fast float %7368, %7368
  %7378 = fmul fast float %7377, %7365
  %7379 = fmul fast float %7378, %7376
  %7380 = fdiv fast float 0x3FF0A00000000000, %7379
  %7381 = fmul fast float %7380, %7357
  %7382 = fmul fast float %7291, %7284
  %7383 = fmul fast float %7291, %7285
  %7384 = fmul fast float %7291, %7286
  %7385 = fmul fast float %7382, %7340
  %7386 = fmul fast float %7385, %7381
  %7387 = fmul fast float %7383, %7340
  %7388 = fmul fast float %7387, %7381
  %7389 = fmul fast float %7384, %7340
  %7390 = fmul fast float %7389, %7381
  %7391 = fmul fast float %7221, %7175
  %7392 = fmul fast float %7222, %7175
  %7393 = fmul fast float %7223, %7175
  %7394 = fsub fast float 1.000000e+00, %7139
  %7395 = bitcast float %7394 to i32
  %7396 = sitofp i32 %7395 to float
  %7397 = fmul fast float %7396, 5.000000e+00
  %7398 = fadd fast float %7397, 0xC1EFBF8940000000
  %7399 = fptosi float %7398 to i32
  %7400 = bitcast i32 %7399 to float
  %7401 = fmul fast float %7400, %5161
  %7402 = fmul fast float %7272, %7401
  %7403 = fmul fast float %7402, %6133
  %7404 = fmul fast float %7402, %6134
  %7405 = fmul fast float %7402, %6135
  %7406 = fadd fast float %7403, %7391
  %7407 = fadd fast float %7404, %7392
  %7408 = fadd fast float %7405, %7393
  %7409 = fmul fast float %7406, %7144
  %7410 = fmul fast float %7407, %7144
  %7411 = fmul fast float %7408, %7144
  %7412 = fmul fast float %7144, %7127
  %7413 = fmul fast float %7412, %7272
  %7414 = fmul fast float %7144, %7128
  %7415 = fmul fast float %7414, %7272
  %7416 = fmul fast float %7144, %7129
  %7417 = fmul fast float %7416, %7272
  %7418 = fadd fast float %7409, %7386
  %7419 = fadd fast float %7410, %7388
  %7420 = fadd fast float %7411, %7390
  %7421 = fmul fast float %7418, %7127
  %7422 = fmul fast float %7419, %7128
  %7423 = fmul fast float %7420, %7129
  %7424 = fadd fast float %7413, %6223
  %7425 = fmul fast float %7424, %5157
  %7426 = fadd fast float %7415, %6225
  %7427 = fmul fast float %7426, %5157
  %7428 = fadd fast float %7417, %6227
  %7429 = fmul fast float %7428, %5157
  %7430 = fadd fast float %7421, %6186
  %7431 = fmul fast float %7430, %5157
  %7432 = fadd fast float %7422, %6189
  %7433 = fmul fast float %7432, %5157
  %7434 = fadd fast float %7423, %6192
  %7435 = fmul fast float %7434, %5157
  br label %7436

; <label>:7436                                    ; preds = %7334, %7045, %6113
  %7437 = phi float [ %6187, %6113 ], [ %6187, %7045 ], [ %7431, %7334 ]
  %7438 = phi float [ %6190, %6113 ], [ %6190, %7045 ], [ %7433, %7334 ]
  %7439 = phi float [ %6193, %6113 ], [ %6193, %7045 ], [ %7435, %7334 ]
  %7440 = phi float [ %6224, %6113 ], [ %6224, %7045 ], [ %7425, %7334 ]
  %7441 = phi float [ %6226, %6113 ], [ %6226, %7045 ], [ %7427, %7334 ]
  %7442 = phi float [ %6228, %6113 ], [ %6228, %7045 ], [ %7429, %7334 ]
  %7443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.i32 %7443, 0
  %7445 = icmp eq i32 %7444, 0
  br i1 %7445, label %8220, label %7446

; <label>:7446                                    ; preds = %7436
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 2
  %7449 = extractvalue %dx.types.CBufRet.f32 %7447, 3
  %7450 = fmul fast float %7448, %102
  %7451 = fmul fast float %7449, %103
  %7452 = fptoui float %7450 to i32
  %7453 = fptoui float %7451 to i32
  %7454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7455 = extractvalue %dx.types.CBufRet.f32 %7454, 0
  %7456 = extractvalue %dx.types.CBufRet.f32 %7454, 2
  %7457 = extractvalue %dx.types.CBufRet.f32 %7454, 3
  %7458 = fadd fast float %93, -4.000000e+00
  %7459 = call float @dx.op.binary.f32(i32 35, float %7458, float 0.000000e+00)  ; FMax(a,b)
  %7460 = fadd fast float %7459, %7455
  %7461 = fmul fast float %7460, %7456
  %7462 = call float @dx.op.unary.f32(i32 23, float %7461)  ; Log(value)
  %7463 = fmul fast float %7462, %7457
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 2
  %7466 = fmul fast float %7463, %7465
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.i32 %7468, 1
  %7470 = add i32 %7469, -1
  %7471 = uitofp i32 %7469 to float
  %7472 = fmul fast float %7471, %7467
  %7473 = fptoui float %7472 to i32
  %7474 = call i32 @dx.op.binary.i32(i32 40, i32 %7473, i32 %7470)  ; UMin(a,b)
  %7475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7476 = extractvalue %dx.types.CBufRet.i32 %7475, 2
  %7477 = extractvalue %dx.types.CBufRet.i32 %7475, 3
  %7478 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7453, i32 %7476, i32 %7452)  ; UMad(a,b,c)
  %7479 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7474, i32 %7477, i32 %7478)  ; UMad(a,b,c)
  %7480 = add nsw i32 %7444, -1
  %7481 = call i32 @dx.op.binary.i32(i32 37, i32 %7480, i32 0)  ; IMax(a,b)
  %7482 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7483 = fptoui float %7482 to i32
  %7484 = lshr i32 %7483, 5
  %7485 = call i32 @dx.op.binary.i32(i32 40, i32 %7484, i32 8191)  ; UMin(a,b)
  %7486 = shl i32 %7485, 2
  %7487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7486, i32 undef)  ; BufferLoad(srv,index,wot)
  %7488 = extractvalue %dx.types.ResRet.i32 %7487, 0
  %7489 = lshr i32 %7488, 16
  %7490 = and i32 %7488, 65535
  %7491 = lshr i32 %7488, 21
  %7492 = lshr i32 %7490, 5
  %7493 = call i32 @dx.op.binary.i32(i32 40, i32 %7492, i32 %7481)  ; UMin(a,b)
  %7494 = icmp ugt i32 %7491, %7493
  br i1 %7494, label %8220, label %7495

; <label>:7495                                    ; preds = %7446
  br label %7496

; <label>:7496                                    ; preds = %8210, %7495
  %7497 = phi i32 [ %8217, %8210 ], [ %7491, %7495 ]
  %7498 = phi float [ %8211, %8210 ], [ %7437, %7495 ]
  %7499 = phi float [ %8212, %8210 ], [ %7438, %7495 ]
  %7500 = phi float [ %8213, %8210 ], [ %7439, %7495 ]
  %7501 = phi float [ %8214, %8210 ], [ %7440, %7495 ]
  %7502 = phi float [ %8215, %8210 ], [ %7441, %7495 ]
  %7503 = phi float [ %8216, %8210 ], [ %7442, %7495 ]
  %7504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.i32 %7504, 0
  %7506 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7479, i32 %7505, i32 %7497)  ; UMad(a,b,c)
  %7507 = shl i32 %7506, 2
  %7508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7507, i32 undef)  ; BufferLoad(srv,index,wot)
  %7509 = extractvalue %dx.types.ResRet.i32 %7508, 0
  %7510 = shl i32 %7497, 5
  %7511 = sub nsw i32 %7489, %7510
  %7512 = call i32 @dx.op.binary.i32(i32 37, i32 %7511, i32 0)  ; IMax(a,b)
  %7513 = call i32 @dx.op.binary.i32(i32 38, i32 %7512, i32 31)  ; IMin(a,b)
  %7514 = sub nsw i32 1, %7489
  %7515 = add nsw i32 %7514, %7490
  %7516 = call i32 @dx.op.binary.i32(i32 37, i32 %7515, i32 0)  ; IMax(a,b)
  %7517 = call i32 @dx.op.binary.i32(i32 38, i32 %7516, i32 32)  ; IMin(a,b)
  %7518 = and i32 %7517, 31
  %7519 = shl i32 -1, %7518
  %7520 = xor i32 %7519, -1
  %7521 = and i32 %7513, 31
  %7522 = shl i32 %7520, %7521
  %7523 = icmp eq i32 %7517, 32
  %7524 = select i1 %7523, i32 -1, i32 %7522
  %7525 = and i32 %7524, %7509
  %7526 = icmp eq i32 %7525, 0
  br i1 %7526, label %8210, label %7527

; <label>:7527                                    ; preds = %7496
  br label %7528

; <label>:7528                                    ; preds = %7663, %7527
  %7529 = phi i32 [ %7540, %7663 ], [ %7525, %7527 ]
  %7530 = phi float [ %7664, %7663 ], [ %7498, %7527 ]
  %7531 = phi float [ %7665, %7663 ], [ %7499, %7527 ]
  %7532 = phi float [ %7666, %7663 ], [ %7500, %7527 ]
  %7533 = phi float [ %7667, %7663 ], [ %7501, %7527 ]
  %7534 = phi float [ %7668, %7663 ], [ %7502, %7527 ]
  %7535 = phi float [ %7669, %7663 ], [ %7503, %7527 ]
  %7536 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7529)  ; FirstbitLo(value)
  %7537 = add i32 %7536, %7510
  %7538 = and i32 %7536, 31
  %7539 = shl i32 1, %7538
  %7540 = xor i32 %7539, %7529
  %7541 = mul i32 %7537, 112
  %7542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7541, i32 undef)  ; BufferLoad(srv,index,wot)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.ResRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.ResRet.f32 %7542, 2
  %7546 = or i32 %7541, 12
  %7547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7546, i32 undef)  ; BufferLoad(srv,index,wot)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = add i32 %7541, 16
  %7550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7549, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.ResRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.ResRet.f32 %7550, 2
  %7554 = add i32 %7541, 28
  %7555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7554, i32 undef)  ; BufferLoad(srv,index,wot)
  %7556 = extractvalue %dx.types.ResRet.i32 %7555, 0
  %7557 = add i32 %7541, 44
  %7558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7557, i32 undef)  ; BufferLoad(srv,index,wot)
  %7559 = extractvalue %dx.types.ResRet.f32 %7558, 0
  %7560 = add i32 %7541, 48
  %7561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.ResRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.ResRet.f32 %7561, 2
  %7565 = extractvalue %dx.types.ResRet.f32 %7561, 3
  %7566 = add i32 %7541, 64
  %7567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7566, i32 undef)  ; BufferLoad(srv,index,wot)
  %7568 = extractvalue %dx.types.ResRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.ResRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.ResRet.f32 %7567, 2
  %7571 = extractvalue %dx.types.ResRet.f32 %7567, 3
  %7572 = add i32 %7541, 80
  %7573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7572, i32 undef)  ; BufferLoad(srv,index,wot)
  %7574 = extractvalue %dx.types.ResRet.f32 %7573, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7573, 2
  %7576 = add i32 %7541, 92
  %7577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7576, i32 undef)  ; BufferLoad(srv,index,wot)
  %7578 = extractvalue %dx.types.ResRet.i32 %7577, 0
  %7579 = call float @dx.op.dot3.f32(i32 55, float %7543, float %7544, float %7545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = select i1 %223, float %7574, float %7543
  %7581 = select i1 %223, float %7579, float %7544
  %7582 = select i1 %223, float %7575, float %7545
  %7583 = and i32 %7578, 65535
  %7584 = uitofp i32 %7583 to float
  %7585 = lshr i32 %7578, 16
  %7586 = uitofp i32 %7585 to float
  %7587 = and i32 %7556, 65535
  %7588 = and i32 %7556, 50331648
  %7589 = icmp slt i32 %7556, 0
  %7590 = icmp eq i32 %7588, 33554432
  %7591 = fsub fast float %7562, %161
  %7592 = fsub fast float %7563, %162
  %7593 = fsub fast float %7564, %163
  %7594 = call float @dx.op.dot3.f32(i32 55, float %7591, float %7592, float %7593, float %7591, float %7592, float %7593)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = call float @dx.op.unary.f32(i32 24, float %7594)  ; Sqrt(value)
  %7596 = fdiv fast float 1.000000e+00, %7595
  %7597 = fmul fast float %7596, %7591
  %7598 = fmul fast float %7596, %7592
  %7599 = fmul fast float %7596, %7593
  %7600 = fadd fast float %7595, %7548
  %7601 = fdiv fast float 1.000000e+00, %7600
  %7602 = fmul float %7559, %7601
  %7603 = fmul float %7602, %7602
  %7604 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  br i1 %7590, label %7605, label %7626

; <label>:7605                                    ; preds = %7528
  %7606 = fmul fast float %7570, %7551
  %7607 = fmul fast float %7570, %7552
  %7608 = fmul fast float %7570, %7553
  %7609 = fadd fast float %7591, %7606
  %7610 = fadd fast float %7592, %7607
  %7611 = fadd fast float %7593, %7608
  %7612 = call float @dx.op.dot3.f32(i32 55, float %7609, float %7610, float %7611, float %7609, float %7610, float %7611)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = call float @dx.op.unary.f32(i32 25, float %7612)  ; Rsqrt(value)
  %7614 = fmul fast float %7613, %7609
  %7615 = fmul fast float %7613, %7610
  %7616 = fmul fast float %7613, %7611
  %7617 = fsub fast float %161, %7562
  %7618 = fsub fast float %162, %7563
  %7619 = fsub fast float %163, %7564
  %7620 = fsub fast float -0.000000e+00, %7617
  %7621 = fsub fast float -0.000000e+00, %7618
  %7622 = fsub fast float -0.000000e+00, %7619
  %7623 = call float @dx.op.dot3.f32(i32 55, float %7620, float %7621, float %7622, float %7551, float %7552, float %7553)  ; Dot3(ax,ay,az,bx,by,bz)
  %7624 = fcmp fast ogt float %7623, 0.000000e+00
  %7625 = uitofp i1 %7624 to float
  br label %7626

; <label>:7626                                    ; preds = %7605, %7528
  %7627 = phi float [ %7625, %7605 ], [ 1.000000e+00, %7528 ]
  %7628 = phi float [ %7614, %7605 ], [ %7597, %7528 ]
  %7629 = phi float [ %7615, %7605 ], [ %7598, %7528 ]
  %7630 = phi float [ %7616, %7605 ], [ %7599, %7528 ]
  %7631 = call float @dx.op.dot3.f32(i32 55, float %7551, float %7552, float %7553, float %7628, float %7629, float %7630)  ; Dot3(ax,ay,az,bx,by,bz)
  %7632 = fmul fast float %7631, %7631
  %7633 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7634 = fsub fast float 1.000000e+00, %7633
  %7635 = fmul fast float %7634, 5.000000e-01
  %7636 = fcmp fast ogt float %7631, 0.000000e+00
  %7637 = fsub fast float 1.000000e+00, %7635
  %7638 = select i1 %7636, float %7635, float %7637
  %7639 = fmul fast float %7638, %7586
  %7640 = fadd fast float %7639, %7584
  %7641 = fmul fast float %7640, 0x3EF0001000000000
  %7642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7641, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = fmul fast float %7631, %7568
  %7645 = fadd fast float %7644, %7569
  %7646 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  %7647 = select i1 %7590, float 1.000000e+00, float %7646
  %7648 = select i1 %7590, float %7646, float 1.000000e+00
  %7649 = fmul fast float %7595, %7565
  %7650 = fsub fast float 1.000000e+00, %7649
  %7651 = fmul fast float %7650, %7571
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  %7653 = fmul fast float %7652, %7648
  %7654 = fmul fast float %7653, 2.000000e+00
  %7655 = fsub fast float 3.000000e+00, %7654
  %7656 = fmul fast float %7643, %7627
  %7657 = fmul fast float %7653, %7653
  %7658 = fmul fast float %7657, %7656
  %7659 = fmul fast float %7658, %7655
  %7660 = call float @dx.op.binary.f32(i32 36, float %7659, float %7659)  ; FMin(a,b)
  %7661 = call float @dx.op.binary.f32(i32 36, float %7659, float %7660)  ; FMin(a,b)
  %7662 = fcmp fast ogt float %7661, 0.000000e+00
  br i1 %7662, label %7671, label %7663, !dx.controlflow.hints !121

; <label>:7663                                    ; preds = %8163, %7771, %7626
  %7664 = phi float [ %7530, %7771 ], [ %7530, %7626 ], [ %8206, %8163 ]
  %7665 = phi float [ %7531, %7771 ], [ %7531, %7626 ], [ %8207, %8163 ]
  %7666 = phi float [ %7532, %7771 ], [ %7532, %7626 ], [ %8208, %8163 ]
  %7667 = phi float [ %7533, %7771 ], [ %7533, %7626 ], [ %8200, %8163 ]
  %7668 = phi float [ %7534, %7771 ], [ %7534, %7626 ], [ %8201, %8163 ]
  %7669 = phi float [ %7535, %7771 ], [ %7535, %7626 ], [ %8202, %8163 ]
  %7670 = icmp eq i32 %7529, %7539
  br i1 %7670, label %8209, label %7528

; <label>:7671                                    ; preds = %7626
  %7672 = icmp eq i32 %7587, 255
  br i1 %7672, label %7771, label %7673, !dx.controlflow.hints !122

; <label>:7673                                    ; preds = %7671
  %7674 = mul nuw nsw i32 %7587, 176
  %7675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7674, i32 undef)  ; BufferLoad(srv,index,wot)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7680 = add nuw nsw i32 %7674, 16
  %7681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7680, i32 undef)  ; BufferLoad(srv,index,wot)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.ResRet.f32 %7681, 1
  %7684 = add nuw nsw i32 %7674, 32
  %7685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7684, i32 undef)  ; BufferLoad(srv,index,wot)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.ResRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.ResRet.f32 %7685, 2
  %7689 = add nuw nsw i32 %7674, 48
  %7690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7689, i32 undef)  ; BufferLoad(srv,index,wot)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7694 = extractvalue %dx.types.ResRet.f32 %7690, 3
  %7695 = add nuw nsw i32 %7674, 64
  %7696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7695, i32 undef)  ; BufferLoad(srv,index,wot)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.ResRet.f32 %7696, 3
  %7701 = add nuw nsw i32 %7674, 80
  %7702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7701, i32 undef)  ; BufferLoad(srv,index,wot)
  %7703 = extractvalue %dx.types.ResRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.ResRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.ResRet.f32 %7702, 2
  %7706 = extractvalue %dx.types.ResRet.f32 %7702, 3
  %7707 = add nuw nsw i32 %7674, 96
  %7708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7707, i32 undef)  ; BufferLoad(srv,index,wot)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = extractvalue %dx.types.ResRet.f32 %7708, 3
  %7713 = bitcast float %7683 to i32
  %7714 = fmul fast float %7688, %111
  %7715 = fmul fast float %7688, %113
  %7716 = fmul fast float %7688, %115
  %7717 = fadd fast float %7714, %161
  %7718 = fadd fast float %7715, %162
  %7719 = fadd fast float %7716, %163
  %7720 = fmul fast float %7717, %7691
  %7721 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7697, float %7720)  ; FMad(a,b,c)
  %7722 = call float @dx.op.tertiary.f32(i32 46, float %7719, float %7703, float %7721)  ; FMad(a,b,c)
  %7723 = fadd fast float %7722, %7709
  %7724 = fmul fast float %7717, %7692
  %7725 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7698, float %7724)  ; FMad(a,b,c)
  %7726 = call float @dx.op.tertiary.f32(i32 46, float %7719, float %7704, float %7725)  ; FMad(a,b,c)
  %7727 = fadd fast float %7726, %7710
  %7728 = fmul fast float %7717, %7693
  %7729 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7699, float %7728)  ; FMad(a,b,c)
  %7730 = call float @dx.op.tertiary.f32(i32 46, float %7719, float %7705, float %7729)  ; FMad(a,b,c)
  %7731 = fadd fast float %7730, %7711
  %7732 = fmul fast float %7717, %7694
  %7733 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7700, float %7732)  ; FMad(a,b,c)
  %7734 = call float @dx.op.tertiary.f32(i32 46, float %7719, float %7706, float %7733)  ; FMad(a,b,c)
  %7735 = fadd fast float %7734, %7712
  %7736 = fdiv fast float %7723, %7735
  %7737 = fdiv fast float %7727, %7735
  %7738 = fdiv fast float %7731, %7735
  %7739 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7738)  ; FMax(a,b)
  %7740 = fmul fast float %234, 0x401921FB60000000
  %7741 = call float @dx.op.unary.f32(i32 13, float %7740)  ; Sin(value)
  %7742 = call float @dx.op.unary.f32(i32 12, float %7740)  ; Cos(value)
  %7743 = fsub fast float -0.000000e+00, %7741
  %7744 = fmul fast float %7678, 5.000000e-01
  %7745 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7746 = call float @dx.op.unary.f32(i32 22, float %7745)  ; Frc(value)
  %7747 = fmul fast float %7746, 0x404A7DD040000000
  %7748 = call float @dx.op.unary.f32(i32 22, float %7747)  ; Frc(value)
  %7749 = fmul fast float %7748, %7687
  %7750 = fadd fast float %7749, %7744
  %7751 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7743, float 0.000000e+00)  ; FMad(a,b,c)
  %7752 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7742, float 0.000000e+00)  ; FMad(a,b,c)
  %7753 = fadd fast float %7751, %7736
  %7754 = fadd fast float %7752, %7737
  %7755 = fmul fast float %7753, %7682
  %7756 = fmul fast float %7754, %7682
  %7757 = call float @dx.op.binary.f32(i32 35, float %7755, float %7678)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7756, float %7678)  ; FMax(a,b)
  %7759 = call float @dx.op.binary.f32(i32 36, float %7757, float %7679)  ; FMin(a,b)
  %7760 = call float @dx.op.binary.f32(i32 36, float %7758, float %7679)  ; FMin(a,b)
  %7761 = fadd fast float %7759, %7676
  %7762 = fadd fast float %7760, %7677
  %7763 = uitofp i32 %7713 to float
  %7764 = fadd fast float %7739, %7686
  %7765 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7761, float %7762, float %7763, float undef, i32 0, i32 0, i32 undef, float %7764)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = fadd fast float %7766, -1.000000e+00
  %7768 = fmul fast float %7767, %7647
  %7769 = fadd fast float %7768, 1.000000e+00
  %7770 = fmul fast float %7769, %7659
  br label %7771

; <label>:7771                                    ; preds = %7673, %7671
  %7772 = phi float [ %7770, %7673 ], [ %7659, %7671 ]
  %7773 = call float @dx.op.binary.f32(i32 36, float %7772, float %7772)  ; FMin(a,b)
  %7774 = call float @dx.op.binary.f32(i32 36, float %7772, float %7773)  ; FMin(a,b)
  %7775 = fcmp fast ogt float %7774, 0.000000e+00
  br i1 %7775, label %7776, label %7663, !dx.controlflow.hints !123

; <label>:7776                                    ; preds = %7771
  %7777 = fmul fast float %7772, %7580
  %7778 = fmul fast float %7772, %7581
  %7779 = fmul fast float %7772, %7582
  %7780 = fsub fast float %7564, %5590
  %7781 = fcmp fast ogt float %7780, 0.000000e+00
  %7782 = fsub fast float %163, %5590
  %7783 = fcmp fast ogt float %7782, 0.000000e+00
  %7784 = xor i1 %7783, %7781
  %7785 = fsub fast float %5590, %7564
  %7786 = fmul fast float %7785, 2.000000e+00
  %7787 = fadd fast float %7786, %7564
  %7788 = select i1 %7784, float %7564, float %7787
  %7789 = fsub fast float %7788, %163
  %7790 = call float @dx.op.dot3.f32(i32 55, float %7591, float %7592, float %7789, float %7591, float %7592, float %7789)  ; Dot3(ax,ay,az,bx,by,bz)
  %7791 = call float @dx.op.unary.f32(i32 25, float %7790)  ; Rsqrt(value)
  %7792 = fmul fast float %7791, %7591
  %7793 = fmul fast float %7791, %7592
  %7794 = fmul fast float %7791, %7789
  %7795 = fsub fast float %5590, %163
  %7796 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7795)  ; Dot3(ax,ay,az,bx,by,bz)
  %7797 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7792, float %7793, float %7794)  ; Dot3(ax,ay,az,bx,by,bz)
  %7798 = fdiv fast float 1.000000e+00, %7797
  %7799 = fmul fast float %7798, %7796
  %7800 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7782, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7801 = fcmp fast ogt float %7800, 0.000000e+00
  %7802 = fcmp fast olt float %7800, 0.000000e+00
  %7803 = zext i1 %7801 to i32
  %7804 = zext i1 %7802 to i32
  %7805 = sub nsw i32 %7803, %7804
  %7806 = sitofp i32 %7805 to float
  %7807 = fsub fast float %7788, %5590
  %7808 = call float @dx.op.dot3.f32(i32 55, float %7591, float %7592, float %7807, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7809 = fcmp fast ogt float %7808, 0.000000e+00
  %7810 = fcmp fast olt float %7808, 0.000000e+00
  %7811 = zext i1 %7809 to i32
  %7812 = zext i1 %7810 to i32
  %7813 = sub nsw i32 %7811, %7812
  %7814 = sitofp i32 %7813 to float
  %7815 = fcmp fast une float %7806, %7814
  br i1 %7815, label %7816, label %7826

; <label>:7816                                    ; preds = %7776
  %7817 = fmul fast float %7799, %7794
  %7818 = fmul fast float %7799, %7793
  %7819 = fmul fast float %7799, %7792
  %7820 = fmul fast float %7819, %7819
  %7821 = fmul fast float %7818, %7818
  %7822 = fadd fast float %7820, %7821
  %7823 = fmul fast float %7817, %7817
  %7824 = fadd fast float %7822, %7823
  %7825 = call float @dx.op.unary.f32(i32 24, float %7824)  ; Sqrt(value)
  br label %7838

; <label>:7826                                    ; preds = %7776
  %7827 = icmp slt i32 %7805, 0
  br i1 %7827, label %7828, label %7838

; <label>:7828                                    ; preds = %7826
  %7829 = fsub fast float %161, %7562
  %7830 = fsub fast float %162, %7563
  %7831 = fsub fast float %163, %7788
  %7832 = fmul fast float %7829, %7829
  %7833 = fmul fast float %7830, %7830
  %7834 = fadd fast float %7832, %7833
  %7835 = fmul fast float %7831, %7831
  %7836 = fadd fast float %7834, %7835
  %7837 = call float @dx.op.unary.f32(i32 24, float %7836)  ; Sqrt(value)
  br label %7838

; <label>:7838                                    ; preds = %7828, %7826, %7816
  %7839 = phi float [ %7825, %7816 ], [ %7837, %7828 ], [ 0.000000e+00, %7826 ]
  %7840 = and i1 %7783, %7781
  %7841 = fsub fast float -0.000000e+00, %7839
  %7842 = select i1 %7840, float -0.000000e+00, float %7841
  %7843 = fmul fast float %5591, 0x3FF7154760000000
  %7844 = fmul fast float %7843, %7842
  %7845 = fmul fast float %5592, 0x3FF7154760000000
  %7846 = fmul fast float %7845, %7842
  %7847 = fmul fast float %5593, 0x3FF7154760000000
  %7848 = fmul fast float %7847, %7842
  %7849 = call float @dx.op.unary.f32(i32 21, float %7844)  ; Exp(value)
  %7850 = call float @dx.op.unary.f32(i32 21, float %7846)  ; Exp(value)
  %7851 = call float @dx.op.unary.f32(i32 21, float %7848)  ; Exp(value)
  %7852 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7853 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7854 = call float @dx.op.unary.f32(i32 7, float %7851)  ; Saturate(value)
  %7855 = fmul fast float %7777, %7852
  %7856 = fmul fast float %7778, %7853
  %7857 = fmul fast float %7779, %7854
  %7858 = fsub fast float %7597, %5790
  %7859 = fsub fast float %7598, %5789
  %7860 = fsub fast float %7599, %5788
  %7861 = call float @dx.op.dot3.f32(i32 55, float %7858, float %7859, float %7860, float %7858, float %7859, float %7860)  ; Dot3(ax,ay,az,bx,by,bz)
  %7862 = call float @dx.op.unary.f32(i32 25, float %7861)  ; Rsqrt(value)
  %7863 = fmul fast float %7862, %7858
  %7864 = fmul fast float %7862, %7859
  %7865 = fmul fast float %7862, %7860
  %7866 = call float @dx.op.dot3.f32(i32 55, float %7597, float %7598, float %7599, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %7867 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5786, float %5785, float %7863, float %7864, float %7865)  ; Dot3(ax,ay,az,bx,by,bz)
  %7868 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7869 = fmul fast float %7868, %7604
  %7870 = fmul fast float %7868, %7868
  %7871 = fmul fast float %7870, %5818
  %7872 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7873 = fmul fast float %7869, %7872
  %7874 = bitcast float %7594 to i32
  %7875 = ashr i32 %7874, 1
  %7876 = sub nsw i32 1597463007, %7875
  %7877 = bitcast i32 %7876 to float
  %7878 = fmul fast float %7877, %7591
  %7879 = fmul fast float %7877, %7592
  %7880 = fmul fast float %7877, %7593
  %7881 = fsub fast float %7878, %5790
  %7882 = fsub fast float %7879, %5789
  %7883 = fsub fast float %7880, %5788
  %7884 = call float @dx.op.dot3.f32(i32 55, float %7881, float %7882, float %7883, float %7881, float %7882, float %7883)  ; Dot3(ax,ay,az,bx,by,bz)
  %7885 = call float @dx.op.unary.f32(i32 25, float %7884)  ; Rsqrt(value)
  %7886 = fmul fast float %7881, %7885
  %7887 = fmul fast float %7882, %7885
  %7888 = fmul fast float %7883, %7885
  %7889 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %7886, float %7887, float %7888)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = fmul fast float %7889, %7889
  %7891 = call float @dx.op.unary.f32(i32 6, float %7866)  ; FAbs(value)
  %7892 = call float @dx.op.binary.f32(i32 35, float %6201, float 0x3F847AE140000000)  ; FMax(a,b)
  %7893 = fmul fast float %7892, %7892
  %7894 = fmul fast float %7893, %7893
  %7895 = fsub fast float 1.000000e+00, %7894
  %7896 = fmul fast float %5805, %5805
  %7897 = fmul fast float %7896, %7895
  %7898 = fadd fast float %7897, %7894
  %7899 = bitcast float %7898 to i32
  %7900 = ashr i32 %7899, 1
  %7901 = add nsw i32 %7900, 532487669
  %7902 = bitcast i32 %7901 to float
  %7903 = fadd fast float %7902, %5805
  %7904 = fmul fast float %7894, %7890
  %7905 = fsub fast float 1.000000e+00, %7890
  %7906 = fadd fast float %7905, %7904
  %7907 = fmul fast float %7891, %7891
  %7908 = fmul fast float %7907, %7895
  %7909 = fadd fast float %7908, %7894
  %7910 = bitcast float %7909 to i32
  %7911 = ashr i32 %7910, 1
  %7912 = add nsw i32 %7911, 532487669
  %7913 = bitcast i32 %7912 to float
  %7914 = fadd fast float %7913, %7891
  %7915 = fmul fast float %7906, %7906
  %7916 = fmul fast float %7915, %7903
  %7917 = fmul fast float %7916, %7914
  %7918 = fdiv fast float 1.000000e+00, %7917
  %7919 = bitcast float %7894 to i32
  %7920 = sitofp i32 %7919 to float
  %7921 = fmul fast float %7920, 0x3FE7F73180000000
  %7922 = fadd fast float %7921, 0x41AFE27C40000000
  %7923 = fptosi float %7922 to i32
  %7924 = bitcast i32 %7923 to float
  %7925 = fmul fast float %7559, 0x3FD80E9D60000000
  %7926 = fmul fast float %7925, %7877
  %7927 = fadd fast float %7924, %7926
  %7928 = bitcast float %7927 to i32
  %7929 = sub nsw i32 2129859010, %7928
  %7930 = bitcast i32 %7929 to float
  %7931 = fmul fast float %7894, %7918
  %7932 = fmul fast float %7931, %7924
  %7933 = fmul fast float %7932, %7930
  %7934 = fmul fast float %6063, 0x3FF9999980000000
  %7935 = fsub fast float 5.000000e+00, %7934
  %7936 = call float @dx.op.unary.f32(i32 6, float %7867)  ; FAbs(value)
  %7937 = fsub fast float 1.000000e+00, %7936
  %7938 = fmul fast float %6063, 0x41D9660740000000
  %7939 = fadd fast float %7938, 0xC1EFBF8940000000
  %7940 = bitcast float %7937 to i32
  %7941 = sitofp i32 %7940 to float
  %7942 = fmul fast float %7941, %7935
  %7943 = fadd fast float %7939, %7942
  %7944 = fptosi float %7943 to i32
  %7945 = bitcast i32 %7944 to float
  %7946 = fsub fast float 1.000000e+00, %5791
  %7947 = fsub fast float 1.000000e+00, %5792
  %7948 = fsub fast float 1.000000e+00, %5803
  %7949 = fmul fast float %7945, %7946
  %7950 = fmul fast float %7945, %7947
  %7951 = fmul fast float %7945, %7948
  %7952 = fadd fast float %7949, %5791
  %7953 = fadd fast float %7950, %5792
  %7954 = fadd fast float %7951, %5803
  br i1 %6086, label %7955, label %7978

; <label>:7955                                    ; preds = %7838
  %7956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %7936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7957 = extractvalue %dx.types.ResRet.f32 %7956, 0
  %7958 = extractvalue %dx.types.ResRet.f32 %7956, 1
  %7959 = extractvalue %dx.types.ResRet.f32 %7956, 2
  %7960 = fadd fast float %7957, -5.000000e-01
  %7961 = fadd fast float %7958, -5.000000e-01
  %7962 = fadd fast float %7959, -5.000000e-01
  %7963 = fmul fast float %5791, 4.000000e+00
  %7964 = fmul fast float %7963, %7946
  %7965 = fmul fast float %7964, %7960
  %7966 = fmul fast float %5792, 4.000000e+00
  %7967 = fmul fast float %7966, %7947
  %7968 = fmul fast float %7967, %7961
  %7969 = fmul fast float %5803, 4.000000e+00
  %7970 = fmul fast float %7969, %7948
  %7971 = fmul fast float %7970, %7962
  %7972 = fadd fast float %7965, %7952
  %7973 = fadd fast float %7968, %7953
  %7974 = fadd fast float %7971, %7954
  %7975 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7976 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7977 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  br label %7978

; <label>:7978                                    ; preds = %7955, %7838
  %7979 = phi float [ %7975, %7955 ], [ %7952, %7838 ]
  %7980 = phi float [ %7976, %7955 ], [ %7953, %7838 ]
  %7981 = phi float [ %7977, %7955 ], [ %7954, %7838 ]
  %7982 = fmul fast float %7866, 9.843750e-01
  %7983 = fadd fast float %7982, 7.812500e-03
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7983, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.ResRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.ResRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.ResRet.f32 %7984, 3
  %7989 = fsub fast float %7987, %7985
  %7990 = fsub fast float %7988, %7986
  %7991 = fmul fast float %7989, %6073
  %7992 = fmul fast float %7990, %6073
  %7993 = fadd fast float %7991, %7985
  %7994 = fadd fast float %7992, %7986
  %7995 = fmul fast float %7993, %5791
  %7996 = fmul fast float %7993, %5792
  %7997 = fmul fast float %7993, %5803
  %7998 = fadd fast float %7995, %7994
  %7999 = fadd fast float %7996, %7994
  %8000 = fadd fast float %7997, %7994
  br i1 %6086, label %8001, label %8024

; <label>:8001                                    ; preds = %7978
  %8002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %7866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8003 = extractvalue %dx.types.ResRet.f32 %8002, 0
  %8004 = extractvalue %dx.types.ResRet.f32 %8002, 1
  %8005 = extractvalue %dx.types.ResRet.f32 %8002, 2
  %8006 = fadd fast float %8003, -5.000000e-01
  %8007 = fadd fast float %8004, -5.000000e-01
  %8008 = fadd fast float %8005, -5.000000e-01
  %8009 = fmul fast float %5791, 4.000000e+00
  %8010 = fmul fast float %8009, %7946
  %8011 = fmul fast float %8010, %8006
  %8012 = fmul fast float %5792, 4.000000e+00
  %8013 = fmul fast float %8012, %7947
  %8014 = fmul fast float %8013, %8007
  %8015 = fmul fast float %5803, 4.000000e+00
  %8016 = fmul fast float %8015, %7948
  %8017 = fmul fast float %8016, %8008
  %8018 = fadd fast float %8011, %7998
  %8019 = fadd fast float %8014, %7999
  %8020 = fadd fast float %8017, %8000
  %8021 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8022 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8023 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  br label %8024

; <label>:8024                                    ; preds = %8001, %7978
  %8025 = phi float [ %8021, %8001 ], [ %7998, %7978 ]
  %8026 = phi float [ %8022, %8001 ], [ %7999, %7978 ]
  %8027 = phi float [ %8023, %8001 ], [ %8000, %7978 ]
  %8028 = call float @dx.op.binary.f32(i32 35, float %8026, float %8027)  ; FMax(a,b)
  %8029 = call float @dx.op.binary.f32(i32 35, float %8025, float %8028)  ; FMax(a,b)
  %8030 = fsub fast float 1.000000e+00, %8029
  %8031 = call float @dx.op.binary.f32(i32 35, float %7891, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8032 = fdiv fast float %4513, %8031
  %8033 = fmul fast float %6141, %8032
  %8034 = fmul fast float %6143, %8032
  %8035 = fmul fast float %6145, %8032
  %8036 = call float @dx.op.unary.f32(i32 21, float %8033)  ; Exp(value)
  %8037 = call float @dx.op.unary.f32(i32 21, float %8034)  ; Exp(value)
  %8038 = call float @dx.op.unary.f32(i32 21, float %8035)  ; Exp(value)
  %8039 = call float @dx.op.unary.f32(i32 7, float %8036)  ; Saturate(value)
  %8040 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = select i1 %6138, float %8039, float 0.000000e+00
  %8043 = select i1 %6139, float %8040, float 0.000000e+00
  %8044 = select i1 %6140, float %8041, float 0.000000e+00
  %8045 = fsub fast float -0.000000e+00, %5797
  %8046 = fsub fast float -0.000000e+00, %5798
  %8047 = fsub fast float -0.000000e+00, %5799
  %8048 = call float @dx.op.dot3.f32(i32 55, float %7597, float %7598, float %7599, float %8045, float %8046, float %8047)  ; Dot3(ax,ay,az,bx,by,bz)
  %8049 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8050 = fmul fast float %8049, %7604
  %8051 = fmul fast float %8049, 9.843750e-01
  %8052 = fadd fast float %8051, 7.812500e-03
  %8053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8052, float %6067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8054 = extractvalue %dx.types.ResRet.f32 %8053, 0
  %8055 = extractvalue %dx.types.ResRet.f32 %8053, 1
  %8056 = extractvalue %dx.types.ResRet.f32 %8053, 2
  %8057 = extractvalue %dx.types.ResRet.f32 %8053, 3
  %8058 = fsub fast float %8056, %8054
  %8059 = fsub fast float %8057, %8055
  %8060 = fmul fast float %8058, %6073
  %8061 = fmul fast float %8059, %6073
  %8062 = fadd fast float %8060, %8054
  %8063 = fadd fast float %8061, %8055
  %8064 = fmul fast float %8062, %5791
  %8065 = fmul fast float %8062, %5792
  %8066 = fmul fast float %8062, %5803
  %8067 = fadd fast float %8064, %8063
  %8068 = fadd fast float %8065, %8063
  %8069 = fadd fast float %8066, %8063
  br i1 %6086, label %8070, label %8093

; <label>:8070                                    ; preds = %8024
  %8071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5160, float %8049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.ResRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.ResRet.f32 %8071, 2
  %8075 = fadd fast float %8072, -5.000000e-01
  %8076 = fadd fast float %8073, -5.000000e-01
  %8077 = fadd fast float %8074, -5.000000e-01
  %8078 = fmul fast float %5791, 4.000000e+00
  %8079 = fmul fast float %8078, %7946
  %8080 = fmul fast float %8079, %8075
  %8081 = fmul fast float %5792, 4.000000e+00
  %8082 = fmul fast float %8081, %7947
  %8083 = fmul fast float %8082, %8076
  %8084 = fmul fast float %5803, 4.000000e+00
  %8085 = fmul fast float %8084, %7948
  %8086 = fmul fast float %8085, %8077
  %8087 = fadd fast float %8080, %8067
  %8088 = fadd fast float %8083, %8068
  %8089 = fadd fast float %8086, %8069
  %8090 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8091 = call float @dx.op.unary.f32(i32 7, float %8088)  ; Saturate(value)
  %8092 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  br label %8093

; <label>:8093                                    ; preds = %8070, %8024
  %8094 = phi float [ %8090, %8070 ], [ %8067, %8024 ]
  %8095 = phi float [ %8091, %8070 ], [ %8068, %8024 ]
  %8096 = phi float [ %8092, %8070 ], [ %8069, %8024 ]
  %8097 = call float @dx.op.binary.f32(i32 35, float %8095, float %8096)  ; FMax(a,b)
  %8098 = call float @dx.op.binary.f32(i32 35, float %8094, float %8097)  ; FMax(a,b)
  %8099 = fsub fast float 1.000000e+00, %8098
  %8100 = fmul fast float %6201, %6206
  %8101 = fadd fast float %6208, %8100
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8103 = fsub fast float %7878, %5811
  %8104 = fsub fast float %7879, %5812
  %8105 = fsub fast float %7880, %5813
  %8106 = call float @dx.op.dot3.f32(i32 55, float %8103, float %8104, float %8105, float %8103, float %8104, float %8105)  ; Dot3(ax,ay,az,bx,by,bz)
  %8107 = call float @dx.op.unary.f32(i32 25, float %8106)  ; Rsqrt(value)
  %8108 = fmul fast float %8103, %8107
  %8109 = fmul fast float %8104, %8107
  %8110 = fmul fast float %8105, %8107
  %8111 = call float @dx.op.dot3.f32(i32 55, float %8045, float %8046, float %8047, float %8108, float %8109, float %8110)  ; Dot3(ax,ay,az,bx,by,bz)
  %8112 = fmul fast float %8111, %8111
  %8113 = call float @dx.op.unary.f32(i32 6, float %8049)  ; FAbs(value)
  %8114 = call float @dx.op.binary.f32(i32 35, float %8102, float 0x3F847AE140000000)  ; FMax(a,b)
  %8115 = fmul fast float %8114, %8114
  %8116 = fmul fast float %8115, %8115
  %8117 = fsub fast float 1.000000e+00, %8116
  %8118 = fmul fast float %7896, %8117
  %8119 = fadd fast float %8118, %8116
  %8120 = bitcast float %8119 to i32
  %8121 = ashr i32 %8120, 1
  %8122 = add nsw i32 %8121, 532487669
  %8123 = bitcast i32 %8122 to float
  %8124 = fadd fast float %8123, %5805
  %8125 = fmul fast float %8116, %8112
  %8126 = fsub fast float 1.000000e+00, %8112
  %8127 = fadd fast float %8126, %8125
  %8128 = fmul fast float %8113, %8113
  %8129 = fmul fast float %8128, %8117
  %8130 = fadd fast float %8129, %8116
  %8131 = bitcast float %8130 to i32
  %8132 = ashr i32 %8131, 1
  %8133 = add nsw i32 %8132, 532487669
  %8134 = bitcast i32 %8133 to float
  %8135 = fadd fast float %8134, %8113
  %8136 = fmul fast float %8127, %8127
  %8137 = fmul fast float %8136, %8124
  %8138 = fmul fast float %8137, %8135
  %8139 = fdiv fast float 1.000000e+00, %8138
  %8140 = bitcast float %8116 to i32
  %8141 = sitofp i32 %8140 to float
  %8142 = fmul fast float %8141, 0x3FE7F73180000000
  %8143 = fadd fast float %8142, 0x41AFE27C40000000
  %8144 = fptosi float %8143 to i32
  %8145 = bitcast i32 %8144 to float
  %8146 = fadd fast float %8145, %7926
  %8147 = bitcast float %8146 to i32
  %8148 = sub nsw i32 2129859010, %8147
  %8149 = bitcast i32 %8148 to float
  %8150 = fmul fast float %8116, %8139
  %8151 = fmul fast float %8150, %8145
  %8152 = fmul fast float %8151, %8149
  br i1 %7589, label %8153, label %8163

; <label>:8153                                    ; preds = %8093
  %8154 = fmul fast float %8050, %8042
  %8155 = fmul fast float %8050, %8043
  %8156 = fmul fast float %8050, %8044
  %8157 = fmul fast float %8154, %8099
  %8158 = fmul fast float %8157, %8152
  %8159 = fmul fast float %8155, %8099
  %8160 = fmul fast float %8159, %8152
  %8161 = fmul fast float %8156, %8099
  %8162 = fmul fast float %8161, %8152
  br label %8163

; <label>:8163                                    ; preds = %8153, %8093
  %8164 = phi float [ %8158, %8153 ], [ 0.000000e+00, %8093 ]
  %8165 = phi float [ %8160, %8153 ], [ 0.000000e+00, %8093 ]
  %8166 = phi float [ %8162, %8153 ], [ 0.000000e+00, %8093 ]
  %8167 = fmul fast float %7979, %7933
  %8168 = fmul fast float %7980, %7933
  %8169 = fmul fast float %7981, %7933
  %8170 = fsub fast float 1.000000e+00, %7867
  %8171 = bitcast float %8170 to i32
  %8172 = sitofp i32 %8171 to float
  %8173 = fmul fast float %8172, 5.000000e+00
  %8174 = fadd fast float %8173, 0xC1EFBF8940000000
  %8175 = fptosi float %8174 to i32
  %8176 = bitcast i32 %8175 to float
  %8177 = fmul fast float %8176, %5161
  %8178 = fmul fast float %8030, %8177
  %8179 = fmul fast float %8178, %6133
  %8180 = fmul fast float %8178, %6134
  %8181 = fmul fast float %8178, %6135
  %8182 = fadd fast float %8179, %8167
  %8183 = fadd fast float %8180, %8168
  %8184 = fadd fast float %8181, %8169
  %8185 = fmul fast float %8182, %7873
  %8186 = fmul fast float %8183, %7873
  %8187 = fmul fast float %8184, %7873
  %8188 = fadd fast float %8185, %8164
  %8189 = fadd fast float %8186, %8165
  %8190 = fadd fast float %8187, %8166
  %8191 = fmul fast float %7855, %5157
  %8192 = fmul fast float %8191, %7873
  %8193 = fmul fast float %8192, %8030
  %8194 = fmul fast float %7856, %5157
  %8195 = fmul fast float %8194, %7873
  %8196 = fmul fast float %8195, %8030
  %8197 = fmul fast float %7857, %5157
  %8198 = fmul fast float %8197, %7873
  %8199 = fmul fast float %8198, %8030
  %8200 = fadd fast float %8193, %7533
  %8201 = fadd fast float %8196, %7534
  %8202 = fadd fast float %8199, %7535
  %8203 = fmul fast float %8191, %8188
  %8204 = fmul fast float %8194, %8189
  %8205 = fmul fast float %8197, %8190
  %8206 = fadd fast float %8203, %7530
  %8207 = fadd fast float %8204, %7531
  %8208 = fadd fast float %8205, %7532
  br label %7663

; <label>:8209                                    ; preds = %7663
  br label %8210

; <label>:8210                                    ; preds = %8209, %7496
  %8211 = phi float [ %7498, %7496 ], [ %7664, %8209 ]
  %8212 = phi float [ %7499, %7496 ], [ %7665, %8209 ]
  %8213 = phi float [ %7500, %7496 ], [ %7666, %8209 ]
  %8214 = phi float [ %7501, %7496 ], [ %7667, %8209 ]
  %8215 = phi float [ %7502, %7496 ], [ %7668, %8209 ]
  %8216 = phi float [ %7503, %7496 ], [ %7669, %8209 ]
  %8217 = add i32 %7497, 1
  %8218 = icmp ugt i32 %8217, %7493
  br i1 %8218, label %8219, label %7496

; <label>:8219                                    ; preds = %8210
  br label %8220

; <label>:8220                                    ; preds = %8219, %7446, %7436
  %8221 = phi float [ %7437, %7436 ], [ %7437, %7446 ], [ %8211, %8219 ]
  %8222 = phi float [ %7438, %7436 ], [ %7438, %7446 ], [ %8212, %8219 ]
  %8223 = phi float [ %7439, %7436 ], [ %7439, %7446 ], [ %8213, %8219 ]
  %8224 = phi float [ %7440, %7436 ], [ %7440, %7446 ], [ %8214, %8219 ]
  %8225 = phi float [ %7441, %7436 ], [ %7441, %7446 ], [ %8215, %8219 ]
  %8226 = phi float [ %7442, %7436 ], [ %7442, %7446 ], [ %8216, %8219 ]
  %8227 = fmul fast float %5157, %6162
  %8228 = fsub fast float -0.000000e+00, %8227
  %8229 = fmul fast float %5157, %6163
  %8230 = fsub fast float -0.000000e+00, %8229
  %8231 = fmul fast float %5157, %6164
  %8232 = fsub fast float -0.000000e+00, %8231
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = fmul fast float %8234, %6168
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8238 = fsub fast float 1.000000e+00, %5164
  %8239 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8240 = fadd fast float %8226, %5163
  %8241 = fmul fast float %8240, %5164
  %8242 = fmul fast float %8239, %8237
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8245 = fmul fast float %8224, %5794
  %8246 = fmul fast float %8225, %5795
  %8247 = fmul fast float %8226, %5796
  %8248 = fcmp fast ogt float %93, %183
  %8249 = and i1 %8248, %5596
  %8250 = or i1 %5602, %8249
  %8251 = icmp eq i32 %5595, 2
  %8252 = fcmp fast ole float %93, %183
  %8253 = and i1 %8252, %8251
  %8254 = or i1 %8253, %8250
  br i1 %8249, label %8255, label %8512

; <label>:8255                                    ; preds = %8220
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8259 = fmul fast float %8257, %102
  %8260 = fmul fast float %8258, %103
  %8261 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8262 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8263 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8261, float %8262, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8264 = extractvalue %dx.types.ResRet.f32 %8263, 0
  %8265 = extractvalue %dx.types.ResRet.f32 %8263, 1
  %8266 = extractvalue %dx.types.ResRet.f32 %8263, 2
  %8267 = extractvalue %dx.types.ResRet.f32 %8263, 3
  %8268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8261, float %8262, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8269 = extractvalue %dx.types.ResRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.ResRet.f32 %8268, 1
  %8271 = extractvalue %dx.types.ResRet.f32 %8268, 2
  %8272 = extractvalue %dx.types.ResRet.f32 %8268, 3
  %8273 = call float @dx.op.binary.f32(i32 35, float %8265, float %8266)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 35, float %8264, float %8273)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 35, float %8274, float %8267)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8270, float %8271)  ; FMin(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8269, float %8276)  ; FMin(a,b)
  %8278 = call float @dx.op.binary.f32(i32 36, float %8277, float %8272)  ; FMin(a,b)
  %8279 = fmul fast float %8275, 2.550000e+02
  %8280 = fadd fast float %8279, 0x3F70101020000000
  %8281 = fptoui float %8280 to i32
  %8282 = fmul fast float %8278, 2.550000e+02
  %8283 = fadd fast float %8282, 0x3F70101020000000
  %8284 = fptoui float %8283 to i32
  %8285 = icmp ult i32 %8281, %8284
  br i1 %8285, label %8286, label %8454

; <label>:8286                                    ; preds = %8255
  %8287 = fcmp fast ogt float %92, 9.843750e-01
  %8288 = fadd fast float %93, -4.000000e+00
  %8289 = select i1 %8287, float -4.000000e+00, float %8288
  %8290 = call float @dx.op.binary.f32(i32 35, float %8289, float 0.000000e+00)  ; FMax(a,b)
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = fadd fast float %8292, %8290
  %8294 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8295 = fmul fast float %8293, %8294
  %8296 = call float @dx.op.unary.f32(i32 23, float %8295)  ; Log(value)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8298 = fmul fast float %8297, %8296
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8301 = fmul fast float %8298, %8300
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = uitofp i32 %8281 to float
  %8304 = uitofp i32 %8284 to float
  %8305 = fadd fast float %8303, 5.000000e-01
  %8306 = fadd fast float %8304, 5.000000e-01
  %8307 = fmul fast float %8300, %8305
  %8308 = fmul fast float %8300, %8306
  %8309 = fadd fast float %8307, 0x3F0FFB4800000000
  %8310 = fadd fast float %8308, 0xBF0FFB4800000000
  %8311 = call float @dx.op.binary.f32(i32 35, float %8302, float %8309)  ; FMax(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8311, float %8310)  ; FMin(a,b)
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8317 = fmul fast float %8314, %8312
  %8318 = fadd fast float %8316, %8317
  %8319 = fadd fast float %8316, %8315
  %8320 = fsub fast float %8314, %8315
  %8321 = fadd fast float %8320, %8316
  %8322 = call float @dx.op.binary.f32(i32 35, float %8318, float %8319)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8322, float %8321)  ; FMin(a,b)
  %8324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8261, float %8262, float %8323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8325 = extractvalue %dx.types.ResRet.f32 %8324, 0
  %8326 = extractvalue %dx.types.ResRet.f32 %8324, 1
  %8327 = extractvalue %dx.types.ResRet.f32 %8324, 2
  %8328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.i32 %8328, 0
  %8330 = extractvalue %dx.types.CBufRet.i32 %8328, 1
  %8331 = uitofp i32 %8329 to float
  %8332 = uitofp i32 %8330 to float
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.CBufRet.f32 %8333, 1
  %8336 = fmul fast float %8331, %8261
  %8337 = fmul fast float %8332, %8262
  %8338 = fadd fast float %8336, -5.000000e-01
  %8339 = fadd fast float %8337, -5.000000e-01
  %8340 = call float @dx.op.unary.f32(i32 22, float %8338)  ; Frc(value)
  %8341 = call float @dx.op.unary.f32(i32 22, float %8339)  ; Frc(value)
  %8342 = fmul fast float %8340, %8340
  %8343 = fmul fast float %8342, %8340
  %8344 = fsub fast float 3.000000e+00, %8340
  %8345 = fmul fast float %8342, %8344
  %8346 = fmul fast float %8340, 3.000000e+00
  %8347 = fmul fast float %8343, 3.000000e+00
  %8348 = fmul fast float %8342, 6.000000e+00
  %8349 = fsub fast float %8347, %8348
  %8350 = fadd fast float %8349, 4.000000e+00
  %8351 = fmul fast float %8350, 0x3FC5555560000000
  %8352 = fmul fast float %8343, -3.000000e+00
  %8353 = fadd fast float %8342, %8340
  %8354 = fmul fast float %8353, 3.000000e+00
  %8355 = fadd fast float %8352, 1.000000e+00
  %8356 = fadd fast float %8355, %8354
  %8357 = fmul fast float %8343, 0x3FC5555560000000
  %8358 = fmul fast float %8341, %8341
  %8359 = fmul fast float %8358, %8341
  %8360 = fsub fast float 3.000000e+00, %8341
  %8361 = fmul fast float %8358, %8360
  %8362 = fmul fast float %8341, 3.000000e+00
  %8363 = fmul fast float %8359, 3.000000e+00
  %8364 = fmul fast float %8358, 6.000000e+00
  %8365 = fsub fast float %8363, %8364
  %8366 = fadd fast float %8365, 4.000000e+00
  %8367 = fmul fast float %8366, 0x3FC5555560000000
  %8368 = fmul fast float %8359, -3.000000e+00
  %8369 = fadd fast float %8358, %8341
  %8370 = fmul fast float %8369, 3.000000e+00
  %8371 = fadd fast float %8368, 1.000000e+00
  %8372 = fadd fast float %8371, %8370
  %8373 = fmul fast float %8359, 0x3FC5555560000000
  %8374 = fadd fast float %8340, 1.000000e+00
  %8375 = fsub fast float 1.000000e+00, %8346
  %8376 = fadd fast float %8375, %8345
  %8377 = fadd fast float %8376, %8350
  %8378 = fmul fast float %8377, 0x3FC5555560000000
  %8379 = fdiv fast float %8351, %8378
  %8380 = fsub fast float %8374, %8379
  %8381 = fsub fast float 1.000000e+00, %8340
  %8382 = fadd fast float %8356, %8343
  %8383 = fmul fast float %8382, 0x3FC5555560000000
  %8384 = fdiv fast float %8357, %8383
  %8385 = fadd fast float %8381, %8384
  %8386 = fadd fast float %8341, 1.000000e+00
  %8387 = fsub fast float 1.000000e+00, %8362
  %8388 = fadd fast float %8387, %8361
  %8389 = fadd fast float %8388, %8366
  %8390 = fmul fast float %8389, 0x3FC5555560000000
  %8391 = fdiv fast float %8367, %8390
  %8392 = fsub fast float %8386, %8391
  %8393 = fsub fast float 1.000000e+00, %8341
  %8394 = fadd fast float %8372, %8359
  %8395 = fmul fast float %8394, 0x3FC5555560000000
  %8396 = fdiv fast float %8373, %8395
  %8397 = fadd fast float %8396, %8393
  %8398 = fmul fast float %8380, %8334
  %8399 = fsub fast float %8261, %8398
  %8400 = fmul fast float %8385, %8334
  %8401 = fadd fast float %8400, %8261
  %8402 = fmul fast float %8397, %8335
  %8403 = fadd fast float %8402, %8262
  %8404 = fmul fast float %8392, %8335
  %8405 = fsub fast float %8262, %8404
  %8406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8399, float %8405, float %8323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8407 = extractvalue %dx.types.ResRet.f32 %8406, 0
  %8408 = extractvalue %dx.types.ResRet.f32 %8406, 1
  %8409 = extractvalue %dx.types.ResRet.f32 %8406, 2
  %8410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8401, float %8405, float %8323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8411 = extractvalue %dx.types.ResRet.f32 %8410, 0
  %8412 = extractvalue %dx.types.ResRet.f32 %8410, 1
  %8413 = extractvalue %dx.types.ResRet.f32 %8410, 2
  %8414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8399, float %8403, float %8323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8415 = extractvalue %dx.types.ResRet.f32 %8414, 0
  %8416 = extractvalue %dx.types.ResRet.f32 %8414, 1
  %8417 = extractvalue %dx.types.ResRet.f32 %8414, 2
  %8418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8401, float %8403, float %8323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = fsub fast float %8415, %8407
  %8423 = fsub fast float %8416, %8408
  %8424 = fsub fast float %8417, %8409
  %8425 = fmul fast float %8422, %8395
  %8426 = fmul fast float %8423, %8395
  %8427 = fmul fast float %8424, %8395
  %8428 = fadd fast float %8425, %8407
  %8429 = fadd fast float %8426, %8408
  %8430 = fadd fast float %8427, %8409
  %8431 = fsub fast float %8419, %8411
  %8432 = fsub fast float %8420, %8412
  %8433 = fsub fast float %8421, %8413
  %8434 = fmul fast float %8431, %8395
  %8435 = fmul fast float %8432, %8395
  %8436 = fmul fast float %8433, %8395
  %8437 = fsub fast float %8411, %8428
  %8438 = fadd fast float %8437, %8434
  %8439 = fsub fast float %8412, %8429
  %8440 = fadd fast float %8439, %8435
  %8441 = fsub fast float %8413, %8430
  %8442 = fadd fast float %8441, %8436
  %8443 = fmul fast float %8438, %8383
  %8444 = fmul fast float %8440, %8383
  %8445 = fmul fast float %8442, %8383
  %8446 = fadd fast float %8443, %8428
  %8447 = fadd fast float %8444, %8429
  %8448 = fadd fast float %8445, %8430
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 1
  %8451 = fmul fast float %8446, %8450
  %8452 = fmul fast float %8447, %8450
  %8453 = fmul fast float %8448, %8450
  br label %8454

; <label>:8454                                    ; preds = %8286, %8255
  %8455 = phi float [ %8325, %8286 ], [ 1.000000e+00, %8255 ]
  %8456 = phi float [ %8326, %8286 ], [ 1.000000e+00, %8255 ]
  %8457 = phi float [ %8327, %8286 ], [ 1.000000e+00, %8255 ]
  %8458 = phi float [ %8451, %8286 ], [ 0.000000e+00, %8255 ]
  %8459 = phi float [ %8452, %8286 ], [ 0.000000e+00, %8255 ]
  %8460 = phi float [ %8453, %8286 ], [ 0.000000e+00, %8255 ]
  %8461 = fmul fast float %8458, %8228
  %8462 = fmul fast float %8459, %8230
  %8463 = fmul fast float %8460, %8232
  %8464 = call float @dx.op.dot3.f32(i32 55, float %8455, float %8456, float %8457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8461, float %8462, float %8463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = select i1 %223, float %8464, float %8455
  %8467 = select i1 %223, float %8464, float %8456
  %8468 = select i1 %223, float 1.000000e+00, float %8457
  %8469 = select i1 %223, float %8465, float %8461
  %8470 = select i1 %223, float 0.000000e+00, float %8462
  %8471 = select i1 %223, float 0.000000e+00, float %8463
  %8472 = fmul fast float %8466, %8245
  %8473 = fmul fast float %8467, %8246
  %8474 = fmul fast float %8468, %8247
  %8475 = fadd fast float %8472, %8469
  %8476 = fadd fast float %8473, %8470
  %8477 = fadd fast float %8471, %8474
  %8478 = fmul fast float %8466, %8221
  %8479 = fmul fast float %8467, %8222
  %8480 = fmul fast float %8468, %8223
  %8481 = fmul fast float %131, %8257
  %8482 = fmul fast float %133, %8258
  %8483 = fsub fast float 1.000000e+00, %8481
  %8484 = fsub fast float 1.000000e+00, %8482
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8489 = fmul fast float %8483, %8486
  %8490 = fmul fast float %8483, %8487
  %8491 = fmul fast float %8483, %8488
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = fmul fast float %8484, %8493
  %8497 = fmul fast float %8484, %8494
  %8498 = fmul fast float %8484, %8495
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8503 = fadd fast float %8496, %8500
  %8504 = fadd fast float %8503, %8489
  %8505 = fadd fast float %8497, %8501
  %8506 = fadd fast float %8505, %8490
  %8507 = fadd fast float %8498, %8502
  %8508 = fadd fast float %8507, %8491
  %8509 = fmul fast float %8504, %183
  %8510 = fmul fast float %8506, %183
  %8511 = fmul fast float %8508, %183
  br label %8512

; <label>:8512                                    ; preds = %8454, %8220
  %8513 = phi float [ %8509, %8454 ], [ %161, %8220 ]
  %8514 = phi float [ %8510, %8454 ], [ %162, %8220 ]
  %8515 = phi float [ %8511, %8454 ], [ %163, %8220 ]
  %8516 = phi float [ %183, %8454 ], [ %93, %8220 ]
  %8517 = phi float [ %8475, %8454 ], [ %8245, %8220 ]
  %8518 = phi float [ %8476, %8454 ], [ %8246, %8220 ]
  %8519 = phi float [ %8477, %8454 ], [ %8247, %8220 ]
  %8520 = phi float [ %8478, %8454 ], [ %8221, %8220 ]
  %8521 = phi float [ %8479, %8454 ], [ %8222, %8220 ]
  %8522 = phi float [ %8480, %8454 ], [ %8223, %8220 ]
  %8523 = phi float [ %8455, %8454 ], [ 1.000000e+00, %8220 ]
  br i1 %8254, label %9678, label %8524

; <label>:8524                                    ; preds = %8512
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.CBufRet.f32 %8525, 2
  %8529 = extractvalue %dx.types.CBufRet.f32 %8525, 3
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.CBufRet.f32 %8530, 1
  %8533 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8534 = extractvalue %dx.types.CBufRet.f32 %8530, 3
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8539 = extractvalue %dx.types.CBufRet.f32 %8535, 3
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8543 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8544 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 3
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8550 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8551 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8552 = fcmp fast olt float %8551, -5.000000e-01
  %8553 = call float @dx.op.dot3.f32(i32 55, float %8513, float %8514, float %8515, float %8513, float %8514, float %8515)  ; Dot3(ax,ay,az,bx,by,bz)
  %8554 = call float @dx.op.unary.f32(i32 25, float %8553)  ; Rsqrt(value)
  %8555 = fmul fast float %8554, %8553
  %8556 = fmul fast float %8554, %8513
  %8557 = fmul fast float %8554, %8514
  %8558 = fmul fast float %8554, %8515
  %8559 = fadd fast float %8555, %8529
  %8560 = call float @dx.op.dot3.f32(i32 55, float %8556, float %8557, float %8558, float %8526, float %8527, float %8528)  ; Dot3(ax,ay,az,bx,by,bz)
  %8561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.i32 %8561, 1
  %8563 = and i32 %8562, 1
  %8564 = icmp ne i32 %8563, 0
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8567 = fcmp fast ogt float %8566, 0.000000e+00
  %8568 = and i1 %8564, %8567
  br i1 %8568, label %8569, label %8975, !dx.controlflow.hints !124

; <label>:8569                                    ; preds = %8524
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 3
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 2
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8576 = fsub fast float %8573, %8575
  %8577 = and i32 %8562, 2
  %8578 = extractvalue %dx.types.CBufRet.i32 %8561, 0
  %8579 = call i32 @dx.op.binary.i32(i32 40, i32 %8578, i32 3)  ; UMin(a,b)
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8574, 0
  %8584 = extractvalue %dx.types.CBufRet.f32 %8574, 1
  %8585 = fsub fast float %8581, %8583
  %8586 = fsub fast float %8582, %8584
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = fcmp fast ogt float %8588, 0.000000e+00
  %8590 = fsub fast float -0.000000e+00, %8585
  %8591 = fsub fast float -0.000000e+00, %8586
  %8592 = call float @dx.op.dot2.f32(i32 54, float %8556, float %8557, float %8556, float %8557)  ; Dot2(ax,ay,bx,by)
  %8593 = call float @dx.op.dot2.f32(i32 54, float %8556, float %8557, float %8590, float %8591)  ; Dot2(ax,ay,bx,by)
  %8594 = fmul fast float %8593, 2.000000e+00
  %8595 = call float @dx.op.dot2.f32(i32 54, float %8590, float %8591, float %8590, float %8591)  ; Dot2(ax,ay,bx,by)
  %8596 = fmul fast float %8588, %8588
  %8597 = fsub fast float %8595, %8596
  %8598 = fmul fast float %8594, %8594
  %8599 = fmul fast float %8592, 4.000000e+00
  %8600 = fmul fast float %8599, %8597
  %8601 = fsub fast float %8598, %8600
  %8602 = fcmp fast ogt float %8601, 0.000000e+00
  br i1 %8602, label %8603, label %8618

; <label>:8603                                    ; preds = %8569
  %8604 = fcmp fast ogt float %8594, 0.000000e+00
  %8605 = call float @dx.op.unary.f32(i32 24, float %8601)  ; Sqrt(value)
  %8606 = fsub fast float -0.000000e+00, %8605
  %8607 = select i1 %8604, float %8605, float %8606
  %8608 = fadd fast float %8607, %8594
  %8609 = fmul float %8608, -5.000000e-01
  %8610 = fdiv fast float %8609, %8592
  %8611 = call float @dx.op.binary.f32(i32 35, float %8610, float 0.000000e+00)  ; FMax(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8555, float %8611)  ; FMin(a,b)
  %8613 = fdiv fast float %8597, %8609
  %8614 = call float @dx.op.binary.f32(i32 35, float %8613, float 0.000000e+00)  ; FMax(a,b)
  %8615 = call float @dx.op.binary.f32(i32 36, float %8555, float %8614)  ; FMin(a,b)
  %8616 = call float @dx.op.binary.f32(i32 36, float %8612, float %8615)  ; FMin(a,b)
  %8617 = call float @dx.op.binary.f32(i32 35, float %8612, float %8615)  ; FMax(a,b)
  br label %8618

; <label>:8618                                    ; preds = %8603, %8569
  %8619 = phi float [ %8617, %8603 ], [ -1.000000e+00, %8569 ]
  %8620 = phi float [ %8616, %8603 ], [ -1.000000e+00, %8569 ]
  %8621 = phi i1 [ true, %8603 ], [ false, %8569 ]
  %8622 = and i1 %8589, %8621
  br i1 %8622, label %8623, label %8625

; <label>:8623                                    ; preds = %8618
  %8624 = fcmp fast oeq float %8620, %8619
  br i1 %8624, label %8928, label %8626

; <label>:8625                                    ; preds = %8618
  br i1 %8589, label %8928, label %8626

; <label>:8626                                    ; preds = %8625, %8623
  %8627 = phi float [ %8555, %8625 ], [ %8619, %8623 ]
  %8628 = phi float [ 0.000000e+00, %8625 ], [ %8620, %8623 ]
  %8629 = icmp ne i32 %8577, 0
  %8630 = fmul fast float %8627, %8558
  %8631 = fadd fast float %8630, %8571
  %8632 = fmul fast float %8631, %8627
  %8633 = select i1 %8629, float 0.000000e+00, float %8632
  %8634 = fcmp fast oeq float %8558, 0.000000e+00
  %8635 = fdiv fast float %8576, %8558
  %8636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8635)  ; FMax(a,b)
  %8637 = select i1 %8634, float %8627, float %8636
  %8638 = call float @dx.op.binary.f32(i32 36, float %8627, float %8637)  ; FMin(a,b)
  %8639 = fcmp fast ogt float %8558, 0.000000e+00
  %8640 = fcmp fast olt float %8576, 0.000000e+00
  br i1 %8639, label %8641, label %8698

; <label>:8641                                    ; preds = %8626
  %8642 = icmp eq i32 %8577, 0
  br i1 %8640, label %8643, label %8687

; <label>:8643                                    ; preds = %8641
  %8644 = select i1 %8642, float %8627, float 0.000000e+00
  %8645 = fsub fast float -0.000000e+00, %8644
  %8646 = call float @dx.op.unary.f32(i32 6, float %8645)  ; FAbs(value)
  %8647 = fmul fast float %8644, %8558
  %8648 = fadd fast float %8647, %8571
  %8649 = fmul fast float %8646, %8648
  %8650 = fsub fast float %8633, %8649
  %8651 = fsub fast float %8627, %8646
  %8652 = select i1 %8642, float %8651, float 0.000000e+00
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8661 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 3
  %8664 = call float @dx.op.binary.f32(i32 36, float %8650, float %8663)  ; FMin(a,b)
  %8665 = fmul fast float %8661, %8652
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fsub fast float %8658, %8654
  %8668 = fsub fast float %8659, %8655
  %8669 = fsub fast float %8660, %8656
  %8670 = fmul fast float %8666, %8667
  %8671 = fmul fast float %8666, %8668
  %8672 = fmul fast float %8666, %8669
  %8673 = fadd fast float %8670, %8654
  %8674 = fadd fast float %8671, %8655
  %8675 = fadd fast float %8672, %8656
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8679 = fadd fast float %8678, %8677
  %8680 = call float @dx.op.unary.f32(i32 7, float %8679)  ; Saturate(value)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8676, 2
  %8682 = extractvalue %dx.types.CBufRet.f32 %8676, 3
  %8683 = fadd fast float %8682, %8681
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8685 = fmul fast float %8680, %8664
  %8686 = fmul fast float %8685, %8684
  br label %8928

; <label>:8687                                    ; preds = %8641
  br i1 %8642, label %8688, label %8709

; <label>:8688                                    ; preds = %8687
  %8689 = call float @dx.op.binary.f32(i32 36, float %8638, float %8628)  ; FMin(a,b)
  %8690 = fsub fast float %8638, %8689
  %8691 = fsub fast float %8690, %8627
  %8692 = call float @dx.op.unary.f32(i32 6, float %8691)  ; FAbs(value)
  %8693 = fadd fast float %8690, %8627
  %8694 = fmul fast float %8693, %8558
  %8695 = fadd fast float %8694, %8571
  %8696 = fmul fast float %8695, %8692
  %8697 = fsub fast float %8633, %8696
  br label %8709

; <label>:8698                                    ; preds = %8626
  br i1 %8640, label %8699, label %8709

; <label>:8699                                    ; preds = %8698
  %8700 = call float @dx.op.binary.f32(i32 35, float %8628, float %8638)  ; FMax(a,b)
  %8701 = icmp eq i32 %8577, 0
  %8702 = select i1 %8701, float %8638, float 0.000000e+00
  %8703 = fsub fast float -0.000000e+00, %8702
  %8704 = call float @dx.op.unary.f32(i32 6, float %8703)  ; FAbs(value)
  %8705 = fmul fast float %8702, %8558
  %8706 = fadd fast float %8705, %8571
  %8707 = fmul fast float %8704, %8706
  %8708 = fsub fast float %8633, %8707
  br label %8709

; <label>:8709                                    ; preds = %8699, %8698, %8688, %8687
  %8710 = phi float [ %8628, %8687 ], [ %8628, %8688 ], [ %8700, %8699 ], [ %8628, %8698 ]
  %8711 = phi float [ 0.000000e+00, %8687 ], [ %8692, %8688 ], [ %8704, %8699 ], [ 0.000000e+00, %8698 ]
  %8712 = phi float [ %8633, %8687 ], [ %8697, %8688 ], [ %8708, %8699 ], [ %8633, %8698 ]
  %8713 = phi float [ %8638, %8687 ], [ %8638, %8688 ], [ %8627, %8699 ], [ %8627, %8698 ]
  %8714 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8714, align 4, !tbaa !125, !noalias !127
  %8715 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8715, align 4, !tbaa !125, !noalias !127
  %8716 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8716, align 4, !tbaa !125, !noalias !127
  %8717 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8717, align 4, !tbaa !125, !noalias !127
  %8718 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8718, align 4, !tbaa !125, !noalias !127
  %8719 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8719, align 4, !tbaa !125, !noalias !127
  %8720 = icmp sgt i32 %8579, 0
  br i1 %8720, label %8721, label %8782

; <label>:8721                                    ; preds = %8709
  br label %8722

; <label>:8722                                    ; preds = %8771, %8721
  %8723 = phi i32 [ %8772, %8771 ], [ 0, %8721 ]
  %8724 = phi i32 [ %8773, %8771 ], [ 0, %8721 ]
  %8725 = add nuw i32 %8724, 171
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8725)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.CBufRet.f32 %8729, 1
  %8732 = fsub fast float %8727, %8730
  %8733 = fsub fast float %8728, %8731
  %8734 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8735 = fsub fast float -0.000000e+00, %8732
  %8736 = fsub fast float -0.000000e+00, %8733
  %8737 = call float @dx.op.dot2.f32(i32 54, float %8556, float %8557, float %8735, float %8736)  ; Dot2(ax,ay,bx,by)
  %8738 = fmul fast float %8737, 2.000000e+00
  %8739 = call float @dx.op.dot2.f32(i32 54, float %8735, float %8736, float %8735, float %8736)  ; Dot2(ax,ay,bx,by)
  %8740 = fmul fast float %8734, %8734
  %8741 = fsub fast float %8739, %8740
  %8742 = fmul fast float %8738, %8738
  %8743 = fmul fast float %8599, %8741
  %8744 = fsub fast float %8742, %8743
  %8745 = fcmp fast ogt float %8744, 0.000000e+00
  br i1 %8745, label %8746, label %8761

; <label>:8746                                    ; preds = %8722
  %8747 = fcmp fast ogt float %8738, 0.000000e+00
  %8748 = call float @dx.op.unary.f32(i32 24, float %8744)  ; Sqrt(value)
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = select i1 %8747, float %8748, float %8749
  %8751 = fadd fast float %8750, %8738
  %8752 = fmul float %8751, -5.000000e-01
  %8753 = fdiv fast float %8752, %8592
  %8754 = call float @dx.op.binary.f32(i32 35, float %8753, float 0.000000e+00)  ; FMax(a,b)
  %8755 = call float @dx.op.binary.f32(i32 36, float %8627, float %8754)  ; FMin(a,b)
  %8756 = fdiv fast float %8741, %8752
  %8757 = call float @dx.op.binary.f32(i32 35, float %8756, float 0.000000e+00)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8627, float %8757)  ; FMin(a,b)
  %8759 = call float @dx.op.binary.f32(i32 36, float %8755, float %8758)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8755, float %8758)  ; FMax(a,b)
  br label %8761

; <label>:8761                                    ; preds = %8746, %8722
  %8762 = phi float [ %8760, %8746 ], [ -1.000000e+00, %8722 ]
  %8763 = phi float [ %8759, %8746 ], [ -1.000000e+00, %8722 ]
  %8764 = phi i1 [ true, %8746 ], [ false, %8722 ]
  br i1 %8764, label %8765, label %8771

; <label>:8765                                    ; preds = %8761
  %8766 = call float @dx.op.binary.f32(i32 35, float %8710, float %8763)  ; FMax(a,b)
  %8767 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8724
  store float %8766, float* %8767, align 4, !tbaa !125, !noalias !127
  %8768 = call float @dx.op.binary.f32(i32 35, float %8710, float %8762)  ; FMax(a,b)
  %8769 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8724
  store float %8768, float* %8769, align 4, !tbaa !125, !noalias !127
  %8770 = add nsw i32 %8723, 1
  br label %8771

; <label>:8771                                    ; preds = %8765, %8761
  %8772 = phi i32 [ %8770, %8765 ], [ %8723, %8761 ]
  %8773 = add nuw nsw i32 %8724, 1
  %8774 = icmp eq i32 %8773, %8579
  br i1 %8774, label %8775, label %8722

; <label>:8775                                    ; preds = %8771
  %8776 = load float, float* %8716, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8777 = load float, float* %8715, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %8778 = load float, float* %8714, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %8779 = load float, float* %8719, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8780 = load float, float* %8718, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %8781 = load float, float* %8717, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %8782

; <label>:8782                                    ; preds = %8775, %8709
  %8783 = phi float [ -1.000000e+00, %8709 ], [ %8781, %8775 ]
  %8784 = phi float [ -1.000000e+00, %8709 ], [ %8780, %8775 ]
  %8785 = phi float [ -1.000000e+00, %8709 ], [ %8779, %8775 ]
  %8786 = phi float [ -1.000000e+00, %8709 ], [ %8778, %8775 ]
  %8787 = phi float [ -1.000000e+00, %8709 ], [ %8777, %8775 ]
  %8788 = phi float [ -1.000000e+00, %8709 ], [ %8776, %8775 ]
  %8789 = phi i32 [ 0, %8709 ], [ %8772, %8775 ]
  %8790 = call float @dx.op.binary.f32(i32 36, float %8787, float %8788)  ; FMin(a,b)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8786, float %8790)  ; FMin(a,b)
  %8792 = call float @dx.op.binary.f32(i32 35, float %8786, float %8787)  ; FMax(a,b)
  %8793 = call float @dx.op.binary.f32(i32 36, float %8792, float %8788)  ; FMin(a,b)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8786, float %8787)  ; FMin(a,b)
  %8795 = call float @dx.op.binary.f32(i32 35, float %8794, float %8793)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 35, float %8787, float %8788)  ; FMax(a,b)
  %8797 = call float @dx.op.binary.f32(i32 35, float %8786, float %8796)  ; FMax(a,b)
  store float %8791, float* %8714, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %8795, float* %8715, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %8797, float* %8716, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8798 = call float @dx.op.binary.f32(i32 36, float %8784, float %8785)  ; FMin(a,b)
  %8799 = call float @dx.op.binary.f32(i32 36, float %8783, float %8798)  ; FMin(a,b)
  %8800 = call float @dx.op.binary.f32(i32 35, float %8783, float %8784)  ; FMax(a,b)
  %8801 = call float @dx.op.binary.f32(i32 36, float %8800, float %8785)  ; FMin(a,b)
  %8802 = call float @dx.op.binary.f32(i32 36, float %8783, float %8784)  ; FMin(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float %8802, float %8801)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8784, float %8785)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 35, float %8783, float %8804)  ; FMax(a,b)
  store float %8799, float* %8717, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %8803, float* %8718, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %8805, float* %8719, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8806 = sub nsw i32 3, %8789
  %8807 = icmp sgt i32 %8806, 2
  br i1 %8807, label %8808, label %8846

; <label>:8808                                    ; preds = %8782
  %8809 = icmp eq i32 %8577, 0
  %8810 = fsub fast float %8627, %8711
  %8811 = select i1 %8809, float %8810, float %8711
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 0
  %8814 = extractvalue %dx.types.CBufRet.f32 %8812, 1
  %8815 = extractvalue %dx.types.CBufRet.f32 %8812, 2
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 0
  %8818 = extractvalue %dx.types.CBufRet.f32 %8816, 1
  %8819 = extractvalue %dx.types.CBufRet.f32 %8816, 2
  %8820 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 3
  %8823 = call float @dx.op.binary.f32(i32 36, float %8712, float %8822)  ; FMin(a,b)
  %8824 = fmul fast float %8820, %8811
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fsub fast float %8817, %8813
  %8827 = fsub fast float %8818, %8814
  %8828 = fsub fast float %8819, %8815
  %8829 = fmul fast float %8825, %8826
  %8830 = fmul fast float %8825, %8827
  %8831 = fmul fast float %8825, %8828
  %8832 = fadd fast float %8829, %8813
  %8833 = fadd fast float %8830, %8814
  %8834 = fadd fast float %8831, %8815
  %8835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8836 = extractvalue %dx.types.CBufRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.CBufRet.f32 %8835, 1
  %8838 = fadd fast float %8837, %8836
  %8839 = call float @dx.op.unary.f32(i32 7, float %8838)  ; Saturate(value)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8835, 2
  %8841 = extractvalue %dx.types.CBufRet.f32 %8835, 3
  %8842 = fadd fast float %8841, %8840
  %8843 = call float @dx.op.unary.f32(i32 7, float %8842)  ; Saturate(value)
  %8844 = fmul fast float %8839, %8823
  %8845 = fmul fast float %8844, %8843
  br label %8928

; <label>:8846                                    ; preds = %8782
  %8847 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8806
  %8848 = load float, float* %8847, align 4, !tbaa !125, !noalias !127
  %8849 = fcmp fast olt float %8848, %8713
  %8850 = icmp sgt i32 %8789, 0
  %8851 = and i1 %8850, %8849
  br i1 %8851, label %8852, label %8889

; <label>:8852                                    ; preds = %8846
  br label %8853

; <label>:8853                                    ; preds = %8882, %8852
  %8854 = phi float [ %8883, %8882 ], [ %8711, %8852 ]
  %8855 = phi float [ %8884, %8882 ], [ %8712, %8852 ]
  %8856 = phi float [ %8864, %8882 ], [ %8848, %8852 ]
  %8857 = phi i32 [ %8861, %8882 ], [ %8806, %8852 ]
  %8858 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8857
  %8859 = load float, float* %8858, align 4, !tbaa !125, !noalias !127
  %8860 = icmp slt i32 %8857, 2
  %8861 = add nsw i32 %8857, 1
  %8862 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8861
  %8863 = load float, float* %8862, align 4, !tbaa !125, !noalias !127
  %8864 = select i1 %8860, float %8863, float %8627
  %8865 = call float @dx.op.binary.f32(i32 36, float %8864, float %8859)  ; FMin(a,b)
  %8866 = call float @dx.op.binary.f32(i32 36, float %8713, float %8865)  ; FMin(a,b)
  %8867 = icmp eq i32 %8577, 0
  %8868 = fadd fast float %8866, %8856
  %8869 = fmul fast float %8868, %8558
  %8870 = fadd fast float %8869, %8571
  br i1 %8867, label %8876, label %8871

; <label>:8871                                    ; preds = %8853
  %8872 = fsub fast float %8866, %8856
  %8873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8872)  ; FMax(a,b)
  %8874 = fmul fast float %8873, %8870
  %8875 = fadd fast float %8874, %8855
  br label %8882

; <label>:8876                                    ; preds = %8853
  %8877 = fsub fast float %8856, %8866
  %8878 = call float @dx.op.unary.f32(i32 6, float %8877)  ; FAbs(value)
  %8879 = fadd fast float %8878, %8854
  %8880 = fmul fast float %8878, %8870
  %8881 = fsub fast float %8855, %8880
  br label %8882

; <label>:8882                                    ; preds = %8876, %8871
  %8883 = phi float [ %8873, %8871 ], [ %8879, %8876 ]
  %8884 = phi float [ %8875, %8871 ], [ %8881, %8876 ]
  %8885 = fcmp fast olt float %8864, %8713
  %8886 = icmp slt i32 %8861, 3
  %8887 = and i1 %8886, %8885
  br i1 %8887, label %8853, label %8888

; <label>:8888                                    ; preds = %8882
  br label %8889

; <label>:8889                                    ; preds = %8888, %8846
  %8890 = phi float [ %8711, %8846 ], [ %8883, %8888 ]
  %8891 = phi float [ %8712, %8846 ], [ %8884, %8888 ]
  %8892 = fsub fast float %8627, %8890
  %8893 = select i1 %8629, float %8890, float %8892
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8897 = extractvalue %dx.types.CBufRet.f32 %8894, 2
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 0
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 1
  %8901 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8902 = extractvalue %dx.types.CBufRet.f32 %8898, 3
  %8903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8904 = extractvalue %dx.types.CBufRet.f32 %8903, 3
  %8905 = call float @dx.op.binary.f32(i32 36, float %8891, float %8904)  ; FMin(a,b)
  %8906 = fmul fast float %8902, %8893
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8908 = fsub fast float %8899, %8895
  %8909 = fsub fast float %8900, %8896
  %8910 = fsub fast float %8901, %8897
  %8911 = fmul fast float %8907, %8908
  %8912 = fmul fast float %8907, %8909
  %8913 = fmul fast float %8907, %8910
  %8914 = fadd fast float %8911, %8895
  %8915 = fadd fast float %8912, %8896
  %8916 = fadd fast float %8913, %8897
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8920 = fadd fast float %8919, %8918
  %8921 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8917, 2
  %8923 = extractvalue %dx.types.CBufRet.f32 %8917, 3
  %8924 = fadd fast float %8923, %8922
  %8925 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8926 = fmul fast float %8921, %8905
  %8927 = fmul fast float %8926, %8925
  br label %8928

; <label>:8928                                    ; preds = %8889, %8808, %8643, %8625, %8623
  %8929 = phi float [ %8652, %8643 ], [ %8811, %8808 ], [ %8893, %8889 ], [ 0.000000e+00, %8623 ], [ 0.000000e+00, %8625 ]
  %8930 = phi float [ %8686, %8643 ], [ %8845, %8808 ], [ %8927, %8889 ], [ 0.000000e+00, %8623 ], [ 0.000000e+00, %8625 ]
  %8931 = phi float [ %8673, %8643 ], [ %8832, %8808 ], [ %8914, %8889 ], [ 0.000000e+00, %8623 ], [ 0.000000e+00, %8625 ]
  %8932 = phi float [ %8674, %8643 ], [ %8833, %8808 ], [ %8915, %8889 ], [ 0.000000e+00, %8623 ], [ 0.000000e+00, %8625 ]
  %8933 = phi float [ %8675, %8643 ], [ %8834, %8808 ], [ %8916, %8889 ], [ 0.000000e+00, %8623 ], [ 0.000000e+00, %8625 ]
  %8934 = fmul fast float %8566, %8930
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 2
  %8937 = fsub fast float %8573, %8936
  %8938 = fcmp fast olt float %8934, -2.000000e+01
  %8939 = call float @dx.op.unary.f32(i32 21, float %8934)  ; Exp(value)
  %8940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8941 = extractvalue %dx.types.CBufRet.f32 %8940, 2
  %8942 = extractvalue %dx.types.CBufRet.f32 %8940, 3
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 2
  %8945 = fmul fast float %8942, %8937
  %8946 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8947 = fsub fast float 1.000000e+00, %8946
  %8948 = fmul fast float %8558, 5.000000e-01
  %8949 = fadd fast float %8948, 5.000000e-01
  %8950 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8951 = fsub fast float 1.000000e+00, %8950
  %8952 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8947)  ; FMax(a,b)
  %8953 = fdiv fast float %8951, %8952
  %8954 = fsub fast float %8937, %8515
  %8955 = call float @dx.op.unary.f32(i32 6, float %8954)  ; FAbs(value)
  %8956 = fmul fast float %8955, %8941
  %8957 = call float @dx.op.unary.f32(i32 7, float %8953)  ; Saturate(value)
  %8958 = fsub fast float 1.000000e+00, %8956
  %8959 = fmul fast float %8958, %8957
  %8960 = fadd fast float %8959, %8956
  %8961 = fmul fast float %8944, %8937
  %8962 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8963 = fsub fast float 1.000000e+00, %8960
  %8964 = fmul fast float %8963, %8962
  %8965 = fadd fast float %8964, %8960
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fadd fast float %8939, -1.000000e+00
  %8968 = select i1 %8938, float -1.000000e+00, float %8967
  %8969 = fmul fast float %8966, %8968
  %8970 = fadd fast float %8969, 1.000000e+00
  %8971 = fsub fast float -0.000000e+00, %8969
  %8972 = fmul fast float %8931, %8971
  %8973 = fmul fast float %8932, %8971
  %8974 = fmul fast float %8933, %8971
  br label %8975

; <label>:8975                                    ; preds = %8928, %8524
  %8976 = phi float [ %8929, %8928 ], [ 0.000000e+00, %8524 ]
  %8977 = phi float [ %8970, %8928 ], [ 1.000000e+00, %8524 ]
  %8978 = phi float [ %8972, %8928 ], [ 0.000000e+00, %8524 ]
  %8979 = phi float [ %8973, %8928 ], [ 0.000000e+00, %8524 ]
  %8980 = phi float [ %8974, %8928 ], [ 0.000000e+00, %8524 ]
  %8981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8981, 1
  %8983 = fsub fast float 1.000000e+00, %8977
  %8984 = fmul fast float %8983, %8559
  %8985 = fmul fast float %8984, %8982
  %8986 = fsub fast float %8559, %8985
  br i1 %8552, label %8987, label %9016, !dx.controlflow.hints !163

; <label>:8987                                    ; preds = %8975
  %8988 = fmul fast float %8560, %8549
  %8989 = fadd fast float %8988, %8550
  %8990 = call float @dx.op.unary.f32(i32 7, float %8989)  ; Saturate(value)
  %8991 = fmul fast float %8531, %8986
  %8992 = fsub fast float -0.000000e+00, %8991
  %8993 = fmul fast float %8532, %8986
  %8994 = fsub fast float -0.000000e+00, %8993
  %8995 = call float @dx.op.unary.f32(i32 21, float %8992)  ; Exp(value)
  %8996 = call float @dx.op.unary.f32(i32 21, float %8994)  ; Exp(value)
  %8997 = call float @dx.op.binary.f32(i32 35, float %8539, float %8995)  ; FMax(a,b)
  %8998 = call float @dx.op.binary.f32(i32 35, float %8539, float %8996)  ; FMax(a,b)
  %8999 = fsub fast float %8998, %8997
  %9000 = fmul fast float %8999, %8990
  %9001 = fadd fast float %9000, %8997
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fsub fast float %8536, %8541
  %9004 = fsub fast float %8537, %8542
  %9005 = fsub fast float %8538, %8543
  %9006 = fmul fast float %8990, %9003
  %9007 = fmul fast float %8990, %9004
  %9008 = fmul fast float %8990, %9005
  %9009 = fadd fast float %9006, %8541
  %9010 = fadd fast float %9007, %8542
  %9011 = fadd fast float %9008, %8543
  %9012 = fsub fast float 1.000000e+00, %9002
  %9013 = fmul fast float %9012, %9009
  %9014 = fmul fast float %9012, %9010
  %9015 = fmul fast float %9012, %9011
  br label %9075

; <label>:9016                                    ; preds = %8975
  %9017 = fmul fast float %8986, %8548
  %9018 = call float @dx.op.unary.f32(i32 7, float %9017)  ; Saturate(value)
  %9019 = fsub fast float 2.000000e+00, %9018
  %9020 = fmul fast float %9018, 9.921875e-01
  %9021 = fmul fast float %9020, %9019
  %9022 = fadd fast float %9021, 3.906250e-03
  %9023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %9022, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9024 = extractvalue %dx.types.ResRet.f32 %9023, 0
  %9025 = fsub fast float %9018, %9024
  %9026 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9025)  ; FMax(a,b)
  %9027 = fmul fast float %8534, %8515
  %9028 = call float @dx.op.unary.f32(i32 6, float %9027)  ; FAbs(value)
  %9029 = fcmp fast ogt float %9028, 0x3EB0C6F7A0000000
  br i1 %9029, label %9030, label %9036, !dx.controlflow.hints !164

; <label>:9030                                    ; preds = %9016
  %9031 = fmul fast float %9027, 0xBFF7154760000000
  %9032 = call float @dx.op.unary.f32(i32 21, float %9031)  ; Exp(value)
  %9033 = fsub fast float 1.000000e+00, %9032
  %9034 = fdiv fast float %9033, %9027
  %9035 = fmul fast float %9034, %8544
  br label %9036

; <label>:9036                                    ; preds = %9030, %9016
  %9037 = phi float [ %9035, %9030 ], [ %8544, %9016 ]
  %9038 = fadd fast float %9037, %8546
  %9039 = fmul fast float %9038, %9026
  %9040 = fmul fast float %8531, %9039
  %9041 = fsub fast float -0.000000e+00, %9040
  %9042 = fmul fast float %8532, %9039
  %9043 = fsub fast float -0.000000e+00, %9042
  %9044 = fmul fast float %8533, %9039
  %9045 = fsub fast float -0.000000e+00, %9044
  %9046 = call float @dx.op.unary.f32(i32 21, float %9041)  ; Exp(value)
  %9047 = call float @dx.op.unary.f32(i32 21, float %9043)  ; Exp(value)
  %9048 = call float @dx.op.unary.f32(i32 21, float %9045)  ; Exp(value)
  %9049 = fmul fast float %8560, %8560
  %9050 = fadd fast float %9049, 1.000000e+00
  %9051 = fmul fast float %9050, 0x3FAE8EC8A0000000
  %9052 = fmul fast float %9051, %8541
  %9053 = fmul fast float %9051, %8542
  %9054 = fmul fast float %9051, %8543
  %9055 = fmul fast float %8560, %8539
  %9056 = fsub fast float 1.000000e+00, %9055
  %9057 = fmul fast float %8539, %8539
  %9058 = fsub fast float 1.000000e+00, %9057
  %9059 = fmul fast float %9058, 0x3FB45F3060000000
  %9060 = fmul fast float %9056, %9056
  %9061 = fdiv fast float 1.000000e+00, %9060
  %9062 = fmul fast float %9059, %9061
  %9063 = fmul fast float %9062, %8536
  %9064 = fmul fast float %9062, %8537
  %9065 = fmul fast float %9062, %8538
  %9066 = fadd fast float %9063, %9052
  %9067 = fadd fast float %9064, %9053
  %9068 = fadd fast float %9065, %9054
  %9069 = fsub fast float 1.000000e+00, %9046
  %9070 = fsub fast float 1.000000e+00, %9047
  %9071 = fsub fast float 1.000000e+00, %9048
  %9072 = fmul fast float %9066, %9069
  %9073 = fmul fast float %9067, %9070
  %9074 = fmul fast float %9068, %9071
  br label %9075

; <label>:9075                                    ; preds = %9036, %8987
  %9076 = phi float [ %9013, %8987 ], [ %9072, %9036 ]
  %9077 = phi float [ %9014, %8987 ], [ %9073, %9036 ]
  %9078 = phi float [ %9015, %8987 ], [ %9074, %9036 ]
  %9079 = phi float [ %9002, %8987 ], [ %9046, %9036 ]
  %9080 = phi float [ %9002, %8987 ], [ %9047, %9036 ]
  %9081 = phi float [ %9002, %8987 ], [ %9048, %9036 ]
  br i1 %8568, label %9082, label %9280, !dx.controlflow.hints !165

; <label>:9082                                    ; preds = %9075
  %9083 = extractvalue %dx.types.CBufRet.f32 %8981, 0
  %9084 = fmul fast float %9083, %8983
  %9085 = fsub fast float %8978, %9076
  %9086 = fsub fast float %8979, %9077
  %9087 = fsub fast float %8980, %9078
  %9088 = fmul fast float %9084, %9085
  %9089 = fmul fast float %9084, %9086
  %9090 = fmul fast float %9084, %9087
  %9091 = fadd fast float %9088, %9076
  %9092 = fadd fast float %9089, %9077
  %9093 = fadd fast float %9090, %9078
  %9094 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9079)  ; FMax(a,b)
  %9095 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9080)  ; FMax(a,b)
  %9096 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9081)  ; FMax(a,b)
  %9097 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8977)  ; FMax(a,b)
  %9098 = call float @dx.op.binary.f32(i32 35, float %8976, float %8986)  ; FMax(a,b)
  %9099 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9098)  ; FMax(a,b)
  %9100 = fdiv fast float %8976, %9099
  %9101 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  %9102 = fdiv fast float %8986, %9099
  %9103 = call float @dx.op.unary.f32(i32 7, float %9102)  ; Saturate(value)
  %9104 = fcmp fast une float %9097, 1.000000e+00
  br i1 %9104, label %9105, label %9118, !dx.controlflow.hints !166

; <label>:9105                                    ; preds = %9082
  %9106 = call float @dx.op.unary.f32(i32 23, float %9097)  ; Log(value)
  %9107 = fmul fast float %9106, 0x3FE62E4300000000
  %9108 = fmul fast float %8978, %9107
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fmul fast float %8979, %9107
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = fmul fast float %8980, %9107
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = fsub fast float 1.000000e+00, %9097
  %9115 = fdiv fast float %9109, %9114
  %9116 = fdiv fast float %9111, %9114
  %9117 = fdiv fast float %9113, %9114
  br label %9118

; <label>:9118                                    ; preds = %9105, %9082
  %9119 = phi float [ %9115, %9105 ], [ %8978, %9082 ]
  %9120 = phi float [ %9116, %9105 ], [ %8979, %9082 ]
  %9121 = phi float [ %9117, %9105 ], [ %8980, %9082 ]
  %9122 = phi float [ %9107, %9105 ], [ 0.000000e+00, %9082 ]
  %9123 = fcmp fast une float %9094, 1.000000e+00
  br i1 %9123, label %9124, label %9131, !dx.controlflow.hints !167

; <label>:9124                                    ; preds = %9118
  %9125 = call float @dx.op.unary.f32(i32 23, float %9094)  ; Log(value)
  %9126 = fmul fast float %9125, 0x3FE62E4300000000
  %9127 = fmul fast float %9091, %9126
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = fsub fast float 1.000000e+00, %9094
  %9130 = fdiv fast float %9128, %9129
  br label %9131

; <label>:9131                                    ; preds = %9124, %9118
  %9132 = phi float [ %9130, %9124 ], [ %9091, %9118 ]
  %9133 = phi float [ %9126, %9124 ], [ 0.000000e+00, %9118 ]
  %9134 = fcmp fast une float %9095, 1.000000e+00
  br i1 %9134, label %9135, label %9142, !dx.controlflow.hints !167

; <label>:9135                                    ; preds = %9131
  %9136 = call float @dx.op.unary.f32(i32 23, float %9095)  ; Log(value)
  %9137 = fmul fast float %9136, 0x3FE62E4300000000
  %9138 = fmul fast float %9092, %9137
  %9139 = fsub fast float -0.000000e+00, %9138
  %9140 = fsub fast float 1.000000e+00, %9095
  %9141 = fdiv fast float %9139, %9140
  br label %9142

; <label>:9142                                    ; preds = %9135, %9131
  %9143 = phi float [ %9141, %9135 ], [ %9092, %9131 ]
  %9144 = phi float [ %9137, %9135 ], [ 0.000000e+00, %9131 ]
  %9145 = fcmp fast une float %9096, 1.000000e+00
  br i1 %9145, label %9146, label %9153, !dx.controlflow.hints !167

; <label>:9146                                    ; preds = %9142
  %9147 = call float @dx.op.unary.f32(i32 23, float %9096)  ; Log(value)
  %9148 = fmul fast float %9147, 0x3FE62E4300000000
  %9149 = fmul fast float %9093, %9148
  %9150 = fsub fast float -0.000000e+00, %9149
  %9151 = fsub fast float 1.000000e+00, %9096
  %9152 = fdiv fast float %9150, %9151
  br label %9153

; <label>:9153                                    ; preds = %9146, %9142
  %9154 = phi float [ %9152, %9146 ], [ %9093, %9142 ]
  %9155 = phi float [ %9148, %9146 ], [ 0.000000e+00, %9142 ]
  %9156 = fmul fast float %9119, %9103
  %9157 = fmul fast float %9120, %9103
  %9158 = fmul fast float %9121, %9103
  %9159 = fmul fast float %9122, %9103
  %9160 = fmul fast float %9132, %9101
  %9161 = fmul fast float %9143, %9101
  %9162 = fmul fast float %9154, %9101
  %9163 = fmul fast float %9133, %9101
  %9164 = fmul fast float %9144, %9101
  %9165 = fmul fast float %9155, %9101
  %9166 = fadd fast float %9160, %9156
  %9167 = fadd fast float %9161, %9157
  %9168 = fadd fast float %9162, %9158
  %9169 = fadd fast float %9163, %9159
  %9170 = fadd fast float %9164, %9159
  %9171 = fadd fast float %9165, %9159
  %9172 = fcmp fast une float %9169, 0.000000e+00
  br i1 %9172, label %9173, label %9180, !dx.controlflow.hints !168

; <label>:9173                                    ; preds = %9153
  %9174 = fmul fast float %9169, 0x3FF7154760000000
  %9175 = call float @dx.op.unary.f32(i32 21, float %9174)  ; Exp(value)
  %9176 = fsub fast float 1.000000e+00, %9175
  %9177 = fmul fast float %9166, %9176
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fdiv fast float %9178, %9169
  br label %9180

; <label>:9180                                    ; preds = %9173, %9153
  %9181 = phi float [ %9175, %9173 ], [ 1.000000e+00, %9153 ]
  %9182 = phi float [ %9179, %9173 ], [ %9166, %9153 ]
  %9183 = fcmp fast une float %9170, 0.000000e+00
  br i1 %9183, label %9184, label %9191, !dx.controlflow.hints !168

; <label>:9184                                    ; preds = %9180
  %9185 = fmul fast float %9170, 0x3FF7154760000000
  %9186 = call float @dx.op.unary.f32(i32 21, float %9185)  ; Exp(value)
  %9187 = fsub fast float 1.000000e+00, %9186
  %9188 = fmul fast float %9167, %9187
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fdiv fast float %9189, %9170
  br label %9191

; <label>:9191                                    ; preds = %9184, %9180
  %9192 = phi float [ %9186, %9184 ], [ 1.000000e+00, %9180 ]
  %9193 = phi float [ %9190, %9184 ], [ %9167, %9180 ]
  %9194 = fcmp fast une float %9171, 0.000000e+00
  br i1 %9194, label %9195, label %9202, !dx.controlflow.hints !168

; <label>:9195                                    ; preds = %9191
  %9196 = fmul fast float %9171, 0x3FF7154760000000
  %9197 = call float @dx.op.unary.f32(i32 21, float %9196)  ; Exp(value)
  %9198 = fsub fast float 1.000000e+00, %9197
  %9199 = fmul fast float %9168, %9198
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fdiv fast float %9200, %9171
  br label %9202

; <label>:9202                                    ; preds = %9195, %9191
  %9203 = phi float [ %9197, %9195 ], [ 1.000000e+00, %9191 ]
  %9204 = phi float [ %9201, %9195 ], [ %9168, %9191 ]
  %9205 = fcmp fast ogt float %9101, %9103
  br i1 %9205, label %9206, label %9226

; <label>:9206                                    ; preds = %9202
  %9207 = fsub fast float 1.000000e+00, %9103
  %9208 = fmul fast float %9119, %9207
  %9209 = fmul fast float %9120, %9207
  %9210 = fmul fast float %9121, %9207
  %9211 = fmul fast float %9122, %9207
  %9212 = fcmp fast une float %9211, 0.000000e+00
  br i1 %9212, label %9213, label %9264, !dx.controlflow.hints !169

; <label>:9213                                    ; preds = %9206
  %9214 = fmul fast float %9211, 0x3FF7154760000000
  %9215 = call float @dx.op.unary.f32(i32 21, float %9214)  ; Exp(value)
  %9216 = fsub fast float 1.000000e+00, %9215
  %9217 = fmul fast float %9208, %9216
  %9218 = fsub fast float -0.000000e+00, %9217
  %9219 = fmul fast float %9209, %9216
  %9220 = fsub fast float -0.000000e+00, %9219
  %9221 = fmul fast float %9210, %9216
  %9222 = fsub fast float -0.000000e+00, %9221
  %9223 = fdiv fast float %9218, %9211
  %9224 = fdiv fast float %9220, %9211
  %9225 = fdiv fast float %9222, %9211
  br label %9264

; <label>:9226                                    ; preds = %9202
  %9227 = fsub fast float 1.000000e+00, %9101
  %9228 = fmul fast float %9132, %9227
  %9229 = fmul fast float %9143, %9227
  %9230 = fmul fast float %9154, %9227
  %9231 = fmul fast float %9133, %9227
  %9232 = fmul fast float %9144, %9227
  %9233 = fmul fast float %9155, %9227
  %9234 = fcmp fast une float %9231, 0.000000e+00
  br i1 %9234, label %9235, label %9242, !dx.controlflow.hints !168

; <label>:9235                                    ; preds = %9226
  %9236 = fmul fast float %9231, 0x3FF7154760000000
  %9237 = call float @dx.op.unary.f32(i32 21, float %9236)  ; Exp(value)
  %9238 = fsub fast float 1.000000e+00, %9237
  %9239 = fmul fast float %9228, %9238
  %9240 = fsub fast float -0.000000e+00, %9239
  %9241 = fdiv fast float %9240, %9231
  br label %9242

; <label>:9242                                    ; preds = %9235, %9226
  %9243 = phi float [ %9241, %9235 ], [ %9228, %9226 ]
  %9244 = phi float [ %9237, %9235 ], [ 1.000000e+00, %9226 ]
  %9245 = fcmp fast une float %9232, 0.000000e+00
  br i1 %9245, label %9246, label %9253, !dx.controlflow.hints !168

; <label>:9246                                    ; preds = %9242
  %9247 = fmul fast float %9232, 0x3FF7154760000000
  %9248 = call float @dx.op.unary.f32(i32 21, float %9247)  ; Exp(value)
  %9249 = fsub fast float 1.000000e+00, %9248
  %9250 = fmul fast float %9229, %9249
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = fdiv fast float %9251, %9232
  br label %9253

; <label>:9253                                    ; preds = %9246, %9242
  %9254 = phi float [ %9252, %9246 ], [ %9229, %9242 ]
  %9255 = phi float [ %9248, %9246 ], [ 1.000000e+00, %9242 ]
  %9256 = fcmp fast une float %9233, 0.000000e+00
  br i1 %9256, label %9257, label %9264, !dx.controlflow.hints !168

; <label>:9257                                    ; preds = %9253
  %9258 = fmul fast float %9233, 0x3FF7154760000000
  %9259 = call float @dx.op.unary.f32(i32 21, float %9258)  ; Exp(value)
  %9260 = fsub fast float 1.000000e+00, %9259
  %9261 = fmul fast float %9230, %9260
  %9262 = fsub fast float -0.000000e+00, %9261
  %9263 = fdiv fast float %9262, %9233
  br label %9264

; <label>:9264                                    ; preds = %9257, %9253, %9213, %9206
  %9265 = phi float [ %9263, %9257 ], [ %9225, %9213 ], [ %9210, %9206 ], [ %9230, %9253 ]
  %9266 = phi float [ %9254, %9257 ], [ %9224, %9213 ], [ %9209, %9206 ], [ %9254, %9253 ]
  %9267 = phi float [ %9243, %9257 ], [ %9223, %9213 ], [ %9208, %9206 ], [ %9243, %9253 ]
  %9268 = phi float [ %9259, %9257 ], [ %9215, %9213 ], [ 1.000000e+00, %9206 ], [ 1.000000e+00, %9253 ]
  %9269 = phi float [ %9255, %9257 ], [ %9215, %9213 ], [ 1.000000e+00, %9206 ], [ %9255, %9253 ]
  %9270 = phi float [ %9244, %9257 ], [ %9215, %9213 ], [ 1.000000e+00, %9206 ], [ %9244, %9253 ]
  %9271 = fmul fast float %9270, %9182
  %9272 = fmul fast float %9269, %9193
  %9273 = fmul fast float %9268, %9204
  %9274 = fadd fast float %9271, %9267
  %9275 = fadd fast float %9272, %9266
  %9276 = fadd fast float %9273, %9265
  %9277 = fmul fast float %9270, %9181
  %9278 = fmul fast float %9269, %9192
  %9279 = fmul fast float %9268, %9203
  br label %9280

; <label>:9280                                    ; preds = %9264, %9075
  %9281 = phi float [ %9279, %9264 ], [ %9081, %9075 ]
  %9282 = phi float [ %9278, %9264 ], [ %9080, %9075 ]
  %9283 = phi float [ %9277, %9264 ], [ %9079, %9075 ]
  %9284 = phi float [ %9276, %9264 ], [ %9078, %9075 ]
  %9285 = phi float [ %9275, %9264 ], [ %9077, %9075 ]
  %9286 = phi float [ %9274, %9264 ], [ %9076, %9075 ]
  %9287 = fmul fast float %9286, %8228
  %9288 = fmul fast float %9285, %8230
  %9289 = fmul fast float %9284, %8232
  %9290 = fmul fast float %9283, %8523
  %9291 = call float @dx.op.dot3.f32(i32 55, float %9283, float %9282, float %9281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9292 = call float @dx.op.dot3.f32(i32 55, float %9287, float %9288, float %9289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9293 = select i1 %223, float %9291, float %9283
  %9294 = select i1 %223, float %9291, float %9282
  %9295 = select i1 %223, float 1.000000e+00, float %9281
  %9296 = select i1 %223, float %9292, float %9287
  %9297 = select i1 %223, float 0.000000e+00, float %9288
  %9298 = select i1 %223, float 0.000000e+00, float %9289
  %9299 = fmul fast float %9293, %8517
  %9300 = fmul fast float %9294, %8518
  %9301 = fmul fast float %9295, %8519
  %9302 = fadd fast float %9299, %9296
  %9303 = fadd fast float %9300, %9297
  %9304 = fadd fast float %9298, %9301
  %9305 = fmul fast float %9293, %8520
  %9306 = fmul fast float %9294, %8521
  %9307 = fmul fast float %9295, %8522
  %9308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.i32 %9308, 0
  %9310 = icmp eq i32 %9309, 0
  br i1 %9310, label %9678, label %9311, !dx.controlflow.hints !170

; <label>:9311                                    ; preds = %9280
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %9314 = extractvalue %dx.types.CBufRet.f32 %9312, 3
  %9315 = fmul fast float %9313, %102
  %9316 = fmul fast float %9314, %103
  %9317 = fmul fast float %9315, 2.000000e+00
  %9318 = fmul fast float %9316, 2.000000e+00
  %9319 = fsub fast float 1.000000e+00, %9317
  %9320 = fsub fast float 1.000000e+00, %9318
  %9321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9322 = extractvalue %dx.types.CBufRet.f32 %9321, 0
  %9323 = extractvalue %dx.types.CBufRet.f32 %9321, 1
  %9324 = extractvalue %dx.types.CBufRet.f32 %9321, 2
  %9325 = fmul fast float %9319, %9322
  %9326 = fmul fast float %9319, %9323
  %9327 = fmul fast float %9319, %9324
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9332 = fmul fast float %9320, %9329
  %9333 = fmul fast float %9320, %9330
  %9334 = fmul fast float %9320, %9331
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 0
  %9337 = extractvalue %dx.types.CBufRet.f32 %9335, 1
  %9338 = extractvalue %dx.types.CBufRet.f32 %9335, 2
  %9339 = fadd fast float %9332, %9336
  %9340 = fadd fast float %9339, %9325
  %9341 = fadd fast float %9333, %9337
  %9342 = fadd fast float %9341, %9326
  %9343 = fadd fast float %9334, %9338
  %9344 = fadd fast float %9343, %9327
  %9345 = fmul fast float %9340, %8516
  %9346 = fmul fast float %9342, %8516
  %9347 = fmul fast float %9344, %8516
  %9348 = fmul fast float %9345, %9345
  %9349 = fmul fast float %9346, %9346
  %9350 = fadd fast float %9348, %9349
  %9351 = fmul fast float %9347, %9347
  %9352 = fadd fast float %9350, %9351
  %9353 = call float @dx.op.unary.f32(i32 24, float %9352)  ; Sqrt(value)
  %9354 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %9355 = fsub fast float %9353, %9354
  %9356 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %9357 = fmul fast float %9355, %9356
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fadd fast float %9358, -5.000000e-01
  %9360 = fmul fast float %9359, 2.000000e+00
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 2
  %9363 = call float @dx.op.binary.f32(i32 36, float %9362, float %9360)  ; FMin(a,b)
  %9364 = fsub fast float -0.000000e+00, %9362
  %9365 = fcmp fast ogt float %9363, %9364
  br i1 %9365, label %9366, label %9678, !dx.controlflow.hints !171

; <label>:9366                                    ; preds = %9311
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 3
  %9369 = fcmp fast ogt float %9368, 0.000000e+00
  br i1 %9369, label %9370, label %9445, !dx.controlflow.hints !172

; <label>:9370                                    ; preds = %9366
  %9371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9372 = extractvalue %dx.types.Dimensions %9371, 0
  %9373 = sitofp i32 %9372 to float
  %9374 = extractvalue %dx.types.Dimensions %9371, 1
  %9375 = sitofp i32 %9374 to float
  %9376 = fmul fast float %9315, %9373
  %9377 = fmul fast float %9316, %9375
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fptoui float %9380 to i32
  %9382 = fptoui float %9376 to i32
  %9383 = fptoui float %9377 to i32
  %9384 = and i32 %9381, 31
  %9385 = lshr i32 %9382, %9384
  %9386 = lshr i32 %9383, %9384
  %9387 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9381, i32 %9385, i32 %9386, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9388 = extractvalue %dx.types.ResRet.f32 %9387, 0
  %9389 = fcmp fast olt float %9388, -1.000000e+00
  %9390 = fcmp fast ogt float %9388, -1.000000e+00
  %9391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.f32 %9391, 1
  %9393 = select i1 %9390, float %9392, float 1.000000e+00
  %9394 = fadd fast float %9388, 1.000000e+00
  %9395 = fmul fast float %9393, %9394
  %9396 = call float @dx.op.unary.f32(i32 6, float %9395)  ; FAbs(value)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9391, 3
  %9398 = fcmp fast oge float %9396, %9397
  %9399 = select i1 %9398, float 0x4197782600000000, float %9396
  %9400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9401 = extractvalue %dx.types.CBufRet.f32 %9400, 0
  %9402 = extractvalue %dx.types.CBufRet.f32 %9400, 1
  %9403 = extractvalue %dx.types.CBufRet.f32 %9400, 2
  %9404 = select i1 %9389, float %9401, float %9322
  %9405 = select i1 %9389, float %9402, float %9323
  %9406 = select i1 %9389, float %9403, float %9324
  %9407 = fmul fast float %9404, %9319
  %9408 = fmul fast float %9405, %9319
  %9409 = fmul fast float %9406, %9319
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 0
  %9412 = extractvalue %dx.types.CBufRet.f32 %9410, 1
  %9413 = extractvalue %dx.types.CBufRet.f32 %9410, 2
  %9414 = select i1 %9389, float %9411, float %9329
  %9415 = select i1 %9389, float %9412, float %9330
  %9416 = select i1 %9389, float %9413, float %9331
  %9417 = fmul fast float %9414, %9320
  %9418 = fmul fast float %9415, %9320
  %9419 = fmul fast float %9416, %9320
  %9420 = fadd fast float %9417, %9407
  %9421 = fadd fast float %9418, %9408
  %9422 = fadd fast float %9419, %9409
  %9423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9424 = extractvalue %dx.types.CBufRet.f32 %9423, 0
  %9425 = extractvalue %dx.types.CBufRet.f32 %9423, 1
  %9426 = extractvalue %dx.types.CBufRet.f32 %9423, 2
  %9427 = select i1 %9389, float %9424, float %9336
  %9428 = select i1 %9389, float %9425, float %9337
  %9429 = select i1 %9389, float %9426, float %9338
  %9430 = fadd fast float %9420, %9427
  %9431 = fadd fast float %9421, %9428
  %9432 = fadd fast float %9422, %9429
  %9433 = fmul fast float %9430, %9399
  %9434 = fmul fast float %9431, %9399
  %9435 = fmul fast float %9432, %9399
  %9436 = fmul fast float %9433, %9433
  %9437 = fmul fast float %9434, %9434
  %9438 = fadd fast float %9436, %9437
  %9439 = fmul fast float %9435, %9435
  %9440 = fadd fast float %9438, %9439
  %9441 = call float @dx.op.unary.f32(i32 24, float %9440)  ; Sqrt(value)
  %9442 = fsub fast float %9441, %9354
  %9443 = fmul fast float %9442, %9356
  %9444 = call float @dx.op.unary.f32(i32 7, float %9443)  ; Saturate(value)
  br label %9445

; <label>:9445                                    ; preds = %9370, %9366
  %9446 = phi float [ %9444, %9370 ], [ 1.000000e+00, %9366 ]
  %9447 = fmul fast float %9363, 5.000000e-01
  %9448 = fadd fast float %9447, 5.000000e-01
  %9449 = call float @dx.op.unary.f32(i32 22, float %9448)  ; Frc(value)
  %9450 = call float @dx.op.unary.f32(i32 27, float %9449)  ; Round_ni(value)
  %9451 = call float @dx.op.unary.f32(i32 22, float %9449)  ; Frc(value)
  %9452 = fmul fast float %9451, 2.000000e+00
  %9453 = fadd fast float %9452, -1.000000e+00
  %9454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9315, float %9316, float %9450, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9455 = extractvalue %dx.types.ResRet.f32 %9454, 0
  %9456 = extractvalue %dx.types.ResRet.f32 %9454, 1
  %9457 = extractvalue %dx.types.ResRet.f32 %9454, 2
  %9458 = extractvalue %dx.types.ResRet.f32 %9454, 3
  %9459 = fadd fast float %9455, -5.000000e-01
  %9460 = fadd fast float %9457, -5.000000e-01
  %9461 = fmul fast float %9459, 0xBFD5555560000000
  %9462 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9460, float %9461)  ; FMad(a,b,c)
  %9463 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9456, float 0.000000e+00)  ; FMad(a,b,c)
  %9464 = fadd fast float %9463, %9458
  %9465 = fmul fast float %9459, -7.500000e-01
  %9466 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9460, float %9465)  ; FMad(a,b,c)
  %9467 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9456, float 0.000000e+00)  ; FMad(a,b,c)
  %9468 = fadd fast float %9467, %9458
  %9469 = call float @dx.op.binary.f32(i32 35, float %9462, float -1.000000e+00)  ; FMax(a,b)
  %9470 = call float @dx.op.binary.f32(i32 35, float %9464, float -1.000000e+00)  ; FMax(a,b)
  %9471 = call float @dx.op.binary.f32(i32 35, float %9466, float -1.000000e+00)  ; FMax(a,b)
  %9472 = call float @dx.op.binary.f32(i32 35, float %9468, float -1.000000e+00)  ; FMax(a,b)
  %9473 = call float @dx.op.binary.f32(i32 36, float %9469, float 1.000000e+00)  ; FMin(a,b)
  %9474 = call float @dx.op.binary.f32(i32 36, float %9470, float 1.000000e+00)  ; FMin(a,b)
  %9475 = call float @dx.op.binary.f32(i32 36, float %9471, float 1.000000e+00)  ; FMin(a,b)
  %9476 = call float @dx.op.binary.f32(i32 36, float %9472, float 1.000000e+00)  ; FMin(a,b)
  %9477 = fcmp fast olt float %9473, 0x3FEFFF8020000000
  br i1 %9477, label %9478, label %9593, !dx.controlflow.hints !173

; <label>:9478                                    ; preds = %9445
  %9479 = extractvalue %dx.types.CBufRet.f32 %9361, 3
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.CBufRet.f32 %9480, 1
  %9483 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9484 = extractvalue %dx.types.CBufRet.f32 %9480, 3
  %9485 = fsub fast float %9481, %9473
  %9486 = fsub fast float %9482, %9474
  %9487 = fsub fast float %9483, %9475
  %9488 = fsub fast float %9484, %9476
  %9489 = fmul fast float %9485, %9479
  %9490 = fmul fast float %9486, %9479
  %9491 = fmul fast float %9487, %9479
  %9492 = fmul fast float %9488, %9479
  %9493 = fadd fast float %9489, %9473
  %9494 = fadd fast float %9490, %9474
  %9495 = fsub fast float -0.000000e+00, %9494
  %9496 = fadd fast float %9491, %9475
  %9497 = fadd fast float %9492, %9476
  %9498 = fmul fast float %9493, %9493
  %9499 = fsub fast float %9494, %9498
  %9500 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9499)  ; FMax(a,b)
  %9501 = fdiv fast float 1.000000e+00, %9500
  %9502 = fmul fast float %9494, %9493
  %9503 = fsub fast float %9496, %9502
  %9504 = fsub fast float %9453, %9493
  %9505 = fmul fast float %9453, %9453
  %9506 = fsub fast float %9505, %9494
  %9507 = fmul fast float %9504, %9501
  %9508 = fmul fast float %9507, %9503
  %9509 = fsub fast float %9506, %9508
  %9510 = fmul fast float %9494, %9494
  %9511 = fsub fast float %9497, %9510
  %9512 = fmul fast float %9503, %9503
  %9513 = fmul fast float %9512, %9501
  %9514 = fsub fast float %9511, %9513
  %9515 = fdiv fast float %9509, %9514
  %9516 = fmul fast float %9503, %9515
  %9517 = fsub fast float %9504, %9516
  %9518 = fmul fast float %9517, %9501
  %9519 = fmul fast float %9518, %9493
  %9520 = fsub fast float 1.000000e+00, %9519
  %9521 = fmul fast float %9494, %9515
  %9522 = fsub fast float %9520, %9521
  %9523 = fmul fast float %9518, %9518
  %9524 = fmul fast float %9515, 4.000000e+00
  %9525 = fmul fast float %9524, %9522
  %9526 = fsub fast float %9523, %9525
  %9527 = call float @dx.op.unary.f32(i32 24, float %9526)  ; Sqrt(value)
  %9528 = fcmp fast oge float %9518, 0.000000e+00
  %9529 = fsub fast float -0.000000e+00, %9527
  %9530 = select i1 %9528, float %9529, float %9527
  %9531 = fsub fast float %9530, %9518
  %9532 = fdiv fast float %9531, %9515
  %9533 = fdiv fast float %9522, %9531
  %9534 = fmul fast float %9532, 5.000000e-01
  %9535 = fmul fast float %9533, 2.000000e+00
  %9536 = select i1 %9528, float %9534, float %9535
  %9537 = select i1 %9528, float %9535, float %9534
  %9538 = call float @dx.op.binary.f32(i32 35, float %9536, float %9537)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 36, float %9536, float %9537)  ; FMin(a,b)
  %9540 = fcmp fast ogt float %9453, %9539
  br i1 %9540, label %9541, label %9551

; <label>:9541                                    ; preds = %9478
  %9542 = fsub fast float %9453, %9539
  %9543 = fsub fast float %9538, %9539
  %9544 = fmul fast float %9542, %9543
  %9545 = fmul fast float %9538, %9453
  %9546 = fadd fast float %9538, %9453
  %9547 = fmul fast float %9546, %9493
  %9548 = fadd fast float %9545, %9494
  %9549 = fsub fast float %9548, %9547
  %9550 = fdiv fast float %9549, %9544
  br label %9551

; <label>:9551                                    ; preds = %9541, %9478
  %9552 = phi float [ %9550, %9541 ], [ 0.000000e+00, %9478 ]
  %9553 = fcmp fast ogt float %9453, %9538
  %9554 = fsub fast float %9453, %9538
  br i1 %9553, label %9555, label %9565

; <label>:9555                                    ; preds = %9551
  %9556 = fsub fast float %9538, %9539
  %9557 = fmul fast float %9556, %9554
  %9558 = fmul fast float %9539, %9453
  %9559 = fadd fast float %9539, %9453
  %9560 = fmul fast float %9559, %9493
  %9561 = fsub fast float %9495, %9558
  %9562 = fadd fast float %9561, %9560
  %9563 = fdiv fast float %9562, %9557
  %9564 = fadd fast float %9563, %9552
  br label %9565

; <label>:9565                                    ; preds = %9555, %9551
  %9566 = phi float [ %9564, %9555 ], [ %9552, %9551 ]
  %9567 = fsub fast float %9453, %9539
  %9568 = fmul fast float %9567, %9554
  %9569 = fmul fast float %9539, %9538
  %9570 = fadd fast float %9539, %9538
  %9571 = fmul fast float %9570, %9493
  %9572 = fadd fast float %9569, %9494
  %9573 = fsub fast float %9572, %9571
  %9574 = fdiv fast float %9573, %9568
  %9575 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9576 = fcmp fast oeq float %8244, 0.000000e+00
  %9577 = extractvalue %dx.types.CBufRet.f32 %9361, 0
  %9578 = fcmp fast oeq float %9577, 0.000000e+00
  %9579 = or i1 %9576, %9578
  %9580 = fmul fast float %9577, 2.000000e+00
  %9581 = fadd fast float %9362, %9363
  %9582 = fdiv fast float %9581, %9580
  %9583 = call float @dx.op.unary.f32(i32 7, float %9582)  ; Saturate(value)
  %9584 = fmul fast float %9583, 2.000000e+00
  %9585 = fsub fast float 3.000000e+00, %9584
  %9586 = fmul fast float %9583, %9583
  %9587 = fmul fast float %9586, %9585
  %9588 = select i1 %9579, float 1.000000e+00, float %9587
  %9589 = fmul fast float %9574, %8244
  %9590 = fadd fast float %9575, %9589
  %9591 = call float @dx.op.unary.f32(i32 7, float %9590)  ; Saturate(value)
  %9592 = fmul fast float %9588, %9591
  br label %9593

; <label>:9593                                    ; preds = %9565, %9445
  %9594 = phi float [ %9592, %9565 ], [ 0.000000e+00, %9445 ]
  %9595 = fsub fast float 1.000000e+00, %9594
  %9596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9315, float %9316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9597 = extractvalue %dx.types.ResRet.f32 %9596, 0
  %9598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9599 = extractvalue %dx.types.CBufRet.i32 %9598, 2
  %9600 = icmp eq i32 %9599, 0
  br i1 %9600, label %9606, label %9601

; <label>:9601                                    ; preds = %9593
  %9602 = call float @dx.op.unary.f32(i32 7, float %9594)  ; Saturate(value)
  %9603 = fadd fast float %9597, -1.000000e+00
  %9604 = fmul fast float %9602, %9603
  %9605 = fadd fast float %9604, 1.000000e+00
  br label %9606

; <label>:9606                                    ; preds = %9601, %9593
  %9607 = phi float [ %9605, %9601 ], [ %9595, %9593 ]
  br i1 %9369, label %9608, label %9626

; <label>:9608                                    ; preds = %9606
  %9609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.f32 %9609, 1
  %9611 = fsub fast float %9446, %9610
  %9612 = call float @dx.op.unary.f32(i32 7, float %9611)  ; Saturate(value)
  %9613 = fsub fast float %9446, %9368
  %9614 = call float @dx.op.unary.f32(i32 7, float %9613)  ; Saturate(value)
  %9615 = fsub fast float %9612, %9614
  %9616 = fsub fast float %9448, %9614
  %9617 = fdiv fast float %9616, %9615
  %9618 = call float @dx.op.unary.f32(i32 7, float %9617)  ; Saturate(value)
  %9619 = fmul fast float %9618, 2.000000e+00
  %9620 = fsub fast float 3.000000e+00, %9619
  %9621 = fsub fast float %9597, %9607
  %9622 = fmul fast float %9618, %9618
  %9623 = fmul fast float %9622, %9621
  %9624 = fmul fast float %9623, %9620
  %9625 = fadd fast float %9624, %9607
  br label %9626

; <label>:9626                                    ; preds = %9608, %9606
  %9627 = phi float [ %9625, %9608 ], [ %9607, %9606 ]
  %9628 = call float @dx.op.binary.f32(i32 35, float %9597, float %9627)  ; FMax(a,b)
  %9629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.i32 %9629, 2
  %9631 = and i32 %9630, 1
  %9632 = icmp eq i32 %9631, 0
  %9633 = fcmp fast une float %9628, 1.000000e+00
  %9634 = and i1 %9633, %9632
  br i1 %9634, label %9635, label %9654

; <label>:9635                                    ; preds = %9626
  %9636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9315, float %9316, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9637 = extractvalue %dx.types.ResRet.f32 %9636, 0
  %9638 = extractvalue %dx.types.ResRet.f32 %9636, 1
  %9639 = extractvalue %dx.types.ResRet.f32 %9636, 2
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9642 = fmul fast float %9641, %9637
  %9643 = fmul fast float %9641, %9638
  %9644 = fmul fast float %9641, %9639
  %9645 = fcmp fast ogt float %9597, 0x3FEFFF2E40000000
  %9646 = fsub fast float 1.000000e+00, %9628
  %9647 = fsub fast float 1.000000e+00, %9597
  %9648 = fdiv fast float %9646, %9647
  %9649 = call float @dx.op.unary.f32(i32 7, float %9648)  ; Saturate(value)
  %9650 = select i1 %9645, float 0.000000e+00, float %9649
  %9651 = fmul fast float %9642, %9650
  %9652 = fmul fast float %9643, %9650
  %9653 = fmul fast float %9644, %9650
  br label %9654

; <label>:9654                                    ; preds = %9635, %9626
  %9655 = phi float [ 0.000000e+00, %9626 ], [ %9651, %9635 ]
  %9656 = phi float [ 0.000000e+00, %9626 ], [ %9652, %9635 ]
  %9657 = phi float [ 0.000000e+00, %9626 ], [ %9653, %9635 ]
  %9658 = fmul fast float %9655, %8228
  %9659 = fmul fast float %9656, %8230
  %9660 = fmul fast float %9657, %8232
  %9661 = fmul fast float %9628, %9290
  %9662 = call float @dx.op.dot3.f32(i32 55, float %9628, float %9628, float %9628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9663 = call float @dx.op.dot3.f32(i32 55, float %9658, float %9659, float %9660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9664 = select i1 %223, float %9662, float %9628
  %9665 = select i1 %223, float 1.000000e+00, float %9628
  %9666 = select i1 %223, float %9663, float %9658
  %9667 = select i1 %223, float 0.000000e+00, float %9659
  %9668 = select i1 %223, float 0.000000e+00, float %9660
  %9669 = fmul fast float %9664, %9302
  %9670 = fmul fast float %9664, %9303
  %9671 = fmul fast float %9665, %9304
  %9672 = fadd fast float %9669, %9666
  %9673 = fadd fast float %9670, %9667
  %9674 = fadd fast float %9668, %9671
  %9675 = fmul fast float %9664, %9305
  %9676 = fmul fast float %9664, %9306
  %9677 = fmul fast float %9665, %9307
  br label %9678

; <label>:9678                                    ; preds = %9654, %9311, %9280, %8512
  %9679 = phi float [ %8517, %8512 ], [ %9302, %9280 ], [ %9672, %9654 ], [ %9302, %9311 ]
  %9680 = phi float [ %8518, %8512 ], [ %9303, %9280 ], [ %9673, %9654 ], [ %9303, %9311 ]
  %9681 = phi float [ %8519, %8512 ], [ %9304, %9280 ], [ %9674, %9654 ], [ %9304, %9311 ]
  %9682 = phi float [ %8520, %8512 ], [ %9305, %9280 ], [ %9675, %9654 ], [ %9305, %9311 ]
  %9683 = phi float [ %8521, %8512 ], [ %9306, %9280 ], [ %9676, %9654 ], [ %9306, %9311 ]
  %9684 = phi float [ %8522, %8512 ], [ %9307, %9280 ], [ %9677, %9654 ], [ %9307, %9311 ]
  %9685 = phi float [ %8523, %8512 ], [ %9290, %9280 ], [ %9661, %9654 ], [ %9290, %9311 ]
  %9686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9687 = extractvalue %dx.types.CBufRet.f32 %9686, 2
  %9688 = extractvalue %dx.types.CBufRet.f32 %9686, 3
  %9689 = fmul fast float %9687, %102
  %9690 = fmul fast float %9688, %103
  %9691 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9692 = call float @dx.op.unary.f32(i32 7, float %9690)  ; Saturate(value)
  %9693 = select i1 %8254, i32 2, i32 0
  %9694 = or i32 %9693, 1
  %9695 = uitofp i32 %9694 to float
  %9696 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9691, float %9692, float %9695, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9697 = extractvalue %dx.types.ResRet.f32 %9696, 0
  %9698 = extractvalue %dx.types.ResRet.f32 %9696, 1
  %9699 = extractvalue %dx.types.ResRet.f32 %9696, 2
  %9700 = extractvalue %dx.types.ResRet.f32 %9696, 3
  %9701 = add nuw nsw i32 %9693, 2
  %9702 = uitofp i32 %9701 to float
  %9703 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9691, float %9692, float %9702, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9704 = extractvalue %dx.types.ResRet.f32 %9703, 0
  %9705 = extractvalue %dx.types.ResRet.f32 %9703, 1
  %9706 = extractvalue %dx.types.ResRet.f32 %9703, 2
  %9707 = extractvalue %dx.types.ResRet.f32 %9703, 3
  %9708 = call float @dx.op.binary.f32(i32 35, float %9698, float %9699)  ; FMax(a,b)
  %9709 = call float @dx.op.binary.f32(i32 35, float %9697, float %9708)  ; FMax(a,b)
  %9710 = call float @dx.op.binary.f32(i32 35, float %9709, float %9700)  ; FMax(a,b)
  %9711 = call float @dx.op.binary.f32(i32 36, float %9705, float %9706)  ; FMin(a,b)
  %9712 = call float @dx.op.binary.f32(i32 36, float %9704, float %9711)  ; FMin(a,b)
  %9713 = call float @dx.op.binary.f32(i32 36, float %9712, float %9707)  ; FMin(a,b)
  %9714 = fmul fast float %9710, 2.550000e+02
  %9715 = fadd fast float %9714, 0x3F70101020000000
  %9716 = fptoui float %9715 to i32
  %9717 = fmul fast float %9713, 2.550000e+02
  %9718 = fadd fast float %9717, 0x3F70101020000000
  %9719 = fptoui float %9718 to i32
  %9720 = icmp ult i32 %9716, %9719
  br i1 %9720, label %9721, label %9890

; <label>:9721                                    ; preds = %9678
  %9722 = fcmp fast ogt float %92, 9.843750e-01
  %9723 = fadd fast float %8516, -4.000000e+00
  %9724 = select i1 %9722, float -4.000000e+00, float %9723
  %9725 = call float @dx.op.binary.f32(i32 35, float %9724, float 0.000000e+00)  ; FMax(a,b)
  %9726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9727 = extractvalue %dx.types.CBufRet.f32 %9726, 0
  %9728 = fadd fast float %9727, %9725
  %9729 = extractvalue %dx.types.CBufRet.f32 %9726, 2
  %9730 = fmul fast float %9728, %9729
  %9731 = call float @dx.op.unary.f32(i32 23, float %9730)  ; Log(value)
  %9732 = extractvalue %dx.types.CBufRet.f32 %9726, 3
  %9733 = fmul fast float %9732, %9731
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 2
  %9736 = fmul fast float %9733, %9735
  %9737 = call float @dx.op.unary.f32(i32 7, float %9736)  ; Saturate(value)
  %9738 = uitofp i32 %9716 to float
  %9739 = uitofp i32 %9719 to float
  %9740 = fadd fast float %9738, 5.000000e-01
  %9741 = fadd fast float %9739, 5.000000e-01
  %9742 = fmul fast float %9735, %9740
  %9743 = fmul fast float %9735, %9741
  %9744 = fadd fast float %9742, 0x3F0FFB4800000000
  %9745 = fadd fast float %9743, 0xBF0FFB4800000000
  %9746 = call float @dx.op.binary.f32(i32 35, float %9737, float %9744)  ; FMax(a,b)
  %9747 = call float @dx.op.binary.f32(i32 36, float %9746, float %9745)  ; FMin(a,b)
  %9748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9749 = extractvalue %dx.types.CBufRet.f32 %9748, 1
  %9750 = extractvalue %dx.types.CBufRet.f32 %9748, 2
  %9751 = extractvalue %dx.types.CBufRet.f32 %9748, 0
  %9752 = select i1 %8254, float %9751, float 0.000000e+00
  %9753 = fmul fast float %9749, %9747
  %9754 = fadd fast float %9752, %9753
  %9755 = fadd fast float %9752, %9750
  %9756 = fsub fast float %9749, %9750
  %9757 = fadd fast float %9756, %9752
  %9758 = call float @dx.op.binary.f32(i32 35, float %9754, float %9755)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 36, float %9758, float %9757)  ; FMin(a,b)
  %9760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9691, float %9692, float %9759, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9761 = extractvalue %dx.types.ResRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.ResRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.ResRet.f32 %9760, 2
  %9764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9765 = extractvalue %dx.types.CBufRet.i32 %9764, 0
  %9766 = extractvalue %dx.types.CBufRet.i32 %9764, 1
  %9767 = uitofp i32 %9765 to float
  %9768 = uitofp i32 %9766 to float
  %9769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9770 = extractvalue %dx.types.CBufRet.f32 %9769, 0
  %9771 = extractvalue %dx.types.CBufRet.f32 %9769, 1
  %9772 = fmul fast float %9767, %9691
  %9773 = fmul fast float %9768, %9692
  %9774 = fadd fast float %9772, -5.000000e-01
  %9775 = fadd fast float %9773, -5.000000e-01
  %9776 = call float @dx.op.unary.f32(i32 22, float %9774)  ; Frc(value)
  %9777 = call float @dx.op.unary.f32(i32 22, float %9775)  ; Frc(value)
  %9778 = fmul fast float %9776, %9776
  %9779 = fmul fast float %9778, %9776
  %9780 = fsub fast float 3.000000e+00, %9776
  %9781 = fmul fast float %9778, %9780
  %9782 = fmul fast float %9776, 3.000000e+00
  %9783 = fmul fast float %9779, 3.000000e+00
  %9784 = fmul fast float %9778, 6.000000e+00
  %9785 = fsub fast float %9783, %9784
  %9786 = fadd fast float %9785, 4.000000e+00
  %9787 = fmul fast float %9786, 0x3FC5555560000000
  %9788 = fmul fast float %9779, -3.000000e+00
  %9789 = fadd fast float %9778, %9776
  %9790 = fmul fast float %9789, 3.000000e+00
  %9791 = fadd fast float %9788, 1.000000e+00
  %9792 = fadd fast float %9791, %9790
  %9793 = fmul fast float %9779, 0x3FC5555560000000
  %9794 = fmul fast float %9777, %9777
  %9795 = fmul fast float %9794, %9777
  %9796 = fsub fast float 3.000000e+00, %9777
  %9797 = fmul fast float %9794, %9796
  %9798 = fmul fast float %9777, 3.000000e+00
  %9799 = fmul fast float %9795, 3.000000e+00
  %9800 = fmul fast float %9794, 6.000000e+00
  %9801 = fsub fast float %9799, %9800
  %9802 = fadd fast float %9801, 4.000000e+00
  %9803 = fmul fast float %9802, 0x3FC5555560000000
  %9804 = fmul fast float %9795, -3.000000e+00
  %9805 = fadd fast float %9794, %9777
  %9806 = fmul fast float %9805, 3.000000e+00
  %9807 = fadd fast float %9804, 1.000000e+00
  %9808 = fadd fast float %9807, %9806
  %9809 = fmul fast float %9795, 0x3FC5555560000000
  %9810 = fadd fast float %9776, 1.000000e+00
  %9811 = fsub fast float 1.000000e+00, %9782
  %9812 = fadd fast float %9811, %9781
  %9813 = fadd fast float %9812, %9786
  %9814 = fmul fast float %9813, 0x3FC5555560000000
  %9815 = fdiv fast float %9787, %9814
  %9816 = fsub fast float %9810, %9815
  %9817 = fsub fast float 1.000000e+00, %9776
  %9818 = fadd fast float %9792, %9779
  %9819 = fmul fast float %9818, 0x3FC5555560000000
  %9820 = fdiv fast float %9793, %9819
  %9821 = fadd fast float %9817, %9820
  %9822 = fadd fast float %9777, 1.000000e+00
  %9823 = fsub fast float 1.000000e+00, %9798
  %9824 = fadd fast float %9823, %9797
  %9825 = fadd fast float %9824, %9802
  %9826 = fmul fast float %9825, 0x3FC5555560000000
  %9827 = fdiv fast float %9803, %9826
  %9828 = fsub fast float %9822, %9827
  %9829 = fsub fast float 1.000000e+00, %9777
  %9830 = fadd fast float %9808, %9795
  %9831 = fmul fast float %9830, 0x3FC5555560000000
  %9832 = fdiv fast float %9809, %9831
  %9833 = fadd fast float %9832, %9829
  %9834 = fmul fast float %9816, %9770
  %9835 = fsub fast float %9691, %9834
  %9836 = fmul fast float %9821, %9770
  %9837 = fadd fast float %9836, %9691
  %9838 = fmul fast float %9833, %9771
  %9839 = fadd fast float %9838, %9692
  %9840 = fmul fast float %9828, %9771
  %9841 = fsub fast float %9692, %9840
  %9842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9835, float %9841, float %9759, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9843 = extractvalue %dx.types.ResRet.f32 %9842, 0
  %9844 = extractvalue %dx.types.ResRet.f32 %9842, 1
  %9845 = extractvalue %dx.types.ResRet.f32 %9842, 2
  %9846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9837, float %9841, float %9759, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9847 = extractvalue %dx.types.ResRet.f32 %9846, 0
  %9848 = extractvalue %dx.types.ResRet.f32 %9846, 1
  %9849 = extractvalue %dx.types.ResRet.f32 %9846, 2
  %9850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9835, float %9839, float %9759, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9851 = extractvalue %dx.types.ResRet.f32 %9850, 0
  %9852 = extractvalue %dx.types.ResRet.f32 %9850, 1
  %9853 = extractvalue %dx.types.ResRet.f32 %9850, 2
  %9854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9837, float %9839, float %9759, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9855 = extractvalue %dx.types.ResRet.f32 %9854, 0
  %9856 = extractvalue %dx.types.ResRet.f32 %9854, 1
  %9857 = extractvalue %dx.types.ResRet.f32 %9854, 2
  %9858 = fsub fast float %9851, %9843
  %9859 = fsub fast float %9852, %9844
  %9860 = fsub fast float %9853, %9845
  %9861 = fmul fast float %9858, %9831
  %9862 = fmul fast float %9859, %9831
  %9863 = fmul fast float %9860, %9831
  %9864 = fadd fast float %9861, %9843
  %9865 = fadd fast float %9862, %9844
  %9866 = fadd fast float %9863, %9845
  %9867 = fsub fast float %9855, %9847
  %9868 = fsub fast float %9856, %9848
  %9869 = fsub fast float %9857, %9849
  %9870 = fmul fast float %9867, %9831
  %9871 = fmul fast float %9868, %9831
  %9872 = fmul fast float %9869, %9831
  %9873 = fsub fast float %9847, %9864
  %9874 = fadd fast float %9873, %9870
  %9875 = fsub fast float %9848, %9865
  %9876 = fadd fast float %9875, %9871
  %9877 = fsub fast float %9849, %9866
  %9878 = fadd fast float %9877, %9872
  %9879 = fmul fast float %9874, %9819
  %9880 = fmul fast float %9876, %9819
  %9881 = fmul fast float %9878, %9819
  %9882 = fadd fast float %9879, %9864
  %9883 = fadd fast float %9880, %9865
  %9884 = fadd fast float %9881, %9866
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9887 = fmul fast float %9882, %9886
  %9888 = fmul fast float %9883, %9886
  %9889 = fmul fast float %9884, %9886
  br label %9890

; <label>:9890                                    ; preds = %9721, %9678
  %9891 = phi float [ %9761, %9721 ], [ 1.000000e+00, %9678 ]
  %9892 = phi float [ %9762, %9721 ], [ 1.000000e+00, %9678 ]
  %9893 = phi float [ %9763, %9721 ], [ 1.000000e+00, %9678 ]
  %9894 = phi float [ %9887, %9721 ], [ 0.000000e+00, %9678 ]
  %9895 = phi float [ %9888, %9721 ], [ 0.000000e+00, %9678 ]
  %9896 = phi float [ %9889, %9721 ], [ 0.000000e+00, %9678 ]
  %9897 = fmul fast float %9894, %8228
  %9898 = fmul fast float %9895, %8230
  %9899 = fmul fast float %9896, %8232
  %9900 = fmul fast float %9891, %9685
  %9901 = call float @dx.op.dot3.f32(i32 55, float %9891, float %9892, float %9893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9902 = call float @dx.op.dot3.f32(i32 55, float %9897, float %9898, float %9899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9903 = select i1 %223, float %9901, float %9891
  %9904 = select i1 %223, float %9901, float %9892
  %9905 = select i1 %223, float 1.000000e+00, float %9893
  %9906 = select i1 %223, float %9902, float %9897
  %9907 = select i1 %223, float 0.000000e+00, float %9898
  %9908 = select i1 %223, float 0.000000e+00, float %9899
  %9909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9910 = extractvalue %dx.types.CBufRet.i32 %9909, 3
  %9911 = and i32 %9910, 3
  %9912 = icmp ne i32 %9911, 0
  %9913 = and i32 %9910, 4
  %9914 = icmp ne i32 %9913, 0
  %9915 = and i1 %9912, %9914
  %9916 = and i1 %223, %9915
  br i1 %9916, label %9917, label %9923

; <label>:9917                                    ; preds = %9890
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 1
  %9920 = fadd fast float %9900, -1.000000e+00
  %9921 = fmul fast float %9919, %9920
  %9922 = fadd fast float %9921, 1.000000e+00
  br label %9923

; <label>:9923                                    ; preds = %9917, %9890
  %9924 = phi float [ %9922, %9917 ], [ %9900, %9890 ]
  %9925 = fadd fast float %9682, %9679
  %9926 = fmul fast float %9903, %9925
  %9927 = fadd fast float %9926, %9906
  %9928 = fadd fast float %9683, %9680
  %9929 = fmul fast float %9904, %9928
  %9930 = fadd fast float %9929, %9907
  %9931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9932 = extractvalue %dx.types.CBufRet.f32 %9931, 0
  br i1 %223, label %9933, label %9948

; <label>:9933                                    ; preds = %9923
  %9934 = fadd fast float %9927, %9930
  %9935 = fmul fast float %9932, %9934
  %9936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9937 = extractvalue %dx.types.CBufRet.f32 %9936, 3
  %9938 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %9939 = fsub fast float %8241, %8235
  %9940 = fadd fast float %9939, %8242
  %9941 = fsub fast float %9940, %9938
  %9942 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %9943 = fmul fast float %9941, %9942
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = fsub fast float %9944, %9937
  %9946 = fmul fast float %9945, %9924
  %9947 = fadd fast float %9946, %9937
  br label %9974

; <label>:9948                                    ; preds = %9923
  %9949 = fadd fast float %9684, %9681
  %9950 = fmul fast float %9905, %9949
  %9951 = fadd fast float %9950, %9908
  %9952 = fmul fast float %9932, %9927
  %9953 = fmul fast float %9932, %9930
  %9954 = fmul fast float %9932, %9951
  %9955 = call float @dx.op.binary.f32(i32 35, float %9953, float %9954)  ; FMax(a,b)
  %9956 = call float @dx.op.binary.f32(i32 35, float %9952, float %9955)  ; FMax(a,b)
  %9957 = call float @dx.op.binary.f32(i32 35, float %8230, float %8232)  ; FMax(a,b)
  %9958 = call float @dx.op.binary.f32(i32 35, float %8228, float %9957)  ; FMax(a,b)
  %9959 = call float @dx.op.binary.f32(i32 35, float %9956, float %9958)  ; FMax(a,b)
  %9960 = fcmp fast ugt float %9959, 0x3F10000000000000
  br i1 %9960, label %9962, label %9961

; <label>:9961                                    ; preds = %9948
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9962

; <label>:9962                                    ; preds = %9961, %9948
  %9963 = add i32 %56, 356
  %9964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9963, i32 undef)  ; BufferLoad(srv,index,wot)
  %9965 = extractvalue %dx.types.ResRet.i32 %9964, 0
  %9966 = and i32 %9965, 32
  %9967 = icmp eq i32 %9966, 0
  br i1 %9967, label %9974, label %9968

; <label>:9968                                    ; preds = %9962
  %9969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9970 = extractvalue %dx.types.CBufRet.f32 %9969, 0
  %9971 = fmul fast float %9970, 0x3FE99999A0000000
  %9972 = fadd fast float %9970, %9952
  %9973 = fadd fast float %9971, %9954
  br label %9974

; <label>:9974                                    ; preds = %9968, %9962, %9933
  %9975 = phi float [ 1.000000e+00, %9933 ], [ %8230, %9968 ], [ %8230, %9962 ]
  %9976 = phi float [ 1.000000e+00, %9933 ], [ %8232, %9968 ], [ %8232, %9962 ]
  %9977 = phi float [ %9935, %9933 ], [ %9972, %9968 ], [ %9952, %9962 ]
  %9978 = phi float [ %9947, %9933 ], [ %9953, %9968 ], [ %9953, %9962 ]
  %9979 = phi float [ 1.000000e+00, %9933 ], [ %9973, %9968 ], [ %9954, %9962 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9980 = call float @dx.op.binary.f32(i32 36, float %9977, float 3.225500e+04)  ; FMin(a,b)
  %9981 = call float @dx.op.binary.f32(i32 36, float %9978, float 3.225500e+04)  ; FMin(a,b)
  %9982 = call float @dx.op.binary.f32(i32 36, float %9979, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9980)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9981)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9982)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9983 = call float @dx.op.binary.f32(i32 36, float %8228, float 3.225500e+04)  ; FMin(a,b)
  %9984 = call float @dx.op.binary.f32(i32 36, float %9975, float 3.225500e+04)  ; FMin(a,b)
  %9985 = call float @dx.op.binary.f32(i32 36, float %9976, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9983)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9984)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9985)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[47 x i32] [i32 45, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !95}
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
!91 = !{!92, !93}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!93 = !{i32 1, !"SV_Target", i8 9, i8 16, !94, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!94 = !{i32 1}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !103, i64 0}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

