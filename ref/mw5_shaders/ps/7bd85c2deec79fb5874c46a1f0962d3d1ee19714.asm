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
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
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
; shader hash: 5ebea324789e20a3a93ebb67b4b628af
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
; OBJECT_POSITION          0                 linear       
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
; Number of inputs: 48, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 44, 46, 47 }
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
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %103 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %104 = bitcast float %103 to i32
  %105 = ashr i32 %104, 1
  %106 = sub nsw i32 1597250115, %105
  %107 = bitcast i32 %106 to float
  %108 = fmul fast float %107, %80
  %109 = fmul fast float %107, %81
  %110 = fmul fast float %107, %82
  %111 = fmul fast float %81, %78
  %112 = fmul fast float %82, %77
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %82, %76
  %115 = fmul fast float %80, %78
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %80, %77
  %118 = fmul fast float %81, %76
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %113, %79
  %121 = fmul fast float %116, %79
  %122 = fmul fast float %119, %79
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %126 = fmul fast float %101, 2.000000e+00
  %127 = fmul fast float %126, %124
  %128 = fmul fast float %102, 2.000000e+00
  %129 = fmul fast float %128, %125
  %130 = fsub fast float 1.000000e+00, %127
  %131 = fsub fast float 1.000000e+00, %129
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fmul fast float %130, %133
  %137 = fmul fast float %130, %134
  %138 = fmul fast float %130, %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %131, %140
  %144 = fmul fast float %131, %141
  %145 = fmul fast float %131, %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %150, %136
  %152 = fadd fast float %144, %148
  %153 = fadd fast float %152, %137
  %154 = fadd fast float %145, %149
  %155 = fadd fast float %154, %138
  %156 = fmul fast float %151, %92
  %157 = fmul fast float %153, %92
  %158 = fmul fast float %155, %92
  %159 = fmul fast float %101, 5.000000e-01
  %160 = fmul fast float %102, 5.000000e-01
  %161 = fptosi float %159 to i32
  %162 = fptosi float %160 to i32
  %163 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %161, i32 %162, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = lshr i32 %164, 18
  %166 = uitofp i32 %165 to float
  %167 = fmul fast float %166, 0x3F4C00EBA0000000
  %168 = call float @dx.op.unary.f32(i32 21, float %167)  ; Exp(value)
  %169 = fadd fast float %168, -1.000000e+00
  %170 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %171 = extractvalue %dx.types.Dimensions %170, 0
  %172 = sitofp i32 %171 to float
  %173 = extractvalue %dx.types.Dimensions %170, 1
  %174 = sitofp i32 %173 to float
  %175 = fcmp fast oge float %159, %172
  %176 = fcmp fast oge float %160, %174
  %177 = or i1 %175, %176
  %178 = select i1 %177, float 0x4197782600000000, float %169
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %182 = fmul fast float %180, %101
  %183 = fmul fast float %181, %102
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 114688
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float %182, float 0.000000e+00
  %189 = select i1 %187, float %183, float 0.000000e+00
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, 2.550000e+02
  %193 = fptoui float %192 to i32
  %194 = select i1 %187, i32 %193, i32 0
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %198 = and i32 %197, 3
  %199 = icmp ne i32 %198, 0
  %200 = and i32 %197, 4
  %201 = icmp ne i32 %200, 0
  %202 = and i1 %199, %201
  br i1 %202, label %203, label %214

; <label>:203                                     ; preds = %0
  %204 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %205 = fmul fast float %204, %102
  %206 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %207 = fmul fast float %206, %101
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %207, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fsub fast float 1.000000e+00, %209
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = fcmp fast olt float %210, %212
  br label %217

; <label>:214                                     ; preds = %0
  %215 = icmp eq i32 %200, 0
  %216 = and i1 %199, %215
  br label %217

; <label>:217                                     ; preds = %214, %203
  %218 = phi i1 [ %213, %203 ], [ %216, %214 ]
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fmul fast float %220, 0x3FE3C6EF40000000
  %222 = frem fast float %101, 2.560000e+02
  %223 = frem fast float %102, 2.560000e+02
  %224 = fptoui float %222 to i32
  %225 = fptoui float %223 to i32
  %226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fadd fast float %227, %221
  %229 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %230 = add i32 %54, 156
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %54, 216
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %244, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %244, 16
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = add i32 %54, 36
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %54, 288
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = add i32 %54, 172
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %54, 232
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %54, 52
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %54, 304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %54, 188
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %54, 248
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %54, 68
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %54, 320
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %54, 204
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %54, 264
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %54, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %54, 336
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %54, 348
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %400, 64
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %400, 128
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %426, label %411

; <label>:411                                     ; preds = %217
  %412 = add i32 %54, 540
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = fmul fast float %421, %85
  %423 = fmul fast float %418, %86
  %424 = fmul fast float %419, %87
  %425 = fmul fast float %420, %88
  br label %426

; <label>:426                                     ; preds = %411, %217
  %427 = phi float [ %88, %217 ], [ %425, %411 ]
  %428 = phi float [ %87, %217 ], [ %424, %411 ]
  %429 = phi float [ %86, %217 ], [ %423, %411 ]
  %430 = phi float [ %85, %217 ], [ %422, %411 ]
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 2
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %454, label %435

; <label>:435                                     ; preds = %426
  %436 = add i32 %54, 44
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %429, float 1.000000e+00
  %442 = add i32 %54, 60
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %428, float 1.000000e+00
  %448 = add i32 %54, 76
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %427, float 1.000000e+00
  br label %454

; <label>:454                                     ; preds = %435, %426
  %455 = phi float [ %427, %426 ], [ %453, %435 ]
  %456 = phi float [ %428, %426 ], [ %447, %435 ]
  %457 = phi float [ %429, %426 ], [ %441, %435 ]
  %458 = lshr i32 %432, 20
  %459 = and i32 %458, 3
  %460 = add nuw nsw i32 %459, 1
  %461 = add i32 %54, 24
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %54, 28
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = or i32 %466, %463
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %1229, label %469

; <label>:469                                     ; preds = %454
  %470 = and i32 %463, 262144
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %58, float 1.000000e+00
  %473 = select i1 %471, float %59, float 0.000000e+00
  %474 = select i1 %471, float %60, float 0.000000e+00
  %475 = select i1 %471, float %61, float 1.000000e+00
  %476 = select i1 %471, float %62, float %83
  %477 = select i1 %471, float %63, float %84
  %478 = add i32 %54, 284
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %482, 0x3F50624DE0000000
  %484 = add i32 %54, 88
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = lshr i32 %486, 24
  %490 = add i32 %54, 292
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 65535
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %492, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = add i32 %54, 32
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 22
  %501 = shl nuw nsw i32 %500, 5
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = shl i32 %499, 4
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 7
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = fmul fast float %510, 1.000000e+03
  %512 = fmul fast float %270, %511
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %260
  %515 = fmul fast float %271, %511
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fadd fast float %516, %262
  %518 = fmul fast float %483, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fmul fast float %519, 0x401921FB60000000
  %521 = fadd fast float %520, %502
  %522 = call float @dx.op.unary.f32(i32 13, float %521)  ; Sin(value)
  %523 = call float @dx.op.unary.f32(i32 12, float %521)  ; Cos(value)
  %524 = fsub fast float -0.000000e+00, %522
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fadd fast float %477, -5.000000e-01
  %527 = fmul fast float %494, %525
  %528 = fmul fast float %496, %526
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fadd fast float %528, 5.000000e-01
  %531 = fmul fast float %505, %529
  %532 = fmul fast float %508, %530
  %533 = fmul fast float %523, %531
  %534 = call float @dx.op.tertiary.f32(i32 46, float %524, float %532, float %533)  ; FMad(a,b,c)
  %535 = fmul fast float %522, %531
  %536 = call float @dx.op.tertiary.f32(i32 46, float %523, float %532, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %514, %534
  %538 = fadd fast float %517, %536
  %539 = icmp ugt i32 %488, 1
  %540 = icmp ugt i32 %486, 33554431
  %541 = or i1 %540, %539
  br i1 %541, label %542, label %567

; <label>:542                                     ; preds = %469
  %543 = add i32 %54, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = fmul fast float %510, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = mul nuw nsw i32 %488, %489
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %549, %551
  %553 = call float @dx.op.unary.f32(i32 27, float %552)  ; Round_ni(value)
  %554 = fptoui float %553 to i32
  %555 = urem i32 %554, %488
  %556 = udiv i32 %554, %489
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %559 = uitofp i32 %555 to float
  %560 = uitofp i32 %556 to float
  %561 = fadd fast float %557, %559
  %562 = fadd fast float %558, %560
  %563 = uitofp i32 %488 to float
  %564 = uitofp i32 %489 to float
  %565 = fdiv fast float %561, %563
  %566 = fdiv fast float %562, %564
  br label %567

; <label>:567                                     ; preds = %542, %469
  %568 = phi float [ %565, %542 ], [ %537, %469 ]
  %569 = phi float [ %566, %542 ], [ %538, %469 ]
  %570 = and i32 %463, 16777216
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %681, label %572

; <label>:572                                     ; preds = %567
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = fadd fast float %574, %156
  %578 = fadd fast float %575, %157
  %579 = fadd fast float %576, %158
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = icmp eq i32 %55, 65535
  br i1 %583, label %678, label %584

; <label>:584                                     ; preds = %572
  %585 = lshr i32 %55, 1
  %586 = shl i32 %585, 2
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %55, 1
  %590 = icmp ne i32 %589, 0
  %591 = lshr i32 %588, 16
  %592 = and i32 %588, 65535
  %593 = select i1 %590, i32 %591, i32 %592
  %594 = icmp eq i32 %593, 65535
  br i1 %594, label %674, label %595

; <label>:595                                     ; preds = %584
  %596 = mul nuw nsw i32 %593, 40
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add nuw nsw i32 %596, 12
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %596, 24
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %596, 36
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fsub fast float %579, %600
  %617 = fmul fast float %613, %614
  %618 = fmul fast float %613, %615
  %619 = fmul fast float %613, %616
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = fmul fast float %625, %605
  %629 = shl i32 %55, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %633, %dx.types.Handle %49, float %634, float %635, float %636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = fadd fast float %643, 5.000000e-01
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fsub fast float %619, %622
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fadd fast float %620, 1.250000e-01
  %657 = fadd fast float %656, %653
  %658 = fadd fast float %657, %647
  %659 = fadd fast float %621, 1.250000e-01
  %660 = fadd fast float %659, %654
  %661 = fadd fast float %660, %648
  %662 = fadd fast float %622, 1.250000e-01
  %663 = fadd fast float %662, %655
  %664 = fadd fast float %663, %649
  %665 = fmul fast float %658, %608
  %666 = fmul fast float %661, %609
  %667 = fmul fast float %664, %610
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %671, %dx.types.Handle %47, float %665, float %666, float %667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  br label %674

; <label>:674                                     ; preds = %595, %584
  %675 = phi float [ %673, %595 ], [ -1.000000e+00, %584 ]
  %676 = fadd fast float %675, %582
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  br label %678

; <label>:678                                     ; preds = %674, %572
  %679 = phi float [ %677, %674 ], [ %582, %572 ]
  %680 = fmul fast float %679, %430
  br label %681

; <label>:681                                     ; preds = %678, %567
  %682 = phi float [ %680, %678 ], [ %430, %567 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 256
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %733, label %687

; <label>:687                                     ; preds = %681
  %688 = add i32 %54, 472
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %98, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = add i32 %54, 100
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = shl i32 %697, 4
  %699 = and i32 %698, 32752
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %697, 7
  %702 = and i32 %701, 32752
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = fsub fast float 1.000000e+00, %682
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %706 = bitcast float %682 to i32
  %707 = sitofp i32 %706 to float
  %708 = fadd fast float %707, 0xC1CFBF8940000000
  %709 = fmul fast float %703, %708
  %710 = fadd fast float %709, 0x41CFBF8940000000
  %711 = fptosi float %710 to i32
  %712 = bitcast i32 %711 to float
  %713 = bitcast float %705 to i32
  %714 = sitofp i32 %713 to float
  %715 = fadd fast float %714, 0xC1CFBF8940000000
  %716 = fmul fast float %715, %703
  %717 = fadd fast float %716, 0x41CFBF8940000000
  %718 = fptosi float %717 to i32
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %712, %700
  %721 = fmul fast float %719, %700
  %722 = fsub fast float %705, %720
  %723 = fadd fast float %721, %705
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %726 = fsub fast float %694, %724
  %727 = fsub fast float %725, %724
  %728 = bitcast float %727 to i32
  %729 = sub nsw i32 2129859010, %728
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %730, %726
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  br label %733

; <label>:733                                     ; preds = %687, %681
  %734 = phi float [ %732, %687 ], [ %682, %681 ]
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 128
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %755, label %739

; <label>:739                                     ; preds = %733
  %740 = add i32 %54, 456
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %742, 0
  %744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %744, %dx.types.Handle %98, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 524288
  %750 = icmp ne i32 %749, 0
  %751 = fcmp fast ogt float %746, 0x3FE0101020000000
  %752 = select i1 %751, float 1.000000e+00, float 0.000000e+00
  %753 = select i1 %750, float %752, float %746
  %754 = fmul fast float %753, %734
  br label %755

; <label>:755                                     ; preds = %739, %733
  %756 = phi float [ %754, %739 ], [ %734, %733 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 16
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %959, label %761

; <label>:761                                     ; preds = %755
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %54, 408
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %97, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = and i32 %763, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %763, 8
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %773, %775
  %780 = fadd fast float %779, %778
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 512
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

; <label>:786                                     ; preds = %761
  %787 = add i32 %54, 492
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %98, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %786, %761
  %795 = phi float [ %793, %786 ], [ 1.000000e+00, %761 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 33554432
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %906, label %800

; <label>:800                                     ; preds = %794
  %801 = add i32 %54, 224
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 65535
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = lshr i32 %803, 16
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = add i32 %54, 228
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 24
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = and i32 %814, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = lshr i32 %814, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %814, 16
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = add i32 %54, 220
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = lshr i32 %831, 24
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = and i32 %831, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %831, 8
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %831, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = bitcast float %770 to i32
  %847 = ashr i32 %846, 1
  %848 = sub nsw i32 1597463174, %847
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %770, 5.000000e-01
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %851, %850
  %853 = fsub fast float 1.500000e+00, %852
  %854 = fmul fast float %849, %770
  %855 = fmul fast float %854, %853
  %856 = bitcast float %771 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %771, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %771
  %865 = fmul fast float %864, %863
  %866 = bitcast float %772 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %772, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %772
  %875 = fmul fast float %874, %873
  %876 = fsub fast float %855, %837
  %877 = fsub fast float %865, %841
  %878 = fsub fast float %875, %845
  %879 = fmul fast float %876, %805
  %880 = fmul fast float %877, %807
  %881 = fmul fast float %878, %812
  %882 = fadd fast float %879, %820
  %883 = fadd fast float %880, %824
  %884 = fadd fast float %881, %828
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fmul fast float %887, %887
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fsub fast float %890, %772
  %894 = fmul fast float %891, %795
  %895 = fmul fast float %892, %795
  %896 = fmul fast float %893, %795
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %817, %781
  %901 = fsub fast float %900, %834
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float %902, %781
  %904 = fmul fast float %903, %795
  %905 = fadd fast float %904, %781
  br label %959

; <label>:906                                     ; preds = %794
  %907 = and i32 %797, 134217728
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %943, label %909

; <label>:909                                     ; preds = %906
  %910 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %912 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fmul fast float %913, %795
  %917 = fmul fast float %914, %795
  %918 = fmul fast float %915, %795
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = fadd fast float %918, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = fmul fast float %919, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %922
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %922
  %930 = fmul fast float %920, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %923
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %923
  %935 = fmul fast float %921, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %924
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %924
  %940 = fmul fast float %929, %929
  %941 = fmul fast float %934, %934
  %942 = fmul fast float %939, %939
  br label %959

; <label>:943                                     ; preds = %906
  %944 = fmul fast float %247, %247
  %945 = fmul fast float %251, %251
  %946 = fmul fast float %255, %255
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fmul fast float %795, %947
  %951 = fmul fast float %795, %948
  %952 = fmul fast float %795, %949
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  %958 = fmul fast float %955, %772
  br label %959

; <label>:959                                     ; preds = %943, %909, %800, %755
  %960 = phi float [ %905, %800 ], [ %781, %909 ], [ %781, %943 ], [ 0x3FA23C0BE0000000, %755 ]
  %961 = phi float [ %897, %800 ], [ %940, %909 ], [ %956, %943 ], [ 1.000000e+00, %755 ]
  %962 = phi float [ %898, %800 ], [ %941, %909 ], [ %957, %943 ], [ 1.000000e+00, %755 ]
  %963 = phi float [ %899, %800 ], [ %942, %909 ], [ %958, %943 ], [ 1.000000e+00, %755 ]
  %964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.i32 %964, 1
  %966 = and i32 %965, 1
  %967 = icmp ne i32 %966, 0
  %968 = add i32 %54, 356
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 32
  %972 = icmp ne i32 %971, 0
  %973 = and i1 %967, %972
  %974 = select i1 %973, float 1.000000e+00, float %961
  %975 = select i1 %973, float 0x3FD3333340000000, float %962
  %976 = select i1 %973, float 0x3FD3333340000000, float %963
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1053, label %981

; <label>:981                                     ; preds = %959
  %982 = add i32 %54, 92
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %54, 424
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %97, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = and i32 %984, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %984, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = lshr i32 %984, 16
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101000000000
  %1004 = fmul fast float %991, %996
  %1005 = fadd fast float %1004, %999
  %1006 = fmul fast float %1005, 0x3F70101000000000
  %1007 = fadd fast float %992, -5.000000e-01
  %1008 = fadd fast float %994, -5.000000e-01
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1008, %1003
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fmul fast float %1011, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fadd fast float %1014, %1016
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = fsub fast float %1014, %1016
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float 1.000000e+00, %1021
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float %1022, %1023
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1020, float %1024, float %1018, float %1020, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1018, %1026
  %1028 = fmul fast float %1020, %1026
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 67108864
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1049, label %1033

; <label>:1033                                    ; preds = %981
  %1034 = add i32 %54, 280
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fsub fast float %1006, %1044
  %1046 = fmul fast float %1045, %1038
  %1047 = fadd fast float %1046, %1042
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1033, %981
  %1050 = phi float [ %1048, %1033 ], [ %1006, %981 ]
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  %1052 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  br label %1053

; <label>:1053                                    ; preds = %1049, %959
  %1054 = phi float [ %1050, %1049 ], [ 0x3FD6666660000000, %959 ]
  %1055 = phi float [ %1051, %1049 ], [ 0.000000e+00, %959 ]
  %1056 = phi float [ %1052, %1049 ], [ 0.000000e+00, %959 ]
  %1057 = phi float [ %993, %1049 ], [ 1.000000e+00, %959 ]
  %1058 = add i32 %54, 160
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 22
  %1062 = shl nuw nsw i32 %1061, 5
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 64
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1101, label %1068

; <label>:1068                                    ; preds = %1053
  %1069 = add i32 %54, 440
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 131072
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %97, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = fmul fast float %1079, %235
  %1083 = fmul fast float %1080, %238
  %1084 = fmul fast float %1081, %241
  br i1 %1077, label %1091, label %1085

; <label>:1085                                    ; preds = %1068
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fmul fast float %1087, %1082
  %1089 = fmul fast float %1087, %1083
  %1090 = fmul fast float %1087, %1084
  br label %1091

; <label>:1091                                    ; preds = %1085, %1068
  %1092 = phi float [ %1088, %1085 ], [ %1082, %1068 ]
  %1093 = phi float [ %1089, %1085 ], [ %1083, %1068 ]
  %1094 = phi float [ %1090, %1085 ], [ %1084, %1068 ]
  %1095 = fmul fast float %1092, %1063
  %1096 = select i1 %218, float %1095, float %1092
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1093, float %1094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = select i1 %218, float 0.000000e+00, float %1092
  %1099 = select i1 %218, float %1097, float %1093
  %1100 = select i1 %218, float 0.000000e+00, float %1094
  br label %1101

; <label>:1101                                    ; preds = %1091, %1053
  %1102 = phi float [ %1098, %1091 ], [ 0.000000e+00, %1053 ]
  %1103 = phi float [ %1099, %1091 ], [ 0.000000e+00, %1053 ]
  %1104 = phi float [ %1100, %1091 ], [ 0.000000e+00, %1053 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 1024
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1139, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = add i32 %54, 152
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F70101020000000
  %1116 = lshr i32 %1112, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1112, 16
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = fmul fast float %1115, %1115
  %1125 = fmul fast float %1119, %1119
  %1126 = fmul fast float %1123, %1123
  %1127 = add i32 %54, 508
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %98, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  %1138 = fmul fast float %1126, %1135
  br label %1139

; <label>:1139                                    ; preds = %1109, %1101
  %1140 = phi float [ %1136, %1109 ], [ 0.000000e+00, %1101 ]
  %1141 = phi float [ %1137, %1109 ], [ 0.000000e+00, %1101 ]
  %1142 = phi float [ %1138, %1109 ], [ 0.000000e+00, %1101 ]
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 7
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fmul fast float %1146, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1153
  %1156 = fmul fast float %1147, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1153
  %1158 = fmul fast float %1148, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1153
  %1160 = select i1 %1143, float %1155, float 1.270000e+02
  %1161 = select i1 %1144, float %1157, float 1.270000e+02
  %1162 = select i1 %1145, float %1159, float 1.270000e+02
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 10240
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1211, label %1167

; <label>:1167                                    ; preds = %1139
  %1168 = add i32 %54, 524
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %98, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 3
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 1048576
  %1179 = icmp ne i32 %1178, 0
  %1180 = and i32 %1177, 8192
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1197, label %1182

; <label>:1182                                    ; preds = %1167
  %1183 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1184 = select i1 %1179, float %1183, float %1174
  %1185 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1186 = select i1 %1179, float %1185, float %1174
  %1187 = add i32 %54, 96
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F80101020000000
  %1194 = fmul fast float %1193, %1186
  %1195 = fmul fast float %1193, %1174
  %1196 = fmul fast float %1193, %1184
  br label %1197

; <label>:1197                                    ; preds = %1182, %1167
  %1198 = phi float [ %1194, %1182 ], [ 0.000000e+00, %1167 ]
  %1199 = phi float [ %1195, %1182 ], [ 0.000000e+00, %1167 ]
  %1200 = phi float [ %1196, %1182 ], [ 0.000000e+00, %1167 ]
  %1201 = and i32 %1177, 2048
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1211, label %1203

; <label>:1203                                    ; preds = %1197
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = shl i32 %1205, 4
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = fmul fast float %1208, %1175
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1211

; <label>:1211                                    ; preds = %1203, %1197, %1139
  %1212 = phi float [ %1198, %1203 ], [ %1198, %1197 ], [ 0.000000e+00, %1139 ]
  %1213 = phi float [ %1199, %1203 ], [ %1199, %1197 ], [ 0.000000e+00, %1139 ]
  %1214 = phi float [ %1200, %1203 ], [ %1200, %1197 ], [ 0.000000e+00, %1139 ]
  %1215 = phi float [ %1210, %1203 ], [ 0x3F70101020000000, %1197 ], [ 0x3F70101020000000, %1139 ]
  %1216 = add i32 %54, 96
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1218, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = call float @dx.op.dot3.f32(i32 55, float %974, float %975, float %976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fmul fast float %1223, %1224
  %1226 = fadd fast float %1225, %1220
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  br label %1229

; <label>:1229                                    ; preds = %1211, %454
  %1230 = phi float [ 0.000000e+00, %454 ], [ %1055, %1211 ]
  %1231 = phi float [ 0.000000e+00, %454 ], [ %1056, %1211 ]
  %1232 = phi float [ 0.000000e+00, %454 ], [ %1102, %1211 ]
  %1233 = phi float [ 0.000000e+00, %454 ], [ %1103, %1211 ]
  %1234 = phi float [ 0.000000e+00, %454 ], [ %1104, %1211 ]
  %1235 = phi float [ 0.000000e+00, %454 ], [ %974, %1211 ]
  %1236 = phi float [ 0.000000e+00, %454 ], [ %975, %1211 ]
  %1237 = phi float [ 0.000000e+00, %454 ], [ %976, %1211 ]
  %1238 = phi float [ 0.000000e+00, %454 ], [ %1212, %1211 ]
  %1239 = phi float [ 0.000000e+00, %454 ], [ %1213, %1211 ]
  %1240 = phi float [ 0.000000e+00, %454 ], [ %1214, %1211 ]
  %1241 = phi float [ 0.000000e+00, %454 ], [ %1160, %1211 ]
  %1242 = phi float [ 0.000000e+00, %454 ], [ %1161, %1211 ]
  %1243 = phi float [ 0.000000e+00, %454 ], [ %1162, %1211 ]
  %1244 = phi float [ 0.000000e+00, %454 ], [ %960, %1211 ]
  %1245 = phi float [ 0.000000e+00, %454 ], [ %756, %1211 ]
  %1246 = phi float [ 0.000000e+00, %454 ], [ %1054, %1211 ]
  %1247 = phi float [ 0.000000e+00, %454 ], [ %1057, %1211 ]
  %1248 = phi float [ 0.000000e+00, %454 ], [ %1215, %1211 ]
  %1249 = phi float [ 0.000000e+00, %454 ], [ %1228, %1211 ]
  br i1 %402, label %2287, label %1250

; <label>:1250                                    ; preds = %1229
  %1251 = icmp ult i32 %460, 2
  %1252 = add i32 %54, 40
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %54, 44
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = or i32 %1257, %1254
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %2287, label %1260

; <label>:1260                                    ; preds = %1250
  %1261 = and i32 %1254, 262144
  %1262 = icmp ne i32 %1261, 0
  %1263 = select i1 %1262, float %58, float 1.000000e+00
  %1264 = select i1 %1262, float %59, float 0.000000e+00
  %1265 = select i1 %1262, float %60, float 0.000000e+00
  %1266 = select i1 %1262, float %61, float 1.000000e+00
  %1267 = select i1 %1262, float %62, float %83
  %1268 = select i1 %1262, float %63, float %84
  %1269 = add i32 %54, 300
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 16
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = fmul fast float %1273, 0x3F50624DE0000000
  %1275 = add i32 %54, 104
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 16
  %1279 = and i32 %1278, 255
  %1280 = lshr i32 %1277, 24
  %1281 = add i32 %54, 308
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %54, 48
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 22
  %1292 = shl nuw nsw i32 %1291, 5
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = shl i32 %1290, 4
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1290, 7
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = fmul fast float %1301, 1.000000e+03
  %1303 = fmul fast float %312, %1302
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = fadd fast float %1304, %302
  %1306 = fmul fast float %313, %1302
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = fadd fast float %1307, %304
  %1309 = fmul fast float %1274, %1302
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = fmul fast float %1310, 0x401921FB60000000
  %1312 = fadd fast float %1311, %1293
  %1313 = call float @dx.op.unary.f32(i32 13, float %1312)  ; Sin(value)
  %1314 = call float @dx.op.unary.f32(i32 12, float %1312)  ; Cos(value)
  %1315 = fsub fast float -0.000000e+00, %1313
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fadd fast float %1268, -5.000000e-01
  %1318 = fmul fast float %1285, %1316
  %1319 = fmul fast float %1287, %1317
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1296, %1320
  %1323 = fmul fast float %1299, %1321
  %1324 = fmul fast float %1314, %1322
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1323, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1313, %1322
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1323, float %1326)  ; FMad(a,b,c)
  %1328 = fadd fast float %1305, %1325
  %1329 = fadd fast float %1308, %1327
  %1330 = icmp ugt i32 %1279, 1
  %1331 = icmp ugt i32 %1277, 33554431
  %1332 = or i1 %1331, %1330
  br i1 %1332, label %1333, label %1358

; <label>:1333                                    ; preds = %1260
  %1334 = add i32 %54, 244
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fmul fast float %1301, %1338
  %1340 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1341 = mul nuw nsw i32 %1279, %1280
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1340, %1342
  %1344 = call float @dx.op.unary.f32(i32 27, float %1343)  ; Round_ni(value)
  %1345 = fptoui float %1344 to i32
  %1346 = urem i32 %1345, %1279
  %1347 = udiv i32 %1345, %1280
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1350 = uitofp i32 %1346 to float
  %1351 = uitofp i32 %1347 to float
  %1352 = fadd fast float %1348, %1350
  %1353 = fadd fast float %1349, %1351
  %1354 = uitofp i32 %1279 to float
  %1355 = uitofp i32 %1280 to float
  %1356 = fdiv fast float %1352, %1354
  %1357 = fdiv fast float %1353, %1355
  br label %1358

; <label>:1358                                    ; preds = %1333, %1260
  %1359 = phi float [ %1356, %1333 ], [ %1328, %1260 ]
  %1360 = phi float [ %1357, %1333 ], [ %1329, %1260 ]
  %1361 = and i32 %1254, 16777216
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1472, label %1363

; <label>:1363                                    ; preds = %1358
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1368 = fadd fast float %1365, %156
  %1369 = fadd fast float %1366, %157
  %1370 = fadd fast float %1367, %158
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = icmp eq i32 %55, 65535
  br i1 %1374, label %1469, label %1375

; <label>:1375                                    ; preds = %1363
  %1376 = lshr i32 %55, 1
  %1377 = shl i32 %1376, 2
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %55, 1
  %1381 = icmp ne i32 %1380, 0
  %1382 = lshr i32 %1379, 16
  %1383 = and i32 %1379, 65535
  %1384 = select i1 %1381, i32 %1382, i32 %1383
  %1385 = icmp eq i32 %1384, 65535
  br i1 %1385, label %1465, label %1386

; <label>:1386                                    ; preds = %1375
  %1387 = mul nuw nsw i32 %1384, 40
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = add nuw nsw i32 %1387, 12
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1387, 24
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = add nuw nsw i32 %1387, 36
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fsub fast float %1370, %1391
  %1408 = fmul fast float %1404, %1405
  %1409 = fmul fast float %1404, %1406
  %1410 = fmul fast float %1404, %1407
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = fmul fast float %1416, %1396
  %1420 = shl i32 %55, 2
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = add i32 %1422, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1424, %dx.types.Handle %49, float %1425, float %1426, float %1427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fmul fast float %1431, 1.023000e+03
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fsub fast float %1410, %1413
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fmul fast float %1443, 7.500000e-01
  %1447 = fadd fast float %1411, 1.250000e-01
  %1448 = fadd fast float %1447, %1444
  %1449 = fadd fast float %1448, %1438
  %1450 = fadd fast float %1412, 1.250000e-01
  %1451 = fadd fast float %1450, %1445
  %1452 = fadd fast float %1451, %1439
  %1453 = fadd fast float %1413, 1.250000e-01
  %1454 = fadd fast float %1453, %1446
  %1455 = fadd fast float %1454, %1440
  %1456 = fmul fast float %1449, %1399
  %1457 = fmul fast float %1452, %1400
  %1458 = fmul fast float %1455, %1401
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1462, %dx.types.Handle %47, float %1456, float %1457, float %1458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  br label %1465

; <label>:1465                                    ; preds = %1386, %1375
  %1466 = phi float [ %1464, %1386 ], [ -1.000000e+00, %1375 ]
  %1467 = fadd fast float %1466, %1373
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  br label %1469

; <label>:1469                                    ; preds = %1465, %1363
  %1470 = phi float [ %1468, %1465 ], [ %1373, %1363 ]
  %1471 = fmul fast float %1470, %457
  br label %1472

; <label>:1472                                    ; preds = %1469, %1358
  %1473 = phi float [ %1471, %1469 ], [ %457, %1358 ]
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 256
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1524, label %1478

; <label>:1478                                    ; preds = %1472
  %1479 = add i32 %54, 476
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %98, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = add i32 %54, 116
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = shl i32 %1488, 4
  %1490 = and i32 %1489, 32752
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1488, 7
  %1493 = and i32 %1492, 32752
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = fsub fast float 1.000000e+00, %1473
  %1496 = call float @dx.op.binary.f32(i32 35, float %1495, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1497 = bitcast float %1473 to i32
  %1498 = sitofp i32 %1497 to float
  %1499 = fadd fast float %1498, 0xC1CFBF8940000000
  %1500 = fmul fast float %1494, %1499
  %1501 = fadd fast float %1500, 0x41CFBF8940000000
  %1502 = fptosi float %1501 to i32
  %1503 = bitcast i32 %1502 to float
  %1504 = bitcast float %1496 to i32
  %1505 = sitofp i32 %1504 to float
  %1506 = fadd fast float %1505, 0xC1CFBF8940000000
  %1507 = fmul fast float %1506, %1494
  %1508 = fadd fast float %1507, 0x41CFBF8940000000
  %1509 = fptosi float %1508 to i32
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1503, %1491
  %1512 = fmul fast float %1510, %1491
  %1513 = fsub fast float %1496, %1511
  %1514 = fadd fast float %1512, %1496
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = fsub fast float %1485, %1515
  %1518 = fsub fast float %1516, %1515
  %1519 = bitcast float %1518 to i32
  %1520 = sub nsw i32 2129859010, %1519
  %1521 = bitcast i32 %1520 to float
  %1522 = fmul fast float %1521, %1517
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  br label %1524

; <label>:1524                                    ; preds = %1478, %1472
  %1525 = phi float [ %1523, %1478 ], [ %1473, %1472 ]
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 128
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1546, label %1530

; <label>:1530                                    ; preds = %1524
  %1531 = add i32 %54, 460
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %98, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 524288
  %1541 = icmp ne i32 %1540, 0
  %1542 = fcmp fast ogt float %1537, 0x3FE0101020000000
  %1543 = select i1 %1542, float 1.000000e+00, float 0.000000e+00
  %1544 = select i1 %1541, float %1543, float %1537
  %1545 = fmul fast float %1544, %1525
  br label %1546

; <label>:1546                                    ; preds = %1530, %1524
  %1547 = phi float [ %1545, %1530 ], [ %1525, %1524 ]
  %1548 = fcmp fast ult float %1547, 0x3F70101020000000
  br i1 %1548, label %2287, label %1549

; <label>:1549                                    ; preds = %1546
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 16
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1752, label %1554

; <label>:1554                                    ; preds = %1549
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %54, 412
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %1559, 0
  %1561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1561, %dx.types.Handle %97, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = extractvalue %dx.types.ResRet.f32 %1562, 3
  %1567 = and i32 %1556, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = lshr i32 %1556, 8
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1566, %1568
  %1573 = fadd fast float %1572, %1571
  %1574 = fmul fast float %1573, 0x3F70101000000000
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 512
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1587, label %1579

; <label>:1579                                    ; preds = %1554
  %1580 = add i32 %54, 496
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %98, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  br label %1587

; <label>:1587                                    ; preds = %1579, %1554
  %1588 = phi float [ %1586, %1579 ], [ 1.000000e+00, %1554 ]
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 33554432
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1699, label %1593

; <label>:1593                                    ; preds = %1587
  %1594 = add i32 %54, 240
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 65535
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = lshr i32 %1596, 16
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = add i32 %54, 244
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 24
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = and i32 %1607, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = lshr i32 %1607, 8
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1607, 16
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = add i32 %54, 236
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = lshr i32 %1624, 24
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = and i32 %1624, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1624, 8
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = lshr i32 %1624, 16
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = bitcast float %1563 to i32
  %1640 = ashr i32 %1639, 1
  %1641 = sub nsw i32 1597463174, %1640
  %1642 = bitcast i32 %1641 to float
  %1643 = fmul fast float %1563, 5.000000e-01
  %1644 = fmul fast float %1642, %1642
  %1645 = fmul fast float %1644, %1643
  %1646 = fsub fast float 1.500000e+00, %1645
  %1647 = fmul fast float %1642, %1563
  %1648 = fmul fast float %1647, %1646
  %1649 = bitcast float %1564 to i32
  %1650 = ashr i32 %1649, 1
  %1651 = sub nsw i32 1597463174, %1650
  %1652 = bitcast i32 %1651 to float
  %1653 = fmul fast float %1564, 5.000000e-01
  %1654 = fmul fast float %1652, %1652
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float 1.500000e+00, %1655
  %1657 = fmul fast float %1652, %1564
  %1658 = fmul fast float %1657, %1656
  %1659 = bitcast float %1565 to i32
  %1660 = ashr i32 %1659, 1
  %1661 = sub nsw i32 1597463174, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1565, 5.000000e-01
  %1664 = fmul fast float %1662, %1662
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float 1.500000e+00, %1665
  %1667 = fmul fast float %1662, %1565
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float %1648, %1630
  %1670 = fsub fast float %1658, %1634
  %1671 = fsub fast float %1668, %1638
  %1672 = fmul fast float %1669, %1598
  %1673 = fmul fast float %1670, %1600
  %1674 = fmul fast float %1671, %1605
  %1675 = fadd fast float %1672, %1613
  %1676 = fadd fast float %1673, %1617
  %1677 = fadd fast float %1674, %1621
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fmul fast float %1680, %1680
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fsub fast float %1683, %1565
  %1687 = fmul fast float %1684, %1588
  %1688 = fmul fast float %1685, %1588
  %1689 = fmul fast float %1686, %1588
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1689, %1565
  %1693 = fadd fast float %1610, %1574
  %1694 = fsub fast float %1693, %1627
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %1574
  %1697 = fmul fast float %1696, %1588
  %1698 = fadd fast float %1697, %1574
  br label %1752

; <label>:1699                                    ; preds = %1587
  %1700 = and i32 %1590, 134217728
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1736, label %1702

; <label>:1702                                    ; preds = %1699
  %1703 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1705 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fadd fast float %1705, -5.000000e-01
  %1709 = fmul fast float %1706, %1588
  %1710 = fmul fast float %1707, %1588
  %1711 = fmul fast float %1708, %1588
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = fadd fast float %1711, 5.000000e-01
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1718 = fmul fast float %1712, 2.000000e+00
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fmul fast float %1719, %1715
  %1721 = fadd fast float %1720, %1718
  %1722 = fmul fast float %1721, %1715
  %1723 = fmul fast float %1713, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1716
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1716
  %1728 = fmul fast float %1714, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1717
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1717
  %1733 = fmul fast float %1722, %1722
  %1734 = fmul fast float %1727, %1727
  %1735 = fmul fast float %1732, %1732
  br label %1752

; <label>:1736                                    ; preds = %1699
  %1737 = fmul fast float %289, %289
  %1738 = fmul fast float %293, %293
  %1739 = fmul fast float %297, %297
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fadd fast float %1739, -1.000000e+00
  %1743 = fmul fast float %1588, %1740
  %1744 = fmul fast float %1588, %1741
  %1745 = fmul fast float %1588, %1742
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  %1751 = fmul fast float %1748, %1565
  br label %1752

; <label>:1752                                    ; preds = %1736, %1702, %1593, %1549
  %1753 = phi float [ %1698, %1593 ], [ %1574, %1702 ], [ %1574, %1736 ], [ 0x3FA23C0BE0000000, %1549 ]
  %1754 = phi float [ %1690, %1593 ], [ %1733, %1702 ], [ %1749, %1736 ], [ 1.000000e+00, %1549 ]
  %1755 = phi float [ %1691, %1593 ], [ %1734, %1702 ], [ %1750, %1736 ], [ 1.000000e+00, %1549 ]
  %1756 = phi float [ %1692, %1593 ], [ %1735, %1702 ], [ %1751, %1736 ], [ 1.000000e+00, %1549 ]
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 1
  %1759 = and i32 %1758, 1
  %1760 = icmp ne i32 %1759, 0
  %1761 = add i32 %54, 356
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 32
  %1765 = icmp ne i32 %1764, 0
  %1766 = and i1 %1760, %1765
  %1767 = select i1 %1766, float 1.000000e+00, float %1754
  %1768 = select i1 %1766, float 0x3FD3333340000000, float %1755
  %1769 = select i1 %1766, float 0x3FD3333340000000, float %1756
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 32
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1846, label %1774

; <label>:1774                                    ; preds = %1752
  %1775 = add i32 %54, 108
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %54, 428
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %97, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.ResRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.ResRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.ResRet.f32 %1783, 3
  %1788 = and i32 %1777, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1777, 8
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = lshr i32 %1777, 16
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = fmul fast float %1795, 0x3F70101000000000
  %1797 = fmul fast float %1784, %1789
  %1798 = fadd fast float %1797, %1792
  %1799 = fmul fast float %1798, 0x3F70101000000000
  %1800 = fadd fast float %1785, -5.000000e-01
  %1801 = fadd fast float %1787, -5.000000e-01
  %1802 = fmul fast float %1800, %1796
  %1803 = fmul fast float %1801, %1796
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fmul fast float %1804, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fmul fast float %1805, 2.000000e+00
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = fadd fast float %1807, %1809
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = fsub fast float %1807, %1809
  %1813 = fmul fast float %1812, 5.000000e-01
  %1814 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1817 = fsub fast float %1815, %1816
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1813, float %1817, float %1811, float %1813, float %1817)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = call float @dx.op.unary.f32(i32 25, float %1818)  ; Rsqrt(value)
  %1820 = fmul fast float %1811, %1819
  %1821 = fmul fast float %1813, %1819
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 67108864
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1842, label %1826

; <label>:1826                                    ; preds = %1774
  %1827 = add i32 %54, 296
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 65535
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = lshr i32 %1829, 16
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = fsub fast float %1799, %1837
  %1839 = fmul fast float %1838, %1831
  %1840 = fadd fast float %1839, %1835
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  br label %1842

; <label>:1842                                    ; preds = %1826, %1774
  %1843 = phi float [ %1841, %1826 ], [ %1799, %1774 ]
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  %1845 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1265, float %1266)  ; Dot2(ax,ay,bx,by)
  br label %1846

; <label>:1846                                    ; preds = %1842, %1752
  %1847 = phi float [ %1843, %1842 ], [ 0x3FD6666660000000, %1752 ]
  %1848 = phi float [ %1844, %1842 ], [ 0.000000e+00, %1752 ]
  %1849 = phi float [ %1845, %1842 ], [ 0.000000e+00, %1752 ]
  %1850 = phi float [ %1786, %1842 ], [ 1.000000e+00, %1752 ]
  %1851 = add i32 %54, 176
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 22
  %1855 = shl nuw nsw i32 %1854, 5
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 64
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1894, label %1861

; <label>:1861                                    ; preds = %1846
  %1862 = add i32 %54, 444
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = add i32 %1864, 0
  %1866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 131072
  %1870 = icmp eq i32 %1869, 0
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1866, %dx.types.Handle %97, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = fmul fast float %1872, %277
  %1876 = fmul fast float %1873, %280
  %1877 = fmul fast float %1874, %283
  br i1 %1870, label %1884, label %1878

; <label>:1878                                    ; preds = %1861
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = fmul fast float %1880, %1875
  %1882 = fmul fast float %1880, %1876
  %1883 = fmul fast float %1880, %1877
  br label %1884

; <label>:1884                                    ; preds = %1878, %1861
  %1885 = phi float [ %1881, %1878 ], [ %1875, %1861 ]
  %1886 = phi float [ %1882, %1878 ], [ %1876, %1861 ]
  %1887 = phi float [ %1883, %1878 ], [ %1877, %1861 ]
  %1888 = fmul fast float %1885, %1856
  %1889 = select i1 %218, float %1888, float %1885
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1889, float %1886, float %1887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = select i1 %218, float 0.000000e+00, float %1885
  %1892 = select i1 %218, float %1890, float %1886
  %1893 = select i1 %218, float 0.000000e+00, float %1887
  br label %1894

; <label>:1894                                    ; preds = %1884, %1846
  %1895 = phi float [ %1891, %1884 ], [ 0.000000e+00, %1846 ]
  %1896 = phi float [ %1892, %1884 ], [ 0.000000e+00, %1846 ]
  %1897 = phi float [ %1893, %1884 ], [ 0.000000e+00, %1846 ]
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 1024
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1932, label %1902

; <label>:1902                                    ; preds = %1894
  %1903 = add i32 %54, 168
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 255
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = lshr i32 %1905, 8
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1905, 16
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = fmul fast float %1908, %1908
  %1918 = fmul fast float %1912, %1912
  %1919 = fmul fast float %1916, %1916
  %1920 = add i32 %54, 512
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %98, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  %1931 = fmul fast float %1919, %1928
  br label %1932

; <label>:1932                                    ; preds = %1902, %1894
  %1933 = phi float [ %1929, %1902 ], [ 0.000000e+00, %1894 ]
  %1934 = phi float [ %1930, %1902 ], [ 0.000000e+00, %1894 ]
  %1935 = phi float [ %1931, %1902 ], [ 0.000000e+00, %1894 ]
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = fcmp fast ogt float %1935, 0.000000e+00
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call float @dx.op.unary.f32(i32 23, float %1935)  ; Log(value)
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = lshr i32 %1943, 7
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = fmul fast float %1939, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1946
  %1949 = fmul fast float %1940, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1946
  %1951 = fmul fast float %1941, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1946
  %1953 = select i1 %1936, float %1948, float 1.270000e+02
  %1954 = select i1 %1937, float %1950, float 1.270000e+02
  %1955 = select i1 %1938, float %1952, float 1.270000e+02
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 10240
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2004, label %1960

; <label>:1960                                    ; preds = %1932
  %1961 = add i32 %54, 528
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1965, %dx.types.Handle %98, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 3
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 1048576
  %1972 = icmp ne i32 %1971, 0
  %1973 = and i32 %1970, 8192
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1990, label %1975

; <label>:1975                                    ; preds = %1960
  %1976 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1977 = select i1 %1972, float %1976, float %1967
  %1978 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1979 = select i1 %1972, float %1978, float %1967
  %1980 = add i32 %54, 112
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = lshr i32 %1982, 16
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F80101020000000
  %1987 = fmul fast float %1986, %1979
  %1988 = fmul fast float %1986, %1967
  %1989 = fmul fast float %1986, %1977
  br label %1990

; <label>:1990                                    ; preds = %1975, %1960
  %1991 = phi float [ %1987, %1975 ], [ 0.000000e+00, %1960 ]
  %1992 = phi float [ %1988, %1975 ], [ 0.000000e+00, %1960 ]
  %1993 = phi float [ %1989, %1975 ], [ 0.000000e+00, %1960 ]
  %1994 = and i32 %1970, 2048
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2004, label %1996

; <label>:1996                                    ; preds = %1990
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fmul fast float %2001, %1968
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1996, %1990, %1932
  %2005 = phi float [ %1991, %1996 ], [ %1991, %1990 ], [ 0.000000e+00, %1932 ]
  %2006 = phi float [ %1992, %1996 ], [ %1992, %1990 ], [ 0.000000e+00, %1932 ]
  %2007 = phi float [ %1993, %1996 ], [ %1993, %1990 ], [ 0.000000e+00, %1932 ]
  %2008 = phi float [ %2003, %1996 ], [ 0x3F70101020000000, %1990 ], [ 0x3F70101020000000, %1932 ]
  %2009 = add i32 %54, 112
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = lshr i32 %2011, 8
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2018 = fmul fast float %2016, %2017
  %2019 = fadd fast float %2018, %2013
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  br i1 %1251, label %2022, label %2057

; <label>:2022                                    ; preds = %2004
  %2023 = fmul fast float %2008, 2.000000e+00
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fcmp fast olt float %1955, 1.270000e+02
  %2027 = fmul fast float %1953, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2023
  %2029 = fmul fast float %1954, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2023
  %2031 = fmul fast float %1955, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2023
  %2033 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2039 = fadd fast float %2036, -1.000000e+00
  %2040 = select i1 %2024, float %2039, float -1.000000e+00
  %2041 = fadd fast float %2037, -1.000000e+00
  %2042 = select i1 %2025, float %2041, float -1.000000e+00
  %2043 = fadd fast float %2038, -1.000000e+00
  %2044 = select i1 %2026, float %2043, float -1.000000e+00
  %2045 = fmul fast float %2040, %1547
  %2046 = fmul fast float %2042, %1547
  %2047 = fmul fast float %2044, %1547
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fmul fast float %2048, %1235
  %2052 = fmul fast float %2049, %1236
  %2053 = fmul fast float %2050, %1237
  %2054 = fmul fast float %2048, %1232
  %2055 = fmul fast float %2049, %1233
  %2056 = fmul fast float %2050, %1234
  br label %2057

; <label>:2057                                    ; preds = %2022, %2004
  %2058 = phi float [ %2054, %2022 ], [ %1232, %2004 ]
  %2059 = phi float [ %2055, %2022 ], [ %1233, %2004 ]
  %2060 = phi float [ %2056, %2022 ], [ %1234, %2004 ]
  %2061 = phi float [ %2051, %2022 ], [ %1235, %2004 ]
  %2062 = phi float [ %2052, %2022 ], [ %1236, %2004 ]
  %2063 = phi float [ %2053, %2022 ], [ %1237, %2004 ]
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 3
  %2067 = icmp eq i32 %2066, 3
  br i1 %2067, label %2146, label %2068

; <label>:2068                                    ; preds = %2057
  %2069 = and i32 %2065, 16
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %1547, float 0.000000e+00
  %2072 = icmp eq i32 %2066, 0
  br i1 %2072, label %2073, label %2101

; <label>:2073                                    ; preds = %2068
  %2074 = and i32 %2065, 64
  %2075 = icmp ne i32 %2074, 0
  %2076 = select i1 %2075, float %1547, float 0.000000e+00
  %2077 = fsub fast float %1767, %2061
  %2078 = fsub fast float %1768, %2062
  %2079 = fsub fast float %1769, %2063
  %2080 = fmul fast float %2071, %2077
  %2081 = fmul fast float %2071, %2078
  %2082 = fmul fast float %2071, %2079
  %2083 = fadd fast float %2080, %2061
  %2084 = fadd fast float %2081, %2062
  %2085 = fadd fast float %2082, %2063
  %2086 = fsub fast float %1753, %1244
  %2087 = fmul fast float %2071, %2086
  %2088 = fadd fast float %2087, %1244
  %2089 = fsub fast float %1895, %2058
  %2090 = fsub fast float %1896, %2059
  %2091 = fsub fast float %1897, %2060
  %2092 = fmul fast float %2076, %2089
  %2093 = fmul fast float %2076, %2090
  %2094 = fmul fast float %2076, %2091
  %2095 = fadd fast float %2092, %2058
  %2096 = fadd fast float %2093, %2059
  %2097 = fadd fast float %2094, %2060
  %2098 = fsub fast float %2021, %1249
  %2099 = fmul fast float %2071, %2098
  %2100 = fadd fast float %2099, %1249
  br label %2146

; <label>:2101                                    ; preds = %2068
  %2102 = icmp eq i32 %2066, 1
  br i1 %2102, label %2103, label %2116

; <label>:2103                                    ; preds = %2101
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fadd fast float %1769, -1.000000e+00
  %2107 = fmul fast float %2071, %2104
  %2108 = fmul fast float %2071, %2105
  %2109 = fmul fast float %2071, %2106
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fmul fast float %2110, %2061
  %2114 = fmul fast float %2111, %2062
  %2115 = fmul fast float %2112, %2063
  br label %2146

; <label>:2116                                    ; preds = %2101
  %2117 = icmp eq i32 %2066, 2
  br i1 %2117, label %2118, label %2146

; <label>:2118                                    ; preds = %2116
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = call float @dx.op.unary.f32(i32 24, float %1769)  ; Sqrt(value)
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fadd fast float %2121, -5.000000e-01
  %2125 = fmul fast float %2122, %2071
  %2126 = fmul fast float %2123, %2071
  %2127 = fmul fast float %2124, %2071
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fmul fast float %2128, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2061
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2061
  %2136 = fmul fast float %2129, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2062
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2062
  %2141 = fmul fast float %2130, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2063
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2063
  br label %2146

; <label>:2146                                    ; preds = %2118, %2116, %2103, %2073, %2057
  %2147 = phi float [ %2058, %2057 ], [ %2058, %2118 ], [ %2058, %2116 ], [ %2058, %2103 ], [ %2095, %2073 ]
  %2148 = phi float [ %2059, %2057 ], [ %2059, %2118 ], [ %2059, %2116 ], [ %2059, %2103 ], [ %2096, %2073 ]
  %2149 = phi float [ %2060, %2057 ], [ %2060, %2118 ], [ %2060, %2116 ], [ %2060, %2103 ], [ %2097, %2073 ]
  %2150 = phi float [ %2061, %2057 ], [ %2135, %2118 ], [ %2061, %2116 ], [ %2113, %2103 ], [ %2083, %2073 ]
  %2151 = phi float [ %2062, %2057 ], [ %2140, %2118 ], [ %2062, %2116 ], [ %2114, %2103 ], [ %2084, %2073 ]
  %2152 = phi float [ %2063, %2057 ], [ %2145, %2118 ], [ %2063, %2116 ], [ %2115, %2103 ], [ %2085, %2073 ]
  %2153 = phi float [ %1244, %2057 ], [ %1244, %2118 ], [ %1244, %2116 ], [ %1244, %2103 ], [ %2088, %2073 ]
  %2154 = phi float [ %1249, %2057 ], [ %1249, %2118 ], [ %1249, %2116 ], [ %1249, %2103 ], [ %2100, %2073 ]
  %2155 = and i32 %2065, 12
  %2156 = icmp eq i32 %2155, 12
  br i1 %2156, label %2287, label %2157

; <label>:2157                                    ; preds = %2146
  %2158 = and i32 %2065, 2097184
  %2159 = icmp eq i32 %2158, 2097184
  %2160 = select i1 %2159, float %1547, float 0.000000e+00
  %2161 = and i32 %2065, 4194336
  %2162 = icmp eq i32 %2161, 4194336
  %2163 = select i1 %2162, float %1547, float 0.000000e+00
  %2164 = and i32 %2065, 8388640
  %2165 = icmp eq i32 %2164, 8388640
  %2166 = select i1 %2165, float %1547, float 0.000000e+00
  %2167 = and i32 %2065, 1024
  %2168 = icmp ne i32 %2167, 0
  %2169 = select i1 %2168, float %1547, float 0.000000e+00
  %2170 = and i32 %2065, 2048
  %2171 = icmp ne i32 %2170, 0
  %2172 = select i1 %2171, float %1547, float 0.000000e+00
  %2173 = and i32 %2065, 8192
  %2174 = icmp ne i32 %2173, 0
  %2175 = select i1 %2174, float %1547, float 0.000000e+00
  %2176 = icmp eq i32 %2155, 0
  br i1 %2176, label %2177, label %2211

; <label>:2177                                    ; preds = %2157
  %2178 = fsub fast float %1848, %1230
  %2179 = fsub fast float %1849, %1231
  %2180 = fmul fast float %2160, %2178
  %2181 = fmul fast float %2160, %2179
  %2182 = fadd fast float %2180, %1230
  %2183 = fadd fast float %2181, %1231
  %2184 = fsub fast float %1850, %1247
  %2185 = fmul fast float %2163, %2184
  %2186 = fadd fast float %2185, %1247
  %2187 = fsub fast float %1847, %1246
  %2188 = fmul fast float %2166, %2187
  %2189 = fadd fast float %2188, %1246
  %2190 = fsub fast float %1953, %1241
  %2191 = fsub fast float %1954, %1242
  %2192 = fsub fast float %1955, %1243
  %2193 = fmul fast float %2169, %2190
  %2194 = fmul fast float %2169, %2191
  %2195 = fmul fast float %2169, %2192
  %2196 = fadd fast float %2193, %1241
  %2197 = fadd fast float %2194, %1242
  %2198 = fadd fast float %2195, %1243
  %2199 = fsub fast float %2008, %1248
  %2200 = fmul fast float %2172, %2199
  %2201 = fadd fast float %2200, %1248
  %2202 = fsub fast float %2005, %1238
  %2203 = fsub fast float %2006, %1239
  %2204 = fsub fast float %2007, %1240
  %2205 = fmul fast float %2175, %2202
  %2206 = fmul fast float %2175, %2203
  %2207 = fmul fast float %2175, %2204
  %2208 = fadd fast float %2205, %1238
  %2209 = fadd fast float %2206, %1239
  %2210 = fadd fast float %2207, %1240
  br label %2287

; <label>:2211                                    ; preds = %2157
  %2212 = icmp eq i32 %2155, 4
  br i1 %2212, label %2213, label %2259

; <label>:2213                                    ; preds = %2211
  %2214 = fmul fast float %2160, %1848
  %2215 = fmul fast float %2160, %1849
  %2216 = fadd fast float %2214, %1230
  %2217 = fadd fast float %2215, %1231
  %2218 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2219 = fsub fast float %2218, %1247
  %2220 = fmul fast float %2219, %2163
  %2221 = fadd fast float %2220, %1247
  %2222 = fadd fast float %1847, %1246
  %2223 = fmul fast float %2222, 0x3FF337FAE0000000
  %2224 = fmul fast float %1246, %1246
  %2225 = fmul fast float %1847, %1847
  %2226 = fadd fast float %2225, %2224
  %2227 = fmul fast float %2226, 0x3FE5152B00000000
  %2228 = fmul fast float %1246, 0xBFCC1F85E0000000
  %2229 = fmul fast float %2228, %1847
  %2230 = fadd fast float %2229, 0xBFE1363700000000
  %2231 = fadd fast float %2230, %2223
  %2232 = fsub fast float %2231, %2227
  %2233 = fmul fast float %2222, 0x3FBA6F0D00000000
  %2234 = fmul fast float %2226, 0x3FD0432880000000
  %2235 = fmul fast float %1246, 0xBFEF110800000000
  %2236 = fmul fast float %2235, %1847
  %2237 = fadd fast float %2236, 1.000000e+00
  %2238 = fsub fast float %2237, %2233
  %2239 = fadd fast float %2238, %2234
  %2240 = fdiv fast float %2232, %2239
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float %2241, %1246
  %2243 = fmul fast float %2242, %2166
  %2244 = fadd fast float %2243, %1246
  %2245 = fmul fast float %2169, %1953
  %2246 = fmul fast float %2169, %1954
  %2247 = fmul fast float %2169, %1955
  %2248 = fadd fast float %2245, %1241
  %2249 = fadd fast float %2246, %1242
  %2250 = fadd fast float %2247, %1243
  %2251 = fmul fast float %2172, %2008
  %2252 = fadd fast float %2251, %1248
  %2253 = fmul fast float %2175, %2005
  %2254 = fmul fast float %2175, %2006
  %2255 = fmul fast float %2175, %2007
  %2256 = fadd fast float %2253, %1238
  %2257 = fadd fast float %2254, %1239
  %2258 = fadd fast float %2255, %1240
  br label %2287

; <label>:2259                                    ; preds = %2211
  %2260 = icmp eq i32 %2155, 8
  br i1 %2260, label %2261, label %2287

; <label>:2261                                    ; preds = %2259
  %2262 = fmul fast float %2160, %1848
  %2263 = fmul fast float %2160, %1849
  %2264 = fadd fast float %2262, %1230
  %2265 = fadd fast float %2263, %1231
  %2266 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2267 = fsub fast float %2266, %1247
  %2268 = fmul fast float %2267, %2163
  %2269 = fadd fast float %2268, %1247
  %2270 = fsub fast float %1847, %1246
  %2271 = fmul fast float %2166, %2270
  %2272 = fadd fast float %2271, %1246
  %2273 = fmul fast float %2169, %1953
  %2274 = fmul fast float %2169, %1954
  %2275 = fmul fast float %2169, %1955
  %2276 = fadd fast float %2273, %1241
  %2277 = fadd fast float %2274, %1242
  %2278 = fadd fast float %2275, %1243
  %2279 = fmul fast float %2172, %2008
  %2280 = fadd fast float %2279, %1248
  %2281 = fmul fast float %2175, %2005
  %2282 = fmul fast float %2175, %2006
  %2283 = fmul fast float %2175, %2007
  %2284 = fadd fast float %2281, %1238
  %2285 = fadd fast float %2282, %1239
  %2286 = fadd fast float %2283, %1240
  br label %2287

; <label>:2287                                    ; preds = %2261, %2259, %2213, %2177, %2146, %1546, %1250, %1229
  %2288 = phi float [ %1230, %2146 ], [ %1230, %1546 ], [ %1230, %1229 ], [ %2264, %2261 ], [ %1230, %2259 ], [ %2216, %2213 ], [ %2182, %2177 ], [ %1230, %1250 ]
  %2289 = phi float [ %1231, %2146 ], [ %1231, %1546 ], [ %1231, %1229 ], [ %2265, %2261 ], [ %1231, %2259 ], [ %2217, %2213 ], [ %2183, %2177 ], [ %1231, %1250 ]
  %2290 = phi float [ %2147, %2146 ], [ %1232, %1546 ], [ %1232, %1229 ], [ %2147, %2261 ], [ %2147, %2259 ], [ %2147, %2213 ], [ %2147, %2177 ], [ %1232, %1250 ]
  %2291 = phi float [ %2148, %2146 ], [ %1233, %1546 ], [ %1233, %1229 ], [ %2148, %2261 ], [ %2148, %2259 ], [ %2148, %2213 ], [ %2148, %2177 ], [ %1233, %1250 ]
  %2292 = phi float [ %2149, %2146 ], [ %1234, %1546 ], [ %1234, %1229 ], [ %2149, %2261 ], [ %2149, %2259 ], [ %2149, %2213 ], [ %2149, %2177 ], [ %1234, %1250 ]
  %2293 = phi float [ %2150, %2146 ], [ %1235, %1546 ], [ %1235, %1229 ], [ %2150, %2261 ], [ %2150, %2259 ], [ %2150, %2213 ], [ %2150, %2177 ], [ %1235, %1250 ]
  %2294 = phi float [ %2151, %2146 ], [ %1236, %1546 ], [ %1236, %1229 ], [ %2151, %2261 ], [ %2151, %2259 ], [ %2151, %2213 ], [ %2151, %2177 ], [ %1236, %1250 ]
  %2295 = phi float [ %2152, %2146 ], [ %1237, %1546 ], [ %1237, %1229 ], [ %2152, %2261 ], [ %2152, %2259 ], [ %2152, %2213 ], [ %2152, %2177 ], [ %1237, %1250 ]
  %2296 = phi float [ %1238, %2146 ], [ %1238, %1546 ], [ %1238, %1229 ], [ %2284, %2261 ], [ %1238, %2259 ], [ %2256, %2213 ], [ %2208, %2177 ], [ %1238, %1250 ]
  %2297 = phi float [ %1239, %2146 ], [ %1239, %1546 ], [ %1239, %1229 ], [ %2285, %2261 ], [ %1239, %2259 ], [ %2257, %2213 ], [ %2209, %2177 ], [ %1239, %1250 ]
  %2298 = phi float [ %1240, %2146 ], [ %1240, %1546 ], [ %1240, %1229 ], [ %2286, %2261 ], [ %1240, %2259 ], [ %2258, %2213 ], [ %2210, %2177 ], [ %1240, %1250 ]
  %2299 = phi float [ %1241, %2146 ], [ %1241, %1546 ], [ %1241, %1229 ], [ %2276, %2261 ], [ %1241, %2259 ], [ %2248, %2213 ], [ %2196, %2177 ], [ %1241, %1250 ]
  %2300 = phi float [ %1242, %2146 ], [ %1242, %1546 ], [ %1242, %1229 ], [ %2277, %2261 ], [ %1242, %2259 ], [ %2249, %2213 ], [ %2197, %2177 ], [ %1242, %1250 ]
  %2301 = phi float [ %1243, %2146 ], [ %1243, %1546 ], [ %1243, %1229 ], [ %2278, %2261 ], [ %1243, %2259 ], [ %2250, %2213 ], [ %2198, %2177 ], [ %1243, %1250 ]
  %2302 = phi float [ %2153, %2146 ], [ %1244, %1546 ], [ %1244, %1229 ], [ %2153, %2261 ], [ %2153, %2259 ], [ %2153, %2213 ], [ %2153, %2177 ], [ %1244, %1250 ]
  %2303 = phi float [ %1246, %2146 ], [ %1246, %1546 ], [ %1246, %1229 ], [ %2272, %2261 ], [ %1246, %2259 ], [ %2244, %2213 ], [ %2189, %2177 ], [ %1246, %1250 ]
  %2304 = phi float [ %1247, %2146 ], [ %1247, %1546 ], [ %1247, %1229 ], [ %2269, %2261 ], [ %1247, %2259 ], [ %2221, %2213 ], [ %2186, %2177 ], [ %1247, %1250 ]
  %2305 = phi float [ %1248, %2146 ], [ %1248, %1546 ], [ %1248, %1229 ], [ %2280, %2261 ], [ %1248, %2259 ], [ %2252, %2213 ], [ %2201, %2177 ], [ %1248, %1250 ]
  %2306 = phi float [ %2154, %2146 ], [ %1249, %1546 ], [ %1249, %1229 ], [ %2154, %2261 ], [ %2154, %2259 ], [ %2154, %2213 ], [ %2154, %2177 ], [ %1249, %1250 ]
  br i1 %404, label %3344, label %2307

; <label>:2307                                    ; preds = %2287
  %2308 = icmp ult i32 %460, 3
  %2309 = add i32 %54, 56
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = add i32 %54, 60
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = or i32 %2314, %2311
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %3344, label %2317

; <label>:2317                                    ; preds = %2307
  %2318 = and i32 %2311, 262144
  %2319 = icmp ne i32 %2318, 0
  %2320 = select i1 %2319, float %58, float 1.000000e+00
  %2321 = select i1 %2319, float %59, float 0.000000e+00
  %2322 = select i1 %2319, float %60, float 0.000000e+00
  %2323 = select i1 %2319, float %61, float 1.000000e+00
  %2324 = select i1 %2319, float %62, float %83
  %2325 = select i1 %2319, float %63, float %84
  %2326 = add i32 %54, 316
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = lshr i32 %2328, 16
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = fmul fast float %2330, 0x3F50624DE0000000
  %2332 = add i32 %54, 120
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 16
  %2336 = and i32 %2335, 255
  %2337 = lshr i32 %2334, 24
  %2338 = add i32 %54, 324
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = lshr i32 %2340, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = add i32 %54, 64
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = lshr i32 %2347, 22
  %2349 = shl nuw nsw i32 %2348, 5
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = shl i32 %2347, 4
  %2352 = and i32 %2351, 32752
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = lshr i32 %2347, 7
  %2355 = and i32 %2354, 32752
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = fmul fast float %2358, 1.000000e+03
  %2360 = fmul fast float %354, %2359
  %2361 = call float @dx.op.unary.f32(i32 22, float %2360)  ; Frc(value)
  %2362 = fadd fast float %2361, %344
  %2363 = fmul fast float %355, %2359
  %2364 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2365 = fadd fast float %2364, %346
  %2366 = fmul fast float %2331, %2359
  %2367 = call float @dx.op.unary.f32(i32 22, float %2366)  ; Frc(value)
  %2368 = fmul fast float %2367, 0x401921FB60000000
  %2369 = fadd fast float %2368, %2350
  %2370 = call float @dx.op.unary.f32(i32 13, float %2369)  ; Sin(value)
  %2371 = call float @dx.op.unary.f32(i32 12, float %2369)  ; Cos(value)
  %2372 = fsub fast float -0.000000e+00, %2370
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fadd fast float %2325, -5.000000e-01
  %2375 = fmul fast float %2342, %2373
  %2376 = fmul fast float %2344, %2374
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fadd fast float %2376, 5.000000e-01
  %2379 = fmul fast float %2353, %2377
  %2380 = fmul fast float %2356, %2378
  %2381 = fmul fast float %2371, %2379
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2372, float %2380, float %2381)  ; FMad(a,b,c)
  %2383 = fmul fast float %2370, %2379
  %2384 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2380, float %2383)  ; FMad(a,b,c)
  %2385 = fadd fast float %2362, %2382
  %2386 = fadd fast float %2365, %2384
  %2387 = icmp ugt i32 %2336, 1
  %2388 = icmp ugt i32 %2334, 33554431
  %2389 = or i1 %2388, %2387
  br i1 %2389, label %2390, label %2415

; <label>:2390                                    ; preds = %2317
  %2391 = add i32 %54, 260
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 16
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = fmul fast float %2358, %2395
  %2397 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2398 = mul nuw nsw i32 %2336, %2337
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2397, %2399
  %2401 = call float @dx.op.unary.f32(i32 27, float %2400)  ; Round_ni(value)
  %2402 = fptoui float %2401 to i32
  %2403 = urem i32 %2402, %2336
  %2404 = udiv i32 %2402, %2337
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = call float @dx.op.unary.f32(i32 22, float %2386)  ; Frc(value)
  %2407 = uitofp i32 %2403 to float
  %2408 = uitofp i32 %2404 to float
  %2409 = fadd fast float %2405, %2407
  %2410 = fadd fast float %2406, %2408
  %2411 = uitofp i32 %2336 to float
  %2412 = uitofp i32 %2337 to float
  %2413 = fdiv fast float %2409, %2411
  %2414 = fdiv fast float %2410, %2412
  br label %2415

; <label>:2415                                    ; preds = %2390, %2317
  %2416 = phi float [ %2413, %2390 ], [ %2385, %2317 ]
  %2417 = phi float [ %2414, %2390 ], [ %2386, %2317 ]
  %2418 = and i32 %2311, 16777216
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2529, label %2420

; <label>:2420                                    ; preds = %2415
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.CBufRet.f32 %2421, 2
  %2425 = fadd fast float %2422, %156
  %2426 = fadd fast float %2423, %157
  %2427 = fadd fast float %2424, %158
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = call float @dx.op.unary.f32(i32 7, float %2429)  ; Saturate(value)
  %2431 = icmp eq i32 %55, 65535
  br i1 %2431, label %2526, label %2432

; <label>:2432                                    ; preds = %2420
  %2433 = lshr i32 %55, 1
  %2434 = shl i32 %2433, 2
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %55, 1
  %2438 = icmp ne i32 %2437, 0
  %2439 = lshr i32 %2436, 16
  %2440 = and i32 %2436, 65535
  %2441 = select i1 %2438, i32 %2439, i32 %2440
  %2442 = icmp eq i32 %2441, 65535
  br i1 %2442, label %2522, label %2443

; <label>:2443                                    ; preds = %2432
  %2444 = mul nuw nsw i32 %2441, 40
  %2445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = add nuw nsw i32 %2444, 12
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2444, 24
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = add nuw nsw i32 %2444, 36
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fsub fast float %2427, %2448
  %2465 = fmul fast float %2461, %2462
  %2466 = fmul fast float %2461, %2463
  %2467 = fmul fast float %2461, %2464
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = call float @dx.op.unary.f32(i32 27, float %2467)  ; Round_ni(value)
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = fmul fast float %2473, %2453
  %2477 = shl i32 %55, 2
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2481, %dx.types.Handle %49, float %2482, float %2483, float %2484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fmul fast float %2488, 1.023000e+03
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fsub fast float %2467, %2470
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fmul fast float %2500, 7.500000e-01
  %2504 = fadd fast float %2468, 1.250000e-01
  %2505 = fadd fast float %2504, %2501
  %2506 = fadd fast float %2505, %2495
  %2507 = fadd fast float %2469, 1.250000e-01
  %2508 = fadd fast float %2507, %2502
  %2509 = fadd fast float %2508, %2496
  %2510 = fadd fast float %2470, 1.250000e-01
  %2511 = fadd fast float %2510, %2503
  %2512 = fadd fast float %2511, %2497
  %2513 = fmul fast float %2506, %2456
  %2514 = fmul fast float %2509, %2457
  %2515 = fmul fast float %2512, %2458
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2519, %dx.types.Handle %47, float %2513, float %2514, float %2515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  br label %2522

; <label>:2522                                    ; preds = %2443, %2432
  %2523 = phi float [ %2521, %2443 ], [ -1.000000e+00, %2432 ]
  %2524 = fadd fast float %2523, %2430
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  br label %2526

; <label>:2526                                    ; preds = %2522, %2420
  %2527 = phi float [ %2525, %2522 ], [ %2430, %2420 ]
  %2528 = fmul fast float %2527, %456
  br label %2529

; <label>:2529                                    ; preds = %2526, %2415
  %2530 = phi float [ %2528, %2526 ], [ %456, %2415 ]
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 256
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2581, label %2535

; <label>:2535                                    ; preds = %2529
  %2536 = add i32 %54, 480
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = add i32 %2538, 0
  %2540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2540, %dx.types.Handle %98, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = add i32 %54, 132
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = shl i32 %2545, 4
  %2547 = and i32 %2546, 32752
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2545, 7
  %2550 = and i32 %2549, 32752
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = fsub fast float 1.000000e+00, %2530
  %2553 = call float @dx.op.binary.f32(i32 35, float %2552, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2554 = bitcast float %2530 to i32
  %2555 = sitofp i32 %2554 to float
  %2556 = fadd fast float %2555, 0xC1CFBF8940000000
  %2557 = fmul fast float %2551, %2556
  %2558 = fadd fast float %2557, 0x41CFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = bitcast float %2553 to i32
  %2562 = sitofp i32 %2561 to float
  %2563 = fadd fast float %2562, 0xC1CFBF8940000000
  %2564 = fmul fast float %2563, %2551
  %2565 = fadd fast float %2564, 0x41CFBF8940000000
  %2566 = fptosi float %2565 to i32
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2560, %2548
  %2569 = fmul fast float %2567, %2548
  %2570 = fsub fast float %2553, %2568
  %2571 = fadd fast float %2569, %2553
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2574 = fsub fast float %2542, %2572
  %2575 = fsub fast float %2573, %2572
  %2576 = bitcast float %2575 to i32
  %2577 = sub nsw i32 2129859010, %2576
  %2578 = bitcast i32 %2577 to float
  %2579 = fmul fast float %2578, %2574
  %2580 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  br label %2581

; <label>:2581                                    ; preds = %2535, %2529
  %2582 = phi float [ %2580, %2535 ], [ %2530, %2529 ]
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 128
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2603, label %2587

; <label>:2587                                    ; preds = %2581
  %2588 = add i32 %54, 464
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %98, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 524288
  %2598 = icmp ne i32 %2597, 0
  %2599 = fcmp fast ogt float %2594, 0x3FE0101020000000
  %2600 = select i1 %2599, float 1.000000e+00, float 0.000000e+00
  %2601 = select i1 %2598, float %2600, float %2594
  %2602 = fmul fast float %2601, %2582
  br label %2603

; <label>:2603                                    ; preds = %2587, %2581
  %2604 = phi float [ %2602, %2587 ], [ %2582, %2581 ]
  %2605 = fcmp fast ult float %2604, 0x3F70101020000000
  br i1 %2605, label %3344, label %2606

; <label>:2606                                    ; preds = %2603
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 16
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2809, label %2611

; <label>:2611                                    ; preds = %2606
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %54, 416
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = add i32 %2616, 0
  %2618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2618, %dx.types.Handle %97, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.ResRet.f32 %2619, 3
  %2624 = and i32 %2613, 255
  %2625 = uitofp i32 %2624 to float
  %2626 = lshr i32 %2613, 8
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2623, %2625
  %2630 = fadd fast float %2629, %2628
  %2631 = fmul fast float %2630, 0x3F70101000000000
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 512
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2644, label %2636

; <label>:2636                                    ; preds = %2611
  %2637 = add i32 %54, 500
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %2639, 0
  %2641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2641, %dx.types.Handle %98, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  br label %2644

; <label>:2644                                    ; preds = %2636, %2611
  %2645 = phi float [ %2643, %2636 ], [ 1.000000e+00, %2611 ]
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 33554432
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2756, label %2650

; <label>:2650                                    ; preds = %2644
  %2651 = add i32 %54, 256
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 65535
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = lshr i32 %2653, 16
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = add i32 %54, 260
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 65535
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 24
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = and i32 %2664, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2664, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2664, 16
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = add i32 %54, 252
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = lshr i32 %2681, 24
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = and i32 %2681, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2681, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2681, 16
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = bitcast float %2620 to i32
  %2697 = ashr i32 %2696, 1
  %2698 = sub nsw i32 1597463174, %2697
  %2699 = bitcast i32 %2698 to float
  %2700 = fmul fast float %2620, 5.000000e-01
  %2701 = fmul fast float %2699, %2699
  %2702 = fmul fast float %2701, %2700
  %2703 = fsub fast float 1.500000e+00, %2702
  %2704 = fmul fast float %2699, %2620
  %2705 = fmul fast float %2704, %2703
  %2706 = bitcast float %2621 to i32
  %2707 = ashr i32 %2706, 1
  %2708 = sub nsw i32 1597463174, %2707
  %2709 = bitcast i32 %2708 to float
  %2710 = fmul fast float %2621, 5.000000e-01
  %2711 = fmul fast float %2709, %2709
  %2712 = fmul fast float %2711, %2710
  %2713 = fsub fast float 1.500000e+00, %2712
  %2714 = fmul fast float %2709, %2621
  %2715 = fmul fast float %2714, %2713
  %2716 = bitcast float %2622 to i32
  %2717 = ashr i32 %2716, 1
  %2718 = sub nsw i32 1597463174, %2717
  %2719 = bitcast i32 %2718 to float
  %2720 = fmul fast float %2622, 5.000000e-01
  %2721 = fmul fast float %2719, %2719
  %2722 = fmul fast float %2721, %2720
  %2723 = fsub fast float 1.500000e+00, %2722
  %2724 = fmul fast float %2719, %2622
  %2725 = fmul fast float %2724, %2723
  %2726 = fsub fast float %2705, %2687
  %2727 = fsub fast float %2715, %2691
  %2728 = fsub fast float %2725, %2695
  %2729 = fmul fast float %2726, %2655
  %2730 = fmul fast float %2727, %2657
  %2731 = fmul fast float %2728, %2662
  %2732 = fadd fast float %2729, %2670
  %2733 = fadd fast float %2730, %2674
  %2734 = fadd fast float %2731, %2678
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fmul fast float %2737, %2737
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fsub fast float %2740, %2622
  %2744 = fmul fast float %2741, %2645
  %2745 = fmul fast float %2742, %2645
  %2746 = fmul fast float %2743, %2645
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2746, %2622
  %2750 = fadd fast float %2667, %2631
  %2751 = fsub fast float %2750, %2684
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float %2752, %2631
  %2754 = fmul fast float %2753, %2645
  %2755 = fadd fast float %2754, %2631
  br label %2809

; <label>:2756                                    ; preds = %2644
  %2757 = and i32 %2647, 134217728
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2793, label %2759

; <label>:2759                                    ; preds = %2756
  %2760 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2762 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fmul fast float %2763, %2645
  %2767 = fmul fast float %2764, %2645
  %2768 = fmul fast float %2765, %2645
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = call float @dx.op.unary.f32(i32 24, float %2622)  ; Sqrt(value)
  %2775 = fmul fast float %2769, 2.000000e+00
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = fmul fast float %2776, %2772
  %2778 = fadd fast float %2777, %2775
  %2779 = fmul fast float %2778, %2772
  %2780 = fmul fast float %2770, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2773
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2773
  %2785 = fmul fast float %2771, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2774
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2774
  %2790 = fmul fast float %2779, %2779
  %2791 = fmul fast float %2784, %2784
  %2792 = fmul fast float %2789, %2789
  br label %2809

; <label>:2793                                    ; preds = %2756
  %2794 = fmul fast float %331, %331
  %2795 = fmul fast float %335, %335
  %2796 = fmul fast float %339, %339
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fadd fast float %2796, -1.000000e+00
  %2800 = fmul fast float %2645, %2797
  %2801 = fmul fast float %2645, %2798
  %2802 = fmul fast float %2645, %2799
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  %2808 = fmul fast float %2805, %2622
  br label %2809

; <label>:2809                                    ; preds = %2793, %2759, %2650, %2606
  %2810 = phi float [ %2755, %2650 ], [ %2631, %2759 ], [ %2631, %2793 ], [ 0x3FA23C0BE0000000, %2606 ]
  %2811 = phi float [ %2747, %2650 ], [ %2790, %2759 ], [ %2806, %2793 ], [ 1.000000e+00, %2606 ]
  %2812 = phi float [ %2748, %2650 ], [ %2791, %2759 ], [ %2807, %2793 ], [ 1.000000e+00, %2606 ]
  %2813 = phi float [ %2749, %2650 ], [ %2792, %2759 ], [ %2808, %2793 ], [ 1.000000e+00, %2606 ]
  %2814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.i32 %2814, 1
  %2816 = and i32 %2815, 1
  %2817 = icmp ne i32 %2816, 0
  %2818 = add i32 %54, 356
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 32
  %2822 = icmp ne i32 %2821, 0
  %2823 = and i1 %2817, %2822
  %2824 = select i1 %2823, float 1.000000e+00, float %2811
  %2825 = select i1 %2823, float 0x3FD3333340000000, float %2812
  %2826 = select i1 %2823, float 0x3FD3333340000000, float %2813
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 32
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2903, label %2831

; <label>:2831                                    ; preds = %2809
  %2832 = add i32 %54, 124
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = add i32 %54, 432
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = add i32 %2837, 0
  %2839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2839, %dx.types.Handle %97, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = and i32 %2834, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = lshr i32 %2834, 8
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = lshr i32 %2834, 16
  %2851 = and i32 %2850, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = fmul fast float %2852, 0x3F70101000000000
  %2854 = fmul fast float %2841, %2846
  %2855 = fadd fast float %2854, %2849
  %2856 = fmul fast float %2855, 0x3F70101000000000
  %2857 = fadd fast float %2842, -5.000000e-01
  %2858 = fadd fast float %2844, -5.000000e-01
  %2859 = fmul fast float %2857, %2853
  %2860 = fmul fast float %2858, %2853
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fadd fast float %2860, 5.000000e-01
  %2863 = fmul fast float %2861, 2.000000e+00
  %2864 = fadd fast float %2863, -1.000000e+00
  %2865 = fmul fast float %2862, 2.000000e+00
  %2866 = fadd fast float %2865, -1.000000e+00
  %2867 = fadd fast float %2864, %2866
  %2868 = fmul fast float %2867, 5.000000e-01
  %2869 = fsub fast float %2864, %2866
  %2870 = fmul fast float %2869, 5.000000e-01
  %2871 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = call float @dx.op.unary.f32(i32 6, float %2870)  ; FAbs(value)
  %2874 = fsub fast float %2872, %2873
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2870, float %2874, float %2868, float %2870, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.unary.f32(i32 25, float %2875)  ; Rsqrt(value)
  %2877 = fmul fast float %2868, %2876
  %2878 = fmul fast float %2870, %2876
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 67108864
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2899, label %2883

; <label>:2883                                    ; preds = %2831
  %2884 = add i32 %54, 312
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 65535
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = lshr i32 %2886, 16
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = fsub fast float %2856, %2894
  %2896 = fmul fast float %2895, %2888
  %2897 = fadd fast float %2896, %2892
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  br label %2899

; <label>:2899                                    ; preds = %2883, %2831
  %2900 = phi float [ %2898, %2883 ], [ %2856, %2831 ]
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  %2902 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2322, float %2323)  ; Dot2(ax,ay,bx,by)
  br label %2903

; <label>:2903                                    ; preds = %2899, %2809
  %2904 = phi float [ %2900, %2899 ], [ 0x3FD6666660000000, %2809 ]
  %2905 = phi float [ %2901, %2899 ], [ 0.000000e+00, %2809 ]
  %2906 = phi float [ %2902, %2899 ], [ 0.000000e+00, %2809 ]
  %2907 = phi float [ %2843, %2899 ], [ 1.000000e+00, %2809 ]
  %2908 = add i32 %54, 192
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 22
  %2912 = shl nuw nsw i32 %2911, 5
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 64
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2951, label %2918

; <label>:2918                                    ; preds = %2903
  %2919 = add i32 %54, 448
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 131072
  %2927 = icmp eq i32 %2926, 0
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %97, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = fmul fast float %2929, %319
  %2933 = fmul fast float %2930, %322
  %2934 = fmul fast float %2931, %325
  br i1 %2927, label %2941, label %2935

; <label>:2935                                    ; preds = %2918
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = fmul fast float %2937, %2932
  %2939 = fmul fast float %2937, %2933
  %2940 = fmul fast float %2937, %2934
  br label %2941

; <label>:2941                                    ; preds = %2935, %2918
  %2942 = phi float [ %2938, %2935 ], [ %2932, %2918 ]
  %2943 = phi float [ %2939, %2935 ], [ %2933, %2918 ]
  %2944 = phi float [ %2940, %2935 ], [ %2934, %2918 ]
  %2945 = fmul fast float %2942, %2913
  %2946 = select i1 %218, float %2945, float %2942
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2943, float %2944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = select i1 %218, float 0.000000e+00, float %2942
  %2949 = select i1 %218, float %2947, float %2943
  %2950 = select i1 %218, float 0.000000e+00, float %2944
  br label %2951

; <label>:2951                                    ; preds = %2941, %2903
  %2952 = phi float [ %2948, %2941 ], [ 0.000000e+00, %2903 ]
  %2953 = phi float [ %2949, %2941 ], [ 0.000000e+00, %2903 ]
  %2954 = phi float [ %2950, %2941 ], [ 0.000000e+00, %2903 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 1024
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2989, label %2959

; <label>:2959                                    ; preds = %2951
  %2960 = add i32 %54, 184
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2962, 8
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2962, 16
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = fmul fast float %2965, %2965
  %2975 = fmul fast float %2969, %2969
  %2976 = fmul fast float %2973, %2973
  %2977 = add i32 %54, 516
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %2979, 0
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2981, %dx.types.Handle %98, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  %2988 = fmul fast float %2976, %2985
  br label %2989

; <label>:2989                                    ; preds = %2959, %2951
  %2990 = phi float [ %2986, %2959 ], [ 0.000000e+00, %2951 ]
  %2991 = phi float [ %2987, %2959 ], [ 0.000000e+00, %2951 ]
  %2992 = phi float [ %2988, %2959 ], [ 0.000000e+00, %2951 ]
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = fcmp fast ogt float %2992, 0.000000e+00
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = lshr i32 %3000, 7
  %3002 = and i32 %3001, 32752
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = fmul fast float %2996, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %3003
  %3006 = fmul fast float %2997, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3003
  %3008 = fmul fast float %2998, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3003
  %3010 = select i1 %2993, float %3005, float 1.270000e+02
  %3011 = select i1 %2994, float %3007, float 1.270000e+02
  %3012 = select i1 %2995, float %3009, float 1.270000e+02
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 10240
  %3016 = icmp eq i32 %3015, 0
  br i1 %3016, label %3061, label %3017

; <label>:3017                                    ; preds = %2989
  %3018 = add i32 %54, 532
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %98, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 3
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 1048576
  %3029 = icmp ne i32 %3028, 0
  %3030 = and i32 %3027, 8192
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3047, label %3032

; <label>:3032                                    ; preds = %3017
  %3033 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3034 = select i1 %3029, float %3033, float %3024
  %3035 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3036 = select i1 %3029, float %3035, float %3024
  %3037 = add i32 %54, 128
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = lshr i32 %3039, 16
  %3041 = and i32 %3040, 255
  %3042 = uitofp i32 %3041 to float
  %3043 = fmul fast float %3042, 0x3F80101020000000
  %3044 = fmul fast float %3043, %3036
  %3045 = fmul fast float %3043, %3024
  %3046 = fmul fast float %3043, %3034
  br label %3047

; <label>:3047                                    ; preds = %3032, %3017
  %3048 = phi float [ %3044, %3032 ], [ 0.000000e+00, %3017 ]
  %3049 = phi float [ %3045, %3032 ], [ 0.000000e+00, %3017 ]
  %3050 = phi float [ %3046, %3032 ], [ 0.000000e+00, %3017 ]
  %3051 = and i32 %3027, 2048
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3061, label %3053

; <label>:3053                                    ; preds = %3047
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = shl i32 %3055, 4
  %3057 = and i32 %3056, 32752
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = fmul fast float %3058, %3025
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3061

; <label>:3061                                    ; preds = %3053, %3047, %2989
  %3062 = phi float [ %3048, %3053 ], [ %3048, %3047 ], [ 0.000000e+00, %2989 ]
  %3063 = phi float [ %3049, %3053 ], [ %3049, %3047 ], [ 0.000000e+00, %2989 ]
  %3064 = phi float [ %3050, %3053 ], [ %3050, %3047 ], [ 0.000000e+00, %2989 ]
  %3065 = phi float [ %3060, %3053 ], [ 0x3F70101020000000, %3047 ], [ 0x3F70101020000000, %2989 ]
  %3066 = add i32 %54, 128
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = lshr i32 %3068, 8
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2825, float %2826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = fmul fast float %3073, %3074
  %3076 = fadd fast float %3075, %3070
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  br i1 %2308, label %3079, label %3114

; <label>:3079                                    ; preds = %3061
  %3080 = fmul fast float %3065, 2.000000e+00
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fcmp fast olt float %3012, 1.270000e+02
  %3084 = fmul fast float %3010, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3080
  %3086 = fmul fast float %3011, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3080
  %3088 = fmul fast float %3012, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3080
  %3090 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3096 = fadd fast float %3093, -1.000000e+00
  %3097 = select i1 %3081, float %3096, float -1.000000e+00
  %3098 = fadd fast float %3094, -1.000000e+00
  %3099 = select i1 %3082, float %3098, float -1.000000e+00
  %3100 = fadd fast float %3095, -1.000000e+00
  %3101 = select i1 %3083, float %3100, float -1.000000e+00
  %3102 = fmul fast float %3097, %2604
  %3103 = fmul fast float %3099, %2604
  %3104 = fmul fast float %3101, %2604
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fmul fast float %3105, %2293
  %3109 = fmul fast float %3106, %2294
  %3110 = fmul fast float %3107, %2295
  %3111 = fmul fast float %3105, %2290
  %3112 = fmul fast float %3106, %2291
  %3113 = fmul fast float %3107, %2292
  br label %3114

; <label>:3114                                    ; preds = %3079, %3061
  %3115 = phi float [ %3111, %3079 ], [ %2290, %3061 ]
  %3116 = phi float [ %3112, %3079 ], [ %2291, %3061 ]
  %3117 = phi float [ %3113, %3079 ], [ %2292, %3061 ]
  %3118 = phi float [ %3108, %3079 ], [ %2293, %3061 ]
  %3119 = phi float [ %3109, %3079 ], [ %2294, %3061 ]
  %3120 = phi float [ %3110, %3079 ], [ %2295, %3061 ]
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 3
  %3124 = icmp eq i32 %3123, 3
  br i1 %3124, label %3203, label %3125

; <label>:3125                                    ; preds = %3114
  %3126 = and i32 %3122, 16
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2604, float 0.000000e+00
  %3129 = icmp eq i32 %3123, 0
  br i1 %3129, label %3130, label %3158

; <label>:3130                                    ; preds = %3125
  %3131 = and i32 %3122, 64
  %3132 = icmp ne i32 %3131, 0
  %3133 = select i1 %3132, float %2604, float 0.000000e+00
  %3134 = fsub fast float %2824, %3118
  %3135 = fsub fast float %2825, %3119
  %3136 = fsub fast float %2826, %3120
  %3137 = fmul fast float %3128, %3134
  %3138 = fmul fast float %3128, %3135
  %3139 = fmul fast float %3128, %3136
  %3140 = fadd fast float %3137, %3118
  %3141 = fadd fast float %3138, %3119
  %3142 = fadd fast float %3139, %3120
  %3143 = fsub fast float %2810, %2302
  %3144 = fmul fast float %3128, %3143
  %3145 = fadd fast float %3144, %2302
  %3146 = fsub fast float %2952, %3115
  %3147 = fsub fast float %2953, %3116
  %3148 = fsub fast float %2954, %3117
  %3149 = fmul fast float %3133, %3146
  %3150 = fmul fast float %3133, %3147
  %3151 = fmul fast float %3133, %3148
  %3152 = fadd fast float %3149, %3115
  %3153 = fadd fast float %3150, %3116
  %3154 = fadd fast float %3151, %3117
  %3155 = fsub fast float %3078, %2306
  %3156 = fmul fast float %3128, %3155
  %3157 = fadd fast float %3156, %2306
  br label %3203

; <label>:3158                                    ; preds = %3125
  %3159 = icmp eq i32 %3123, 1
  br i1 %3159, label %3160, label %3173

; <label>:3160                                    ; preds = %3158
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fadd fast float %2826, -1.000000e+00
  %3164 = fmul fast float %3128, %3161
  %3165 = fmul fast float %3128, %3162
  %3166 = fmul fast float %3128, %3163
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fmul fast float %3167, %3118
  %3171 = fmul fast float %3168, %3119
  %3172 = fmul fast float %3169, %3120
  br label %3203

; <label>:3173                                    ; preds = %3158
  %3174 = icmp eq i32 %3123, 2
  br i1 %3174, label %3175, label %3203

; <label>:3175                                    ; preds = %3173
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fmul fast float %3179, %3128
  %3183 = fmul fast float %3180, %3128
  %3184 = fmul fast float %3181, %3128
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fmul fast float %3185, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3118
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3118
  %3193 = fmul fast float %3186, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3119
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3119
  %3198 = fmul fast float %3187, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3120
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3120
  br label %3203

; <label>:3203                                    ; preds = %3175, %3173, %3160, %3130, %3114
  %3204 = phi float [ %3115, %3114 ], [ %3115, %3175 ], [ %3115, %3173 ], [ %3115, %3160 ], [ %3152, %3130 ]
  %3205 = phi float [ %3116, %3114 ], [ %3116, %3175 ], [ %3116, %3173 ], [ %3116, %3160 ], [ %3153, %3130 ]
  %3206 = phi float [ %3117, %3114 ], [ %3117, %3175 ], [ %3117, %3173 ], [ %3117, %3160 ], [ %3154, %3130 ]
  %3207 = phi float [ %3118, %3114 ], [ %3192, %3175 ], [ %3118, %3173 ], [ %3170, %3160 ], [ %3140, %3130 ]
  %3208 = phi float [ %3119, %3114 ], [ %3197, %3175 ], [ %3119, %3173 ], [ %3171, %3160 ], [ %3141, %3130 ]
  %3209 = phi float [ %3120, %3114 ], [ %3202, %3175 ], [ %3120, %3173 ], [ %3172, %3160 ], [ %3142, %3130 ]
  %3210 = phi float [ %2302, %3114 ], [ %2302, %3175 ], [ %2302, %3173 ], [ %2302, %3160 ], [ %3145, %3130 ]
  %3211 = phi float [ %2306, %3114 ], [ %2306, %3175 ], [ %2306, %3173 ], [ %2306, %3160 ], [ %3157, %3130 ]
  %3212 = and i32 %3122, 12
  %3213 = icmp eq i32 %3212, 12
  br i1 %3213, label %3344, label %3214

; <label>:3214                                    ; preds = %3203
  %3215 = and i32 %3122, 2097184
  %3216 = icmp eq i32 %3215, 2097184
  %3217 = select i1 %3216, float %2604, float 0.000000e+00
  %3218 = and i32 %3122, 4194336
  %3219 = icmp eq i32 %3218, 4194336
  %3220 = select i1 %3219, float %2604, float 0.000000e+00
  %3221 = and i32 %3122, 8388640
  %3222 = icmp eq i32 %3221, 8388640
  %3223 = select i1 %3222, float %2604, float 0.000000e+00
  %3224 = and i32 %3122, 1024
  %3225 = icmp ne i32 %3224, 0
  %3226 = select i1 %3225, float %2604, float 0.000000e+00
  %3227 = and i32 %3122, 2048
  %3228 = icmp ne i32 %3227, 0
  %3229 = select i1 %3228, float %2604, float 0.000000e+00
  %3230 = and i32 %3122, 8192
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2604, float 0.000000e+00
  %3233 = icmp eq i32 %3212, 0
  br i1 %3233, label %3234, label %3268

; <label>:3234                                    ; preds = %3214
  %3235 = fsub fast float %2905, %2288
  %3236 = fsub fast float %2906, %2289
  %3237 = fmul fast float %3217, %3235
  %3238 = fmul fast float %3217, %3236
  %3239 = fadd fast float %3237, %2288
  %3240 = fadd fast float %3238, %2289
  %3241 = fsub fast float %2907, %2304
  %3242 = fmul fast float %3220, %3241
  %3243 = fadd fast float %3242, %2304
  %3244 = fsub fast float %2904, %2303
  %3245 = fmul fast float %3223, %3244
  %3246 = fadd fast float %3245, %2303
  %3247 = fsub fast float %3010, %2299
  %3248 = fsub fast float %3011, %2300
  %3249 = fsub fast float %3012, %2301
  %3250 = fmul fast float %3226, %3247
  %3251 = fmul fast float %3226, %3248
  %3252 = fmul fast float %3226, %3249
  %3253 = fadd fast float %3250, %2299
  %3254 = fadd fast float %3251, %2300
  %3255 = fadd fast float %3252, %2301
  %3256 = fsub fast float %3065, %2305
  %3257 = fmul fast float %3229, %3256
  %3258 = fadd fast float %3257, %2305
  %3259 = fsub fast float %3062, %2296
  %3260 = fsub fast float %3063, %2297
  %3261 = fsub fast float %3064, %2298
  %3262 = fmul fast float %3232, %3259
  %3263 = fmul fast float %3232, %3260
  %3264 = fmul fast float %3232, %3261
  %3265 = fadd fast float %3262, %2296
  %3266 = fadd fast float %3263, %2297
  %3267 = fadd fast float %3264, %2298
  br label %3344

; <label>:3268                                    ; preds = %3214
  %3269 = icmp eq i32 %3212, 4
  br i1 %3269, label %3270, label %3316

; <label>:3270                                    ; preds = %3268
  %3271 = fmul fast float %3217, %2905
  %3272 = fmul fast float %3217, %2906
  %3273 = fadd fast float %3271, %2288
  %3274 = fadd fast float %3272, %2289
  %3275 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3276 = fsub fast float %3275, %2304
  %3277 = fmul fast float %3276, %3220
  %3278 = fadd fast float %3277, %2304
  %3279 = fadd fast float %2904, %2303
  %3280 = fmul fast float %3279, 0x3FF337FAE0000000
  %3281 = fmul fast float %2303, %2303
  %3282 = fmul fast float %2904, %2904
  %3283 = fadd fast float %3282, %3281
  %3284 = fmul fast float %3283, 0x3FE5152B00000000
  %3285 = fmul fast float %2303, 0xBFCC1F85E0000000
  %3286 = fmul fast float %3285, %2904
  %3287 = fadd fast float %3286, 0xBFE1363700000000
  %3288 = fadd fast float %3287, %3280
  %3289 = fsub fast float %3288, %3284
  %3290 = fmul fast float %3279, 0x3FBA6F0D00000000
  %3291 = fmul fast float %3283, 0x3FD0432880000000
  %3292 = fmul fast float %2303, 0xBFEF110800000000
  %3293 = fmul fast float %3292, %2904
  %3294 = fadd fast float %3293, 1.000000e+00
  %3295 = fsub fast float %3294, %3290
  %3296 = fadd fast float %3295, %3291
  %3297 = fdiv fast float %3289, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %3298, %2303
  %3300 = fmul fast float %3299, %3223
  %3301 = fadd fast float %3300, %2303
  %3302 = fmul fast float %3226, %3010
  %3303 = fmul fast float %3226, %3011
  %3304 = fmul fast float %3226, %3012
  %3305 = fadd fast float %3302, %2299
  %3306 = fadd fast float %3303, %2300
  %3307 = fadd fast float %3304, %2301
  %3308 = fmul fast float %3229, %3065
  %3309 = fadd fast float %3308, %2305
  %3310 = fmul fast float %3232, %3062
  %3311 = fmul fast float %3232, %3063
  %3312 = fmul fast float %3232, %3064
  %3313 = fadd fast float %3310, %2296
  %3314 = fadd fast float %3311, %2297
  %3315 = fadd fast float %3312, %2298
  br label %3344

; <label>:3316                                    ; preds = %3268
  %3317 = icmp eq i32 %3212, 8
  br i1 %3317, label %3318, label %3344

; <label>:3318                                    ; preds = %3316
  %3319 = fmul fast float %3217, %2905
  %3320 = fmul fast float %3217, %2906
  %3321 = fadd fast float %3319, %2288
  %3322 = fadd fast float %3320, %2289
  %3323 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3324 = fsub fast float %3323, %2304
  %3325 = fmul fast float %3324, %3220
  %3326 = fadd fast float %3325, %2304
  %3327 = fsub fast float %2904, %2303
  %3328 = fmul fast float %3223, %3327
  %3329 = fadd fast float %3328, %2303
  %3330 = fmul fast float %3226, %3010
  %3331 = fmul fast float %3226, %3011
  %3332 = fmul fast float %3226, %3012
  %3333 = fadd fast float %3330, %2299
  %3334 = fadd fast float %3331, %2300
  %3335 = fadd fast float %3332, %2301
  %3336 = fmul fast float %3229, %3065
  %3337 = fadd fast float %3336, %2305
  %3338 = fmul fast float %3232, %3062
  %3339 = fmul fast float %3232, %3063
  %3340 = fmul fast float %3232, %3064
  %3341 = fadd fast float %3338, %2296
  %3342 = fadd fast float %3339, %2297
  %3343 = fadd fast float %3340, %2298
  br label %3344

; <label>:3344                                    ; preds = %3318, %3316, %3270, %3234, %3203, %2603, %2307, %2287
  %3345 = phi float [ %2288, %3203 ], [ %2288, %2603 ], [ %2288, %2287 ], [ %3321, %3318 ], [ %2288, %3316 ], [ %3273, %3270 ], [ %3239, %3234 ], [ %2288, %2307 ]
  %3346 = phi float [ %2289, %3203 ], [ %2289, %2603 ], [ %2289, %2287 ], [ %3322, %3318 ], [ %2289, %3316 ], [ %3274, %3270 ], [ %3240, %3234 ], [ %2289, %2307 ]
  %3347 = phi float [ %3204, %3203 ], [ %2290, %2603 ], [ %2290, %2287 ], [ %3204, %3318 ], [ %3204, %3316 ], [ %3204, %3270 ], [ %3204, %3234 ], [ %2290, %2307 ]
  %3348 = phi float [ %3205, %3203 ], [ %2291, %2603 ], [ %2291, %2287 ], [ %3205, %3318 ], [ %3205, %3316 ], [ %3205, %3270 ], [ %3205, %3234 ], [ %2291, %2307 ]
  %3349 = phi float [ %3206, %3203 ], [ %2292, %2603 ], [ %2292, %2287 ], [ %3206, %3318 ], [ %3206, %3316 ], [ %3206, %3270 ], [ %3206, %3234 ], [ %2292, %2307 ]
  %3350 = phi float [ %3207, %3203 ], [ %2293, %2603 ], [ %2293, %2287 ], [ %3207, %3318 ], [ %3207, %3316 ], [ %3207, %3270 ], [ %3207, %3234 ], [ %2293, %2307 ]
  %3351 = phi float [ %3208, %3203 ], [ %2294, %2603 ], [ %2294, %2287 ], [ %3208, %3318 ], [ %3208, %3316 ], [ %3208, %3270 ], [ %3208, %3234 ], [ %2294, %2307 ]
  %3352 = phi float [ %3209, %3203 ], [ %2295, %2603 ], [ %2295, %2287 ], [ %3209, %3318 ], [ %3209, %3316 ], [ %3209, %3270 ], [ %3209, %3234 ], [ %2295, %2307 ]
  %3353 = phi float [ %2296, %3203 ], [ %2296, %2603 ], [ %2296, %2287 ], [ %3341, %3318 ], [ %2296, %3316 ], [ %3313, %3270 ], [ %3265, %3234 ], [ %2296, %2307 ]
  %3354 = phi float [ %2297, %3203 ], [ %2297, %2603 ], [ %2297, %2287 ], [ %3342, %3318 ], [ %2297, %3316 ], [ %3314, %3270 ], [ %3266, %3234 ], [ %2297, %2307 ]
  %3355 = phi float [ %2298, %3203 ], [ %2298, %2603 ], [ %2298, %2287 ], [ %3343, %3318 ], [ %2298, %3316 ], [ %3315, %3270 ], [ %3267, %3234 ], [ %2298, %2307 ]
  %3356 = phi float [ %2299, %3203 ], [ %2299, %2603 ], [ %2299, %2287 ], [ %3333, %3318 ], [ %2299, %3316 ], [ %3305, %3270 ], [ %3253, %3234 ], [ %2299, %2307 ]
  %3357 = phi float [ %2300, %3203 ], [ %2300, %2603 ], [ %2300, %2287 ], [ %3334, %3318 ], [ %2300, %3316 ], [ %3306, %3270 ], [ %3254, %3234 ], [ %2300, %2307 ]
  %3358 = phi float [ %2301, %3203 ], [ %2301, %2603 ], [ %2301, %2287 ], [ %3335, %3318 ], [ %2301, %3316 ], [ %3307, %3270 ], [ %3255, %3234 ], [ %2301, %2307 ]
  %3359 = phi float [ %3210, %3203 ], [ %2302, %2603 ], [ %2302, %2287 ], [ %3210, %3318 ], [ %3210, %3316 ], [ %3210, %3270 ], [ %3210, %3234 ], [ %2302, %2307 ]
  %3360 = phi float [ %2303, %3203 ], [ %2303, %2603 ], [ %2303, %2287 ], [ %3329, %3318 ], [ %2303, %3316 ], [ %3301, %3270 ], [ %3246, %3234 ], [ %2303, %2307 ]
  %3361 = phi float [ %2304, %3203 ], [ %2304, %2603 ], [ %2304, %2287 ], [ %3326, %3318 ], [ %2304, %3316 ], [ %3278, %3270 ], [ %3243, %3234 ], [ %2304, %2307 ]
  %3362 = phi float [ %2305, %3203 ], [ %2305, %2603 ], [ %2305, %2287 ], [ %3337, %3318 ], [ %2305, %3316 ], [ %3309, %3270 ], [ %3258, %3234 ], [ %2305, %2307 ]
  %3363 = phi float [ %3211, %3203 ], [ %2306, %2603 ], [ %2306, %2287 ], [ %3211, %3318 ], [ %3211, %3316 ], [ %3211, %3270 ], [ %3211, %3234 ], [ %2306, %2307 ]
  br i1 %406, label %4401, label %3364

; <label>:3364                                    ; preds = %3344
  %3365 = icmp ult i32 %460, 4
  %3366 = add i32 %54, 72
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %54, 76
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = or i32 %3371, %3368
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %4401, label %3374

; <label>:3374                                    ; preds = %3364
  %3375 = and i32 %3368, 262144
  %3376 = icmp ne i32 %3375, 0
  %3377 = select i1 %3376, float %58, float 1.000000e+00
  %3378 = select i1 %3376, float %59, float 0.000000e+00
  %3379 = select i1 %3376, float %60, float 0.000000e+00
  %3380 = select i1 %3376, float %61, float 1.000000e+00
  %3381 = select i1 %3376, float %62, float %83
  %3382 = select i1 %3376, float %63, float %84
  %3383 = add i32 %54, 332
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = lshr i32 %3385, 16
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = fmul fast float %3387, 0x3F50624DE0000000
  %3389 = add i32 %54, 136
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 16
  %3393 = and i32 %3392, 255
  %3394 = lshr i32 %3391, 24
  %3395 = add i32 %54, 340
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 65535
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = lshr i32 %3397, 16
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = add i32 %54, 80
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = lshr i32 %3404, 22
  %3406 = shl nuw nsw i32 %3405, 5
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = shl i32 %3404, 4
  %3409 = and i32 %3408, 32752
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = lshr i32 %3404, 7
  %3412 = and i32 %3411, 32752
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 3
  %3416 = fmul fast float %3415, 1.000000e+03
  %3417 = fmul fast float %396, %3416
  %3418 = call float @dx.op.unary.f32(i32 22, float %3417)  ; Frc(value)
  %3419 = fadd fast float %3418, %386
  %3420 = fmul fast float %397, %3416
  %3421 = call float @dx.op.unary.f32(i32 22, float %3420)  ; Frc(value)
  %3422 = fadd fast float %3421, %388
  %3423 = fmul fast float %3388, %3416
  %3424 = call float @dx.op.unary.f32(i32 22, float %3423)  ; Frc(value)
  %3425 = fmul fast float %3424, 0x401921FB60000000
  %3426 = fadd fast float %3425, %3407
  %3427 = call float @dx.op.unary.f32(i32 13, float %3426)  ; Sin(value)
  %3428 = call float @dx.op.unary.f32(i32 12, float %3426)  ; Cos(value)
  %3429 = fsub fast float -0.000000e+00, %3427
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fadd fast float %3382, -5.000000e-01
  %3432 = fmul fast float %3399, %3430
  %3433 = fmul fast float %3401, %3431
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fadd fast float %3433, 5.000000e-01
  %3436 = fmul fast float %3410, %3434
  %3437 = fmul fast float %3413, %3435
  %3438 = fmul fast float %3428, %3436
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3437, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3427, %3436
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3437, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3419, %3439
  %3443 = fadd fast float %3422, %3441
  %3444 = icmp ugt i32 %3393, 1
  %3445 = icmp ugt i32 %3391, 33554431
  %3446 = or i1 %3445, %3444
  br i1 %3446, label %3447, label %3472

; <label>:3447                                    ; preds = %3374
  %3448 = add i32 %54, 276
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 16
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = fmul fast float %3415, %3452
  %3454 = call float @dx.op.unary.f32(i32 22, float %3453)  ; Frc(value)
  %3455 = mul nuw nsw i32 %3393, %3394
  %3456 = uitofp i32 %3455 to float
  %3457 = fmul fast float %3454, %3456
  %3458 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3459 = fptoui float %3458 to i32
  %3460 = urem i32 %3459, %3393
  %3461 = udiv i32 %3459, %3394
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = call float @dx.op.unary.f32(i32 22, float %3443)  ; Frc(value)
  %3464 = uitofp i32 %3460 to float
  %3465 = uitofp i32 %3461 to float
  %3466 = fadd fast float %3462, %3464
  %3467 = fadd fast float %3463, %3465
  %3468 = uitofp i32 %3393 to float
  %3469 = uitofp i32 %3394 to float
  %3470 = fdiv fast float %3466, %3468
  %3471 = fdiv fast float %3467, %3469
  br label %3472

; <label>:3472                                    ; preds = %3447, %3374
  %3473 = phi float [ %3470, %3447 ], [ %3442, %3374 ]
  %3474 = phi float [ %3471, %3447 ], [ %3443, %3374 ]
  %3475 = and i32 %3368, 16777216
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3586, label %3477

; <label>:3477                                    ; preds = %3472
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3482 = fadd fast float %3479, %156
  %3483 = fadd fast float %3480, %157
  %3484 = fadd fast float %3481, %158
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = icmp eq i32 %55, 65535
  br i1 %3488, label %3583, label %3489

; <label>:3489                                    ; preds = %3477
  %3490 = lshr i32 %55, 1
  %3491 = shl i32 %3490, 2
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %55, 1
  %3495 = icmp ne i32 %3494, 0
  %3496 = lshr i32 %3493, 16
  %3497 = and i32 %3493, 65535
  %3498 = select i1 %3495, i32 %3496, i32 %3497
  %3499 = icmp eq i32 %3498, 65535
  br i1 %3499, label %3579, label %3500

; <label>:3500                                    ; preds = %3489
  %3501 = mul nuw nsw i32 %3498, 40
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = add nuw nsw i32 %3501, 12
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3501, 24
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = add nuw nsw i32 %3501, 36
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fsub fast float %3484, %3505
  %3522 = fmul fast float %3518, %3519
  %3523 = fmul fast float %3518, %3520
  %3524 = fmul fast float %3518, %3521
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fadd fast float %3527, 5.000000e-01
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = fmul fast float %3530, %3510
  %3534 = shl i32 %55, 2
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = add i32 %3536, 0
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3538, %dx.types.Handle %49, float %3539, float %3540, float %3541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fmul fast float %3545, 1.023000e+03
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fsub fast float %3524, %3527
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fmul fast float %3557, 7.500000e-01
  %3561 = fadd fast float %3525, 1.250000e-01
  %3562 = fadd fast float %3561, %3558
  %3563 = fadd fast float %3562, %3552
  %3564 = fadd fast float %3526, 1.250000e-01
  %3565 = fadd fast float %3564, %3559
  %3566 = fadd fast float %3565, %3553
  %3567 = fadd fast float %3527, 1.250000e-01
  %3568 = fadd fast float %3567, %3560
  %3569 = fadd fast float %3568, %3554
  %3570 = fmul fast float %3563, %3513
  %3571 = fmul fast float %3566, %3514
  %3572 = fmul fast float %3569, %3515
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = add i32 %3574, 0
  %3576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3576, %dx.types.Handle %47, float %3570, float %3571, float %3572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  br label %3579

; <label>:3579                                    ; preds = %3500, %3489
  %3580 = phi float [ %3578, %3500 ], [ -1.000000e+00, %3489 ]
  %3581 = fadd fast float %3580, %3487
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  br label %3583

; <label>:3583                                    ; preds = %3579, %3477
  %3584 = phi float [ %3582, %3579 ], [ %3487, %3477 ]
  %3585 = fmul fast float %3584, %455
  br label %3586

; <label>:3586                                    ; preds = %3583, %3472
  %3587 = phi float [ %3585, %3583 ], [ %455, %3472 ]
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 256
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3638, label %3592

; <label>:3592                                    ; preds = %3586
  %3593 = add i32 %54, 484
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = add i32 %3595, 0
  %3597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3597, %dx.types.Handle %98, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = add i32 %54, 148
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = shl i32 %3602, 4
  %3604 = and i32 %3603, 32752
  %3605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3604)  ; LegacyF16ToF32(value)
  %3606 = lshr i32 %3602, 7
  %3607 = and i32 %3606, 32752
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = fsub fast float 1.000000e+00, %3587
  %3610 = call float @dx.op.binary.f32(i32 35, float %3609, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3611 = bitcast float %3587 to i32
  %3612 = sitofp i32 %3611 to float
  %3613 = fadd fast float %3612, 0xC1CFBF8940000000
  %3614 = fmul fast float %3608, %3613
  %3615 = fadd fast float %3614, 0x41CFBF8940000000
  %3616 = fptosi float %3615 to i32
  %3617 = bitcast i32 %3616 to float
  %3618 = bitcast float %3610 to i32
  %3619 = sitofp i32 %3618 to float
  %3620 = fadd fast float %3619, 0xC1CFBF8940000000
  %3621 = fmul fast float %3620, %3608
  %3622 = fadd fast float %3621, 0x41CFBF8940000000
  %3623 = fptosi float %3622 to i32
  %3624 = bitcast i32 %3623 to float
  %3625 = fmul fast float %3617, %3605
  %3626 = fmul fast float %3624, %3605
  %3627 = fsub fast float %3610, %3625
  %3628 = fadd fast float %3626, %3610
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3631 = fsub fast float %3599, %3629
  %3632 = fsub fast float %3630, %3629
  %3633 = bitcast float %3632 to i32
  %3634 = sub nsw i32 2129859010, %3633
  %3635 = bitcast i32 %3634 to float
  %3636 = fmul fast float %3635, %3631
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  br label %3638

; <label>:3638                                    ; preds = %3592, %3586
  %3639 = phi float [ %3637, %3592 ], [ %3587, %3586 ]
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 128
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3660, label %3644

; <label>:3644                                    ; preds = %3638
  %3645 = add i32 %54, 468
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %98, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 524288
  %3655 = icmp ne i32 %3654, 0
  %3656 = fcmp fast ogt float %3651, 0x3FE0101020000000
  %3657 = select i1 %3656, float 1.000000e+00, float 0.000000e+00
  %3658 = select i1 %3655, float %3657, float %3651
  %3659 = fmul fast float %3658, %3639
  br label %3660

; <label>:3660                                    ; preds = %3644, %3638
  %3661 = phi float [ %3659, %3644 ], [ %3639, %3638 ]
  %3662 = fcmp fast ult float %3661, 0x3F70101020000000
  br i1 %3662, label %4401, label %3663

; <label>:3663                                    ; preds = %3660
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 16
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3866, label %3668

; <label>:3668                                    ; preds = %3663
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %54, 420
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = add i32 %3673, 0
  %3675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3675, %dx.types.Handle %97, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3681 = and i32 %3670, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = lshr i32 %3670, 8
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = fmul fast float %3680, %3682
  %3687 = fadd fast float %3686, %3685
  %3688 = fmul fast float %3687, 0x3F70101000000000
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 512
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3701, label %3693

; <label>:3693                                    ; preds = %3668
  %3694 = add i32 %54, 504
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3696, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3698, %dx.types.Handle %98, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  br label %3701

; <label>:3701                                    ; preds = %3693, %3668
  %3702 = phi float [ %3700, %3693 ], [ 1.000000e+00, %3668 ]
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 33554432
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %3813, label %3707

; <label>:3707                                    ; preds = %3701
  %3708 = add i32 %54, 272
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 65535
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = lshr i32 %3710, 16
  %3714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3713)  ; LegacyF16ToF32(value)
  %3715 = add i32 %54, 276
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 65535
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = lshr i32 %3721, 24
  %3723 = uitofp i32 %3722 to float
  %3724 = fmul fast float %3723, 0x3F70101020000000
  %3725 = and i32 %3721, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = fmul fast float %3726, 0x3F70101020000000
  %3728 = lshr i32 %3721, 8
  %3729 = and i32 %3728, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = lshr i32 %3721, 16
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = add i32 %54, 268
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = lshr i32 %3738, 24
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = and i32 %3738, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = lshr i32 %3738, 8
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = lshr i32 %3738, 16
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = bitcast float %3677 to i32
  %3754 = ashr i32 %3753, 1
  %3755 = sub nsw i32 1597463174, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3677, 5.000000e-01
  %3758 = fmul fast float %3756, %3756
  %3759 = fmul fast float %3758, %3757
  %3760 = fsub fast float 1.500000e+00, %3759
  %3761 = fmul fast float %3756, %3677
  %3762 = fmul fast float %3761, %3760
  %3763 = bitcast float %3678 to i32
  %3764 = ashr i32 %3763, 1
  %3765 = sub nsw i32 1597463174, %3764
  %3766 = bitcast i32 %3765 to float
  %3767 = fmul fast float %3678, 5.000000e-01
  %3768 = fmul fast float %3766, %3766
  %3769 = fmul fast float %3768, %3767
  %3770 = fsub fast float 1.500000e+00, %3769
  %3771 = fmul fast float %3766, %3678
  %3772 = fmul fast float %3771, %3770
  %3773 = bitcast float %3679 to i32
  %3774 = ashr i32 %3773, 1
  %3775 = sub nsw i32 1597463174, %3774
  %3776 = bitcast i32 %3775 to float
  %3777 = fmul fast float %3679, 5.000000e-01
  %3778 = fmul fast float %3776, %3776
  %3779 = fmul fast float %3778, %3777
  %3780 = fsub fast float 1.500000e+00, %3779
  %3781 = fmul fast float %3776, %3679
  %3782 = fmul fast float %3781, %3780
  %3783 = fsub fast float %3762, %3744
  %3784 = fsub fast float %3772, %3748
  %3785 = fsub fast float %3782, %3752
  %3786 = fmul fast float %3783, %3712
  %3787 = fmul fast float %3784, %3714
  %3788 = fmul fast float %3785, %3719
  %3789 = fadd fast float %3786, %3727
  %3790 = fadd fast float %3787, %3731
  %3791 = fadd fast float %3788, %3735
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fmul fast float %3794, %3794
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fsub fast float %3797, %3679
  %3801 = fmul fast float %3798, %3702
  %3802 = fmul fast float %3799, %3702
  %3803 = fmul fast float %3800, %3702
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3803, %3679
  %3807 = fadd fast float %3724, %3688
  %3808 = fsub fast float %3807, %3741
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = fsub fast float %3809, %3688
  %3811 = fmul fast float %3810, %3702
  %3812 = fadd fast float %3811, %3688
  br label %3866

; <label>:3813                                    ; preds = %3701
  %3814 = and i32 %3704, 134217728
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %3850, label %3816

; <label>:3816                                    ; preds = %3813
  %3817 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3819 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %3820, %3702
  %3824 = fmul fast float %3821, %3702
  %3825 = fmul fast float %3822, %3702
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = call float @dx.op.unary.f32(i32 24, float %3679)  ; Sqrt(value)
  %3832 = fmul fast float %3826, 2.000000e+00
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3829
  %3835 = fadd fast float %3834, %3832
  %3836 = fmul fast float %3835, %3829
  %3837 = fmul fast float %3827, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3830
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3830
  %3842 = fmul fast float %3828, 2.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, %3831
  %3845 = fadd fast float %3844, %3842
  %3846 = fmul fast float %3845, %3831
  %3847 = fmul fast float %3836, %3836
  %3848 = fmul fast float %3841, %3841
  %3849 = fmul fast float %3846, %3846
  br label %3866

; <label>:3850                                    ; preds = %3813
  %3851 = fmul fast float %373, %373
  %3852 = fmul fast float %377, %377
  %3853 = fmul fast float %381, %381
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fadd fast float %3853, -1.000000e+00
  %3857 = fmul fast float %3702, %3854
  %3858 = fmul fast float %3702, %3855
  %3859 = fmul fast float %3702, %3856
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fadd fast float %3859, 1.000000e+00
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  %3865 = fmul fast float %3862, %3679
  br label %3866

; <label>:3866                                    ; preds = %3850, %3816, %3707, %3663
  %3867 = phi float [ %3812, %3707 ], [ %3688, %3816 ], [ %3688, %3850 ], [ 0x3FA23C0BE0000000, %3663 ]
  %3868 = phi float [ %3804, %3707 ], [ %3847, %3816 ], [ %3863, %3850 ], [ 1.000000e+00, %3663 ]
  %3869 = phi float [ %3805, %3707 ], [ %3848, %3816 ], [ %3864, %3850 ], [ 1.000000e+00, %3663 ]
  %3870 = phi float [ %3806, %3707 ], [ %3849, %3816 ], [ %3865, %3850 ], [ 1.000000e+00, %3663 ]
  %3871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.i32 %3871, 1
  %3873 = and i32 %3872, 1
  %3874 = icmp ne i32 %3873, 0
  %3875 = add i32 %54, 356
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 32
  %3879 = icmp ne i32 %3878, 0
  %3880 = and i1 %3874, %3879
  %3881 = select i1 %3880, float 1.000000e+00, float %3868
  %3882 = select i1 %3880, float 0x3FD3333340000000, float %3869
  %3883 = select i1 %3880, float 0x3FD3333340000000, float %3870
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 32
  %3887 = icmp eq i32 %3886, 0
  br i1 %3887, label %3960, label %3888

; <label>:3888                                    ; preds = %3866
  %3889 = add i32 %54, 140
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %54, 436
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3896, %dx.types.Handle %97, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = and i32 %3891, 255
  %3903 = uitofp i32 %3902 to float
  %3904 = lshr i32 %3891, 8
  %3905 = and i32 %3904, 255
  %3906 = uitofp i32 %3905 to float
  %3907 = lshr i32 %3891, 16
  %3908 = and i32 %3907, 255
  %3909 = uitofp i32 %3908 to float
  %3910 = fmul fast float %3909, 0x3F70101000000000
  %3911 = fmul fast float %3898, %3903
  %3912 = fadd fast float %3911, %3906
  %3913 = fmul fast float %3912, 0x3F70101000000000
  %3914 = fadd fast float %3899, -5.000000e-01
  %3915 = fadd fast float %3901, -5.000000e-01
  %3916 = fmul fast float %3914, %3910
  %3917 = fmul fast float %3915, %3910
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fadd fast float %3917, 5.000000e-01
  %3920 = fmul fast float %3918, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = fmul fast float %3919, 2.000000e+00
  %3923 = fadd fast float %3922, -1.000000e+00
  %3924 = fadd fast float %3921, %3923
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = fsub fast float %3921, %3923
  %3927 = fmul fast float %3926, 5.000000e-01
  %3928 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3931 = fsub fast float %3929, %3930
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3927, float %3931, float %3925, float %3927, float %3931)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call float @dx.op.unary.f32(i32 25, float %3932)  ; Rsqrt(value)
  %3934 = fmul fast float %3925, %3933
  %3935 = fmul fast float %3927, %3933
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = and i32 %3937, 67108864
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3956, label %3940

; <label>:3940                                    ; preds = %3888
  %3941 = add i32 %54, 328
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = lshr i32 %3943, 16
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fsub fast float %3913, %3951
  %3953 = fmul fast float %3952, %3945
  %3954 = fadd fast float %3953, %3949
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  br label %3956

; <label>:3956                                    ; preds = %3940, %3888
  %3957 = phi float [ %3955, %3940 ], [ %3913, %3888 ]
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3377, float %3378)  ; Dot2(ax,ay,bx,by)
  %3959 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3379, float %3380)  ; Dot2(ax,ay,bx,by)
  br label %3960

; <label>:3960                                    ; preds = %3956, %3866
  %3961 = phi float [ %3957, %3956 ], [ 0x3FD6666660000000, %3866 ]
  %3962 = phi float [ %3958, %3956 ], [ 0.000000e+00, %3866 ]
  %3963 = phi float [ %3959, %3956 ], [ 0.000000e+00, %3866 ]
  %3964 = phi float [ %3900, %3956 ], [ 1.000000e+00, %3866 ]
  %3965 = add i32 %54, 208
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = lshr i32 %3967, 22
  %3969 = shl nuw nsw i32 %3968, 5
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = and i32 %3972, 64
  %3974 = icmp eq i32 %3973, 0
  br i1 %3974, label %4008, label %3975

; <label>:3975                                    ; preds = %3960
  %3976 = add i32 %54, 452
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = add i32 %3978, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = and i32 %3982, 131072
  %3984 = icmp eq i32 %3983, 0
  %3985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3980, %dx.types.Handle %97, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = fmul fast float %3986, %361
  %3990 = fmul fast float %3987, %364
  %3991 = fmul fast float %3988, %367
  br i1 %3984, label %3998, label %3992

; <label>:3992                                    ; preds = %3975
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = fmul fast float %3994, %3989
  %3996 = fmul fast float %3994, %3990
  %3997 = fmul fast float %3994, %3991
  br label %3998

; <label>:3998                                    ; preds = %3992, %3975
  %3999 = phi float [ %3995, %3992 ], [ %3989, %3975 ]
  %4000 = phi float [ %3996, %3992 ], [ %3990, %3975 ]
  %4001 = phi float [ %3997, %3992 ], [ %3991, %3975 ]
  %4002 = fmul fast float %3999, %3970
  %4003 = select i1 %218, float %4002, float %3999
  %4004 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4000, float %4001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = select i1 %218, float 0.000000e+00, float %3999
  %4006 = select i1 %218, float %4004, float %4000
  %4007 = select i1 %218, float 0.000000e+00, float %4001
  br label %4008

; <label>:4008                                    ; preds = %3998, %3960
  %4009 = phi float [ %4005, %3998 ], [ 0.000000e+00, %3960 ]
  %4010 = phi float [ %4006, %3998 ], [ 0.000000e+00, %3960 ]
  %4011 = phi float [ %4007, %3998 ], [ 0.000000e+00, %3960 ]
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 1024
  %4015 = icmp eq i32 %4014, 0
  br i1 %4015, label %4046, label %4016

; <label>:4016                                    ; preds = %4008
  %4017 = add i32 %54, 200
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = fmul fast float %4021, 0x3F70101020000000
  %4023 = lshr i32 %4019, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = lshr i32 %4019, 16
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = fmul fast float %4022, %4022
  %4032 = fmul fast float %4026, %4026
  %4033 = fmul fast float %4030, %4030
  %4034 = add i32 %54, 520
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = add i32 %4036, 0
  %4038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4038, %dx.types.Handle %98, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %4039, 2
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  %4045 = fmul fast float %4033, %4042
  br label %4046

; <label>:4046                                    ; preds = %4016, %4008
  %4047 = phi float [ %4043, %4016 ], [ 0.000000e+00, %4008 ]
  %4048 = phi float [ %4044, %4016 ], [ 0.000000e+00, %4008 ]
  %4049 = phi float [ %4045, %4016 ], [ 0.000000e+00, %4008 ]
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = fcmp fast ogt float %4049, 0.000000e+00
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call float @dx.op.unary.f32(i32 23, float %4049)  ; Log(value)
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = lshr i32 %4057, 7
  %4059 = and i32 %4058, 32752
  %4060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4059)  ; LegacyF16ToF32(value)
  %4061 = fmul fast float %4053, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4060
  %4063 = fmul fast float %4054, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4060
  %4065 = fmul fast float %4055, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4060
  %4067 = select i1 %4050, float %4062, float 1.270000e+02
  %4068 = select i1 %4051, float %4064, float 1.270000e+02
  %4069 = select i1 %4052, float %4066, float 1.270000e+02
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = and i32 %4071, 10240
  %4073 = icmp eq i32 %4072, 0
  br i1 %4073, label %4118, label %4074

; <label>:4074                                    ; preds = %4046
  %4075 = add i32 %54, 536
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = add i32 %4077, 0
  %4079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4079, %dx.types.Handle %98, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 3
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = and i32 %4084, 1048576
  %4086 = icmp ne i32 %4085, 0
  %4087 = and i32 %4084, 8192
  %4088 = icmp eq i32 %4087, 0
  br i1 %4088, label %4104, label %4089

; <label>:4089                                    ; preds = %4074
  %4090 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4091 = select i1 %4086, float %4090, float %4081
  %4092 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4093 = select i1 %4086, float %4092, float %4081
  %4094 = add i32 %54, 144
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = lshr i32 %4096, 16
  %4098 = and i32 %4097, 255
  %4099 = uitofp i32 %4098 to float
  %4100 = fmul fast float %4099, 0x3F80101020000000
  %4101 = fmul fast float %4100, %4093
  %4102 = fmul fast float %4100, %4081
  %4103 = fmul fast float %4100, %4091
  br label %4104

; <label>:4104                                    ; preds = %4089, %4074
  %4105 = phi float [ %4101, %4089 ], [ 0.000000e+00, %4074 ]
  %4106 = phi float [ %4102, %4089 ], [ 0.000000e+00, %4074 ]
  %4107 = phi float [ %4103, %4089 ], [ 0.000000e+00, %4074 ]
  %4108 = and i32 %4084, 2048
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4118, label %4110

; <label>:4110                                    ; preds = %4104
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = shl i32 %4112, 4
  %4114 = and i32 %4113, 32752
  %4115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4114)  ; LegacyF16ToF32(value)
  %4116 = fmul fast float %4115, %4082
  %4117 = call float @dx.op.binary.f32(i32 35, float %4116, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4118

; <label>:4118                                    ; preds = %4110, %4104, %4046
  %4119 = phi float [ %4105, %4110 ], [ %4105, %4104 ], [ 0.000000e+00, %4046 ]
  %4120 = phi float [ %4106, %4110 ], [ %4106, %4104 ], [ 0.000000e+00, %4046 ]
  %4121 = phi float [ %4107, %4110 ], [ %4107, %4104 ], [ 0.000000e+00, %4046 ]
  %4122 = phi float [ %4117, %4110 ], [ 0x3F70101020000000, %4104 ], [ 0x3F70101020000000, %4046 ]
  %4123 = add i32 %54, 144
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = and i32 %4125, 255
  %4127 = uitofp i32 %4126 to float
  %4128 = lshr i32 %4125, 8
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = fmul fast float %4130, %4131
  %4133 = fadd fast float %4132, %4127
  %4134 = fmul fast float %4133, 0x3F70101020000000
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  br i1 %3365, label %4136, label %4171

; <label>:4136                                    ; preds = %4118
  %4137 = fmul fast float %4122, 2.000000e+00
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fcmp fast olt float %4069, 1.270000e+02
  %4141 = fmul fast float %4067, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4137
  %4143 = fmul fast float %4068, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4137
  %4145 = fmul fast float %4069, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4137
  %4147 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = fadd fast float %4150, -1.000000e+00
  %4154 = select i1 %4138, float %4153, float -1.000000e+00
  %4155 = fadd fast float %4151, -1.000000e+00
  %4156 = select i1 %4139, float %4155, float -1.000000e+00
  %4157 = fadd fast float %4152, -1.000000e+00
  %4158 = select i1 %4140, float %4157, float -1.000000e+00
  %4159 = fmul fast float %4154, %3661
  %4160 = fmul fast float %4156, %3661
  %4161 = fmul fast float %4158, %3661
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fadd fast float %4161, 1.000000e+00
  %4165 = fmul fast float %4162, %3350
  %4166 = fmul fast float %4163, %3351
  %4167 = fmul fast float %4164, %3352
  %4168 = fmul fast float %4162, %3347
  %4169 = fmul fast float %4163, %3348
  %4170 = fmul fast float %4164, %3349
  br label %4171

; <label>:4171                                    ; preds = %4136, %4118
  %4172 = phi float [ %4168, %4136 ], [ %3347, %4118 ]
  %4173 = phi float [ %4169, %4136 ], [ %3348, %4118 ]
  %4174 = phi float [ %4170, %4136 ], [ %3349, %4118 ]
  %4175 = phi float [ %4165, %4136 ], [ %3350, %4118 ]
  %4176 = phi float [ %4166, %4136 ], [ %3351, %4118 ]
  %4177 = phi float [ %4167, %4136 ], [ %3352, %4118 ]
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = and i32 %4179, 3
  %4181 = icmp eq i32 %4180, 3
  br i1 %4181, label %4260, label %4182

; <label>:4182                                    ; preds = %4171
  %4183 = and i32 %4179, 16
  %4184 = icmp ne i32 %4183, 0
  %4185 = select i1 %4184, float %3661, float 0.000000e+00
  %4186 = icmp eq i32 %4180, 0
  br i1 %4186, label %4187, label %4215

; <label>:4187                                    ; preds = %4182
  %4188 = and i32 %4179, 64
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %3661, float 0.000000e+00
  %4191 = fsub fast float %3881, %4175
  %4192 = fsub fast float %3882, %4176
  %4193 = fsub fast float %3883, %4177
  %4194 = fmul fast float %4185, %4191
  %4195 = fmul fast float %4185, %4192
  %4196 = fmul fast float %4185, %4193
  %4197 = fadd fast float %4194, %4175
  %4198 = fadd fast float %4195, %4176
  %4199 = fadd fast float %4196, %4177
  %4200 = fsub fast float %3867, %3359
  %4201 = fmul fast float %4185, %4200
  %4202 = fadd fast float %4201, %3359
  %4203 = fsub fast float %4009, %4172
  %4204 = fsub fast float %4010, %4173
  %4205 = fsub fast float %4011, %4174
  %4206 = fmul fast float %4190, %4203
  %4207 = fmul fast float %4190, %4204
  %4208 = fmul fast float %4190, %4205
  %4209 = fadd fast float %4206, %4172
  %4210 = fadd fast float %4207, %4173
  %4211 = fadd fast float %4208, %4174
  %4212 = fsub fast float %4135, %3363
  %4213 = fmul fast float %4185, %4212
  %4214 = fadd fast float %4213, %3363
  br label %4260

; <label>:4215                                    ; preds = %4182
  %4216 = icmp eq i32 %4180, 1
  br i1 %4216, label %4217, label %4230

; <label>:4217                                    ; preds = %4215
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fadd fast float %3883, -1.000000e+00
  %4221 = fmul fast float %4185, %4218
  %4222 = fmul fast float %4185, %4219
  %4223 = fmul fast float %4185, %4220
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fadd fast float %4223, 1.000000e+00
  %4227 = fmul fast float %4224, %4175
  %4228 = fmul fast float %4225, %4176
  %4229 = fmul fast float %4226, %4177
  br label %4260

; <label>:4230                                    ; preds = %4215
  %4231 = icmp eq i32 %4180, 2
  br i1 %4231, label %4232, label %4260

; <label>:4232                                    ; preds = %4230
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = call float @dx.op.unary.f32(i32 24, float %3883)  ; Sqrt(value)
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fmul fast float %4236, %4185
  %4240 = fmul fast float %4237, %4185
  %4241 = fmul fast float %4238, %4185
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fadd fast float %4241, 5.000000e-01
  %4245 = fmul fast float %4242, 2.000000e+00
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4175
  %4248 = fadd fast float %4247, %4245
  %4249 = fmul fast float %4248, %4175
  %4250 = fmul fast float %4243, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4176
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4176
  %4255 = fmul fast float %4244, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4177
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4177
  br label %4260

; <label>:4260                                    ; preds = %4232, %4230, %4217, %4187, %4171
  %4261 = phi float [ %4172, %4171 ], [ %4172, %4232 ], [ %4172, %4230 ], [ %4172, %4217 ], [ %4209, %4187 ]
  %4262 = phi float [ %4173, %4171 ], [ %4173, %4232 ], [ %4173, %4230 ], [ %4173, %4217 ], [ %4210, %4187 ]
  %4263 = phi float [ %4174, %4171 ], [ %4174, %4232 ], [ %4174, %4230 ], [ %4174, %4217 ], [ %4211, %4187 ]
  %4264 = phi float [ %4175, %4171 ], [ %4249, %4232 ], [ %4175, %4230 ], [ %4227, %4217 ], [ %4197, %4187 ]
  %4265 = phi float [ %4176, %4171 ], [ %4254, %4232 ], [ %4176, %4230 ], [ %4228, %4217 ], [ %4198, %4187 ]
  %4266 = phi float [ %4177, %4171 ], [ %4259, %4232 ], [ %4177, %4230 ], [ %4229, %4217 ], [ %4199, %4187 ]
  %4267 = phi float [ %3359, %4171 ], [ %3359, %4232 ], [ %3359, %4230 ], [ %3359, %4217 ], [ %4202, %4187 ]
  %4268 = phi float [ %3363, %4171 ], [ %3363, %4232 ], [ %3363, %4230 ], [ %3363, %4217 ], [ %4214, %4187 ]
  %4269 = and i32 %4179, 12
  %4270 = icmp eq i32 %4269, 12
  br i1 %4270, label %4401, label %4271

; <label>:4271                                    ; preds = %4260
  %4272 = and i32 %4179, 2097184
  %4273 = icmp eq i32 %4272, 2097184
  %4274 = select i1 %4273, float %3661, float 0.000000e+00
  %4275 = and i32 %4179, 4194336
  %4276 = icmp eq i32 %4275, 4194336
  %4277 = select i1 %4276, float %3661, float 0.000000e+00
  %4278 = and i32 %4179, 8388640
  %4279 = icmp eq i32 %4278, 8388640
  %4280 = select i1 %4279, float %3661, float 0.000000e+00
  %4281 = and i32 %4179, 1024
  %4282 = icmp ne i32 %4281, 0
  %4283 = select i1 %4282, float %3661, float 0.000000e+00
  %4284 = and i32 %4179, 2048
  %4285 = icmp ne i32 %4284, 0
  %4286 = select i1 %4285, float %3661, float 0.000000e+00
  %4287 = and i32 %4179, 8192
  %4288 = icmp ne i32 %4287, 0
  %4289 = select i1 %4288, float %3661, float 0.000000e+00
  %4290 = icmp eq i32 %4269, 0
  br i1 %4290, label %4291, label %4325

; <label>:4291                                    ; preds = %4271
  %4292 = fsub fast float %3962, %3345
  %4293 = fsub fast float %3963, %3346
  %4294 = fmul fast float %4274, %4292
  %4295 = fmul fast float %4274, %4293
  %4296 = fadd fast float %4294, %3345
  %4297 = fadd fast float %4295, %3346
  %4298 = fsub fast float %3964, %3361
  %4299 = fmul fast float %4277, %4298
  %4300 = fadd fast float %4299, %3361
  %4301 = fsub fast float %3961, %3360
  %4302 = fmul fast float %4280, %4301
  %4303 = fadd fast float %4302, %3360
  %4304 = fsub fast float %4067, %3356
  %4305 = fsub fast float %4068, %3357
  %4306 = fsub fast float %4069, %3358
  %4307 = fmul fast float %4283, %4304
  %4308 = fmul fast float %4283, %4305
  %4309 = fmul fast float %4283, %4306
  %4310 = fadd fast float %4307, %3356
  %4311 = fadd fast float %4308, %3357
  %4312 = fadd fast float %4309, %3358
  %4313 = fsub fast float %4122, %3362
  %4314 = fmul fast float %4286, %4313
  %4315 = fadd fast float %4314, %3362
  %4316 = fsub fast float %4119, %3353
  %4317 = fsub fast float %4120, %3354
  %4318 = fsub fast float %4121, %3355
  %4319 = fmul fast float %4289, %4316
  %4320 = fmul fast float %4289, %4317
  %4321 = fmul fast float %4289, %4318
  %4322 = fadd fast float %4319, %3353
  %4323 = fadd fast float %4320, %3354
  %4324 = fadd fast float %4321, %3355
  br label %4401

; <label>:4325                                    ; preds = %4271
  %4326 = icmp eq i32 %4269, 4
  br i1 %4326, label %4327, label %4373

; <label>:4327                                    ; preds = %4325
  %4328 = fmul fast float %4274, %3962
  %4329 = fmul fast float %4274, %3963
  %4330 = fadd fast float %4328, %3345
  %4331 = fadd fast float %4329, %3346
  %4332 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4333 = fsub fast float %4332, %3361
  %4334 = fmul fast float %4333, %4277
  %4335 = fadd fast float %4334, %3361
  %4336 = fadd fast float %3961, %3360
  %4337 = fmul fast float %4336, 0x3FF337FAE0000000
  %4338 = fmul fast float %3360, %3360
  %4339 = fmul fast float %3961, %3961
  %4340 = fadd fast float %4339, %4338
  %4341 = fmul fast float %4340, 0x3FE5152B00000000
  %4342 = fmul fast float %3360, 0xBFCC1F85E0000000
  %4343 = fmul fast float %4342, %3961
  %4344 = fadd fast float %4343, 0xBFE1363700000000
  %4345 = fadd fast float %4344, %4337
  %4346 = fsub fast float %4345, %4341
  %4347 = fmul fast float %4336, 0x3FBA6F0D00000000
  %4348 = fmul fast float %4340, 0x3FD0432880000000
  %4349 = fmul fast float %3360, 0xBFEF110800000000
  %4350 = fmul fast float %4349, %3961
  %4351 = fadd fast float %4350, 1.000000e+00
  %4352 = fsub fast float %4351, %4347
  %4353 = fadd fast float %4352, %4348
  %4354 = fdiv fast float %4346, %4353
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fsub fast float %4355, %3360
  %4357 = fmul fast float %4356, %4280
  %4358 = fadd fast float %4357, %3360
  %4359 = fmul fast float %4283, %4067
  %4360 = fmul fast float %4283, %4068
  %4361 = fmul fast float %4283, %4069
  %4362 = fadd fast float %4359, %3356
  %4363 = fadd fast float %4360, %3357
  %4364 = fadd fast float %4361, %3358
  %4365 = fmul fast float %4286, %4122
  %4366 = fadd fast float %4365, %3362
  %4367 = fmul fast float %4289, %4119
  %4368 = fmul fast float %4289, %4120
  %4369 = fmul fast float %4289, %4121
  %4370 = fadd fast float %4367, %3353
  %4371 = fadd fast float %4368, %3354
  %4372 = fadd fast float %4369, %3355
  br label %4401

; <label>:4373                                    ; preds = %4325
  %4374 = icmp eq i32 %4269, 8
  br i1 %4374, label %4375, label %4401

; <label>:4375                                    ; preds = %4373
  %4376 = fmul fast float %4274, %3962
  %4377 = fmul fast float %4274, %3963
  %4378 = fadd fast float %4376, %3345
  %4379 = fadd fast float %4377, %3346
  %4380 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4381 = fsub fast float %4380, %3361
  %4382 = fmul fast float %4381, %4277
  %4383 = fadd fast float %4382, %3361
  %4384 = fsub fast float %3961, %3360
  %4385 = fmul fast float %4280, %4384
  %4386 = fadd fast float %4385, %3360
  %4387 = fmul fast float %4283, %4067
  %4388 = fmul fast float %4283, %4068
  %4389 = fmul fast float %4283, %4069
  %4390 = fadd fast float %4387, %3356
  %4391 = fadd fast float %4388, %3357
  %4392 = fadd fast float %4389, %3358
  %4393 = fmul fast float %4286, %4122
  %4394 = fadd fast float %4393, %3362
  %4395 = fmul fast float %4289, %4119
  %4396 = fmul fast float %4289, %4120
  %4397 = fmul fast float %4289, %4121
  %4398 = fadd fast float %4395, %3353
  %4399 = fadd fast float %4396, %3354
  %4400 = fadd fast float %4397, %3355
  br label %4401

; <label>:4401                                    ; preds = %4375, %4373, %4327, %4291, %4260, %3660, %3364, %3344
  %4402 = phi float [ %3345, %4260 ], [ %3345, %3660 ], [ %3345, %3344 ], [ %3345, %3364 ], [ %4296, %4291 ], [ %4330, %4327 ], [ %3345, %4373 ], [ %4378, %4375 ]
  %4403 = phi float [ %3346, %4260 ], [ %3346, %3660 ], [ %3346, %3344 ], [ %3346, %3364 ], [ %4297, %4291 ], [ %4331, %4327 ], [ %3346, %4373 ], [ %4379, %4375 ]
  %4404 = phi float [ %4261, %4260 ], [ %3347, %3660 ], [ %3347, %3344 ], [ %3347, %3364 ], [ %4261, %4291 ], [ %4261, %4327 ], [ %4261, %4373 ], [ %4261, %4375 ]
  %4405 = phi float [ %4262, %4260 ], [ %3348, %3660 ], [ %3348, %3344 ], [ %3348, %3364 ], [ %4262, %4291 ], [ %4262, %4327 ], [ %4262, %4373 ], [ %4262, %4375 ]
  %4406 = phi float [ %4263, %4260 ], [ %3349, %3660 ], [ %3349, %3344 ], [ %3349, %3364 ], [ %4263, %4291 ], [ %4263, %4327 ], [ %4263, %4373 ], [ %4263, %4375 ]
  %4407 = phi float [ %4264, %4260 ], [ %3350, %3660 ], [ %3350, %3344 ], [ %3350, %3364 ], [ %4264, %4291 ], [ %4264, %4327 ], [ %4264, %4373 ], [ %4264, %4375 ]
  %4408 = phi float [ %4265, %4260 ], [ %3351, %3660 ], [ %3351, %3344 ], [ %3351, %3364 ], [ %4265, %4291 ], [ %4265, %4327 ], [ %4265, %4373 ], [ %4265, %4375 ]
  %4409 = phi float [ %4266, %4260 ], [ %3352, %3660 ], [ %3352, %3344 ], [ %3352, %3364 ], [ %4266, %4291 ], [ %4266, %4327 ], [ %4266, %4373 ], [ %4266, %4375 ]
  %4410 = phi float [ %3353, %4260 ], [ %3353, %3660 ], [ %3353, %3344 ], [ %3353, %3364 ], [ %4322, %4291 ], [ %4370, %4327 ], [ %3353, %4373 ], [ %4398, %4375 ]
  %4411 = phi float [ %3354, %4260 ], [ %3354, %3660 ], [ %3354, %3344 ], [ %3354, %3364 ], [ %4323, %4291 ], [ %4371, %4327 ], [ %3354, %4373 ], [ %4399, %4375 ]
  %4412 = phi float [ %3355, %4260 ], [ %3355, %3660 ], [ %3355, %3344 ], [ %3355, %3364 ], [ %4324, %4291 ], [ %4372, %4327 ], [ %3355, %4373 ], [ %4400, %4375 ]
  %4413 = phi float [ %3356, %4260 ], [ %3356, %3660 ], [ %3356, %3344 ], [ %3356, %3364 ], [ %4310, %4291 ], [ %4362, %4327 ], [ %3356, %4373 ], [ %4390, %4375 ]
  %4414 = phi float [ %3357, %4260 ], [ %3357, %3660 ], [ %3357, %3344 ], [ %3357, %3364 ], [ %4311, %4291 ], [ %4363, %4327 ], [ %3357, %4373 ], [ %4391, %4375 ]
  %4415 = phi float [ %3358, %4260 ], [ %3358, %3660 ], [ %3358, %3344 ], [ %3358, %3364 ], [ %4312, %4291 ], [ %4364, %4327 ], [ %3358, %4373 ], [ %4392, %4375 ]
  %4416 = phi float [ %4267, %4260 ], [ %3359, %3660 ], [ %3359, %3344 ], [ %3359, %3364 ], [ %4267, %4291 ], [ %4267, %4327 ], [ %4267, %4373 ], [ %4267, %4375 ]
  %4417 = phi float [ %3360, %4260 ], [ %3360, %3660 ], [ %3360, %3344 ], [ %3360, %3364 ], [ %4303, %4291 ], [ %4358, %4327 ], [ %3360, %4373 ], [ %4386, %4375 ]
  %4418 = phi float [ %3361, %4260 ], [ %3361, %3660 ], [ %3361, %3344 ], [ %3361, %3364 ], [ %4300, %4291 ], [ %4335, %4327 ], [ %3361, %4373 ], [ %4383, %4375 ]
  %4419 = phi float [ %3362, %4260 ], [ %3362, %3660 ], [ %3362, %3344 ], [ %3362, %3364 ], [ %4315, %4291 ], [ %4366, %4327 ], [ %3362, %4373 ], [ %4394, %4375 ]
  %4420 = phi float [ %4268, %4260 ], [ %3363, %3660 ], [ %3363, %3344 ], [ %3363, %3364 ], [ %4268, %4291 ], [ %4268, %4327 ], [ %4268, %4373 ], [ %4268, %4375 ]
  %4421 = add i32 %54, 360
  %4422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.i32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.i32 %4422, 1
  %4425 = bitcast i32 %4423 to float
  %4426 = bitcast i32 %4424 to float
  %4427 = fcmp fast oge float %4425, 0.000000e+00
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = select i1 %4427, float %4425, float %4429
  %4431 = add i32 %54, 488
  %4432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.i32 %4432, 0
  %4434 = add i32 %4433, 0
  %4435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4435, %dx.types.Handle %98, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %4426
  %4439 = fadd fast float %4438, %4430
  %4440 = call float @dx.op.dot2.f32(i32 54, float %4402, float %4403, float %4402, float %4403)  ; Dot2(ax,ay,bx,by)
  %4441 = fmul fast float %4440, 0x3FE3333340000000
  %4442 = fsub fast float 1.000000e+00, %4441
  %4443 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4442, float %4402, float %4403, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %4444 = call float @dx.op.unary.f32(i32 25, float %4443)  ; Rsqrt(value)
  %4445 = fmul fast float %4444, %4402
  %4446 = fmul fast float %4444, %4403
  %4447 = fmul fast float %4442, %4444
  %4448 = fmul fast float %4447, %108
  %4449 = fmul fast float %4447, %109
  %4450 = fmul fast float %4447, %110
  %4451 = fmul fast float %4445, %76
  %4452 = fmul fast float %4445, %77
  %4453 = fmul fast float %4445, %78
  %4454 = fadd fast float %4448, %4451
  %4455 = fadd fast float %4449, %4452
  %4456 = fadd fast float %4450, %4453
  %4457 = fmul fast float %120, %4446
  %4458 = fmul fast float %121, %4446
  %4459 = fmul fast float %122, %4446
  %4460 = fadd fast float %4454, %4457
  %4461 = fadd fast float %4455, %4458
  %4462 = fadd fast float %4456, %4459
  %4463 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4461, float %4462, float %4460, float %4461, float %4462)  ; Dot3(ax,ay,az,bx,by,bz)
  %4464 = call float @dx.op.unary.f32(i32 25, float %4463)  ; Rsqrt(value)
  %4465 = fmul fast float %4460, %4464
  %4466 = fmul fast float %4461, %4464
  %4467 = fmul fast float %4462, %4464
  %4468 = and i32 %56, 1
  %4469 = icmp eq i32 %4468, 0
  br i1 %4469, label %4470, label %5066

; <label>:4470                                    ; preds = %4401
  %4471 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4472 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4473 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4474 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4475 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4476 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4477 = fadd fast float %4471, %156
  %4478 = fadd fast float %4472, %157
  %4479 = fadd fast float %4473, %158
  %4480 = fadd fast float %4474, %156
  %4481 = fadd fast float %4475, %157
  %4482 = fadd fast float %4476, %158
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4490 = fmul fast float %4484, %101
  %4491 = fmul fast float %4490, %4488
  %4492 = fmul fast float %4485, %102
  %4493 = fmul fast float %4492, %4489
  %4494 = fptoui float %4491 to i32
  %4495 = fptoui float %4493 to i32
  %4496 = fadd fast float %4484, -1.000000e+00
  %4497 = fadd fast float %4485, -1.000000e+00
  %4498 = fptoui float %4496 to i32
  %4499 = fptoui float %4497 to i32
  %4500 = call i32 @dx.op.binary.i32(i32 40, i32 %4494, i32 %4498)  ; UMin(a,b)
  %4501 = call i32 @dx.op.binary.i32(i32 40, i32 %4495, i32 %4499)  ; UMin(a,b)
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4505 = fmul fast float %4503, %92
  %4506 = fsub fast float %4505, %4504
  %4507 = fadd fast float %4486, -1.000000e+00
  %4508 = call float @dx.op.binary.f32(i32 36, float %4506, float %4507)  ; FMin(a,b)
  %4509 = fptoui float %4508 to i32
  %4510 = fptoui float %4484 to i32
  %4511 = fptoui float %4485 to i32
  %4512 = mul i32 %4509, %4511
  %4513 = add i32 %4512, %4501
  %4514 = mul i32 %4513, %4510
  %4515 = add i32 %4514, %4500
  %4516 = shl i32 %4515, 2
  %4517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4516, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.i32 %4517, 0
  %4519 = and i32 %4518, 1023
  %4520 = lshr i32 %4518, 10
  %4521 = icmp eq i32 %4519, 0
  br i1 %4521, label %5028, label %4522

; <label>:4522                                    ; preds = %4470
  %4523 = and i32 %4518, 1023
  br label %4524

; <label>:4524                                    ; preds = %4657, %4522
  %4525 = phi i32 [ %4607, %4657 ], [ 0, %4522 ]
  %4526 = phi float [ %4658, %4657 ], [ 0.000000e+00, %4522 ]
  %4527 = phi float [ %4659, %4657 ], [ %1245, %4522 ]
  %4528 = phi float [ %4660, %4657 ], [ %4439, %4522 ]
  %4529 = phi float [ %4661, %4657 ], [ %4420, %4522 ]
  %4530 = phi float [ %4662, %4657 ], [ %4413, %4522 ]
  %4531 = phi float [ %4663, %4657 ], [ %4414, %4522 ]
  %4532 = phi float [ %4664, %4657 ], [ %4415, %4522 ]
  %4533 = phi float [ %4665, %4657 ], [ 0.000000e+00, %4522 ]
  %4534 = phi float [ %4666, %4657 ], [ 0.000000e+00, %4522 ]
  %4535 = phi float [ %4667, %4657 ], [ %4410, %4522 ]
  %4536 = phi float [ %4668, %4657 ], [ %4411, %4522 ]
  %4537 = phi float [ %4669, %4657 ], [ %4412, %4522 ]
  %4538 = phi float [ %4670, %4657 ], [ %4404, %4522 ]
  %4539 = phi float [ %4671, %4657 ], [ %4405, %4522 ]
  %4540 = phi float [ %4672, %4657 ], [ %4406, %4522 ]
  %4541 = phi float [ %4673, %4657 ], [ %4465, %4522 ]
  %4542 = phi float [ %4674, %4657 ], [ %4466, %4522 ]
  %4543 = phi float [ %4675, %4657 ], [ %4467, %4522 ]
  %4544 = phi float [ %4676, %4657 ], [ %4418, %4522 ]
  %4545 = phi float [ %4677, %4657 ], [ %4417, %4522 ]
  %4546 = phi float [ %4678, %4657 ], [ 0.000000e+00, %4522 ]
  %4547 = phi float [ %4679, %4657 ], [ %4416, %4522 ]
  %4548 = phi float [ %4680, %4657 ], [ %4407, %4522 ]
  %4549 = phi float [ %4681, %4657 ], [ %4408, %4522 ]
  %4550 = phi float [ %4682, %4657 ], [ %4409, %4522 ]
  %4551 = add nuw nsw i32 %4525, %4520
  %4552 = shl i32 %4551, 2
  %4553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.i32 %4553, 0
  %4555 = shl i32 %4554, 8
  %4556 = or i32 %4555, 48
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4562 = or i32 %4555, 64
  %4563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.i32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.i32 %4563, 1
  %4566 = or i32 %4555, 80
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4570 = or i32 %4555, 96
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4576 = or i32 %4555, 112
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4579 = or i32 %4555, 128
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4555, 144
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.ResRet.f32 %4586, 2
  %4590 = extractvalue %dx.types.ResRet.f32 %4586, 3
  %4591 = or i32 %4555, 160
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.ResRet.f32 %4592, 2
  %4596 = extractvalue %dx.types.ResRet.f32 %4592, 3
  %4597 = or i32 %4555, 192
  %4598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.i32 %4598, 0
  %4600 = or i32 %4555, 208
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = or i32 %4555, 248
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = add nuw nsw i32 %4525, 1
  %4608 = bitcast float %4561 to i32
  %4609 = and i32 %4608, 512
  %4610 = icmp eq i32 %4609, 0
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = call float @dx.op.dot4.f32(i32 56, float %4612, float %4613, float %4614, float %4615, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4617 = or i32 %4555, 16
  %4618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4617, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.ResRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.ResRet.f32 %4618, 3
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = or i32 %4555, 32
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.ResRet.f32 %4625, 3
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4626, float %4627, float %4628, float %4629, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = call float @dx.op.unary.f32(i32 27, float %4616)  ; Round_ni(value)
  %4632 = call float @dx.op.unary.f32(i32 6, float %4631)  ; FAbs(value)
  %4633 = call float @dx.op.unary.f32(i32 27, float %4623)  ; Round_ni(value)
  %4634 = call float @dx.op.unary.f32(i32 6, float %4633)  ; FAbs(value)
  %4635 = call float @dx.op.unary.f32(i32 6, float %4630)  ; FAbs(value)
  %4636 = call float @dx.op.unary.f32(i32 27, float %4635)  ; Round_ni(value)
  %4637 = fadd fast float %4634, %4632
  %4638 = fadd fast float %4637, %4636
  %4639 = fcmp fast oeq float %4638, 0.000000e+00
  %4640 = call float @dx.op.dot4.f32(i32 56, float %4612, float %4613, float %4614, float %4615, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4641 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4642 = call float @dx.op.dot4.f32(i32 56, float %4612, float %4613, float %4614, float %4615, float %4480, float %4481, float %4482, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4643 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %4480, float %4481, float %4482, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4644 = fsub fast float %4640, %4616
  %4645 = fsub fast float %4642, %4616
  %4646 = fsub fast float %4641, %4623
  %4647 = fsub fast float %4643, %4623
  %4648 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4559, float %4560, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 2
  %4651 = fadd fast float %4650, %4648
  %4652 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4654 = fcmp fast ogt float %4652, %4653
  %4655 = and i1 %4639, %4654
  %4656 = and i1 %4610, %4655
  br i1 %4656, label %4684, label %4657

; <label>:4657                                    ; preds = %5014, %4765, %4684, %4524
  %4658 = phi float [ %4526, %4684 ], [ %4768, %4765 ], [ %4768, %5014 ], [ %4526, %4524 ]
  %4659 = phi float [ %4527, %4684 ], [ %4527, %4765 ], [ %4990, %5014 ], [ %4527, %4524 ]
  %4660 = phi float [ %4528, %4684 ], [ %4528, %4765 ], [ %4989, %5014 ], [ %4528, %4524 ]
  %4661 = phi float [ %4529, %4684 ], [ %4529, %4765 ], [ %4987, %5014 ], [ %4529, %4524 ]
  %4662 = phi float [ %4530, %4684 ], [ %4530, %4765 ], [ %4965, %5014 ], [ %4530, %4524 ]
  %4663 = phi float [ %4531, %4684 ], [ %4531, %4765 ], [ %4966, %5014 ], [ %4531, %4524 ]
  %4664 = phi float [ %4532, %4684 ], [ %4532, %4765 ], [ %4967, %5014 ], [ %4532, %4524 ]
  %4665 = phi float [ %4533, %4684 ], [ %4533, %4765 ], [ %4892, %5014 ], [ %4533, %4524 ]
  %4666 = phi float [ %4534, %4684 ], [ %4534, %4765 ], [ %4890, %5014 ], [ %4534, %4524 ]
  %4667 = phi float [ %4535, %4684 ], [ %4535, %4765 ], [ %4935, %5014 ], [ %4535, %4524 ]
  %4668 = phi float [ %4536, %4684 ], [ %4536, %4765 ], [ %4936, %5014 ], [ %4536, %4524 ]
  %4669 = phi float [ %4537, %4684 ], [ %4537, %4765 ], [ %4937, %5014 ], [ %4537, %4524 ]
  %4670 = phi float [ %4538, %4684 ], [ %4538, %4765 ], [ %5024, %5014 ], [ %4538, %4524 ]
  %4671 = phi float [ %4539, %4684 ], [ %4539, %4765 ], [ %5025, %5014 ], [ %4539, %4524 ]
  %4672 = phi float [ %4540, %4684 ], [ %4540, %4765 ], [ %5026, %5014 ], [ %4540, %4524 ]
  %4673 = phi float [ %4541, %4684 ], [ %4541, %4765 ], [ %4871, %5014 ], [ %4541, %4524 ]
  %4674 = phi float [ %4542, %4684 ], [ %4542, %4765 ], [ %4872, %5014 ], [ %4542, %4524 ]
  %4675 = phi float [ %4543, %4684 ], [ %4543, %4765 ], [ %4873, %5014 ], [ %4543, %4524 ]
  %4676 = phi float [ %4544, %4684 ], [ %4544, %4765 ], [ %4945, %5014 ], [ %4544, %4524 ]
  %4677 = phi float [ %4545, %4684 ], [ %4545, %4765 ], [ %4942, %5014 ], [ %4545, %4524 ]
  %4678 = phi float [ %4546, %4684 ], [ %4546, %4765 ], [ %4939, %5014 ], [ %4546, %4524 ]
  %4679 = phi float [ %4547, %4684 ], [ %4547, %4765 ], [ %4888, %5014 ], [ %4547, %4524 ]
  %4680 = phi float [ %4548, %4684 ], [ %4548, %4765 ], [ %4883, %5014 ], [ %4548, %4524 ]
  %4681 = phi float [ %4549, %4684 ], [ %4549, %4765 ], [ %4884, %5014 ], [ %4549, %4524 ]
  %4682 = phi float [ %4550, %4684 ], [ %4550, %4765 ], [ %4885, %5014 ], [ %4550, %4524 ]
  %4683 = icmp eq i32 %4607, %4523
  br i1 %4683, label %5027, label %4524

; <label>:4684                                    ; preds = %4524
  %4685 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4686 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4690 = extractvalue %dx.types.ResRet.i32 %4563, 3
  %4691 = extractvalue %dx.types.ResRet.i32 %4563, 2
  %4692 = add i32 %4690, 0
  %4693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4693, %dx.types.Handle %4694, float %4616, float %4623, float undef, float undef, i32 0, i32 0, i32 undef, float %4644, float %4646, float undef, float %4645, float %4647, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = fmul fast float %4696, %4689
  %4698 = fadd fast float %4697, %4688
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4616, %4572
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4623, float %4700)  ; FMad(a,b,c)
  %4702 = fadd fast float %4701, %4687
  %4703 = fmul fast float %4616, %4574
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4623, float %4703)  ; FMad(a,b,c)
  %4705 = fadd fast float %4704, %4686
  %4706 = fmul fast float %4644, %4572
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4646, float %4706)  ; FMad(a,b,c)
  %4708 = fmul fast float %4644, %4574
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4646, float %4708)  ; FMad(a,b,c)
  %4710 = fmul fast float %4645, %4572
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4647, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4645, %4574
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4575, float %4647, float %4712)  ; FMad(a,b,c)
  %4714 = add i32 %4691, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4715, %dx.types.Handle %4694, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = and i32 %4608, 1024
  %4719 = icmp ne i32 %4718, 0
  %4720 = fcmp fast ogt float %4717, 0x3FE0101020000000
  %4721 = uitofp i1 %4720 to float
  %4722 = select i1 %4719, float %4721, float %4717
  %4723 = and i32 %4608, 8192
  %4724 = icmp ne i32 %4723, 0
  %4725 = select i1 %4724, float %4685, float 1.000000e+00
  %4726 = fmul fast float %4616, 2.000000e+00
  %4727 = fadd fast float %4726, -1.000000e+00
  %4728 = call float @dx.op.unary.f32(i32 6, float %4727)  ; FAbs(value)
  %4729 = fmul fast float %4728, %4605
  %4730 = fsub fast float %4729, %4605
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4623, 2.000000e+00
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = call float @dx.op.unary.f32(i32 6, float %4733)  ; FAbs(value)
  %4735 = fmul fast float %4734, %4606
  %4736 = fsub fast float %4735, %4606
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4635, %4568
  %4739 = fsub fast float %4738, %4568
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4699, %4725
  %4742 = fmul fast float %4741, %4696
  %4743 = fmul fast float %4742, %4731
  %4744 = fmul fast float %4743, %4722
  %4745 = fmul fast float %4744, %4737
  %4746 = fmul fast float %4745, %4740
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4750 = fsub fast float %4652, %4749
  %4751 = fmul fast float %4750, %4748
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4746, %4569
  %4754 = fadd fast float %4746, %4569
  %4755 = fmul fast float %4754, %4578
  %4756 = fsub fast float %4755, %4578
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = and i32 %4608, 128
  %4759 = icmp ne i32 %4758, 0
  %4760 = select i1 %4759, float %4757, float %4753
  %4761 = fmul fast float %4760, %4752
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = fcmp fast ugt float %4761, %4763
  br i1 %4764, label %4765, label %4657

; <label>:4765                                    ; preds = %4684
  %4766 = select i1 %4724, float %4761, float 0.000000e+00
  %4767 = fadd fast float %4766, %4526
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  br i1 %4724, label %4657, label %4769

; <label>:4769                                    ; preds = %4765
  %4770 = and i32 %4608, 4
  %4771 = and i32 %4608, 8
  %4772 = add i32 %4564, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 1
  %4778 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4779 = extractvalue %dx.types.ResRet.f32 %4775, 3
  %4780 = bitcast float %4590 to i32
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = lshr i32 %4780, 8
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = fmul fast float %4779, %4782
  %4787 = fadd fast float %4786, %4785
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = add i32 %4565, 0
  %4790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4790, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = bitcast float %4584 to i32
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
  %4815 = fmul fast float %4776, %4593
  %4816 = fmul fast float %4777, %4594
  %4817 = fmul fast float %4778, %4595
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
  %4835 = fmul fast float %4834, %4558
  %4836 = fmul fast float %4834, %4559
  %4837 = fmul fast float %4834, %4560
  %4838 = fmul fast float %4832, %4581
  %4839 = fmul fast float %4832, %4582
  %4840 = fmul fast float %4832, %4583
  %4841 = fadd fast float %4838, %4835
  %4842 = fadd fast float %4839, %4836
  %4843 = fadd fast float %4840, %4837
  %4844 = fmul fast float %4833, %4587
  %4845 = fmul fast float %4833, %4588
  %4846 = fmul fast float %4833, %4589
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
  %4858 = and i32 %4608, 1
  %4859 = icmp eq i32 %4858, 0
  br i1 %4859, label %4860, label %4864

; <label>:4860                                    ; preds = %4769
  %4861 = fsub fast float %4852, %4541
  %4862 = fsub fast float %4853, %4542
  %4863 = fsub fast float %4854, %4543
  br label %4864

; <label>:4864                                    ; preds = %4860, %4769
  %4865 = phi float [ %4861, %4860 ], [ %4852, %4769 ]
  %4866 = phi float [ %4862, %4860 ], [ %4853, %4769 ]
  %4867 = phi float [ %4863, %4860 ], [ %4854, %4769 ]
  %4868 = fmul float %4867, %4857
  %4869 = fmul float %4866, %4857
  %4870 = fmul float %4865, %4857
  %4871 = fadd fast float %4870, %4541
  %4872 = fadd fast float %4869, %4542
  %4873 = fadd fast float %4868, %4543
  %4874 = icmp ne i32 %4770, 0
  %4875 = select i1 %4874, float 1.000000e+00, float 0.000000e+00
  %4876 = fmul fast float %4761, %4875
  %4877 = fsub fast float %4815, %4548
  %4878 = fsub fast float %4816, %4549
  %4879 = fsub fast float %4817, %4550
  %4880 = fmul fast float %4877, %4876
  %4881 = fmul fast float %4878, %4876
  %4882 = fmul fast float %4879, %4876
  %4883 = fadd fast float %4880, %4548
  %4884 = fadd fast float %4881, %4549
  %4885 = fadd fast float %4882, %4550
  %4886 = fsub fast float %4788, %4547
  %4887 = fmul fast float %4886, %4876
  %4888 = fadd fast float %4887, %4547
  %4889 = fmul fast float %4876, %4534
  %4890 = fsub fast float %4534, %4889
  %4891 = fmul fast float %4876, %4533
  %4892 = fsub fast float %4533, %4891
  %4893 = bitcast float %4602 to i32
  %4894 = lshr i32 %4893, 16
  %4895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4894)  ; LegacyF16ToF32(value)
  %4896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %4929 = fsub fast float %4926, %4535
  %4930 = fsub fast float %4927, %4536
  %4931 = fsub fast float %4928, %4537
  %4932 = fmul fast float %4929, %4876
  %4933 = fmul fast float %4930, %4876
  %4934 = fmul fast float %4931, %4876
  %4935 = fadd fast float %4932, %4535
  %4936 = fadd fast float %4933, %4536
  %4937 = fadd fast float %4934, %4537
  %4938 = fadd fast float %4761, %4546
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fsub fast float %4808, %4545
  %4941 = fmul fast float %4940, %4857
  %4942 = fadd fast float %4941, %4545
  %4943 = fsub fast float %4794, %4544
  %4944 = fmul fast float %4943, %4857
  %4945 = fadd fast float %4944, %4544
  br i1 %4859, label %4954, label %4946

; <label>:4946                                    ; preds = %4925
  %4947 = and i32 %4608, 32768
  %4948 = icmp eq i32 %4947, 0
  br i1 %4948, label %4964, label %4949

; <label>:4949                                    ; preds = %4946
  %4950 = fmul fast float %4857, 1.270000e+02
  %4951 = fadd fast float %4950, %4530
  %4952 = fadd fast float %4950, %4531
  %4953 = fadd fast float %4950, %4532
  br label %4964

; <label>:4954                                    ; preds = %4925
  %4955 = fsub fast float 1.270000e+02, %4530
  %4956 = fsub fast float 1.270000e+02, %4531
  %4957 = fsub fast float 1.270000e+02, %4532
  %4958 = fmul fast float %4857, %4955
  %4959 = fmul fast float %4857, %4956
  %4960 = fmul fast float %4857, %4957
  %4961 = fadd fast float %4958, %4530
  %4962 = fadd fast float %4959, %4531
  %4963 = fadd fast float %4960, %4532
  br label %4964

; <label>:4964                                    ; preds = %4954, %4949, %4946
  %4965 = phi float [ %4951, %4949 ], [ %4530, %4946 ], [ %4961, %4954 ]
  %4966 = phi float [ %4952, %4949 ], [ %4531, %4946 ], [ %4962, %4954 ]
  %4967 = phi float [ %4953, %4949 ], [ %4532, %4946 ], [ %4963, %4954 ]
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4816, float %4817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4972 = fmul fast float %4971, %4968
  %4973 = fadd fast float %4972, %4970
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = bitcast float %4596 to i32
  %4976 = and i32 %4975, 65535
  %4977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4976)  ; LegacyF16ToF32(value)
  %4978 = lshr i32 %4975, 16
  %4979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4978)  ; LegacyF16ToF32(value)
  %4980 = fcmp fast oge float %4977, 0.000000e+00
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = select i1 %4980, float %4977, float %4982
  %4984 = fadd fast float %4983, %4979
  %4985 = fsub fast float %4974, %4529
  %4986 = fmul fast float %4985, %4761
  %4987 = fadd fast float %4986, %4529
  %4988 = fmul fast float %4984, %4761
  %4989 = call float @dx.op.binary.f32(i32 35, float %4528, float %4988)  ; FMax(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4527, float %4761)  ; FMax(a,b)
  %4991 = and i32 %4608, 16
  %4992 = icmp eq i32 %4991, 0
  br i1 %4992, label %5014, label %4993

; <label>:4993                                    ; preds = %4964
  %4994 = add i32 %4599, 0
  %4995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4994, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4995, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.ResRet.f32 %4996, 1
  %4999 = extractvalue %dx.types.ResRet.f32 %4996, 2
  %5000 = and i32 %4893, 65535
  %5001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5000)  ; LegacyF16ToF32(value)
  %5002 = fmul fast float %4997, %4593
  %5003 = fmul fast float %4998, %4594
  %5004 = fmul fast float %4999, %4595
  %5005 = and i32 %4608, 16384
  %5006 = icmp ne i32 %5005, 0
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = select i1 %5006, float %5008, float 1.000000e+00
  %5010 = fmul fast float %5009, %5001
  %5011 = fmul fast float %5002, %5010
  %5012 = fmul fast float %5003, %5010
  %5013 = fmul fast float %5004, %5010
  br label %5014

; <label>:5014                                    ; preds = %4993, %4964
  %5015 = phi float [ %5011, %4993 ], [ 0.000000e+00, %4964 ]
  %5016 = phi float [ %5012, %4993 ], [ 0.000000e+00, %4964 ]
  %5017 = phi float [ %5013, %4993 ], [ 0.000000e+00, %4964 ]
  %5018 = fsub fast float %5015, %4538
  %5019 = fsub fast float %5016, %4539
  %5020 = fsub fast float %5017, %4540
  %5021 = fmul fast float %5018, %4761
  %5022 = fmul fast float %5019, %4761
  %5023 = fmul fast float %5020, %4761
  %5024 = fadd fast float %5021, %4538
  %5025 = fadd fast float %5022, %4539
  %5026 = fadd fast float %5023, %4540
  br label %4657

; <label>:5027                                    ; preds = %4657
  br label %5028

; <label>:5028                                    ; preds = %5027, %4470
  %5029 = phi float [ 0.000000e+00, %4470 ], [ %4658, %5027 ]
  %5030 = phi float [ %1245, %4470 ], [ %4659, %5027 ]
  %5031 = phi float [ %4439, %4470 ], [ %4660, %5027 ]
  %5032 = phi float [ %4420, %4470 ], [ %4661, %5027 ]
  %5033 = phi float [ %4413, %4470 ], [ %4662, %5027 ]
  %5034 = phi float [ %4414, %4470 ], [ %4663, %5027 ]
  %5035 = phi float [ %4415, %4470 ], [ %4664, %5027 ]
  %5036 = phi float [ 0.000000e+00, %4470 ], [ %4665, %5027 ]
  %5037 = phi float [ 0.000000e+00, %4470 ], [ %4666, %5027 ]
  %5038 = phi float [ %4410, %4470 ], [ %4667, %5027 ]
  %5039 = phi float [ %4411, %4470 ], [ %4668, %5027 ]
  %5040 = phi float [ %4412, %4470 ], [ %4669, %5027 ]
  %5041 = phi float [ %4404, %4470 ], [ %4670, %5027 ]
  %5042 = phi float [ %4405, %4470 ], [ %4671, %5027 ]
  %5043 = phi float [ %4406, %4470 ], [ %4672, %5027 ]
  %5044 = phi float [ %4465, %4470 ], [ %4673, %5027 ]
  %5045 = phi float [ %4466, %4470 ], [ %4674, %5027 ]
  %5046 = phi float [ %4467, %4470 ], [ %4675, %5027 ]
  %5047 = phi float [ %4418, %4470 ], [ %4676, %5027 ]
  %5048 = phi float [ %4417, %4470 ], [ %4677, %5027 ]
  %5049 = phi float [ 0.000000e+00, %4470 ], [ %4678, %5027 ]
  %5050 = phi float [ %4416, %4470 ], [ %4679, %5027 ]
  %5051 = phi float [ %4407, %4470 ], [ %4680, %5027 ]
  %5052 = phi float [ %4408, %4470 ], [ %4681, %5027 ]
  %5053 = phi float [ %4409, %4470 ], [ %4682, %5027 ]
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5055, %5044
  %5057 = fmul fast float %5055, %5045
  %5058 = fmul fast float %5055, %5046
  %5059 = fadd fast float %5049, %1245
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 25, float %5061)  ; Rsqrt(value)
  %5063 = fmul fast float %5062, %5056
  %5064 = fmul fast float %5062, %5057
  %5065 = fmul fast float %5062, %5058
  br label %5066

; <label>:5066                                    ; preds = %5028, %4401
  %5067 = phi float [ %5063, %5028 ], [ %4465, %4401 ]
  %5068 = phi float [ %5064, %5028 ], [ %4466, %4401 ]
  %5069 = phi float [ %5065, %5028 ], [ %4467, %4401 ]
  %5070 = phi float [ %5051, %5028 ], [ %4407, %4401 ]
  %5071 = phi float [ %5052, %5028 ], [ %4408, %4401 ]
  %5072 = phi float [ %5053, %5028 ], [ %4409, %4401 ]
  %5073 = phi float [ %5041, %5028 ], [ %4404, %4401 ]
  %5074 = phi float [ %5042, %5028 ], [ %4405, %4401 ]
  %5075 = phi float [ %5043, %5028 ], [ %4406, %4401 ]
  %5076 = phi float [ %5038, %5028 ], [ %4410, %4401 ]
  %5077 = phi float [ %5039, %5028 ], [ %4411, %4401 ]
  %5078 = phi float [ %5040, %5028 ], [ %4412, %4401 ]
  %5079 = phi float [ %5033, %5028 ], [ %4413, %4401 ]
  %5080 = phi float [ %5034, %5028 ], [ %4414, %4401 ]
  %5081 = phi float [ %5035, %5028 ], [ %4415, %4401 ]
  %5082 = phi float [ %5050, %5028 ], [ %4416, %4401 ]
  %5083 = phi float [ %5060, %5028 ], [ %1245, %4401 ]
  %5084 = phi float [ %5048, %5028 ], [ %4417, %4401 ]
  %5085 = phi float [ %5047, %5028 ], [ %4418, %4401 ]
  %5086 = phi float [ %5037, %5028 ], [ 0.000000e+00, %4401 ]
  %5087 = phi float [ %5036, %5028 ], [ 0.000000e+00, %4401 ]
  %5088 = phi float [ %5029, %5028 ], [ 0.000000e+00, %4401 ]
  %5089 = phi float [ %5031, %5028 ], [ %4439, %4401 ]
  %5090 = phi float [ %5030, %5028 ], [ %1245, %4401 ]
  %5091 = phi float [ %5032, %5028 ], [ %4420, %4401 ]
  %5092 = fadd fast float %5082, 0xBFB99999A0000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, 0x3FF1C71C80000000
  %5095 = call float @dx.op.binary.f32(i32 36, float %5082, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5096 = fsub fast float 1.000000e+00, %5094
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5097, %5070
  %5099 = fmul fast float %5097, %5071
  %5100 = fmul fast float %5097, %5072
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = fmul fast float %5094, %5070
  %5105 = fmul fast float %5094, %5071
  %5106 = fmul fast float %5094, %5072
  %5107 = fadd fast float %5104, %5095
  %5108 = fadd fast float %5105, %5095
  %5109 = fadd fast float %5106, %5095
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5113 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5115 = extractvalue %dx.types.ResRet.i32 %5114, 0
  %5116 = and i32 %5115, 1
  %5117 = icmp eq i32 %5116, 0
  br i1 %5117, label %5132, label %5118

; <label>:5118                                    ; preds = %5066
  %5119 = call float @dx.op.binary.f32(i32 35, float %5102, float %5103)  ; FMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5101, float %5119)  ; FMax(a,b)
  %5121 = fcmp fast ogt float %5120, 0.000000e+00
  %5122 = bitcast float %5120 to i32
  %5123 = sub nsw i32 2129859010, %5122
  %5124 = bitcast i32 %5123 to float
  %5125 = select i1 %5121, float %5124, float 0.000000e+00
  %5126 = fmul fast float %5101, %5076
  %5127 = fmul fast float %5102, %5077
  %5128 = fmul fast float %5103, %5078
  %5129 = fmul fast float %5126, %5125
  %5130 = fmul fast float %5127, %5125
  %5131 = fmul fast float %5128, %5125
  br label %5132

; <label>:5132                                    ; preds = %5118, %5066
  %5133 = phi float [ %5129, %5118 ], [ %5076, %5066 ]
  %5134 = phi float [ %5130, %5118 ], [ %5077, %5066 ]
  %5135 = phi float [ %5131, %5118 ], [ %5078, %5066 ]
  %5136 = call float @dx.op.binary.f32(i32 36, float %5079, float 1.270000e+02)  ; FMin(a,b)
  %5137 = call float @dx.op.binary.f32(i32 36, float %5080, float 1.270000e+02)  ; FMin(a,b)
  %5138 = call float @dx.op.binary.f32(i32 36, float %5081, float 1.270000e+02)  ; FMin(a,b)
  %5139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.i32 %5139, 3
  %5141 = and i32 %5140, 8
  %5142 = icmp ne i32 %5141, 0
  %5143 = call float @dx.op.binary.f32(i32 35, float %5101, float %5070)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5102, float %5070)  ; FMax(a,b)
  %5145 = call float @dx.op.binary.f32(i32 35, float %5103, float %5070)  ; FMax(a,b)
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5102, float %5103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = select i1 %218, float %5070, float %5101
  %5148 = select i1 %218, float %5146, float %5102
  %5149 = select i1 %218, float 1.000000e+00, float %5103
  %5150 = select i1 %5142, float %5143, float %5147
  %5151 = select i1 %5142, float %5144, float %5148
  %5152 = select i1 %5142, float %5145, float %5149
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = select i1 %218, float %5153, float %5133
  %5155 = select i1 %218, float %5153, float %5134
  %5156 = select i1 %218, float %5153, float %5135
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5160 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5161 = fadd fast float %5158, %156
  %5162 = fadd fast float %5159, %157
  %5163 = fadd fast float %5160, %158
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5167 = fsub fast float %5161, %5165
  %5168 = fsub fast float %5162, %5166
  %5169 = fmul fast float %5167, %5167
  %5170 = fmul fast float %5168, %5168
  %5171 = fadd fast float %5169, %5170
  %5172 = call float @dx.op.unary.f32(i32 24, float %5171)  ; Sqrt(value)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5174 = fcmp fast olt float %5172, %5173
  br i1 %5174, label %5175, label %5242

; <label>:5175                                    ; preds = %5132
  %5176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.f32 %5176, 0
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.CBufRet.f32 %5176, 1
  %5183 = extractvalue %dx.types.CBufRet.f32 %5178, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5185 = extractvalue %dx.types.CBufRet.f32 %5176, 3
  %5186 = extractvalue %dx.types.CBufRet.f32 %5178, 3
  %5187 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5188 = fadd fast float %5185, %5161
  %5189 = fadd fast float %5186, %5162
  %5190 = fadd fast float %5187, %5163
  %5191 = fmul fast float %5188, %5177
  %5192 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5179, float %5191)  ; FMad(a,b,c)
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5181, float %5192)  ; FMad(a,b,c)
  %5194 = fmul fast float %5188, %5182
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5183, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5184, float %5195)  ; FMad(a,b,c)
  %5197 = fsub fast float %5193, %5185
  %5198 = fsub fast float %5196, %5186
  %5199 = fsub fast float %5197, %5165
  %5200 = fadd fast float %5199, %5173
  %5201 = fsub fast float %5198, %5166
  %5202 = fadd fast float %5201, %5173
  %5203 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5204 = fmul fast float %5200, %5203
  %5205 = fmul fast float %5202, %5203
  %5206 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5208 = fsub fast float 1.000000e+00, %5206
  %5209 = fsub fast float 1.000000e+00, %5207
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5208, float %5209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = fcmp fast ugt float %5211, 0.000000e+00
  br i1 %5212, label %5213, label %5516

; <label>:5213                                    ; preds = %5175
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 2
  %5216 = fmul fast float %5215, %5211
  %5217 = extractvalue %dx.types.CBufRet.f32 %5214, 3
  %5218 = fadd fast float %5217, %5216
  %5219 = extractvalue %dx.types.CBufRet.f32 %5180, 2
  %5220 = fadd fast float %5218, %5187
  %5221 = fmul fast float %5193, %5181
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5196, float %5184, float %5221)  ; FMad(a,b,c)
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5219, float %5222)  ; FMad(a,b,c)
  %5224 = fsub fast float %5223, %5187
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 2
  %5227 = fsub fast float %5224, %5226
  %5228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5208, float %5209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.ResRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5208, float %5209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = fadd fast float %5233, %5229
  %5237 = fmul fast float %5236, 0x3F847AE140000000
  %5238 = fadd fast float %5234, %5230
  %5239 = fmul fast float %5238, 0x3F847AE140000000
  %5240 = fadd fast float %5235, %5231
  %5241 = fmul fast float %5240, 0x3F847AE140000000
  br label %5516

; <label>:5242                                    ; preds = %5132
  %5243 = and i32 %194, 1
  %5244 = icmp eq i32 %5243, 0
  br i1 %5244, label %5516, label %5245

; <label>:5245                                    ; preds = %5242
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5253 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5254 = extractvalue %dx.types.CBufRet.f32 %5250, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5256 = extractvalue %dx.types.CBufRet.f32 %5248, 3
  %5257 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5258 = fadd fast float %5255, %5161
  %5259 = fadd fast float %5256, %5162
  %5260 = fadd fast float %5257, %5163
  %5261 = fmul fast float %5258, %5247
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5259, float %5249, float %5261)  ; FMad(a,b,c)
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %5260, float %5251, float %5262)  ; FMad(a,b,c)
  %5264 = fmul fast float %5258, %5252
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5259, float %5253, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5260, float %5254, float %5265)  ; FMad(a,b,c)
  %5267 = fsub fast float %5263, %5255
  %5268 = fsub fast float %5266, %5256
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 3
  %5276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.i32 %5276, 0
  %5278 = extractvalue %dx.types.CBufRet.i32 %5276, 1
  %5279 = udiv i32 %5278, %5277
  %5280 = fsub fast float %5267, %5270
  %5281 = fsub fast float %5268, %5271
  %5282 = call float @dx.op.binary.f32(i32 35, float %5280, float 0.000000e+00)  ; FMax(a,b)
  %5283 = call float @dx.op.binary.f32(i32 35, float %5281, float 0.000000e+00)  ; FMax(a,b)
  %5284 = call float @dx.op.binary.f32(i32 36, float %5282, float %5272)  ; FMin(a,b)
  %5285 = call float @dx.op.binary.f32(i32 36, float %5283, float %5273)  ; FMin(a,b)
  %5286 = add i32 %5277, -1
  %5287 = add i32 %5279, -1
  %5288 = fmul fast float %5284, %5275
  %5289 = fmul fast float %5285, %5275
  %5290 = fptoui float %5288 to i32
  %5291 = fptoui float %5289 to i32
  %5292 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 %5286)  ; UMin(a,b)
  %5293 = call i32 @dx.op.binary.i32(i32 40, i32 %5291, i32 %5287)  ; UMin(a,b)
  %5294 = mul i32 %5293, %5277
  %5295 = add i32 %5294, %5292
  %5296 = shl i32 %5295, 2
  %5297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5298 = extractvalue %dx.types.ResRet.i32 %5297, 0
  %5299 = icmp eq i32 %5298, -1
  br i1 %5299, label %5516, label %5300

; <label>:5300                                    ; preds = %5245
  %5301 = mul i32 %5298, 148
  %5302 = add i32 %5301, 4
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = add i32 %5301, 8
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = add i32 %5301, 36
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = add i32 %5301, 60
  %5312 = add i32 %5301, 92
  %5313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.i32 %5313, 0
  %5315 = add i32 %5301, 116
  %5316 = fsub fast float %5267, %5304
  %5317 = fsub fast float %5268, %5307
  %5318 = fmul fast float %5275, %5316
  %5319 = fmul fast float %5275, %5317
  %5320 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5321 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5325 = call float @dx.op.unary.f32(i32 83, float %5320)  ; DerivCoarseX(value)
  %5326 = call float @dx.op.unary.f32(i32 83, float %5322)  ; DerivCoarseX(value)
  %5327 = call float @dx.op.unary.f32(i32 84, float %5320)  ; DerivCoarseY(value)
  %5328 = call float @dx.op.unary.f32(i32 84, float %5322)  ; DerivCoarseY(value)
  %5329 = fmul fast float %5325, %5324
  %5330 = fmul fast float %5326, %5324
  %5331 = fmul fast float %5327, %5324
  %5332 = fmul fast float %5328, %5324
  %5333 = call float @dx.op.dot2.f32(i32 54, float %5331, float %5332, float %5331, float %5332)  ; Dot2(ax,ay,bx,by)
  %5334 = call float @dx.op.dot2.f32(i32 54, float %5329, float %5330, float %5329, float %5330)  ; Dot2(ax,ay,bx,by)
  %5335 = call float @dx.op.binary.f32(i32 35, float %5334, float %5333)  ; FMax(a,b)
  %5336 = call float @dx.op.unary.f32(i32 23, float %5335)  ; Log(value)
  %5337 = fmul fast float %5336, 5.000000e-01
  %5338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5338, 1
  %5340 = fadd fast float %5339, %5337
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 3
  %5344 = fadd fast float %5343, %5341
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 3
  %5347 = fadd fast float %5344, %5346
  %5348 = add i32 %5314, 0
  %5349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5349, i32 0)  ; GetDimensions(handle,mipLevel)
  %5351 = extractvalue %dx.types.Dimensions %5350, 0
  %5352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5351)  ; FirstbitLo(value)
  %5353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.i32 %5353, 1
  %5355 = sub nsw i32 %5354, %5352
  %5356 = sitofp i32 %5355 to float
  %5357 = fsub fast float %5347, %5356
  %5358 = call float @dx.op.binary.f32(i32 35, float %5357, float 0.000000e+00)  ; FMax(a,b)
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5349, %dx.types.Handle %46, float %5320, float %5322, float %5310, float undef, i32 0, i32 0, i32 undef, float %5358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = fcmp ule float %5360, 0x3FE0101020000000
  %5362 = extractvalue %dx.types.CBufRet.i32 %5353, 0
  %5363 = and i32 %5362, 128
  %5364 = icmp ne i32 %5363, 0
  %5365 = and i1 %5361, %5364
  br i1 %5365, label %5516, label %5366

; <label>:5366                                    ; preds = %5300
  %5367 = add i32 %5301, 20
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = add i32 %5301, 24
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = add i32 %5301, 40
  %5374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = add i32 %5301, 96
  %5377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.i32 %5377, 0
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5381 = fmul fast float %5380, %5320
  %5382 = fmul fast float %5380, %5322
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = fadd fast float %5381, %5383
  %5385 = fadd fast float %5382, %5383
  %5386 = add i32 %5378, 0
  %5387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5388 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5387, i32 0)  ; GetDimensions(handle,mipLevel)
  %5389 = extractvalue %dx.types.Dimensions %5388, 0
  %5390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5389)  ; FirstbitLo(value)
  %5391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.i32 %5391, 1
  %5393 = sub nsw i32 %5392, %5390
  %5394 = sitofp i32 %5393 to float
  %5395 = fsub fast float %5344, %5394
  %5396 = call float @dx.op.binary.f32(i32 35, float %5395, float 0.000000e+00)  ; FMax(a,b)
  %5397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5387, %dx.types.Handle %46, float %5384, float %5385, float %5375, float undef, i32 0, i32 0, i32 undef, float %5396)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = fmul fast float %5398, %5369
  %5400 = fadd fast float %5399, %5372
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 3
  %5409 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5410 = fadd fast float %5406, %5267
  %5411 = fadd fast float %5408, %5268
  %5412 = fadd fast float %5400, %5409
  %5413 = fmul fast float %5410, %5402
  %5414 = call float @dx.op.tertiary.f32(i32 46, float %5411, float %5403, float %5413)  ; FMad(a,b,c)
  %5415 = call float @dx.op.tertiary.f32(i32 46, float %5412, float %5404, float %5414)  ; FMad(a,b,c)
  %5416 = fsub fast float %5415, %5409
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5419 = fsub fast float %5416, %5418
  %5420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.i32 %5420, 0
  %5422 = call i32 @dx.op.binary.i32(i32 40, i32 %5298, i32 %5421)  ; UMin(a,b)
  %5423 = mul i32 %5422, 36
  %5424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.i32 %5424, 0
  %5426 = add i32 %5423, 4
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = fmul fast float %5428, %5320
  %5430 = fmul fast float %5428, %5322
  %5431 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5432 = fadd fast float %5429, %5431
  %5433 = fadd fast float %5430, %5431
  %5434 = icmp eq i32 %5425, 0
  br i1 %5434, label %5503, label %5435

; <label>:5435                                    ; preds = %5366
  br label %5436

; <label>:5436                                    ; preds = %5493, %5435
  %5437 = phi float [ %5494, %5493 ], [ 0.000000e+00, %5435 ]
  %5438 = phi float [ %5495, %5493 ], [ 0.000000e+00, %5435 ]
  %5439 = phi float [ %5496, %5493 ], [ 0.000000e+00, %5435 ]
  %5440 = phi float [ %5497, %5493 ], [ 0.000000e+00, %5435 ]
  %5441 = phi float [ %5498, %5493 ], [ 0.000000e+00, %5435 ]
  %5442 = phi float [ %5499, %5493 ], [ 0.000000e+00, %5435 ]
  %5443 = phi i32 [ %5500, %5493 ], [ 0, %5435 ]
  %5444 = shl i32 %5443, 2
  %5445 = add i32 %5311, %5444
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = add i32 %5315, %5444
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = add i32 %5450, 0
  %5452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5453 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5452, i32 0)  ; GetDimensions(handle,mipLevel)
  %5454 = extractvalue %dx.types.Dimensions %5453, 0
  %5455 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5454)  ; FirstbitLo(value)
  %5456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.i32 %5456, 1
  %5458 = sub nsw i32 %5457, %5455
  %5459 = sitofp i32 %5458 to float
  %5460 = fsub fast float %5344, %5459
  %5461 = call float @dx.op.binary.f32(i32 35, float %5460, float 0.000000e+00)  ; FMax(a,b)
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5452, %dx.types.Handle %46, float %5432, float %5433, float %5447, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = fcmp fast ogt float %5463, 0.000000e+00
  br i1 %5464, label %5465, label %5493

; <label>:5465                                    ; preds = %5436
  %5466 = add i32 %5426, %5444
  %5467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5466, i32 undef)  ; BufferLoad(srv,index,wot)
  %5468 = extractvalue %dx.types.ResRet.i32 %5467, 0
  %5469 = and i32 %5468, 32767
  %5470 = mul nuw nsw i32 %5469, 928
  %5471 = add nuw nsw i32 %5470, 48
  %5472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.ResRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.ResRet.f32 %5472, 2
  %5476 = add nuw nsw i32 %5470, 60
  %5477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5476, i32 undef)  ; BufferLoad(srv,index,wot)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.ResRet.f32 %5477, 1
  %5480 = extractvalue %dx.types.ResRet.f32 %5477, 2
  %5481 = fmul fast float %5473, %5463
  %5482 = fmul fast float %5474, %5463
  %5483 = fmul fast float %5475, %5463
  %5484 = fadd fast float %5481, %5437
  %5485 = fadd fast float %5482, %5438
  %5486 = fadd fast float %5483, %5439
  %5487 = fmul fast float %5478, %5463
  %5488 = fmul fast float %5479, %5463
  %5489 = fmul fast float %5480, %5463
  %5490 = fadd fast float %5487, %5440
  %5491 = fadd fast float %5488, %5441
  %5492 = fadd fast float %5489, %5442
  br label %5493

; <label>:5493                                    ; preds = %5465, %5436
  %5494 = phi float [ %5484, %5465 ], [ %5437, %5436 ]
  %5495 = phi float [ %5485, %5465 ], [ %5438, %5436 ]
  %5496 = phi float [ %5486, %5465 ], [ %5439, %5436 ]
  %5497 = phi float [ %5490, %5465 ], [ %5440, %5436 ]
  %5498 = phi float [ %5491, %5465 ], [ %5441, %5436 ]
  %5499 = phi float [ %5492, %5465 ], [ %5442, %5436 ]
  %5500 = add nuw i32 %5443, 1
  %5501 = icmp eq i32 %5500, %5425
  br i1 %5501, label %5502, label %5436

; <label>:5502                                    ; preds = %5493
  br label %5503

; <label>:5503                                    ; preds = %5502, %5366
  %5504 = phi float [ 0.000000e+00, %5366 ], [ %5494, %5502 ]
  %5505 = phi float [ 0.000000e+00, %5366 ], [ %5495, %5502 ]
  %5506 = phi float [ 0.000000e+00, %5366 ], [ %5496, %5502 ]
  %5507 = phi float [ 0.000000e+00, %5366 ], [ %5497, %5502 ]
  %5508 = phi float [ 0.000000e+00, %5366 ], [ %5498, %5502 ]
  %5509 = phi float [ 0.000000e+00, %5366 ], [ %5499, %5502 ]
  %5510 = fadd fast float %5507, %5504
  %5511 = fmul fast float %5510, 0x3F847AE140000000
  %5512 = fadd fast float %5508, %5505
  %5513 = fmul fast float %5512, 0x3F847AE140000000
  %5514 = fadd fast float %5509, %5506
  %5515 = fmul fast float %5514, 0x3F847AE140000000
  br label %5516

; <label>:5516                                    ; preds = %5503, %5300, %5245, %5242, %5213, %5175
  %5517 = phi float [ %5227, %5213 ], [ -1.310720e+05, %5175 ], [ %5419, %5503 ], [ -1.310720e+05, %5245 ], [ -1.310720e+05, %5300 ], [ -1.310720e+05, %5242 ]
  %5518 = phi float [ %5237, %5213 ], [ 0.000000e+00, %5175 ], [ %5511, %5503 ], [ 0.000000e+00, %5245 ], [ 0.000000e+00, %5300 ], [ 0.000000e+00, %5242 ]
  %5519 = phi float [ %5239, %5213 ], [ 0.000000e+00, %5175 ], [ %5513, %5503 ], [ 0.000000e+00, %5245 ], [ 0.000000e+00, %5300 ], [ 0.000000e+00, %5242 ]
  %5520 = phi float [ %5241, %5213 ], [ 0.000000e+00, %5175 ], [ %5515, %5503 ], [ 0.000000e+00, %5245 ], [ 0.000000e+00, %5300 ], [ 0.000000e+00, %5242 ]
  %5521 = phi i1 [ true, %5213 ], [ false, %5175 ], [ true, %5503 ], [ false, %5245 ], [ false, %5300 ], [ false, %5242 ]
  %5522 = and i32 %194, 3
  %5523 = icmp eq i32 %5522, 1
  %5524 = select i1 %5523, float 1.000000e+00, float 0.000000e+00
  %5525 = fsub fast float %5517, %158
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = select i1 %5521, float %5526, float 1.000000e+00
  %5528 = fmul fast float %5527, %5524
  %5529 = icmp eq i32 %5522, 3
  %5530 = select i1 %5529, float 1.000000e+00, float %5528
  %5531 = call float @dx.op.binary.f32(i32 35, float %5088, float %5530)  ; FMax(a,b)
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fcmp fast une float %5532, 0.000000e+00
  %5534 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = call float @dx.op.unary.f32(i32 25, float %5534)  ; Rsqrt(value)
  br i1 %5533, label %5543, label %5536

; <label>:5536                                    ; preds = %5516
  %5537 = fmul fast float %5535, %156
  %5538 = fmul fast float %5535, %157
  %5539 = fmul fast float %5535, %158
  %5540 = fsub fast float -0.000000e+00, %5537
  %5541 = fsub fast float -0.000000e+00, %5538
  %5542 = fsub fast float -0.000000e+00, %5539
  br label %5711

; <label>:5543                                    ; preds = %5516
  %5544 = fmul fast float %156, %5535
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = fmul fast float %157, %5535
  %5547 = fsub fast float -0.000000e+00, %5546
  %5548 = fmul fast float %158, %5535
  %5549 = fsub fast float -0.000000e+00, %5548
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5547, float %5549, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fmul fast float %5532, 2.500000e+00
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5532, 0x4013FFFFE0000000
  %5554 = fadd fast float %5553, 0xBFFFFFFFE0000000
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fmul fast float %5532, 0x4004000020000000
  %5557 = fadd fast float %5556, 0xBFF8000040000000
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5560 = fmul fast float %5092, 1.000000e+01
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fmul fast float %5561, 2.000000e+00
  %5563 = fsub fast float 3.000000e+00, %5562
  %5564 = fmul fast float %5561, %5561
  %5565 = fmul fast float %5564, %5563
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fsub fast float 0x3FE3333340000000, %5113
  %5568 = fmul fast float %5567, 0x400AAAAAA0000000
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = fmul fast float %5566, %5569
  %5571 = fmul fast float %5150, 0x3FEA2B8620000000
  %5572 = fmul fast float %5151, 0x3FEA2B8620000000
  %5573 = fmul fast float %5152, 0x3FEA2B8620000000
  %5574 = fadd fast float %5571, 0x3FC81DFBA0000000
  %5575 = fmul fast float %5574, %5150
  %5576 = fadd fast float %5575, 0x3F910E6020000000
  %5577 = fadd fast float %5572, 0x3FC81DFBA0000000
  %5578 = fmul fast float %5577, %5151
  %5579 = fadd fast float %5578, 0x3F910E6020000000
  %5580 = fadd fast float %5573, 0x3FC81DFBA0000000
  %5581 = fmul fast float %5580, %5152
  %5582 = fadd fast float %5581, 0x3F910E6020000000
  %5583 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = fsub fast float %5583, %5150
  %5587 = fsub fast float %5584, %5151
  %5588 = fsub fast float %5585, %5152
  %5589 = fmul fast float %5586, %5559
  %5590 = fmul fast float %5589, %5570
  %5591 = fmul fast float %5587, %5559
  %5592 = fmul fast float %5591, %5570
  %5593 = fmul fast float %5588, %5559
  %5594 = fmul fast float %5593, %5570
  %5595 = fadd fast float %5590, %5150
  %5596 = fadd fast float %5592, %5151
  %5597 = fadd fast float %5594, %5152
  %5598 = fmul fast float %5085, %5085
  %5599 = fmul fast float %5598, %5598
  %5600 = fadd fast float %5555, 1.000000e+00
  %5601 = fsub fast float %5600, %5570
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fsub fast float 1.000000e+00, %5599
  %5606 = call float @dx.op.binary.f32(i32 36, float %5602, float %5605)  ; FMin(a,b)
  %5607 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5608 = call float @dx.op.binary.f32(i32 35, float %5606, float %5607)  ; FMax(a,b)
  %5609 = fadd fast float %5604, 0xBFE4CCCCC0000000
  %5610 = fmul fast float %5609, 0x4006DB6DA0000000
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = fmul fast float %5611, 2.000000e+00
  %5613 = fsub fast float 3.000000e+00, %5612
  %5614 = bitcast float %5110 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = add nsw i32 %5615, 532487669
  %5617 = bitcast i32 %5616 to float
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = bitcast float %5618 to i32
  %5620 = sub nsw i32 2129859010, %5619
  %5621 = bitcast i32 %5620 to float
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = bitcast float %5111 to i32
  %5624 = ashr i32 %5623, 1
  %5625 = add nsw i32 %5624, 532487669
  %5626 = bitcast i32 %5625 to float
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = bitcast float %5627 to i32
  %5629 = sub nsw i32 2129859010, %5628
  %5630 = bitcast i32 %5629 to float
  %5631 = fmul fast float %5630, 2.000000e+00
  %5632 = bitcast float %5112 to i32
  %5633 = ashr i32 %5632, 1
  %5634 = add nsw i32 %5633, 532487669
  %5635 = bitcast i32 %5634 to float
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = bitcast float %5636 to i32
  %5638 = sub nsw i32 2129859010, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5639, 2.000000e+00
  %5641 = fsub fast float 0x4002A9FBE0000000, %5622
  %5642 = fadd fast float %5622, 0x3FD54FDF00000000
  %5643 = bitcast float %5642 to i32
  %5644 = sub nsw i32 2129859010, %5643
  %5645 = bitcast i32 %5644 to float
  %5646 = fmul fast float %5645, %5641
  %5647 = fmul fast float %5646, %5646
  %5648 = fsub fast float 0x4002A9FBE0000000, %5631
  %5649 = fadd fast float %5631, 0x3FD54FDF00000000
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = fmul fast float %5652, %5648
  %5654 = fmul fast float %5653, %5653
  %5655 = fsub fast float 0x4002A9FBE0000000, %5640
  %5656 = fadd fast float %5640, 0x3FD54FDF00000000
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5659, %5655
  %5661 = fmul fast float %5660, %5660
  %5662 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5647)  ; FMax(a,b)
  %5663 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5654)  ; FMax(a,b)
  %5664 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5661)  ; FMax(a,b)
  %5665 = fsub fast float 1.000000e+00, %5550
  %5666 = fadd fast float %5665, %5566
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fsub fast float 1.000000e+00, %5530
  %5669 = fmul fast float %5608, %5668
  %5670 = fmul fast float %5611, %5611
  %5671 = fmul fast float %5670, %5669
  %5672 = fmul fast float %5671, %5613
  %5673 = fmul fast float %5668, 0xBFE99999A0000000
  %5674 = fmul fast float %5673, %5559
  %5675 = fmul fast float %5674, %5570
  %5676 = fadd fast float %5675, 1.000000e+00
  %5677 = fadd fast float %5113, -1.000000e+00
  %5678 = fmul fast float %5676, %5677
  %5679 = fadd fast float %5678, 1.000000e+00
  %5680 = fsub fast float %5662, %5110
  %5681 = fsub fast float %5663, %5111
  %5682 = fsub fast float %5664, %5112
  %5683 = fmul fast float %5672, %5680
  %5684 = fmul fast float %5672, %5681
  %5685 = fmul fast float %5672, %5682
  %5686 = fadd fast float %5683, %5110
  %5687 = fadd fast float %5684, %5111
  %5688 = fadd fast float %5685, %5112
  %5689 = fsub fast float %108, %5067
  %5690 = fsub fast float %109, %5068
  %5691 = fsub fast float %110, %5069
  %5692 = fmul fast float %5672, %5689
  %5693 = fmul fast float %5672, %5690
  %5694 = fmul fast float %5672, %5691
  %5695 = fadd fast float %5692, %5067
  %5696 = fadd fast float %5693, %5068
  %5697 = fadd fast float %5694, %5069
  %5698 = fmul fast float %5672, %5667
  %5699 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5700 = fsub fast float 1.000000e+00, %5699
  %5701 = fmul fast float %5698, %5700
  %5702 = fadd fast float %5701, %5699
  %5703 = fsub fast float 1.000000e+00, %5085
  %5704 = fmul fast float %5672, %5703
  %5705 = fadd fast float %5704, %5085
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.unary.f32(i32 25, float %5706)  ; Rsqrt(value)
  %5708 = fmul fast float %5695, %5707
  %5709 = fmul fast float %5696, %5707
  %5710 = fmul fast float %5697, %5707
  br label %5711

; <label>:5711                                    ; preds = %5543, %5536
  %5712 = phi float [ %5542, %5536 ], [ %5549, %5543 ]
  %5713 = phi float [ %5541, %5536 ], [ %5547, %5543 ]
  %5714 = phi float [ %5540, %5536 ], [ %5545, %5543 ]
  %5715 = phi float [ %5539, %5536 ], [ %5548, %5543 ]
  %5716 = phi float [ %5538, %5536 ], [ %5546, %5543 ]
  %5717 = phi float [ %5537, %5536 ], [ %5544, %5543 ]
  %5718 = phi float [ %5150, %5536 ], [ %5595, %5543 ]
  %5719 = phi float [ %5151, %5536 ], [ %5596, %5543 ]
  %5720 = phi float [ %5152, %5536 ], [ %5597, %5543 ]
  %5721 = phi float [ %5110, %5536 ], [ %5686, %5543 ]
  %5722 = phi float [ %5111, %5536 ], [ %5687, %5543 ]
  %5723 = phi float [ %5112, %5536 ], [ %5688, %5543 ]
  %5724 = phi float [ %5067, %5536 ], [ %5708, %5543 ]
  %5725 = phi float [ %5068, %5536 ], [ %5709, %5543 ]
  %5726 = phi float [ %5069, %5536 ], [ %5710, %5543 ]
  %5727 = phi float [ %5113, %5536 ], [ %5702, %5543 ]
  %5728 = phi float [ %5085, %5536 ], [ %5705, %5543 ]
  %5729 = fsub fast float -0.000000e+00, %158
  %5730 = select i1 %218, float 0.000000e+00, float %5723
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %5714, float %5713, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5716, float %5715, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = fmul fast float %5733, 2.000000e+00
  %5735 = fmul fast float %5734, %5724
  %5736 = fmul fast float %5734, %5725
  %5737 = fmul fast float %5734, %5726
  %5738 = fsub fast float %5717, %5735
  %5739 = fsub fast float %5716, %5736
  %5740 = fsub fast float %5715, %5737
  %5741 = call float @dx.op.binary.f32(i32 36, float %5728, float 1.000000e+00)  ; FMin(a,b)
  %5742 = fsub fast float 1.000000e+00, %5728
  %5743 = bitcast float %5742 to i32
  %5744 = sub nsw i32 2129859010, %5743
  %5745 = bitcast i32 %5744 to float
  %5746 = call float @dx.op.dot3.f32(i32 55, float %72, float %68, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fmul fast float %5746, 0x3FD20DD760000000
  %5748 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5749 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = fcmp fast oeq float %5749, 0.000000e+00
  %5751 = fcmp fast oeq float %5748, 0.000000e+00
  %5752 = or i1 %5751, %5750
  br i1 %5752, label %5782, label %5753

; <label>:5753                                    ; preds = %5711
  %5754 = fsub fast float -0.000000e+00, %75
  %5755 = fsub fast float -0.000000e+00, %73
  %5756 = call float @dx.op.unary.f32(i32 24, float %5749)  ; Sqrt(value)
  %5757 = fdiv fast float %5756, %5748
  %5758 = fcmp fast ogt float %5757, 0x3FFB6F8900000000
  %5759 = select i1 %5758, float 0x3FFB6F8900000000, float %5757
  %5760 = fmul fast float %5759, 0x3FE8A23460000000
  %5761 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5762 = call float @dx.op.binary.f32(i32 35, float %5759, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5763 = fmul fast float %5761, %5748
  %5764 = fmul fast float %5762, 0x3FF279A740000000
  %5765 = fadd fast float %5764, -1.000000e+00
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5755, float %74, float %5754, float %5755, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = call float @dx.op.unary.f32(i32 25, float %5766)  ; Rsqrt(value)
  %5768 = fmul fast float %5767, %5754
  %5769 = fmul fast float %5767, %5755
  %5770 = fmul fast float %5767, %74
  %5771 = fmul fast float %5765, %5765
  %5772 = fsub fast float 1.000000e+00, %5771
  %5773 = fmul fast float %5762, 0x40005F8BE0000000
  %5774 = fsub fast float 0x400C5BF8A0000000, %5773
  %5775 = fdiv fast float %5763, %5774
  %5776 = fmul fast float %5775, 0x3FEE31C3C0000000
  %5777 = fmul fast float %5776, %5772
  %5778 = fmul fast float %5762, 0x3FDACB7480000000
  %5779 = fadd fast float %5778, 0xBFD7347680000000
  %5780 = fmul fast float %5779, %5775
  %5781 = fmul fast float %5780, %5772
  br label %5782

; <label>:5782                                    ; preds = %5753, %5711
  %5783 = phi float [ %5768, %5753 ], [ 0.000000e+00, %5711 ]
  %5784 = phi float [ %5769, %5753 ], [ 0.000000e+00, %5711 ]
  %5785 = phi float [ %5770, %5753 ], [ 0.000000e+00, %5711 ]
  %5786 = phi float [ %5777, %5753 ], [ 0.000000e+00, %5711 ]
  %5787 = phi float [ %5781, %5753 ], [ 0.000000e+00, %5711 ]
  %5788 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5789 = fmul fast float %5788, 0x3FDF454380000000
  %5790 = fmul fast float %5788, %5788
  %5791 = fmul fast float %5790, 0x3FEE471020000000
  %5792 = fadd fast float %5791, 0xBFD42F6020000000
  %5793 = fmul fast float %5748, 0x3FD20DD760000000
  %5794 = fmul fast float %5792, %5787
  %5795 = fadd fast float %5794, %5793
  %5796 = fmul fast float %5789, %5786
  %5797 = fadd fast float %5795, %5796
  %5798 = fsub fast float %5795, %5796
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fmul fast float %5799, 0x3FDF454380000000
  %5801 = fmul fast float %5799, %5799
  %5802 = fmul fast float %5801, 0x3FEE471020000000
  %5803 = fadd fast float %5802, 0xBFD42F6020000000
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5786, float %5787, float 0x3FD20DD760000000, float %5800, float %5803)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5806 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = fcmp fast oeq float %5806, 0.000000e+00
  %5808 = fcmp fast oeq float %5805, 0.000000e+00
  %5809 = or i1 %5808, %5807
  br i1 %5809, label %5839, label %5810

; <label>:5810                                    ; preds = %5782
  %5811 = fsub fast float -0.000000e+00, %71
  %5812 = fsub fast float -0.000000e+00, %69
  %5813 = call float @dx.op.unary.f32(i32 24, float %5806)  ; Sqrt(value)
  %5814 = fdiv fast float %5813, %5805
  %5815 = fcmp fast ogt float %5814, 0x3FFB6F8900000000
  %5816 = select i1 %5815, float 0x3FFB6F8900000000, float %5814
  %5817 = fmul fast float %5816, 0x3FE8A23460000000
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = call float @dx.op.binary.f32(i32 35, float %5816, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5820 = fmul fast float %5818, %5805
  %5821 = fmul fast float %5819, 0x3FF279A740000000
  %5822 = fadd fast float %5821, -1.000000e+00
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %70, float %5811, float %5812, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = call float @dx.op.unary.f32(i32 25, float %5823)  ; Rsqrt(value)
  %5825 = fmul fast float %5824, %5811
  %5826 = fmul fast float %5824, %5812
  %5827 = fmul fast float %5824, %70
  %5828 = fmul fast float %5822, %5822
  %5829 = fsub fast float 1.000000e+00, %5828
  %5830 = fmul fast float %5819, 0x40005F8BE0000000
  %5831 = fsub fast float 0x400C5BF8A0000000, %5830
  %5832 = fdiv fast float %5820, %5831
  %5833 = fmul fast float %5832, 0x3FEE31C3C0000000
  %5834 = fmul fast float %5833, %5829
  %5835 = fmul fast float %5819, 0x3FDACB7480000000
  %5836 = fadd fast float %5835, 0xBFD7347680000000
  %5837 = fmul fast float %5836, %5832
  %5838 = fmul fast float %5837, %5829
  br label %5839

; <label>:5839                                    ; preds = %5810, %5782
  %5840 = phi float [ %5825, %5810 ], [ 0.000000e+00, %5782 ]
  %5841 = phi float [ %5826, %5810 ], [ 0.000000e+00, %5782 ]
  %5842 = phi float [ %5827, %5810 ], [ 0.000000e+00, %5782 ]
  %5843 = phi float [ %5834, %5810 ], [ 0.000000e+00, %5782 ]
  %5844 = phi float [ %5838, %5810 ], [ 0.000000e+00, %5782 ]
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5841, float %5842, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = fmul fast float %5845, 0x3FDF454380000000
  %5847 = fmul fast float %5845, %5845
  %5848 = fmul fast float %5847, 0x3FEE471020000000
  %5849 = fadd fast float %5848, 0xBFD42F6020000000
  %5850 = fmul fast float %5805, 0x3FD20DD760000000
  %5851 = fmul fast float %5849, %5844
  %5852 = fadd fast float %5851, %5850
  %5853 = fmul fast float %5846, %5843
  %5854 = fadd fast float %5852, %5853
  %5855 = fsub fast float %5852, %5853
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5841, float %5842, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = fmul fast float %5856, 0x3FDF454380000000
  %5858 = fmul fast float %5856, %5856
  %5859 = fmul fast float %5858, 0x3FEE471020000000
  %5860 = fadd fast float %5859, 0xBFD42F6020000000
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5843, float %5844, float 0x3FD20DD760000000, float %5857, float %5860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5863 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = fcmp fast oeq float %5863, 0.000000e+00
  %5865 = fcmp fast oeq float %5862, 0.000000e+00
  %5866 = or i1 %5865, %5864
  br i1 %5866, label %5896, label %5867

; <label>:5867                                    ; preds = %5839
  %5868 = fsub fast float -0.000000e+00, %67
  %5869 = fsub fast float -0.000000e+00, %65
  %5870 = call float @dx.op.unary.f32(i32 24, float %5863)  ; Sqrt(value)
  %5871 = fdiv fast float %5870, %5862
  %5872 = fcmp fast ogt float %5871, 0x3FFB6F8900000000
  %5873 = select i1 %5872, float 0x3FFB6F8900000000, float %5871
  %5874 = fmul fast float %5873, 0x3FE8A23460000000
  %5875 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5873, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5877 = fmul fast float %5875, %5862
  %5878 = fmul fast float %5876, 0x3FF279A740000000
  %5879 = fadd fast float %5878, -1.000000e+00
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %66, float %5868, float %5869, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.unary.f32(i32 25, float %5880)  ; Rsqrt(value)
  %5882 = fmul fast float %5881, %5868
  %5883 = fmul fast float %5881, %5869
  %5884 = fmul fast float %5881, %66
  %5885 = fmul fast float %5879, %5879
  %5886 = fsub fast float 1.000000e+00, %5885
  %5887 = fmul fast float %5876, 0x40005F8BE0000000
  %5888 = fsub fast float 0x400C5BF8A0000000, %5887
  %5889 = fdiv fast float %5877, %5888
  %5890 = fmul fast float %5889, 0x3FEE31C3C0000000
  %5891 = fmul fast float %5890, %5886
  %5892 = fmul fast float %5876, 0x3FDACB7480000000
  %5893 = fadd fast float %5892, 0xBFD7347680000000
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5894, %5886
  br label %5896

; <label>:5896                                    ; preds = %5867, %5839
  %5897 = phi float [ %5882, %5867 ], [ 0.000000e+00, %5839 ]
  %5898 = phi float [ %5883, %5867 ], [ 0.000000e+00, %5839 ]
  %5899 = phi float [ %5884, %5867 ], [ 0.000000e+00, %5839 ]
  %5900 = phi float [ %5891, %5867 ], [ 0.000000e+00, %5839 ]
  %5901 = phi float [ %5895, %5867 ], [ 0.000000e+00, %5839 ]
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = fmul fast float %5902, 0x3FDF454380000000
  %5904 = fmul fast float %5902, %5902
  %5905 = fmul fast float %5904, 0x3FEE471020000000
  %5906 = fadd fast float %5905, 0xBFD42F6020000000
  %5907 = fmul fast float %5862, 0x3FD20DD760000000
  %5908 = fmul fast float %5906, %5901
  %5909 = fadd fast float %5908, %5907
  %5910 = fmul fast float %5903, %5900
  %5911 = fadd fast float %5909, %5910
  %5912 = fsub fast float %5909, %5910
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fmul fast float %5913, 0x3FDF454380000000
  %5915 = fmul fast float %5913, %5913
  %5916 = fmul fast float %5915, 0x3FEE471020000000
  %5917 = fadd fast float %5916, 0xBFD42F6020000000
  %5918 = call float @dx.op.dot3.f32(i32 55, float %5862, float %5900, float %5901, float 0x3FD20DD760000000, float %5914, float %5917)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5797, float 0.000000e+00)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 35, float %5854, float 0.000000e+00)  ; FMax(a,b)
  %5921 = call float @dx.op.binary.f32(i32 35, float %5911, float 0.000000e+00)  ; FMax(a,b)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5798, float 0.000000e+00)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5855, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5912, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5804, float 0.000000e+00)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5861, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5918, float 0.000000e+00)  ; FMax(a,b)
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = call float @dx.op.binary.f32(i32 36, float %5718, float %5929)  ; FMin(a,b)
  %5931 = fsub fast float 1.000000e+00, %5741
  %5932 = fmul fast float %5930, %5931
  %5933 = fsub fast float 1.000000e+00, %5932
  %5934 = bitcast float %5933 to i32
  %5935 = sub nsw i32 2129859010, %5934
  %5936 = bitcast i32 %5935 to float
  %5937 = call float @dx.op.binary.f32(i32 36, float %5719, float %5929)  ; FMin(a,b)
  %5938 = fmul fast float %5937, %5931
  %5939 = fsub fast float 1.000000e+00, %5938
  %5940 = bitcast float %5939 to i32
  %5941 = sub nsw i32 2129859010, %5940
  %5942 = bitcast i32 %5941 to float
  %5943 = call float @dx.op.binary.f32(i32 36, float %5720, float %5929)  ; FMin(a,b)
  %5944 = fmul fast float %5943, %5931
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = bitcast float %5945 to i32
  %5947 = sub nsw i32 2129859010, %5946
  %5948 = bitcast i32 %5947 to float
  %5949 = fmul fast float %5919, %5741
  %5950 = fmul fast float %5949, %5936
  %5951 = fmul fast float %5920, %5741
  %5952 = fmul fast float %5951, %5942
  %5953 = fmul fast float %5921, %5741
  %5954 = fmul fast float %5953, %5948
  %5955 = call float @dx.op.binary.f32(i32 36, float %5721, float %5929)  ; FMin(a,b)
  %5956 = fmul fast float %5955, %5931
  %5957 = fsub fast float 1.000000e+00, %5956
  %5958 = bitcast float %5957 to i32
  %5959 = sub nsw i32 2129859010, %5958
  %5960 = bitcast i32 %5959 to float
  %5961 = call float @dx.op.binary.f32(i32 36, float %5722, float %5929)  ; FMin(a,b)
  %5962 = fmul fast float %5961, %5931
  %5963 = fsub fast float 1.000000e+00, %5962
  %5964 = bitcast float %5963 to i32
  %5965 = sub nsw i32 2129859010, %5964
  %5966 = bitcast i32 %5965 to float
  %5967 = call float @dx.op.binary.f32(i32 36, float %5730, float %5929)  ; FMin(a,b)
  %5968 = fmul fast float %5967, %5931
  %5969 = fsub fast float 1.000000e+00, %5968
  %5970 = bitcast float %5969 to i32
  %5971 = sub nsw i32 2129859010, %5970
  %5972 = bitcast i32 %5971 to float
  %5973 = fmul fast float %5925, %5741
  %5974 = fmul fast float %5973, %5960
  %5975 = fmul fast float %5926, %5741
  %5976 = fmul fast float %5975, %5966
  %5977 = fmul fast float %5927, %5741
  %5978 = fmul fast float %5977, %5972
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5952, float %5954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = select i1 %218, float 0.000000e+00, float %5950
  %5981 = select i1 %218, float %5979, float %5952
  %5982 = select i1 %218, float 0.000000e+00, float %5954
  %5983 = call float @dx.op.dot3.f32(i32 55, float %5922, float %5923, float %5924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = select i1 %218, float 0.000000e+00, float %5922
  %5985 = select i1 %218, float %5983, float %5923
  %5986 = select i1 %218, float 0.000000e+00, float %5924
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5974, float %5976, float %5978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = select i1 %218, float 0.000000e+00, float %5974
  %5989 = select i1 %218, float %5987, float %5976
  %5990 = select i1 %218, float 0.000000e+00, float %5978
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 1
  %5993 = fsub fast float %92, %5992
  %5994 = extractvalue %dx.types.CBufRet.f32 %5991, 2
  %5995 = fmul fast float %5993, %5994
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5746, 0x4071A18460000000
  %5998 = fadd fast float %5997, 0x3F0FFB4800000000
  %5999 = call float @dx.op.unary.f32(i32 23, float %5998)  ; Log(value)
  %6000 = fadd fast float %5999, 0x4006B851E0000000
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 3
  %6004 = fsub fast float %6002, %6000
  %6005 = fcmp fast ogt float %6004, 0.000000e+00
  %6006 = fcmp fast olt float %6004, 0.000000e+00
  %6007 = zext i1 %6005 to i32
  %6008 = zext i1 %6006 to i32
  %6009 = sub nsw i32 %6007, %6008
  %6010 = sitofp i32 %6009 to float
  %6011 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6012 = fsub fast float %6011, %6003
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float 0.000000e+00)  ; FMax(a,b)
  %6014 = fmul fast float %6010, %6013
  %6015 = fadd fast float %5999, %6014
  %6016 = call float @dx.op.unary.f32(i32 21, float %6015)  ; Exp(value)
  %6017 = fmul fast float %6016, 0x3F50624DE0000000
  %6018 = fcmp fast oeq float %5747, 0.000000e+00
  %6019 = fdiv fast float 0x400C5BF880000000, %5746
  %6020 = fmul fast float %6017, %6019
  %6021 = select i1 %6018, float 1.000000e+00, float %6020
  %6022 = call float @dx.op.binary.f32(i32 35, float %6021, float 1.000000e+00)  ; FMax(a,b)
  %6023 = fadd fast float %6022, -1.000000e+00
  %6024 = fmul fast float %6023, %5996
  %6025 = fadd fast float %6024, 1.000000e+00
  %6026 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6027 = fmul fast float %6026, %5980
  %6028 = fmul fast float %6026, %5981
  %6029 = fmul fast float %6026, %5982
  %6030 = fmul fast float %4419, %4419
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = fmul fast float %5732, 9.843750e-01
  %6033 = fmul fast float %5727, 9.843750e-01
  %6034 = fadd fast float %6032, 7.812500e-03
  %6035 = fadd fast float %6033, 7.812500e-03
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6034, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 1
  %6039 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6040 = extractvalue %dx.types.ResRet.f32 %6036, 3
  %6041 = fsub fast float 1.000000e+00, %6031
  %6042 = fsub fast float %6039, %6037
  %6043 = fsub fast float %6040, %6038
  %6044 = fmul fast float %6042, %6041
  %6045 = fmul fast float %6043, %6041
  %6046 = fadd fast float %6044, %6037
  %6047 = fadd fast float %6045, %6038
  %6048 = fmul fast float %6046, %5721
  %6049 = fmul fast float %6046, %5722
  %6050 = fmul fast float %6046, %5730
  %6051 = fadd fast float %6048, %6047
  %6052 = fadd fast float %6049, %6047
  %6053 = fadd fast float %6050, %6047
  %6054 = fcmp fast ogt float %5086, 0.000000e+00
  br i1 %6054, label %6055, label %6081

; <label>:6055                                    ; preds = %5896
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %5732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = fadd fast float %6057, -5.000000e-01
  %6061 = fadd fast float %6058, -5.000000e-01
  %6062 = fadd fast float %6059, -5.000000e-01
  %6063 = fsub fast float 1.000000e+00, %5721
  %6064 = fsub fast float 1.000000e+00, %5722
  %6065 = fsub fast float 1.000000e+00, %5730
  %6066 = fmul fast float %5721, 4.000000e+00
  %6067 = fmul fast float %6066, %6063
  %6068 = fmul fast float %6067, %6060
  %6069 = fmul fast float %5722, 4.000000e+00
  %6070 = fmul fast float %6069, %6064
  %6071 = fmul fast float %6070, %6061
  %6072 = fmul fast float %5730, 4.000000e+00
  %6073 = fmul fast float %6072, %6065
  %6074 = fmul fast float %6073, %6062
  %6075 = fadd fast float %6068, %6051
  %6076 = fadd fast float %6071, %6052
  %6077 = fadd fast float %6074, %6053
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  br label %6081

; <label>:6081                                    ; preds = %6055, %5896
  %6082 = phi float [ %6078, %6055 ], [ %6051, %5896 ]
  %6083 = phi float [ %6079, %6055 ], [ %6052, %5896 ]
  %6084 = phi float [ %6080, %6055 ], [ %6053, %5896 ]
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6082, float %6085)  ; FMax(a,b)
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = fmul fast float %156, %156
  %6089 = fmul fast float %157, %157
  %6090 = fadd fast float %6089, %6088
  %6091 = fmul fast float %158, %158
  %6092 = fadd fast float %6090, %6091
  %6093 = call float @dx.op.unary.f32(i32 24, float %6092)  ; Sqrt(value)
  %6094 = fsub fast float %6093, %5992
  %6095 = fmul fast float %6094, %5994
  %6096 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6097 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %6098 = extractvalue %dx.types.CBufRet.f32 %5991, 3
  %6099 = fmul fast float %6096, %57
  %6100 = fmul fast float %6099, %6097
  %6101 = fmul fast float %6099, %6098
  %6102 = fadd fast float %6101, 1.000000e+00
  %6103 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = fcmp fast ogt float %6103, 0x3E7FF19E20000000
  %6105 = fdiv fast float 1.000000e+00, %6103
  %6106 = select i1 %6104, float %6105, float 0.000000e+00
  %6107 = fmul fast float %6106, %5718
  %6108 = fmul fast float %6106, %5719
  %6109 = fmul fast float %6106, %5720
  %6110 = fadd fast float %6107, -1.000000e+00
  %6111 = fadd fast float %6108, -1.000000e+00
  %6112 = fadd fast float %6109, -1.000000e+00
  %6113 = fmul fast float %6110, 5.000000e-01
  %6114 = fmul fast float %6111, 5.000000e-01
  %6115 = fmul fast float %6112, 5.000000e-01
  %6116 = fadd fast float %6113, 1.000000e+00
  %6117 = fadd fast float %6114, 1.000000e+00
  %6118 = fadd fast float %6115, 1.000000e+00
  %6119 = fadd fast float %6100, %5087
  %6120 = call float @dx.op.binary.f32(i32 35, float %5732, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6121 = fdiv fast float %4419, %6120
  %6122 = fcmp fast olt float %5136, 1.270000e+02
  %6123 = fcmp fast olt float %5137, 1.270000e+02
  %6124 = fcmp fast olt float %5138, 1.270000e+02
  %6125 = fmul fast float %5136, 0xBFF7154760000000
  %6126 = fmul fast float %6125, %6121
  %6127 = fmul fast float %5137, 0xBFF7154760000000
  %6128 = fmul fast float %6127, %6121
  %6129 = fmul fast float %5138, 0xBFF7154760000000
  %6130 = fmul fast float %6129, %6121
  %6131 = call float @dx.op.unary.f32(i32 21, float %6126)  ; Exp(value)
  %6132 = call float @dx.op.unary.f32(i32 21, float %6128)  ; Exp(value)
  %6133 = call float @dx.op.unary.f32(i32 21, float %6130)  ; Exp(value)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6136 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6137 = select i1 %6122, float %6134, float 0.000000e+00
  %6138 = select i1 %6123, float %6135, float 0.000000e+00
  %6139 = select i1 %6124, float %6136, float 0.000000e+00
  %6140 = fmul fast float %6137, %6087
  %6141 = fmul fast float %6138, %6087
  %6142 = fmul fast float %6139, %6087
  %6143 = fadd fast float %6140, -1.000000e+00
  %6144 = fadd fast float %6141, -1.000000e+00
  %6145 = fadd fast float %6142, -1.000000e+00
  %6146 = fmul fast float %6143, %5083
  %6147 = fmul fast float %6144, %5083
  %6148 = fmul fast float %6145, %5083
  %6149 = fmul fast float %6082, %5988
  %6150 = fmul fast float %6083, %5989
  %6151 = fmul fast float %6084, %5990
  %6152 = fsub fast float 1.000000e+00, %5732
  %6153 = bitcast float %6152 to i32
  %6154 = sitofp i32 %6153 to float
  %6155 = fmul fast float %6154, 5.000000e+00
  %6156 = fadd fast float %6155, 0xC1EFBF8940000000
  %6157 = fptosi float %6156 to i32
  %6158 = bitcast i32 %6157 to float
  %6159 = fmul fast float %6119, %6158
  %6160 = fmul fast float %6087, %6027
  %6161 = fmul fast float %6160, %6159
  %6162 = fmul fast float %6161, %6116
  %6163 = fmul fast float %6087, %6028
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %6164, %6117
  %6166 = fmul fast float %6087, %6029
  %6167 = fmul fast float %6166, %6159
  %6168 = fmul fast float %6167, %6118
  %6169 = fadd fast float %6149, %5073
  %6170 = fadd fast float %6169, %6162
  %6171 = fmul fast float %6170, %5083
  %6172 = fadd fast float %6150, %5074
  %6173 = fadd fast float %6172, %6165
  %6174 = fmul fast float %6173, %5083
  %6175 = fadd fast float %6151, %5075
  %6176 = fadd fast float %6175, %6168
  %6177 = fmul fast float %6176, %5083
  %6178 = fmul fast float %5722, 0x4012D0A400000000
  %6179 = fadd fast float %6148, 1.000000e+00
  %6180 = fadd fast float %6147, 1.000000e+00
  %6181 = fadd fast float %6146, 1.000000e+00
  %6182 = fmul fast float %6166, %6102
  %6183 = fmul fast float %6163, %6102
  %6184 = fmul fast float %6160, %6102
  %6185 = fsub fast float 1.000000e+00, %5727
  %6186 = fmul fast float %6185, %5083
  %6187 = fsub fast float 1.000000e+00, %6186
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = fsub fast float 1.000000e+00, %6188
  %6190 = fadd fast float %6178, 0x3FDB6377A0000000
  %6191 = fmul fast float %6189, %6190
  %6192 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fadd fast float %6191, %6192
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = call float @dx.op.binary.f32(i32 35, float %6194, float 0x3F847AE140000000)  ; FMax(a,b)
  %6196 = fmul fast float %6195, %6195
  %6197 = fmul fast float %6196, %6196
  %6198 = fmul fast float %6197, 0xC00A935000000000
  %6199 = call float @dx.op.unary.f32(i32 21, float %6198)  ; Exp(value)
  %6200 = fsub fast float 1.000000e+00, %6199
  %6201 = fmul fast float %6181, %5984
  %6202 = fmul fast float %6201, %6200
  %6203 = fmul fast float %6180, %5985
  %6204 = fmul fast float %6203, %6200
  %6205 = fmul fast float %6179, %5986
  %6206 = fmul fast float %6205, %6200
  %6207 = fadd fast float %6202, %6184
  %6208 = fmul fast float %6207, %5083
  %6209 = fadd fast float %6204, %6183
  %6210 = fmul fast float %6209, %5083
  %6211 = fadd fast float %6206, %6182
  %6212 = fmul fast float %6211, %5083
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 3
  %6215 = fcmp fast oeq float %6214, 0.000000e+00
  br i1 %6215, label %7420, label %6216

; <label>:6216                                    ; preds = %6081
  %6217 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6219 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.CBufRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6221, float %6222, float %6223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = select i1 %218, float %6225, float %6221
  %6229 = select i1 %218, float %6227, float %6222
  %6230 = select i1 %218, float %6226, float %6223
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6233 = fmul fast float %6232, %108
  %6234 = fmul fast float %6232, %109
  %6235 = fmul fast float %6232, %110
  %6236 = fadd fast float %6233, %156
  %6237 = fadd fast float %6234, %157
  %6238 = fadd fast float %6235, %158
  %6239 = fcmp fast olt float %6214, 0.000000e+00
  br i1 %6239, label %6864, label %6240

; <label>:6240                                    ; preds = %6216
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6272 = fmul fast float %6271, %6259
  %6273 = fmul fast float %6271, %6263
  %6274 = fadd fast float %6272, %6269
  %6275 = fadd fast float %6273, %6270
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6280 = fmul fast float %6279, %6259
  %6281 = fmul fast float %6279, %6263
  %6282 = fadd fast float %6280, %6277
  %6283 = fadd fast float %6281, %6278
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6286 = fsub fast float %6285, %6267
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = fmul fast float %6286, %6287
  %6289 = fsub fast float 1.000000e+00, %6288
  %6290 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6294 = fadd fast float %6293, %6291
  %6295 = fcmp fast ogt float %6294, 0.000000e+00
  br i1 %6295, label %6296, label %6320

; <label>:6296                                    ; preds = %6240
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = fsub fast float %6282, %6298
  %6301 = fsub fast float %6283, %6299
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = fcmp fast olt float %6301, 0.000000e+00
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = fsub fast float %6274, %6329
  %6332 = fsub fast float %6275, %6330
  %6333 = fcmp fast olt float %6331, 0.000000e+00
  %6334 = fcmp fast olt float %6332, 0.000000e+00
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = fsub fast float %6259, %6356
  %6359 = fsub fast float %6263, %6357
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = fcmp fast olt float %6359, 0.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %6383, label %6384, label %6782, !dx.controlflow.hints !96

; <label>:6384                                    ; preds = %6350
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = fcmp fast une float %6386, 0.000000e+00
  br i1 %6387, label %6388, label %6782, !dx.controlflow.hints !97

; <label>:6388                                    ; preds = %6384
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %6422, label %6782, label %6423, !dx.controlflow.hints !98

; <label>:6423                                    ; preds = %6388
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6470)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %6484, label %6485, label %6782, !dx.controlflow.hints !99

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
  %6496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6494, float %6495, float %6492, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.ResRet.f32 %6496, 3
  %6501 = fcmp fast ogt float %6493, 0.000000e+00
  br i1 %6501, label %6502, label %6523, !dx.controlflow.hints !100

; <label>:6502                                    ; preds = %6485
  %6503 = fadd fast float %6492, 1.000000e+00
  %6504 = call float @dx.op.unary.f32(i32 22, float %6466)  ; Frc(value)
  %6505 = call float @dx.op.unary.f32(i32 22, float %6467)  ; Frc(value)
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6504, float %6505, float %6503, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6598 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6581
  %6599 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6581
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
  %6612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6631)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.i32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.i32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.i32 %6632, 2
  %6636 = extractvalue %dx.types.CBufRet.i32 %6632, 3
  %6637 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6633, i32* %6637, align 4
  %6638 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6634, i32* %6638, align 4
  %6639 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6635, i32* %6639, align 4
  %6640 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6636, i32* %6640, align 4
  %6641 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6630
  %6642 = load i32, i32* %6641, align 4, !tbaa !101, !noalias !105
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
  %6656 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6627
  %6657 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6627
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
  %6679 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6680 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
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
  %6695 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6694
  %6696 = load float, float* %6695, align 4
  %6697 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6694
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
  br i1 %6784, label %6785, label %6791, !dx.controlflow.hints !114

; <label>:6785                                    ; preds = %6782
  %6786 = fadd fast float %6293, %6267
  %6787 = call float @dx.op.binary.f32(i32 35, float %6786, float 0.000000e+00)  ; FMax(a,b)
  %6788 = fadd fast float %6787, 0x3F10000000000000
  %6789 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6282, float %6283, float undef, float undef, i32 0, i32 0, i32 undef, float %6788)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6790 = extractvalue %dx.types.ResRet.f32 %6789, 0
  br label %6791

; <label>:6791                                    ; preds = %6785, %6782
  %6792 = phi float [ %6790, %6785 ], [ 1.000000e+00, %6782 ]
  %6793 = fcmp fast ogt float %6378, 0.000000e+00
  br i1 %6793, label %6794, label %6800, !dx.controlflow.hints !115

; <label>:6794                                    ; preds = %6791
  %6795 = fadd fast float %6323, %6267
  %6796 = call float @dx.op.binary.f32(i32 35, float %6795, float 0.000000e+00)  ; FMax(a,b)
  %6797 = fadd fast float %6796, 0x3F10000000000000
  %6798 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6274, float %6275, float undef, float undef, i32 0, i32 0, i32 undef, float %6797)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  br label %6800

; <label>:6800                                    ; preds = %6794, %6791
  %6801 = phi float [ %6799, %6794 ], [ 1.000000e+00, %6791 ]
  %6802 = fcmp fast ogt float %6377, 0.000000e+00
  br i1 %6802, label %6803, label %6810, !dx.controlflow.hints !116

; <label>:6803                                    ; preds = %6800
  %6804 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6805 = fadd fast float %6804, %6267
  %6806 = call float @dx.op.binary.f32(i32 35, float %6805, float 0.000000e+00)  ; FMax(a,b)
  %6807 = fadd fast float %6806, 0x3F10000000000000
  %6808 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6259, float %6263, float undef, float undef, i32 0, i32 0, i32 undef, float %6807)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  br label %6810

; <label>:6810                                    ; preds = %6803, %6800
  %6811 = phi float [ %6809, %6803 ], [ 1.000000e+00, %6800 ]
  %6812 = fsub fast float %6792, %6783
  %6813 = fmul fast float %6812, %6321
  %6814 = fadd fast float %6813, %6783
  %6815 = fsub fast float %6801, %6814
  %6816 = fmul fast float %6815, %6351
  %6817 = fadd fast float %6816, %6814
  %6818 = fsub fast float %6811, %6817
  %6819 = fmul fast float %6818, %6377
  %6820 = fadd fast float %6819, %6817
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6823 = fcmp fast ogt float %6822, 0.000000e+00
  br i1 %6823, label %6824, label %6864, !dx.controlflow.hints !117

; <label>:6824                                    ; preds = %6810
  %6825 = fcmp fast ugt float %6822, 0.000000e+00
  br i1 %6825, label %6826, label %6861

; <label>:6826                                    ; preds = %6824
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.f32 %6832, 0
  %6834 = extractvalue %dx.types.CBufRet.f32 %6832, 1
  %6835 = extractvalue %dx.types.CBufRet.f32 %6832, 2
  %6836 = extractvalue %dx.types.CBufRet.f32 %6832, 3
  %6837 = extractvalue %dx.types.CBufRet.f32 %6821, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6840 = extractvalue %dx.types.CBufRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.CBufRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.CBufRet.f32 %6839, 2
  %6843 = fadd fast float %6840, %6236
  %6844 = fadd fast float %6841, %6237
  %6845 = fadd fast float %6842, %6238
  %6846 = fmul fast float %6843, %6828
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %6829, float %6844, float %6846)  ; FMad(a,b,c)
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6845, float %6847)  ; FMad(a,b,c)
  %6849 = fadd fast float %6848, %6831
  %6850 = fmul fast float %6843, %6833
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %6834, float %6844, float %6850)  ; FMad(a,b,c)
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6835, float %6845, float %6851)  ; FMad(a,b,c)
  %6853 = fadd fast float %6852, %6836
  %6854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6849, float %6853, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6855 = extractvalue %dx.types.ResRet.f32 %6854, 0
  %6856 = fmul fast float %6855, %6838
  %6857 = fadd fast float %6856, %6837
  %6858 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6859 = fmul fast float %6858, %6822
  %6860 = fsub fast float 1.000000e+00, %6859
  br label %6861

; <label>:6861                                    ; preds = %6826, %6824
  %6862 = phi float [ %6860, %6826 ], [ 1.000000e+00, %6824 ]
  %6863 = fmul fast float %6862, %6820
  br label %6864

; <label>:6864                                    ; preds = %6861, %6810, %6216
  %6865 = phi float [ 1.000000e+00, %6216 ], [ %6863, %6861 ], [ %6820, %6810 ]
  %6866 = call float @dx.op.binary.f32(i32 36, float %6865, float %6865)  ; FMin(a,b)
  %6867 = call float @dx.op.binary.f32(i32 36, float %6865, float %6866)  ; FMin(a,b)
  %6868 = fcmp fast ogt float %6867, 0.000000e+00
  br i1 %6868, label %6869, label %7029, !dx.controlflow.hints !118

; <label>:6869                                    ; preds = %6864
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6885 = fmul fast float %6871, %6236
  %6886 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6872, float %6885)  ; FMad(a,b,c)
  %6887 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6873, float %6886)  ; FMad(a,b,c)
  %6888 = fadd fast float %6887, %6874
  %6889 = fmul fast float %6876, %6236
  %6890 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6877, float %6889)  ; FMad(a,b,c)
  %6891 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6878, float %6890)  ; FMad(a,b,c)
  %6892 = fadd fast float %6891, %6879
  %6893 = fmul fast float %6881, %6236
  %6894 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6882, float %6893)  ; FMad(a,b,c)
  %6895 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6883, float %6894)  ; FMad(a,b,c)
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6900 = fmul fast float %6899, %6888
  %6901 = fmul fast float %6899, %6892
  %6902 = fadd fast float %6900, %6897
  %6903 = fadd fast float %6901, %6898
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6907 = fsub fast float %6902, %6905
  %6908 = fsub fast float %6903, %6906
  %6909 = fcmp fast olt float %6907, 0.000000e+00
  %6910 = fcmp fast olt float %6908, 0.000000e+00
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6922 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6923 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6924 = fsub fast float %6922, %6923
  %6925 = call float @dx.op.unary.f32(i32 7, float %6924)  ; Saturate(value)
  %6926 = fcmp fast ogt float %6925, 0.000000e+00
  br i1 %6926, label %6927, label %6968, !dx.controlflow.hints !119

; <label>:6927                                    ; preds = %6869
  %6928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6902, float %6903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6930 = fcmp fast ogt float %6929, 0.000000e+00
  br i1 %6930, label %6931, label %6963

; <label>:6931                                    ; preds = %6927
  %6932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6902, float %6903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6933 = extractvalue %dx.types.ResRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.ResRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.ResRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.ResRet.f32 %6932, 3
  %6937 = fsub fast float 1.000000e+00, %6884
  %6938 = fsub fast float %6937, %6895
  %6939 = fmul fast float %6938, 0x400921FB60000000
  %6940 = fadd fast float %6939, 0x3FF921FB60000000
  %6941 = call float @dx.op.unary.f32(i32 13, float %6940)  ; Sin(value)
  %6942 = fadd fast float %6941, -1.000000e+00
  %6943 = fmul fast float %6942, 0x3FD45F3060000000
  %6944 = fmul fast float %6938, 0x401921FB60000000
  %6945 = fadd fast float %6944, 0x400921FB60000000
  %6946 = call float @dx.op.unary.f32(i32 13, float %6945)  ; Sin(value)
  %6947 = fadd fast float %6946, 0x3E7777A5C0000000
  %6948 = fmul fast float %6947, 0x3FC45F3060000000
  %6949 = fmul fast float %6938, 0x4022D97C80000000
  %6950 = fadd fast float %6949, 0x4012D97C80000000
  %6951 = call float @dx.op.unary.f32(i32 13, float %6950)  ; Sin(value)
  %6952 = fadd fast float %6951, 1.000000e+00
  %6953 = fmul fast float %6952, 0x3FBB2995E0000000
  %6954 = fmul fast float %6938, 0x402921FB60000000
  %6955 = fadd fast float %6954, 0x401921FB60000000
  %6956 = call float @dx.op.unary.f32(i32 13, float %6955)  ; Sin(value)
  %6957 = fadd fast float %6956, 0xBE8777A5C0000000
  %6958 = fmul fast float %6957, 0x3FB45F3060000000
  %6959 = call float @dx.op.dot4.f32(i32 56, float %6933, float %6934, float %6935, float %6936, float %6943, float %6948, float %6953, float %6958)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6960 = fmul fast float %6959, 0xBFF7154760000000
  %6961 = call float @dx.op.unary.f32(i32 21, float %6960)  ; Exp(value)
  %6962 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  br label %6963

; <label>:6963                                    ; preds = %6931, %6927
  %6964 = phi float [ %6962, %6931 ], [ 1.000000e+00, %6927 ]
  %6965 = fadd fast float %6964, -1.000000e+00
  %6966 = fmul fast float %6965, %6925
  %6967 = fadd fast float %6966, 1.000000e+00
  br label %6968

; <label>:6968                                    ; preds = %6963, %6869
  %6969 = phi float [ %6967, %6963 ], [ 1.000000e+00, %6869 ]
  %6970 = fmul fast float %6969, %6865
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %6975 = fadd fast float %6972, %156
  %6976 = fadd fast float %6973, %157
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 1
  %6979 = fsub fast float -0.000000e+00, %6975
  %6980 = fsub fast float -0.000000e+00, %6976
  %6981 = fsub fast float %5729, %6974
  %6982 = fadd fast float %6981, %6978
  %6983 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6979, float %6980, float %6982)  ; Dot3(ax,ay,az,bx,by,bz)
  %6984 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6985 = fdiv fast float 1.000000e+00, %6984
  %6986 = fmul fast float %6985, %6983
  %6987 = fmul fast float %6217, %6986
  %6988 = fmul fast float %6218, %6986
  %6989 = fadd fast float %6987, %6975
  %6990 = fadd fast float %6988, %6976
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.CBufRet.f32 %6991, 1
  %6994 = fsub fast float %6989, %6992
  %6995 = fsub fast float %6990, %6993
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %6999 = fmul fast float %6994, %6997
  %7000 = fmul fast float %6995, %6998
  %7001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.i32 %7001, 3
  %7003 = icmp eq i32 %7002, 0
  br i1 %7003, label %7009, label %7004

; <label>:7004                                    ; preds = %6968
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6999, float %7000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = extractvalue %dx.types.ResRet.f32 %7005, 1
  %7008 = extractvalue %dx.types.ResRet.f32 %7005, 2
  br label %7014

; <label>:7009                                    ; preds = %6968
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6999, float %7000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = extractvalue %dx.types.ResRet.f32 %7010, 1
  %7013 = extractvalue %dx.types.ResRet.f32 %7010, 2
  br label %7014

; <label>:7014                                    ; preds = %7009, %7004
  %7015 = phi float [ %7006, %7004 ], [ %7011, %7009 ]
  %7016 = phi float [ %7007, %7004 ], [ %7012, %7009 ]
  %7017 = phi float [ %7008, %7004 ], [ %7013, %7009 ]
  %7018 = extractvalue %dx.types.CBufRet.f32 %6977, 2
  %7019 = fmul fast float %7018, %7015
  %7020 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %7021 = fsub fast float %6986, %7020
  %7022 = fsub fast float %7021, %7019
  %7023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7022)  ; FMax(a,b)
  %7024 = fmul fast float %7023, %7016
  %7025 = call float @dx.op.binary.f32(i32 36, float %7017, float %7024)  ; FMin(a,b)
  %7026 = fmul fast float %7025, 0xBFF7154760000000
  %7027 = call float @dx.op.unary.f32(i32 21, float %7026)  ; Exp(value)
  %7028 = fmul fast float %6970, %7027
  br label %7029

; <label>:7029                                    ; preds = %7014, %6864
  %7030 = phi float [ %7028, %7014 ], [ %6865, %6864 ]
  %7031 = call float @dx.op.binary.f32(i32 36, float %7030, float %7030)  ; FMin(a,b)
  %7032 = call float @dx.op.binary.f32(i32 36, float %7030, float %7031)  ; FMin(a,b)
  %7033 = fcmp fast ogt float %7032, 0.000000e+00
  br i1 %7033, label %7034, label %7420, !dx.controlflow.hints !120

; <label>:7034                                    ; preds = %7029
  %7035 = fmul fast float %7030, %6228
  %7036 = fmul fast float %7030, %6229
  %7037 = fmul fast float %7030, %6230
  %7038 = fsub fast float %158, %5517
  %7039 = fcmp fast ogt float %7038, 0.000000e+00
  %7040 = fmul fast float %6217, 5.120000e+02
  %7041 = fmul fast float %6218, 5.120000e+02
  %7042 = fmul fast float %6219, 5.120000e+02
  %7043 = fadd fast float %7042, %158
  %7044 = fsub fast float %5517, %7043
  %7045 = fmul fast float %7044, 2.000000e+00
  %7046 = fadd fast float %7045, %7043
  %7047 = select i1 %7039, float %7046, float %7043
  %7048 = fsub fast float %7047, %158
  %7049 = call float @dx.op.dot3.f32(i32 55, float %7040, float %7041, float %7048, float %7040, float %7041, float %7048)  ; Dot3(ax,ay,az,bx,by,bz)
  %7050 = call float @dx.op.unary.f32(i32 25, float %7049)  ; Rsqrt(value)
  %7051 = fmul fast float %7050, %7040
  %7052 = fmul fast float %7050, %7041
  %7053 = fmul fast float %7050, %7048
  %7054 = fsub fast float %5517, %158
  %7055 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7054)  ; Dot3(ax,ay,az,bx,by,bz)
  %7056 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7051, float %7052, float %7053)  ; Dot3(ax,ay,az,bx,by,bz)
  %7057 = fdiv fast float 1.000000e+00, %7056
  %7058 = fmul fast float %7057, %7055
  %7059 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7038, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7060 = fcmp fast ogt float %7059, 0.000000e+00
  %7061 = fcmp fast olt float %7059, 0.000000e+00
  %7062 = zext i1 %7060 to i32
  %7063 = zext i1 %7061 to i32
  %7064 = sub nsw i32 %7062, %7063
  %7065 = sitofp i32 %7064 to float
  %7066 = fsub fast float %7047, %5517
  %7067 = call float @dx.op.dot3.f32(i32 55, float %7040, float %7041, float %7066, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = fcmp fast ogt float %7067, 0.000000e+00
  %7069 = fcmp fast olt float %7067, 0.000000e+00
  %7070 = zext i1 %7068 to i32
  %7071 = zext i1 %7069 to i32
  %7072 = sub nsw i32 %7070, %7071
  %7073 = sitofp i32 %7072 to float
  %7074 = fcmp fast une float %7065, %7073
  br i1 %7074, label %7075, label %7085

; <label>:7075                                    ; preds = %7034
  %7076 = fmul fast float %7058, %7053
  %7077 = fmul fast float %7058, %7052
  %7078 = fmul fast float %7058, %7051
  %7079 = fmul fast float %7078, %7078
  %7080 = fmul fast float %7077, %7077
  %7081 = fadd fast float %7079, %7080
  %7082 = fmul fast float %7076, %7076
  %7083 = fadd fast float %7081, %7082
  %7084 = call float @dx.op.unary.f32(i32 24, float %7083)  ; Sqrt(value)
  br label %7095

; <label>:7085                                    ; preds = %7034
  %7086 = icmp slt i32 %7064, 0
  br i1 %7086, label %7087, label %7095

; <label>:7087                                    ; preds = %7085
  %7088 = fsub fast float %158, %7047
  %7089 = fmul fast float %7040, %7040
  %7090 = fmul fast float %7041, %7041
  %7091 = fadd fast float %7089, %7090
  %7092 = fmul fast float %7088, %7088
  %7093 = fadd fast float %7091, %7092
  %7094 = call float @dx.op.unary.f32(i32 24, float %7093)  ; Sqrt(value)
  br label %7095

; <label>:7095                                    ; preds = %7087, %7085, %7075
  %7096 = phi float [ %7084, %7075 ], [ %7094, %7087 ], [ 0.000000e+00, %7085 ]
  %7097 = fsub fast float -0.000000e+00, %7096
  %7098 = select i1 %7039, float -0.000000e+00, float %7097
  %7099 = fmul fast float %5518, 0x3FF7154760000000
  %7100 = fmul fast float %7099, %7098
  %7101 = fmul fast float %5519, 0x3FF7154760000000
  %7102 = fmul fast float %7101, %7098
  %7103 = fmul fast float %5520, 0x3FF7154760000000
  %7104 = fmul fast float %7103, %7098
  %7105 = call float @dx.op.unary.f32(i32 21, float %7100)  ; Exp(value)
  %7106 = call float @dx.op.unary.f32(i32 21, float %7102)  ; Exp(value)
  %7107 = call float @dx.op.unary.f32(i32 21, float %7104)  ; Exp(value)
  %7108 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7109 = call float @dx.op.unary.f32(i32 7, float %7106)  ; Saturate(value)
  %7110 = call float @dx.op.unary.f32(i32 7, float %7107)  ; Saturate(value)
  %7111 = fmul fast float %7035, %7108
  %7112 = fmul fast float %7036, %7109
  %7113 = fmul fast float %7037, %7110
  %7114 = fsub fast float %6217, %5717
  %7115 = fsub fast float %6218, %5716
  %7116 = fsub fast float %6219, %5715
  %7117 = call float @dx.op.dot3.f32(i32 55, float %7114, float %7115, float %7116, float %7114, float %7115, float %7116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7118 = call float @dx.op.unary.f32(i32 25, float %7117)  ; Rsqrt(value)
  %7119 = fmul fast float %7118, %7114
  %7120 = fmul fast float %7118, %7115
  %7121 = fmul fast float %7118, %7116
  %7122 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %7123 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5713, float %5712, float %7119, float %7120, float %7121)  ; Dot3(ax,ay,az,bx,by,bz)
  %7124 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7125 = fmul fast float %7124, %7124
  %7126 = fmul fast float %7125, %5745
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = fmul fast float %7127, %7124
  %7129 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %7119, float %7120, float %7121)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = fmul fast float %7129, %7129
  %7131 = call float @dx.op.unary.f32(i32 6, float %7122)  ; FAbs(value)
  %7132 = call float @dx.op.binary.f32(i32 35, float %6185, float 0x3F847AE140000000)  ; FMax(a,b)
  %7133 = fmul fast float %7132, %7132
  %7134 = fmul fast float %7133, %7133
  %7135 = fsub fast float 1.000000e+00, %7134
  %7136 = fmul fast float %5732, %5732
  %7137 = fmul fast float %7136, %7135
  %7138 = fadd fast float %7137, %7134
  %7139 = bitcast float %7138 to i32
  %7140 = ashr i32 %7139, 1
  %7141 = add nsw i32 %7140, 532487669
  %7142 = bitcast i32 %7141 to float
  %7143 = fadd fast float %7142, %5732
  %7144 = fmul fast float %7134, %7130
  %7145 = fsub fast float 1.000000e+00, %7130
  %7146 = fadd fast float %7145, %7144
  %7147 = fmul fast float %7131, %7131
  %7148 = fmul fast float %7147, %7135
  %7149 = fadd fast float %7148, %7134
  %7150 = bitcast float %7149 to i32
  %7151 = ashr i32 %7150, 1
  %7152 = add nsw i32 %7151, 532487669
  %7153 = bitcast i32 %7152 to float
  %7154 = fadd fast float %7153, %7131
  %7155 = fmul fast float %7146, %7146
  %7156 = fmul fast float %7155, %7143
  %7157 = fmul fast float %7156, %7154
  %7158 = fdiv fast float 0x3FF0A00000000000, %7157
  %7159 = fmul fast float %7158, %7134
  %7160 = fmul fast float %6031, 0x3FF9999980000000
  %7161 = fsub fast float 5.000000e+00, %7160
  %7162 = call float @dx.op.unary.f32(i32 6, float %7123)  ; FAbs(value)
  %7163 = fsub fast float 1.000000e+00, %7162
  %7164 = fmul fast float %6031, 0x41D9660740000000
  %7165 = fadd fast float %7164, 0xC1EFBF8940000000
  %7166 = bitcast float %7163 to i32
  %7167 = sitofp i32 %7166 to float
  %7168 = fmul fast float %7167, %7161
  %7169 = fadd fast float %7165, %7168
  %7170 = fptosi float %7169 to i32
  %7171 = bitcast i32 %7170 to float
  %7172 = fsub fast float 1.000000e+00, %5721
  %7173 = fsub fast float 1.000000e+00, %5722
  %7174 = fsub fast float 1.000000e+00, %5730
  %7175 = fmul fast float %7171, %7172
  %7176 = fmul fast float %7171, %7173
  %7177 = fmul fast float %7171, %7174
  %7178 = fadd fast float %7175, %5721
  %7179 = fadd fast float %7176, %5722
  %7180 = fadd fast float %7177, %5730
  br i1 %6054, label %7181, label %7204

; <label>:7181                                    ; preds = %7095
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %7162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.ResRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.ResRet.f32 %7182, 2
  %7186 = fadd fast float %7183, -5.000000e-01
  %7187 = fadd fast float %7184, -5.000000e-01
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fmul fast float %5721, 4.000000e+00
  %7190 = fmul fast float %7189, %7172
  %7191 = fmul fast float %7190, %7186
  %7192 = fmul fast float %5722, 4.000000e+00
  %7193 = fmul fast float %7192, %7173
  %7194 = fmul fast float %7193, %7187
  %7195 = fmul fast float %5730, 4.000000e+00
  %7196 = fmul fast float %7195, %7174
  %7197 = fmul fast float %7196, %7188
  %7198 = fadd fast float %7191, %7178
  %7199 = fadd fast float %7194, %7179
  %7200 = fadd fast float %7197, %7180
  %7201 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  br label %7204

; <label>:7204                                    ; preds = %7181, %7095
  %7205 = phi float [ %7201, %7181 ], [ %7178, %7095 ]
  %7206 = phi float [ %7202, %7181 ], [ %7179, %7095 ]
  %7207 = phi float [ %7203, %7181 ], [ %7180, %7095 ]
  %7208 = fmul fast float %7122, 9.843750e-01
  %7209 = fadd fast float %7208, 7.812500e-03
  %7210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7209, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.ResRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.ResRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.ResRet.f32 %7210, 3
  %7215 = fsub fast float %7213, %7211
  %7216 = fsub fast float %7214, %7212
  %7217 = fmul fast float %7215, %6041
  %7218 = fmul fast float %7216, %6041
  %7219 = fadd fast float %7217, %7211
  %7220 = fadd fast float %7218, %7212
  %7221 = fmul fast float %7219, %5721
  %7222 = fmul fast float %7219, %5722
  %7223 = fmul fast float %7219, %5730
  %7224 = fadd fast float %7221, %7220
  %7225 = fadd fast float %7222, %7220
  %7226 = fadd fast float %7223, %7220
  br i1 %6054, label %7227, label %7250

; <label>:7227                                    ; preds = %7204
  %7228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %7122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.ResRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.ResRet.f32 %7228, 2
  %7232 = fadd fast float %7229, -5.000000e-01
  %7233 = fadd fast float %7230, -5.000000e-01
  %7234 = fadd fast float %7231, -5.000000e-01
  %7235 = fmul fast float %5721, 4.000000e+00
  %7236 = fmul fast float %7235, %7172
  %7237 = fmul fast float %7236, %7232
  %7238 = fmul fast float %5722, 4.000000e+00
  %7239 = fmul fast float %7238, %7173
  %7240 = fmul fast float %7239, %7233
  %7241 = fmul fast float %5730, 4.000000e+00
  %7242 = fmul fast float %7241, %7174
  %7243 = fmul fast float %7242, %7234
  %7244 = fadd fast float %7237, %7224
  %7245 = fadd fast float %7240, %7225
  %7246 = fadd fast float %7243, %7226
  %7247 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7248 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7249 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  br label %7250

; <label>:7250                                    ; preds = %7227, %7204
  %7251 = phi float [ %7247, %7227 ], [ %7224, %7204 ]
  %7252 = phi float [ %7248, %7227 ], [ %7225, %7204 ]
  %7253 = phi float [ %7249, %7227 ], [ %7226, %7204 ]
  %7254 = call float @dx.op.binary.f32(i32 35, float %7252, float %7253)  ; FMax(a,b)
  %7255 = call float @dx.op.binary.f32(i32 35, float %7251, float %7254)  ; FMax(a,b)
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = call float @dx.op.binary.f32(i32 35, float %7131, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7258 = fdiv fast float %4419, %7257
  %7259 = fmul fast float %6125, %7258
  %7260 = fmul fast float %6127, %7258
  %7261 = fmul fast float %6129, %7258
  %7262 = call float @dx.op.unary.f32(i32 21, float %7259)  ; Exp(value)
  %7263 = call float @dx.op.unary.f32(i32 21, float %7260)  ; Exp(value)
  %7264 = call float @dx.op.unary.f32(i32 21, float %7261)  ; Exp(value)
  %7265 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7266 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7267 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7268 = select i1 %6122, float %7265, float 0.000000e+00
  %7269 = select i1 %6123, float %7266, float 0.000000e+00
  %7270 = select i1 %6124, float %7267, float 0.000000e+00
  %7271 = fsub fast float -0.000000e+00, %5724
  %7272 = fsub fast float -0.000000e+00, %5725
  %7273 = fsub fast float -0.000000e+00, %5726
  %7274 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %7271, float %7272, float %7273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = call float @dx.op.unary.f32(i32 7, float %7274)  ; Saturate(value)
  %7276 = fmul fast float %7275, 9.843750e-01
  %7277 = fadd fast float %7276, 7.812500e-03
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7277, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.ResRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.ResRet.f32 %7278, 2
  %7282 = extractvalue %dx.types.ResRet.f32 %7278, 3
  %7283 = fsub fast float %7281, %7279
  %7284 = fsub fast float %7282, %7280
  %7285 = fmul fast float %7283, %6041
  %7286 = fmul fast float %7284, %6041
  %7287 = fadd fast float %7285, %7279
  %7288 = fadd fast float %7286, %7280
  %7289 = fmul fast float %7287, %5721
  %7290 = fmul fast float %7287, %5722
  %7291 = fmul fast float %7287, %5730
  %7292 = fadd fast float %7289, %7288
  %7293 = fadd fast float %7290, %7288
  %7294 = fadd fast float %7291, %7288
  br i1 %6054, label %7295, label %7318

; <label>:7295                                    ; preds = %7250
  %7296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %7275, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7297 = extractvalue %dx.types.ResRet.f32 %7296, 0
  %7298 = extractvalue %dx.types.ResRet.f32 %7296, 1
  %7299 = extractvalue %dx.types.ResRet.f32 %7296, 2
  %7300 = fadd fast float %7297, -5.000000e-01
  %7301 = fadd fast float %7298, -5.000000e-01
  %7302 = fadd fast float %7299, -5.000000e-01
  %7303 = fmul fast float %5721, 4.000000e+00
  %7304 = fmul fast float %7303, %7172
  %7305 = fmul fast float %7304, %7300
  %7306 = fmul fast float %5722, 4.000000e+00
  %7307 = fmul fast float %7306, %7173
  %7308 = fmul fast float %7307, %7301
  %7309 = fmul fast float %5730, 4.000000e+00
  %7310 = fmul fast float %7309, %7174
  %7311 = fmul fast float %7310, %7302
  %7312 = fadd fast float %7305, %7292
  %7313 = fadd fast float %7308, %7293
  %7314 = fadd fast float %7311, %7294
  %7315 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  %7316 = call float @dx.op.unary.f32(i32 7, float %7313)  ; Saturate(value)
  %7317 = call float @dx.op.unary.f32(i32 7, float %7314)  ; Saturate(value)
  br label %7318

; <label>:7318                                    ; preds = %7295, %7250
  %7319 = phi float [ %7315, %7295 ], [ %7292, %7250 ]
  %7320 = phi float [ %7316, %7295 ], [ %7293, %7250 ]
  %7321 = phi float [ %7317, %7295 ], [ %7294, %7250 ]
  %7322 = call float @dx.op.binary.f32(i32 35, float %7320, float %7321)  ; FMax(a,b)
  %7323 = call float @dx.op.binary.f32(i32 35, float %7319, float %7322)  ; FMax(a,b)
  %7324 = fsub fast float 1.000000e+00, %7323
  %7325 = fmul fast float %6185, %6190
  %7326 = fadd fast float %6192, %7325
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = fsub fast float %6217, %5738
  %7329 = fsub fast float %6218, %5739
  %7330 = fsub fast float %6219, %5740
  %7331 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7330, float %7328, float %7329, float %7330)  ; Dot3(ax,ay,az,bx,by,bz)
  %7332 = call float @dx.op.unary.f32(i32 25, float %7331)  ; Rsqrt(value)
  %7333 = fmul fast float %7332, %7328
  %7334 = fmul fast float %7332, %7329
  %7335 = fmul fast float %7332, %7330
  %7336 = call float @dx.op.dot3.f32(i32 55, float %7271, float %7272, float %7273, float %7333, float %7334, float %7335)  ; Dot3(ax,ay,az,bx,by,bz)
  %7337 = fmul fast float %7336, %7336
  %7338 = call float @dx.op.unary.f32(i32 6, float %7275)  ; FAbs(value)
  %7339 = call float @dx.op.binary.f32(i32 35, float %7327, float 0x3F847AE140000000)  ; FMax(a,b)
  %7340 = fmul fast float %7339, %7339
  %7341 = fmul fast float %7340, %7340
  %7342 = fsub fast float 1.000000e+00, %7341
  %7343 = fmul fast float %7136, %7342
  %7344 = fadd fast float %7343, %7341
  %7345 = bitcast float %7344 to i32
  %7346 = ashr i32 %7345, 1
  %7347 = add nsw i32 %7346, 532487669
  %7348 = bitcast i32 %7347 to float
  %7349 = fadd fast float %7348, %5732
  %7350 = fmul fast float %7341, %7337
  %7351 = fsub fast float 1.000000e+00, %7337
  %7352 = fadd fast float %7351, %7350
  %7353 = fmul fast float %7338, %7338
  %7354 = fmul fast float %7353, %7342
  %7355 = fadd fast float %7354, %7341
  %7356 = bitcast float %7355 to i32
  %7357 = ashr i32 %7356, 1
  %7358 = add nsw i32 %7357, 532487669
  %7359 = bitcast i32 %7358 to float
  %7360 = fadd fast float %7359, %7338
  %7361 = fmul fast float %7352, %7352
  %7362 = fmul fast float %7361, %7349
  %7363 = fmul fast float %7362, %7360
  %7364 = fdiv fast float 0x3FF0A00000000000, %7363
  %7365 = fmul fast float %7364, %7341
  %7366 = fmul fast float %7275, %7268
  %7367 = fmul fast float %7275, %7269
  %7368 = fmul fast float %7275, %7270
  %7369 = fmul fast float %7366, %7324
  %7370 = fmul fast float %7369, %7365
  %7371 = fmul fast float %7367, %7324
  %7372 = fmul fast float %7371, %7365
  %7373 = fmul fast float %7368, %7324
  %7374 = fmul fast float %7373, %7365
  %7375 = fmul fast float %7205, %7159
  %7376 = fmul fast float %7206, %7159
  %7377 = fmul fast float %7207, %7159
  %7378 = fsub fast float 1.000000e+00, %7123
  %7379 = bitcast float %7378 to i32
  %7380 = sitofp i32 %7379 to float
  %7381 = fmul fast float %7380, 5.000000e+00
  %7382 = fadd fast float %7381, 0xC1EFBF8940000000
  %7383 = fptosi float %7382 to i32
  %7384 = bitcast i32 %7383 to float
  %7385 = fmul fast float %7384, %5087
  %7386 = fmul fast float %7256, %7385
  %7387 = fmul fast float %7386, %6116
  %7388 = fmul fast float %7386, %6117
  %7389 = fmul fast float %7386, %6118
  %7390 = fadd fast float %7387, %7375
  %7391 = fadd fast float %7388, %7376
  %7392 = fadd fast float %7389, %7377
  %7393 = fmul fast float %7390, %7128
  %7394 = fmul fast float %7391, %7128
  %7395 = fmul fast float %7392, %7128
  %7396 = fmul fast float %7128, %7111
  %7397 = fmul fast float %7396, %7256
  %7398 = fmul fast float %7128, %7112
  %7399 = fmul fast float %7398, %7256
  %7400 = fmul fast float %7128, %7113
  %7401 = fmul fast float %7400, %7256
  %7402 = fadd fast float %7393, %7370
  %7403 = fadd fast float %7394, %7372
  %7404 = fadd fast float %7395, %7374
  %7405 = fmul fast float %7402, %7111
  %7406 = fmul fast float %7403, %7112
  %7407 = fmul fast float %7404, %7113
  %7408 = fadd fast float %7397, %6207
  %7409 = fmul fast float %7408, %5083
  %7410 = fadd fast float %7399, %6209
  %7411 = fmul fast float %7410, %5083
  %7412 = fadd fast float %7401, %6211
  %7413 = fmul fast float %7412, %5083
  %7414 = fadd fast float %7405, %6170
  %7415 = fmul fast float %7414, %5083
  %7416 = fadd fast float %7406, %6173
  %7417 = fmul fast float %7416, %5083
  %7418 = fadd fast float %7407, %6176
  %7419 = fmul fast float %7418, %5083
  br label %7420

; <label>:7420                                    ; preds = %7318, %7029, %6081
  %7421 = phi float [ %6171, %6081 ], [ %6171, %7029 ], [ %7415, %7318 ]
  %7422 = phi float [ %6174, %6081 ], [ %6174, %7029 ], [ %7417, %7318 ]
  %7423 = phi float [ %6177, %6081 ], [ %6177, %7029 ], [ %7419, %7318 ]
  %7424 = phi float [ %6208, %6081 ], [ %6208, %7029 ], [ %7409, %7318 ]
  %7425 = phi float [ %6210, %6081 ], [ %6210, %7029 ], [ %7411, %7318 ]
  %7426 = phi float [ %6212, %6081 ], [ %6212, %7029 ], [ %7413, %7318 ]
  %7427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.i32 %7427, 0
  %7429 = icmp eq i32 %7428, 0
  br i1 %7429, label %8204, label %7430

; <label>:7430                                    ; preds = %7420
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 3
  %7434 = fmul fast float %7432, %101
  %7435 = fmul fast float %7433, %102
  %7436 = fptoui float %7434 to i32
  %7437 = fptoui float %7435 to i32
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 3
  %7442 = fadd fast float %92, -4.000000e+00
  %7443 = call float @dx.op.binary.f32(i32 35, float %7442, float 0.000000e+00)  ; FMax(a,b)
  %7444 = fadd fast float %7443, %7439
  %7445 = fmul fast float %7444, %7440
  %7446 = call float @dx.op.unary.f32(i32 23, float %7445)  ; Log(value)
  %7447 = fmul fast float %7446, %7441
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7450 = fmul fast float %7447, %7449
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.i32 %7452, 1
  %7454 = add i32 %7453, -1
  %7455 = uitofp i32 %7453 to float
  %7456 = fmul fast float %7455, %7451
  %7457 = fptoui float %7456 to i32
  %7458 = call i32 @dx.op.binary.i32(i32 40, i32 %7457, i32 %7454)  ; UMin(a,b)
  %7459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.i32 %7459, 2
  %7461 = extractvalue %dx.types.CBufRet.i32 %7459, 3
  %7462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7437, i32 %7460, i32 %7436)  ; UMad(a,b,c)
  %7463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7458, i32 %7461, i32 %7462)  ; UMad(a,b,c)
  %7464 = add nsw i32 %7428, -1
  %7465 = call i32 @dx.op.binary.i32(i32 37, i32 %7464, i32 0)  ; IMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7467 = fptoui float %7466 to i32
  %7468 = lshr i32 %7467, 5
  %7469 = call i32 @dx.op.binary.i32(i32 40, i32 %7468, i32 8191)  ; UMin(a,b)
  %7470 = shl i32 %7469, 2
  %7471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.i32 %7471, 0
  %7473 = lshr i32 %7472, 16
  %7474 = and i32 %7472, 65535
  %7475 = lshr i32 %7472, 21
  %7476 = lshr i32 %7474, 5
  %7477 = call i32 @dx.op.binary.i32(i32 40, i32 %7476, i32 %7465)  ; UMin(a,b)
  %7478 = icmp ugt i32 %7475, %7477
  br i1 %7478, label %8204, label %7479

; <label>:7479                                    ; preds = %7430
  br label %7480

; <label>:7480                                    ; preds = %8194, %7479
  %7481 = phi i32 [ %8201, %8194 ], [ %7475, %7479 ]
  %7482 = phi float [ %8195, %8194 ], [ %7421, %7479 ]
  %7483 = phi float [ %8196, %8194 ], [ %7422, %7479 ]
  %7484 = phi float [ %8197, %8194 ], [ %7423, %7479 ]
  %7485 = phi float [ %8198, %8194 ], [ %7424, %7479 ]
  %7486 = phi float [ %8199, %8194 ], [ %7425, %7479 ]
  %7487 = phi float [ %8200, %8194 ], [ %7426, %7479 ]
  %7488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.i32 %7488, 0
  %7490 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7463, i32 %7489, i32 %7481)  ; UMad(a,b,c)
  %7491 = shl i32 %7490, 2
  %7492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7491, i32 undef)  ; BufferLoad(srv,index,wot)
  %7493 = extractvalue %dx.types.ResRet.i32 %7492, 0
  %7494 = shl i32 %7481, 5
  %7495 = sub nsw i32 %7473, %7494
  %7496 = call i32 @dx.op.binary.i32(i32 37, i32 %7495, i32 0)  ; IMax(a,b)
  %7497 = call i32 @dx.op.binary.i32(i32 38, i32 %7496, i32 31)  ; IMin(a,b)
  %7498 = sub nsw i32 1, %7473
  %7499 = add nsw i32 %7498, %7474
  %7500 = call i32 @dx.op.binary.i32(i32 37, i32 %7499, i32 0)  ; IMax(a,b)
  %7501 = call i32 @dx.op.binary.i32(i32 38, i32 %7500, i32 32)  ; IMin(a,b)
  %7502 = and i32 %7501, 31
  %7503 = shl i32 -1, %7502
  %7504 = xor i32 %7503, -1
  %7505 = and i32 %7497, 31
  %7506 = shl i32 %7504, %7505
  %7507 = icmp eq i32 %7501, 32
  %7508 = select i1 %7507, i32 -1, i32 %7506
  %7509 = and i32 %7508, %7493
  %7510 = icmp eq i32 %7509, 0
  br i1 %7510, label %8194, label %7511

; <label>:7511                                    ; preds = %7480
  br label %7512

; <label>:7512                                    ; preds = %7647, %7511
  %7513 = phi i32 [ %7524, %7647 ], [ %7509, %7511 ]
  %7514 = phi float [ %7648, %7647 ], [ %7482, %7511 ]
  %7515 = phi float [ %7649, %7647 ], [ %7483, %7511 ]
  %7516 = phi float [ %7650, %7647 ], [ %7484, %7511 ]
  %7517 = phi float [ %7651, %7647 ], [ %7485, %7511 ]
  %7518 = phi float [ %7652, %7647 ], [ %7486, %7511 ]
  %7519 = phi float [ %7653, %7647 ], [ %7487, %7511 ]
  %7520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7513)  ; FirstbitLo(value)
  %7521 = add i32 %7520, %7494
  %7522 = and i32 %7520, 31
  %7523 = shl i32 1, %7522
  %7524 = xor i32 %7523, %7513
  %7525 = mul i32 %7521, 112
  %7526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7525, i32 undef)  ; BufferLoad(srv,index,wot)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.ResRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.ResRet.f32 %7526, 2
  %7530 = or i32 %7525, 12
  %7531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7530, i32 undef)  ; BufferLoad(srv,index,wot)
  %7532 = extractvalue %dx.types.ResRet.f32 %7531, 0
  %7533 = add i32 %7525, 16
  %7534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7533, i32 undef)  ; BufferLoad(srv,index,wot)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.ResRet.f32 %7534, 2
  %7538 = add i32 %7525, 28
  %7539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7538, i32 undef)  ; BufferLoad(srv,index,wot)
  %7540 = extractvalue %dx.types.ResRet.i32 %7539, 0
  %7541 = add i32 %7525, 44
  %7542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7541, i32 undef)  ; BufferLoad(srv,index,wot)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = add i32 %7525, 48
  %7545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7544, i32 undef)  ; BufferLoad(srv,index,wot)
  %7546 = extractvalue %dx.types.ResRet.f32 %7545, 0
  %7547 = extractvalue %dx.types.ResRet.f32 %7545, 1
  %7548 = extractvalue %dx.types.ResRet.f32 %7545, 2
  %7549 = extractvalue %dx.types.ResRet.f32 %7545, 3
  %7550 = add i32 %7525, 64
  %7551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7550, i32 undef)  ; BufferLoad(srv,index,wot)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.ResRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.ResRet.f32 %7551, 2
  %7555 = extractvalue %dx.types.ResRet.f32 %7551, 3
  %7556 = add i32 %7525, 80
  %7557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 2
  %7560 = add i32 %7525, 92
  %7561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.i32 %7561, 0
  %7563 = call float @dx.op.dot3.f32(i32 55, float %7527, float %7528, float %7529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7564 = select i1 %218, float %7558, float %7527
  %7565 = select i1 %218, float %7563, float %7528
  %7566 = select i1 %218, float %7559, float %7529
  %7567 = and i32 %7562, 65535
  %7568 = uitofp i32 %7567 to float
  %7569 = lshr i32 %7562, 16
  %7570 = uitofp i32 %7569 to float
  %7571 = and i32 %7540, 65535
  %7572 = and i32 %7540, 50331648
  %7573 = icmp slt i32 %7540, 0
  %7574 = icmp eq i32 %7572, 33554432
  %7575 = fsub fast float %7546, %156
  %7576 = fsub fast float %7547, %157
  %7577 = fsub fast float %7548, %158
  %7578 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7577, float %7575, float %7576, float %7577)  ; Dot3(ax,ay,az,bx,by,bz)
  %7579 = call float @dx.op.unary.f32(i32 24, float %7578)  ; Sqrt(value)
  %7580 = fdiv fast float 1.000000e+00, %7579
  %7581 = fmul fast float %7580, %7575
  %7582 = fmul fast float %7580, %7576
  %7583 = fmul fast float %7580, %7577
  %7584 = fadd fast float %7579, %7532
  %7585 = fdiv fast float 1.000000e+00, %7584
  %7586 = fmul float %7543, %7585
  %7587 = fmul float %7586, %7586
  %7588 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  br i1 %7574, label %7589, label %7610

; <label>:7589                                    ; preds = %7512
  %7590 = fmul fast float %7554, %7535
  %7591 = fmul fast float %7554, %7536
  %7592 = fmul fast float %7554, %7537
  %7593 = fadd fast float %7575, %7590
  %7594 = fadd fast float %7576, %7591
  %7595 = fadd fast float %7577, %7592
  %7596 = call float @dx.op.dot3.f32(i32 55, float %7593, float %7594, float %7595, float %7593, float %7594, float %7595)  ; Dot3(ax,ay,az,bx,by,bz)
  %7597 = call float @dx.op.unary.f32(i32 25, float %7596)  ; Rsqrt(value)
  %7598 = fmul fast float %7597, %7593
  %7599 = fmul fast float %7597, %7594
  %7600 = fmul fast float %7597, %7595
  %7601 = fsub fast float %156, %7546
  %7602 = fsub fast float %157, %7547
  %7603 = fsub fast float %158, %7548
  %7604 = fsub fast float -0.000000e+00, %7601
  %7605 = fsub fast float -0.000000e+00, %7602
  %7606 = fsub fast float -0.000000e+00, %7603
  %7607 = call float @dx.op.dot3.f32(i32 55, float %7604, float %7605, float %7606, float %7535, float %7536, float %7537)  ; Dot3(ax,ay,az,bx,by,bz)
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  %7609 = uitofp i1 %7608 to float
  br label %7610

; <label>:7610                                    ; preds = %7589, %7512
  %7611 = phi float [ %7609, %7589 ], [ 1.000000e+00, %7512 ]
  %7612 = phi float [ %7598, %7589 ], [ %7581, %7512 ]
  %7613 = phi float [ %7599, %7589 ], [ %7582, %7512 ]
  %7614 = phi float [ %7600, %7589 ], [ %7583, %7512 ]
  %7615 = call float @dx.op.dot3.f32(i32 55, float %7535, float %7536, float %7537, float %7612, float %7613, float %7614)  ; Dot3(ax,ay,az,bx,by,bz)
  %7616 = fmul fast float %7615, %7615
  %7617 = call float @dx.op.unary.f32(i32 7, float %7616)  ; Saturate(value)
  %7618 = fsub fast float 1.000000e+00, %7617
  %7619 = fmul fast float %7618, 5.000000e-01
  %7620 = fcmp fast ogt float %7615, 0.000000e+00
  %7621 = fsub fast float 1.000000e+00, %7619
  %7622 = select i1 %7620, float %7619, float %7621
  %7623 = fmul fast float %7622, %7570
  %7624 = fadd fast float %7623, %7568
  %7625 = fmul fast float %7624, 0x3EF0001000000000
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7625, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = fmul fast float %7615, %7552
  %7629 = fadd fast float %7628, %7553
  %7630 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  %7631 = select i1 %7574, float 1.000000e+00, float %7630
  %7632 = select i1 %7574, float %7630, float 1.000000e+00
  %7633 = fmul fast float %7579, %7549
  %7634 = fsub fast float 1.000000e+00, %7633
  %7635 = fmul fast float %7634, %7555
  %7636 = call float @dx.op.unary.f32(i32 7, float %7635)  ; Saturate(value)
  %7637 = fmul fast float %7636, %7632
  %7638 = fmul fast float %7637, 2.000000e+00
  %7639 = fsub fast float 3.000000e+00, %7638
  %7640 = fmul fast float %7627, %7611
  %7641 = fmul fast float %7637, %7637
  %7642 = fmul fast float %7641, %7640
  %7643 = fmul fast float %7642, %7639
  %7644 = call float @dx.op.binary.f32(i32 36, float %7643, float %7643)  ; FMin(a,b)
  %7645 = call float @dx.op.binary.f32(i32 36, float %7643, float %7644)  ; FMin(a,b)
  %7646 = fcmp fast ogt float %7645, 0.000000e+00
  br i1 %7646, label %7655, label %7647, !dx.controlflow.hints !121

; <label>:7647                                    ; preds = %8147, %7755, %7610
  %7648 = phi float [ %7514, %7755 ], [ %7514, %7610 ], [ %8190, %8147 ]
  %7649 = phi float [ %7515, %7755 ], [ %7515, %7610 ], [ %8191, %8147 ]
  %7650 = phi float [ %7516, %7755 ], [ %7516, %7610 ], [ %8192, %8147 ]
  %7651 = phi float [ %7517, %7755 ], [ %7517, %7610 ], [ %8184, %8147 ]
  %7652 = phi float [ %7518, %7755 ], [ %7518, %7610 ], [ %8185, %8147 ]
  %7653 = phi float [ %7519, %7755 ], [ %7519, %7610 ], [ %8186, %8147 ]
  %7654 = icmp eq i32 %7513, %7523
  br i1 %7654, label %8193, label %7512

; <label>:7655                                    ; preds = %7610
  %7656 = icmp eq i32 %7571, 255
  br i1 %7656, label %7755, label %7657, !dx.controlflow.hints !122

; <label>:7657                                    ; preds = %7655
  %7658 = mul nuw nsw i32 %7571, 176
  %7659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7658, i32 undef)  ; BufferLoad(srv,index,wot)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.ResRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.ResRet.f32 %7659, 3
  %7664 = add nuw nsw i32 %7658, 16
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = add nuw nsw i32 %7658, 32
  %7669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = add nuw nsw i32 %7658, 48
  %7674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7673, i32 undef)  ; BufferLoad(srv,index,wot)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.ResRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.ResRet.f32 %7674, 2
  %7678 = extractvalue %dx.types.ResRet.f32 %7674, 3
  %7679 = add nuw nsw i32 %7658, 64
  %7680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7679, i32 undef)  ; BufferLoad(srv,index,wot)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.ResRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.ResRet.f32 %7680, 2
  %7684 = extractvalue %dx.types.ResRet.f32 %7680, 3
  %7685 = add nuw nsw i32 %7658, 80
  %7686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7685, i32 undef)  ; BufferLoad(srv,index,wot)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.ResRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.ResRet.f32 %7686, 2
  %7690 = extractvalue %dx.types.ResRet.f32 %7686, 3
  %7691 = add nuw nsw i32 %7658, 96
  %7692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7691, i32 undef)  ; BufferLoad(srv,index,wot)
  %7693 = extractvalue %dx.types.ResRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.ResRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.ResRet.f32 %7692, 2
  %7696 = extractvalue %dx.types.ResRet.f32 %7692, 3
  %7697 = bitcast float %7667 to i32
  %7698 = fmul fast float %7672, %108
  %7699 = fmul fast float %7672, %109
  %7700 = fmul fast float %7672, %110
  %7701 = fadd fast float %7698, %156
  %7702 = fadd fast float %7699, %157
  %7703 = fadd fast float %7700, %158
  %7704 = fmul fast float %7701, %7675
  %7705 = call float @dx.op.tertiary.f32(i32 46, float %7702, float %7681, float %7704)  ; FMad(a,b,c)
  %7706 = call float @dx.op.tertiary.f32(i32 46, float %7703, float %7687, float %7705)  ; FMad(a,b,c)
  %7707 = fadd fast float %7706, %7693
  %7708 = fmul fast float %7701, %7676
  %7709 = call float @dx.op.tertiary.f32(i32 46, float %7702, float %7682, float %7708)  ; FMad(a,b,c)
  %7710 = call float @dx.op.tertiary.f32(i32 46, float %7703, float %7688, float %7709)  ; FMad(a,b,c)
  %7711 = fadd fast float %7710, %7694
  %7712 = fmul fast float %7701, %7677
  %7713 = call float @dx.op.tertiary.f32(i32 46, float %7702, float %7683, float %7712)  ; FMad(a,b,c)
  %7714 = call float @dx.op.tertiary.f32(i32 46, float %7703, float %7689, float %7713)  ; FMad(a,b,c)
  %7715 = fadd fast float %7714, %7695
  %7716 = fmul fast float %7701, %7678
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %7702, float %7684, float %7716)  ; FMad(a,b,c)
  %7718 = call float @dx.op.tertiary.f32(i32 46, float %7703, float %7690, float %7717)  ; FMad(a,b,c)
  %7719 = fadd fast float %7718, %7696
  %7720 = fdiv fast float %7707, %7719
  %7721 = fdiv fast float %7711, %7719
  %7722 = fdiv fast float %7715, %7719
  %7723 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7722)  ; FMax(a,b)
  %7724 = fmul fast float %229, 0x401921FB60000000
  %7725 = call float @dx.op.unary.f32(i32 13, float %7724)  ; Sin(value)
  %7726 = call float @dx.op.unary.f32(i32 12, float %7724)  ; Cos(value)
  %7727 = fsub fast float -0.000000e+00, %7725
  %7728 = fmul fast float %7662, 5.000000e-01
  %7729 = call float @dx.op.dot2.f32(i32 54, float %229, float %229, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7730 = call float @dx.op.unary.f32(i32 22, float %7729)  ; Frc(value)
  %7731 = fmul fast float %7730, 0x404A7DD040000000
  %7732 = call float @dx.op.unary.f32(i32 22, float %7731)  ; Frc(value)
  %7733 = fmul fast float %7732, %7671
  %7734 = fadd fast float %7733, %7728
  %7735 = call float @dx.op.tertiary.f32(i32 46, float %7734, float %7727, float 0.000000e+00)  ; FMad(a,b,c)
  %7736 = call float @dx.op.tertiary.f32(i32 46, float %7734, float %7726, float 0.000000e+00)  ; FMad(a,b,c)
  %7737 = fadd fast float %7735, %7720
  %7738 = fadd fast float %7736, %7721
  %7739 = fmul fast float %7737, %7666
  %7740 = fmul fast float %7738, %7666
  %7741 = call float @dx.op.binary.f32(i32 35, float %7739, float %7662)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 35, float %7740, float %7662)  ; FMax(a,b)
  %7743 = call float @dx.op.binary.f32(i32 36, float %7741, float %7663)  ; FMin(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7742, float %7663)  ; FMin(a,b)
  %7745 = fadd fast float %7743, %7660
  %7746 = fadd fast float %7744, %7661
  %7747 = uitofp i32 %7697 to float
  %7748 = fadd fast float %7723, %7670
  %7749 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7745, float %7746, float %7747, float undef, i32 0, i32 0, i32 undef, float %7748)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = fadd fast float %7750, -1.000000e+00
  %7752 = fmul fast float %7751, %7631
  %7753 = fadd fast float %7752, 1.000000e+00
  %7754 = fmul fast float %7753, %7643
  br label %7755

; <label>:7755                                    ; preds = %7657, %7655
  %7756 = phi float [ %7754, %7657 ], [ %7643, %7655 ]
  %7757 = call float @dx.op.binary.f32(i32 36, float %7756, float %7756)  ; FMin(a,b)
  %7758 = call float @dx.op.binary.f32(i32 36, float %7756, float %7757)  ; FMin(a,b)
  %7759 = fcmp fast ogt float %7758, 0.000000e+00
  br i1 %7759, label %7760, label %7647, !dx.controlflow.hints !123

; <label>:7760                                    ; preds = %7755
  %7761 = fmul fast float %7756, %7564
  %7762 = fmul fast float %7756, %7565
  %7763 = fmul fast float %7756, %7566
  %7764 = fsub fast float %7548, %5517
  %7765 = fcmp fast ogt float %7764, 0.000000e+00
  %7766 = fsub fast float %158, %5517
  %7767 = fcmp fast ogt float %7766, 0.000000e+00
  %7768 = xor i1 %7767, %7765
  %7769 = fsub fast float %5517, %7548
  %7770 = fmul fast float %7769, 2.000000e+00
  %7771 = fadd fast float %7770, %7548
  %7772 = select i1 %7768, float %7548, float %7771
  %7773 = fsub fast float %7772, %158
  %7774 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7773, float %7575, float %7576, float %7773)  ; Dot3(ax,ay,az,bx,by,bz)
  %7775 = call float @dx.op.unary.f32(i32 25, float %7774)  ; Rsqrt(value)
  %7776 = fmul fast float %7775, %7575
  %7777 = fmul fast float %7775, %7576
  %7778 = fmul fast float %7775, %7773
  %7779 = fsub fast float %5517, %158
  %7780 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7779)  ; Dot3(ax,ay,az,bx,by,bz)
  %7781 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7776, float %7777, float %7778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7782 = fdiv fast float 1.000000e+00, %7781
  %7783 = fmul fast float %7782, %7780
  %7784 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7766, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7785 = fcmp fast ogt float %7784, 0.000000e+00
  %7786 = fcmp fast olt float %7784, 0.000000e+00
  %7787 = zext i1 %7785 to i32
  %7788 = zext i1 %7786 to i32
  %7789 = sub nsw i32 %7787, %7788
  %7790 = sitofp i32 %7789 to float
  %7791 = fsub fast float %7772, %5517
  %7792 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7791, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7793 = fcmp fast ogt float %7792, 0.000000e+00
  %7794 = fcmp fast olt float %7792, 0.000000e+00
  %7795 = zext i1 %7793 to i32
  %7796 = zext i1 %7794 to i32
  %7797 = sub nsw i32 %7795, %7796
  %7798 = sitofp i32 %7797 to float
  %7799 = fcmp fast une float %7790, %7798
  br i1 %7799, label %7800, label %7810

; <label>:7800                                    ; preds = %7760
  %7801 = fmul fast float %7783, %7778
  %7802 = fmul fast float %7783, %7777
  %7803 = fmul fast float %7783, %7776
  %7804 = fmul fast float %7803, %7803
  %7805 = fmul fast float %7802, %7802
  %7806 = fadd fast float %7804, %7805
  %7807 = fmul fast float %7801, %7801
  %7808 = fadd fast float %7806, %7807
  %7809 = call float @dx.op.unary.f32(i32 24, float %7808)  ; Sqrt(value)
  br label %7822

; <label>:7810                                    ; preds = %7760
  %7811 = icmp slt i32 %7789, 0
  br i1 %7811, label %7812, label %7822

; <label>:7812                                    ; preds = %7810
  %7813 = fsub fast float %156, %7546
  %7814 = fsub fast float %157, %7547
  %7815 = fsub fast float %158, %7772
  %7816 = fmul fast float %7813, %7813
  %7817 = fmul fast float %7814, %7814
  %7818 = fadd fast float %7816, %7817
  %7819 = fmul fast float %7815, %7815
  %7820 = fadd fast float %7818, %7819
  %7821 = call float @dx.op.unary.f32(i32 24, float %7820)  ; Sqrt(value)
  br label %7822

; <label>:7822                                    ; preds = %7812, %7810, %7800
  %7823 = phi float [ %7809, %7800 ], [ %7821, %7812 ], [ 0.000000e+00, %7810 ]
  %7824 = and i1 %7767, %7765
  %7825 = fsub fast float -0.000000e+00, %7823
  %7826 = select i1 %7824, float -0.000000e+00, float %7825
  %7827 = fmul fast float %5518, 0x3FF7154760000000
  %7828 = fmul fast float %7827, %7826
  %7829 = fmul fast float %5519, 0x3FF7154760000000
  %7830 = fmul fast float %7829, %7826
  %7831 = fmul fast float %5520, 0x3FF7154760000000
  %7832 = fmul fast float %7831, %7826
  %7833 = call float @dx.op.unary.f32(i32 21, float %7828)  ; Exp(value)
  %7834 = call float @dx.op.unary.f32(i32 21, float %7830)  ; Exp(value)
  %7835 = call float @dx.op.unary.f32(i32 21, float %7832)  ; Exp(value)
  %7836 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7837 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7838 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7839 = fmul fast float %7761, %7836
  %7840 = fmul fast float %7762, %7837
  %7841 = fmul fast float %7763, %7838
  %7842 = fsub fast float %7581, %5717
  %7843 = fsub fast float %7582, %5716
  %7844 = fsub fast float %7583, %5715
  %7845 = call float @dx.op.dot3.f32(i32 55, float %7842, float %7843, float %7844, float %7842, float %7843, float %7844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = call float @dx.op.unary.f32(i32 25, float %7845)  ; Rsqrt(value)
  %7847 = fmul fast float %7846, %7842
  %7848 = fmul fast float %7846, %7843
  %7849 = fmul fast float %7846, %7844
  %7850 = call float @dx.op.dot3.f32(i32 55, float %7581, float %7582, float %7583, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5713, float %5712, float %7847, float %7848, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7853 = fmul fast float %7852, %7588
  %7854 = fmul fast float %7852, %7852
  %7855 = fmul fast float %7854, %5745
  %7856 = call float @dx.op.unary.f32(i32 7, float %7855)  ; Saturate(value)
  %7857 = fmul fast float %7853, %7856
  %7858 = bitcast float %7578 to i32
  %7859 = ashr i32 %7858, 1
  %7860 = sub nsw i32 1597463007, %7859
  %7861 = bitcast i32 %7860 to float
  %7862 = fmul fast float %7861, %7575
  %7863 = fmul fast float %7861, %7576
  %7864 = fmul fast float %7861, %7577
  %7865 = fsub fast float %7862, %5717
  %7866 = fsub fast float %7863, %5716
  %7867 = fsub fast float %7864, %5715
  %7868 = call float @dx.op.dot3.f32(i32 55, float %7865, float %7866, float %7867, float %7865, float %7866, float %7867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = call float @dx.op.unary.f32(i32 25, float %7868)  ; Rsqrt(value)
  %7870 = fmul fast float %7865, %7869
  %7871 = fmul fast float %7866, %7869
  %7872 = fmul fast float %7867, %7869
  %7873 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %7870, float %7871, float %7872)  ; Dot3(ax,ay,az,bx,by,bz)
  %7874 = fmul fast float %7873, %7873
  %7875 = call float @dx.op.unary.f32(i32 6, float %7850)  ; FAbs(value)
  %7876 = call float @dx.op.binary.f32(i32 35, float %6185, float 0x3F847AE140000000)  ; FMax(a,b)
  %7877 = fmul fast float %7876, %7876
  %7878 = fmul fast float %7877, %7877
  %7879 = fsub fast float 1.000000e+00, %7878
  %7880 = fmul fast float %5732, %5732
  %7881 = fmul fast float %7880, %7879
  %7882 = fadd fast float %7881, %7878
  %7883 = bitcast float %7882 to i32
  %7884 = ashr i32 %7883, 1
  %7885 = add nsw i32 %7884, 532487669
  %7886 = bitcast i32 %7885 to float
  %7887 = fadd fast float %7886, %5732
  %7888 = fmul fast float %7878, %7874
  %7889 = fsub fast float 1.000000e+00, %7874
  %7890 = fadd fast float %7889, %7888
  %7891 = fmul fast float %7875, %7875
  %7892 = fmul fast float %7891, %7879
  %7893 = fadd fast float %7892, %7878
  %7894 = bitcast float %7893 to i32
  %7895 = ashr i32 %7894, 1
  %7896 = add nsw i32 %7895, 532487669
  %7897 = bitcast i32 %7896 to float
  %7898 = fadd fast float %7897, %7875
  %7899 = fmul fast float %7890, %7890
  %7900 = fmul fast float %7899, %7887
  %7901 = fmul fast float %7900, %7898
  %7902 = fdiv fast float 1.000000e+00, %7901
  %7903 = bitcast float %7878 to i32
  %7904 = sitofp i32 %7903 to float
  %7905 = fmul fast float %7904, 0x3FE7F73180000000
  %7906 = fadd fast float %7905, 0x41AFE27C40000000
  %7907 = fptosi float %7906 to i32
  %7908 = bitcast i32 %7907 to float
  %7909 = fmul fast float %7543, 0x3FD80E9D60000000
  %7910 = fmul fast float %7909, %7861
  %7911 = fadd fast float %7908, %7910
  %7912 = bitcast float %7911 to i32
  %7913 = sub nsw i32 2129859010, %7912
  %7914 = bitcast i32 %7913 to float
  %7915 = fmul fast float %7878, %7902
  %7916 = fmul fast float %7915, %7908
  %7917 = fmul fast float %7916, %7914
  %7918 = fmul fast float %6031, 0x3FF9999980000000
  %7919 = fsub fast float 5.000000e+00, %7918
  %7920 = call float @dx.op.unary.f32(i32 6, float %7851)  ; FAbs(value)
  %7921 = fsub fast float 1.000000e+00, %7920
  %7922 = fmul fast float %6031, 0x41D9660740000000
  %7923 = fadd fast float %7922, 0xC1EFBF8940000000
  %7924 = bitcast float %7921 to i32
  %7925 = sitofp i32 %7924 to float
  %7926 = fmul fast float %7925, %7919
  %7927 = fadd fast float %7923, %7926
  %7928 = fptosi float %7927 to i32
  %7929 = bitcast i32 %7928 to float
  %7930 = fsub fast float 1.000000e+00, %5721
  %7931 = fsub fast float 1.000000e+00, %5722
  %7932 = fsub fast float 1.000000e+00, %5730
  %7933 = fmul fast float %7929, %7930
  %7934 = fmul fast float %7929, %7931
  %7935 = fmul fast float %7929, %7932
  %7936 = fadd fast float %7933, %5721
  %7937 = fadd fast float %7934, %5722
  %7938 = fadd fast float %7935, %5730
  br i1 %6054, label %7939, label %7962

; <label>:7939                                    ; preds = %7822
  %7940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %7920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7941 = extractvalue %dx.types.ResRet.f32 %7940, 0
  %7942 = extractvalue %dx.types.ResRet.f32 %7940, 1
  %7943 = extractvalue %dx.types.ResRet.f32 %7940, 2
  %7944 = fadd fast float %7941, -5.000000e-01
  %7945 = fadd fast float %7942, -5.000000e-01
  %7946 = fadd fast float %7943, -5.000000e-01
  %7947 = fmul fast float %5721, 4.000000e+00
  %7948 = fmul fast float %7947, %7930
  %7949 = fmul fast float %7948, %7944
  %7950 = fmul fast float %5722, 4.000000e+00
  %7951 = fmul fast float %7950, %7931
  %7952 = fmul fast float %7951, %7945
  %7953 = fmul fast float %5730, 4.000000e+00
  %7954 = fmul fast float %7953, %7932
  %7955 = fmul fast float %7954, %7946
  %7956 = fadd fast float %7949, %7936
  %7957 = fadd fast float %7952, %7937
  %7958 = fadd fast float %7955, %7938
  %7959 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7960 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  br label %7962

; <label>:7962                                    ; preds = %7939, %7822
  %7963 = phi float [ %7959, %7939 ], [ %7936, %7822 ]
  %7964 = phi float [ %7960, %7939 ], [ %7937, %7822 ]
  %7965 = phi float [ %7961, %7939 ], [ %7938, %7822 ]
  %7966 = fmul fast float %7850, 9.843750e-01
  %7967 = fadd fast float %7966, 7.812500e-03
  %7968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7967, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7969 = extractvalue %dx.types.ResRet.f32 %7968, 0
  %7970 = extractvalue %dx.types.ResRet.f32 %7968, 1
  %7971 = extractvalue %dx.types.ResRet.f32 %7968, 2
  %7972 = extractvalue %dx.types.ResRet.f32 %7968, 3
  %7973 = fsub fast float %7971, %7969
  %7974 = fsub fast float %7972, %7970
  %7975 = fmul fast float %7973, %6041
  %7976 = fmul fast float %7974, %6041
  %7977 = fadd fast float %7975, %7969
  %7978 = fadd fast float %7976, %7970
  %7979 = fmul fast float %7977, %5721
  %7980 = fmul fast float %7977, %5722
  %7981 = fmul fast float %7977, %5730
  %7982 = fadd fast float %7979, %7978
  %7983 = fadd fast float %7980, %7978
  %7984 = fadd fast float %7981, %7978
  br i1 %6054, label %7985, label %8008

; <label>:7985                                    ; preds = %7962
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.ResRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.ResRet.f32 %7986, 2
  %7990 = fadd fast float %7987, -5.000000e-01
  %7991 = fadd fast float %7988, -5.000000e-01
  %7992 = fadd fast float %7989, -5.000000e-01
  %7993 = fmul fast float %5721, 4.000000e+00
  %7994 = fmul fast float %7993, %7930
  %7995 = fmul fast float %7994, %7990
  %7996 = fmul fast float %5722, 4.000000e+00
  %7997 = fmul fast float %7996, %7931
  %7998 = fmul fast float %7997, %7991
  %7999 = fmul fast float %5730, 4.000000e+00
  %8000 = fmul fast float %7999, %7932
  %8001 = fmul fast float %8000, %7992
  %8002 = fadd fast float %7995, %7982
  %8003 = fadd fast float %7998, %7983
  %8004 = fadd fast float %8001, %7984
  %8005 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8006 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8007 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  br label %8008

; <label>:8008                                    ; preds = %7985, %7962
  %8009 = phi float [ %8005, %7985 ], [ %7982, %7962 ]
  %8010 = phi float [ %8006, %7985 ], [ %7983, %7962 ]
  %8011 = phi float [ %8007, %7985 ], [ %7984, %7962 ]
  %8012 = call float @dx.op.binary.f32(i32 35, float %8010, float %8011)  ; FMax(a,b)
  %8013 = call float @dx.op.binary.f32(i32 35, float %8009, float %8012)  ; FMax(a,b)
  %8014 = fsub fast float 1.000000e+00, %8013
  %8015 = call float @dx.op.binary.f32(i32 35, float %7875, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8016 = fdiv fast float %4419, %8015
  %8017 = fmul fast float %6125, %8016
  %8018 = fmul fast float %6127, %8016
  %8019 = fmul fast float %6129, %8016
  %8020 = call float @dx.op.unary.f32(i32 21, float %8017)  ; Exp(value)
  %8021 = call float @dx.op.unary.f32(i32 21, float %8018)  ; Exp(value)
  %8022 = call float @dx.op.unary.f32(i32 21, float %8019)  ; Exp(value)
  %8023 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8024 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = select i1 %6122, float %8023, float 0.000000e+00
  %8027 = select i1 %6123, float %8024, float 0.000000e+00
  %8028 = select i1 %6124, float %8025, float 0.000000e+00
  %8029 = fsub fast float -0.000000e+00, %5724
  %8030 = fsub fast float -0.000000e+00, %5725
  %8031 = fsub fast float -0.000000e+00, %5726
  %8032 = call float @dx.op.dot3.f32(i32 55, float %7581, float %7582, float %7583, float %8029, float %8030, float %8031)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fmul fast float %8033, %7588
  %8035 = fmul fast float %8033, 9.843750e-01
  %8036 = fadd fast float %8035, 7.812500e-03
  %8037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8036, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8038 = extractvalue %dx.types.ResRet.f32 %8037, 0
  %8039 = extractvalue %dx.types.ResRet.f32 %8037, 1
  %8040 = extractvalue %dx.types.ResRet.f32 %8037, 2
  %8041 = extractvalue %dx.types.ResRet.f32 %8037, 3
  %8042 = fsub fast float %8040, %8038
  %8043 = fsub fast float %8041, %8039
  %8044 = fmul fast float %8042, %6041
  %8045 = fmul fast float %8043, %6041
  %8046 = fadd fast float %8044, %8038
  %8047 = fadd fast float %8045, %8039
  %8048 = fmul fast float %8046, %5721
  %8049 = fmul fast float %8046, %5722
  %8050 = fmul fast float %8046, %5730
  %8051 = fadd fast float %8048, %8047
  %8052 = fadd fast float %8049, %8047
  %8053 = fadd fast float %8050, %8047
  br i1 %6054, label %8054, label %8077

; <label>:8054                                    ; preds = %8008
  %8055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5086, float %8033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8056 = extractvalue %dx.types.ResRet.f32 %8055, 0
  %8057 = extractvalue %dx.types.ResRet.f32 %8055, 1
  %8058 = extractvalue %dx.types.ResRet.f32 %8055, 2
  %8059 = fadd fast float %8056, -5.000000e-01
  %8060 = fadd fast float %8057, -5.000000e-01
  %8061 = fadd fast float %8058, -5.000000e-01
  %8062 = fmul fast float %5721, 4.000000e+00
  %8063 = fmul fast float %8062, %7930
  %8064 = fmul fast float %8063, %8059
  %8065 = fmul fast float %5722, 4.000000e+00
  %8066 = fmul fast float %8065, %7931
  %8067 = fmul fast float %8066, %8060
  %8068 = fmul fast float %5730, 4.000000e+00
  %8069 = fmul fast float %8068, %7932
  %8070 = fmul fast float %8069, %8061
  %8071 = fadd fast float %8064, %8051
  %8072 = fadd fast float %8067, %8052
  %8073 = fadd fast float %8070, %8053
  %8074 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8075 = call float @dx.op.unary.f32(i32 7, float %8072)  ; Saturate(value)
  %8076 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  br label %8077

; <label>:8077                                    ; preds = %8054, %8008
  %8078 = phi float [ %8074, %8054 ], [ %8051, %8008 ]
  %8079 = phi float [ %8075, %8054 ], [ %8052, %8008 ]
  %8080 = phi float [ %8076, %8054 ], [ %8053, %8008 ]
  %8081 = call float @dx.op.binary.f32(i32 35, float %8079, float %8080)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 35, float %8078, float %8081)  ; FMax(a,b)
  %8083 = fsub fast float 1.000000e+00, %8082
  %8084 = fmul fast float %6185, %6190
  %8085 = fadd fast float %6192, %8084
  %8086 = call float @dx.op.unary.f32(i32 7, float %8085)  ; Saturate(value)
  %8087 = fsub fast float %7862, %5738
  %8088 = fsub fast float %7863, %5739
  %8089 = fsub fast float %7864, %5740
  %8090 = call float @dx.op.dot3.f32(i32 55, float %8087, float %8088, float %8089, float %8087, float %8088, float %8089)  ; Dot3(ax,ay,az,bx,by,bz)
  %8091 = call float @dx.op.unary.f32(i32 25, float %8090)  ; Rsqrt(value)
  %8092 = fmul fast float %8087, %8091
  %8093 = fmul fast float %8088, %8091
  %8094 = fmul fast float %8089, %8091
  %8095 = call float @dx.op.dot3.f32(i32 55, float %8029, float %8030, float %8031, float %8092, float %8093, float %8094)  ; Dot3(ax,ay,az,bx,by,bz)
  %8096 = fmul fast float %8095, %8095
  %8097 = call float @dx.op.unary.f32(i32 6, float %8033)  ; FAbs(value)
  %8098 = call float @dx.op.binary.f32(i32 35, float %8086, float 0x3F847AE140000000)  ; FMax(a,b)
  %8099 = fmul fast float %8098, %8098
  %8100 = fmul fast float %8099, %8099
  %8101 = fsub fast float 1.000000e+00, %8100
  %8102 = fmul fast float %7880, %8101
  %8103 = fadd fast float %8102, %8100
  %8104 = bitcast float %8103 to i32
  %8105 = ashr i32 %8104, 1
  %8106 = add nsw i32 %8105, 532487669
  %8107 = bitcast i32 %8106 to float
  %8108 = fadd fast float %8107, %5732
  %8109 = fmul fast float %8100, %8096
  %8110 = fsub fast float 1.000000e+00, %8096
  %8111 = fadd fast float %8110, %8109
  %8112 = fmul fast float %8097, %8097
  %8113 = fmul fast float %8112, %8101
  %8114 = fadd fast float %8113, %8100
  %8115 = bitcast float %8114 to i32
  %8116 = ashr i32 %8115, 1
  %8117 = add nsw i32 %8116, 532487669
  %8118 = bitcast i32 %8117 to float
  %8119 = fadd fast float %8118, %8097
  %8120 = fmul fast float %8111, %8111
  %8121 = fmul fast float %8120, %8108
  %8122 = fmul fast float %8121, %8119
  %8123 = fdiv fast float 1.000000e+00, %8122
  %8124 = bitcast float %8100 to i32
  %8125 = sitofp i32 %8124 to float
  %8126 = fmul fast float %8125, 0x3FE7F73180000000
  %8127 = fadd fast float %8126, 0x41AFE27C40000000
  %8128 = fptosi float %8127 to i32
  %8129 = bitcast i32 %8128 to float
  %8130 = fadd fast float %8129, %7910
  %8131 = bitcast float %8130 to i32
  %8132 = sub nsw i32 2129859010, %8131
  %8133 = bitcast i32 %8132 to float
  %8134 = fmul fast float %8100, %8123
  %8135 = fmul fast float %8134, %8129
  %8136 = fmul fast float %8135, %8133
  br i1 %7573, label %8137, label %8147

; <label>:8137                                    ; preds = %8077
  %8138 = fmul fast float %8034, %8026
  %8139 = fmul fast float %8034, %8027
  %8140 = fmul fast float %8034, %8028
  %8141 = fmul fast float %8138, %8083
  %8142 = fmul fast float %8141, %8136
  %8143 = fmul fast float %8139, %8083
  %8144 = fmul fast float %8143, %8136
  %8145 = fmul fast float %8140, %8083
  %8146 = fmul fast float %8145, %8136
  br label %8147

; <label>:8147                                    ; preds = %8137, %8077
  %8148 = phi float [ %8142, %8137 ], [ 0.000000e+00, %8077 ]
  %8149 = phi float [ %8144, %8137 ], [ 0.000000e+00, %8077 ]
  %8150 = phi float [ %8146, %8137 ], [ 0.000000e+00, %8077 ]
  %8151 = fmul fast float %7963, %7917
  %8152 = fmul fast float %7964, %7917
  %8153 = fmul fast float %7965, %7917
  %8154 = fsub fast float 1.000000e+00, %7851
  %8155 = bitcast float %8154 to i32
  %8156 = sitofp i32 %8155 to float
  %8157 = fmul fast float %8156, 5.000000e+00
  %8158 = fadd fast float %8157, 0xC1EFBF8940000000
  %8159 = fptosi float %8158 to i32
  %8160 = bitcast i32 %8159 to float
  %8161 = fmul fast float %8160, %5087
  %8162 = fmul fast float %8014, %8161
  %8163 = fmul fast float %8162, %6116
  %8164 = fmul fast float %8162, %6117
  %8165 = fmul fast float %8162, %6118
  %8166 = fadd fast float %8163, %8151
  %8167 = fadd fast float %8164, %8152
  %8168 = fadd fast float %8165, %8153
  %8169 = fmul fast float %8166, %7857
  %8170 = fmul fast float %8167, %7857
  %8171 = fmul fast float %8168, %7857
  %8172 = fadd fast float %8169, %8148
  %8173 = fadd fast float %8170, %8149
  %8174 = fadd fast float %8171, %8150
  %8175 = fmul fast float %7839, %5083
  %8176 = fmul fast float %8175, %7857
  %8177 = fmul fast float %8176, %8014
  %8178 = fmul fast float %7840, %5083
  %8179 = fmul fast float %8178, %7857
  %8180 = fmul fast float %8179, %8014
  %8181 = fmul fast float %7841, %5083
  %8182 = fmul fast float %8181, %7857
  %8183 = fmul fast float %8182, %8014
  %8184 = fadd fast float %8177, %7517
  %8185 = fadd fast float %8180, %7518
  %8186 = fadd fast float %8183, %7519
  %8187 = fmul fast float %8175, %8172
  %8188 = fmul fast float %8178, %8173
  %8189 = fmul fast float %8181, %8174
  %8190 = fadd fast float %8187, %7514
  %8191 = fadd fast float %8188, %7515
  %8192 = fadd fast float %8189, %7516
  br label %7647

; <label>:8193                                    ; preds = %7647
  br label %8194

; <label>:8194                                    ; preds = %8193, %7480
  %8195 = phi float [ %7482, %7480 ], [ %7648, %8193 ]
  %8196 = phi float [ %7483, %7480 ], [ %7649, %8193 ]
  %8197 = phi float [ %7484, %7480 ], [ %7650, %8193 ]
  %8198 = phi float [ %7485, %7480 ], [ %7651, %8193 ]
  %8199 = phi float [ %7486, %7480 ], [ %7652, %8193 ]
  %8200 = phi float [ %7487, %7480 ], [ %7653, %8193 ]
  %8201 = add i32 %7481, 1
  %8202 = icmp ugt i32 %8201, %7477
  br i1 %8202, label %8203, label %7480

; <label>:8203                                    ; preds = %8194
  br label %8204

; <label>:8204                                    ; preds = %8203, %7430, %7420
  %8205 = phi float [ %7421, %7420 ], [ %7421, %7430 ], [ %8195, %8203 ]
  %8206 = phi float [ %7422, %7420 ], [ %7422, %7430 ], [ %8196, %8203 ]
  %8207 = phi float [ %7423, %7420 ], [ %7423, %7430 ], [ %8197, %8203 ]
  %8208 = phi float [ %7424, %7420 ], [ %7424, %7430 ], [ %8198, %8203 ]
  %8209 = phi float [ %7425, %7420 ], [ %7425, %7430 ], [ %8199, %8203 ]
  %8210 = phi float [ %7426, %7420 ], [ %7426, %7430 ], [ %8200, %8203 ]
  %8211 = fmul fast float %5083, %6146
  %8212 = fsub fast float -0.000000e+00, %8211
  %8213 = fmul fast float %5083, %6147
  %8214 = fsub fast float -0.000000e+00, %8213
  %8215 = fmul fast float %5083, %6148
  %8216 = fsub fast float -0.000000e+00, %8215
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = fmul fast float %8218, %6152
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 3
  %8222 = fsub fast float 1.000000e+00, %5091
  %8223 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8224 = fadd fast float %8210, %5089
  %8225 = fmul fast float %8224, %5091
  %8226 = fmul fast float %8223, %8221
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8229 = fmul fast float %8208, %5718
  %8230 = fmul fast float %8209, %5719
  %8231 = fmul fast float %8210, %5720
  %8232 = fcmp fast ogt float %92, %178
  %8233 = and i1 %8232, %5523
  %8234 = or i1 %5529, %8233
  %8235 = icmp eq i32 %5522, 2
  %8236 = fcmp fast ole float %92, %178
  %8237 = and i1 %8236, %8235
  %8238 = or i1 %8237, %8234
  br i1 %8233, label %8239, label %8496

; <label>:8239                                    ; preds = %8204
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8243 = fmul fast float %8241, %101
  %8244 = fmul fast float %8242, %102
  %8245 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8246 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8247 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8245, float %8246, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8248 = extractvalue %dx.types.ResRet.f32 %8247, 0
  %8249 = extractvalue %dx.types.ResRet.f32 %8247, 1
  %8250 = extractvalue %dx.types.ResRet.f32 %8247, 2
  %8251 = extractvalue %dx.types.ResRet.f32 %8247, 3
  %8252 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8245, float %8246, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8253 = extractvalue %dx.types.ResRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.ResRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.ResRet.f32 %8252, 2
  %8256 = extractvalue %dx.types.ResRet.f32 %8252, 3
  %8257 = call float @dx.op.binary.f32(i32 35, float %8249, float %8250)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 35, float %8248, float %8257)  ; FMax(a,b)
  %8259 = call float @dx.op.binary.f32(i32 35, float %8258, float %8251)  ; FMax(a,b)
  %8260 = call float @dx.op.binary.f32(i32 36, float %8254, float %8255)  ; FMin(a,b)
  %8261 = call float @dx.op.binary.f32(i32 36, float %8253, float %8260)  ; FMin(a,b)
  %8262 = call float @dx.op.binary.f32(i32 36, float %8261, float %8256)  ; FMin(a,b)
  %8263 = fmul fast float %8259, 2.550000e+02
  %8264 = fadd fast float %8263, 0x3F70101020000000
  %8265 = fptoui float %8264 to i32
  %8266 = fmul fast float %8262, 2.550000e+02
  %8267 = fadd fast float %8266, 0x3F70101020000000
  %8268 = fptoui float %8267 to i32
  %8269 = icmp ult i32 %8265, %8268
  br i1 %8269, label %8270, label %8438

; <label>:8270                                    ; preds = %8239
  %8271 = fcmp fast ogt float %91, 9.843750e-01
  %8272 = fadd fast float %92, -4.000000e+00
  %8273 = select i1 %8271, float -4.000000e+00, float %8272
  %8274 = call float @dx.op.binary.f32(i32 35, float %8273, float 0.000000e+00)  ; FMax(a,b)
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = fadd fast float %8276, %8274
  %8278 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8279 = fmul fast float %8277, %8278
  %8280 = call float @dx.op.unary.f32(i32 23, float %8279)  ; Log(value)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8282 = fmul fast float %8281, %8280
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8285 = fmul fast float %8282, %8284
  %8286 = call float @dx.op.unary.f32(i32 7, float %8285)  ; Saturate(value)
  %8287 = uitofp i32 %8265 to float
  %8288 = uitofp i32 %8268 to float
  %8289 = fadd fast float %8287, 5.000000e-01
  %8290 = fadd fast float %8288, 5.000000e-01
  %8291 = fmul fast float %8284, %8289
  %8292 = fmul fast float %8284, %8290
  %8293 = fadd fast float %8291, 0x3F0FFB4800000000
  %8294 = fadd fast float %8292, 0xBF0FFB4800000000
  %8295 = call float @dx.op.binary.f32(i32 35, float %8286, float %8293)  ; FMax(a,b)
  %8296 = call float @dx.op.binary.f32(i32 36, float %8295, float %8294)  ; FMin(a,b)
  %8297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.f32 %8297, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8297, 2
  %8300 = extractvalue %dx.types.CBufRet.f32 %8297, 0
  %8301 = fmul fast float %8298, %8296
  %8302 = fadd fast float %8300, %8301
  %8303 = fadd fast float %8300, %8299
  %8304 = fsub fast float %8298, %8299
  %8305 = fadd fast float %8304, %8300
  %8306 = call float @dx.op.binary.f32(i32 35, float %8302, float %8303)  ; FMax(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8306, float %8305)  ; FMin(a,b)
  %8308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8245, float %8246, float %8307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8309 = extractvalue %dx.types.ResRet.f32 %8308, 0
  %8310 = extractvalue %dx.types.ResRet.f32 %8308, 1
  %8311 = extractvalue %dx.types.ResRet.f32 %8308, 2
  %8312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.i32 %8312, 0
  %8314 = extractvalue %dx.types.CBufRet.i32 %8312, 1
  %8315 = uitofp i32 %8313 to float
  %8316 = uitofp i32 %8314 to float
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 0
  %8319 = extractvalue %dx.types.CBufRet.f32 %8317, 1
  %8320 = fmul fast float %8315, %8245
  %8321 = fmul fast float %8316, %8246
  %8322 = fadd fast float %8320, -5.000000e-01
  %8323 = fadd fast float %8321, -5.000000e-01
  %8324 = call float @dx.op.unary.f32(i32 22, float %8322)  ; Frc(value)
  %8325 = call float @dx.op.unary.f32(i32 22, float %8323)  ; Frc(value)
  %8326 = fmul fast float %8324, %8324
  %8327 = fmul fast float %8326, %8324
  %8328 = fsub fast float 3.000000e+00, %8324
  %8329 = fmul fast float %8326, %8328
  %8330 = fmul fast float %8324, 3.000000e+00
  %8331 = fmul fast float %8327, 3.000000e+00
  %8332 = fmul fast float %8326, 6.000000e+00
  %8333 = fsub fast float %8331, %8332
  %8334 = fadd fast float %8333, 4.000000e+00
  %8335 = fmul fast float %8334, 0x3FC5555560000000
  %8336 = fmul fast float %8327, -3.000000e+00
  %8337 = fadd fast float %8326, %8324
  %8338 = fmul fast float %8337, 3.000000e+00
  %8339 = fadd fast float %8336, 1.000000e+00
  %8340 = fadd fast float %8339, %8338
  %8341 = fmul fast float %8327, 0x3FC5555560000000
  %8342 = fmul fast float %8325, %8325
  %8343 = fmul fast float %8342, %8325
  %8344 = fsub fast float 3.000000e+00, %8325
  %8345 = fmul fast float %8342, %8344
  %8346 = fmul fast float %8325, 3.000000e+00
  %8347 = fmul fast float %8343, 3.000000e+00
  %8348 = fmul fast float %8342, 6.000000e+00
  %8349 = fsub fast float %8347, %8348
  %8350 = fadd fast float %8349, 4.000000e+00
  %8351 = fmul fast float %8350, 0x3FC5555560000000
  %8352 = fmul fast float %8343, -3.000000e+00
  %8353 = fadd fast float %8342, %8325
  %8354 = fmul fast float %8353, 3.000000e+00
  %8355 = fadd fast float %8352, 1.000000e+00
  %8356 = fadd fast float %8355, %8354
  %8357 = fmul fast float %8343, 0x3FC5555560000000
  %8358 = fadd fast float %8324, 1.000000e+00
  %8359 = fsub fast float 1.000000e+00, %8330
  %8360 = fadd fast float %8359, %8329
  %8361 = fadd fast float %8360, %8334
  %8362 = fmul fast float %8361, 0x3FC5555560000000
  %8363 = fdiv fast float %8335, %8362
  %8364 = fsub fast float %8358, %8363
  %8365 = fsub fast float 1.000000e+00, %8324
  %8366 = fadd fast float %8340, %8327
  %8367 = fmul fast float %8366, 0x3FC5555560000000
  %8368 = fdiv fast float %8341, %8367
  %8369 = fadd fast float %8365, %8368
  %8370 = fadd fast float %8325, 1.000000e+00
  %8371 = fsub fast float 1.000000e+00, %8346
  %8372 = fadd fast float %8371, %8345
  %8373 = fadd fast float %8372, %8350
  %8374 = fmul fast float %8373, 0x3FC5555560000000
  %8375 = fdiv fast float %8351, %8374
  %8376 = fsub fast float %8370, %8375
  %8377 = fsub fast float 1.000000e+00, %8325
  %8378 = fadd fast float %8356, %8343
  %8379 = fmul fast float %8378, 0x3FC5555560000000
  %8380 = fdiv fast float %8357, %8379
  %8381 = fadd fast float %8380, %8377
  %8382 = fmul fast float %8364, %8318
  %8383 = fsub fast float %8245, %8382
  %8384 = fmul fast float %8369, %8318
  %8385 = fadd fast float %8384, %8245
  %8386 = fmul fast float %8381, %8319
  %8387 = fadd fast float %8386, %8246
  %8388 = fmul fast float %8376, %8319
  %8389 = fsub fast float %8246, %8388
  %8390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8383, float %8389, float %8307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8391 = extractvalue %dx.types.ResRet.f32 %8390, 0
  %8392 = extractvalue %dx.types.ResRet.f32 %8390, 1
  %8393 = extractvalue %dx.types.ResRet.f32 %8390, 2
  %8394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8385, float %8389, float %8307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8395 = extractvalue %dx.types.ResRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.ResRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.ResRet.f32 %8394, 2
  %8398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8383, float %8387, float %8307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8399 = extractvalue %dx.types.ResRet.f32 %8398, 0
  %8400 = extractvalue %dx.types.ResRet.f32 %8398, 1
  %8401 = extractvalue %dx.types.ResRet.f32 %8398, 2
  %8402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8385, float %8387, float %8307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8403 = extractvalue %dx.types.ResRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.ResRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.ResRet.f32 %8402, 2
  %8406 = fsub fast float %8399, %8391
  %8407 = fsub fast float %8400, %8392
  %8408 = fsub fast float %8401, %8393
  %8409 = fmul fast float %8406, %8379
  %8410 = fmul fast float %8407, %8379
  %8411 = fmul fast float %8408, %8379
  %8412 = fadd fast float %8409, %8391
  %8413 = fadd fast float %8410, %8392
  %8414 = fadd fast float %8411, %8393
  %8415 = fsub fast float %8403, %8395
  %8416 = fsub fast float %8404, %8396
  %8417 = fsub fast float %8405, %8397
  %8418 = fmul fast float %8415, %8379
  %8419 = fmul fast float %8416, %8379
  %8420 = fmul fast float %8417, %8379
  %8421 = fsub fast float %8395, %8412
  %8422 = fadd fast float %8421, %8418
  %8423 = fsub fast float %8396, %8413
  %8424 = fadd fast float %8423, %8419
  %8425 = fsub fast float %8397, %8414
  %8426 = fadd fast float %8425, %8420
  %8427 = fmul fast float %8422, %8367
  %8428 = fmul fast float %8424, %8367
  %8429 = fmul fast float %8426, %8367
  %8430 = fadd fast float %8427, %8412
  %8431 = fadd fast float %8428, %8413
  %8432 = fadd fast float %8429, %8414
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8435 = fmul fast float %8430, %8434
  %8436 = fmul fast float %8431, %8434
  %8437 = fmul fast float %8432, %8434
  br label %8438

; <label>:8438                                    ; preds = %8270, %8239
  %8439 = phi float [ %8309, %8270 ], [ 1.000000e+00, %8239 ]
  %8440 = phi float [ %8310, %8270 ], [ 1.000000e+00, %8239 ]
  %8441 = phi float [ %8311, %8270 ], [ 1.000000e+00, %8239 ]
  %8442 = phi float [ %8435, %8270 ], [ 0.000000e+00, %8239 ]
  %8443 = phi float [ %8436, %8270 ], [ 0.000000e+00, %8239 ]
  %8444 = phi float [ %8437, %8270 ], [ 0.000000e+00, %8239 ]
  %8445 = fmul fast float %8442, %8212
  %8446 = fmul fast float %8443, %8214
  %8447 = fmul fast float %8444, %8216
  %8448 = call float @dx.op.dot3.f32(i32 55, float %8439, float %8440, float %8441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8449 = call float @dx.op.dot3.f32(i32 55, float %8445, float %8446, float %8447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8450 = select i1 %218, float %8448, float %8439
  %8451 = select i1 %218, float %8448, float %8440
  %8452 = select i1 %218, float 1.000000e+00, float %8441
  %8453 = select i1 %218, float %8449, float %8445
  %8454 = select i1 %218, float 0.000000e+00, float %8446
  %8455 = select i1 %218, float 0.000000e+00, float %8447
  %8456 = fmul fast float %8450, %8229
  %8457 = fmul fast float %8451, %8230
  %8458 = fmul fast float %8452, %8231
  %8459 = fadd fast float %8456, %8453
  %8460 = fadd fast float %8457, %8454
  %8461 = fadd fast float %8455, %8458
  %8462 = fmul fast float %8450, %8205
  %8463 = fmul fast float %8451, %8206
  %8464 = fmul fast float %8452, %8207
  %8465 = fmul fast float %126, %8241
  %8466 = fmul fast float %128, %8242
  %8467 = fsub fast float 1.000000e+00, %8465
  %8468 = fsub fast float 1.000000e+00, %8466
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.CBufRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8473 = fmul fast float %8467, %8470
  %8474 = fmul fast float %8467, %8471
  %8475 = fmul fast float %8467, %8472
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 0
  %8478 = extractvalue %dx.types.CBufRet.f32 %8476, 1
  %8479 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8480 = fmul fast float %8468, %8477
  %8481 = fmul fast float %8468, %8478
  %8482 = fmul fast float %8468, %8479
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8487 = fadd fast float %8480, %8484
  %8488 = fadd fast float %8487, %8473
  %8489 = fadd fast float %8481, %8485
  %8490 = fadd fast float %8489, %8474
  %8491 = fadd fast float %8482, %8486
  %8492 = fadd fast float %8491, %8475
  %8493 = fmul fast float %8488, %178
  %8494 = fmul fast float %8490, %178
  %8495 = fmul fast float %8492, %178
  br label %8496

; <label>:8496                                    ; preds = %8438, %8204
  %8497 = phi float [ %8493, %8438 ], [ %156, %8204 ]
  %8498 = phi float [ %8494, %8438 ], [ %157, %8204 ]
  %8499 = phi float [ %8495, %8438 ], [ %158, %8204 ]
  %8500 = phi float [ %178, %8438 ], [ %92, %8204 ]
  %8501 = phi float [ %8459, %8438 ], [ %8229, %8204 ]
  %8502 = phi float [ %8460, %8438 ], [ %8230, %8204 ]
  %8503 = phi float [ %8461, %8438 ], [ %8231, %8204 ]
  %8504 = phi float [ %8462, %8438 ], [ %8205, %8204 ]
  %8505 = phi float [ %8463, %8438 ], [ %8206, %8204 ]
  %8506 = phi float [ %8464, %8438 ], [ %8207, %8204 ]
  %8507 = phi float [ %8439, %8438 ], [ 1.000000e+00, %8204 ]
  br i1 %8238, label %9662, label %8508

; <label>:8508                                    ; preds = %8496
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8513 = extractvalue %dx.types.CBufRet.f32 %8509, 3
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 0
  %8516 = extractvalue %dx.types.CBufRet.f32 %8514, 1
  %8517 = extractvalue %dx.types.CBufRet.f32 %8514, 2
  %8518 = extractvalue %dx.types.CBufRet.f32 %8514, 3
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 0
  %8521 = extractvalue %dx.types.CBufRet.f32 %8519, 1
  %8522 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8523 = extractvalue %dx.types.CBufRet.f32 %8519, 3
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8528 = extractvalue %dx.types.CBufRet.f32 %8524, 3
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 3
  %8531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.f32 %8531, 3
  %8533 = extractvalue %dx.types.CBufRet.f32 %8531, 0
  %8534 = extractvalue %dx.types.CBufRet.f32 %8531, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8531, 2
  %8536 = fcmp fast olt float %8535, -5.000000e-01
  %8537 = call float @dx.op.dot3.f32(i32 55, float %8497, float %8498, float %8499, float %8497, float %8498, float %8499)  ; Dot3(ax,ay,az,bx,by,bz)
  %8538 = call float @dx.op.unary.f32(i32 25, float %8537)  ; Rsqrt(value)
  %8539 = fmul fast float %8538, %8537
  %8540 = fmul fast float %8538, %8497
  %8541 = fmul fast float %8538, %8498
  %8542 = fmul fast float %8538, %8499
  %8543 = fadd fast float %8539, %8513
  %8544 = call float @dx.op.dot3.f32(i32 55, float %8540, float %8541, float %8542, float %8510, float %8511, float %8512)  ; Dot3(ax,ay,az,bx,by,bz)
  %8545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.i32 %8545, 1
  %8547 = and i32 %8546, 1
  %8548 = icmp ne i32 %8547, 0
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 2
  %8551 = fcmp fast ogt float %8550, 0.000000e+00
  %8552 = and i1 %8548, %8551
  br i1 %8552, label %8553, label %8959, !dx.controlflow.hints !124

; <label>:8553                                    ; preds = %8508
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 3
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 2
  %8560 = fsub fast float %8557, %8559
  %8561 = and i32 %8546, 2
  %8562 = extractvalue %dx.types.CBufRet.i32 %8545, 0
  %8563 = call i32 @dx.op.binary.i32(i32 40, i32 %8562, i32 3)  ; UMin(a,b)
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.CBufRet.f32 %8564, 1
  %8567 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8558, 1
  %8569 = fsub fast float %8565, %8567
  %8570 = fsub fast float %8566, %8568
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 0
  %8573 = fcmp fast ogt float %8572, 0.000000e+00
  %8574 = fsub fast float -0.000000e+00, %8569
  %8575 = fsub fast float -0.000000e+00, %8570
  %8576 = call float @dx.op.dot2.f32(i32 54, float %8540, float %8541, float %8540, float %8541)  ; Dot2(ax,ay,bx,by)
  %8577 = call float @dx.op.dot2.f32(i32 54, float %8540, float %8541, float %8574, float %8575)  ; Dot2(ax,ay,bx,by)
  %8578 = fmul fast float %8577, 2.000000e+00
  %8579 = call float @dx.op.dot2.f32(i32 54, float %8574, float %8575, float %8574, float %8575)  ; Dot2(ax,ay,bx,by)
  %8580 = fmul fast float %8572, %8572
  %8581 = fsub fast float %8579, %8580
  %8582 = fmul fast float %8578, %8578
  %8583 = fmul fast float %8576, 4.000000e+00
  %8584 = fmul fast float %8583, %8581
  %8585 = fsub fast float %8582, %8584
  %8586 = fcmp fast ogt float %8585, 0.000000e+00
  br i1 %8586, label %8587, label %8602

; <label>:8587                                    ; preds = %8553
  %8588 = fcmp fast ogt float %8578, 0.000000e+00
  %8589 = call float @dx.op.unary.f32(i32 24, float %8585)  ; Sqrt(value)
  %8590 = fsub fast float -0.000000e+00, %8589
  %8591 = select i1 %8588, float %8589, float %8590
  %8592 = fadd fast float %8591, %8578
  %8593 = fmul float %8592, -5.000000e-01
  %8594 = fdiv fast float %8593, %8576
  %8595 = call float @dx.op.binary.f32(i32 35, float %8594, float 0.000000e+00)  ; FMax(a,b)
  %8596 = call float @dx.op.binary.f32(i32 36, float %8539, float %8595)  ; FMin(a,b)
  %8597 = fdiv fast float %8581, %8593
  %8598 = call float @dx.op.binary.f32(i32 35, float %8597, float 0.000000e+00)  ; FMax(a,b)
  %8599 = call float @dx.op.binary.f32(i32 36, float %8539, float %8598)  ; FMin(a,b)
  %8600 = call float @dx.op.binary.f32(i32 36, float %8596, float %8599)  ; FMin(a,b)
  %8601 = call float @dx.op.binary.f32(i32 35, float %8596, float %8599)  ; FMax(a,b)
  br label %8602

; <label>:8602                                    ; preds = %8587, %8553
  %8603 = phi float [ %8601, %8587 ], [ -1.000000e+00, %8553 ]
  %8604 = phi float [ %8600, %8587 ], [ -1.000000e+00, %8553 ]
  %8605 = phi i1 [ true, %8587 ], [ false, %8553 ]
  %8606 = and i1 %8573, %8605
  br i1 %8606, label %8607, label %8609

; <label>:8607                                    ; preds = %8602
  %8608 = fcmp fast oeq float %8604, %8603
  br i1 %8608, label %8912, label %8610

; <label>:8609                                    ; preds = %8602
  br i1 %8573, label %8912, label %8610

; <label>:8610                                    ; preds = %8609, %8607
  %8611 = phi float [ %8539, %8609 ], [ %8603, %8607 ]
  %8612 = phi float [ 0.000000e+00, %8609 ], [ %8604, %8607 ]
  %8613 = icmp ne i32 %8561, 0
  %8614 = fmul fast float %8611, %8542
  %8615 = fadd fast float %8614, %8555
  %8616 = fmul fast float %8615, %8611
  %8617 = select i1 %8613, float 0.000000e+00, float %8616
  %8618 = fcmp fast oeq float %8542, 0.000000e+00
  %8619 = fdiv fast float %8560, %8542
  %8620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8619)  ; FMax(a,b)
  %8621 = select i1 %8618, float %8611, float %8620
  %8622 = call float @dx.op.binary.f32(i32 36, float %8611, float %8621)  ; FMin(a,b)
  %8623 = fcmp fast ogt float %8542, 0.000000e+00
  %8624 = fcmp fast olt float %8560, 0.000000e+00
  br i1 %8623, label %8625, label %8682

; <label>:8625                                    ; preds = %8610
  %8626 = icmp eq i32 %8561, 0
  br i1 %8624, label %8627, label %8671

; <label>:8627                                    ; preds = %8625
  %8628 = select i1 %8626, float %8611, float 0.000000e+00
  %8629 = fsub fast float -0.000000e+00, %8628
  %8630 = call float @dx.op.unary.f32(i32 6, float %8629)  ; FAbs(value)
  %8631 = fmul fast float %8628, %8542
  %8632 = fadd fast float %8631, %8555
  %8633 = fmul fast float %8630, %8632
  %8634 = fsub fast float %8617, %8633
  %8635 = fsub fast float %8611, %8630
  %8636 = select i1 %8626, float %8635, float 0.000000e+00
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8640 = extractvalue %dx.types.CBufRet.f32 %8637, 2
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.CBufRet.f32 %8641, 1
  %8644 = extractvalue %dx.types.CBufRet.f32 %8641, 2
  %8645 = extractvalue %dx.types.CBufRet.f32 %8641, 3
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8648 = call float @dx.op.binary.f32(i32 36, float %8634, float %8647)  ; FMin(a,b)
  %8649 = fmul fast float %8645, %8636
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fsub fast float %8642, %8638
  %8652 = fsub fast float %8643, %8639
  %8653 = fsub fast float %8644, %8640
  %8654 = fmul fast float %8650, %8651
  %8655 = fmul fast float %8650, %8652
  %8656 = fmul fast float %8650, %8653
  %8657 = fadd fast float %8654, %8638
  %8658 = fadd fast float %8655, %8639
  %8659 = fadd fast float %8656, %8640
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 0
  %8662 = extractvalue %dx.types.CBufRet.f32 %8660, 1
  %8663 = fadd fast float %8662, %8661
  %8664 = call float @dx.op.unary.f32(i32 7, float %8663)  ; Saturate(value)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8660, 2
  %8666 = extractvalue %dx.types.CBufRet.f32 %8660, 3
  %8667 = fadd fast float %8666, %8665
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fmul fast float %8664, %8648
  %8670 = fmul fast float %8669, %8668
  br label %8912

; <label>:8671                                    ; preds = %8625
  br i1 %8626, label %8672, label %8693

; <label>:8672                                    ; preds = %8671
  %8673 = call float @dx.op.binary.f32(i32 36, float %8622, float %8612)  ; FMin(a,b)
  %8674 = fsub fast float %8622, %8673
  %8675 = fsub fast float %8674, %8611
  %8676 = call float @dx.op.unary.f32(i32 6, float %8675)  ; FAbs(value)
  %8677 = fadd fast float %8674, %8611
  %8678 = fmul fast float %8677, %8542
  %8679 = fadd fast float %8678, %8555
  %8680 = fmul fast float %8679, %8676
  %8681 = fsub fast float %8617, %8680
  br label %8693

; <label>:8682                                    ; preds = %8610
  br i1 %8624, label %8683, label %8693

; <label>:8683                                    ; preds = %8682
  %8684 = call float @dx.op.binary.f32(i32 35, float %8612, float %8622)  ; FMax(a,b)
  %8685 = icmp eq i32 %8561, 0
  %8686 = select i1 %8685, float %8622, float 0.000000e+00
  %8687 = fsub fast float -0.000000e+00, %8686
  %8688 = call float @dx.op.unary.f32(i32 6, float %8687)  ; FAbs(value)
  %8689 = fmul fast float %8686, %8542
  %8690 = fadd fast float %8689, %8555
  %8691 = fmul fast float %8688, %8690
  %8692 = fsub fast float %8617, %8691
  br label %8693

; <label>:8693                                    ; preds = %8683, %8682, %8672, %8671
  %8694 = phi float [ %8612, %8671 ], [ %8612, %8672 ], [ %8684, %8683 ], [ %8612, %8682 ]
  %8695 = phi float [ 0.000000e+00, %8671 ], [ %8676, %8672 ], [ %8688, %8683 ], [ 0.000000e+00, %8682 ]
  %8696 = phi float [ %8617, %8671 ], [ %8681, %8672 ], [ %8692, %8683 ], [ %8617, %8682 ]
  %8697 = phi float [ %8622, %8671 ], [ %8622, %8672 ], [ %8611, %8683 ], [ %8611, %8682 ]
  %8698 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8698, align 4, !tbaa !125, !noalias !127
  %8699 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8699, align 4, !tbaa !125, !noalias !127
  %8700 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8700, align 4, !tbaa !125, !noalias !127
  %8701 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8701, align 4, !tbaa !125, !noalias !127
  %8702 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8702, align 4, !tbaa !125, !noalias !127
  %8703 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8703, align 4, !tbaa !125, !noalias !127
  %8704 = icmp sgt i32 %8563, 0
  br i1 %8704, label %8705, label %8766

; <label>:8705                                    ; preds = %8693
  br label %8706

; <label>:8706                                    ; preds = %8755, %8705
  %8707 = phi i32 [ %8756, %8755 ], [ 0, %8705 ]
  %8708 = phi i32 [ %8757, %8755 ], [ 0, %8705 ]
  %8709 = add nuw i32 %8708, 171
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8709)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = fsub fast float %8711, %8714
  %8717 = fsub fast float %8712, %8715
  %8718 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8719 = fsub fast float -0.000000e+00, %8716
  %8720 = fsub fast float -0.000000e+00, %8717
  %8721 = call float @dx.op.dot2.f32(i32 54, float %8540, float %8541, float %8719, float %8720)  ; Dot2(ax,ay,bx,by)
  %8722 = fmul fast float %8721, 2.000000e+00
  %8723 = call float @dx.op.dot2.f32(i32 54, float %8719, float %8720, float %8719, float %8720)  ; Dot2(ax,ay,bx,by)
  %8724 = fmul fast float %8718, %8718
  %8725 = fsub fast float %8723, %8724
  %8726 = fmul fast float %8722, %8722
  %8727 = fmul fast float %8583, %8725
  %8728 = fsub fast float %8726, %8727
  %8729 = fcmp fast ogt float %8728, 0.000000e+00
  br i1 %8729, label %8730, label %8745

; <label>:8730                                    ; preds = %8706
  %8731 = fcmp fast ogt float %8722, 0.000000e+00
  %8732 = call float @dx.op.unary.f32(i32 24, float %8728)  ; Sqrt(value)
  %8733 = fsub fast float -0.000000e+00, %8732
  %8734 = select i1 %8731, float %8732, float %8733
  %8735 = fadd fast float %8734, %8722
  %8736 = fmul float %8735, -5.000000e-01
  %8737 = fdiv fast float %8736, %8576
  %8738 = call float @dx.op.binary.f32(i32 35, float %8737, float 0.000000e+00)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8611, float %8738)  ; FMin(a,b)
  %8740 = fdiv fast float %8725, %8736
  %8741 = call float @dx.op.binary.f32(i32 35, float %8740, float 0.000000e+00)  ; FMax(a,b)
  %8742 = call float @dx.op.binary.f32(i32 36, float %8611, float %8741)  ; FMin(a,b)
  %8743 = call float @dx.op.binary.f32(i32 36, float %8739, float %8742)  ; FMin(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float %8739, float %8742)  ; FMax(a,b)
  br label %8745

; <label>:8745                                    ; preds = %8730, %8706
  %8746 = phi float [ %8744, %8730 ], [ -1.000000e+00, %8706 ]
  %8747 = phi float [ %8743, %8730 ], [ -1.000000e+00, %8706 ]
  %8748 = phi i1 [ true, %8730 ], [ false, %8706 ]
  br i1 %8748, label %8749, label %8755

; <label>:8749                                    ; preds = %8745
  %8750 = call float @dx.op.binary.f32(i32 35, float %8694, float %8747)  ; FMax(a,b)
  %8751 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8708
  store float %8750, float* %8751, align 4, !tbaa !125, !noalias !127
  %8752 = call float @dx.op.binary.f32(i32 35, float %8694, float %8746)  ; FMax(a,b)
  %8753 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8708
  store float %8752, float* %8753, align 4, !tbaa !125, !noalias !127
  %8754 = add nsw i32 %8707, 1
  br label %8755

; <label>:8755                                    ; preds = %8749, %8745
  %8756 = phi i32 [ %8754, %8749 ], [ %8707, %8745 ]
  %8757 = add nuw nsw i32 %8708, 1
  %8758 = icmp eq i32 %8757, %8563
  br i1 %8758, label %8759, label %8706

; <label>:8759                                    ; preds = %8755
  %8760 = load float, float* %8700, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8761 = load float, float* %8699, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %8762 = load float, float* %8698, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %8763 = load float, float* %8703, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8764 = load float, float* %8702, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %8765 = load float, float* %8701, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %8766

; <label>:8766                                    ; preds = %8759, %8693
  %8767 = phi float [ -1.000000e+00, %8693 ], [ %8765, %8759 ]
  %8768 = phi float [ -1.000000e+00, %8693 ], [ %8764, %8759 ]
  %8769 = phi float [ -1.000000e+00, %8693 ], [ %8763, %8759 ]
  %8770 = phi float [ -1.000000e+00, %8693 ], [ %8762, %8759 ]
  %8771 = phi float [ -1.000000e+00, %8693 ], [ %8761, %8759 ]
  %8772 = phi float [ -1.000000e+00, %8693 ], [ %8760, %8759 ]
  %8773 = phi i32 [ 0, %8693 ], [ %8756, %8759 ]
  %8774 = call float @dx.op.binary.f32(i32 36, float %8771, float %8772)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8770, float %8774)  ; FMin(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8770, float %8771)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 36, float %8776, float %8772)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8770, float %8771)  ; FMin(a,b)
  %8779 = call float @dx.op.binary.f32(i32 35, float %8778, float %8777)  ; FMax(a,b)
  %8780 = call float @dx.op.binary.f32(i32 35, float %8771, float %8772)  ; FMax(a,b)
  %8781 = call float @dx.op.binary.f32(i32 35, float %8770, float %8780)  ; FMax(a,b)
  store float %8775, float* %8698, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %8779, float* %8699, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %8781, float* %8700, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8782 = call float @dx.op.binary.f32(i32 36, float %8768, float %8769)  ; FMin(a,b)
  %8783 = call float @dx.op.binary.f32(i32 36, float %8767, float %8782)  ; FMin(a,b)
  %8784 = call float @dx.op.binary.f32(i32 35, float %8767, float %8768)  ; FMax(a,b)
  %8785 = call float @dx.op.binary.f32(i32 36, float %8784, float %8769)  ; FMin(a,b)
  %8786 = call float @dx.op.binary.f32(i32 36, float %8767, float %8768)  ; FMin(a,b)
  %8787 = call float @dx.op.binary.f32(i32 35, float %8786, float %8785)  ; FMax(a,b)
  %8788 = call float @dx.op.binary.f32(i32 35, float %8768, float %8769)  ; FMax(a,b)
  %8789 = call float @dx.op.binary.f32(i32 35, float %8767, float %8788)  ; FMax(a,b)
  store float %8783, float* %8701, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %8787, float* %8702, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %8789, float* %8703, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8790 = sub nsw i32 3, %8773
  %8791 = icmp sgt i32 %8790, 2
  br i1 %8791, label %8792, label %8830

; <label>:8792                                    ; preds = %8766
  %8793 = icmp eq i32 %8561, 0
  %8794 = fsub fast float %8611, %8695
  %8795 = select i1 %8793, float %8794, float %8695
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 0
  %8798 = extractvalue %dx.types.CBufRet.f32 %8796, 1
  %8799 = extractvalue %dx.types.CBufRet.f32 %8796, 2
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %8802 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8803 = extractvalue %dx.types.CBufRet.f32 %8800, 2
  %8804 = extractvalue %dx.types.CBufRet.f32 %8800, 3
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 3
  %8807 = call float @dx.op.binary.f32(i32 36, float %8696, float %8806)  ; FMin(a,b)
  %8808 = fmul fast float %8804, %8795
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = fsub fast float %8801, %8797
  %8811 = fsub fast float %8802, %8798
  %8812 = fsub fast float %8803, %8799
  %8813 = fmul fast float %8809, %8810
  %8814 = fmul fast float %8809, %8811
  %8815 = fmul fast float %8809, %8812
  %8816 = fadd fast float %8813, %8797
  %8817 = fadd fast float %8814, %8798
  %8818 = fadd fast float %8815, %8799
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 0
  %8821 = extractvalue %dx.types.CBufRet.f32 %8819, 1
  %8822 = fadd fast float %8821, %8820
  %8823 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8824 = extractvalue %dx.types.CBufRet.f32 %8819, 2
  %8825 = extractvalue %dx.types.CBufRet.f32 %8819, 3
  %8826 = fadd fast float %8825, %8824
  %8827 = call float @dx.op.unary.f32(i32 7, float %8826)  ; Saturate(value)
  %8828 = fmul fast float %8823, %8807
  %8829 = fmul fast float %8828, %8827
  br label %8912

; <label>:8830                                    ; preds = %8766
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8790
  %8832 = load float, float* %8831, align 4, !tbaa !125, !noalias !127
  %8833 = fcmp fast olt float %8832, %8697
  %8834 = icmp sgt i32 %8773, 0
  %8835 = and i1 %8834, %8833
  br i1 %8835, label %8836, label %8873

; <label>:8836                                    ; preds = %8830
  br label %8837

; <label>:8837                                    ; preds = %8866, %8836
  %8838 = phi float [ %8867, %8866 ], [ %8695, %8836 ]
  %8839 = phi float [ %8868, %8866 ], [ %8696, %8836 ]
  %8840 = phi float [ %8848, %8866 ], [ %8832, %8836 ]
  %8841 = phi i32 [ %8845, %8866 ], [ %8790, %8836 ]
  %8842 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8841
  %8843 = load float, float* %8842, align 4, !tbaa !125, !noalias !127
  %8844 = icmp slt i32 %8841, 2
  %8845 = add nsw i32 %8841, 1
  %8846 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8845
  %8847 = load float, float* %8846, align 4, !tbaa !125, !noalias !127
  %8848 = select i1 %8844, float %8847, float %8611
  %8849 = call float @dx.op.binary.f32(i32 36, float %8848, float %8843)  ; FMin(a,b)
  %8850 = call float @dx.op.binary.f32(i32 36, float %8697, float %8849)  ; FMin(a,b)
  %8851 = icmp eq i32 %8561, 0
  %8852 = fadd fast float %8850, %8840
  %8853 = fmul fast float %8852, %8542
  %8854 = fadd fast float %8853, %8555
  br i1 %8851, label %8860, label %8855

; <label>:8855                                    ; preds = %8837
  %8856 = fsub fast float %8850, %8840
  %8857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8856)  ; FMax(a,b)
  %8858 = fmul fast float %8857, %8854
  %8859 = fadd fast float %8858, %8839
  br label %8866

; <label>:8860                                    ; preds = %8837
  %8861 = fsub fast float %8840, %8850
  %8862 = call float @dx.op.unary.f32(i32 6, float %8861)  ; FAbs(value)
  %8863 = fadd fast float %8862, %8838
  %8864 = fmul fast float %8862, %8854
  %8865 = fsub fast float %8839, %8864
  br label %8866

; <label>:8866                                    ; preds = %8860, %8855
  %8867 = phi float [ %8857, %8855 ], [ %8863, %8860 ]
  %8868 = phi float [ %8859, %8855 ], [ %8865, %8860 ]
  %8869 = fcmp fast olt float %8848, %8697
  %8870 = icmp slt i32 %8845, 3
  %8871 = and i1 %8870, %8869
  br i1 %8871, label %8837, label %8872

; <label>:8872                                    ; preds = %8866
  br label %8873

; <label>:8873                                    ; preds = %8872, %8830
  %8874 = phi float [ %8695, %8830 ], [ %8867, %8872 ]
  %8875 = phi float [ %8696, %8830 ], [ %8868, %8872 ]
  %8876 = fsub fast float %8611, %8874
  %8877 = select i1 %8613, float %8874, float %8876
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.CBufRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.CBufRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.CBufRet.f32 %8882, 2
  %8886 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 3
  %8889 = call float @dx.op.binary.f32(i32 36, float %8875, float %8888)  ; FMin(a,b)
  %8890 = fmul fast float %8886, %8877
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = fsub fast float %8883, %8879
  %8893 = fsub fast float %8884, %8880
  %8894 = fsub fast float %8885, %8881
  %8895 = fmul fast float %8891, %8892
  %8896 = fmul fast float %8891, %8893
  %8897 = fmul fast float %8891, %8894
  %8898 = fadd fast float %8895, %8879
  %8899 = fadd fast float %8896, %8880
  %8900 = fadd fast float %8897, %8881
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = extractvalue %dx.types.CBufRet.f32 %8901, 1
  %8904 = fadd fast float %8903, %8902
  %8905 = call float @dx.op.unary.f32(i32 7, float %8904)  ; Saturate(value)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8907 = extractvalue %dx.types.CBufRet.f32 %8901, 3
  %8908 = fadd fast float %8907, %8906
  %8909 = call float @dx.op.unary.f32(i32 7, float %8908)  ; Saturate(value)
  %8910 = fmul fast float %8905, %8889
  %8911 = fmul fast float %8910, %8909
  br label %8912

; <label>:8912                                    ; preds = %8873, %8792, %8627, %8609, %8607
  %8913 = phi float [ %8636, %8627 ], [ %8795, %8792 ], [ %8877, %8873 ], [ 0.000000e+00, %8607 ], [ 0.000000e+00, %8609 ]
  %8914 = phi float [ %8670, %8627 ], [ %8829, %8792 ], [ %8911, %8873 ], [ 0.000000e+00, %8607 ], [ 0.000000e+00, %8609 ]
  %8915 = phi float [ %8657, %8627 ], [ %8816, %8792 ], [ %8898, %8873 ], [ 0.000000e+00, %8607 ], [ 0.000000e+00, %8609 ]
  %8916 = phi float [ %8658, %8627 ], [ %8817, %8792 ], [ %8899, %8873 ], [ 0.000000e+00, %8607 ], [ 0.000000e+00, %8609 ]
  %8917 = phi float [ %8659, %8627 ], [ %8818, %8792 ], [ %8900, %8873 ], [ 0.000000e+00, %8607 ], [ 0.000000e+00, %8609 ]
  %8918 = fmul fast float %8550, %8914
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 2
  %8921 = fsub fast float %8557, %8920
  %8922 = fcmp fast olt float %8918, -2.000000e+01
  %8923 = call float @dx.op.unary.f32(i32 21, float %8918)  ; Exp(value)
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 3
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 2
  %8929 = fmul fast float %8926, %8921
  %8930 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8931 = fsub fast float 1.000000e+00, %8930
  %8932 = fmul fast float %8542, 5.000000e-01
  %8933 = fadd fast float %8932, 5.000000e-01
  %8934 = call float @dx.op.unary.f32(i32 7, float %8933)  ; Saturate(value)
  %8935 = fsub fast float 1.000000e+00, %8934
  %8936 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8931)  ; FMax(a,b)
  %8937 = fdiv fast float %8935, %8936
  %8938 = fsub fast float %8921, %8499
  %8939 = call float @dx.op.unary.f32(i32 6, float %8938)  ; FAbs(value)
  %8940 = fmul fast float %8939, %8925
  %8941 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8942 = fsub fast float 1.000000e+00, %8940
  %8943 = fmul fast float %8942, %8941
  %8944 = fadd fast float %8943, %8940
  %8945 = fmul fast float %8928, %8921
  %8946 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8947 = fsub fast float 1.000000e+00, %8944
  %8948 = fmul fast float %8947, %8946
  %8949 = fadd fast float %8948, %8944
  %8950 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8951 = fadd fast float %8923, -1.000000e+00
  %8952 = select i1 %8922, float -1.000000e+00, float %8951
  %8953 = fmul fast float %8950, %8952
  %8954 = fadd fast float %8953, 1.000000e+00
  %8955 = fsub fast float -0.000000e+00, %8953
  %8956 = fmul fast float %8915, %8955
  %8957 = fmul fast float %8916, %8955
  %8958 = fmul fast float %8917, %8955
  br label %8959

; <label>:8959                                    ; preds = %8912, %8508
  %8960 = phi float [ %8913, %8912 ], [ 0.000000e+00, %8508 ]
  %8961 = phi float [ %8954, %8912 ], [ 1.000000e+00, %8508 ]
  %8962 = phi float [ %8956, %8912 ], [ 0.000000e+00, %8508 ]
  %8963 = phi float [ %8957, %8912 ], [ 0.000000e+00, %8508 ]
  %8964 = phi float [ %8958, %8912 ], [ 0.000000e+00, %8508 ]
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8967 = fsub fast float 1.000000e+00, %8961
  %8968 = fmul fast float %8967, %8543
  %8969 = fmul fast float %8968, %8966
  %8970 = fsub fast float %8543, %8969
  br i1 %8536, label %8971, label %9000, !dx.controlflow.hints !163

; <label>:8971                                    ; preds = %8959
  %8972 = fmul fast float %8544, %8533
  %8973 = fadd fast float %8972, %8534
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = fmul fast float %8515, %8970
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = fmul fast float %8516, %8970
  %8978 = fsub fast float -0.000000e+00, %8977
  %8979 = call float @dx.op.unary.f32(i32 21, float %8976)  ; Exp(value)
  %8980 = call float @dx.op.unary.f32(i32 21, float %8978)  ; Exp(value)
  %8981 = call float @dx.op.binary.f32(i32 35, float %8523, float %8979)  ; FMax(a,b)
  %8982 = call float @dx.op.binary.f32(i32 35, float %8523, float %8980)  ; FMax(a,b)
  %8983 = fsub fast float %8982, %8981
  %8984 = fmul fast float %8983, %8974
  %8985 = fadd fast float %8984, %8981
  %8986 = call float @dx.op.unary.f32(i32 7, float %8985)  ; Saturate(value)
  %8987 = fsub fast float %8520, %8525
  %8988 = fsub fast float %8521, %8526
  %8989 = fsub fast float %8522, %8527
  %8990 = fmul fast float %8974, %8987
  %8991 = fmul fast float %8974, %8988
  %8992 = fmul fast float %8974, %8989
  %8993 = fadd fast float %8990, %8525
  %8994 = fadd fast float %8991, %8526
  %8995 = fadd fast float %8992, %8527
  %8996 = fsub fast float 1.000000e+00, %8986
  %8997 = fmul fast float %8996, %8993
  %8998 = fmul fast float %8996, %8994
  %8999 = fmul fast float %8996, %8995
  br label %9059

; <label>:9000                                    ; preds = %8959
  %9001 = fmul fast float %8970, %8532
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fsub fast float 2.000000e+00, %9002
  %9004 = fmul fast float %9002, 9.921875e-01
  %9005 = fmul fast float %9004, %9003
  %9006 = fadd fast float %9005, 3.906250e-03
  %9007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %9006, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9008 = extractvalue %dx.types.ResRet.f32 %9007, 0
  %9009 = fsub fast float %9002, %9008
  %9010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9009)  ; FMax(a,b)
  %9011 = fmul fast float %8518, %8499
  %9012 = call float @dx.op.unary.f32(i32 6, float %9011)  ; FAbs(value)
  %9013 = fcmp fast ogt float %9012, 0x3EB0C6F7A0000000
  br i1 %9013, label %9014, label %9020, !dx.controlflow.hints !164

; <label>:9014                                    ; preds = %9000
  %9015 = fmul fast float %9011, 0xBFF7154760000000
  %9016 = call float @dx.op.unary.f32(i32 21, float %9015)  ; Exp(value)
  %9017 = fsub fast float 1.000000e+00, %9016
  %9018 = fdiv fast float %9017, %9011
  %9019 = fmul fast float %9018, %8528
  br label %9020

; <label>:9020                                    ; preds = %9014, %9000
  %9021 = phi float [ %9019, %9014 ], [ %8528, %9000 ]
  %9022 = fadd fast float %9021, %8530
  %9023 = fmul fast float %9022, %9010
  %9024 = fmul fast float %8515, %9023
  %9025 = fsub fast float -0.000000e+00, %9024
  %9026 = fmul fast float %8516, %9023
  %9027 = fsub fast float -0.000000e+00, %9026
  %9028 = fmul fast float %8517, %9023
  %9029 = fsub fast float -0.000000e+00, %9028
  %9030 = call float @dx.op.unary.f32(i32 21, float %9025)  ; Exp(value)
  %9031 = call float @dx.op.unary.f32(i32 21, float %9027)  ; Exp(value)
  %9032 = call float @dx.op.unary.f32(i32 21, float %9029)  ; Exp(value)
  %9033 = fmul fast float %8544, %8544
  %9034 = fadd fast float %9033, 1.000000e+00
  %9035 = fmul fast float %9034, 0x3FAE8EC8A0000000
  %9036 = fmul fast float %9035, %8525
  %9037 = fmul fast float %9035, %8526
  %9038 = fmul fast float %9035, %8527
  %9039 = fmul fast float %8544, %8523
  %9040 = fsub fast float 1.000000e+00, %9039
  %9041 = fmul fast float %8523, %8523
  %9042 = fsub fast float 1.000000e+00, %9041
  %9043 = fmul fast float %9042, 0x3FB45F3060000000
  %9044 = fmul fast float %9040, %9040
  %9045 = fdiv fast float 1.000000e+00, %9044
  %9046 = fmul fast float %9043, %9045
  %9047 = fmul fast float %9046, %8520
  %9048 = fmul fast float %9046, %8521
  %9049 = fmul fast float %9046, %8522
  %9050 = fadd fast float %9047, %9036
  %9051 = fadd fast float %9048, %9037
  %9052 = fadd fast float %9049, %9038
  %9053 = fsub fast float 1.000000e+00, %9030
  %9054 = fsub fast float 1.000000e+00, %9031
  %9055 = fsub fast float 1.000000e+00, %9032
  %9056 = fmul fast float %9050, %9053
  %9057 = fmul fast float %9051, %9054
  %9058 = fmul fast float %9052, %9055
  br label %9059

; <label>:9059                                    ; preds = %9020, %8971
  %9060 = phi float [ %8997, %8971 ], [ %9056, %9020 ]
  %9061 = phi float [ %8998, %8971 ], [ %9057, %9020 ]
  %9062 = phi float [ %8999, %8971 ], [ %9058, %9020 ]
  %9063 = phi float [ %8986, %8971 ], [ %9030, %9020 ]
  %9064 = phi float [ %8986, %8971 ], [ %9031, %9020 ]
  %9065 = phi float [ %8986, %8971 ], [ %9032, %9020 ]
  br i1 %8552, label %9066, label %9264, !dx.controlflow.hints !165

; <label>:9066                                    ; preds = %9059
  %9067 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %9068 = fmul fast float %9067, %8967
  %9069 = fsub fast float %8962, %9060
  %9070 = fsub fast float %8963, %9061
  %9071 = fsub fast float %8964, %9062
  %9072 = fmul fast float %9068, %9069
  %9073 = fmul fast float %9068, %9070
  %9074 = fmul fast float %9068, %9071
  %9075 = fadd fast float %9072, %9060
  %9076 = fadd fast float %9073, %9061
  %9077 = fadd fast float %9074, %9062
  %9078 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9063)  ; FMax(a,b)
  %9079 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9064)  ; FMax(a,b)
  %9080 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9065)  ; FMax(a,b)
  %9081 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8961)  ; FMax(a,b)
  %9082 = call float @dx.op.binary.f32(i32 35, float %8960, float %8970)  ; FMax(a,b)
  %9083 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9082)  ; FMax(a,b)
  %9084 = fdiv fast float %8960, %9083
  %9085 = call float @dx.op.unary.f32(i32 7, float %9084)  ; Saturate(value)
  %9086 = fdiv fast float %8970, %9083
  %9087 = call float @dx.op.unary.f32(i32 7, float %9086)  ; Saturate(value)
  %9088 = fcmp fast une float %9081, 1.000000e+00
  br i1 %9088, label %9089, label %9102, !dx.controlflow.hints !166

; <label>:9089                                    ; preds = %9066
  %9090 = call float @dx.op.unary.f32(i32 23, float %9081)  ; Log(value)
  %9091 = fmul fast float %9090, 0x3FE62E4300000000
  %9092 = fmul fast float %8962, %9091
  %9093 = fsub fast float -0.000000e+00, %9092
  %9094 = fmul fast float %8963, %9091
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fmul fast float %8964, %9091
  %9097 = fsub fast float -0.000000e+00, %9096
  %9098 = fsub fast float 1.000000e+00, %9081
  %9099 = fdiv fast float %9093, %9098
  %9100 = fdiv fast float %9095, %9098
  %9101 = fdiv fast float %9097, %9098
  br label %9102

; <label>:9102                                    ; preds = %9089, %9066
  %9103 = phi float [ %9099, %9089 ], [ %8962, %9066 ]
  %9104 = phi float [ %9100, %9089 ], [ %8963, %9066 ]
  %9105 = phi float [ %9101, %9089 ], [ %8964, %9066 ]
  %9106 = phi float [ %9091, %9089 ], [ 0.000000e+00, %9066 ]
  %9107 = fcmp fast une float %9078, 1.000000e+00
  br i1 %9107, label %9108, label %9115, !dx.controlflow.hints !167

; <label>:9108                                    ; preds = %9102
  %9109 = call float @dx.op.unary.f32(i32 23, float %9078)  ; Log(value)
  %9110 = fmul fast float %9109, 0x3FE62E4300000000
  %9111 = fmul fast float %9075, %9110
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = fsub fast float 1.000000e+00, %9078
  %9114 = fdiv fast float %9112, %9113
  br label %9115

; <label>:9115                                    ; preds = %9108, %9102
  %9116 = phi float [ %9114, %9108 ], [ %9075, %9102 ]
  %9117 = phi float [ %9110, %9108 ], [ 0.000000e+00, %9102 ]
  %9118 = fcmp fast une float %9079, 1.000000e+00
  br i1 %9118, label %9119, label %9126, !dx.controlflow.hints !167

; <label>:9119                                    ; preds = %9115
  %9120 = call float @dx.op.unary.f32(i32 23, float %9079)  ; Log(value)
  %9121 = fmul fast float %9120, 0x3FE62E4300000000
  %9122 = fmul fast float %9076, %9121
  %9123 = fsub fast float -0.000000e+00, %9122
  %9124 = fsub fast float 1.000000e+00, %9079
  %9125 = fdiv fast float %9123, %9124
  br label %9126

; <label>:9126                                    ; preds = %9119, %9115
  %9127 = phi float [ %9125, %9119 ], [ %9076, %9115 ]
  %9128 = phi float [ %9121, %9119 ], [ 0.000000e+00, %9115 ]
  %9129 = fcmp fast une float %9080, 1.000000e+00
  br i1 %9129, label %9130, label %9137, !dx.controlflow.hints !167

; <label>:9130                                    ; preds = %9126
  %9131 = call float @dx.op.unary.f32(i32 23, float %9080)  ; Log(value)
  %9132 = fmul fast float %9131, 0x3FE62E4300000000
  %9133 = fmul fast float %9077, %9132
  %9134 = fsub fast float -0.000000e+00, %9133
  %9135 = fsub fast float 1.000000e+00, %9080
  %9136 = fdiv fast float %9134, %9135
  br label %9137

; <label>:9137                                    ; preds = %9130, %9126
  %9138 = phi float [ %9136, %9130 ], [ %9077, %9126 ]
  %9139 = phi float [ %9132, %9130 ], [ 0.000000e+00, %9126 ]
  %9140 = fmul fast float %9103, %9087
  %9141 = fmul fast float %9104, %9087
  %9142 = fmul fast float %9105, %9087
  %9143 = fmul fast float %9106, %9087
  %9144 = fmul fast float %9116, %9085
  %9145 = fmul fast float %9127, %9085
  %9146 = fmul fast float %9138, %9085
  %9147 = fmul fast float %9117, %9085
  %9148 = fmul fast float %9128, %9085
  %9149 = fmul fast float %9139, %9085
  %9150 = fadd fast float %9144, %9140
  %9151 = fadd fast float %9145, %9141
  %9152 = fadd fast float %9146, %9142
  %9153 = fadd fast float %9147, %9143
  %9154 = fadd fast float %9148, %9143
  %9155 = fadd fast float %9149, %9143
  %9156 = fcmp fast une float %9153, 0.000000e+00
  br i1 %9156, label %9157, label %9164, !dx.controlflow.hints !168

; <label>:9157                                    ; preds = %9137
  %9158 = fmul fast float %9153, 0x3FF7154760000000
  %9159 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9160 = fsub fast float 1.000000e+00, %9159
  %9161 = fmul fast float %9150, %9160
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = fdiv fast float %9162, %9153
  br label %9164

; <label>:9164                                    ; preds = %9157, %9137
  %9165 = phi float [ %9159, %9157 ], [ 1.000000e+00, %9137 ]
  %9166 = phi float [ %9163, %9157 ], [ %9150, %9137 ]
  %9167 = fcmp fast une float %9154, 0.000000e+00
  br i1 %9167, label %9168, label %9175, !dx.controlflow.hints !168

; <label>:9168                                    ; preds = %9164
  %9169 = fmul fast float %9154, 0x3FF7154760000000
  %9170 = call float @dx.op.unary.f32(i32 21, float %9169)  ; Exp(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %9151, %9171
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fdiv fast float %9173, %9154
  br label %9175

; <label>:9175                                    ; preds = %9168, %9164
  %9176 = phi float [ %9170, %9168 ], [ 1.000000e+00, %9164 ]
  %9177 = phi float [ %9174, %9168 ], [ %9151, %9164 ]
  %9178 = fcmp fast une float %9155, 0.000000e+00
  br i1 %9178, label %9179, label %9186, !dx.controlflow.hints !168

; <label>:9179                                    ; preds = %9175
  %9180 = fmul fast float %9155, 0x3FF7154760000000
  %9181 = call float @dx.op.unary.f32(i32 21, float %9180)  ; Exp(value)
  %9182 = fsub fast float 1.000000e+00, %9181
  %9183 = fmul fast float %9152, %9182
  %9184 = fsub fast float -0.000000e+00, %9183
  %9185 = fdiv fast float %9184, %9155
  br label %9186

; <label>:9186                                    ; preds = %9179, %9175
  %9187 = phi float [ %9181, %9179 ], [ 1.000000e+00, %9175 ]
  %9188 = phi float [ %9185, %9179 ], [ %9152, %9175 ]
  %9189 = fcmp fast ogt float %9085, %9087
  br i1 %9189, label %9190, label %9210

; <label>:9190                                    ; preds = %9186
  %9191 = fsub fast float 1.000000e+00, %9087
  %9192 = fmul fast float %9103, %9191
  %9193 = fmul fast float %9104, %9191
  %9194 = fmul fast float %9105, %9191
  %9195 = fmul fast float %9106, %9191
  %9196 = fcmp fast une float %9195, 0.000000e+00
  br i1 %9196, label %9197, label %9248, !dx.controlflow.hints !169

; <label>:9197                                    ; preds = %9190
  %9198 = fmul fast float %9195, 0x3FF7154760000000
  %9199 = call float @dx.op.unary.f32(i32 21, float %9198)  ; Exp(value)
  %9200 = fsub fast float 1.000000e+00, %9199
  %9201 = fmul fast float %9192, %9200
  %9202 = fsub fast float -0.000000e+00, %9201
  %9203 = fmul fast float %9193, %9200
  %9204 = fsub fast float -0.000000e+00, %9203
  %9205 = fmul fast float %9194, %9200
  %9206 = fsub fast float -0.000000e+00, %9205
  %9207 = fdiv fast float %9202, %9195
  %9208 = fdiv fast float %9204, %9195
  %9209 = fdiv fast float %9206, %9195
  br label %9248

; <label>:9210                                    ; preds = %9186
  %9211 = fsub fast float 1.000000e+00, %9085
  %9212 = fmul fast float %9116, %9211
  %9213 = fmul fast float %9127, %9211
  %9214 = fmul fast float %9138, %9211
  %9215 = fmul fast float %9117, %9211
  %9216 = fmul fast float %9128, %9211
  %9217 = fmul fast float %9139, %9211
  %9218 = fcmp fast une float %9215, 0.000000e+00
  br i1 %9218, label %9219, label %9226, !dx.controlflow.hints !168

; <label>:9219                                    ; preds = %9210
  %9220 = fmul fast float %9215, 0x3FF7154760000000
  %9221 = call float @dx.op.unary.f32(i32 21, float %9220)  ; Exp(value)
  %9222 = fsub fast float 1.000000e+00, %9221
  %9223 = fmul fast float %9212, %9222
  %9224 = fsub fast float -0.000000e+00, %9223
  %9225 = fdiv fast float %9224, %9215
  br label %9226

; <label>:9226                                    ; preds = %9219, %9210
  %9227 = phi float [ %9225, %9219 ], [ %9212, %9210 ]
  %9228 = phi float [ %9221, %9219 ], [ 1.000000e+00, %9210 ]
  %9229 = fcmp fast une float %9216, 0.000000e+00
  br i1 %9229, label %9230, label %9237, !dx.controlflow.hints !168

; <label>:9230                                    ; preds = %9226
  %9231 = fmul fast float %9216, 0x3FF7154760000000
  %9232 = call float @dx.op.unary.f32(i32 21, float %9231)  ; Exp(value)
  %9233 = fsub fast float 1.000000e+00, %9232
  %9234 = fmul fast float %9213, %9233
  %9235 = fsub fast float -0.000000e+00, %9234
  %9236 = fdiv fast float %9235, %9216
  br label %9237

; <label>:9237                                    ; preds = %9230, %9226
  %9238 = phi float [ %9236, %9230 ], [ %9213, %9226 ]
  %9239 = phi float [ %9232, %9230 ], [ 1.000000e+00, %9226 ]
  %9240 = fcmp fast une float %9217, 0.000000e+00
  br i1 %9240, label %9241, label %9248, !dx.controlflow.hints !168

; <label>:9241                                    ; preds = %9237
  %9242 = fmul fast float %9217, 0x3FF7154760000000
  %9243 = call float @dx.op.unary.f32(i32 21, float %9242)  ; Exp(value)
  %9244 = fsub fast float 1.000000e+00, %9243
  %9245 = fmul fast float %9214, %9244
  %9246 = fsub fast float -0.000000e+00, %9245
  %9247 = fdiv fast float %9246, %9217
  br label %9248

; <label>:9248                                    ; preds = %9241, %9237, %9197, %9190
  %9249 = phi float [ %9247, %9241 ], [ %9209, %9197 ], [ %9194, %9190 ], [ %9214, %9237 ]
  %9250 = phi float [ %9238, %9241 ], [ %9208, %9197 ], [ %9193, %9190 ], [ %9238, %9237 ]
  %9251 = phi float [ %9227, %9241 ], [ %9207, %9197 ], [ %9192, %9190 ], [ %9227, %9237 ]
  %9252 = phi float [ %9243, %9241 ], [ %9199, %9197 ], [ 1.000000e+00, %9190 ], [ 1.000000e+00, %9237 ]
  %9253 = phi float [ %9239, %9241 ], [ %9199, %9197 ], [ 1.000000e+00, %9190 ], [ %9239, %9237 ]
  %9254 = phi float [ %9228, %9241 ], [ %9199, %9197 ], [ 1.000000e+00, %9190 ], [ %9228, %9237 ]
  %9255 = fmul fast float %9254, %9166
  %9256 = fmul fast float %9253, %9177
  %9257 = fmul fast float %9252, %9188
  %9258 = fadd fast float %9255, %9251
  %9259 = fadd fast float %9256, %9250
  %9260 = fadd fast float %9257, %9249
  %9261 = fmul fast float %9254, %9165
  %9262 = fmul fast float %9253, %9176
  %9263 = fmul fast float %9252, %9187
  br label %9264

; <label>:9264                                    ; preds = %9248, %9059
  %9265 = phi float [ %9263, %9248 ], [ %9065, %9059 ]
  %9266 = phi float [ %9262, %9248 ], [ %9064, %9059 ]
  %9267 = phi float [ %9261, %9248 ], [ %9063, %9059 ]
  %9268 = phi float [ %9260, %9248 ], [ %9062, %9059 ]
  %9269 = phi float [ %9259, %9248 ], [ %9061, %9059 ]
  %9270 = phi float [ %9258, %9248 ], [ %9060, %9059 ]
  %9271 = fmul fast float %9270, %8212
  %9272 = fmul fast float %9269, %8214
  %9273 = fmul fast float %9268, %8216
  %9274 = fmul fast float %9267, %8507
  %9275 = call float @dx.op.dot3.f32(i32 55, float %9267, float %9266, float %9265, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9276 = call float @dx.op.dot3.f32(i32 55, float %9271, float %9272, float %9273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9277 = select i1 %218, float %9275, float %9267
  %9278 = select i1 %218, float %9275, float %9266
  %9279 = select i1 %218, float 1.000000e+00, float %9265
  %9280 = select i1 %218, float %9276, float %9271
  %9281 = select i1 %218, float 0.000000e+00, float %9272
  %9282 = select i1 %218, float 0.000000e+00, float %9273
  %9283 = fmul fast float %9277, %8501
  %9284 = fmul fast float %9278, %8502
  %9285 = fmul fast float %9279, %8503
  %9286 = fadd fast float %9283, %9280
  %9287 = fadd fast float %9284, %9281
  %9288 = fadd fast float %9282, %9285
  %9289 = fmul fast float %9277, %8504
  %9290 = fmul fast float %9278, %8505
  %9291 = fmul fast float %9279, %8506
  %9292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.i32 %9292, 0
  %9294 = icmp eq i32 %9293, 0
  br i1 %9294, label %9662, label %9295, !dx.controlflow.hints !170

; <label>:9295                                    ; preds = %9264
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 2
  %9298 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9299 = fmul fast float %9297, %101
  %9300 = fmul fast float %9298, %102
  %9301 = fmul fast float %9299, 2.000000e+00
  %9302 = fmul fast float %9300, 2.000000e+00
  %9303 = fsub fast float 1.000000e+00, %9301
  %9304 = fsub fast float 1.000000e+00, %9302
  %9305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9306 = extractvalue %dx.types.CBufRet.f32 %9305, 0
  %9307 = extractvalue %dx.types.CBufRet.f32 %9305, 1
  %9308 = extractvalue %dx.types.CBufRet.f32 %9305, 2
  %9309 = fmul fast float %9303, %9306
  %9310 = fmul fast float %9303, %9307
  %9311 = fmul fast float %9303, %9308
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 0
  %9314 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %9315 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %9316 = fmul fast float %9304, %9313
  %9317 = fmul fast float %9304, %9314
  %9318 = fmul fast float %9304, %9315
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9322 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9323 = fadd fast float %9316, %9320
  %9324 = fadd fast float %9323, %9309
  %9325 = fadd fast float %9317, %9321
  %9326 = fadd fast float %9325, %9310
  %9327 = fadd fast float %9318, %9322
  %9328 = fadd fast float %9327, %9311
  %9329 = fmul fast float %9324, %8500
  %9330 = fmul fast float %9326, %8500
  %9331 = fmul fast float %9328, %8500
  %9332 = fmul fast float %9329, %9329
  %9333 = fmul fast float %9330, %9330
  %9334 = fadd fast float %9332, %9333
  %9335 = fmul fast float %9331, %9331
  %9336 = fadd fast float %9334, %9335
  %9337 = call float @dx.op.unary.f32(i32 24, float %9336)  ; Sqrt(value)
  %9338 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %9339 = fsub fast float %9337, %9338
  %9340 = extractvalue %dx.types.CBufRet.f32 %8227, 2
  %9341 = fmul fast float %9339, %9340
  %9342 = call float @dx.op.unary.f32(i32 7, float %9341)  ; Saturate(value)
  %9343 = fadd fast float %9342, -5.000000e-01
  %9344 = fmul fast float %9343, 2.000000e+00
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 2
  %9347 = call float @dx.op.binary.f32(i32 36, float %9346, float %9344)  ; FMin(a,b)
  %9348 = fsub fast float -0.000000e+00, %9346
  %9349 = fcmp fast ogt float %9347, %9348
  br i1 %9349, label %9350, label %9662, !dx.controlflow.hints !171

; <label>:9350                                    ; preds = %9295
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 3
  %9353 = fcmp fast ogt float %9352, 0.000000e+00
  br i1 %9353, label %9354, label %9429, !dx.controlflow.hints !172

; <label>:9354                                    ; preds = %9350
  %9355 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9356 = extractvalue %dx.types.Dimensions %9355, 0
  %9357 = sitofp i32 %9356 to float
  %9358 = extractvalue %dx.types.Dimensions %9355, 1
  %9359 = sitofp i32 %9358 to float
  %9360 = fmul fast float %9299, %9357
  %9361 = fmul fast float %9300, %9359
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9364 = fsub fast float -0.000000e+00, %9363
  %9365 = fptoui float %9364 to i32
  %9366 = fptoui float %9360 to i32
  %9367 = fptoui float %9361 to i32
  %9368 = and i32 %9365, 31
  %9369 = lshr i32 %9366, %9368
  %9370 = lshr i32 %9367, %9368
  %9371 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9365, i32 %9369, i32 %9370, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9372 = extractvalue %dx.types.ResRet.f32 %9371, 0
  %9373 = fcmp fast olt float %9372, -1.000000e+00
  %9374 = fcmp fast ogt float %9372, -1.000000e+00
  %9375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.f32 %9375, 1
  %9377 = select i1 %9374, float %9376, float 1.000000e+00
  %9378 = fadd fast float %9372, 1.000000e+00
  %9379 = fmul fast float %9377, %9378
  %9380 = call float @dx.op.unary.f32(i32 6, float %9379)  ; FAbs(value)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9375, 3
  %9382 = fcmp fast oge float %9380, %9381
  %9383 = select i1 %9382, float 0x4197782600000000, float %9380
  %9384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9385 = extractvalue %dx.types.CBufRet.f32 %9384, 0
  %9386 = extractvalue %dx.types.CBufRet.f32 %9384, 1
  %9387 = extractvalue %dx.types.CBufRet.f32 %9384, 2
  %9388 = select i1 %9373, float %9385, float %9306
  %9389 = select i1 %9373, float %9386, float %9307
  %9390 = select i1 %9373, float %9387, float %9308
  %9391 = fmul fast float %9388, %9303
  %9392 = fmul fast float %9389, %9303
  %9393 = fmul fast float %9390, %9303
  %9394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9394, 0
  %9396 = extractvalue %dx.types.CBufRet.f32 %9394, 1
  %9397 = extractvalue %dx.types.CBufRet.f32 %9394, 2
  %9398 = select i1 %9373, float %9395, float %9313
  %9399 = select i1 %9373, float %9396, float %9314
  %9400 = select i1 %9373, float %9397, float %9315
  %9401 = fmul fast float %9398, %9304
  %9402 = fmul fast float %9399, %9304
  %9403 = fmul fast float %9400, %9304
  %9404 = fadd fast float %9401, %9391
  %9405 = fadd fast float %9402, %9392
  %9406 = fadd fast float %9403, %9393
  %9407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9408 = extractvalue %dx.types.CBufRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.CBufRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.CBufRet.f32 %9407, 2
  %9411 = select i1 %9373, float %9408, float %9320
  %9412 = select i1 %9373, float %9409, float %9321
  %9413 = select i1 %9373, float %9410, float %9322
  %9414 = fadd fast float %9404, %9411
  %9415 = fadd fast float %9405, %9412
  %9416 = fadd fast float %9406, %9413
  %9417 = fmul fast float %9414, %9383
  %9418 = fmul fast float %9415, %9383
  %9419 = fmul fast float %9416, %9383
  %9420 = fmul fast float %9417, %9417
  %9421 = fmul fast float %9418, %9418
  %9422 = fadd fast float %9420, %9421
  %9423 = fmul fast float %9419, %9419
  %9424 = fadd fast float %9422, %9423
  %9425 = call float @dx.op.unary.f32(i32 24, float %9424)  ; Sqrt(value)
  %9426 = fsub fast float %9425, %9338
  %9427 = fmul fast float %9426, %9340
  %9428 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  br label %9429

; <label>:9429                                    ; preds = %9354, %9350
  %9430 = phi float [ %9428, %9354 ], [ 1.000000e+00, %9350 ]
  %9431 = fmul fast float %9347, 5.000000e-01
  %9432 = fadd fast float %9431, 5.000000e-01
  %9433 = call float @dx.op.unary.f32(i32 22, float %9432)  ; Frc(value)
  %9434 = call float @dx.op.unary.f32(i32 27, float %9433)  ; Round_ni(value)
  %9435 = call float @dx.op.unary.f32(i32 22, float %9433)  ; Frc(value)
  %9436 = fmul fast float %9435, 2.000000e+00
  %9437 = fadd fast float %9436, -1.000000e+00
  %9438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9299, float %9300, float %9434, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9439 = extractvalue %dx.types.ResRet.f32 %9438, 0
  %9440 = extractvalue %dx.types.ResRet.f32 %9438, 1
  %9441 = extractvalue %dx.types.ResRet.f32 %9438, 2
  %9442 = extractvalue %dx.types.ResRet.f32 %9438, 3
  %9443 = fadd fast float %9439, -5.000000e-01
  %9444 = fadd fast float %9441, -5.000000e-01
  %9445 = fmul fast float %9443, 0xBFD5555560000000
  %9446 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9444, float %9445)  ; FMad(a,b,c)
  %9447 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9440, float 0.000000e+00)  ; FMad(a,b,c)
  %9448 = fadd fast float %9447, %9442
  %9449 = fmul fast float %9443, -7.500000e-01
  %9450 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9444, float %9449)  ; FMad(a,b,c)
  %9451 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9440, float 0.000000e+00)  ; FMad(a,b,c)
  %9452 = fadd fast float %9451, %9442
  %9453 = call float @dx.op.binary.f32(i32 35, float %9446, float -1.000000e+00)  ; FMax(a,b)
  %9454 = call float @dx.op.binary.f32(i32 35, float %9448, float -1.000000e+00)  ; FMax(a,b)
  %9455 = call float @dx.op.binary.f32(i32 35, float %9450, float -1.000000e+00)  ; FMax(a,b)
  %9456 = call float @dx.op.binary.f32(i32 35, float %9452, float -1.000000e+00)  ; FMax(a,b)
  %9457 = call float @dx.op.binary.f32(i32 36, float %9453, float 1.000000e+00)  ; FMin(a,b)
  %9458 = call float @dx.op.binary.f32(i32 36, float %9454, float 1.000000e+00)  ; FMin(a,b)
  %9459 = call float @dx.op.binary.f32(i32 36, float %9455, float 1.000000e+00)  ; FMin(a,b)
  %9460 = call float @dx.op.binary.f32(i32 36, float %9456, float 1.000000e+00)  ; FMin(a,b)
  %9461 = fcmp fast olt float %9457, 0x3FEFFF8020000000
  br i1 %9461, label %9462, label %9577, !dx.controlflow.hints !173

; <label>:9462                                    ; preds = %9429
  %9463 = extractvalue %dx.types.CBufRet.f32 %9345, 3
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 0
  %9466 = extractvalue %dx.types.CBufRet.f32 %9464, 1
  %9467 = extractvalue %dx.types.CBufRet.f32 %9464, 2
  %9468 = extractvalue %dx.types.CBufRet.f32 %9464, 3
  %9469 = fsub fast float %9465, %9457
  %9470 = fsub fast float %9466, %9458
  %9471 = fsub fast float %9467, %9459
  %9472 = fsub fast float %9468, %9460
  %9473 = fmul fast float %9469, %9463
  %9474 = fmul fast float %9470, %9463
  %9475 = fmul fast float %9471, %9463
  %9476 = fmul fast float %9472, %9463
  %9477 = fadd fast float %9473, %9457
  %9478 = fadd fast float %9474, %9458
  %9479 = fsub fast float -0.000000e+00, %9478
  %9480 = fadd fast float %9475, %9459
  %9481 = fadd fast float %9476, %9460
  %9482 = fmul fast float %9477, %9477
  %9483 = fsub fast float %9478, %9482
  %9484 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9483)  ; FMax(a,b)
  %9485 = fdiv fast float 1.000000e+00, %9484
  %9486 = fmul fast float %9478, %9477
  %9487 = fsub fast float %9480, %9486
  %9488 = fsub fast float %9437, %9477
  %9489 = fmul fast float %9437, %9437
  %9490 = fsub fast float %9489, %9478
  %9491 = fmul fast float %9488, %9485
  %9492 = fmul fast float %9491, %9487
  %9493 = fsub fast float %9490, %9492
  %9494 = fmul fast float %9478, %9478
  %9495 = fsub fast float %9481, %9494
  %9496 = fmul fast float %9487, %9487
  %9497 = fmul fast float %9496, %9485
  %9498 = fsub fast float %9495, %9497
  %9499 = fdiv fast float %9493, %9498
  %9500 = fmul fast float %9487, %9499
  %9501 = fsub fast float %9488, %9500
  %9502 = fmul fast float %9501, %9485
  %9503 = fmul fast float %9502, %9477
  %9504 = fsub fast float 1.000000e+00, %9503
  %9505 = fmul fast float %9478, %9499
  %9506 = fsub fast float %9504, %9505
  %9507 = fmul fast float %9502, %9502
  %9508 = fmul fast float %9499, 4.000000e+00
  %9509 = fmul fast float %9508, %9506
  %9510 = fsub fast float %9507, %9509
  %9511 = call float @dx.op.unary.f32(i32 24, float %9510)  ; Sqrt(value)
  %9512 = fcmp fast oge float %9502, 0.000000e+00
  %9513 = fsub fast float -0.000000e+00, %9511
  %9514 = select i1 %9512, float %9513, float %9511
  %9515 = fsub fast float %9514, %9502
  %9516 = fdiv fast float %9515, %9499
  %9517 = fdiv fast float %9506, %9515
  %9518 = fmul fast float %9516, 5.000000e-01
  %9519 = fmul fast float %9517, 2.000000e+00
  %9520 = select i1 %9512, float %9518, float %9519
  %9521 = select i1 %9512, float %9519, float %9518
  %9522 = call float @dx.op.binary.f32(i32 35, float %9520, float %9521)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 36, float %9520, float %9521)  ; FMin(a,b)
  %9524 = fcmp fast ogt float %9437, %9523
  br i1 %9524, label %9525, label %9535

; <label>:9525                                    ; preds = %9462
  %9526 = fsub fast float %9437, %9523
  %9527 = fsub fast float %9522, %9523
  %9528 = fmul fast float %9526, %9527
  %9529 = fmul fast float %9522, %9437
  %9530 = fadd fast float %9522, %9437
  %9531 = fmul fast float %9530, %9477
  %9532 = fadd fast float %9529, %9478
  %9533 = fsub fast float %9532, %9531
  %9534 = fdiv fast float %9533, %9528
  br label %9535

; <label>:9535                                    ; preds = %9525, %9462
  %9536 = phi float [ %9534, %9525 ], [ 0.000000e+00, %9462 ]
  %9537 = fcmp fast ogt float %9437, %9522
  %9538 = fsub fast float %9437, %9522
  br i1 %9537, label %9539, label %9549

; <label>:9539                                    ; preds = %9535
  %9540 = fsub fast float %9522, %9523
  %9541 = fmul fast float %9540, %9538
  %9542 = fmul fast float %9523, %9437
  %9543 = fadd fast float %9523, %9437
  %9544 = fmul fast float %9543, %9477
  %9545 = fsub fast float %9479, %9542
  %9546 = fadd fast float %9545, %9544
  %9547 = fdiv fast float %9546, %9541
  %9548 = fadd fast float %9547, %9536
  br label %9549

; <label>:9549                                    ; preds = %9539, %9535
  %9550 = phi float [ %9548, %9539 ], [ %9536, %9535 ]
  %9551 = fsub fast float %9437, %9523
  %9552 = fmul fast float %9551, %9538
  %9553 = fmul fast float %9523, %9522
  %9554 = fadd fast float %9523, %9522
  %9555 = fmul fast float %9554, %9477
  %9556 = fadd fast float %9553, %9478
  %9557 = fsub fast float %9556, %9555
  %9558 = fdiv fast float %9557, %9552
  %9559 = call float @dx.op.unary.f32(i32 7, float %9550)  ; Saturate(value)
  %9560 = fcmp fast oeq float %8228, 0.000000e+00
  %9561 = extractvalue %dx.types.CBufRet.f32 %9345, 0
  %9562 = fcmp fast oeq float %9561, 0.000000e+00
  %9563 = or i1 %9560, %9562
  %9564 = fmul fast float %9561, 2.000000e+00
  %9565 = fadd fast float %9346, %9347
  %9566 = fdiv fast float %9565, %9564
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9568 = fmul fast float %9567, 2.000000e+00
  %9569 = fsub fast float 3.000000e+00, %9568
  %9570 = fmul fast float %9567, %9567
  %9571 = fmul fast float %9570, %9569
  %9572 = select i1 %9563, float 1.000000e+00, float %9571
  %9573 = fmul fast float %9558, %8228
  %9574 = fadd fast float %9559, %9573
  %9575 = call float @dx.op.unary.f32(i32 7, float %9574)  ; Saturate(value)
  %9576 = fmul fast float %9572, %9575
  br label %9577

; <label>:9577                                    ; preds = %9549, %9429
  %9578 = phi float [ %9576, %9549 ], [ 0.000000e+00, %9429 ]
  %9579 = fsub fast float 1.000000e+00, %9578
  %9580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9299, float %9300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9581 = extractvalue %dx.types.ResRet.f32 %9580, 0
  %9582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9583 = extractvalue %dx.types.CBufRet.i32 %9582, 2
  %9584 = icmp eq i32 %9583, 0
  br i1 %9584, label %9590, label %9585

; <label>:9585                                    ; preds = %9577
  %9586 = call float @dx.op.unary.f32(i32 7, float %9578)  ; Saturate(value)
  %9587 = fadd fast float %9581, -1.000000e+00
  %9588 = fmul fast float %9586, %9587
  %9589 = fadd fast float %9588, 1.000000e+00
  br label %9590

; <label>:9590                                    ; preds = %9585, %9577
  %9591 = phi float [ %9589, %9585 ], [ %9579, %9577 ]
  br i1 %9353, label %9592, label %9610

; <label>:9592                                    ; preds = %9590
  %9593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9594 = extractvalue %dx.types.CBufRet.f32 %9593, 1
  %9595 = fsub fast float %9430, %9594
  %9596 = call float @dx.op.unary.f32(i32 7, float %9595)  ; Saturate(value)
  %9597 = fsub fast float %9430, %9352
  %9598 = call float @dx.op.unary.f32(i32 7, float %9597)  ; Saturate(value)
  %9599 = fsub fast float %9596, %9598
  %9600 = fsub fast float %9432, %9598
  %9601 = fdiv fast float %9600, %9599
  %9602 = call float @dx.op.unary.f32(i32 7, float %9601)  ; Saturate(value)
  %9603 = fmul fast float %9602, 2.000000e+00
  %9604 = fsub fast float 3.000000e+00, %9603
  %9605 = fsub fast float %9581, %9591
  %9606 = fmul fast float %9602, %9602
  %9607 = fmul fast float %9606, %9605
  %9608 = fmul fast float %9607, %9604
  %9609 = fadd fast float %9608, %9591
  br label %9610

; <label>:9610                                    ; preds = %9592, %9590
  %9611 = phi float [ %9609, %9592 ], [ %9591, %9590 ]
  %9612 = call float @dx.op.binary.f32(i32 35, float %9581, float %9611)  ; FMax(a,b)
  %9613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.i32 %9613, 2
  %9615 = and i32 %9614, 1
  %9616 = icmp eq i32 %9615, 0
  %9617 = fcmp fast une float %9612, 1.000000e+00
  %9618 = and i1 %9617, %9616
  br i1 %9618, label %9619, label %9638

; <label>:9619                                    ; preds = %9610
  %9620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9299, float %9300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9621 = extractvalue %dx.types.ResRet.f32 %9620, 0
  %9622 = extractvalue %dx.types.ResRet.f32 %9620, 1
  %9623 = extractvalue %dx.types.ResRet.f32 %9620, 2
  %9624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9625 = extractvalue %dx.types.CBufRet.f32 %9624, 1
  %9626 = fmul fast float %9625, %9621
  %9627 = fmul fast float %9625, %9622
  %9628 = fmul fast float %9625, %9623
  %9629 = fcmp fast ogt float %9581, 0x3FEFFF2E40000000
  %9630 = fsub fast float 1.000000e+00, %9612
  %9631 = fsub fast float 1.000000e+00, %9581
  %9632 = fdiv fast float %9630, %9631
  %9633 = call float @dx.op.unary.f32(i32 7, float %9632)  ; Saturate(value)
  %9634 = select i1 %9629, float 0.000000e+00, float %9633
  %9635 = fmul fast float %9626, %9634
  %9636 = fmul fast float %9627, %9634
  %9637 = fmul fast float %9628, %9634
  br label %9638

; <label>:9638                                    ; preds = %9619, %9610
  %9639 = phi float [ 0.000000e+00, %9610 ], [ %9635, %9619 ]
  %9640 = phi float [ 0.000000e+00, %9610 ], [ %9636, %9619 ]
  %9641 = phi float [ 0.000000e+00, %9610 ], [ %9637, %9619 ]
  %9642 = fmul fast float %9639, %8212
  %9643 = fmul fast float %9640, %8214
  %9644 = fmul fast float %9641, %8216
  %9645 = fmul fast float %9612, %9274
  %9646 = call float @dx.op.dot3.f32(i32 55, float %9612, float %9612, float %9612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9647 = call float @dx.op.dot3.f32(i32 55, float %9642, float %9643, float %9644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9648 = select i1 %218, float %9646, float %9612
  %9649 = select i1 %218, float 1.000000e+00, float %9612
  %9650 = select i1 %218, float %9647, float %9642
  %9651 = select i1 %218, float 0.000000e+00, float %9643
  %9652 = select i1 %218, float 0.000000e+00, float %9644
  %9653 = fmul fast float %9648, %9286
  %9654 = fmul fast float %9648, %9287
  %9655 = fmul fast float %9649, %9288
  %9656 = fadd fast float %9653, %9650
  %9657 = fadd fast float %9654, %9651
  %9658 = fadd fast float %9652, %9655
  %9659 = fmul fast float %9648, %9289
  %9660 = fmul fast float %9648, %9290
  %9661 = fmul fast float %9649, %9291
  br label %9662

; <label>:9662                                    ; preds = %9638, %9295, %9264, %8496
  %9663 = phi float [ %8501, %8496 ], [ %9286, %9264 ], [ %9656, %9638 ], [ %9286, %9295 ]
  %9664 = phi float [ %8502, %8496 ], [ %9287, %9264 ], [ %9657, %9638 ], [ %9287, %9295 ]
  %9665 = phi float [ %8503, %8496 ], [ %9288, %9264 ], [ %9658, %9638 ], [ %9288, %9295 ]
  %9666 = phi float [ %8504, %8496 ], [ %9289, %9264 ], [ %9659, %9638 ], [ %9289, %9295 ]
  %9667 = phi float [ %8505, %8496 ], [ %9290, %9264 ], [ %9660, %9638 ], [ %9290, %9295 ]
  %9668 = phi float [ %8506, %8496 ], [ %9291, %9264 ], [ %9661, %9638 ], [ %9291, %9295 ]
  %9669 = phi float [ %8507, %8496 ], [ %9274, %9264 ], [ %9645, %9638 ], [ %9274, %9295 ]
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 2
  %9672 = extractvalue %dx.types.CBufRet.f32 %9670, 3
  %9673 = fmul fast float %9671, %101
  %9674 = fmul fast float %9672, %102
  %9675 = call float @dx.op.unary.f32(i32 7, float %9673)  ; Saturate(value)
  %9676 = call float @dx.op.unary.f32(i32 7, float %9674)  ; Saturate(value)
  %9677 = select i1 %8238, i32 2, i32 0
  %9678 = or i32 %9677, 1
  %9679 = uitofp i32 %9678 to float
  %9680 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9675, float %9676, float %9679, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9681 = extractvalue %dx.types.ResRet.f32 %9680, 0
  %9682 = extractvalue %dx.types.ResRet.f32 %9680, 1
  %9683 = extractvalue %dx.types.ResRet.f32 %9680, 2
  %9684 = extractvalue %dx.types.ResRet.f32 %9680, 3
  %9685 = add nuw nsw i32 %9677, 2
  %9686 = uitofp i32 %9685 to float
  %9687 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9675, float %9676, float %9686, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9688 = extractvalue %dx.types.ResRet.f32 %9687, 0
  %9689 = extractvalue %dx.types.ResRet.f32 %9687, 1
  %9690 = extractvalue %dx.types.ResRet.f32 %9687, 2
  %9691 = extractvalue %dx.types.ResRet.f32 %9687, 3
  %9692 = call float @dx.op.binary.f32(i32 35, float %9682, float %9683)  ; FMax(a,b)
  %9693 = call float @dx.op.binary.f32(i32 35, float %9681, float %9692)  ; FMax(a,b)
  %9694 = call float @dx.op.binary.f32(i32 35, float %9693, float %9684)  ; FMax(a,b)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9689, float %9690)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9688, float %9695)  ; FMin(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9696, float %9691)  ; FMin(a,b)
  %9698 = fmul fast float %9694, 2.550000e+02
  %9699 = fadd fast float %9698, 0x3F70101020000000
  %9700 = fptoui float %9699 to i32
  %9701 = fmul fast float %9697, 2.550000e+02
  %9702 = fadd fast float %9701, 0x3F70101020000000
  %9703 = fptoui float %9702 to i32
  %9704 = icmp ult i32 %9700, %9703
  br i1 %9704, label %9705, label %9874

; <label>:9705                                    ; preds = %9662
  %9706 = fcmp fast ogt float %91, 9.843750e-01
  %9707 = fadd fast float %8500, -4.000000e+00
  %9708 = select i1 %9706, float -4.000000e+00, float %9707
  %9709 = call float @dx.op.binary.f32(i32 35, float %9708, float 0.000000e+00)  ; FMax(a,b)
  %9710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9711 = extractvalue %dx.types.CBufRet.f32 %9710, 0
  %9712 = fadd fast float %9711, %9709
  %9713 = extractvalue %dx.types.CBufRet.f32 %9710, 2
  %9714 = fmul fast float %9712, %9713
  %9715 = call float @dx.op.unary.f32(i32 23, float %9714)  ; Log(value)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9710, 3
  %9717 = fmul fast float %9716, %9715
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 2
  %9720 = fmul fast float %9717, %9719
  %9721 = call float @dx.op.unary.f32(i32 7, float %9720)  ; Saturate(value)
  %9722 = uitofp i32 %9700 to float
  %9723 = uitofp i32 %9703 to float
  %9724 = fadd fast float %9722, 5.000000e-01
  %9725 = fadd fast float %9723, 5.000000e-01
  %9726 = fmul fast float %9719, %9724
  %9727 = fmul fast float %9719, %9725
  %9728 = fadd fast float %9726, 0x3F0FFB4800000000
  %9729 = fadd fast float %9727, 0xBF0FFB4800000000
  %9730 = call float @dx.op.binary.f32(i32 35, float %9721, float %9728)  ; FMax(a,b)
  %9731 = call float @dx.op.binary.f32(i32 36, float %9730, float %9729)  ; FMin(a,b)
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 1
  %9734 = extractvalue %dx.types.CBufRet.f32 %9732, 2
  %9735 = extractvalue %dx.types.CBufRet.f32 %9732, 0
  %9736 = select i1 %8238, float %9735, float 0.000000e+00
  %9737 = fmul fast float %9733, %9731
  %9738 = fadd fast float %9736, %9737
  %9739 = fadd fast float %9736, %9734
  %9740 = fsub fast float %9733, %9734
  %9741 = fadd fast float %9740, %9736
  %9742 = call float @dx.op.binary.f32(i32 35, float %9738, float %9739)  ; FMax(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9742, float %9741)  ; FMin(a,b)
  %9744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9675, float %9676, float %9743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9745 = extractvalue %dx.types.ResRet.f32 %9744, 0
  %9746 = extractvalue %dx.types.ResRet.f32 %9744, 1
  %9747 = extractvalue %dx.types.ResRet.f32 %9744, 2
  %9748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9749 = extractvalue %dx.types.CBufRet.i32 %9748, 0
  %9750 = extractvalue %dx.types.CBufRet.i32 %9748, 1
  %9751 = uitofp i32 %9749 to float
  %9752 = uitofp i32 %9750 to float
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = fmul fast float %9751, %9675
  %9757 = fmul fast float %9752, %9676
  %9758 = fadd fast float %9756, -5.000000e-01
  %9759 = fadd fast float %9757, -5.000000e-01
  %9760 = call float @dx.op.unary.f32(i32 22, float %9758)  ; Frc(value)
  %9761 = call float @dx.op.unary.f32(i32 22, float %9759)  ; Frc(value)
  %9762 = fmul fast float %9760, %9760
  %9763 = fmul fast float %9762, %9760
  %9764 = fsub fast float 3.000000e+00, %9760
  %9765 = fmul fast float %9762, %9764
  %9766 = fmul fast float %9760, 3.000000e+00
  %9767 = fmul fast float %9763, 3.000000e+00
  %9768 = fmul fast float %9762, 6.000000e+00
  %9769 = fsub fast float %9767, %9768
  %9770 = fadd fast float %9769, 4.000000e+00
  %9771 = fmul fast float %9770, 0x3FC5555560000000
  %9772 = fmul fast float %9763, -3.000000e+00
  %9773 = fadd fast float %9762, %9760
  %9774 = fmul fast float %9773, 3.000000e+00
  %9775 = fadd fast float %9772, 1.000000e+00
  %9776 = fadd fast float %9775, %9774
  %9777 = fmul fast float %9763, 0x3FC5555560000000
  %9778 = fmul fast float %9761, %9761
  %9779 = fmul fast float %9778, %9761
  %9780 = fsub fast float 3.000000e+00, %9761
  %9781 = fmul fast float %9778, %9780
  %9782 = fmul fast float %9761, 3.000000e+00
  %9783 = fmul fast float %9779, 3.000000e+00
  %9784 = fmul fast float %9778, 6.000000e+00
  %9785 = fsub fast float %9783, %9784
  %9786 = fadd fast float %9785, 4.000000e+00
  %9787 = fmul fast float %9786, 0x3FC5555560000000
  %9788 = fmul fast float %9779, -3.000000e+00
  %9789 = fadd fast float %9778, %9761
  %9790 = fmul fast float %9789, 3.000000e+00
  %9791 = fadd fast float %9788, 1.000000e+00
  %9792 = fadd fast float %9791, %9790
  %9793 = fmul fast float %9779, 0x3FC5555560000000
  %9794 = fadd fast float %9760, 1.000000e+00
  %9795 = fsub fast float 1.000000e+00, %9766
  %9796 = fadd fast float %9795, %9765
  %9797 = fadd fast float %9796, %9770
  %9798 = fmul fast float %9797, 0x3FC5555560000000
  %9799 = fdiv fast float %9771, %9798
  %9800 = fsub fast float %9794, %9799
  %9801 = fsub fast float 1.000000e+00, %9760
  %9802 = fadd fast float %9776, %9763
  %9803 = fmul fast float %9802, 0x3FC5555560000000
  %9804 = fdiv fast float %9777, %9803
  %9805 = fadd fast float %9801, %9804
  %9806 = fadd fast float %9761, 1.000000e+00
  %9807 = fsub fast float 1.000000e+00, %9782
  %9808 = fadd fast float %9807, %9781
  %9809 = fadd fast float %9808, %9786
  %9810 = fmul fast float %9809, 0x3FC5555560000000
  %9811 = fdiv fast float %9787, %9810
  %9812 = fsub fast float %9806, %9811
  %9813 = fsub fast float 1.000000e+00, %9761
  %9814 = fadd fast float %9792, %9779
  %9815 = fmul fast float %9814, 0x3FC5555560000000
  %9816 = fdiv fast float %9793, %9815
  %9817 = fadd fast float %9816, %9813
  %9818 = fmul fast float %9800, %9754
  %9819 = fsub fast float %9675, %9818
  %9820 = fmul fast float %9805, %9754
  %9821 = fadd fast float %9820, %9675
  %9822 = fmul fast float %9817, %9755
  %9823 = fadd fast float %9822, %9676
  %9824 = fmul fast float %9812, %9755
  %9825 = fsub fast float %9676, %9824
  %9826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9819, float %9825, float %9743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9827 = extractvalue %dx.types.ResRet.f32 %9826, 0
  %9828 = extractvalue %dx.types.ResRet.f32 %9826, 1
  %9829 = extractvalue %dx.types.ResRet.f32 %9826, 2
  %9830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9821, float %9825, float %9743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9831 = extractvalue %dx.types.ResRet.f32 %9830, 0
  %9832 = extractvalue %dx.types.ResRet.f32 %9830, 1
  %9833 = extractvalue %dx.types.ResRet.f32 %9830, 2
  %9834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9819, float %9823, float %9743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9835 = extractvalue %dx.types.ResRet.f32 %9834, 0
  %9836 = extractvalue %dx.types.ResRet.f32 %9834, 1
  %9837 = extractvalue %dx.types.ResRet.f32 %9834, 2
  %9838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9821, float %9823, float %9743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9839 = extractvalue %dx.types.ResRet.f32 %9838, 0
  %9840 = extractvalue %dx.types.ResRet.f32 %9838, 1
  %9841 = extractvalue %dx.types.ResRet.f32 %9838, 2
  %9842 = fsub fast float %9835, %9827
  %9843 = fsub fast float %9836, %9828
  %9844 = fsub fast float %9837, %9829
  %9845 = fmul fast float %9842, %9815
  %9846 = fmul fast float %9843, %9815
  %9847 = fmul fast float %9844, %9815
  %9848 = fadd fast float %9845, %9827
  %9849 = fadd fast float %9846, %9828
  %9850 = fadd fast float %9847, %9829
  %9851 = fsub fast float %9839, %9831
  %9852 = fsub fast float %9840, %9832
  %9853 = fsub fast float %9841, %9833
  %9854 = fmul fast float %9851, %9815
  %9855 = fmul fast float %9852, %9815
  %9856 = fmul fast float %9853, %9815
  %9857 = fsub fast float %9831, %9848
  %9858 = fadd fast float %9857, %9854
  %9859 = fsub fast float %9832, %9849
  %9860 = fadd fast float %9859, %9855
  %9861 = fsub fast float %9833, %9850
  %9862 = fadd fast float %9861, %9856
  %9863 = fmul fast float %9858, %9803
  %9864 = fmul fast float %9860, %9803
  %9865 = fmul fast float %9862, %9803
  %9866 = fadd fast float %9863, %9848
  %9867 = fadd fast float %9864, %9849
  %9868 = fadd fast float %9865, %9850
  %9869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9870 = extractvalue %dx.types.CBufRet.f32 %9869, 1
  %9871 = fmul fast float %9866, %9870
  %9872 = fmul fast float %9867, %9870
  %9873 = fmul fast float %9868, %9870
  br label %9874

; <label>:9874                                    ; preds = %9705, %9662
  %9875 = phi float [ %9745, %9705 ], [ 1.000000e+00, %9662 ]
  %9876 = phi float [ %9746, %9705 ], [ 1.000000e+00, %9662 ]
  %9877 = phi float [ %9747, %9705 ], [ 1.000000e+00, %9662 ]
  %9878 = phi float [ %9871, %9705 ], [ 0.000000e+00, %9662 ]
  %9879 = phi float [ %9872, %9705 ], [ 0.000000e+00, %9662 ]
  %9880 = phi float [ %9873, %9705 ], [ 0.000000e+00, %9662 ]
  %9881 = fmul fast float %9878, %8212
  %9882 = fmul fast float %9879, %8214
  %9883 = fmul fast float %9880, %8216
  %9884 = fmul fast float %9875, %9669
  %9885 = call float @dx.op.dot3.f32(i32 55, float %9875, float %9876, float %9877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9886 = call float @dx.op.dot3.f32(i32 55, float %9881, float %9882, float %9883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9887 = select i1 %218, float %9885, float %9875
  %9888 = select i1 %218, float %9885, float %9876
  %9889 = select i1 %218, float 1.000000e+00, float %9877
  %9890 = select i1 %218, float %9886, float %9881
  %9891 = select i1 %218, float 0.000000e+00, float %9882
  %9892 = select i1 %218, float 0.000000e+00, float %9883
  %9893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9894 = extractvalue %dx.types.CBufRet.i32 %9893, 3
  %9895 = and i32 %9894, 3
  %9896 = icmp ne i32 %9895, 0
  %9897 = and i32 %9894, 4
  %9898 = icmp ne i32 %9897, 0
  %9899 = and i1 %9896, %9898
  %9900 = and i1 %218, %9899
  br i1 %9900, label %9901, label %9907

; <label>:9901                                    ; preds = %9874
  %9902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.f32 %9902, 1
  %9904 = fadd fast float %9884, -1.000000e+00
  %9905 = fmul fast float %9903, %9904
  %9906 = fadd fast float %9905, 1.000000e+00
  br label %9907

; <label>:9907                                    ; preds = %9901, %9874
  %9908 = phi float [ %9906, %9901 ], [ %9884, %9874 ]
  %9909 = fadd fast float %9666, %9663
  %9910 = fmul fast float %9887, %9909
  %9911 = fadd fast float %9910, %9890
  %9912 = fadd fast float %9667, %9664
  %9913 = fmul fast float %9888, %9912
  %9914 = fadd fast float %9913, %9891
  %9915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9916 = extractvalue %dx.types.CBufRet.f32 %9915, 0
  br i1 %218, label %9917, label %9933

; <label>:9917                                    ; preds = %9907
  %9918 = fadd fast float %9911, %9914
  %9919 = fmul fast float %9916, %9918
  %9920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9921 = extractvalue %dx.types.CBufRet.f32 %9920, 3
  %9922 = extractvalue %dx.types.CBufRet.f32 %8220, 1
  %9923 = fsub fast float %8225, %8219
  %9924 = fadd fast float %9923, %8226
  %9925 = fsub fast float %9924, %9922
  %9926 = extractvalue %dx.types.CBufRet.f32 %8220, 2
  %9927 = fmul fast float %9925, %9926
  %9928 = call float @dx.op.unary.f32(i32 7, float %9927)  ; Saturate(value)
  %9929 = fsub fast float %9928, %9921
  %9930 = fmul fast float %9929, %9908
  %9931 = fadd fast float %9930, %9921
  %9932 = fmul fast float %9931, %5090
  br label %9959

; <label>:9933                                    ; preds = %9907
  %9934 = fadd fast float %9668, %9665
  %9935 = fmul fast float %9889, %9934
  %9936 = fadd fast float %9935, %9892
  %9937 = fmul fast float %9916, %9911
  %9938 = fmul fast float %9916, %9914
  %9939 = fmul fast float %9916, %9936
  %9940 = call float @dx.op.binary.f32(i32 35, float %9938, float %9939)  ; FMax(a,b)
  %9941 = call float @dx.op.binary.f32(i32 35, float %9937, float %9940)  ; FMax(a,b)
  %9942 = call float @dx.op.binary.f32(i32 35, float %8214, float %8216)  ; FMax(a,b)
  %9943 = call float @dx.op.binary.f32(i32 35, float %8212, float %9942)  ; FMax(a,b)
  %9944 = call float @dx.op.binary.f32(i32 35, float %9941, float %9943)  ; FMax(a,b)
  %9945 = fcmp fast ugt float %9944, 0x3F10000000000000
  br i1 %9945, label %9947, label %9946

; <label>:9946                                    ; preds = %9933
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9947

; <label>:9947                                    ; preds = %9946, %9933
  %9948 = add i32 %54, 356
  %9949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9948, i32 undef)  ; BufferLoad(srv,index,wot)
  %9950 = extractvalue %dx.types.ResRet.i32 %9949, 0
  %9951 = and i32 %9950, 32
  %9952 = icmp eq i32 %9951, 0
  br i1 %9952, label %9959, label %9953

; <label>:9953                                    ; preds = %9947
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 0
  %9956 = fmul fast float %9955, 0x3FE99999A0000000
  %9957 = fadd fast float %9955, %9937
  %9958 = fadd fast float %9956, %9939
  br label %9959

; <label>:9959                                    ; preds = %9953, %9947, %9917
  %9960 = phi float [ %5090, %9917 ], [ %8214, %9953 ], [ %8214, %9947 ]
  %9961 = phi float [ %5090, %9917 ], [ %8216, %9953 ], [ %8216, %9947 ]
  %9962 = phi float [ %9919, %9917 ], [ %9957, %9953 ], [ %9937, %9947 ]
  %9963 = phi float [ %9932, %9917 ], [ %9938, %9953 ], [ %9938, %9947 ]
  %9964 = phi float [ %5090, %9917 ], [ %9958, %9953 ], [ %9939, %9947 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9965 = call float @dx.op.binary.f32(i32 36, float %9962, float 3.225500e+04)  ; FMin(a,b)
  %9966 = call float @dx.op.binary.f32(i32 36, float %9963, float 3.225500e+04)  ; FMin(a,b)
  %9967 = call float @dx.op.binary.f32(i32 36, float %9964, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9968 = call float @dx.op.binary.f32(i32 36, float %8212, float 3.225500e+04)  ; FMin(a,b)
  %9969 = call float @dx.op.binary.f32(i32 36, float %9960, float 3.225500e+04)  ; FMin(a,b)
  %9970 = call float @dx.op.binary.f32(i32 36, float %9961, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9968)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[50 x i32] [i32 48, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 7, i32 119, i32 0, i32 119, i32 119]}
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
!86 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 8}
!88 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 11, i8 0, !89}
!89 = !{i32 3, i32 13}
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

