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
; shader hash: 00752b6317e13a41d1df59fdbd190277
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
  %412 = add i32 %54, 520
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
  %688 = add i32 %54, 456
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
  %740 = add i32 %54, 440
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
  %764 = add i32 %54, 392
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
  %787 = add i32 %54, 472
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
  %985 = add i32 %54, 408
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
  %1069 = add i32 %54, 424
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
  %1127 = add i32 %54, 488
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
  %1168 = add i32 %54, 504
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
  %1232 = phi float [ 0.000000e+00, %454 ], [ %974, %1211 ]
  %1233 = phi float [ 0.000000e+00, %454 ], [ %975, %1211 ]
  %1234 = phi float [ 0.000000e+00, %454 ], [ %976, %1211 ]
  %1235 = phi float [ 0.000000e+00, %454 ], [ %1212, %1211 ]
  %1236 = phi float [ 0.000000e+00, %454 ], [ %1213, %1211 ]
  %1237 = phi float [ 0.000000e+00, %454 ], [ %1214, %1211 ]
  %1238 = phi float [ 0.000000e+00, %454 ], [ %1102, %1211 ]
  %1239 = phi float [ 0.000000e+00, %454 ], [ %1103, %1211 ]
  %1240 = phi float [ 0.000000e+00, %454 ], [ %1104, %1211 ]
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
  %1479 = add i32 %54, 460
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
  %1531 = add i32 %54, 444
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
  %1557 = add i32 %54, 396
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
  %1580 = add i32 %54, 476
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
  %1778 = add i32 %54, 412
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
  %1862 = add i32 %54, 428
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
  %1920 = add i32 %54, 492
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
  %1961 = add i32 %54, 508
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
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2050, %1234
  %2054 = fmul fast float %2048, %1238
  %2055 = fmul fast float %2049, %1239
  %2056 = fmul fast float %2050, %1240
  br label %2057

; <label>:2057                                    ; preds = %2022, %2004
  %2058 = phi float [ %2051, %2022 ], [ %1232, %2004 ]
  %2059 = phi float [ %2052, %2022 ], [ %1233, %2004 ]
  %2060 = phi float [ %2053, %2022 ], [ %1234, %2004 ]
  %2061 = phi float [ %2054, %2022 ], [ %1238, %2004 ]
  %2062 = phi float [ %2055, %2022 ], [ %1239, %2004 ]
  %2063 = phi float [ %2056, %2022 ], [ %1240, %2004 ]
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
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fsub fast float %1769, %2060
  %2080 = fmul fast float %2071, %2077
  %2081 = fmul fast float %2071, %2078
  %2082 = fmul fast float %2071, %2079
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fadd fast float %2082, %2060
  %2086 = fsub fast float %1753, %1244
  %2087 = fmul fast float %2071, %2086
  %2088 = fadd fast float %2087, %1244
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fsub fast float %1897, %2063
  %2092 = fmul fast float %2076, %2089
  %2093 = fmul fast float %2076, %2090
  %2094 = fmul fast float %2076, %2091
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fadd fast float %2094, %2063
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
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  %2115 = fmul fast float %2112, %2060
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
  %2133 = fmul fast float %2132, %2058
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2058
  %2136 = fmul fast float %2129, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2059
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2059
  %2141 = fmul fast float %2130, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2060
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2060
  br label %2146

; <label>:2146                                    ; preds = %2118, %2116, %2103, %2073, %2057
  %2147 = phi float [ %2058, %2057 ], [ %2135, %2118 ], [ %2058, %2116 ], [ %2113, %2103 ], [ %2083, %2073 ]
  %2148 = phi float [ %2059, %2057 ], [ %2140, %2118 ], [ %2059, %2116 ], [ %2114, %2103 ], [ %2084, %2073 ]
  %2149 = phi float [ %2060, %2057 ], [ %2145, %2118 ], [ %2060, %2116 ], [ %2115, %2103 ], [ %2085, %2073 ]
  %2150 = phi float [ %2061, %2057 ], [ %2061, %2118 ], [ %2061, %2116 ], [ %2061, %2103 ], [ %2095, %2073 ]
  %2151 = phi float [ %2062, %2057 ], [ %2062, %2118 ], [ %2062, %2116 ], [ %2062, %2103 ], [ %2096, %2073 ]
  %2152 = phi float [ %2063, %2057 ], [ %2063, %2118 ], [ %2063, %2116 ], [ %2063, %2103 ], [ %2097, %2073 ]
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
  %2202 = fsub fast float %2005, %1235
  %2203 = fsub fast float %2006, %1236
  %2204 = fsub fast float %2007, %1237
  %2205 = fmul fast float %2175, %2202
  %2206 = fmul fast float %2175, %2203
  %2207 = fmul fast float %2175, %2204
  %2208 = fadd fast float %2205, %1235
  %2209 = fadd fast float %2206, %1236
  %2210 = fadd fast float %2207, %1237
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
  %2256 = fadd fast float %2253, %1235
  %2257 = fadd fast float %2254, %1236
  %2258 = fadd fast float %2255, %1237
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
  %2284 = fadd fast float %2281, %1235
  %2285 = fadd fast float %2282, %1236
  %2286 = fadd fast float %2283, %1237
  br label %2287

; <label>:2287                                    ; preds = %2261, %2259, %2213, %2177, %2146, %1546, %1250, %1229
  %2288 = phi float [ %1230, %2146 ], [ %1230, %1546 ], [ %1230, %1229 ], [ %2264, %2261 ], [ %1230, %2259 ], [ %2216, %2213 ], [ %2182, %2177 ], [ %1230, %1250 ]
  %2289 = phi float [ %1231, %2146 ], [ %1231, %1546 ], [ %1231, %1229 ], [ %2265, %2261 ], [ %1231, %2259 ], [ %2217, %2213 ], [ %2183, %2177 ], [ %1231, %1250 ]
  %2290 = phi float [ %2147, %2146 ], [ %1232, %1546 ], [ %1232, %1229 ], [ %2147, %2261 ], [ %2147, %2259 ], [ %2147, %2213 ], [ %2147, %2177 ], [ %1232, %1250 ]
  %2291 = phi float [ %2148, %2146 ], [ %1233, %1546 ], [ %1233, %1229 ], [ %2148, %2261 ], [ %2148, %2259 ], [ %2148, %2213 ], [ %2148, %2177 ], [ %1233, %1250 ]
  %2292 = phi float [ %2149, %2146 ], [ %1234, %1546 ], [ %1234, %1229 ], [ %2149, %2261 ], [ %2149, %2259 ], [ %2149, %2213 ], [ %2149, %2177 ], [ %1234, %1250 ]
  %2293 = phi float [ %1235, %2146 ], [ %1235, %1546 ], [ %1235, %1229 ], [ %2284, %2261 ], [ %1235, %2259 ], [ %2256, %2213 ], [ %2208, %2177 ], [ %1235, %1250 ]
  %2294 = phi float [ %1236, %2146 ], [ %1236, %1546 ], [ %1236, %1229 ], [ %2285, %2261 ], [ %1236, %2259 ], [ %2257, %2213 ], [ %2209, %2177 ], [ %1236, %1250 ]
  %2295 = phi float [ %1237, %2146 ], [ %1237, %1546 ], [ %1237, %1229 ], [ %2286, %2261 ], [ %1237, %2259 ], [ %2258, %2213 ], [ %2210, %2177 ], [ %1237, %1250 ]
  %2296 = phi float [ %2150, %2146 ], [ %1238, %1546 ], [ %1238, %1229 ], [ %2150, %2261 ], [ %2150, %2259 ], [ %2150, %2213 ], [ %2150, %2177 ], [ %1238, %1250 ]
  %2297 = phi float [ %2151, %2146 ], [ %1239, %1546 ], [ %1239, %1229 ], [ %2151, %2261 ], [ %2151, %2259 ], [ %2151, %2213 ], [ %2151, %2177 ], [ %1239, %1250 ]
  %2298 = phi float [ %2152, %2146 ], [ %1240, %1546 ], [ %1240, %1229 ], [ %2152, %2261 ], [ %2152, %2259 ], [ %2152, %2213 ], [ %2152, %2177 ], [ %1240, %1250 ]
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
  %2536 = add i32 %54, 464
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
  %2588 = add i32 %54, 448
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
  %2614 = add i32 %54, 400
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
  %2637 = add i32 %54, 480
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
  %2835 = add i32 %54, 416
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
  %2919 = add i32 %54, 432
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
  %2977 = add i32 %54, 496
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
  %3018 = add i32 %54, 512
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
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3107, %2292
  %3111 = fmul fast float %3105, %2296
  %3112 = fmul fast float %3106, %2297
  %3113 = fmul fast float %3107, %2298
  br label %3114

; <label>:3114                                    ; preds = %3079, %3061
  %3115 = phi float [ %3108, %3079 ], [ %2290, %3061 ]
  %3116 = phi float [ %3109, %3079 ], [ %2291, %3061 ]
  %3117 = phi float [ %3110, %3079 ], [ %2292, %3061 ]
  %3118 = phi float [ %3111, %3079 ], [ %2296, %3061 ]
  %3119 = phi float [ %3112, %3079 ], [ %2297, %3061 ]
  %3120 = phi float [ %3113, %3079 ], [ %2298, %3061 ]
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
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fsub fast float %2826, %3117
  %3137 = fmul fast float %3128, %3134
  %3138 = fmul fast float %3128, %3135
  %3139 = fmul fast float %3128, %3136
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fadd fast float %3139, %3117
  %3143 = fsub fast float %2810, %2302
  %3144 = fmul fast float %3128, %3143
  %3145 = fadd fast float %3144, %2302
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fsub fast float %2954, %3120
  %3149 = fmul fast float %3133, %3146
  %3150 = fmul fast float %3133, %3147
  %3151 = fmul fast float %3133, %3148
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fadd fast float %3151, %3120
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
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  %3172 = fmul fast float %3169, %3117
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
  %3190 = fmul fast float %3189, %3115
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3115
  %3193 = fmul fast float %3186, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3116
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3116
  %3198 = fmul fast float %3187, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3117
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3117
  br label %3203

; <label>:3203                                    ; preds = %3175, %3173, %3160, %3130, %3114
  %3204 = phi float [ %3115, %3114 ], [ %3192, %3175 ], [ %3115, %3173 ], [ %3170, %3160 ], [ %3140, %3130 ]
  %3205 = phi float [ %3116, %3114 ], [ %3197, %3175 ], [ %3116, %3173 ], [ %3171, %3160 ], [ %3141, %3130 ]
  %3206 = phi float [ %3117, %3114 ], [ %3202, %3175 ], [ %3117, %3173 ], [ %3172, %3160 ], [ %3142, %3130 ]
  %3207 = phi float [ %3118, %3114 ], [ %3118, %3175 ], [ %3118, %3173 ], [ %3118, %3160 ], [ %3152, %3130 ]
  %3208 = phi float [ %3119, %3114 ], [ %3119, %3175 ], [ %3119, %3173 ], [ %3119, %3160 ], [ %3153, %3130 ]
  %3209 = phi float [ %3120, %3114 ], [ %3120, %3175 ], [ %3120, %3173 ], [ %3120, %3160 ], [ %3154, %3130 ]
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
  %3259 = fsub fast float %3062, %2293
  %3260 = fsub fast float %3063, %2294
  %3261 = fsub fast float %3064, %2295
  %3262 = fmul fast float %3232, %3259
  %3263 = fmul fast float %3232, %3260
  %3264 = fmul fast float %3232, %3261
  %3265 = fadd fast float %3262, %2293
  %3266 = fadd fast float %3263, %2294
  %3267 = fadd fast float %3264, %2295
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
  %3313 = fadd fast float %3310, %2293
  %3314 = fadd fast float %3311, %2294
  %3315 = fadd fast float %3312, %2295
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
  %3341 = fadd fast float %3338, %2293
  %3342 = fadd fast float %3339, %2294
  %3343 = fadd fast float %3340, %2295
  br label %3344

; <label>:3344                                    ; preds = %3318, %3316, %3270, %3234, %3203, %2603, %2307, %2287
  %3345 = phi float [ %2288, %3203 ], [ %2288, %2603 ], [ %2288, %2287 ], [ %3321, %3318 ], [ %2288, %3316 ], [ %3273, %3270 ], [ %3239, %3234 ], [ %2288, %2307 ]
  %3346 = phi float [ %2289, %3203 ], [ %2289, %2603 ], [ %2289, %2287 ], [ %3322, %3318 ], [ %2289, %3316 ], [ %3274, %3270 ], [ %3240, %3234 ], [ %2289, %2307 ]
  %3347 = phi float [ %3204, %3203 ], [ %2290, %2603 ], [ %2290, %2287 ], [ %3204, %3318 ], [ %3204, %3316 ], [ %3204, %3270 ], [ %3204, %3234 ], [ %2290, %2307 ]
  %3348 = phi float [ %3205, %3203 ], [ %2291, %2603 ], [ %2291, %2287 ], [ %3205, %3318 ], [ %3205, %3316 ], [ %3205, %3270 ], [ %3205, %3234 ], [ %2291, %2307 ]
  %3349 = phi float [ %3206, %3203 ], [ %2292, %2603 ], [ %2292, %2287 ], [ %3206, %3318 ], [ %3206, %3316 ], [ %3206, %3270 ], [ %3206, %3234 ], [ %2292, %2307 ]
  %3350 = phi float [ %2293, %3203 ], [ %2293, %2603 ], [ %2293, %2287 ], [ %3341, %3318 ], [ %2293, %3316 ], [ %3313, %3270 ], [ %3265, %3234 ], [ %2293, %2307 ]
  %3351 = phi float [ %2294, %3203 ], [ %2294, %2603 ], [ %2294, %2287 ], [ %3342, %3318 ], [ %2294, %3316 ], [ %3314, %3270 ], [ %3266, %3234 ], [ %2294, %2307 ]
  %3352 = phi float [ %2295, %3203 ], [ %2295, %2603 ], [ %2295, %2287 ], [ %3343, %3318 ], [ %2295, %3316 ], [ %3315, %3270 ], [ %3267, %3234 ], [ %2295, %2307 ]
  %3353 = phi float [ %3207, %3203 ], [ %2296, %2603 ], [ %2296, %2287 ], [ %3207, %3318 ], [ %3207, %3316 ], [ %3207, %3270 ], [ %3207, %3234 ], [ %2296, %2307 ]
  %3354 = phi float [ %3208, %3203 ], [ %2297, %2603 ], [ %2297, %2287 ], [ %3208, %3318 ], [ %3208, %3316 ], [ %3208, %3270 ], [ %3208, %3234 ], [ %2297, %2307 ]
  %3355 = phi float [ %3209, %3203 ], [ %2298, %2603 ], [ %2298, %2287 ], [ %3209, %3318 ], [ %3209, %3316 ], [ %3209, %3270 ], [ %3209, %3234 ], [ %2298, %2307 ]
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
  %3593 = add i32 %54, 468
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
  %3645 = add i32 %54, 452
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
  %3671 = add i32 %54, 404
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
  %3694 = add i32 %54, 484
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
  %3892 = add i32 %54, 420
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
  %3976 = add i32 %54, 436
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
  %4034 = add i32 %54, 500
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
  %4075 = add i32 %54, 516
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
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4164, %3349
  %4168 = fmul fast float %4162, %3353
  %4169 = fmul fast float %4163, %3354
  %4170 = fmul fast float %4164, %3355
  br label %4171

; <label>:4171                                    ; preds = %4136, %4118
  %4172 = phi float [ %4165, %4136 ], [ %3347, %4118 ]
  %4173 = phi float [ %4166, %4136 ], [ %3348, %4118 ]
  %4174 = phi float [ %4167, %4136 ], [ %3349, %4118 ]
  %4175 = phi float [ %4168, %4136 ], [ %3353, %4118 ]
  %4176 = phi float [ %4169, %4136 ], [ %3354, %4118 ]
  %4177 = phi float [ %4170, %4136 ], [ %3355, %4118 ]
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
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fsub fast float %3883, %4174
  %4194 = fmul fast float %4185, %4191
  %4195 = fmul fast float %4185, %4192
  %4196 = fmul fast float %4185, %4193
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fadd fast float %4196, %4174
  %4200 = fsub fast float %3867, %3359
  %4201 = fmul fast float %4185, %4200
  %4202 = fadd fast float %4201, %3359
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fsub fast float %4011, %4177
  %4206 = fmul fast float %4190, %4203
  %4207 = fmul fast float %4190, %4204
  %4208 = fmul fast float %4190, %4205
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fadd fast float %4208, %4177
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
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  %4229 = fmul fast float %4226, %4174
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
  %4247 = fmul fast float %4246, %4172
  %4248 = fadd fast float %4247, %4245
  %4249 = fmul fast float %4248, %4172
  %4250 = fmul fast float %4243, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4173
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4173
  %4255 = fmul fast float %4244, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4174
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4174
  br label %4260

; <label>:4260                                    ; preds = %4232, %4230, %4217, %4187, %4171
  %4261 = phi float [ %4172, %4171 ], [ %4249, %4232 ], [ %4172, %4230 ], [ %4227, %4217 ], [ %4197, %4187 ]
  %4262 = phi float [ %4173, %4171 ], [ %4254, %4232 ], [ %4173, %4230 ], [ %4228, %4217 ], [ %4198, %4187 ]
  %4263 = phi float [ %4174, %4171 ], [ %4259, %4232 ], [ %4174, %4230 ], [ %4229, %4217 ], [ %4199, %4187 ]
  %4264 = phi float [ %4175, %4171 ], [ %4175, %4232 ], [ %4175, %4230 ], [ %4175, %4217 ], [ %4209, %4187 ]
  %4265 = phi float [ %4176, %4171 ], [ %4176, %4232 ], [ %4176, %4230 ], [ %4176, %4217 ], [ %4210, %4187 ]
  %4266 = phi float [ %4177, %4171 ], [ %4177, %4232 ], [ %4177, %4230 ], [ %4177, %4217 ], [ %4211, %4187 ]
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
  %4316 = fsub fast float %4119, %3350
  %4317 = fsub fast float %4120, %3351
  %4318 = fsub fast float %4121, %3352
  %4319 = fmul fast float %4289, %4316
  %4320 = fmul fast float %4289, %4317
  %4321 = fmul fast float %4289, %4318
  %4322 = fadd fast float %4319, %3350
  %4323 = fadd fast float %4320, %3351
  %4324 = fadd fast float %4321, %3352
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
  %4370 = fadd fast float %4367, %3350
  %4371 = fadd fast float %4368, %3351
  %4372 = fadd fast float %4369, %3352
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
  %4398 = fadd fast float %4395, %3350
  %4399 = fadd fast float %4396, %3351
  %4400 = fadd fast float %4397, %3352
  br label %4401

; <label>:4401                                    ; preds = %4375, %4373, %4327, %4291, %4260, %3660, %3364, %3344
  %4402 = phi float [ %3345, %4260 ], [ %3345, %3660 ], [ %3345, %3344 ], [ %3345, %3364 ], [ %4296, %4291 ], [ %4330, %4327 ], [ %3345, %4373 ], [ %4378, %4375 ]
  %4403 = phi float [ %3346, %4260 ], [ %3346, %3660 ], [ %3346, %3344 ], [ %3346, %3364 ], [ %4297, %4291 ], [ %4331, %4327 ], [ %3346, %4373 ], [ %4379, %4375 ]
  %4404 = phi float [ %4261, %4260 ], [ %3347, %3660 ], [ %3347, %3344 ], [ %3347, %3364 ], [ %4261, %4291 ], [ %4261, %4327 ], [ %4261, %4373 ], [ %4261, %4375 ]
  %4405 = phi float [ %4262, %4260 ], [ %3348, %3660 ], [ %3348, %3344 ], [ %3348, %3364 ], [ %4262, %4291 ], [ %4262, %4327 ], [ %4262, %4373 ], [ %4262, %4375 ]
  %4406 = phi float [ %4263, %4260 ], [ %3349, %3660 ], [ %3349, %3344 ], [ %3349, %3364 ], [ %4263, %4291 ], [ %4263, %4327 ], [ %4263, %4373 ], [ %4263, %4375 ]
  %4407 = phi float [ %3350, %4260 ], [ %3350, %3660 ], [ %3350, %3344 ], [ %3350, %3364 ], [ %4322, %4291 ], [ %4370, %4327 ], [ %3350, %4373 ], [ %4398, %4375 ]
  %4408 = phi float [ %3351, %4260 ], [ %3351, %3660 ], [ %3351, %3344 ], [ %3351, %3364 ], [ %4323, %4291 ], [ %4371, %4327 ], [ %3351, %4373 ], [ %4399, %4375 ]
  %4409 = phi float [ %3352, %4260 ], [ %3352, %3660 ], [ %3352, %3344 ], [ %3352, %3364 ], [ %4324, %4291 ], [ %4372, %4327 ], [ %3352, %4373 ], [ %4400, %4375 ]
  %4410 = phi float [ %4264, %4260 ], [ %3353, %3660 ], [ %3353, %3344 ], [ %3353, %3364 ], [ %4264, %4291 ], [ %4264, %4327 ], [ %4264, %4373 ], [ %4264, %4375 ]
  %4411 = phi float [ %4265, %4260 ], [ %3354, %3660 ], [ %3354, %3344 ], [ %3354, %3364 ], [ %4265, %4291 ], [ %4265, %4327 ], [ %4265, %4373 ], [ %4265, %4375 ]
  %4412 = phi float [ %4266, %4260 ], [ %3355, %3660 ], [ %3355, %3344 ], [ %3355, %3364 ], [ %4266, %4291 ], [ %4266, %4327 ], [ %4266, %4373 ], [ %4266, %4375 ]
  %4413 = phi float [ %3356, %4260 ], [ %3356, %3660 ], [ %3356, %3344 ], [ %3356, %3364 ], [ %4310, %4291 ], [ %4362, %4327 ], [ %3356, %4373 ], [ %4390, %4375 ]
  %4414 = phi float [ %3357, %4260 ], [ %3357, %3660 ], [ %3357, %3344 ], [ %3357, %3364 ], [ %4311, %4291 ], [ %4363, %4327 ], [ %3357, %4373 ], [ %4391, %4375 ]
  %4415 = phi float [ %3358, %4260 ], [ %3358, %3660 ], [ %3358, %3344 ], [ %3358, %3364 ], [ %4312, %4291 ], [ %4364, %4327 ], [ %3358, %4373 ], [ %4392, %4375 ]
  %4416 = phi float [ %4267, %4260 ], [ %3359, %3660 ], [ %3359, %3344 ], [ %3359, %3364 ], [ %4267, %4291 ], [ %4267, %4327 ], [ %4267, %4373 ], [ %4267, %4375 ]
  %4417 = phi float [ %3360, %4260 ], [ %3360, %3660 ], [ %3360, %3344 ], [ %3360, %3364 ], [ %4303, %4291 ], [ %4358, %4327 ], [ %3360, %4373 ], [ %4386, %4375 ]
  %4418 = phi float [ %3361, %4260 ], [ %3361, %3660 ], [ %3361, %3344 ], [ %3361, %3364 ], [ %4300, %4291 ], [ %4335, %4327 ], [ %3361, %4373 ], [ %4383, %4375 ]
  %4419 = phi float [ %3362, %4260 ], [ %3362, %3660 ], [ %3362, %3344 ], [ %3362, %3364 ], [ %4315, %4291 ], [ %4366, %4327 ], [ %3362, %4373 ], [ %4394, %4375 ]
  %4420 = phi float [ %4268, %4260 ], [ %3363, %3660 ], [ %3363, %3344 ], [ %3363, %3364 ], [ %4268, %4291 ], [ %4268, %4327 ], [ %4268, %4373 ], [ %4268, %4375 ]
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = call float @dx.op.dot2.f32(i32 54, float %4402, float %4403, float %4402, float %4403)  ; Dot2(ax,ay,bx,by)
  %4424 = fmul fast float %4423, 0x3FE3333340000000
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4425, float %4402, float %4403, float %4425)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 25, float %4426)  ; Rsqrt(value)
  %4428 = fmul fast float %4427, %4402
  %4429 = fmul fast float %4427, %4403
  %4430 = fmul fast float %4425, %4427
  %4431 = fmul fast float %4430, %108
  %4432 = fmul fast float %4430, %109
  %4433 = fmul fast float %4430, %110
  %4434 = fmul fast float %4428, %76
  %4435 = fmul fast float %4428, %77
  %4436 = fmul fast float %4428, %78
  %4437 = fadd fast float %4431, %4434
  %4438 = fadd fast float %4432, %4435
  %4439 = fadd fast float %4433, %4436
  %4440 = fmul fast float %120, %4429
  %4441 = fmul fast float %121, %4429
  %4442 = fmul fast float %122, %4429
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4445, float %4443, float %4444, float %4445)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4443, %4447
  %4449 = fmul fast float %4444, %4447
  %4450 = fmul fast float %4445, %4447
  %4451 = and i32 %56, 1
  %4452 = icmp eq i32 %4451, 0
  br i1 %4452, label %4453, label %5049

; <label>:4453                                    ; preds = %4401
  %4454 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4460 = fadd fast float %4454, %156
  %4461 = fadd fast float %4455, %157
  %4462 = fadd fast float %4456, %158
  %4463 = fadd fast float %4457, %156
  %4464 = fadd fast float %4458, %157
  %4465 = fadd fast float %4459, %158
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4473 = fmul fast float %4467, %101
  %4474 = fmul fast float %4473, %4471
  %4475 = fmul fast float %4468, %102
  %4476 = fmul fast float %4475, %4472
  %4477 = fptoui float %4474 to i32
  %4478 = fptoui float %4476 to i32
  %4479 = fadd fast float %4467, -1.000000e+00
  %4480 = fadd fast float %4468, -1.000000e+00
  %4481 = fptoui float %4479 to i32
  %4482 = fptoui float %4480 to i32
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4481)  ; UMin(a,b)
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4482)  ; UMin(a,b)
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4488 = fmul fast float %4486, %92
  %4489 = fsub fast float %4488, %4487
  %4490 = fadd fast float %4469, -1.000000e+00
  %4491 = call float @dx.op.binary.f32(i32 36, float %4489, float %4490)  ; FMin(a,b)
  %4492 = fptoui float %4491 to i32
  %4493 = fptoui float %4467 to i32
  %4494 = fptoui float %4468 to i32
  %4495 = mul i32 %4492, %4494
  %4496 = add i32 %4495, %4484
  %4497 = mul i32 %4496, %4493
  %4498 = add i32 %4497, %4483
  %4499 = shl i32 %4498, 2
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = and i32 %4501, 1023
  %4503 = lshr i32 %4501, 10
  %4504 = icmp eq i32 %4502, 0
  br i1 %4504, label %5011, label %4505

; <label>:4505                                    ; preds = %4453
  %4506 = and i32 %4501, 1023
  br label %4507

; <label>:4507                                    ; preds = %4640, %4505
  %4508 = phi i32 [ %4590, %4640 ], [ 0, %4505 ]
  %4509 = phi float [ %4641, %4640 ], [ 0.000000e+00, %4505 ]
  %4510 = phi float [ %4642, %4640 ], [ %1245, %4505 ]
  %4511 = phi float [ %4643, %4640 ], [ %4422, %4505 ]
  %4512 = phi float [ %4644, %4640 ], [ %4420, %4505 ]
  %4513 = phi float [ %4645, %4640 ], [ %4413, %4505 ]
  %4514 = phi float [ %4646, %4640 ], [ %4414, %4505 ]
  %4515 = phi float [ %4647, %4640 ], [ %4415, %4505 ]
  %4516 = phi float [ %4648, %4640 ], [ 0.000000e+00, %4505 ]
  %4517 = phi float [ %4649, %4640 ], [ 0.000000e+00, %4505 ]
  %4518 = phi float [ %4650, %4640 ], [ %4407, %4505 ]
  %4519 = phi float [ %4651, %4640 ], [ %4408, %4505 ]
  %4520 = phi float [ %4652, %4640 ], [ %4409, %4505 ]
  %4521 = phi float [ %4653, %4640 ], [ %4410, %4505 ]
  %4522 = phi float [ %4654, %4640 ], [ %4411, %4505 ]
  %4523 = phi float [ %4655, %4640 ], [ %4412, %4505 ]
  %4524 = phi float [ %4656, %4640 ], [ %4448, %4505 ]
  %4525 = phi float [ %4657, %4640 ], [ %4449, %4505 ]
  %4526 = phi float [ %4658, %4640 ], [ %4450, %4505 ]
  %4527 = phi float [ %4659, %4640 ], [ %4418, %4505 ]
  %4528 = phi float [ %4660, %4640 ], [ %4417, %4505 ]
  %4529 = phi float [ %4661, %4640 ], [ 0.000000e+00, %4505 ]
  %4530 = phi float [ %4662, %4640 ], [ %4416, %4505 ]
  %4531 = phi float [ %4663, %4640 ], [ %4404, %4505 ]
  %4532 = phi float [ %4664, %4640 ], [ %4405, %4505 ]
  %4533 = phi float [ %4665, %4640 ], [ %4406, %4505 ]
  %4534 = add nuw nsw i32 %4508, %4503
  %4535 = shl i32 %4534, 2
  %4536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.i32 %4536, 0
  %4538 = shl i32 %4537, 8
  %4539 = or i32 %4538, 48
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4545 = or i32 %4538, 64
  %4546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4547 = extractvalue %dx.types.ResRet.i32 %4546, 0
  %4548 = extractvalue %dx.types.ResRet.i32 %4546, 1
  %4549 = or i32 %4538, 80
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 3
  %4553 = or i32 %4538, 96
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4559 = or i32 %4538, 112
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4562 = or i32 %4538, 128
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4538, 144
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4538, 160
  %4575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = or i32 %4538, 192
  %4581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.i32 %4581, 0
  %4583 = or i32 %4538, 208
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = or i32 %4538, 248
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = add nuw nsw i32 %4508, 1
  %4591 = bitcast float %4544 to i32
  %4592 = and i32 %4591, 512
  %4593 = icmp eq i32 %4592, 0
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4600 = or i32 %4538, 16
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4607 = or i32 %4538, 32
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4599)  ; Round_ni(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 27, float %4606)  ; Round_ni(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4618)  ; Round_ni(value)
  %4620 = fadd fast float %4617, %4615
  %4621 = fadd fast float %4620, %4619
  %4622 = fcmp fast oeq float %4621, 0.000000e+00
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = fsub fast float %4623, %4599
  %4628 = fsub fast float %4625, %4599
  %4629 = fsub fast float %4624, %4606
  %4630 = fsub fast float %4626, %4606
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4634 = fadd fast float %4633, %4631
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4637 = fcmp fast ogt float %4635, %4636
  %4638 = and i1 %4622, %4637
  %4639 = and i1 %4593, %4638
  br i1 %4639, label %4667, label %4640

; <label>:4640                                    ; preds = %4997, %4748, %4667, %4507
  %4641 = phi float [ %4509, %4667 ], [ %4751, %4748 ], [ %4751, %4997 ], [ %4509, %4507 ]
  %4642 = phi float [ %4510, %4667 ], [ %4510, %4748 ], [ %4973, %4997 ], [ %4510, %4507 ]
  %4643 = phi float [ %4511, %4667 ], [ %4511, %4748 ], [ %4972, %4997 ], [ %4511, %4507 ]
  %4644 = phi float [ %4512, %4667 ], [ %4512, %4748 ], [ %4970, %4997 ], [ %4512, %4507 ]
  %4645 = phi float [ %4513, %4667 ], [ %4513, %4748 ], [ %4948, %4997 ], [ %4513, %4507 ]
  %4646 = phi float [ %4514, %4667 ], [ %4514, %4748 ], [ %4949, %4997 ], [ %4514, %4507 ]
  %4647 = phi float [ %4515, %4667 ], [ %4515, %4748 ], [ %4950, %4997 ], [ %4515, %4507 ]
  %4648 = phi float [ %4516, %4667 ], [ %4516, %4748 ], [ %4875, %4997 ], [ %4516, %4507 ]
  %4649 = phi float [ %4517, %4667 ], [ %4517, %4748 ], [ %4873, %4997 ], [ %4517, %4507 ]
  %4650 = phi float [ %4518, %4667 ], [ %4518, %4748 ], [ %4918, %4997 ], [ %4518, %4507 ]
  %4651 = phi float [ %4519, %4667 ], [ %4519, %4748 ], [ %4919, %4997 ], [ %4519, %4507 ]
  %4652 = phi float [ %4520, %4667 ], [ %4520, %4748 ], [ %4920, %4997 ], [ %4520, %4507 ]
  %4653 = phi float [ %4521, %4667 ], [ %4521, %4748 ], [ %5007, %4997 ], [ %4521, %4507 ]
  %4654 = phi float [ %4522, %4667 ], [ %4522, %4748 ], [ %5008, %4997 ], [ %4522, %4507 ]
  %4655 = phi float [ %4523, %4667 ], [ %4523, %4748 ], [ %5009, %4997 ], [ %4523, %4507 ]
  %4656 = phi float [ %4524, %4667 ], [ %4524, %4748 ], [ %4854, %4997 ], [ %4524, %4507 ]
  %4657 = phi float [ %4525, %4667 ], [ %4525, %4748 ], [ %4855, %4997 ], [ %4525, %4507 ]
  %4658 = phi float [ %4526, %4667 ], [ %4526, %4748 ], [ %4856, %4997 ], [ %4526, %4507 ]
  %4659 = phi float [ %4527, %4667 ], [ %4527, %4748 ], [ %4928, %4997 ], [ %4527, %4507 ]
  %4660 = phi float [ %4528, %4667 ], [ %4528, %4748 ], [ %4925, %4997 ], [ %4528, %4507 ]
  %4661 = phi float [ %4529, %4667 ], [ %4529, %4748 ], [ %4922, %4997 ], [ %4529, %4507 ]
  %4662 = phi float [ %4530, %4667 ], [ %4530, %4748 ], [ %4871, %4997 ], [ %4530, %4507 ]
  %4663 = phi float [ %4531, %4667 ], [ %4531, %4748 ], [ %4866, %4997 ], [ %4531, %4507 ]
  %4664 = phi float [ %4532, %4667 ], [ %4532, %4748 ], [ %4867, %4997 ], [ %4532, %4507 ]
  %4665 = phi float [ %4533, %4667 ], [ %4533, %4748 ], [ %4868, %4997 ], [ %4533, %4507 ]
  %4666 = icmp eq i32 %4590, %4506
  br i1 %4666, label %5010, label %4507

; <label>:4667                                    ; preds = %4507
  %4668 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4669 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4673 = extractvalue %dx.types.ResRet.i32 %4546, 3
  %4674 = extractvalue %dx.types.ResRet.i32 %4546, 2
  %4675 = add i32 %4673, 0
  %4676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4676, %dx.types.Handle %4677, float %4599, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4629, float undef, float %4628, float %4630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %4672
  %4681 = fadd fast float %4680, %4671
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4599, %4555
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4606, float %4683)  ; FMad(a,b,c)
  %4685 = fadd fast float %4684, %4670
  %4686 = fmul fast float %4599, %4557
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4606, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4669
  %4689 = fmul fast float %4627, %4555
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4629, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4627, %4557
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4629, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4628, %4555
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4630, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4628, %4557
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4630, float %4695)  ; FMad(a,b,c)
  %4697 = add i32 %4674, 0
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4698, %dx.types.Handle %4677, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = and i32 %4591, 1024
  %4702 = icmp ne i32 %4701, 0
  %4703 = fcmp fast ogt float %4700, 0x3FE0101020000000
  %4704 = uitofp i1 %4703 to float
  %4705 = select i1 %4702, float %4704, float %4700
  %4706 = and i32 %4591, 8192
  %4707 = icmp ne i32 %4706, 0
  %4708 = select i1 %4707, float %4668, float 1.000000e+00
  %4709 = fmul fast float %4599, 2.000000e+00
  %4710 = fadd fast float %4709, -1.000000e+00
  %4711 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4712 = fmul fast float %4711, %4588
  %4713 = fsub fast float %4712, %4588
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4606, 2.000000e+00
  %4716 = fadd fast float %4715, -1.000000e+00
  %4717 = call float @dx.op.unary.f32(i32 6, float %4716)  ; FAbs(value)
  %4718 = fmul fast float %4717, %4589
  %4719 = fsub fast float %4718, %4589
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4618, %4551
  %4722 = fsub fast float %4721, %4551
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4682, %4708
  %4725 = fmul fast float %4724, %4679
  %4726 = fmul fast float %4725, %4714
  %4727 = fmul fast float %4726, %4705
  %4728 = fmul fast float %4727, %4720
  %4729 = fmul fast float %4728, %4723
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4733 = fsub fast float %4635, %4732
  %4734 = fmul fast float %4733, %4731
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4729, %4552
  %4737 = fadd fast float %4729, %4552
  %4738 = fmul fast float %4737, %4561
  %4739 = fsub fast float %4738, %4561
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = and i32 %4591, 128
  %4742 = icmp ne i32 %4741, 0
  %4743 = select i1 %4742, float %4740, float %4736
  %4744 = fmul fast float %4743, %4735
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = fcmp fast ugt float %4744, %4746
  br i1 %4747, label %4748, label %4640

; <label>:4748                                    ; preds = %4667
  %4749 = select i1 %4707, float %4744, float 0.000000e+00
  %4750 = fadd fast float %4749, %4509
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  br i1 %4707, label %4640, label %4752

; <label>:4752                                    ; preds = %4748
  %4753 = and i32 %4591, 4
  %4754 = and i32 %4591, 8
  %4755 = add i32 %4547, 0
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4756, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.ResRet.f32 %4758, 3
  %4763 = bitcast float %4573 to i32
  %4764 = and i32 %4763, 255
  %4765 = uitofp i32 %4764 to float
  %4766 = lshr i32 %4763, 8
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = fmul fast float %4762, %4765
  %4770 = fadd fast float %4769, %4768
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = add i32 %4548, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = extractvalue %dx.types.ResRet.f32 %4774, 3
  %4779 = bitcast float %4567 to i32
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4779, 8
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4779, 16
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fmul fast float %4775, %4781
  %4790 = fadd fast float %4789, %4784
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fadd fast float %4776, -5.000000e-01
  %4793 = fadd fast float %4778, -5.000000e-01
  %4794 = fmul fast float %4792, %4788
  %4795 = fmul fast float %4793, %4788
  %4796 = fadd fast float %4794, 5.000000e-01
  %4797 = fadd fast float %4795, 5.000000e-01
  %4798 = fmul fast float %4759, %4576
  %4799 = fmul fast float %4760, %4577
  %4800 = fmul fast float %4761, %4578
  %4801 = fmul fast float %4796, 2.000000e+00
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = fmul fast float %4797, 2.000000e+00
  %4804 = fadd fast float %4803, -1.000000e+00
  %4805 = fadd fast float %4802, %4804
  %4806 = fmul fast float %4805, 5.000000e-01
  %4807 = fsub fast float %4802, %4804
  %4808 = fmul fast float %4807, 5.000000e-01
  %4809 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float %4810, %4811
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4808, float %4812, float %4806, float %4808, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.unary.f32(i32 25, float %4813)  ; Rsqrt(value)
  %4815 = fmul fast float %4806, %4814
  %4816 = fmul fast float %4808, %4814
  %4817 = fmul fast float %4814, %4812
  %4818 = fmul fast float %4817, %4541
  %4819 = fmul fast float %4817, %4542
  %4820 = fmul fast float %4817, %4543
  %4821 = fmul fast float %4815, %4564
  %4822 = fmul fast float %4815, %4565
  %4823 = fmul fast float %4815, %4566
  %4824 = fadd fast float %4821, %4818
  %4825 = fadd fast float %4822, %4819
  %4826 = fadd fast float %4823, %4820
  %4827 = fmul fast float %4816, %4570
  %4828 = fmul fast float %4816, %4571
  %4829 = fmul fast float %4816, %4572
  %4830 = fadd fast float %4824, %4827
  %4831 = fadd fast float %4825, %4828
  %4832 = fadd fast float %4826, %4829
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %4832, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 25, float %4833)  ; Rsqrt(value)
  %4835 = fmul fast float %4830, %4834
  %4836 = fmul fast float %4831, %4834
  %4837 = fmul fast float %4832, %4834
  %4838 = icmp ne i32 %4754, 0
  %4839 = select i1 %4838, float 1.000000e+00, float 0.000000e+00
  %4840 = fmul fast float %4744, %4839
  %4841 = and i32 %4591, 1
  %4842 = icmp eq i32 %4841, 0
  br i1 %4842, label %4843, label %4847

; <label>:4843                                    ; preds = %4752
  %4844 = fsub fast float %4835, %4524
  %4845 = fsub fast float %4836, %4525
  %4846 = fsub fast float %4837, %4526
  br label %4847

; <label>:4847                                    ; preds = %4843, %4752
  %4848 = phi float [ %4844, %4843 ], [ %4835, %4752 ]
  %4849 = phi float [ %4845, %4843 ], [ %4836, %4752 ]
  %4850 = phi float [ %4846, %4843 ], [ %4837, %4752 ]
  %4851 = fmul float %4850, %4840
  %4852 = fmul float %4849, %4840
  %4853 = fmul float %4848, %4840
  %4854 = fadd fast float %4853, %4524
  %4855 = fadd fast float %4852, %4525
  %4856 = fadd fast float %4851, %4526
  %4857 = icmp ne i32 %4753, 0
  %4858 = select i1 %4857, float 1.000000e+00, float 0.000000e+00
  %4859 = fmul fast float %4744, %4858
  %4860 = fsub fast float %4798, %4531
  %4861 = fsub fast float %4799, %4532
  %4862 = fsub fast float %4800, %4533
  %4863 = fmul fast float %4860, %4859
  %4864 = fmul fast float %4861, %4859
  %4865 = fmul fast float %4862, %4859
  %4866 = fadd fast float %4863, %4531
  %4867 = fadd fast float %4864, %4532
  %4868 = fadd fast float %4865, %4533
  %4869 = fsub fast float %4771, %4530
  %4870 = fmul fast float %4869, %4859
  %4871 = fadd fast float %4870, %4530
  %4872 = fmul fast float %4859, %4517
  %4873 = fsub fast float %4517, %4872
  %4874 = fmul fast float %4859, %4516
  %4875 = fsub fast float %4516, %4874
  %4876 = bitcast float %4585 to i32
  %4877 = lshr i32 %4876, 16
  %4878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4877)  ; LegacyF16ToF32(value)
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = and i32 %4880, 1
  %4882 = icmp eq i32 %4881, 0
  br i1 %4882, label %4883, label %4908

; <label>:4883                                    ; preds = %4847
  %4884 = fadd fast float %4771, 0xBFB99999A0000000
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 0x3FF1C71C80000000
  %4887 = fsub fast float 1.000000e+00, %4886
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, %4798
  %4890 = fmul fast float %4888, %4799
  %4891 = fmul fast float %4888, %4800
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4893, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4892, float %4895)  ; FMax(a,b)
  %4897 = fcmp fast ogt float %4896, 0.000000e+00
  %4898 = bitcast float %4896 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = select i1 %4897, float %4900, float 0.000000e+00
  %4902 = fmul fast float %4892, %4878
  %4903 = fmul fast float %4893, %4878
  %4904 = fmul fast float %4894, %4878
  %4905 = fmul fast float %4902, %4901
  %4906 = fmul fast float %4903, %4901
  %4907 = fmul fast float %4904, %4901
  br label %4908

; <label>:4908                                    ; preds = %4883, %4847
  %4909 = phi float [ %4878, %4847 ], [ %4905, %4883 ]
  %4910 = phi float [ %4878, %4847 ], [ %4906, %4883 ]
  %4911 = phi float [ %4878, %4847 ], [ %4907, %4883 ]
  %4912 = fsub fast float %4909, %4518
  %4913 = fsub fast float %4910, %4519
  %4914 = fsub fast float %4911, %4520
  %4915 = fmul fast float %4912, %4859
  %4916 = fmul fast float %4913, %4859
  %4917 = fmul fast float %4914, %4859
  %4918 = fadd fast float %4915, %4518
  %4919 = fadd fast float %4916, %4519
  %4920 = fadd fast float %4917, %4520
  %4921 = fadd fast float %4744, %4529
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fsub fast float %4791, %4528
  %4924 = fmul fast float %4923, %4840
  %4925 = fadd fast float %4924, %4528
  %4926 = fsub fast float %4777, %4527
  %4927 = fmul fast float %4926, %4840
  %4928 = fadd fast float %4927, %4527
  br i1 %4842, label %4937, label %4929

; <label>:4929                                    ; preds = %4908
  %4930 = and i32 %4591, 32768
  %4931 = icmp eq i32 %4930, 0
  br i1 %4931, label %4947, label %4932

; <label>:4932                                    ; preds = %4929
  %4933 = fmul fast float %4840, 1.270000e+02
  %4934 = fadd fast float %4933, %4513
  %4935 = fadd fast float %4933, %4514
  %4936 = fadd fast float %4933, %4515
  br label %4947

; <label>:4937                                    ; preds = %4908
  %4938 = fsub fast float 1.270000e+02, %4513
  %4939 = fsub fast float 1.270000e+02, %4514
  %4940 = fsub fast float 1.270000e+02, %4515
  %4941 = fmul fast float %4840, %4938
  %4942 = fmul fast float %4840, %4939
  %4943 = fmul fast float %4840, %4940
  %4944 = fadd fast float %4941, %4513
  %4945 = fadd fast float %4942, %4514
  %4946 = fadd fast float %4943, %4515
  br label %4947

; <label>:4947                                    ; preds = %4937, %4932, %4929
  %4948 = phi float [ %4934, %4932 ], [ %4513, %4929 ], [ %4944, %4937 ]
  %4949 = phi float [ %4935, %4932 ], [ %4514, %4929 ], [ %4945, %4937 ]
  %4950 = phi float [ %4936, %4932 ], [ %4515, %4929 ], [ %4946, %4937 ]
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = fmul fast float %4954, %4951
  %4956 = fadd fast float %4955, %4953
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = bitcast float %4579 to i32
  %4959 = and i32 %4958, 65535
  %4960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4959)  ; LegacyF16ToF32(value)
  %4961 = lshr i32 %4958, 16
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = fcmp fast oge float %4960, 0.000000e+00
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = select i1 %4963, float %4960, float %4965
  %4967 = fadd fast float %4966, %4962
  %4968 = fsub fast float %4957, %4512
  %4969 = fmul fast float %4968, %4744
  %4970 = fadd fast float %4969, %4512
  %4971 = fmul fast float %4967, %4744
  %4972 = call float @dx.op.binary.f32(i32 35, float %4511, float %4971)  ; FMax(a,b)
  %4973 = call float @dx.op.binary.f32(i32 35, float %4510, float %4744)  ; FMax(a,b)
  %4974 = and i32 %4591, 16
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %4997, label %4976

; <label>:4976                                    ; preds = %4947
  %4977 = add i32 %4582, 0
  %4978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4979 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4978, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.ResRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.ResRet.f32 %4979, 2
  %4983 = and i32 %4876, 65535
  %4984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4983)  ; LegacyF16ToF32(value)
  %4985 = fmul fast float %4980, %4576
  %4986 = fmul fast float %4981, %4577
  %4987 = fmul fast float %4982, %4578
  %4988 = and i32 %4591, 16384
  %4989 = icmp ne i32 %4988, 0
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = select i1 %4989, float %4991, float 1.000000e+00
  %4993 = fmul fast float %4992, %4984
  %4994 = fmul fast float %4985, %4993
  %4995 = fmul fast float %4986, %4993
  %4996 = fmul fast float %4987, %4993
  br label %4997

; <label>:4997                                    ; preds = %4976, %4947
  %4998 = phi float [ %4994, %4976 ], [ 0.000000e+00, %4947 ]
  %4999 = phi float [ %4995, %4976 ], [ 0.000000e+00, %4947 ]
  %5000 = phi float [ %4996, %4976 ], [ 0.000000e+00, %4947 ]
  %5001 = fsub fast float %4998, %4521
  %5002 = fsub fast float %4999, %4522
  %5003 = fsub fast float %5000, %4523
  %5004 = fmul fast float %5001, %4744
  %5005 = fmul fast float %5002, %4744
  %5006 = fmul fast float %5003, %4744
  %5007 = fadd fast float %5004, %4521
  %5008 = fadd fast float %5005, %4522
  %5009 = fadd fast float %5006, %4523
  br label %4640

; <label>:5010                                    ; preds = %4640
  br label %5011

; <label>:5011                                    ; preds = %5010, %4453
  %5012 = phi float [ 0.000000e+00, %4453 ], [ %4641, %5010 ]
  %5013 = phi float [ %1245, %4453 ], [ %4642, %5010 ]
  %5014 = phi float [ %4422, %4453 ], [ %4643, %5010 ]
  %5015 = phi float [ %4420, %4453 ], [ %4644, %5010 ]
  %5016 = phi float [ %4413, %4453 ], [ %4645, %5010 ]
  %5017 = phi float [ %4414, %4453 ], [ %4646, %5010 ]
  %5018 = phi float [ %4415, %4453 ], [ %4647, %5010 ]
  %5019 = phi float [ 0.000000e+00, %4453 ], [ %4648, %5010 ]
  %5020 = phi float [ 0.000000e+00, %4453 ], [ %4649, %5010 ]
  %5021 = phi float [ %4407, %4453 ], [ %4650, %5010 ]
  %5022 = phi float [ %4408, %4453 ], [ %4651, %5010 ]
  %5023 = phi float [ %4409, %4453 ], [ %4652, %5010 ]
  %5024 = phi float [ %4410, %4453 ], [ %4653, %5010 ]
  %5025 = phi float [ %4411, %4453 ], [ %4654, %5010 ]
  %5026 = phi float [ %4412, %4453 ], [ %4655, %5010 ]
  %5027 = phi float [ %4448, %4453 ], [ %4656, %5010 ]
  %5028 = phi float [ %4449, %4453 ], [ %4657, %5010 ]
  %5029 = phi float [ %4450, %4453 ], [ %4658, %5010 ]
  %5030 = phi float [ %4418, %4453 ], [ %4659, %5010 ]
  %5031 = phi float [ %4417, %4453 ], [ %4660, %5010 ]
  %5032 = phi float [ 0.000000e+00, %4453 ], [ %4661, %5010 ]
  %5033 = phi float [ %4416, %4453 ], [ %4662, %5010 ]
  %5034 = phi float [ %4404, %4453 ], [ %4663, %5010 ]
  %5035 = phi float [ %4405, %4453 ], [ %4664, %5010 ]
  %5036 = phi float [ %4406, %4453 ], [ %4665, %5010 ]
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5038, %5027
  %5040 = fmul fast float %5038, %5028
  %5041 = fmul fast float %5038, %5029
  %5042 = fadd fast float %5032, %1245
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 25, float %5044)  ; Rsqrt(value)
  %5046 = fmul fast float %5045, %5039
  %5047 = fmul fast float %5045, %5040
  %5048 = fmul fast float %5045, %5041
  br label %5049

; <label>:5049                                    ; preds = %5011, %4401
  %5050 = phi float [ %5046, %5011 ], [ %4448, %4401 ]
  %5051 = phi float [ %5047, %5011 ], [ %4449, %4401 ]
  %5052 = phi float [ %5048, %5011 ], [ %4450, %4401 ]
  %5053 = phi float [ %5034, %5011 ], [ %4404, %4401 ]
  %5054 = phi float [ %5035, %5011 ], [ %4405, %4401 ]
  %5055 = phi float [ %5036, %5011 ], [ %4406, %4401 ]
  %5056 = phi float [ %5024, %5011 ], [ %4410, %4401 ]
  %5057 = phi float [ %5025, %5011 ], [ %4411, %4401 ]
  %5058 = phi float [ %5026, %5011 ], [ %4412, %4401 ]
  %5059 = phi float [ %5021, %5011 ], [ %4407, %4401 ]
  %5060 = phi float [ %5022, %5011 ], [ %4408, %4401 ]
  %5061 = phi float [ %5023, %5011 ], [ %4409, %4401 ]
  %5062 = phi float [ %5016, %5011 ], [ %4413, %4401 ]
  %5063 = phi float [ %5017, %5011 ], [ %4414, %4401 ]
  %5064 = phi float [ %5018, %5011 ], [ %4415, %4401 ]
  %5065 = phi float [ %5033, %5011 ], [ %4416, %4401 ]
  %5066 = phi float [ %5043, %5011 ], [ %1245, %4401 ]
  %5067 = phi float [ %5031, %5011 ], [ %4417, %4401 ]
  %5068 = phi float [ %5030, %5011 ], [ %4418, %4401 ]
  %5069 = phi float [ %5020, %5011 ], [ 0.000000e+00, %4401 ]
  %5070 = phi float [ %5019, %5011 ], [ 0.000000e+00, %4401 ]
  %5071 = phi float [ %5012, %5011 ], [ 0.000000e+00, %4401 ]
  %5072 = phi float [ %5014, %5011 ], [ %4422, %4401 ]
  %5073 = phi float [ %5013, %5011 ], [ %1245, %4401 ]
  %5074 = phi float [ %5015, %5011 ], [ %4420, %4401 ]
  %5075 = fadd fast float %5065, 0xBFB99999A0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 0x3FF1C71C80000000
  %5078 = call float @dx.op.binary.f32(i32 36, float %5065, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5053
  %5082 = fmul fast float %5080, %5054
  %5083 = fmul fast float %5080, %5055
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5077, %5053
  %5088 = fmul fast float %5077, %5054
  %5089 = fmul fast float %5077, %5055
  %5090 = fadd fast float %5087, %5078
  %5091 = fadd fast float %5088, %5078
  %5092 = fadd fast float %5089, %5078
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 1
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5115, label %5101

; <label>:5101                                    ; preds = %5049
  %5102 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5084, float %5102)  ; FMax(a,b)
  %5104 = fcmp fast ogt float %5103, 0.000000e+00
  %5105 = bitcast float %5103 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = select i1 %5104, float %5107, float 0.000000e+00
  %5109 = fmul fast float %5084, %5059
  %5110 = fmul fast float %5085, %5060
  %5111 = fmul fast float %5086, %5061
  %5112 = fmul fast float %5109, %5108
  %5113 = fmul fast float %5110, %5108
  %5114 = fmul fast float %5111, %5108
  br label %5115

; <label>:5115                                    ; preds = %5101, %5049
  %5116 = phi float [ %5112, %5101 ], [ %5059, %5049 ]
  %5117 = phi float [ %5113, %5101 ], [ %5060, %5049 ]
  %5118 = phi float [ %5114, %5101 ], [ %5061, %5049 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5062, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5063, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5064, float 1.270000e+02)  ; FMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = and i32 %5123, 8
  %5125 = icmp ne i32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5053)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5053)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5086, float %5053)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %218, float %5053, float %5084
  %5131 = select i1 %218, float %5129, float %5085
  %5132 = select i1 %218, float 1.000000e+00, float %5086
  %5133 = select i1 %5125, float %5126, float %5130
  %5134 = select i1 %5125, float %5127, float %5131
  %5135 = select i1 %5125, float %5128, float %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %218, float %5136, float %5116
  %5138 = select i1 %218, float %5136, float %5117
  %5139 = select i1 %218, float %5136, float %5118
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = fadd fast float %5141, %156
  %5145 = fadd fast float %5142, %157
  %5146 = fadd fast float %5143, %158
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
  %5226 = and i32 %194, 1
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
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %5505 = and i32 %194, 3
  %5506 = icmp eq i32 %5505, 1
  %5507 = select i1 %5506, float 1.000000e+00, float 0.000000e+00
  %5508 = fsub fast float %5500, %158
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = select i1 %5504, float %5509, float 1.000000e+00
  %5511 = fmul fast float %5510, %5507
  %5512 = icmp eq i32 %5505, 3
  %5513 = select i1 %5512, float 1.000000e+00, float %5511
  %5514 = call float @dx.op.binary.f32(i32 35, float %5071, float %5513)  ; FMax(a,b)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fcmp fast une float %5515, 0.000000e+00
  %5517 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 25, float %5517)  ; Rsqrt(value)
  br i1 %5516, label %5526, label %5519

; <label>:5519                                    ; preds = %5499
  %5520 = fmul fast float %5518, %156
  %5521 = fmul fast float %5518, %157
  %5522 = fmul fast float %5518, %158
  %5523 = fsub fast float -0.000000e+00, %5520
  %5524 = fsub fast float -0.000000e+00, %5521
  %5525 = fsub fast float -0.000000e+00, %5522
  br label %5694

; <label>:5526                                    ; preds = %5499
  %5527 = fmul fast float %156, %5518
  %5528 = fsub fast float -0.000000e+00, %5527
  %5529 = fmul fast float %157, %5518
  %5530 = fsub fast float -0.000000e+00, %5529
  %5531 = fmul fast float %158, %5518
  %5532 = fsub fast float -0.000000e+00, %5531
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5530, float %5532, float %108, float %109, float %110)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5581 = fmul fast float %5068, %5068
  %5582 = fmul fast float %5581, %5581
  %5583 = fadd fast float %5538, 1.000000e+00
  %5584 = fsub fast float %5583, %5553
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5672 = fsub fast float %108, %5050
  %5673 = fsub fast float %109, %5051
  %5674 = fsub fast float %110, %5052
  %5675 = fmul fast float %5655, %5672
  %5676 = fmul fast float %5655, %5673
  %5677 = fmul fast float %5655, %5674
  %5678 = fadd fast float %5675, %5050
  %5679 = fadd fast float %5676, %5051
  %5680 = fadd fast float %5677, %5052
  %5681 = fmul fast float %5655, %5650
  %5682 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = fmul fast float %5681, %5683
  %5685 = fadd fast float %5684, %5682
  %5686 = fsub fast float 1.000000e+00, %5068
  %5687 = fmul fast float %5655, %5686
  %5688 = fadd fast float %5687, %5068
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
  %5707 = phi float [ %5050, %5519 ], [ %5691, %5526 ]
  %5708 = phi float [ %5051, %5519 ], [ %5692, %5526 ]
  %5709 = phi float [ %5052, %5519 ], [ %5693, %5526 ]
  %5710 = phi float [ %5096, %5519 ], [ %5685, %5526 ]
  %5711 = phi float [ %5068, %5519 ], [ %5688, %5526 ]
  %5712 = fsub fast float -0.000000e+00, %158
  %5713 = select i1 %218, float 0.000000e+00, float %5706
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
  %5729 = call float @dx.op.dot3.f32(i32 55, float %72, float %68, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fmul fast float %5729, 0x3FD20DD760000000
  %5731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5732 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = fcmp fast oeq float %5732, 0.000000e+00
  %5734 = fcmp fast oeq float %5731, 0.000000e+00
  %5735 = or i1 %5734, %5733
  br i1 %5735, label %5765, label %5736

; <label>:5736                                    ; preds = %5694
  %5737 = fsub fast float -0.000000e+00, %75
  %5738 = fsub fast float -0.000000e+00, %73
  %5739 = call float @dx.op.unary.f32(i32 24, float %5732)  ; Sqrt(value)
  %5740 = fdiv fast float %5739, %5731
  %5741 = fcmp fast ogt float %5740, 0x3FFB6F8900000000
  %5742 = select i1 %5741, float 0x3FFB6F8900000000, float %5740
  %5743 = fmul fast float %5742, 0x3FE8A23460000000
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5742, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5746 = fmul fast float %5744, %5731
  %5747 = fmul fast float %5745, 0x3FF279A740000000
  %5748 = fadd fast float %5747, -1.000000e+00
  %5749 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %74, float %5737, float %5738, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = call float @dx.op.unary.f32(i32 25, float %5749)  ; Rsqrt(value)
  %5751 = fmul fast float %5750, %5737
  %5752 = fmul fast float %5750, %5738
  %5753 = fmul fast float %5750, %74
  %5754 = fmul fast float %5748, %5748
  %5755 = fsub fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5745, 0x40005F8BE0000000
  %5757 = fsub fast float 0x400C5BF8A0000000, %5756
  %5758 = fdiv fast float %5746, %5757
  %5759 = fmul fast float %5758, 0x3FEE31C3C0000000
  %5760 = fmul fast float %5759, %5755
  %5761 = fmul fast float %5745, 0x3FDACB7480000000
  %5762 = fadd fast float %5761, 0xBFD7347680000000
  %5763 = fmul fast float %5762, %5758
  %5764 = fmul fast float %5763, %5755
  br label %5765

; <label>:5765                                    ; preds = %5736, %5694
  %5766 = phi float [ %5751, %5736 ], [ 0.000000e+00, %5694 ]
  %5767 = phi float [ %5752, %5736 ], [ 0.000000e+00, %5694 ]
  %5768 = phi float [ %5753, %5736 ], [ 0.000000e+00, %5694 ]
  %5769 = phi float [ %5760, %5736 ], [ 0.000000e+00, %5694 ]
  %5770 = phi float [ %5764, %5736 ], [ 0.000000e+00, %5694 ]
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = fmul fast float %5771, 0x3FDF454380000000
  %5773 = fmul fast float %5771, %5771
  %5774 = fmul fast float %5773, 0x3FEE471020000000
  %5775 = fadd fast float %5774, 0xBFD42F6020000000
  %5776 = fmul fast float %5731, 0x3FD20DD760000000
  %5777 = fmul fast float %5775, %5770
  %5778 = fadd fast float %5777, %5776
  %5779 = fmul fast float %5772, %5769
  %5780 = fadd fast float %5778, %5779
  %5781 = fsub fast float %5778, %5779
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fmul fast float %5782, 0x3FDF454380000000
  %5784 = fmul fast float %5782, %5782
  %5785 = fmul fast float %5784, 0x3FEE471020000000
  %5786 = fadd fast float %5785, 0xBFD42F6020000000
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5769, float %5770, float 0x3FD20DD760000000, float %5783, float %5786)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5789 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fcmp fast oeq float %5789, 0.000000e+00
  %5791 = fcmp fast oeq float %5788, 0.000000e+00
  %5792 = or i1 %5791, %5790
  br i1 %5792, label %5822, label %5793

; <label>:5793                                    ; preds = %5765
  %5794 = fsub fast float -0.000000e+00, %71
  %5795 = fsub fast float -0.000000e+00, %69
  %5796 = call float @dx.op.unary.f32(i32 24, float %5789)  ; Sqrt(value)
  %5797 = fdiv fast float %5796, %5788
  %5798 = fcmp fast ogt float %5797, 0x3FFB6F8900000000
  %5799 = select i1 %5798, float 0x3FFB6F8900000000, float %5797
  %5800 = fmul fast float %5799, 0x3FE8A23460000000
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5799, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5803 = fmul fast float %5801, %5788
  %5804 = fmul fast float %5802, 0x3FF279A740000000
  %5805 = fadd fast float %5804, -1.000000e+00
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %70, float %5794, float %5795, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5794
  %5809 = fmul fast float %5807, %5795
  %5810 = fmul fast float %5807, %70
  %5811 = fmul fast float %5805, %5805
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = fmul fast float %5802, 0x40005F8BE0000000
  %5814 = fsub fast float 0x400C5BF8A0000000, %5813
  %5815 = fdiv fast float %5803, %5814
  %5816 = fmul fast float %5815, 0x3FEE31C3C0000000
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5802, 0x3FDACB7480000000
  %5819 = fadd fast float %5818, 0xBFD7347680000000
  %5820 = fmul fast float %5819, %5815
  %5821 = fmul fast float %5820, %5812
  br label %5822

; <label>:5822                                    ; preds = %5793, %5765
  %5823 = phi float [ %5808, %5793 ], [ 0.000000e+00, %5765 ]
  %5824 = phi float [ %5809, %5793 ], [ 0.000000e+00, %5765 ]
  %5825 = phi float [ %5810, %5793 ], [ 0.000000e+00, %5765 ]
  %5826 = phi float [ %5817, %5793 ], [ 0.000000e+00, %5765 ]
  %5827 = phi float [ %5821, %5793 ], [ 0.000000e+00, %5765 ]
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = fmul fast float %5828, 0x3FDF454380000000
  %5830 = fmul fast float %5828, %5828
  %5831 = fmul fast float %5830, 0x3FEE471020000000
  %5832 = fadd fast float %5831, 0xBFD42F6020000000
  %5833 = fmul fast float %5788, 0x3FD20DD760000000
  %5834 = fmul fast float %5832, %5827
  %5835 = fadd fast float %5834, %5833
  %5836 = fmul fast float %5829, %5826
  %5837 = fadd fast float %5835, %5836
  %5838 = fsub fast float %5835, %5836
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fmul fast float %5839, 0x3FDF454380000000
  %5841 = fmul fast float %5839, %5839
  %5842 = fmul fast float %5841, 0x3FEE471020000000
  %5843 = fadd fast float %5842, 0xBFD42F6020000000
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5788, float %5826, float %5827, float 0x3FD20DD760000000, float %5840, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %64)  ; FMax(a,b)
  %5846 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = fcmp fast oeq float %5846, 0.000000e+00
  %5848 = fcmp fast oeq float %5845, 0.000000e+00
  %5849 = or i1 %5848, %5847
  br i1 %5849, label %5879, label %5850

; <label>:5850                                    ; preds = %5822
  %5851 = fsub fast float -0.000000e+00, %67
  %5852 = fsub fast float -0.000000e+00, %65
  %5853 = call float @dx.op.unary.f32(i32 24, float %5846)  ; Sqrt(value)
  %5854 = fdiv fast float %5853, %5845
  %5855 = fcmp fast ogt float %5854, 0x3FFB6F8900000000
  %5856 = select i1 %5855, float 0x3FFB6F8900000000, float %5854
  %5857 = fmul fast float %5856, 0x3FE8A23460000000
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5856, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5860 = fmul fast float %5858, %5845
  %5861 = fmul fast float %5859, 0x3FF279A740000000
  %5862 = fadd fast float %5861, -1.000000e+00
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %66, float %5851, float %5852, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 25, float %5863)  ; Rsqrt(value)
  %5865 = fmul fast float %5864, %5851
  %5866 = fmul fast float %5864, %5852
  %5867 = fmul fast float %5864, %66
  %5868 = fmul fast float %5862, %5862
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fmul fast float %5859, 0x40005F8BE0000000
  %5871 = fsub fast float 0x400C5BF8A0000000, %5870
  %5872 = fdiv fast float %5860, %5871
  %5873 = fmul fast float %5872, 0x3FEE31C3C0000000
  %5874 = fmul fast float %5873, %5869
  %5875 = fmul fast float %5859, 0x3FDACB7480000000
  %5876 = fadd fast float %5875, 0xBFD7347680000000
  %5877 = fmul fast float %5876, %5872
  %5878 = fmul fast float %5877, %5869
  br label %5879

; <label>:5879                                    ; preds = %5850, %5822
  %5880 = phi float [ %5865, %5850 ], [ 0.000000e+00, %5822 ]
  %5881 = phi float [ %5866, %5850 ], [ 0.000000e+00, %5822 ]
  %5882 = phi float [ %5867, %5850 ], [ 0.000000e+00, %5822 ]
  %5883 = phi float [ %5874, %5850 ], [ 0.000000e+00, %5822 ]
  %5884 = phi float [ %5878, %5850 ], [ 0.000000e+00, %5822 ]
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fmul fast float %5885, 0x3FDF454380000000
  %5887 = fmul fast float %5885, %5885
  %5888 = fmul fast float %5887, 0x3FEE471020000000
  %5889 = fadd fast float %5888, 0xBFD42F6020000000
  %5890 = fmul fast float %5845, 0x3FD20DD760000000
  %5891 = fmul fast float %5889, %5884
  %5892 = fadd fast float %5891, %5890
  %5893 = fmul fast float %5886, %5883
  %5894 = fadd fast float %5892, %5893
  %5895 = fsub fast float %5892, %5893
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = fmul fast float %5896, 0x3FDF454380000000
  %5898 = fmul fast float %5896, %5896
  %5899 = fmul fast float %5898, 0x3FEE471020000000
  %5900 = fadd fast float %5899, 0xBFD42F6020000000
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5883, float %5884, float 0x3FD20DD760000000, float %5897, float %5900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5780, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call float @dx.op.binary.f32(i32 35, float %5837, float 0.000000e+00)  ; FMax(a,b)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5894, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5781, float 0.000000e+00)  ; FMax(a,b)
  %5906 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5787, float 0.000000e+00)  ; FMax(a,b)
  %5909 = call float @dx.op.binary.f32(i32 35, float %5844, float 0.000000e+00)  ; FMax(a,b)
  %5910 = call float @dx.op.binary.f32(i32 35, float %5901, float 0.000000e+00)  ; FMax(a,b)
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = call float @dx.op.binary.f32(i32 36, float %5701, float %5912)  ; FMin(a,b)
  %5914 = fsub fast float 1.000000e+00, %5724
  %5915 = fmul fast float %5913, %5914
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = call float @dx.op.binary.f32(i32 36, float %5702, float %5912)  ; FMin(a,b)
  %5921 = fmul fast float %5920, %5914
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = bitcast float %5922 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = call float @dx.op.binary.f32(i32 36, float %5703, float %5912)  ; FMin(a,b)
  %5927 = fmul fast float %5926, %5914
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = bitcast float %5928 to i32
  %5930 = sub nsw i32 2129859010, %5929
  %5931 = bitcast i32 %5930 to float
  %5932 = fmul fast float %5902, %5724
  %5933 = fmul fast float %5932, %5919
  %5934 = fmul fast float %5903, %5724
  %5935 = fmul fast float %5934, %5925
  %5936 = fmul fast float %5904, %5724
  %5937 = fmul fast float %5936, %5931
  %5938 = call float @dx.op.binary.f32(i32 36, float %5704, float %5912)  ; FMin(a,b)
  %5939 = fmul fast float %5938, %5914
  %5940 = fsub fast float 1.000000e+00, %5939
  %5941 = bitcast float %5940 to i32
  %5942 = sub nsw i32 2129859010, %5941
  %5943 = bitcast i32 %5942 to float
  %5944 = call float @dx.op.binary.f32(i32 36, float %5705, float %5912)  ; FMin(a,b)
  %5945 = fmul fast float %5944, %5914
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = bitcast float %5946 to i32
  %5948 = sub nsw i32 2129859010, %5947
  %5949 = bitcast i32 %5948 to float
  %5950 = call float @dx.op.binary.f32(i32 36, float %5713, float %5912)  ; FMin(a,b)
  %5951 = fmul fast float %5950, %5914
  %5952 = fsub fast float 1.000000e+00, %5951
  %5953 = bitcast float %5952 to i32
  %5954 = sub nsw i32 2129859010, %5953
  %5955 = bitcast i32 %5954 to float
  %5956 = fmul fast float %5908, %5724
  %5957 = fmul fast float %5956, %5943
  %5958 = fmul fast float %5909, %5724
  %5959 = fmul fast float %5958, %5949
  %5960 = fmul fast float %5910, %5724
  %5961 = fmul fast float %5960, %5955
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5935, float %5937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = select i1 %218, float 0.000000e+00, float %5933
  %5964 = select i1 %218, float %5962, float %5935
  %5965 = select i1 %218, float 0.000000e+00, float %5937
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5906, float %5907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = select i1 %218, float 0.000000e+00, float %5905
  %5968 = select i1 %218, float %5966, float %5906
  %5969 = select i1 %218, float 0.000000e+00, float %5907
  %5970 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5959, float %5961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = select i1 %218, float 0.000000e+00, float %5957
  %5972 = select i1 %218, float %5970, float %5959
  %5973 = select i1 %218, float 0.000000e+00, float %5961
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5976 = fsub fast float %92, %5975
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = fmul fast float %5976, %5977
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = fmul fast float %5729, 0x4071A18460000000
  %5981 = fadd fast float %5980, 0x3F0FFB4800000000
  %5982 = call float @dx.op.unary.f32(i32 23, float %5981)  ; Log(value)
  %5983 = fadd fast float %5982, 0x4006B851E0000000
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 3
  %5987 = fsub fast float %5985, %5983
  %5988 = fcmp fast ogt float %5987, 0.000000e+00
  %5989 = fcmp fast olt float %5987, 0.000000e+00
  %5990 = zext i1 %5988 to i32
  %5991 = zext i1 %5989 to i32
  %5992 = sub nsw i32 %5990, %5991
  %5993 = sitofp i32 %5992 to float
  %5994 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5995 = fsub fast float %5994, %5986
  %5996 = call float @dx.op.binary.f32(i32 35, float %5995, float 0.000000e+00)  ; FMax(a,b)
  %5997 = fmul fast float %5993, %5996
  %5998 = fadd fast float %5982, %5997
  %5999 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6000 = fmul fast float %5999, 0x3F50624DE0000000
  %6001 = fcmp fast oeq float %5730, 0.000000e+00
  %6002 = fdiv fast float 0x400C5BF880000000, %5729
  %6003 = fmul fast float %6000, %6002
  %6004 = select i1 %6001, float 1.000000e+00, float %6003
  %6005 = call float @dx.op.binary.f32(i32 35, float %6004, float 1.000000e+00)  ; FMax(a,b)
  %6006 = fadd fast float %6005, -1.000000e+00
  %6007 = fmul fast float %6006, %5979
  %6008 = fadd fast float %6007, 1.000000e+00
  %6009 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6010 = fmul fast float %6009, %5963
  %6011 = fmul fast float %6009, %5964
  %6012 = fmul fast float %6009, %5965
  %6013 = fmul fast float %4419, %4419
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fmul fast float %5715, 9.843750e-01
  %6016 = fmul fast float %5710, 9.843750e-01
  %6017 = fadd fast float %6015, 7.812500e-03
  %6018 = fadd fast float %6016, 7.812500e-03
  %6019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6017, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = extractvalue %dx.types.ResRet.f32 %6019, 3
  %6024 = fsub fast float 1.000000e+00, %6014
  %6025 = fsub fast float %6022, %6020
  %6026 = fsub fast float %6023, %6021
  %6027 = fmul fast float %6025, %6024
  %6028 = fmul fast float %6026, %6024
  %6029 = fadd fast float %6027, %6020
  %6030 = fadd fast float %6028, %6021
  %6031 = fmul fast float %6029, %5704
  %6032 = fmul fast float %6029, %5705
  %6033 = fmul fast float %6029, %5713
  %6034 = fadd fast float %6031, %6030
  %6035 = fadd fast float %6032, %6030
  %6036 = fadd fast float %6033, %6030
  %6037 = fcmp fast ogt float %5069, 0.000000e+00
  br i1 %6037, label %6038, label %6064

; <label>:6038                                    ; preds = %5879
  %6039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %5715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6040 = extractvalue %dx.types.ResRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.ResRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.ResRet.f32 %6039, 2
  %6043 = fadd fast float %6040, -5.000000e-01
  %6044 = fadd fast float %6041, -5.000000e-01
  %6045 = fadd fast float %6042, -5.000000e-01
  %6046 = fsub fast float 1.000000e+00, %5704
  %6047 = fsub fast float 1.000000e+00, %5705
  %6048 = fsub fast float 1.000000e+00, %5713
  %6049 = fmul fast float %5704, 4.000000e+00
  %6050 = fmul fast float %6049, %6046
  %6051 = fmul fast float %6050, %6043
  %6052 = fmul fast float %5705, 4.000000e+00
  %6053 = fmul fast float %6052, %6047
  %6054 = fmul fast float %6053, %6044
  %6055 = fmul fast float %5713, 4.000000e+00
  %6056 = fmul fast float %6055, %6048
  %6057 = fmul fast float %6056, %6045
  %6058 = fadd fast float %6051, %6034
  %6059 = fadd fast float %6054, %6035
  %6060 = fadd fast float %6057, %6036
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  br label %6064

; <label>:6064                                    ; preds = %6038, %5879
  %6065 = phi float [ %6061, %6038 ], [ %6034, %5879 ]
  %6066 = phi float [ %6062, %6038 ], [ %6035, %5879 ]
  %6067 = phi float [ %6063, %6038 ], [ %6036, %5879 ]
  %6068 = call float @dx.op.binary.f32(i32 35, float %6066, float %6067)  ; FMax(a,b)
  %6069 = call float @dx.op.binary.f32(i32 35, float %6065, float %6068)  ; FMax(a,b)
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = fmul fast float %156, %156
  %6072 = fmul fast float %157, %157
  %6073 = fadd fast float %6072, %6071
  %6074 = fmul fast float %158, %158
  %6075 = fadd fast float %6073, %6074
  %6076 = call float @dx.op.unary.f32(i32 24, float %6075)  ; Sqrt(value)
  %6077 = fsub fast float %6076, %5975
  %6078 = fmul fast float %6077, %5977
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = extractvalue %dx.types.CBufRet.f32 %5974, 0
  %6081 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %6082 = fmul fast float %6079, %57
  %6083 = fmul fast float %6082, %6080
  %6084 = fmul fast float %6082, %6081
  %6085 = fadd fast float %6084, 1.000000e+00
  %6086 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fcmp fast ogt float %6086, 0x3E7FF19E20000000
  %6088 = fdiv fast float 1.000000e+00, %6086
  %6089 = select i1 %6087, float %6088, float 0.000000e+00
  %6090 = fmul fast float %6089, %5701
  %6091 = fmul fast float %6089, %5702
  %6092 = fmul fast float %6089, %5703
  %6093 = fadd fast float %6090, -1.000000e+00
  %6094 = fadd fast float %6091, -1.000000e+00
  %6095 = fadd fast float %6092, -1.000000e+00
  %6096 = fmul fast float %6093, 5.000000e-01
  %6097 = fmul fast float %6094, 5.000000e-01
  %6098 = fmul fast float %6095, 5.000000e-01
  %6099 = fadd fast float %6096, 1.000000e+00
  %6100 = fadd fast float %6097, 1.000000e+00
  %6101 = fadd fast float %6098, 1.000000e+00
  %6102 = fadd fast float %6083, %5070
  %6103 = call float @dx.op.binary.f32(i32 35, float %5715, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6104 = fdiv fast float %4419, %6103
  %6105 = fcmp fast olt float %5119, 1.270000e+02
  %6106 = fcmp fast olt float %5120, 1.270000e+02
  %6107 = fcmp fast olt float %5121, 1.270000e+02
  %6108 = fmul fast float %5119, 0xBFF7154760000000
  %6109 = fmul fast float %6108, %6104
  %6110 = fmul fast float %5120, 0xBFF7154760000000
  %6111 = fmul fast float %6110, %6104
  %6112 = fmul fast float %5121, 0xBFF7154760000000
  %6113 = fmul fast float %6112, %6104
  %6114 = call float @dx.op.unary.f32(i32 21, float %6109)  ; Exp(value)
  %6115 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6116 = call float @dx.op.unary.f32(i32 21, float %6113)  ; Exp(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = select i1 %6105, float %6117, float 0.000000e+00
  %6121 = select i1 %6106, float %6118, float 0.000000e+00
  %6122 = select i1 %6107, float %6119, float 0.000000e+00
  %6123 = fmul fast float %6120, %6070
  %6124 = fmul fast float %6121, %6070
  %6125 = fmul fast float %6122, %6070
  %6126 = fadd fast float %6123, -1.000000e+00
  %6127 = fadd fast float %6124, -1.000000e+00
  %6128 = fadd fast float %6125, -1.000000e+00
  %6129 = fmul fast float %6126, %5066
  %6130 = fmul fast float %6127, %5066
  %6131 = fmul fast float %6128, %5066
  %6132 = fmul fast float %6065, %5971
  %6133 = fmul fast float %6066, %5972
  %6134 = fmul fast float %6067, %5973
  %6135 = fsub fast float 1.000000e+00, %5715
  %6136 = bitcast float %6135 to i32
  %6137 = sitofp i32 %6136 to float
  %6138 = fmul fast float %6137, 5.000000e+00
  %6139 = fadd fast float %6138, 0xC1EFBF8940000000
  %6140 = fptosi float %6139 to i32
  %6141 = bitcast i32 %6140 to float
  %6142 = fmul fast float %6102, %6141
  %6143 = fmul fast float %6070, %6010
  %6144 = fmul fast float %6143, %6142
  %6145 = fmul fast float %6144, %6099
  %6146 = fmul fast float %6070, %6011
  %6147 = fmul fast float %6146, %6142
  %6148 = fmul fast float %6147, %6100
  %6149 = fmul fast float %6070, %6012
  %6150 = fmul fast float %6149, %6142
  %6151 = fmul fast float %6150, %6101
  %6152 = fadd fast float %6132, %5056
  %6153 = fadd fast float %6152, %6145
  %6154 = fmul fast float %6153, %5066
  %6155 = fadd fast float %6133, %5057
  %6156 = fadd fast float %6155, %6148
  %6157 = fmul fast float %6156, %5066
  %6158 = fadd fast float %6134, %5058
  %6159 = fadd fast float %6158, %6151
  %6160 = fmul fast float %6159, %5066
  %6161 = fmul fast float %5705, 0x4012D0A400000000
  %6162 = fadd fast float %6131, 1.000000e+00
  %6163 = fadd fast float %6130, 1.000000e+00
  %6164 = fadd fast float %6129, 1.000000e+00
  %6165 = fmul fast float %6149, %6085
  %6166 = fmul fast float %6146, %6085
  %6167 = fmul fast float %6143, %6085
  %6168 = fsub fast float 1.000000e+00, %5710
  %6169 = fmul fast float %6168, %5066
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = fsub fast float 1.000000e+00, %6171
  %6173 = fadd fast float %6161, 0x3FDB6377A0000000
  %6174 = fmul fast float %6172, %6173
  %6175 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6176 = fadd fast float %6174, %6175
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = call float @dx.op.binary.f32(i32 35, float %6177, float 0x3F847AE140000000)  ; FMax(a,b)
  %6179 = fmul fast float %6178, %6178
  %6180 = fmul fast float %6179, %6179
  %6181 = fmul fast float %6180, 0xC00A935000000000
  %6182 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6183 = fsub fast float 1.000000e+00, %6182
  %6184 = fmul fast float %6164, %5967
  %6185 = fmul fast float %6184, %6183
  %6186 = fmul fast float %6163, %5968
  %6187 = fmul fast float %6186, %6183
  %6188 = fmul fast float %6162, %5969
  %6189 = fmul fast float %6188, %6183
  %6190 = fadd fast float %6185, %6167
  %6191 = fmul fast float %6190, %5066
  %6192 = fadd fast float %6187, %6166
  %6193 = fmul fast float %6192, %5066
  %6194 = fadd fast float %6189, %6165
  %6195 = fmul fast float %6194, %5066
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6198 = fcmp fast oeq float %6197, 0.000000e+00
  br i1 %6198, label %7403, label %6199

; <label>:6199                                    ; preds = %6064
  %6200 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6202 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6210 = call float @dx.op.dot3.f32(i32 55, float %6204, float %6205, float %6206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = select i1 %218, float %6208, float %6204
  %6212 = select i1 %218, float %6210, float %6205
  %6213 = select i1 %218, float %6209, float %6206
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6216 = fmul fast float %6215, %108
  %6217 = fmul fast float %6215, %109
  %6218 = fmul fast float %6215, %110
  %6219 = fadd fast float %6216, %156
  %6220 = fadd fast float %6217, %157
  %6221 = fadd fast float %6218, %158
  %6222 = fcmp fast olt float %6197, 0.000000e+00
  br i1 %6222, label %6847, label %6223

; <label>:6223                                    ; preds = %6199
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6233 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6239 = fmul fast float %6225, %6219
  %6240 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6226, float %6239)  ; FMad(a,b,c)
  %6241 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6227, float %6240)  ; FMad(a,b,c)
  %6242 = fadd fast float %6241, %6228
  %6243 = fmul fast float %6230, %6219
  %6244 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6231, float %6243)  ; FMad(a,b,c)
  %6245 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6232, float %6244)  ; FMad(a,b,c)
  %6246 = fadd fast float %6245, %6233
  %6247 = fmul fast float %6235, %6219
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6236, float %6247)  ; FMad(a,b,c)
  %6249 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6237, float %6248)  ; FMad(a,b,c)
  %6250 = fadd fast float %6249, %6238
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6255 = fmul fast float %6254, %6242
  %6256 = fmul fast float %6254, %6246
  %6257 = fadd fast float %6255, %6252
  %6258 = fadd fast float %6256, %6253
  %6259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.CBufRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.CBufRet.f32 %6259, 3
  %6263 = fmul fast float %6262, %6242
  %6264 = fmul fast float %6262, %6246
  %6265 = fadd fast float %6263, %6260
  %6266 = fadd fast float %6264, %6261
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6269 = fsub fast float %6268, %6250
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = fmul fast float %6269, %6270
  %6272 = fsub fast float 1.000000e+00, %6271
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6259, 2
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6277 = fadd fast float %6276, %6274
  %6278 = fcmp fast ogt float %6277, 0.000000e+00
  br i1 %6278, label %6279, label %6303

; <label>:6279                                    ; preds = %6223
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = fsub fast float %6265, %6281
  %6284 = fsub fast float %6266, %6282
  %6285 = fcmp fast olt float %6283, 0.000000e+00
  %6286 = fcmp fast olt float %6284, 0.000000e+00
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = extractvalue %dx.types.CBufRet.f32 %6287, 3
  %6292 = select i1 %6285, float %6288, float %6290
  %6293 = select i1 %6286, float %6289, float %6291
  %6294 = fmul fast float %6292, %6283
  %6295 = fmul fast float %6293, %6284
  %6296 = call float @dx.op.unary.f32(i32 6, float %6294)  ; FAbs(value)
  %6297 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6299 = call float @dx.op.binary.f32(i32 35, float %6296, float %6297)  ; FMax(a,b)
  %6300 = fsub fast float %6298, %6299
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = fmul fast float %6301, %6273
  br label %6303

; <label>:6303                                    ; preds = %6279, %6223
  %6304 = phi float [ %6302, %6279 ], [ 0.000000e+00, %6223 ]
  %6305 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6307 = fadd fast float %6306, %6305
  %6308 = fcmp fast ogt float %6307, 0.000000e+00
  %6309 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  br i1 %6308, label %6310, label %6333

; <label>:6310                                    ; preds = %6303
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = fsub fast float %6257, %6312
  %6315 = fsub fast float %6258, %6313
  %6316 = fcmp fast olt float %6314, 0.000000e+00
  %6317 = fcmp fast olt float %6315, 0.000000e+00
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6322 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6323 = select i1 %6316, float %6319, float %6321
  %6324 = select i1 %6317, float %6320, float %6322
  %6325 = fmul fast float %6323, %6314
  %6326 = fmul fast float %6324, %6315
  %6327 = call float @dx.op.unary.f32(i32 6, float %6325)  ; FAbs(value)
  %6328 = call float @dx.op.unary.f32(i32 6, float %6326)  ; FAbs(value)
  %6329 = call float @dx.op.binary.f32(i32 35, float %6327, float %6328)  ; FMax(a,b)
  %6330 = fsub fast float %6309, %6329
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = fmul fast float %6331, %6273
  br label %6333

; <label>:6333                                    ; preds = %6310, %6303
  %6334 = phi float [ %6332, %6310 ], [ 0.000000e+00, %6303 ]
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6337 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6341 = fsub fast float %6242, %6339
  %6342 = fsub fast float %6246, %6340
  %6343 = fcmp fast olt float %6341, 0.000000e+00
  %6344 = fcmp fast olt float %6342, 0.000000e+00
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6345, 3
  %6350 = select i1 %6343, float %6346, float %6348
  %6351 = select i1 %6344, float %6347, float %6349
  %6352 = fmul fast float %6350, %6341
  %6353 = fmul fast float %6351, %6342
  %6354 = call float @dx.op.unary.f32(i32 6, float %6352)  ; FAbs(value)
  %6355 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6356 = call float @dx.op.binary.f32(i32 35, float %6354, float %6355)  ; FMax(a,b)
  %6357 = fsub fast float %6309, %6356
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6359 = call float @dx.op.binary.f32(i32 36, float %6358, float %6337)  ; FMin(a,b)
  %6360 = fmul fast float %6359, %6273
  %6361 = fsub fast float %6334, %6360
  %6362 = fsub fast float %6304, %6334
  %6363 = fsub fast float %6362, %6360
  %6364 = call float @dx.op.binary.f32(i32 35, float %6334, float %6304)  ; FMax(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6360, float %6364)  ; FMax(a,b)
  %6366 = fcmp fast olt float %6365, 1.000000e+00
  br i1 %6366, label %6367, label %6765, !dx.controlflow.hints !96

; <label>:6367                                    ; preds = %6333
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = fcmp fast une float %6369, 0.000000e+00
  br i1 %6370, label %6371, label %6765, !dx.controlflow.hints !97

; <label>:6371                                    ; preds = %6367
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = extractvalue %dx.types.CBufRet.f32 %6377, 3
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6386 = extractvalue %dx.types.CBufRet.f32 %6382, 3
  %6387 = fmul fast float %6373, %6219
  %6388 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6374, float %6387)  ; FMad(a,b,c)
  %6389 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6375, float %6388)  ; FMad(a,b,c)
  %6390 = fadd fast float %6389, %6376
  %6391 = fmul fast float %6378, %6219
  %6392 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6379, float %6391)  ; FMad(a,b,c)
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6380, float %6392)  ; FMad(a,b,c)
  %6394 = fadd fast float %6393, %6381
  %6395 = fmul fast float %6383, %6219
  %6396 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6384, float %6395)  ; FMad(a,b,c)
  %6397 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6385, float %6396)  ; FMad(a,b,c)
  %6398 = fadd fast float %6397, %6386
  %6399 = fcmp fast oge float %6390, 1.000000e+00
  %6400 = fcmp fast oge float %6394, 1.000000e+00
  %6401 = or i1 %6399, %6400
  %6402 = fcmp fast olt float %6390, 0.000000e+00
  %6403 = fcmp fast olt float %6394, 0.000000e+00
  %6404 = or i1 %6402, %6403
  %6405 = or i1 %6401, %6404
  br i1 %6405, label %6765, label %6406, !dx.controlflow.hints !98

; <label>:6406                                    ; preds = %6371
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.i32 %6411, 2
  %6413 = uitofp i32 %6412 to float
  %6414 = extractvalue %dx.types.CBufRet.i32 %6411, 3
  %6415 = uitofp i32 %6414 to float
  %6416 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6417 = fmul fast float %6416, 2.000000e+00
  %6418 = fsub fast float %6390, %6408
  %6419 = fsub fast float %6394, %6409
  %6420 = fmul fast float %6417, %6418
  %6421 = fmul fast float %6417, %6419
  %6422 = fdiv fast float 1.000000e+00, %6202
  %6423 = fmul fast float %6421, %6422
  %6424 = call float @dx.op.unary.f32(i32 6, float %6423)  ; FAbs(value)
  %6425 = fmul fast float %6410, %6221
  %6426 = fmul fast float %6425, %6417
  %6427 = call float @dx.op.unary.f32(i32 6, float %6426)  ; FAbs(value)
  %6428 = call float @dx.op.unary.f32(i32 6, float %6420)  ; FAbs(value)
  %6429 = call float @dx.op.binary.f32(i32 35, float %6427, float %6424)  ; FMax(a,b)
  %6430 = call float @dx.op.binary.f32(i32 35, float %6428, float %6429)  ; FMax(a,b)
  %6431 = fmul fast float %6430, 2.000000e+00
  %6432 = call float @dx.op.unary.f32(i32 23, float %6431)  ; Log(value)
  %6433 = call float @dx.op.binary.f32(i32 35, float %6432, float %6413)  ; FMax(a,b)
  %6434 = call float @dx.op.unary.f32(i32 22, float %6433)  ; Frc(value)
  %6435 = fadd fast float %6434, 0xBFEA666660000000
  %6436 = fmul fast float %6435, 8.000000e+00
  %6437 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  %6438 = call float @dx.op.unary.f32(i32 27, float %6433)  ; Round_ni(value)
  %6439 = fadd fast float %6438, %6437
  %6440 = call float @dx.op.binary.f32(i32 36, float %6439, float %6415)  ; FMin(a,b)
  %6441 = call float @dx.op.unary.f32(i32 27, float %6440)  ; Round_ni(value)
  %6442 = fsub fast float -0.000000e+00, %6441
  %6443 = call float @dx.op.unary.f32(i32 21, float %6442)  ; Exp(value)
  %6444 = fmul fast float %6443, %6417
  %6445 = fmul fast float %6444, %6390
  %6446 = fmul fast float %6444, %6394
  %6447 = fmul fast float %6445, 2.500000e-01
  %6448 = fmul fast float %6446, 2.500000e-01
  %6449 = fadd fast float %6447, 5.000000e-01
  %6450 = fadd fast float %6448, 5.000000e-01
  %6451 = fsub fast float %6415, %6413
  %6452 = fptoui float %6451 to i32
  %6453 = add i32 %6452, 320
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6453)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6457 = fcmp fast une float %6440, %6415
  %6458 = fsub fast float %6390, %6455
  %6459 = fsub fast float %6394, %6456
  %6460 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6461 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6462 = fmul fast float %6460, %6444
  %6463 = fmul fast float %6461, %6444
  %6464 = fcmp fast olt float %6462, 1.000000e+00
  %6465 = fcmp fast olt float %6463, 1.000000e+00
  %6466 = and i1 %6464, %6465
  %6467 = or i1 %6457, %6466
  br i1 %6467, label %6468, label %6765, !dx.controlflow.hints !99

; <label>:6468                                    ; preds = %6406
  %6469 = fmul fast float %6446, 5.000000e-01
  %6470 = fmul fast float %6445, 5.000000e-01
  %6471 = fadd fast float %6469, 5.000000e-01
  %6472 = fadd fast float %6470, 5.000000e-01
  %6473 = sitofp i32 %6412 to float
  %6474 = fsub fast float %6440, %6473
  %6475 = call float @dx.op.unary.f32(i32 27, float %6474)  ; Round_ni(value)
  %6476 = call float @dx.op.unary.f32(i32 22, float %6440)  ; Frc(value)
  %6477 = call float @dx.op.unary.f32(i32 22, float %6472)  ; Frc(value)
  %6478 = call float @dx.op.unary.f32(i32 22, float %6471)  ; Frc(value)
  %6479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6477, float %6478, float %6475, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6479, 3
  %6484 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %6484, label %6485, label %6506, !dx.controlflow.hints !100

; <label>:6485                                    ; preds = %6468
  %6486 = fadd fast float %6475, 1.000000e+00
  %6487 = call float @dx.op.unary.f32(i32 22, float %6449)  ; Frc(value)
  %6488 = call float @dx.op.unary.f32(i32 22, float %6450)  ; Frc(value)
  %6489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6487, float %6488, float %6486, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.ResRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.ResRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.ResRet.f32 %6489, 3
  %6494 = fsub fast float %6490, %6480
  %6495 = fsub fast float %6491, %6481
  %6496 = fsub fast float %6492, %6482
  %6497 = fsub fast float %6493, %6483
  %6498 = fmul fast float %6494, %6476
  %6499 = fmul fast float %6495, %6476
  %6500 = fmul fast float %6496, %6476
  %6501 = fmul fast float %6497, %6476
  %6502 = fadd fast float %6498, %6480
  %6503 = fadd fast float %6499, %6481
  %6504 = fadd fast float %6500, %6482
  %6505 = fadd fast float %6501, %6483
  br label %6506

; <label>:6506                                    ; preds = %6485, %6468
  %6507 = phi float [ %6502, %6485 ], [ %6480, %6468 ]
  %6508 = phi float [ %6503, %6485 ], [ %6481, %6468 ]
  %6509 = phi float [ %6504, %6485 ], [ %6482, %6468 ]
  %6510 = phi float [ %6505, %6485 ], [ %6483, %6468 ]
  %6511 = fadd fast float %6507, -5.000000e-01
  %6512 = fadd fast float %6509, -5.000000e-01
  %6513 = fmul fast float %6511, 0xBFD5555560000000
  %6514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6512, float %6513)  ; FMad(a,b,c)
  %6515 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6508, float 0.000000e+00)  ; FMad(a,b,c)
  %6516 = fadd fast float %6515, %6510
  %6517 = fmul fast float %6511, -7.500000e-01
  %6518 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6512, float %6517)  ; FMad(a,b,c)
  %6519 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6508, float 0.000000e+00)  ; FMad(a,b,c)
  %6520 = fadd fast float %6519, %6510
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.CBufRet.f32 %6523, 2
  %6527 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6528 = fsub fast float %6524, %6514
  %6529 = fsub fast float %6525, %6516
  %6530 = fsub fast float %6526, %6518
  %6531 = fsub fast float %6527, %6520
  %6532 = fmul fast float %6528, %6522
  %6533 = fmul fast float %6529, %6522
  %6534 = fmul fast float %6530, %6522
  %6535 = fmul fast float %6531, %6522
  %6536 = fadd fast float %6532, %6514
  %6537 = fadd fast float %6533, %6516
  %6538 = fadd fast float %6534, %6518
  %6539 = fadd fast float %6535, %6520
  %6540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6541 = extractvalue %dx.types.ResRet.i32 %6540, 0
  %6542 = and i32 %6541, 536870911
  %6543 = uitofp i32 %6542 to float
  %6544 = fmul fast float %6543, %6390
  %6545 = fmul fast float %6543, %6394
  %6546 = fptoui float %6544 to i32
  %6547 = fptoui float %6545 to i32
  %6548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6549 = extractvalue %dx.types.ResRet.i32 %6548, 0
  %6550 = and i32 %6549, 31
  %6551 = lshr i32 %6546, %6550
  %6552 = lshr i32 %6547, %6550
  %6553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6554 = extractvalue %dx.types.ResRet.i32 %6553, 0
  %6555 = and i32 %6554, 31
  %6556 = shl i32 1, %6555
  %6557 = call i32 @dx.op.binary.i32(i32 40, i32 %6556, i32 4)  ; UMin(a,b)
  %6558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6559 = extractvalue %dx.types.ResRet.i32 %6558, 0
  %6560 = extractvalue %dx.types.ResRet.i32 %6558, 1
  %6561 = icmp eq i32 %6557, 0
  br i1 %6561, label %6603, label %6562

; <label>:6562                                    ; preds = %6506
  br label %6563

; <label>:6563                                    ; preds = %6591, %6562
  %6564 = phi i32 [ %6594, %6591 ], [ 0, %6562 ]
  %6565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6566 = extractvalue %dx.types.ResRet.i32 %6565, 0
  %6567 = lshr i32 %6566, 16
  %6568 = and i32 %6567, 31
  %6569 = shl i32 %6552, %6568
  %6570 = add i32 %6569, %6551
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = and i32 %6572, 31
  %6574 = shl i32 %6570, %6573
  %6575 = add i32 %6574, %6564
  %6576 = shl i32 %6575, 2
  %6577 = add i32 %6576, 32
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = icmp slt i32 %6579, 0
  %6581 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6564
  %6582 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6564
  %6583 = bitcast float* %6581 to i32*
  %6584 = bitcast float* %6582 to i32*
  br i1 %6580, label %6585, label %6591

; <label>:6585                                    ; preds = %6563
  %6586 = and i32 %6579, 1073741823
  %6587 = add nuw nsw i32 %6586, 20
  %6588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6587, i32 undef)  ; BufferLoad(srv,index,wot)
  %6589 = extractvalue %dx.types.ResRet.i32 %6588, 0
  %6590 = extractvalue %dx.types.ResRet.i32 %6588, 1
  br label %6591

; <label>:6591                                    ; preds = %6585, %6563
  %6592 = phi i32 [ %6589, %6585 ], [ %6559, %6563 ]
  %6593 = phi i32 [ %6590, %6585 ], [ %6560, %6563 ]
  store i32 %6592, i32* %6583, align 4
  store i32 %6593, i32* %6584, align 4
  %6594 = add nuw i32 %6564, 1
  %6595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.i32 %6595, 2
  %6597 = icmp eq i32 %6596, 0
  %6598 = icmp ugt i32 %6579, -1073741825
  %6599 = and i1 %6598, %6597
  %6600 = icmp ult i32 %6594, %6557
  %6601 = and i1 %6599, %6600
  br i1 %6601, label %6563, label %6602

; <label>:6602                                    ; preds = %6591
  br label %6603

; <label>:6603                                    ; preds = %6602, %6506
  %6604 = phi i32 [ 0, %6506 ], [ %6594, %6602 ]
  %6605 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6606 = fptoui float %6605 to i32
  %6607 = icmp eq i32 %6606, 0
  br i1 %6607, label %6659, label %6608

; <label>:6608                                    ; preds = %6603
  br label %6609

; <label>:6609                                    ; preds = %6654, %6608
  %6610 = phi i32 [ %6655, %6654 ], [ %6604, %6608 ]
  %6611 = phi i32 [ %6656, %6654 ], [ 0, %6608 ]
  %6612 = lshr i32 %6611, 2
  %6613 = and i32 %6611, 3
  %6614 = add nuw nsw i32 %6612, 83
  %6615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6614)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.i32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.i32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.i32 %6615, 2
  %6619 = extractvalue %dx.types.CBufRet.i32 %6615, 3
  %6620 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6616, i32* %6620, align 4
  %6621 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6617, i32* %6621, align 4
  %6622 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6618, i32* %6622, align 4
  %6623 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6619, i32* %6623, align 4
  %6624 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6613
  %6625 = load i32, i32* %6624, align 4, !tbaa !101, !noalias !105
  %6626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.i32 %6626, 0
  %6628 = lshr i32 %6627, 16
  %6629 = and i32 %6628, 31
  %6630 = shl i32 %6552, %6629
  %6631 = add i32 %6630, %6551
  %6632 = shl i32 %6631, 2
  %6633 = add i32 %6632, %6625
  %6634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6633, i32 undef)  ; BufferLoad(srv,index,wot)
  %6635 = extractvalue %dx.types.ResRet.i32 %6634, 0
  %6636 = icmp eq i32 %6635, 0
  br i1 %6636, label %6654, label %6637

; <label>:6637                                    ; preds = %6609
  %6638 = icmp slt i32 %6635, 0
  %6639 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6610
  %6640 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6610
  %6641 = bitcast float* %6639 to i32*
  %6642 = bitcast float* %6640 to i32*
  br i1 %6638, label %6643, label %6650

; <label>:6643                                    ; preds = %6637
  %6644 = and i32 %6635, 1073741823
  %6645 = add i32 %6625, 20
  %6646 = add i32 %6645, %6644
  %6647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6646, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.i32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.i32 %6647, 1
  br label %6650

; <label>:6650                                    ; preds = %6643, %6637
  %6651 = phi i32 [ %6648, %6643 ], [ %6559, %6637 ]
  %6652 = phi i32 [ %6649, %6643 ], [ %6560, %6637 ]
  store i32 %6651, i32* %6641, align 4
  store i32 %6652, i32* %6642, align 4
  %6653 = add i32 %6610, 1
  br label %6654

; <label>:6654                                    ; preds = %6650, %6609
  %6655 = phi i32 [ %6610, %6609 ], [ %6653, %6650 ]
  %6656 = add nuw i32 %6611, 1
  %6657 = icmp eq i32 %6656, %6606
  br i1 %6657, label %6658, label %6609

; <label>:6658                                    ; preds = %6654
  br label %6659

; <label>:6659                                    ; preds = %6658, %6603
  %6660 = phi i32 [ %6604, %6603 ], [ %6655, %6658 ]
  %6661 = icmp eq i32 %6660, 1
  %6662 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  %6663 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  br i1 %6661, label %6664, label %6667

; <label>:6664                                    ; preds = %6659
  %6665 = load float, float* %6662, align 4
  %6666 = load float, float* %6663, align 4
  br label %6694

; <label>:6667                                    ; preds = %6659
  %6668 = load float, float* %6662, align 4
  %6669 = load float, float* %6663, align 4
  %6670 = fdiv fast float 1.000000e+00, %6669
  %6671 = fsub fast float %6668, %6670
  %6672 = icmp ugt i32 %6660, 1
  br i1 %6672, label %6673, label %6689

; <label>:6673                                    ; preds = %6667
  br label %6674

; <label>:6674                                    ; preds = %6674, %6673
  %6675 = phi float [ %6684, %6674 ], [ %6671, %6673 ]
  %6676 = phi float [ %6685, %6674 ], [ %6668, %6673 ]
  %6677 = phi i32 [ %6686, %6674 ], [ 1, %6673 ]
  %6678 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6677
  %6679 = load float, float* %6678, align 4
  %6680 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6677
  %6681 = load float, float* %6680, align 4
  %6682 = fdiv fast float 1.000000e+00, %6681
  %6683 = fsub fast float %6679, %6682
  %6684 = call float @dx.op.binary.f32(i32 36, float %6675, float %6683)  ; FMin(a,b)
  %6685 = call float @dx.op.binary.f32(i32 35, float %6676, float %6679)  ; FMax(a,b)
  %6686 = add nuw i32 %6677, 1
  %6687 = icmp eq i32 %6686, %6660
  br i1 %6687, label %6688, label %6674

; <label>:6688                                    ; preds = %6674
  br label %6689

; <label>:6689                                    ; preds = %6688, %6667
  %6690 = phi float [ %6671, %6667 ], [ %6684, %6688 ]
  %6691 = phi float [ %6668, %6667 ], [ %6685, %6688 ]
  %6692 = fsub fast float %6691, %6690
  %6693 = fdiv fast float 1.000000e+00, %6692
  br label %6694

; <label>:6694                                    ; preds = %6689, %6664
  %6695 = phi float [ %6665, %6664 ], [ %6691, %6689 ]
  %6696 = phi float [ %6666, %6664 ], [ %6693, %6689 ]
  %6697 = fadd fast float %6398, %6695
  %6698 = fmul fast float %6697, %6696
  %6699 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  %6700 = fmul fast float %6699, 2.000000e+00
  %6701 = fsub fast float 1.000000e+00, %6700
  %6702 = fmul fast float %6536, %6536
  %6703 = fsub fast float %6537, %6702
  %6704 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6703)  ; FMax(a,b)
  %6705 = fdiv fast float 1.000000e+00, %6704
  %6706 = fmul fast float %6537, %6536
  %6707 = fsub fast float %6538, %6706
  %6708 = fsub fast float %6701, %6536
  %6709 = fmul fast float %6701, %6701
  %6710 = fsub fast float %6709, %6537
  %6711 = fmul fast float %6705, %6707
  %6712 = fmul fast float %6711, %6708
  %6713 = fsub fast float %6710, %6712
  %6714 = fmul fast float %6537, %6537
  %6715 = fsub fast float %6539, %6714
  %6716 = fmul fast float %6707, %6707
  %6717 = fmul fast float %6716, %6705
  %6718 = fsub fast float %6715, %6717
  %6719 = fdiv fast float %6713, %6718
  %6720 = fmul fast float %6719, %6707
  %6721 = fsub fast float %6708, %6720
  %6722 = fmul fast float %6721, %6705
  %6723 = fmul fast float %6722, %6536
  %6724 = fsub fast float 1.000000e+00, %6723
  %6725 = fmul fast float %6719, %6537
  %6726 = fsub fast float %6724, %6725
  %6727 = fmul fast float %6722, %6722
  %6728 = fmul fast float %6719, 4.000000e+00
  %6729 = fmul fast float %6728, %6726
  %6730 = fsub fast float %6727, %6729
  %6731 = call float @dx.op.unary.f32(i32 24, float %6730)  ; Sqrt(value)
  %6732 = fcmp fast oge float %6722, 0.000000e+00
  %6733 = fsub fast float -0.000000e+00, %6731
  %6734 = select i1 %6732, float %6733, float %6731
  %6735 = fsub fast float %6734, %6722
  %6736 = fdiv fast float %6735, %6719
  %6737 = fdiv fast float %6726, %6735
  %6738 = fmul fast float %6736, 5.000000e-01
  %6739 = fmul fast float %6737, 2.000000e+00
  %6740 = select i1 %6732, float %6738, float %6739
  %6741 = select i1 %6732, float %6739, float %6738
  %6742 = call float @dx.op.binary.f32(i32 35, float %6740, float %6741)  ; FMax(a,b)
  %6743 = call float @dx.op.binary.f32(i32 36, float %6740, float %6741)  ; FMin(a,b)
  %6744 = fcmp fast ogt float %6701, %6742
  %6745 = fsub fast float %6701, %6743
  %6746 = fsub fast float %6701, %6742
  %6747 = fsub fast float %6742, %6743
  %6748 = select i1 %6744, float %6746, float %6747
  %6749 = fmul float %6745, %6748
  %6750 = select i1 %6744, float %6743, float %6701
  %6751 = fcmp fast ogt float %6701, %6743
  %6752 = fmul fast float %6750, %6742
  %6753 = fadd fast float %6750, %6742
  %6754 = fmul fast float %6753, %6536
  %6755 = fadd fast float %6752, %6537
  %6756 = fsub fast float %6755, %6754
  %6757 = fdiv fast float %6756, %6749
  %6758 = select i1 %6751, float %6757, float 0.000000e+00
  %6759 = fsub fast float 1.000000e+00, %6758
  %6760 = select i1 %6744, float %6759, float %6758
  %6761 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6763 = fmul fast float %6762, %6761
  %6764 = fsub fast float 1.000000e+00, %6763
  br label %6765

; <label>:6765                                    ; preds = %6694, %6406, %6371, %6367, %6333
  %6766 = phi float [ 1.000000e+00, %6333 ], [ %6764, %6694 ], [ 1.000000e+00, %6371 ], [ 1.000000e+00, %6406 ], [ 1.000000e+00, %6367 ]
  %6767 = fcmp fast ogt float %6363, 0.000000e+00
  br i1 %6767, label %6768, label %6774, !dx.controlflow.hints !114

; <label>:6768                                    ; preds = %6765
  %6769 = fadd fast float %6276, %6250
  %6770 = call float @dx.op.binary.f32(i32 35, float %6769, float 0.000000e+00)  ; FMax(a,b)
  %6771 = fadd fast float %6770, 0x3F10000000000000
  %6772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6265, float %6266, float undef, float undef, i32 0, i32 0, i32 undef, float %6771)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6773 = extractvalue %dx.types.ResRet.f32 %6772, 0
  br label %6774

; <label>:6774                                    ; preds = %6768, %6765
  %6775 = phi float [ %6773, %6768 ], [ 1.000000e+00, %6765 ]
  %6776 = fcmp fast ogt float %6361, 0.000000e+00
  br i1 %6776, label %6777, label %6783, !dx.controlflow.hints !115

; <label>:6777                                    ; preds = %6774
  %6778 = fadd fast float %6306, %6250
  %6779 = call float @dx.op.binary.f32(i32 35, float %6778, float 0.000000e+00)  ; FMax(a,b)
  %6780 = fadd fast float %6779, 0x3F10000000000000
  %6781 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6257, float %6258, float undef, float undef, i32 0, i32 0, i32 undef, float %6780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  br label %6783

; <label>:6783                                    ; preds = %6777, %6774
  %6784 = phi float [ %6782, %6777 ], [ 1.000000e+00, %6774 ]
  %6785 = fcmp fast ogt float %6360, 0.000000e+00
  br i1 %6785, label %6786, label %6793, !dx.controlflow.hints !116

; <label>:6786                                    ; preds = %6783
  %6787 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6788 = fadd fast float %6787, %6250
  %6789 = call float @dx.op.binary.f32(i32 35, float %6788, float 0.000000e+00)  ; FMax(a,b)
  %6790 = fadd fast float %6789, 0x3F10000000000000
  %6791 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6242, float %6246, float undef, float undef, i32 0, i32 0, i32 undef, float %6790)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  br label %6793

; <label>:6793                                    ; preds = %6786, %6783
  %6794 = phi float [ %6792, %6786 ], [ 1.000000e+00, %6783 ]
  %6795 = fsub fast float %6775, %6766
  %6796 = fmul fast float %6795, %6304
  %6797 = fadd fast float %6796, %6766
  %6798 = fsub fast float %6784, %6797
  %6799 = fmul fast float %6798, %6334
  %6800 = fadd fast float %6799, %6797
  %6801 = fsub fast float %6794, %6800
  %6802 = fmul fast float %6801, %6360
  %6803 = fadd fast float %6802, %6800
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %6806 = fcmp fast ogt float %6805, 0.000000e+00
  br i1 %6806, label %6807, label %6847, !dx.controlflow.hints !117

; <label>:6807                                    ; preds = %6793
  %6808 = fcmp fast ugt float %6805, 0.000000e+00
  br i1 %6808, label %6809, label %6844

; <label>:6809                                    ; preds = %6807
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.CBufRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6814 = extractvalue %dx.types.CBufRet.f32 %6810, 3
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6815, 3
  %6820 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6826 = fadd fast float %6823, %6219
  %6827 = fadd fast float %6824, %6220
  %6828 = fadd fast float %6825, %6221
  %6829 = fmul fast float %6826, %6811
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6827, float %6829)  ; FMad(a,b,c)
  %6831 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6828, float %6830)  ; FMad(a,b,c)
  %6832 = fadd fast float %6831, %6814
  %6833 = fmul fast float %6826, %6816
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6827, float %6833)  ; FMad(a,b,c)
  %6835 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6828, float %6834)  ; FMad(a,b,c)
  %6836 = fadd fast float %6835, %6819
  %6837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6832, float %6836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6838 = extractvalue %dx.types.ResRet.f32 %6837, 0
  %6839 = fmul fast float %6838, %6821
  %6840 = fadd fast float %6839, %6820
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6842 = fmul fast float %6841, %6805
  %6843 = fsub fast float 1.000000e+00, %6842
  br label %6844

; <label>:6844                                    ; preds = %6809, %6807
  %6845 = phi float [ %6843, %6809 ], [ 1.000000e+00, %6807 ]
  %6846 = fmul fast float %6845, %6803
  br label %6847

; <label>:6847                                    ; preds = %6844, %6793, %6199
  %6848 = phi float [ 1.000000e+00, %6199 ], [ %6846, %6844 ], [ %6803, %6793 ]
  %6849 = call float @dx.op.binary.f32(i32 36, float %6848, float %6848)  ; FMin(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6848, float %6849)  ; FMin(a,b)
  %6851 = fcmp fast ogt float %6850, 0.000000e+00
  br i1 %6851, label %6852, label %7012, !dx.controlflow.hints !118

; <label>:6852                                    ; preds = %6847
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6858, 3
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6868 = fmul fast float %6854, %6219
  %6869 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6855, float %6868)  ; FMad(a,b,c)
  %6870 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6856, float %6869)  ; FMad(a,b,c)
  %6871 = fadd fast float %6870, %6857
  %6872 = fmul fast float %6859, %6219
  %6873 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6860, float %6872)  ; FMad(a,b,c)
  %6874 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6861, float %6873)  ; FMad(a,b,c)
  %6875 = fadd fast float %6874, %6862
  %6876 = fmul fast float %6864, %6219
  %6877 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6865, float %6876)  ; FMad(a,b,c)
  %6878 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6866, float %6877)  ; FMad(a,b,c)
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6881 = extractvalue %dx.types.CBufRet.f32 %6879, 1
  %6882 = extractvalue %dx.types.CBufRet.f32 %6879, 3
  %6883 = fmul fast float %6882, %6871
  %6884 = fmul fast float %6882, %6875
  %6885 = fadd fast float %6883, %6880
  %6886 = fadd fast float %6884, %6881
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6890 = fsub fast float %6885, %6888
  %6891 = fsub fast float %6886, %6889
  %6892 = fcmp fast olt float %6890, 0.000000e+00
  %6893 = fcmp fast olt float %6891, 0.000000e+00
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6898 = extractvalue %dx.types.CBufRet.f32 %6894, 3
  %6899 = select i1 %6892, float %6895, float %6897
  %6900 = select i1 %6893, float %6896, float %6898
  %6901 = fmul fast float %6899, %6890
  %6902 = fmul fast float %6900, %6891
  %6903 = call float @dx.op.unary.f32(i32 6, float %6901)  ; FAbs(value)
  %6904 = call float @dx.op.unary.f32(i32 6, float %6902)  ; FAbs(value)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6906 = call float @dx.op.binary.f32(i32 35, float %6903, float %6904)  ; FMax(a,b)
  %6907 = fsub fast float %6905, %6906
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fcmp fast ogt float %6908, 0.000000e+00
  br i1 %6909, label %6910, label %6951, !dx.controlflow.hints !119

; <label>:6910                                    ; preds = %6852
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6885, float %6886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  br i1 %6913, label %6914, label %6946

; <label>:6914                                    ; preds = %6910
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6885, float %6886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  %6919 = extractvalue %dx.types.ResRet.f32 %6915, 3
  %6920 = fsub fast float 1.000000e+00, %6867
  %6921 = fsub fast float %6920, %6878
  %6922 = fmul fast float %6921, 0x400921FB60000000
  %6923 = fadd fast float %6922, 0x3FF921FB60000000
  %6924 = call float @dx.op.unary.f32(i32 13, float %6923)  ; Sin(value)
  %6925 = fadd fast float %6924, -1.000000e+00
  %6926 = fmul fast float %6925, 0x3FD45F3060000000
  %6927 = fmul fast float %6921, 0x401921FB60000000
  %6928 = fadd fast float %6927, 0x400921FB60000000
  %6929 = call float @dx.op.unary.f32(i32 13, float %6928)  ; Sin(value)
  %6930 = fadd fast float %6929, 0x3E7777A5C0000000
  %6931 = fmul fast float %6930, 0x3FC45F3060000000
  %6932 = fmul fast float %6921, 0x4022D97C80000000
  %6933 = fadd fast float %6932, 0x4012D97C80000000
  %6934 = call float @dx.op.unary.f32(i32 13, float %6933)  ; Sin(value)
  %6935 = fadd fast float %6934, 1.000000e+00
  %6936 = fmul fast float %6935, 0x3FBB2995E0000000
  %6937 = fmul fast float %6921, 0x402921FB60000000
  %6938 = fadd fast float %6937, 0x401921FB60000000
  %6939 = call float @dx.op.unary.f32(i32 13, float %6938)  ; Sin(value)
  %6940 = fadd fast float %6939, 0xBE8777A5C0000000
  %6941 = fmul fast float %6940, 0x3FB45F3060000000
  %6942 = call float @dx.op.dot4.f32(i32 56, float %6916, float %6917, float %6918, float %6919, float %6926, float %6931, float %6936, float %6941)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6943 = fmul fast float %6942, 0xBFF7154760000000
  %6944 = call float @dx.op.unary.f32(i32 21, float %6943)  ; Exp(value)
  %6945 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  br label %6946

; <label>:6946                                    ; preds = %6914, %6910
  %6947 = phi float [ %6945, %6914 ], [ 1.000000e+00, %6910 ]
  %6948 = fadd fast float %6947, -1.000000e+00
  %6949 = fmul fast float %6948, %6908
  %6950 = fadd fast float %6949, 1.000000e+00
  br label %6951

; <label>:6951                                    ; preds = %6946, %6852
  %6952 = phi float [ %6950, %6946 ], [ 1.000000e+00, %6852 ]
  %6953 = fmul fast float %6952, %6848
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6958 = fadd fast float %6955, %156
  %6959 = fadd fast float %6956, %157
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6962 = fsub fast float -0.000000e+00, %6958
  %6963 = fsub fast float -0.000000e+00, %6959
  %6964 = fsub fast float %5712, %6957
  %6965 = fadd fast float %6964, %6961
  %6966 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6962, float %6963, float %6965)  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6200, float %6201, float %6202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6968 = fdiv fast float 1.000000e+00, %6967
  %6969 = fmul fast float %6968, %6966
  %6970 = fmul fast float %6200, %6969
  %6971 = fmul fast float %6201, %6969
  %6972 = fadd fast float %6970, %6958
  %6973 = fadd fast float %6971, %6959
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = fsub fast float %6972, %6975
  %6978 = fsub fast float %6973, %6976
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6982 = fmul fast float %6977, %6980
  %6983 = fmul fast float %6978, %6981
  %6984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.i32 %6984, 3
  %6986 = icmp eq i32 %6985, 0
  br i1 %6986, label %6992, label %6987

; <label>:6987                                    ; preds = %6951
  %6988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6982, float %6983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6989 = extractvalue %dx.types.ResRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.ResRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.ResRet.f32 %6988, 2
  br label %6997

; <label>:6992                                    ; preds = %6951
  %6993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6982, float %6983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6994 = extractvalue %dx.types.ResRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.ResRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.ResRet.f32 %6993, 2
  br label %6997

; <label>:6997                                    ; preds = %6992, %6987
  %6998 = phi float [ %6989, %6987 ], [ %6994, %6992 ]
  %6999 = phi float [ %6990, %6987 ], [ %6995, %6992 ]
  %7000 = phi float [ %6991, %6987 ], [ %6996, %6992 ]
  %7001 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %7002 = fmul fast float %7001, %6998
  %7003 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %7004 = fsub fast float %6969, %7003
  %7005 = fsub fast float %7004, %7002
  %7006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7005)  ; FMax(a,b)
  %7007 = fmul fast float %7006, %6999
  %7008 = call float @dx.op.binary.f32(i32 36, float %7000, float %7007)  ; FMin(a,b)
  %7009 = fmul fast float %7008, 0xBFF7154760000000
  %7010 = call float @dx.op.unary.f32(i32 21, float %7009)  ; Exp(value)
  %7011 = fmul fast float %6953, %7010
  br label %7012

; <label>:7012                                    ; preds = %6997, %6847
  %7013 = phi float [ %7011, %6997 ], [ %6848, %6847 ]
  %7014 = call float @dx.op.binary.f32(i32 36, float %7013, float %7013)  ; FMin(a,b)
  %7015 = call float @dx.op.binary.f32(i32 36, float %7013, float %7014)  ; FMin(a,b)
  %7016 = fcmp fast ogt float %7015, 0.000000e+00
  br i1 %7016, label %7017, label %7403, !dx.controlflow.hints !120

; <label>:7017                                    ; preds = %7012
  %7018 = fmul fast float %7013, %6211
  %7019 = fmul fast float %7013, %6212
  %7020 = fmul fast float %7013, %6213
  %7021 = fsub fast float %158, %5500
  %7022 = fcmp fast ogt float %7021, 0.000000e+00
  %7023 = fmul fast float %6200, 5.120000e+02
  %7024 = fmul fast float %6201, 5.120000e+02
  %7025 = fmul fast float %6202, 5.120000e+02
  %7026 = fadd fast float %7025, %158
  %7027 = fsub fast float %5500, %7026
  %7028 = fmul fast float %7027, 2.000000e+00
  %7029 = fadd fast float %7028, %7026
  %7030 = select i1 %7022, float %7029, float %7026
  %7031 = fsub fast float %7030, %158
  %7032 = call float @dx.op.dot3.f32(i32 55, float %7023, float %7024, float %7031, float %7023, float %7024, float %7031)  ; Dot3(ax,ay,az,bx,by,bz)
  %7033 = call float @dx.op.unary.f32(i32 25, float %7032)  ; Rsqrt(value)
  %7034 = fmul fast float %7033, %7023
  %7035 = fmul fast float %7033, %7024
  %7036 = fmul fast float %7033, %7031
  %7037 = fsub fast float %5500, %158
  %7038 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7037)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7034, float %7035, float %7036)  ; Dot3(ax,ay,az,bx,by,bz)
  %7040 = fdiv fast float 1.000000e+00, %7039
  %7041 = fmul fast float %7040, %7038
  %7042 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7021, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7043 = fcmp fast ogt float %7042, 0.000000e+00
  %7044 = fcmp fast olt float %7042, 0.000000e+00
  %7045 = zext i1 %7043 to i32
  %7046 = zext i1 %7044 to i32
  %7047 = sub nsw i32 %7045, %7046
  %7048 = sitofp i32 %7047 to float
  %7049 = fsub fast float %7030, %5500
  %7050 = call float @dx.op.dot3.f32(i32 55, float %7023, float %7024, float %7049, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7051 = fcmp fast ogt float %7050, 0.000000e+00
  %7052 = fcmp fast olt float %7050, 0.000000e+00
  %7053 = zext i1 %7051 to i32
  %7054 = zext i1 %7052 to i32
  %7055 = sub nsw i32 %7053, %7054
  %7056 = sitofp i32 %7055 to float
  %7057 = fcmp fast une float %7048, %7056
  br i1 %7057, label %7058, label %7068

; <label>:7058                                    ; preds = %7017
  %7059 = fmul fast float %7041, %7036
  %7060 = fmul fast float %7041, %7035
  %7061 = fmul fast float %7041, %7034
  %7062 = fmul fast float %7061, %7061
  %7063 = fmul fast float %7060, %7060
  %7064 = fadd fast float %7062, %7063
  %7065 = fmul fast float %7059, %7059
  %7066 = fadd fast float %7064, %7065
  %7067 = call float @dx.op.unary.f32(i32 24, float %7066)  ; Sqrt(value)
  br label %7078

; <label>:7068                                    ; preds = %7017
  %7069 = icmp slt i32 %7047, 0
  br i1 %7069, label %7070, label %7078

; <label>:7070                                    ; preds = %7068
  %7071 = fsub fast float %158, %7030
  %7072 = fmul fast float %7023, %7023
  %7073 = fmul fast float %7024, %7024
  %7074 = fadd fast float %7072, %7073
  %7075 = fmul fast float %7071, %7071
  %7076 = fadd fast float %7074, %7075
  %7077 = call float @dx.op.unary.f32(i32 24, float %7076)  ; Sqrt(value)
  br label %7078

; <label>:7078                                    ; preds = %7070, %7068, %7058
  %7079 = phi float [ %7067, %7058 ], [ %7077, %7070 ], [ 0.000000e+00, %7068 ]
  %7080 = fsub fast float -0.000000e+00, %7079
  %7081 = select i1 %7022, float -0.000000e+00, float %7080
  %7082 = fmul fast float %5501, 0x3FF7154760000000
  %7083 = fmul fast float %7082, %7081
  %7084 = fmul fast float %5502, 0x3FF7154760000000
  %7085 = fmul fast float %7084, %7081
  %7086 = fmul fast float %5503, 0x3FF7154760000000
  %7087 = fmul fast float %7086, %7081
  %7088 = call float @dx.op.unary.f32(i32 21, float %7083)  ; Exp(value)
  %7089 = call float @dx.op.unary.f32(i32 21, float %7085)  ; Exp(value)
  %7090 = call float @dx.op.unary.f32(i32 21, float %7087)  ; Exp(value)
  %7091 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7092 = call float @dx.op.unary.f32(i32 7, float %7089)  ; Saturate(value)
  %7093 = call float @dx.op.unary.f32(i32 7, float %7090)  ; Saturate(value)
  %7094 = fmul fast float %7018, %7091
  %7095 = fmul fast float %7019, %7092
  %7096 = fmul fast float %7020, %7093
  %7097 = fsub fast float %6200, %5700
  %7098 = fsub fast float %6201, %5699
  %7099 = fsub fast float %6202, %5698
  %7100 = call float @dx.op.dot3.f32(i32 55, float %7097, float %7098, float %7099, float %7097, float %7098, float %7099)  ; Dot3(ax,ay,az,bx,by,bz)
  %7101 = call float @dx.op.unary.f32(i32 25, float %7100)  ; Rsqrt(value)
  %7102 = fmul fast float %7101, %7097
  %7103 = fmul fast float %7101, %7098
  %7104 = fmul fast float %7101, %7099
  %7105 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %7106 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7102, float %7103, float %7104)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7108 = fmul fast float %7107, %7107
  %7109 = fmul fast float %7108, %5728
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = fmul fast float %7110, %7107
  %7112 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %7102, float %7103, float %7104)  ; Dot3(ax,ay,az,bx,by,bz)
  %7113 = fmul fast float %7112, %7112
  %7114 = call float @dx.op.unary.f32(i32 6, float %7105)  ; FAbs(value)
  %7115 = call float @dx.op.binary.f32(i32 35, float %6168, float 0x3F847AE140000000)  ; FMax(a,b)
  %7116 = fmul fast float %7115, %7115
  %7117 = fmul fast float %7116, %7116
  %7118 = fsub fast float 1.000000e+00, %7117
  %7119 = fmul fast float %5715, %5715
  %7120 = fmul fast float %7119, %7118
  %7121 = fadd fast float %7120, %7117
  %7122 = bitcast float %7121 to i32
  %7123 = ashr i32 %7122, 1
  %7124 = add nsw i32 %7123, 532487669
  %7125 = bitcast i32 %7124 to float
  %7126 = fadd fast float %7125, %5715
  %7127 = fmul fast float %7117, %7113
  %7128 = fsub fast float 1.000000e+00, %7113
  %7129 = fadd fast float %7128, %7127
  %7130 = fmul fast float %7114, %7114
  %7131 = fmul fast float %7130, %7118
  %7132 = fadd fast float %7131, %7117
  %7133 = bitcast float %7132 to i32
  %7134 = ashr i32 %7133, 1
  %7135 = add nsw i32 %7134, 532487669
  %7136 = bitcast i32 %7135 to float
  %7137 = fadd fast float %7136, %7114
  %7138 = fmul fast float %7129, %7129
  %7139 = fmul fast float %7138, %7126
  %7140 = fmul fast float %7139, %7137
  %7141 = fdiv fast float 0x3FF0A00000000000, %7140
  %7142 = fmul fast float %7141, %7117
  %7143 = fmul fast float %6014, 0x3FF9999980000000
  %7144 = fsub fast float 5.000000e+00, %7143
  %7145 = call float @dx.op.unary.f32(i32 6, float %7106)  ; FAbs(value)
  %7146 = fsub fast float 1.000000e+00, %7145
  %7147 = fmul fast float %6014, 0x41D9660740000000
  %7148 = fadd fast float %7147, 0xC1EFBF8940000000
  %7149 = bitcast float %7146 to i32
  %7150 = sitofp i32 %7149 to float
  %7151 = fmul fast float %7150, %7144
  %7152 = fadd fast float %7148, %7151
  %7153 = fptosi float %7152 to i32
  %7154 = bitcast i32 %7153 to float
  %7155 = fsub fast float 1.000000e+00, %5704
  %7156 = fsub fast float 1.000000e+00, %5705
  %7157 = fsub fast float 1.000000e+00, %5713
  %7158 = fmul fast float %7154, %7155
  %7159 = fmul fast float %7154, %7156
  %7160 = fmul fast float %7154, %7157
  %7161 = fadd fast float %7158, %5704
  %7162 = fadd fast float %7159, %5705
  %7163 = fadd fast float %7160, %5713
  br i1 %6037, label %7164, label %7187

; <label>:7164                                    ; preds = %7078
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %7145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.ResRet.f32 %7165, 1
  %7168 = extractvalue %dx.types.ResRet.f32 %7165, 2
  %7169 = fadd fast float %7166, -5.000000e-01
  %7170 = fadd fast float %7167, -5.000000e-01
  %7171 = fadd fast float %7168, -5.000000e-01
  %7172 = fmul fast float %5704, 4.000000e+00
  %7173 = fmul fast float %7172, %7155
  %7174 = fmul fast float %7173, %7169
  %7175 = fmul fast float %5705, 4.000000e+00
  %7176 = fmul fast float %7175, %7156
  %7177 = fmul fast float %7176, %7170
  %7178 = fmul fast float %5713, 4.000000e+00
  %7179 = fmul fast float %7178, %7157
  %7180 = fmul fast float %7179, %7171
  %7181 = fadd fast float %7174, %7161
  %7182 = fadd fast float %7177, %7162
  %7183 = fadd fast float %7180, %7163
  %7184 = call float @dx.op.unary.f32(i32 7, float %7181)  ; Saturate(value)
  %7185 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7186 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  br label %7187

; <label>:7187                                    ; preds = %7164, %7078
  %7188 = phi float [ %7184, %7164 ], [ %7161, %7078 ]
  %7189 = phi float [ %7185, %7164 ], [ %7162, %7078 ]
  %7190 = phi float [ %7186, %7164 ], [ %7163, %7078 ]
  %7191 = fmul fast float %7105, 9.843750e-01
  %7192 = fadd fast float %7191, 7.812500e-03
  %7193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7192, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7194 = extractvalue %dx.types.ResRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.ResRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.ResRet.f32 %7193, 2
  %7197 = extractvalue %dx.types.ResRet.f32 %7193, 3
  %7198 = fsub fast float %7196, %7194
  %7199 = fsub fast float %7197, %7195
  %7200 = fmul fast float %7198, %6024
  %7201 = fmul fast float %7199, %6024
  %7202 = fadd fast float %7200, %7194
  %7203 = fadd fast float %7201, %7195
  %7204 = fmul fast float %7202, %5704
  %7205 = fmul fast float %7202, %5705
  %7206 = fmul fast float %7202, %5713
  %7207 = fadd fast float %7204, %7203
  %7208 = fadd fast float %7205, %7203
  %7209 = fadd fast float %7206, %7203
  br i1 %6037, label %7210, label %7233

; <label>:7210                                    ; preds = %7187
  %7211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %7105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7212 = extractvalue %dx.types.ResRet.f32 %7211, 0
  %7213 = extractvalue %dx.types.ResRet.f32 %7211, 1
  %7214 = extractvalue %dx.types.ResRet.f32 %7211, 2
  %7215 = fadd fast float %7212, -5.000000e-01
  %7216 = fadd fast float %7213, -5.000000e-01
  %7217 = fadd fast float %7214, -5.000000e-01
  %7218 = fmul fast float %5704, 4.000000e+00
  %7219 = fmul fast float %7218, %7155
  %7220 = fmul fast float %7219, %7215
  %7221 = fmul fast float %5705, 4.000000e+00
  %7222 = fmul fast float %7221, %7156
  %7223 = fmul fast float %7222, %7216
  %7224 = fmul fast float %5713, 4.000000e+00
  %7225 = fmul fast float %7224, %7157
  %7226 = fmul fast float %7225, %7217
  %7227 = fadd fast float %7220, %7207
  %7228 = fadd fast float %7223, %7208
  %7229 = fadd fast float %7226, %7209
  %7230 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7231 = call float @dx.op.unary.f32(i32 7, float %7228)  ; Saturate(value)
  %7232 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  br label %7233

; <label>:7233                                    ; preds = %7210, %7187
  %7234 = phi float [ %7230, %7210 ], [ %7207, %7187 ]
  %7235 = phi float [ %7231, %7210 ], [ %7208, %7187 ]
  %7236 = phi float [ %7232, %7210 ], [ %7209, %7187 ]
  %7237 = call float @dx.op.binary.f32(i32 35, float %7235, float %7236)  ; FMax(a,b)
  %7238 = call float @dx.op.binary.f32(i32 35, float %7234, float %7237)  ; FMax(a,b)
  %7239 = fsub fast float 1.000000e+00, %7238
  %7240 = call float @dx.op.binary.f32(i32 35, float %7114, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7241 = fdiv fast float %4419, %7240
  %7242 = fmul fast float %6108, %7241
  %7243 = fmul fast float %6110, %7241
  %7244 = fmul fast float %6112, %7241
  %7245 = call float @dx.op.unary.f32(i32 21, float %7242)  ; Exp(value)
  %7246 = call float @dx.op.unary.f32(i32 21, float %7243)  ; Exp(value)
  %7247 = call float @dx.op.unary.f32(i32 21, float %7244)  ; Exp(value)
  %7248 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7249 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7250 = call float @dx.op.unary.f32(i32 7, float %7247)  ; Saturate(value)
  %7251 = select i1 %6105, float %7248, float 0.000000e+00
  %7252 = select i1 %6106, float %7249, float 0.000000e+00
  %7253 = select i1 %6107, float %7250, float 0.000000e+00
  %7254 = fsub fast float -0.000000e+00, %5707
  %7255 = fsub fast float -0.000000e+00, %5708
  %7256 = fsub fast float -0.000000e+00, %5709
  %7257 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %7254, float %7255, float %7256)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7259 = fmul fast float %7258, 9.843750e-01
  %7260 = fadd fast float %7259, 7.812500e-03
  %7261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7260, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7262 = extractvalue %dx.types.ResRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.ResRet.f32 %7261, 2
  %7265 = extractvalue %dx.types.ResRet.f32 %7261, 3
  %7266 = fsub fast float %7264, %7262
  %7267 = fsub fast float %7265, %7263
  %7268 = fmul fast float %7266, %6024
  %7269 = fmul fast float %7267, %6024
  %7270 = fadd fast float %7268, %7262
  %7271 = fadd fast float %7269, %7263
  %7272 = fmul fast float %7270, %5704
  %7273 = fmul fast float %7270, %5705
  %7274 = fmul fast float %7270, %5713
  %7275 = fadd fast float %7272, %7271
  %7276 = fadd fast float %7273, %7271
  %7277 = fadd fast float %7274, %7271
  br i1 %6037, label %7278, label %7301

; <label>:7278                                    ; preds = %7233
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %7258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.ResRet.f32 %7279, 1
  %7282 = extractvalue %dx.types.ResRet.f32 %7279, 2
  %7283 = fadd fast float %7280, -5.000000e-01
  %7284 = fadd fast float %7281, -5.000000e-01
  %7285 = fadd fast float %7282, -5.000000e-01
  %7286 = fmul fast float %5704, 4.000000e+00
  %7287 = fmul fast float %7286, %7155
  %7288 = fmul fast float %7287, %7283
  %7289 = fmul fast float %5705, 4.000000e+00
  %7290 = fmul fast float %7289, %7156
  %7291 = fmul fast float %7290, %7284
  %7292 = fmul fast float %5713, 4.000000e+00
  %7293 = fmul fast float %7292, %7157
  %7294 = fmul fast float %7293, %7285
  %7295 = fadd fast float %7288, %7275
  %7296 = fadd fast float %7291, %7276
  %7297 = fadd fast float %7294, %7277
  %7298 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7299 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7300 = call float @dx.op.unary.f32(i32 7, float %7297)  ; Saturate(value)
  br label %7301

; <label>:7301                                    ; preds = %7278, %7233
  %7302 = phi float [ %7298, %7278 ], [ %7275, %7233 ]
  %7303 = phi float [ %7299, %7278 ], [ %7276, %7233 ]
  %7304 = phi float [ %7300, %7278 ], [ %7277, %7233 ]
  %7305 = call float @dx.op.binary.f32(i32 35, float %7303, float %7304)  ; FMax(a,b)
  %7306 = call float @dx.op.binary.f32(i32 35, float %7302, float %7305)  ; FMax(a,b)
  %7307 = fsub fast float 1.000000e+00, %7306
  %7308 = fmul fast float %6168, %6173
  %7309 = fadd fast float %6175, %7308
  %7310 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7311 = fsub fast float %6200, %5721
  %7312 = fsub fast float %6201, %5722
  %7313 = fsub fast float %6202, %5723
  %7314 = call float @dx.op.dot3.f32(i32 55, float %7311, float %7312, float %7313, float %7311, float %7312, float %7313)  ; Dot3(ax,ay,az,bx,by,bz)
  %7315 = call float @dx.op.unary.f32(i32 25, float %7314)  ; Rsqrt(value)
  %7316 = fmul fast float %7315, %7311
  %7317 = fmul fast float %7315, %7312
  %7318 = fmul fast float %7315, %7313
  %7319 = call float @dx.op.dot3.f32(i32 55, float %7254, float %7255, float %7256, float %7316, float %7317, float %7318)  ; Dot3(ax,ay,az,bx,by,bz)
  %7320 = fmul fast float %7319, %7319
  %7321 = call float @dx.op.unary.f32(i32 6, float %7258)  ; FAbs(value)
  %7322 = call float @dx.op.binary.f32(i32 35, float %7310, float 0x3F847AE140000000)  ; FMax(a,b)
  %7323 = fmul fast float %7322, %7322
  %7324 = fmul fast float %7323, %7323
  %7325 = fsub fast float 1.000000e+00, %7324
  %7326 = fmul fast float %7119, %7325
  %7327 = fadd fast float %7326, %7324
  %7328 = bitcast float %7327 to i32
  %7329 = ashr i32 %7328, 1
  %7330 = add nsw i32 %7329, 532487669
  %7331 = bitcast i32 %7330 to float
  %7332 = fadd fast float %7331, %5715
  %7333 = fmul fast float %7324, %7320
  %7334 = fsub fast float 1.000000e+00, %7320
  %7335 = fadd fast float %7334, %7333
  %7336 = fmul fast float %7321, %7321
  %7337 = fmul fast float %7336, %7325
  %7338 = fadd fast float %7337, %7324
  %7339 = bitcast float %7338 to i32
  %7340 = ashr i32 %7339, 1
  %7341 = add nsw i32 %7340, 532487669
  %7342 = bitcast i32 %7341 to float
  %7343 = fadd fast float %7342, %7321
  %7344 = fmul fast float %7335, %7335
  %7345 = fmul fast float %7344, %7332
  %7346 = fmul fast float %7345, %7343
  %7347 = fdiv fast float 0x3FF0A00000000000, %7346
  %7348 = fmul fast float %7347, %7324
  %7349 = fmul fast float %7258, %7251
  %7350 = fmul fast float %7258, %7252
  %7351 = fmul fast float %7258, %7253
  %7352 = fmul fast float %7349, %7307
  %7353 = fmul fast float %7352, %7348
  %7354 = fmul fast float %7350, %7307
  %7355 = fmul fast float %7354, %7348
  %7356 = fmul fast float %7351, %7307
  %7357 = fmul fast float %7356, %7348
  %7358 = fmul fast float %7188, %7142
  %7359 = fmul fast float %7189, %7142
  %7360 = fmul fast float %7190, %7142
  %7361 = fsub fast float 1.000000e+00, %7106
  %7362 = bitcast float %7361 to i32
  %7363 = sitofp i32 %7362 to float
  %7364 = fmul fast float %7363, 5.000000e+00
  %7365 = fadd fast float %7364, 0xC1EFBF8940000000
  %7366 = fptosi float %7365 to i32
  %7367 = bitcast i32 %7366 to float
  %7368 = fmul fast float %7367, %5070
  %7369 = fmul fast float %7239, %7368
  %7370 = fmul fast float %7369, %6099
  %7371 = fmul fast float %7369, %6100
  %7372 = fmul fast float %7369, %6101
  %7373 = fadd fast float %7370, %7358
  %7374 = fadd fast float %7371, %7359
  %7375 = fadd fast float %7372, %7360
  %7376 = fmul fast float %7373, %7111
  %7377 = fmul fast float %7374, %7111
  %7378 = fmul fast float %7375, %7111
  %7379 = fmul fast float %7111, %7094
  %7380 = fmul fast float %7379, %7239
  %7381 = fmul fast float %7111, %7095
  %7382 = fmul fast float %7381, %7239
  %7383 = fmul fast float %7111, %7096
  %7384 = fmul fast float %7383, %7239
  %7385 = fadd fast float %7376, %7353
  %7386 = fadd fast float %7377, %7355
  %7387 = fadd fast float %7378, %7357
  %7388 = fmul fast float %7385, %7094
  %7389 = fmul fast float %7386, %7095
  %7390 = fmul fast float %7387, %7096
  %7391 = fadd fast float %7380, %6190
  %7392 = fmul fast float %7391, %5066
  %7393 = fadd fast float %7382, %6192
  %7394 = fmul fast float %7393, %5066
  %7395 = fadd fast float %7384, %6194
  %7396 = fmul fast float %7395, %5066
  %7397 = fadd fast float %7388, %6153
  %7398 = fmul fast float %7397, %5066
  %7399 = fadd fast float %7389, %6156
  %7400 = fmul fast float %7399, %5066
  %7401 = fadd fast float %7390, %6159
  %7402 = fmul fast float %7401, %5066
  br label %7403

; <label>:7403                                    ; preds = %7301, %7012, %6064
  %7404 = phi float [ %6154, %6064 ], [ %6154, %7012 ], [ %7398, %7301 ]
  %7405 = phi float [ %6157, %6064 ], [ %6157, %7012 ], [ %7400, %7301 ]
  %7406 = phi float [ %6160, %6064 ], [ %6160, %7012 ], [ %7402, %7301 ]
  %7407 = phi float [ %6191, %6064 ], [ %6191, %7012 ], [ %7392, %7301 ]
  %7408 = phi float [ %6193, %6064 ], [ %6193, %7012 ], [ %7394, %7301 ]
  %7409 = phi float [ %6195, %6064 ], [ %6195, %7012 ], [ %7396, %7301 ]
  %7410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.i32 %7410, 0
  %7412 = icmp eq i32 %7411, 0
  br i1 %7412, label %8187, label %7413

; <label>:7413                                    ; preds = %7403
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 3
  %7417 = fmul fast float %7415, %101
  %7418 = fmul fast float %7416, %102
  %7419 = fptoui float %7417 to i32
  %7420 = fptoui float %7418 to i32
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7424 = extractvalue %dx.types.CBufRet.f32 %7421, 3
  %7425 = fadd fast float %92, -4.000000e+00
  %7426 = call float @dx.op.binary.f32(i32 35, float %7425, float 0.000000e+00)  ; FMax(a,b)
  %7427 = fadd fast float %7426, %7422
  %7428 = fmul fast float %7427, %7423
  %7429 = call float @dx.op.unary.f32(i32 23, float %7428)  ; Log(value)
  %7430 = fmul fast float %7429, %7424
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7433 = fmul fast float %7430, %7432
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.i32 %7435, 1
  %7437 = add i32 %7436, -1
  %7438 = uitofp i32 %7436 to float
  %7439 = fmul fast float %7438, %7434
  %7440 = fptoui float %7439 to i32
  %7441 = call i32 @dx.op.binary.i32(i32 40, i32 %7440, i32 %7437)  ; UMin(a,b)
  %7442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.i32 %7442, 2
  %7444 = extractvalue %dx.types.CBufRet.i32 %7442, 3
  %7445 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7420, i32 %7443, i32 %7419)  ; UMad(a,b,c)
  %7446 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7441, i32 %7444, i32 %7445)  ; UMad(a,b,c)
  %7447 = add nsw i32 %7411, -1
  %7448 = call i32 @dx.op.binary.i32(i32 37, i32 %7447, i32 0)  ; IMax(a,b)
  %7449 = call float @dx.op.binary.f32(i32 35, float %92, float 0.000000e+00)  ; FMax(a,b)
  %7450 = fptoui float %7449 to i32
  %7451 = lshr i32 %7450, 5
  %7452 = call i32 @dx.op.binary.i32(i32 40, i32 %7451, i32 8191)  ; UMin(a,b)
  %7453 = shl i32 %7452, 2
  %7454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7453, i32 undef)  ; BufferLoad(srv,index,wot)
  %7455 = extractvalue %dx.types.ResRet.i32 %7454, 0
  %7456 = lshr i32 %7455, 16
  %7457 = and i32 %7455, 65535
  %7458 = lshr i32 %7455, 21
  %7459 = lshr i32 %7457, 5
  %7460 = call i32 @dx.op.binary.i32(i32 40, i32 %7459, i32 %7448)  ; UMin(a,b)
  %7461 = icmp ugt i32 %7458, %7460
  br i1 %7461, label %8187, label %7462

; <label>:7462                                    ; preds = %7413
  br label %7463

; <label>:7463                                    ; preds = %8177, %7462
  %7464 = phi i32 [ %8184, %8177 ], [ %7458, %7462 ]
  %7465 = phi float [ %8178, %8177 ], [ %7404, %7462 ]
  %7466 = phi float [ %8179, %8177 ], [ %7405, %7462 ]
  %7467 = phi float [ %8180, %8177 ], [ %7406, %7462 ]
  %7468 = phi float [ %8181, %8177 ], [ %7407, %7462 ]
  %7469 = phi float [ %8182, %8177 ], [ %7408, %7462 ]
  %7470 = phi float [ %8183, %8177 ], [ %7409, %7462 ]
  %7471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.i32 %7471, 0
  %7473 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7446, i32 %7472, i32 %7464)  ; UMad(a,b,c)
  %7474 = shl i32 %7473, 2
  %7475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7474, i32 undef)  ; BufferLoad(srv,index,wot)
  %7476 = extractvalue %dx.types.ResRet.i32 %7475, 0
  %7477 = shl i32 %7464, 5
  %7478 = sub nsw i32 %7456, %7477
  %7479 = call i32 @dx.op.binary.i32(i32 37, i32 %7478, i32 0)  ; IMax(a,b)
  %7480 = call i32 @dx.op.binary.i32(i32 38, i32 %7479, i32 31)  ; IMin(a,b)
  %7481 = sub nsw i32 1, %7456
  %7482 = add nsw i32 %7481, %7457
  %7483 = call i32 @dx.op.binary.i32(i32 37, i32 %7482, i32 0)  ; IMax(a,b)
  %7484 = call i32 @dx.op.binary.i32(i32 38, i32 %7483, i32 32)  ; IMin(a,b)
  %7485 = and i32 %7484, 31
  %7486 = shl i32 -1, %7485
  %7487 = xor i32 %7486, -1
  %7488 = and i32 %7480, 31
  %7489 = shl i32 %7487, %7488
  %7490 = icmp eq i32 %7484, 32
  %7491 = select i1 %7490, i32 -1, i32 %7489
  %7492 = and i32 %7491, %7476
  %7493 = icmp eq i32 %7492, 0
  br i1 %7493, label %8177, label %7494

; <label>:7494                                    ; preds = %7463
  br label %7495

; <label>:7495                                    ; preds = %7630, %7494
  %7496 = phi i32 [ %7507, %7630 ], [ %7492, %7494 ]
  %7497 = phi float [ %7631, %7630 ], [ %7465, %7494 ]
  %7498 = phi float [ %7632, %7630 ], [ %7466, %7494 ]
  %7499 = phi float [ %7633, %7630 ], [ %7467, %7494 ]
  %7500 = phi float [ %7634, %7630 ], [ %7468, %7494 ]
  %7501 = phi float [ %7635, %7630 ], [ %7469, %7494 ]
  %7502 = phi float [ %7636, %7630 ], [ %7470, %7494 ]
  %7503 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7496)  ; FirstbitLo(value)
  %7504 = add i32 %7503, %7477
  %7505 = and i32 %7503, 31
  %7506 = shl i32 1, %7505
  %7507 = xor i32 %7506, %7496
  %7508 = mul i32 %7504, 112
  %7509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7508, i32 undef)  ; BufferLoad(srv,index,wot)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.ResRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.ResRet.f32 %7509, 2
  %7513 = or i32 %7508, 12
  %7514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7513, i32 undef)  ; BufferLoad(srv,index,wot)
  %7515 = extractvalue %dx.types.ResRet.f32 %7514, 0
  %7516 = add i32 %7508, 16
  %7517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7516, i32 undef)  ; BufferLoad(srv,index,wot)
  %7518 = extractvalue %dx.types.ResRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.ResRet.f32 %7517, 1
  %7520 = extractvalue %dx.types.ResRet.f32 %7517, 2
  %7521 = add i32 %7508, 28
  %7522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7521, i32 undef)  ; BufferLoad(srv,index,wot)
  %7523 = extractvalue %dx.types.ResRet.i32 %7522, 0
  %7524 = add i32 %7508, 44
  %7525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7524, i32 undef)  ; BufferLoad(srv,index,wot)
  %7526 = extractvalue %dx.types.ResRet.f32 %7525, 0
  %7527 = add i32 %7508, 48
  %7528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7527, i32 undef)  ; BufferLoad(srv,index,wot)
  %7529 = extractvalue %dx.types.ResRet.f32 %7528, 0
  %7530 = extractvalue %dx.types.ResRet.f32 %7528, 1
  %7531 = extractvalue %dx.types.ResRet.f32 %7528, 2
  %7532 = extractvalue %dx.types.ResRet.f32 %7528, 3
  %7533 = add i32 %7508, 64
  %7534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7533, i32 undef)  ; BufferLoad(srv,index,wot)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.ResRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.ResRet.f32 %7534, 3
  %7539 = add i32 %7508, 80
  %7540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7539, i32 undef)  ; BufferLoad(srv,index,wot)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7543 = add i32 %7508, 92
  %7544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7543, i32 undef)  ; BufferLoad(srv,index,wot)
  %7545 = extractvalue %dx.types.ResRet.i32 %7544, 0
  %7546 = call float @dx.op.dot3.f32(i32 55, float %7510, float %7511, float %7512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7547 = select i1 %218, float %7541, float %7510
  %7548 = select i1 %218, float %7546, float %7511
  %7549 = select i1 %218, float %7542, float %7512
  %7550 = and i32 %7545, 65535
  %7551 = uitofp i32 %7550 to float
  %7552 = lshr i32 %7545, 16
  %7553 = uitofp i32 %7552 to float
  %7554 = and i32 %7523, 65535
  %7555 = and i32 %7523, 50331648
  %7556 = icmp slt i32 %7523, 0
  %7557 = icmp eq i32 %7555, 33554432
  %7558 = fsub fast float %7529, %156
  %7559 = fsub fast float %7530, %157
  %7560 = fsub fast float %7531, %158
  %7561 = call float @dx.op.dot3.f32(i32 55, float %7558, float %7559, float %7560, float %7558, float %7559, float %7560)  ; Dot3(ax,ay,az,bx,by,bz)
  %7562 = call float @dx.op.unary.f32(i32 24, float %7561)  ; Sqrt(value)
  %7563 = fdiv fast float 1.000000e+00, %7562
  %7564 = fmul fast float %7563, %7558
  %7565 = fmul fast float %7563, %7559
  %7566 = fmul fast float %7563, %7560
  %7567 = fadd fast float %7562, %7515
  %7568 = fdiv fast float 1.000000e+00, %7567
  %7569 = fmul float %7526, %7568
  %7570 = fmul float %7569, %7569
  %7571 = call float @dx.op.unary.f32(i32 7, float %7570)  ; Saturate(value)
  br i1 %7557, label %7572, label %7593

; <label>:7572                                    ; preds = %7495
  %7573 = fmul fast float %7537, %7518
  %7574 = fmul fast float %7537, %7519
  %7575 = fmul fast float %7537, %7520
  %7576 = fadd fast float %7558, %7573
  %7577 = fadd fast float %7559, %7574
  %7578 = fadd fast float %7560, %7575
  %7579 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7578, float %7576, float %7577, float %7578)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = call float @dx.op.unary.f32(i32 25, float %7579)  ; Rsqrt(value)
  %7581 = fmul fast float %7580, %7576
  %7582 = fmul fast float %7580, %7577
  %7583 = fmul fast float %7580, %7578
  %7584 = fsub fast float %156, %7529
  %7585 = fsub fast float %157, %7530
  %7586 = fsub fast float %158, %7531
  %7587 = fsub fast float -0.000000e+00, %7584
  %7588 = fsub fast float -0.000000e+00, %7585
  %7589 = fsub fast float -0.000000e+00, %7586
  %7590 = call float @dx.op.dot3.f32(i32 55, float %7587, float %7588, float %7589, float %7518, float %7519, float %7520)  ; Dot3(ax,ay,az,bx,by,bz)
  %7591 = fcmp fast ogt float %7590, 0.000000e+00
  %7592 = uitofp i1 %7591 to float
  br label %7593

; <label>:7593                                    ; preds = %7572, %7495
  %7594 = phi float [ %7592, %7572 ], [ 1.000000e+00, %7495 ]
  %7595 = phi float [ %7581, %7572 ], [ %7564, %7495 ]
  %7596 = phi float [ %7582, %7572 ], [ %7565, %7495 ]
  %7597 = phi float [ %7583, %7572 ], [ %7566, %7495 ]
  %7598 = call float @dx.op.dot3.f32(i32 55, float %7518, float %7519, float %7520, float %7595, float %7596, float %7597)  ; Dot3(ax,ay,az,bx,by,bz)
  %7599 = fmul fast float %7598, %7598
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = fsub fast float 1.000000e+00, %7600
  %7602 = fmul fast float %7601, 5.000000e-01
  %7603 = fcmp fast ogt float %7598, 0.000000e+00
  %7604 = fsub fast float 1.000000e+00, %7602
  %7605 = select i1 %7603, float %7602, float %7604
  %7606 = fmul fast float %7605, %7553
  %7607 = fadd fast float %7606, %7551
  %7608 = fmul fast float %7607, 0x3EF0001000000000
  %7609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7608, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7610 = extractvalue %dx.types.ResRet.f32 %7609, 0
  %7611 = fmul fast float %7598, %7535
  %7612 = fadd fast float %7611, %7536
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = select i1 %7557, float 1.000000e+00, float %7613
  %7615 = select i1 %7557, float %7613, float 1.000000e+00
  %7616 = fmul fast float %7562, %7532
  %7617 = fsub fast float 1.000000e+00, %7616
  %7618 = fmul fast float %7617, %7538
  %7619 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7620 = fmul fast float %7619, %7615
  %7621 = fmul fast float %7620, 2.000000e+00
  %7622 = fsub fast float 3.000000e+00, %7621
  %7623 = fmul fast float %7610, %7594
  %7624 = fmul fast float %7620, %7620
  %7625 = fmul fast float %7624, %7623
  %7626 = fmul fast float %7625, %7622
  %7627 = call float @dx.op.binary.f32(i32 36, float %7626, float %7626)  ; FMin(a,b)
  %7628 = call float @dx.op.binary.f32(i32 36, float %7626, float %7627)  ; FMin(a,b)
  %7629 = fcmp fast ogt float %7628, 0.000000e+00
  br i1 %7629, label %7638, label %7630, !dx.controlflow.hints !121

; <label>:7630                                    ; preds = %8130, %7738, %7593
  %7631 = phi float [ %7497, %7738 ], [ %7497, %7593 ], [ %8173, %8130 ]
  %7632 = phi float [ %7498, %7738 ], [ %7498, %7593 ], [ %8174, %8130 ]
  %7633 = phi float [ %7499, %7738 ], [ %7499, %7593 ], [ %8175, %8130 ]
  %7634 = phi float [ %7500, %7738 ], [ %7500, %7593 ], [ %8167, %8130 ]
  %7635 = phi float [ %7501, %7738 ], [ %7501, %7593 ], [ %8168, %8130 ]
  %7636 = phi float [ %7502, %7738 ], [ %7502, %7593 ], [ %8169, %8130 ]
  %7637 = icmp eq i32 %7496, %7506
  br i1 %7637, label %8176, label %7495

; <label>:7638                                    ; preds = %7593
  %7639 = icmp eq i32 %7554, 255
  br i1 %7639, label %7738, label %7640, !dx.controlflow.hints !122

; <label>:7640                                    ; preds = %7638
  %7641 = mul nuw nsw i32 %7554, 176
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = extractvalue %dx.types.ResRet.f32 %7642, 3
  %7647 = add nuw nsw i32 %7641, 16
  %7648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7647, i32 undef)  ; BufferLoad(srv,index,wot)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.ResRet.f32 %7648, 1
  %7651 = add nuw nsw i32 %7641, 32
  %7652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7651, i32 undef)  ; BufferLoad(srv,index,wot)
  %7653 = extractvalue %dx.types.ResRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.ResRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.ResRet.f32 %7652, 2
  %7656 = add nuw nsw i32 %7641, 48
  %7657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7656, i32 undef)  ; BufferLoad(srv,index,wot)
  %7658 = extractvalue %dx.types.ResRet.f32 %7657, 0
  %7659 = extractvalue %dx.types.ResRet.f32 %7657, 1
  %7660 = extractvalue %dx.types.ResRet.f32 %7657, 2
  %7661 = extractvalue %dx.types.ResRet.f32 %7657, 3
  %7662 = add nuw nsw i32 %7641, 64
  %7663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7662, i32 undef)  ; BufferLoad(srv,index,wot)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.ResRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7663, 2
  %7667 = extractvalue %dx.types.ResRet.f32 %7663, 3
  %7668 = add nuw nsw i32 %7641, 80
  %7669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = extractvalue %dx.types.ResRet.f32 %7669, 3
  %7674 = add nuw nsw i32 %7641, 96
  %7675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7674, i32 undef)  ; BufferLoad(srv,index,wot)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7680 = bitcast float %7650 to i32
  %7681 = fmul fast float %7655, %108
  %7682 = fmul fast float %7655, %109
  %7683 = fmul fast float %7655, %110
  %7684 = fadd fast float %7681, %156
  %7685 = fadd fast float %7682, %157
  %7686 = fadd fast float %7683, %158
  %7687 = fmul fast float %7684, %7658
  %7688 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7664, float %7687)  ; FMad(a,b,c)
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %7686, float %7670, float %7688)  ; FMad(a,b,c)
  %7690 = fadd fast float %7689, %7676
  %7691 = fmul fast float %7684, %7659
  %7692 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7665, float %7691)  ; FMad(a,b,c)
  %7693 = call float @dx.op.tertiary.f32(i32 46, float %7686, float %7671, float %7692)  ; FMad(a,b,c)
  %7694 = fadd fast float %7693, %7677
  %7695 = fmul fast float %7684, %7660
  %7696 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7666, float %7695)  ; FMad(a,b,c)
  %7697 = call float @dx.op.tertiary.f32(i32 46, float %7686, float %7672, float %7696)  ; FMad(a,b,c)
  %7698 = fadd fast float %7697, %7678
  %7699 = fmul fast float %7684, %7661
  %7700 = call float @dx.op.tertiary.f32(i32 46, float %7685, float %7667, float %7699)  ; FMad(a,b,c)
  %7701 = call float @dx.op.tertiary.f32(i32 46, float %7686, float %7673, float %7700)  ; FMad(a,b,c)
  %7702 = fadd fast float %7701, %7679
  %7703 = fdiv fast float %7690, %7702
  %7704 = fdiv fast float %7694, %7702
  %7705 = fdiv fast float %7698, %7702
  %7706 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7705)  ; FMax(a,b)
  %7707 = fmul fast float %229, 0x401921FB60000000
  %7708 = call float @dx.op.unary.f32(i32 13, float %7707)  ; Sin(value)
  %7709 = call float @dx.op.unary.f32(i32 12, float %7707)  ; Cos(value)
  %7710 = fsub fast float -0.000000e+00, %7708
  %7711 = fmul fast float %7645, 5.000000e-01
  %7712 = call float @dx.op.dot2.f32(i32 54, float %229, float %229, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7713 = call float @dx.op.unary.f32(i32 22, float %7712)  ; Frc(value)
  %7714 = fmul fast float %7713, 0x404A7DD040000000
  %7715 = call float @dx.op.unary.f32(i32 22, float %7714)  ; Frc(value)
  %7716 = fmul fast float %7715, %7654
  %7717 = fadd fast float %7716, %7711
  %7718 = call float @dx.op.tertiary.f32(i32 46, float %7717, float %7710, float 0.000000e+00)  ; FMad(a,b,c)
  %7719 = call float @dx.op.tertiary.f32(i32 46, float %7717, float %7709, float 0.000000e+00)  ; FMad(a,b,c)
  %7720 = fadd fast float %7718, %7703
  %7721 = fadd fast float %7719, %7704
  %7722 = fmul fast float %7720, %7649
  %7723 = fmul fast float %7721, %7649
  %7724 = call float @dx.op.binary.f32(i32 35, float %7722, float %7645)  ; FMax(a,b)
  %7725 = call float @dx.op.binary.f32(i32 35, float %7723, float %7645)  ; FMax(a,b)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7724, float %7646)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7725, float %7646)  ; FMin(a,b)
  %7728 = fadd fast float %7726, %7643
  %7729 = fadd fast float %7727, %7644
  %7730 = uitofp i32 %7680 to float
  %7731 = fadd fast float %7706, %7653
  %7732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7728, float %7729, float %7730, float undef, i32 0, i32 0, i32 undef, float %7731)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = fadd fast float %7733, -1.000000e+00
  %7735 = fmul fast float %7734, %7614
  %7736 = fadd fast float %7735, 1.000000e+00
  %7737 = fmul fast float %7736, %7626
  br label %7738

; <label>:7738                                    ; preds = %7640, %7638
  %7739 = phi float [ %7737, %7640 ], [ %7626, %7638 ]
  %7740 = call float @dx.op.binary.f32(i32 36, float %7739, float %7739)  ; FMin(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7739, float %7740)  ; FMin(a,b)
  %7742 = fcmp fast ogt float %7741, 0.000000e+00
  br i1 %7742, label %7743, label %7630, !dx.controlflow.hints !123

; <label>:7743                                    ; preds = %7738
  %7744 = fmul fast float %7739, %7547
  %7745 = fmul fast float %7739, %7548
  %7746 = fmul fast float %7739, %7549
  %7747 = fsub fast float %7531, %5500
  %7748 = fcmp fast ogt float %7747, 0.000000e+00
  %7749 = fsub fast float %158, %5500
  %7750 = fcmp fast ogt float %7749, 0.000000e+00
  %7751 = xor i1 %7750, %7748
  %7752 = fsub fast float %5500, %7531
  %7753 = fmul fast float %7752, 2.000000e+00
  %7754 = fadd fast float %7753, %7531
  %7755 = select i1 %7751, float %7531, float %7754
  %7756 = fsub fast float %7755, %158
  %7757 = call float @dx.op.dot3.f32(i32 55, float %7558, float %7559, float %7756, float %7558, float %7559, float %7756)  ; Dot3(ax,ay,az,bx,by,bz)
  %7758 = call float @dx.op.unary.f32(i32 25, float %7757)  ; Rsqrt(value)
  %7759 = fmul fast float %7758, %7558
  %7760 = fmul fast float %7758, %7559
  %7761 = fmul fast float %7758, %7756
  %7762 = fsub fast float %5500, %158
  %7763 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7762)  ; Dot3(ax,ay,az,bx,by,bz)
  %7764 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7759, float %7760, float %7761)  ; Dot3(ax,ay,az,bx,by,bz)
  %7765 = fdiv fast float 1.000000e+00, %7764
  %7766 = fmul fast float %7765, %7763
  %7767 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7768 = fcmp fast ogt float %7767, 0.000000e+00
  %7769 = fcmp fast olt float %7767, 0.000000e+00
  %7770 = zext i1 %7768 to i32
  %7771 = zext i1 %7769 to i32
  %7772 = sub nsw i32 %7770, %7771
  %7773 = sitofp i32 %7772 to float
  %7774 = fsub fast float %7755, %5500
  %7775 = call float @dx.op.dot3.f32(i32 55, float %7558, float %7559, float %7774, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7776 = fcmp fast ogt float %7775, 0.000000e+00
  %7777 = fcmp fast olt float %7775, 0.000000e+00
  %7778 = zext i1 %7776 to i32
  %7779 = zext i1 %7777 to i32
  %7780 = sub nsw i32 %7778, %7779
  %7781 = sitofp i32 %7780 to float
  %7782 = fcmp fast une float %7773, %7781
  br i1 %7782, label %7783, label %7793

; <label>:7783                                    ; preds = %7743
  %7784 = fmul fast float %7766, %7761
  %7785 = fmul fast float %7766, %7760
  %7786 = fmul fast float %7766, %7759
  %7787 = fmul fast float %7786, %7786
  %7788 = fmul fast float %7785, %7785
  %7789 = fadd fast float %7787, %7788
  %7790 = fmul fast float %7784, %7784
  %7791 = fadd fast float %7789, %7790
  %7792 = call float @dx.op.unary.f32(i32 24, float %7791)  ; Sqrt(value)
  br label %7805

; <label>:7793                                    ; preds = %7743
  %7794 = icmp slt i32 %7772, 0
  br i1 %7794, label %7795, label %7805

; <label>:7795                                    ; preds = %7793
  %7796 = fsub fast float %156, %7529
  %7797 = fsub fast float %157, %7530
  %7798 = fsub fast float %158, %7755
  %7799 = fmul fast float %7796, %7796
  %7800 = fmul fast float %7797, %7797
  %7801 = fadd fast float %7799, %7800
  %7802 = fmul fast float %7798, %7798
  %7803 = fadd fast float %7801, %7802
  %7804 = call float @dx.op.unary.f32(i32 24, float %7803)  ; Sqrt(value)
  br label %7805

; <label>:7805                                    ; preds = %7795, %7793, %7783
  %7806 = phi float [ %7792, %7783 ], [ %7804, %7795 ], [ 0.000000e+00, %7793 ]
  %7807 = and i1 %7750, %7748
  %7808 = fsub fast float -0.000000e+00, %7806
  %7809 = select i1 %7807, float -0.000000e+00, float %7808
  %7810 = fmul fast float %5501, 0x3FF7154760000000
  %7811 = fmul fast float %7810, %7809
  %7812 = fmul fast float %5502, 0x3FF7154760000000
  %7813 = fmul fast float %7812, %7809
  %7814 = fmul fast float %5503, 0x3FF7154760000000
  %7815 = fmul fast float %7814, %7809
  %7816 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7817 = call float @dx.op.unary.f32(i32 21, float %7813)  ; Exp(value)
  %7818 = call float @dx.op.unary.f32(i32 21, float %7815)  ; Exp(value)
  %7819 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7821 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7822 = fmul fast float %7744, %7819
  %7823 = fmul fast float %7745, %7820
  %7824 = fmul fast float %7746, %7821
  %7825 = fsub fast float %7564, %5700
  %7826 = fsub fast float %7565, %5699
  %7827 = fsub fast float %7566, %5698
  %7828 = call float @dx.op.dot3.f32(i32 55, float %7825, float %7826, float %7827, float %7825, float %7826, float %7827)  ; Dot3(ax,ay,az,bx,by,bz)
  %7829 = call float @dx.op.unary.f32(i32 25, float %7828)  ; Rsqrt(value)
  %7830 = fmul fast float %7829, %7825
  %7831 = fmul fast float %7829, %7826
  %7832 = fmul fast float %7829, %7827
  %7833 = call float @dx.op.dot3.f32(i32 55, float %7564, float %7565, float %7566, float %5707, float %5708, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %7834 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5696, float %5695, float %7830, float %7831, float %7832)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7836 = fmul fast float %7835, %7571
  %7837 = fmul fast float %7835, %7835
  %7838 = fmul fast float %7837, %5728
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = fmul fast float %7836, %7839
  %7841 = bitcast float %7561 to i32
  %7842 = ashr i32 %7841, 1
  %7843 = sub nsw i32 1597463007, %7842
  %7844 = bitcast i32 %7843 to float
  %7845 = fmul fast float %7844, %7558
  %7846 = fmul fast float %7844, %7559
  %7847 = fmul fast float %7844, %7560
  %7848 = fsub fast float %7845, %5700
  %7849 = fsub fast float %7846, %5699
  %7850 = fsub fast float %7847, %5698
  %7851 = call float @dx.op.dot3.f32(i32 55, float %7848, float %7849, float %7850, float %7848, float %7849, float %7850)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = call float @dx.op.unary.f32(i32 25, float %7851)  ; Rsqrt(value)
  %7853 = fmul fast float %7848, %7852
  %7854 = fmul fast float %7849, %7852
  %7855 = fmul fast float %7850, %7852
  %7856 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float %7853, float %7854, float %7855)  ; Dot3(ax,ay,az,bx,by,bz)
  %7857 = fmul fast float %7856, %7856
  %7858 = call float @dx.op.unary.f32(i32 6, float %7833)  ; FAbs(value)
  %7859 = call float @dx.op.binary.f32(i32 35, float %6168, float 0x3F847AE140000000)  ; FMax(a,b)
  %7860 = fmul fast float %7859, %7859
  %7861 = fmul fast float %7860, %7860
  %7862 = fsub fast float 1.000000e+00, %7861
  %7863 = fmul fast float %5715, %5715
  %7864 = fmul fast float %7863, %7862
  %7865 = fadd fast float %7864, %7861
  %7866 = bitcast float %7865 to i32
  %7867 = ashr i32 %7866, 1
  %7868 = add nsw i32 %7867, 532487669
  %7869 = bitcast i32 %7868 to float
  %7870 = fadd fast float %7869, %5715
  %7871 = fmul fast float %7861, %7857
  %7872 = fsub fast float 1.000000e+00, %7857
  %7873 = fadd fast float %7872, %7871
  %7874 = fmul fast float %7858, %7858
  %7875 = fmul fast float %7874, %7862
  %7876 = fadd fast float %7875, %7861
  %7877 = bitcast float %7876 to i32
  %7878 = ashr i32 %7877, 1
  %7879 = add nsw i32 %7878, 532487669
  %7880 = bitcast i32 %7879 to float
  %7881 = fadd fast float %7880, %7858
  %7882 = fmul fast float %7873, %7873
  %7883 = fmul fast float %7882, %7870
  %7884 = fmul fast float %7883, %7881
  %7885 = fdiv fast float 1.000000e+00, %7884
  %7886 = bitcast float %7861 to i32
  %7887 = sitofp i32 %7886 to float
  %7888 = fmul fast float %7887, 0x3FE7F73180000000
  %7889 = fadd fast float %7888, 0x41AFE27C40000000
  %7890 = fptosi float %7889 to i32
  %7891 = bitcast i32 %7890 to float
  %7892 = fmul fast float %7526, 0x3FD80E9D60000000
  %7893 = fmul fast float %7892, %7844
  %7894 = fadd fast float %7891, %7893
  %7895 = bitcast float %7894 to i32
  %7896 = sub nsw i32 2129859010, %7895
  %7897 = bitcast i32 %7896 to float
  %7898 = fmul fast float %7861, %7885
  %7899 = fmul fast float %7898, %7891
  %7900 = fmul fast float %7899, %7897
  %7901 = fmul fast float %6014, 0x3FF9999980000000
  %7902 = fsub fast float 5.000000e+00, %7901
  %7903 = call float @dx.op.unary.f32(i32 6, float %7834)  ; FAbs(value)
  %7904 = fsub fast float 1.000000e+00, %7903
  %7905 = fmul fast float %6014, 0x41D9660740000000
  %7906 = fadd fast float %7905, 0xC1EFBF8940000000
  %7907 = bitcast float %7904 to i32
  %7908 = sitofp i32 %7907 to float
  %7909 = fmul fast float %7908, %7902
  %7910 = fadd fast float %7906, %7909
  %7911 = fptosi float %7910 to i32
  %7912 = bitcast i32 %7911 to float
  %7913 = fsub fast float 1.000000e+00, %5704
  %7914 = fsub fast float 1.000000e+00, %5705
  %7915 = fsub fast float 1.000000e+00, %5713
  %7916 = fmul fast float %7912, %7913
  %7917 = fmul fast float %7912, %7914
  %7918 = fmul fast float %7912, %7915
  %7919 = fadd fast float %7916, %5704
  %7920 = fadd fast float %7917, %5705
  %7921 = fadd fast float %7918, %5713
  br i1 %6037, label %7922, label %7945

; <label>:7922                                    ; preds = %7805
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %7903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = fadd fast float %7924, -5.000000e-01
  %7928 = fadd fast float %7925, -5.000000e-01
  %7929 = fadd fast float %7926, -5.000000e-01
  %7930 = fmul fast float %5704, 4.000000e+00
  %7931 = fmul fast float %7930, %7913
  %7932 = fmul fast float %7931, %7927
  %7933 = fmul fast float %5705, 4.000000e+00
  %7934 = fmul fast float %7933, %7914
  %7935 = fmul fast float %7934, %7928
  %7936 = fmul fast float %5713, 4.000000e+00
  %7937 = fmul fast float %7936, %7915
  %7938 = fmul fast float %7937, %7929
  %7939 = fadd fast float %7932, %7919
  %7940 = fadd fast float %7935, %7920
  %7941 = fadd fast float %7938, %7921
  %7942 = call float @dx.op.unary.f32(i32 7, float %7939)  ; Saturate(value)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  br label %7945

; <label>:7945                                    ; preds = %7922, %7805
  %7946 = phi float [ %7942, %7922 ], [ %7919, %7805 ]
  %7947 = phi float [ %7943, %7922 ], [ %7920, %7805 ]
  %7948 = phi float [ %7944, %7922 ], [ %7921, %7805 ]
  %7949 = fmul fast float %7833, 9.843750e-01
  %7950 = fadd fast float %7949, 7.812500e-03
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7950, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = extractvalue %dx.types.ResRet.f32 %7951, 3
  %7956 = fsub fast float %7954, %7952
  %7957 = fsub fast float %7955, %7953
  %7958 = fmul fast float %7956, %6024
  %7959 = fmul fast float %7957, %6024
  %7960 = fadd fast float %7958, %7952
  %7961 = fadd fast float %7959, %7953
  %7962 = fmul fast float %7960, %5704
  %7963 = fmul fast float %7960, %5705
  %7964 = fmul fast float %7960, %5713
  %7965 = fadd fast float %7962, %7961
  %7966 = fadd fast float %7963, %7961
  %7967 = fadd fast float %7964, %7961
  br i1 %6037, label %7968, label %7991

; <label>:7968                                    ; preds = %7945
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %7833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.ResRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.ResRet.f32 %7969, 2
  %7973 = fadd fast float %7970, -5.000000e-01
  %7974 = fadd fast float %7971, -5.000000e-01
  %7975 = fadd fast float %7972, -5.000000e-01
  %7976 = fmul fast float %5704, 4.000000e+00
  %7977 = fmul fast float %7976, %7913
  %7978 = fmul fast float %7977, %7973
  %7979 = fmul fast float %5705, 4.000000e+00
  %7980 = fmul fast float %7979, %7914
  %7981 = fmul fast float %7980, %7974
  %7982 = fmul fast float %5713, 4.000000e+00
  %7983 = fmul fast float %7982, %7915
  %7984 = fmul fast float %7983, %7975
  %7985 = fadd fast float %7978, %7965
  %7986 = fadd fast float %7981, %7966
  %7987 = fadd fast float %7984, %7967
  %7988 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  br label %7991

; <label>:7991                                    ; preds = %7968, %7945
  %7992 = phi float [ %7988, %7968 ], [ %7965, %7945 ]
  %7993 = phi float [ %7989, %7968 ], [ %7966, %7945 ]
  %7994 = phi float [ %7990, %7968 ], [ %7967, %7945 ]
  %7995 = call float @dx.op.binary.f32(i32 35, float %7993, float %7994)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7992, float %7995)  ; FMax(a,b)
  %7997 = fsub fast float 1.000000e+00, %7996
  %7998 = call float @dx.op.binary.f32(i32 35, float %7858, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7999 = fdiv fast float %4419, %7998
  %8000 = fmul fast float %6108, %7999
  %8001 = fmul fast float %6110, %7999
  %8002 = fmul fast float %6112, %7999
  %8003 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8004 = call float @dx.op.unary.f32(i32 21, float %8001)  ; Exp(value)
  %8005 = call float @dx.op.unary.f32(i32 21, float %8002)  ; Exp(value)
  %8006 = call float @dx.op.unary.f32(i32 7, float %8003)  ; Saturate(value)
  %8007 = call float @dx.op.unary.f32(i32 7, float %8004)  ; Saturate(value)
  %8008 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8009 = select i1 %6105, float %8006, float 0.000000e+00
  %8010 = select i1 %6106, float %8007, float 0.000000e+00
  %8011 = select i1 %6107, float %8008, float 0.000000e+00
  %8012 = fsub fast float -0.000000e+00, %5707
  %8013 = fsub fast float -0.000000e+00, %5708
  %8014 = fsub fast float -0.000000e+00, %5709
  %8015 = call float @dx.op.dot3.f32(i32 55, float %7564, float %7565, float %7566, float %8012, float %8013, float %8014)  ; Dot3(ax,ay,az,bx,by,bz)
  %8016 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8017 = fmul fast float %8016, %7571
  %8018 = fmul fast float %8016, 9.843750e-01
  %8019 = fadd fast float %8018, 7.812500e-03
  %8020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8019, float %6018, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.ResRet.f32 %8020, 2
  %8024 = extractvalue %dx.types.ResRet.f32 %8020, 3
  %8025 = fsub fast float %8023, %8021
  %8026 = fsub fast float %8024, %8022
  %8027 = fmul fast float %8025, %6024
  %8028 = fmul fast float %8026, %6024
  %8029 = fadd fast float %8027, %8021
  %8030 = fadd fast float %8028, %8022
  %8031 = fmul fast float %8029, %5704
  %8032 = fmul fast float %8029, %5705
  %8033 = fmul fast float %8029, %5713
  %8034 = fadd fast float %8031, %8030
  %8035 = fadd fast float %8032, %8030
  %8036 = fadd fast float %8033, %8030
  br i1 %6037, label %8037, label %8060

; <label>:8037                                    ; preds = %7991
  %8038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5069, float %8016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8039 = extractvalue %dx.types.ResRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.ResRet.f32 %8038, 1
  %8041 = extractvalue %dx.types.ResRet.f32 %8038, 2
  %8042 = fadd fast float %8039, -5.000000e-01
  %8043 = fadd fast float %8040, -5.000000e-01
  %8044 = fadd fast float %8041, -5.000000e-01
  %8045 = fmul fast float %5704, 4.000000e+00
  %8046 = fmul fast float %8045, %7913
  %8047 = fmul fast float %8046, %8042
  %8048 = fmul fast float %5705, 4.000000e+00
  %8049 = fmul fast float %8048, %7914
  %8050 = fmul fast float %8049, %8043
  %8051 = fmul fast float %5713, 4.000000e+00
  %8052 = fmul fast float %8051, %7915
  %8053 = fmul fast float %8052, %8044
  %8054 = fadd fast float %8047, %8034
  %8055 = fadd fast float %8050, %8035
  %8056 = fadd fast float %8053, %8036
  %8057 = call float @dx.op.unary.f32(i32 7, float %8054)  ; Saturate(value)
  %8058 = call float @dx.op.unary.f32(i32 7, float %8055)  ; Saturate(value)
  %8059 = call float @dx.op.unary.f32(i32 7, float %8056)  ; Saturate(value)
  br label %8060

; <label>:8060                                    ; preds = %8037, %7991
  %8061 = phi float [ %8057, %8037 ], [ %8034, %7991 ]
  %8062 = phi float [ %8058, %8037 ], [ %8035, %7991 ]
  %8063 = phi float [ %8059, %8037 ], [ %8036, %7991 ]
  %8064 = call float @dx.op.binary.f32(i32 35, float %8062, float %8063)  ; FMax(a,b)
  %8065 = call float @dx.op.binary.f32(i32 35, float %8061, float %8064)  ; FMax(a,b)
  %8066 = fsub fast float 1.000000e+00, %8065
  %8067 = fmul fast float %6168, %6173
  %8068 = fadd fast float %6175, %8067
  %8069 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8070 = fsub fast float %7845, %5721
  %8071 = fsub fast float %7846, %5722
  %8072 = fsub fast float %7847, %5723
  %8073 = call float @dx.op.dot3.f32(i32 55, float %8070, float %8071, float %8072, float %8070, float %8071, float %8072)  ; Dot3(ax,ay,az,bx,by,bz)
  %8074 = call float @dx.op.unary.f32(i32 25, float %8073)  ; Rsqrt(value)
  %8075 = fmul fast float %8070, %8074
  %8076 = fmul fast float %8071, %8074
  %8077 = fmul fast float %8072, %8074
  %8078 = call float @dx.op.dot3.f32(i32 55, float %8012, float %8013, float %8014, float %8075, float %8076, float %8077)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = fmul fast float %8078, %8078
  %8080 = call float @dx.op.unary.f32(i32 6, float %8016)  ; FAbs(value)
  %8081 = call float @dx.op.binary.f32(i32 35, float %8069, float 0x3F847AE140000000)  ; FMax(a,b)
  %8082 = fmul fast float %8081, %8081
  %8083 = fmul fast float %8082, %8082
  %8084 = fsub fast float 1.000000e+00, %8083
  %8085 = fmul fast float %7863, %8084
  %8086 = fadd fast float %8085, %8083
  %8087 = bitcast float %8086 to i32
  %8088 = ashr i32 %8087, 1
  %8089 = add nsw i32 %8088, 532487669
  %8090 = bitcast i32 %8089 to float
  %8091 = fadd fast float %8090, %5715
  %8092 = fmul fast float %8083, %8079
  %8093 = fsub fast float 1.000000e+00, %8079
  %8094 = fadd fast float %8093, %8092
  %8095 = fmul fast float %8080, %8080
  %8096 = fmul fast float %8095, %8084
  %8097 = fadd fast float %8096, %8083
  %8098 = bitcast float %8097 to i32
  %8099 = ashr i32 %8098, 1
  %8100 = add nsw i32 %8099, 532487669
  %8101 = bitcast i32 %8100 to float
  %8102 = fadd fast float %8101, %8080
  %8103 = fmul fast float %8094, %8094
  %8104 = fmul fast float %8103, %8091
  %8105 = fmul fast float %8104, %8102
  %8106 = fdiv fast float 1.000000e+00, %8105
  %8107 = bitcast float %8083 to i32
  %8108 = sitofp i32 %8107 to float
  %8109 = fmul fast float %8108, 0x3FE7F73180000000
  %8110 = fadd fast float %8109, 0x41AFE27C40000000
  %8111 = fptosi float %8110 to i32
  %8112 = bitcast i32 %8111 to float
  %8113 = fadd fast float %8112, %7893
  %8114 = bitcast float %8113 to i32
  %8115 = sub nsw i32 2129859010, %8114
  %8116 = bitcast i32 %8115 to float
  %8117 = fmul fast float %8083, %8106
  %8118 = fmul fast float %8117, %8112
  %8119 = fmul fast float %8118, %8116
  br i1 %7556, label %8120, label %8130

; <label>:8120                                    ; preds = %8060
  %8121 = fmul fast float %8017, %8009
  %8122 = fmul fast float %8017, %8010
  %8123 = fmul fast float %8017, %8011
  %8124 = fmul fast float %8121, %8066
  %8125 = fmul fast float %8124, %8119
  %8126 = fmul fast float %8122, %8066
  %8127 = fmul fast float %8126, %8119
  %8128 = fmul fast float %8123, %8066
  %8129 = fmul fast float %8128, %8119
  br label %8130

; <label>:8130                                    ; preds = %8120, %8060
  %8131 = phi float [ %8125, %8120 ], [ 0.000000e+00, %8060 ]
  %8132 = phi float [ %8127, %8120 ], [ 0.000000e+00, %8060 ]
  %8133 = phi float [ %8129, %8120 ], [ 0.000000e+00, %8060 ]
  %8134 = fmul fast float %7946, %7900
  %8135 = fmul fast float %7947, %7900
  %8136 = fmul fast float %7948, %7900
  %8137 = fsub fast float 1.000000e+00, %7834
  %8138 = bitcast float %8137 to i32
  %8139 = sitofp i32 %8138 to float
  %8140 = fmul fast float %8139, 5.000000e+00
  %8141 = fadd fast float %8140, 0xC1EFBF8940000000
  %8142 = fptosi float %8141 to i32
  %8143 = bitcast i32 %8142 to float
  %8144 = fmul fast float %8143, %5070
  %8145 = fmul fast float %7997, %8144
  %8146 = fmul fast float %8145, %6099
  %8147 = fmul fast float %8145, %6100
  %8148 = fmul fast float %8145, %6101
  %8149 = fadd fast float %8146, %8134
  %8150 = fadd fast float %8147, %8135
  %8151 = fadd fast float %8148, %8136
  %8152 = fmul fast float %8149, %7840
  %8153 = fmul fast float %8150, %7840
  %8154 = fmul fast float %8151, %7840
  %8155 = fadd fast float %8152, %8131
  %8156 = fadd fast float %8153, %8132
  %8157 = fadd fast float %8154, %8133
  %8158 = fmul fast float %7822, %5066
  %8159 = fmul fast float %8158, %7840
  %8160 = fmul fast float %8159, %7997
  %8161 = fmul fast float %7823, %5066
  %8162 = fmul fast float %8161, %7840
  %8163 = fmul fast float %8162, %7997
  %8164 = fmul fast float %7824, %5066
  %8165 = fmul fast float %8164, %7840
  %8166 = fmul fast float %8165, %7997
  %8167 = fadd fast float %8160, %7500
  %8168 = fadd fast float %8163, %7501
  %8169 = fadd fast float %8166, %7502
  %8170 = fmul fast float %8158, %8155
  %8171 = fmul fast float %8161, %8156
  %8172 = fmul fast float %8164, %8157
  %8173 = fadd fast float %8170, %7497
  %8174 = fadd fast float %8171, %7498
  %8175 = fadd fast float %8172, %7499
  br label %7630

; <label>:8176                                    ; preds = %7630
  br label %8177

; <label>:8177                                    ; preds = %8176, %7463
  %8178 = phi float [ %7465, %7463 ], [ %7631, %8176 ]
  %8179 = phi float [ %7466, %7463 ], [ %7632, %8176 ]
  %8180 = phi float [ %7467, %7463 ], [ %7633, %8176 ]
  %8181 = phi float [ %7468, %7463 ], [ %7634, %8176 ]
  %8182 = phi float [ %7469, %7463 ], [ %7635, %8176 ]
  %8183 = phi float [ %7470, %7463 ], [ %7636, %8176 ]
  %8184 = add i32 %7464, 1
  %8185 = icmp ugt i32 %8184, %7460
  br i1 %8185, label %8186, label %7463

; <label>:8186                                    ; preds = %8177
  br label %8187

; <label>:8187                                    ; preds = %8186, %7413, %7403
  %8188 = phi float [ %7404, %7403 ], [ %7404, %7413 ], [ %8178, %8186 ]
  %8189 = phi float [ %7405, %7403 ], [ %7405, %7413 ], [ %8179, %8186 ]
  %8190 = phi float [ %7406, %7403 ], [ %7406, %7413 ], [ %8180, %8186 ]
  %8191 = phi float [ %7407, %7403 ], [ %7407, %7413 ], [ %8181, %8186 ]
  %8192 = phi float [ %7408, %7403 ], [ %7408, %7413 ], [ %8182, %8186 ]
  %8193 = phi float [ %7409, %7403 ], [ %7409, %7413 ], [ %8183, %8186 ]
  %8194 = fmul fast float %5066, %6129
  %8195 = fsub fast float -0.000000e+00, %8194
  %8196 = fmul fast float %5066, %6130
  %8197 = fsub fast float -0.000000e+00, %8196
  %8198 = fmul fast float %5066, %6131
  %8199 = fsub fast float -0.000000e+00, %8198
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = fmul fast float %8201, %6135
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8205 = fsub fast float 1.000000e+00, %5074
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = fadd fast float %8193, %5072
  %8208 = fmul fast float %8207, %5074
  %8209 = fmul fast float %8206, %8204
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 3
  %8212 = fmul fast float %8191, %5701
  %8213 = fmul fast float %8192, %5702
  %8214 = fmul fast float %8193, %5703
  %8215 = fcmp fast ogt float %92, %178
  %8216 = and i1 %8215, %5506
  %8217 = or i1 %5512, %8216
  %8218 = icmp eq i32 %5505, 2
  %8219 = fcmp fast ole float %92, %178
  %8220 = and i1 %8219, %8218
  %8221 = or i1 %8220, %8217
  br i1 %8216, label %8222, label %8479

; <label>:8222                                    ; preds = %8187
  %8223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8223, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8223, 3
  %8226 = fmul fast float %8224, %101
  %8227 = fmul fast float %8225, %102
  %8228 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  %8229 = call float @dx.op.unary.f32(i32 7, float %8227)  ; Saturate(value)
  %8230 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8228, float %8229, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.ResRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.ResRet.f32 %8230, 3
  %8235 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8228, float %8229, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8236 = extractvalue %dx.types.ResRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.ResRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.ResRet.f32 %8235, 2
  %8239 = extractvalue %dx.types.ResRet.f32 %8235, 3
  %8240 = call float @dx.op.binary.f32(i32 35, float %8232, float %8233)  ; FMax(a,b)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8231, float %8240)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 35, float %8241, float %8234)  ; FMax(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8237, float %8238)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 36, float %8236, float %8243)  ; FMin(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8244, float %8239)  ; FMin(a,b)
  %8246 = fmul fast float %8242, 2.550000e+02
  %8247 = fadd fast float %8246, 0x3F70101020000000
  %8248 = fptoui float %8247 to i32
  %8249 = fmul fast float %8245, 2.550000e+02
  %8250 = fadd fast float %8249, 0x3F70101020000000
  %8251 = fptoui float %8250 to i32
  %8252 = icmp ult i32 %8248, %8251
  br i1 %8252, label %8253, label %8421

; <label>:8253                                    ; preds = %8222
  %8254 = fcmp fast ogt float %91, 9.843750e-01
  %8255 = fadd fast float %92, -4.000000e+00
  %8256 = select i1 %8254, float -4.000000e+00, float %8255
  %8257 = call float @dx.op.binary.f32(i32 35, float %8256, float 0.000000e+00)  ; FMax(a,b)
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 0
  %8260 = fadd fast float %8259, %8257
  %8261 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8262 = fmul fast float %8260, %8261
  %8263 = call float @dx.op.unary.f32(i32 23, float %8262)  ; Log(value)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8258, 3
  %8265 = fmul fast float %8264, %8263
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8268 = fmul fast float %8265, %8267
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = uitofp i32 %8248 to float
  %8271 = uitofp i32 %8251 to float
  %8272 = fadd fast float %8270, 5.000000e-01
  %8273 = fadd fast float %8271, 5.000000e-01
  %8274 = fmul fast float %8267, %8272
  %8275 = fmul fast float %8267, %8273
  %8276 = fadd fast float %8274, 0x3F0FFB4800000000
  %8277 = fadd fast float %8275, 0xBF0FFB4800000000
  %8278 = call float @dx.op.binary.f32(i32 35, float %8269, float %8276)  ; FMax(a,b)
  %8279 = call float @dx.op.binary.f32(i32 36, float %8278, float %8277)  ; FMin(a,b)
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8283 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8284 = fmul fast float %8281, %8279
  %8285 = fadd fast float %8283, %8284
  %8286 = fadd fast float %8283, %8282
  %8287 = fsub fast float %8281, %8282
  %8288 = fadd fast float %8287, %8283
  %8289 = call float @dx.op.binary.f32(i32 35, float %8285, float %8286)  ; FMax(a,b)
  %8290 = call float @dx.op.binary.f32(i32 36, float %8289, float %8288)  ; FMin(a,b)
  %8291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8228, float %8229, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8292 = extractvalue %dx.types.ResRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.ResRet.f32 %8291, 1
  %8294 = extractvalue %dx.types.ResRet.f32 %8291, 2
  %8295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.i32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.i32 %8295, 1
  %8298 = uitofp i32 %8296 to float
  %8299 = uitofp i32 %8297 to float
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 1
  %8303 = fmul fast float %8298, %8228
  %8304 = fmul fast float %8299, %8229
  %8305 = fadd fast float %8303, -5.000000e-01
  %8306 = fadd fast float %8304, -5.000000e-01
  %8307 = call float @dx.op.unary.f32(i32 22, float %8305)  ; Frc(value)
  %8308 = call float @dx.op.unary.f32(i32 22, float %8306)  ; Frc(value)
  %8309 = fmul fast float %8307, %8307
  %8310 = fmul fast float %8309, %8307
  %8311 = fsub fast float 3.000000e+00, %8307
  %8312 = fmul fast float %8309, %8311
  %8313 = fmul fast float %8307, 3.000000e+00
  %8314 = fmul fast float %8310, 3.000000e+00
  %8315 = fmul fast float %8309, 6.000000e+00
  %8316 = fsub fast float %8314, %8315
  %8317 = fadd fast float %8316, 4.000000e+00
  %8318 = fmul fast float %8317, 0x3FC5555560000000
  %8319 = fmul fast float %8310, -3.000000e+00
  %8320 = fadd fast float %8309, %8307
  %8321 = fmul fast float %8320, 3.000000e+00
  %8322 = fadd fast float %8319, 1.000000e+00
  %8323 = fadd fast float %8322, %8321
  %8324 = fmul fast float %8310, 0x3FC5555560000000
  %8325 = fmul fast float %8308, %8308
  %8326 = fmul fast float %8325, %8308
  %8327 = fsub fast float 3.000000e+00, %8308
  %8328 = fmul fast float %8325, %8327
  %8329 = fmul fast float %8308, 3.000000e+00
  %8330 = fmul fast float %8326, 3.000000e+00
  %8331 = fmul fast float %8325, 6.000000e+00
  %8332 = fsub fast float %8330, %8331
  %8333 = fadd fast float %8332, 4.000000e+00
  %8334 = fmul fast float %8333, 0x3FC5555560000000
  %8335 = fmul fast float %8326, -3.000000e+00
  %8336 = fadd fast float %8325, %8308
  %8337 = fmul fast float %8336, 3.000000e+00
  %8338 = fadd fast float %8335, 1.000000e+00
  %8339 = fadd fast float %8338, %8337
  %8340 = fmul fast float %8326, 0x3FC5555560000000
  %8341 = fadd fast float %8307, 1.000000e+00
  %8342 = fsub fast float 1.000000e+00, %8313
  %8343 = fadd fast float %8342, %8312
  %8344 = fadd fast float %8343, %8317
  %8345 = fmul fast float %8344, 0x3FC5555560000000
  %8346 = fdiv fast float %8318, %8345
  %8347 = fsub fast float %8341, %8346
  %8348 = fsub fast float 1.000000e+00, %8307
  %8349 = fadd fast float %8323, %8310
  %8350 = fmul fast float %8349, 0x3FC5555560000000
  %8351 = fdiv fast float %8324, %8350
  %8352 = fadd fast float %8348, %8351
  %8353 = fadd fast float %8308, 1.000000e+00
  %8354 = fsub fast float 1.000000e+00, %8329
  %8355 = fadd fast float %8354, %8328
  %8356 = fadd fast float %8355, %8333
  %8357 = fmul fast float %8356, 0x3FC5555560000000
  %8358 = fdiv fast float %8334, %8357
  %8359 = fsub fast float %8353, %8358
  %8360 = fsub fast float 1.000000e+00, %8308
  %8361 = fadd fast float %8339, %8326
  %8362 = fmul fast float %8361, 0x3FC5555560000000
  %8363 = fdiv fast float %8340, %8362
  %8364 = fadd fast float %8363, %8360
  %8365 = fmul fast float %8347, %8301
  %8366 = fsub fast float %8228, %8365
  %8367 = fmul fast float %8352, %8301
  %8368 = fadd fast float %8367, %8228
  %8369 = fmul fast float %8364, %8302
  %8370 = fadd fast float %8369, %8229
  %8371 = fmul fast float %8359, %8302
  %8372 = fsub fast float %8229, %8371
  %8373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8366, float %8372, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8374 = extractvalue %dx.types.ResRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.ResRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.ResRet.f32 %8373, 2
  %8377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8368, float %8372, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8378 = extractvalue %dx.types.ResRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.ResRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.ResRet.f32 %8377, 2
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8366, float %8370, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8368, float %8370, float %8290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8386 = extractvalue %dx.types.ResRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.ResRet.f32 %8385, 1
  %8388 = extractvalue %dx.types.ResRet.f32 %8385, 2
  %8389 = fsub fast float %8382, %8374
  %8390 = fsub fast float %8383, %8375
  %8391 = fsub fast float %8384, %8376
  %8392 = fmul fast float %8389, %8362
  %8393 = fmul fast float %8390, %8362
  %8394 = fmul fast float %8391, %8362
  %8395 = fadd fast float %8392, %8374
  %8396 = fadd fast float %8393, %8375
  %8397 = fadd fast float %8394, %8376
  %8398 = fsub fast float %8386, %8378
  %8399 = fsub fast float %8387, %8379
  %8400 = fsub fast float %8388, %8380
  %8401 = fmul fast float %8398, %8362
  %8402 = fmul fast float %8399, %8362
  %8403 = fmul fast float %8400, %8362
  %8404 = fsub fast float %8378, %8395
  %8405 = fadd fast float %8404, %8401
  %8406 = fsub fast float %8379, %8396
  %8407 = fadd fast float %8406, %8402
  %8408 = fsub fast float %8380, %8397
  %8409 = fadd fast float %8408, %8403
  %8410 = fmul fast float %8405, %8350
  %8411 = fmul fast float %8407, %8350
  %8412 = fmul fast float %8409, %8350
  %8413 = fadd fast float %8410, %8395
  %8414 = fadd fast float %8411, %8396
  %8415 = fadd fast float %8412, %8397
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8418 = fmul fast float %8413, %8417
  %8419 = fmul fast float %8414, %8417
  %8420 = fmul fast float %8415, %8417
  br label %8421

; <label>:8421                                    ; preds = %8253, %8222
  %8422 = phi float [ %8292, %8253 ], [ 1.000000e+00, %8222 ]
  %8423 = phi float [ %8293, %8253 ], [ 1.000000e+00, %8222 ]
  %8424 = phi float [ %8294, %8253 ], [ 1.000000e+00, %8222 ]
  %8425 = phi float [ %8418, %8253 ], [ 0.000000e+00, %8222 ]
  %8426 = phi float [ %8419, %8253 ], [ 0.000000e+00, %8222 ]
  %8427 = phi float [ %8420, %8253 ], [ 0.000000e+00, %8222 ]
  %8428 = fmul fast float %8425, %8195
  %8429 = fmul fast float %8426, %8197
  %8430 = fmul fast float %8427, %8199
  %8431 = call float @dx.op.dot3.f32(i32 55, float %8422, float %8423, float %8424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8432 = call float @dx.op.dot3.f32(i32 55, float %8428, float %8429, float %8430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8433 = select i1 %218, float %8431, float %8422
  %8434 = select i1 %218, float %8431, float %8423
  %8435 = select i1 %218, float 1.000000e+00, float %8424
  %8436 = select i1 %218, float %8432, float %8428
  %8437 = select i1 %218, float 0.000000e+00, float %8429
  %8438 = select i1 %218, float 0.000000e+00, float %8430
  %8439 = fmul fast float %8433, %8212
  %8440 = fmul fast float %8434, %8213
  %8441 = fmul fast float %8435, %8214
  %8442 = fadd fast float %8439, %8436
  %8443 = fadd fast float %8440, %8437
  %8444 = fadd fast float %8438, %8441
  %8445 = fmul fast float %8433, %8188
  %8446 = fmul fast float %8434, %8189
  %8447 = fmul fast float %8435, %8190
  %8448 = fmul fast float %126, %8224
  %8449 = fmul fast float %128, %8225
  %8450 = fsub fast float 1.000000e+00, %8448
  %8451 = fsub fast float 1.000000e+00, %8449
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = fmul fast float %8450, %8453
  %8457 = fmul fast float %8450, %8454
  %8458 = fmul fast float %8450, %8455
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8463 = fmul fast float %8451, %8460
  %8464 = fmul fast float %8451, %8461
  %8465 = fmul fast float %8451, %8462
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8470 = fadd fast float %8463, %8467
  %8471 = fadd fast float %8470, %8456
  %8472 = fadd fast float %8464, %8468
  %8473 = fadd fast float %8472, %8457
  %8474 = fadd fast float %8465, %8469
  %8475 = fadd fast float %8474, %8458
  %8476 = fmul fast float %8471, %178
  %8477 = fmul fast float %8473, %178
  %8478 = fmul fast float %8475, %178
  br label %8479

; <label>:8479                                    ; preds = %8421, %8187
  %8480 = phi float [ %8476, %8421 ], [ %156, %8187 ]
  %8481 = phi float [ %8477, %8421 ], [ %157, %8187 ]
  %8482 = phi float [ %8478, %8421 ], [ %158, %8187 ]
  %8483 = phi float [ %178, %8421 ], [ %92, %8187 ]
  %8484 = phi float [ %8442, %8421 ], [ %8212, %8187 ]
  %8485 = phi float [ %8443, %8421 ], [ %8213, %8187 ]
  %8486 = phi float [ %8444, %8421 ], [ %8214, %8187 ]
  %8487 = phi float [ %8445, %8421 ], [ %8188, %8187 ]
  %8488 = phi float [ %8446, %8421 ], [ %8189, %8187 ]
  %8489 = phi float [ %8447, %8421 ], [ %8190, %8187 ]
  %8490 = phi float [ %8422, %8421 ], [ 1.000000e+00, %8187 ]
  br i1 %8221, label %9645, label %8491

; <label>:8491                                    ; preds = %8479
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8506 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8510 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8511 = extractvalue %dx.types.CBufRet.f32 %8507, 3
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 3
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 3
  %8516 = extractvalue %dx.types.CBufRet.f32 %8514, 0
  %8517 = extractvalue %dx.types.CBufRet.f32 %8514, 1
  %8518 = extractvalue %dx.types.CBufRet.f32 %8514, 2
  %8519 = fcmp fast olt float %8518, -5.000000e-01
  %8520 = call float @dx.op.dot3.f32(i32 55, float %8480, float %8481, float %8482, float %8480, float %8481, float %8482)  ; Dot3(ax,ay,az,bx,by,bz)
  %8521 = call float @dx.op.unary.f32(i32 25, float %8520)  ; Rsqrt(value)
  %8522 = fmul fast float %8521, %8520
  %8523 = fmul fast float %8521, %8480
  %8524 = fmul fast float %8521, %8481
  %8525 = fmul fast float %8521, %8482
  %8526 = fadd fast float %8522, %8496
  %8527 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8525, float %8493, float %8494, float %8495)  ; Dot3(ax,ay,az,bx,by,bz)
  %8528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.i32 %8528, 1
  %8530 = and i32 %8529, 1
  %8531 = icmp ne i32 %8530, 0
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 2
  %8534 = fcmp fast ogt float %8533, 0.000000e+00
  %8535 = and i1 %8531, %8534
  br i1 %8535, label %8536, label %8942, !dx.controlflow.hints !124

; <label>:8536                                    ; preds = %8491
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 3
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8543 = fsub fast float %8540, %8542
  %8544 = and i32 %8529, 2
  %8545 = extractvalue %dx.types.CBufRet.i32 %8528, 0
  %8546 = call i32 @dx.op.binary.i32(i32 40, i32 %8545, i32 3)  ; UMin(a,b)
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8551 = extractvalue %dx.types.CBufRet.f32 %8541, 1
  %8552 = fsub fast float %8548, %8550
  %8553 = fsub fast float %8549, %8551
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8556 = fcmp fast ogt float %8555, 0.000000e+00
  %8557 = fsub fast float -0.000000e+00, %8552
  %8558 = fsub fast float -0.000000e+00, %8553
  %8559 = call float @dx.op.dot2.f32(i32 54, float %8523, float %8524, float %8523, float %8524)  ; Dot2(ax,ay,bx,by)
  %8560 = call float @dx.op.dot2.f32(i32 54, float %8523, float %8524, float %8557, float %8558)  ; Dot2(ax,ay,bx,by)
  %8561 = fmul fast float %8560, 2.000000e+00
  %8562 = call float @dx.op.dot2.f32(i32 54, float %8557, float %8558, float %8557, float %8558)  ; Dot2(ax,ay,bx,by)
  %8563 = fmul fast float %8555, %8555
  %8564 = fsub fast float %8562, %8563
  %8565 = fmul fast float %8561, %8561
  %8566 = fmul fast float %8559, 4.000000e+00
  %8567 = fmul fast float %8566, %8564
  %8568 = fsub fast float %8565, %8567
  %8569 = fcmp fast ogt float %8568, 0.000000e+00
  br i1 %8569, label %8570, label %8585

; <label>:8570                                    ; preds = %8536
  %8571 = fcmp fast ogt float %8561, 0.000000e+00
  %8572 = call float @dx.op.unary.f32(i32 24, float %8568)  ; Sqrt(value)
  %8573 = fsub fast float -0.000000e+00, %8572
  %8574 = select i1 %8571, float %8572, float %8573
  %8575 = fadd fast float %8574, %8561
  %8576 = fmul float %8575, -5.000000e-01
  %8577 = fdiv fast float %8576, %8559
  %8578 = call float @dx.op.binary.f32(i32 35, float %8577, float 0.000000e+00)  ; FMax(a,b)
  %8579 = call float @dx.op.binary.f32(i32 36, float %8522, float %8578)  ; FMin(a,b)
  %8580 = fdiv fast float %8564, %8576
  %8581 = call float @dx.op.binary.f32(i32 35, float %8580, float 0.000000e+00)  ; FMax(a,b)
  %8582 = call float @dx.op.binary.f32(i32 36, float %8522, float %8581)  ; FMin(a,b)
  %8583 = call float @dx.op.binary.f32(i32 36, float %8579, float %8582)  ; FMin(a,b)
  %8584 = call float @dx.op.binary.f32(i32 35, float %8579, float %8582)  ; FMax(a,b)
  br label %8585

; <label>:8585                                    ; preds = %8570, %8536
  %8586 = phi float [ %8584, %8570 ], [ -1.000000e+00, %8536 ]
  %8587 = phi float [ %8583, %8570 ], [ -1.000000e+00, %8536 ]
  %8588 = phi i1 [ true, %8570 ], [ false, %8536 ]
  %8589 = and i1 %8556, %8588
  br i1 %8589, label %8590, label %8592

; <label>:8590                                    ; preds = %8585
  %8591 = fcmp fast oeq float %8587, %8586
  br i1 %8591, label %8895, label %8593

; <label>:8592                                    ; preds = %8585
  br i1 %8556, label %8895, label %8593

; <label>:8593                                    ; preds = %8592, %8590
  %8594 = phi float [ %8522, %8592 ], [ %8586, %8590 ]
  %8595 = phi float [ 0.000000e+00, %8592 ], [ %8587, %8590 ]
  %8596 = icmp ne i32 %8544, 0
  %8597 = fmul fast float %8594, %8525
  %8598 = fadd fast float %8597, %8538
  %8599 = fmul fast float %8598, %8594
  %8600 = select i1 %8596, float 0.000000e+00, float %8599
  %8601 = fcmp fast oeq float %8525, 0.000000e+00
  %8602 = fdiv fast float %8543, %8525
  %8603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8602)  ; FMax(a,b)
  %8604 = select i1 %8601, float %8594, float %8603
  %8605 = call float @dx.op.binary.f32(i32 36, float %8594, float %8604)  ; FMin(a,b)
  %8606 = fcmp fast ogt float %8525, 0.000000e+00
  %8607 = fcmp fast olt float %8543, 0.000000e+00
  br i1 %8606, label %8608, label %8665

; <label>:8608                                    ; preds = %8593
  %8609 = icmp eq i32 %8544, 0
  br i1 %8607, label %8610, label %8654

; <label>:8610                                    ; preds = %8608
  %8611 = select i1 %8609, float %8594, float 0.000000e+00
  %8612 = fsub fast float -0.000000e+00, %8611
  %8613 = call float @dx.op.unary.f32(i32 6, float %8612)  ; FAbs(value)
  %8614 = fmul fast float %8611, %8525
  %8615 = fadd fast float %8614, %8538
  %8616 = fmul fast float %8613, %8615
  %8617 = fsub fast float %8600, %8616
  %8618 = fsub fast float %8594, %8613
  %8619 = select i1 %8609, float %8618, float 0.000000e+00
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.CBufRet.f32 %8620, 1
  %8623 = extractvalue %dx.types.CBufRet.f32 %8620, 2
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8627 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8628 = extractvalue %dx.types.CBufRet.f32 %8624, 3
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 3
  %8631 = call float @dx.op.binary.f32(i32 36, float %8617, float %8630)  ; FMin(a,b)
  %8632 = fmul fast float %8628, %8619
  %8633 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8634 = fsub fast float %8625, %8621
  %8635 = fsub fast float %8626, %8622
  %8636 = fsub fast float %8627, %8623
  %8637 = fmul fast float %8633, %8634
  %8638 = fmul fast float %8633, %8635
  %8639 = fmul fast float %8633, %8636
  %8640 = fadd fast float %8637, %8621
  %8641 = fadd fast float %8638, %8622
  %8642 = fadd fast float %8639, %8623
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = fadd fast float %8645, %8644
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8649 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8650 = fadd fast float %8649, %8648
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = fmul fast float %8647, %8631
  %8653 = fmul fast float %8652, %8651
  br label %8895

; <label>:8654                                    ; preds = %8608
  br i1 %8609, label %8655, label %8676

; <label>:8655                                    ; preds = %8654
  %8656 = call float @dx.op.binary.f32(i32 36, float %8605, float %8595)  ; FMin(a,b)
  %8657 = fsub fast float %8605, %8656
  %8658 = fsub fast float %8657, %8594
  %8659 = call float @dx.op.unary.f32(i32 6, float %8658)  ; FAbs(value)
  %8660 = fadd fast float %8657, %8594
  %8661 = fmul fast float %8660, %8525
  %8662 = fadd fast float %8661, %8538
  %8663 = fmul fast float %8662, %8659
  %8664 = fsub fast float %8600, %8663
  br label %8676

; <label>:8665                                    ; preds = %8593
  br i1 %8607, label %8666, label %8676

; <label>:8666                                    ; preds = %8665
  %8667 = call float @dx.op.binary.f32(i32 35, float %8595, float %8605)  ; FMax(a,b)
  %8668 = icmp eq i32 %8544, 0
  %8669 = select i1 %8668, float %8605, float 0.000000e+00
  %8670 = fsub fast float -0.000000e+00, %8669
  %8671 = call float @dx.op.unary.f32(i32 6, float %8670)  ; FAbs(value)
  %8672 = fmul fast float %8669, %8525
  %8673 = fadd fast float %8672, %8538
  %8674 = fmul fast float %8671, %8673
  %8675 = fsub fast float %8600, %8674
  br label %8676

; <label>:8676                                    ; preds = %8666, %8665, %8655, %8654
  %8677 = phi float [ %8595, %8654 ], [ %8595, %8655 ], [ %8667, %8666 ], [ %8595, %8665 ]
  %8678 = phi float [ 0.000000e+00, %8654 ], [ %8659, %8655 ], [ %8671, %8666 ], [ 0.000000e+00, %8665 ]
  %8679 = phi float [ %8600, %8654 ], [ %8664, %8655 ], [ %8675, %8666 ], [ %8600, %8665 ]
  %8680 = phi float [ %8605, %8654 ], [ %8605, %8655 ], [ %8594, %8666 ], [ %8594, %8665 ]
  %8681 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8681, align 4, !tbaa !125, !noalias !127
  %8682 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8682, align 4, !tbaa !125, !noalias !127
  %8683 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8683, align 4, !tbaa !125, !noalias !127
  %8684 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8684, align 4, !tbaa !125, !noalias !127
  %8685 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8685, align 4, !tbaa !125, !noalias !127
  %8686 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8686, align 4, !tbaa !125, !noalias !127
  %8687 = icmp sgt i32 %8546, 0
  br i1 %8687, label %8688, label %8749

; <label>:8688                                    ; preds = %8676
  br label %8689

; <label>:8689                                    ; preds = %8738, %8688
  %8690 = phi i32 [ %8739, %8738 ], [ 0, %8688 ]
  %8691 = phi i32 [ %8740, %8738 ], [ 0, %8688 ]
  %8692 = add nuw i32 %8691, 171
  %8693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8692)  ; CBufferLoadLegacy(handle,regIndex)
  %8694 = extractvalue %dx.types.CBufRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.CBufRet.f32 %8693, 1
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 0
  %8698 = extractvalue %dx.types.CBufRet.f32 %8696, 1
  %8699 = fsub fast float %8694, %8697
  %8700 = fsub fast float %8695, %8698
  %8701 = extractvalue %dx.types.CBufRet.f32 %8693, 2
  %8702 = fsub fast float -0.000000e+00, %8699
  %8703 = fsub fast float -0.000000e+00, %8700
  %8704 = call float @dx.op.dot2.f32(i32 54, float %8523, float %8524, float %8702, float %8703)  ; Dot2(ax,ay,bx,by)
  %8705 = fmul fast float %8704, 2.000000e+00
  %8706 = call float @dx.op.dot2.f32(i32 54, float %8702, float %8703, float %8702, float %8703)  ; Dot2(ax,ay,bx,by)
  %8707 = fmul fast float %8701, %8701
  %8708 = fsub fast float %8706, %8707
  %8709 = fmul fast float %8705, %8705
  %8710 = fmul fast float %8566, %8708
  %8711 = fsub fast float %8709, %8710
  %8712 = fcmp fast ogt float %8711, 0.000000e+00
  br i1 %8712, label %8713, label %8728

; <label>:8713                                    ; preds = %8689
  %8714 = fcmp fast ogt float %8705, 0.000000e+00
  %8715 = call float @dx.op.unary.f32(i32 24, float %8711)  ; Sqrt(value)
  %8716 = fsub fast float -0.000000e+00, %8715
  %8717 = select i1 %8714, float %8715, float %8716
  %8718 = fadd fast float %8717, %8705
  %8719 = fmul float %8718, -5.000000e-01
  %8720 = fdiv fast float %8719, %8559
  %8721 = call float @dx.op.binary.f32(i32 35, float %8720, float 0.000000e+00)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8594, float %8721)  ; FMin(a,b)
  %8723 = fdiv fast float %8708, %8719
  %8724 = call float @dx.op.binary.f32(i32 35, float %8723, float 0.000000e+00)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 36, float %8594, float %8724)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8722, float %8725)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8722, float %8725)  ; FMax(a,b)
  br label %8728

; <label>:8728                                    ; preds = %8713, %8689
  %8729 = phi float [ %8727, %8713 ], [ -1.000000e+00, %8689 ]
  %8730 = phi float [ %8726, %8713 ], [ -1.000000e+00, %8689 ]
  %8731 = phi i1 [ true, %8713 ], [ false, %8689 ]
  br i1 %8731, label %8732, label %8738

; <label>:8732                                    ; preds = %8728
  %8733 = call float @dx.op.binary.f32(i32 35, float %8677, float %8730)  ; FMax(a,b)
  %8734 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8691
  store float %8733, float* %8734, align 4, !tbaa !125, !noalias !127
  %8735 = call float @dx.op.binary.f32(i32 35, float %8677, float %8729)  ; FMax(a,b)
  %8736 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8691
  store float %8735, float* %8736, align 4, !tbaa !125, !noalias !127
  %8737 = add nsw i32 %8690, 1
  br label %8738

; <label>:8738                                    ; preds = %8732, %8728
  %8739 = phi i32 [ %8737, %8732 ], [ %8690, %8728 ]
  %8740 = add nuw nsw i32 %8691, 1
  %8741 = icmp eq i32 %8740, %8546
  br i1 %8741, label %8742, label %8689

; <label>:8742                                    ; preds = %8738
  %8743 = load float, float* %8683, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8744 = load float, float* %8682, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  %8745 = load float, float* %8681, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  %8746 = load float, float* %8686, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8747 = load float, float* %8685, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  %8748 = load float, float* %8684, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  br label %8749

; <label>:8749                                    ; preds = %8742, %8676
  %8750 = phi float [ -1.000000e+00, %8676 ], [ %8748, %8742 ]
  %8751 = phi float [ -1.000000e+00, %8676 ], [ %8747, %8742 ]
  %8752 = phi float [ -1.000000e+00, %8676 ], [ %8746, %8742 ]
  %8753 = phi float [ -1.000000e+00, %8676 ], [ %8745, %8742 ]
  %8754 = phi float [ -1.000000e+00, %8676 ], [ %8744, %8742 ]
  %8755 = phi float [ -1.000000e+00, %8676 ], [ %8743, %8742 ]
  %8756 = phi i32 [ 0, %8676 ], [ %8739, %8742 ]
  %8757 = call float @dx.op.binary.f32(i32 36, float %8754, float %8755)  ; FMin(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8753, float %8757)  ; FMin(a,b)
  %8759 = call float @dx.op.binary.f32(i32 35, float %8753, float %8754)  ; FMax(a,b)
  %8760 = call float @dx.op.binary.f32(i32 36, float %8759, float %8755)  ; FMin(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8753, float %8754)  ; FMin(a,b)
  %8762 = call float @dx.op.binary.f32(i32 35, float %8761, float %8760)  ; FMax(a,b)
  %8763 = call float @dx.op.binary.f32(i32 35, float %8754, float %8755)  ; FMax(a,b)
  %8764 = call float @dx.op.binary.f32(i32 35, float %8753, float %8763)  ; FMax(a,b)
  store float %8758, float* %8681, align 4, !tbaa !125, !alias.scope !151, !noalias !152
  store float %8762, float* %8682, align 4, !tbaa !125, !alias.scope !149, !noalias !150
  store float %8764, float* %8683, align 4, !tbaa !125, !alias.scope !143, !noalias !146
  %8765 = call float @dx.op.binary.f32(i32 36, float %8751, float %8752)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8750, float %8765)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8750, float %8751)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 36, float %8767, float %8752)  ; FMin(a,b)
  %8769 = call float @dx.op.binary.f32(i32 36, float %8750, float %8751)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8769, float %8768)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 35, float %8751, float %8752)  ; FMax(a,b)
  %8772 = call float @dx.op.binary.f32(i32 35, float %8750, float %8771)  ; FMax(a,b)
  store float %8766, float* %8684, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %8770, float* %8685, align 4, !tbaa !125, !alias.scope !159, !noalias !160
  store float %8772, float* %8686, align 4, !tbaa !125, !alias.scope !153, !noalias !156
  %8773 = sub nsw i32 3, %8756
  %8774 = icmp sgt i32 %8773, 2
  br i1 %8774, label %8775, label %8813

; <label>:8775                                    ; preds = %8749
  %8776 = icmp eq i32 %8544, 0
  %8777 = fsub fast float %8594, %8678
  %8778 = select i1 %8776, float %8777, float %8678
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 0
  %8781 = extractvalue %dx.types.CBufRet.f32 %8779, 1
  %8782 = extractvalue %dx.types.CBufRet.f32 %8779, 2
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8786 = extractvalue %dx.types.CBufRet.f32 %8783, 2
  %8787 = extractvalue %dx.types.CBufRet.f32 %8783, 3
  %8788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.f32 %8788, 3
  %8790 = call float @dx.op.binary.f32(i32 36, float %8679, float %8789)  ; FMin(a,b)
  %8791 = fmul fast float %8787, %8778
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = fsub fast float %8784, %8780
  %8794 = fsub fast float %8785, %8781
  %8795 = fsub fast float %8786, %8782
  %8796 = fmul fast float %8792, %8793
  %8797 = fmul fast float %8792, %8794
  %8798 = fmul fast float %8792, %8795
  %8799 = fadd fast float %8796, %8780
  %8800 = fadd fast float %8797, %8781
  %8801 = fadd fast float %8798, %8782
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = fadd fast float %8804, %8803
  %8806 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8808 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8809 = fadd fast float %8808, %8807
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = fmul fast float %8806, %8790
  %8812 = fmul fast float %8811, %8810
  br label %8895

; <label>:8813                                    ; preds = %8749
  %8814 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8773
  %8815 = load float, float* %8814, align 4, !tbaa !125, !noalias !127
  %8816 = fcmp fast olt float %8815, %8680
  %8817 = icmp sgt i32 %8756, 0
  %8818 = and i1 %8817, %8816
  br i1 %8818, label %8819, label %8856

; <label>:8819                                    ; preds = %8813
  br label %8820

; <label>:8820                                    ; preds = %8849, %8819
  %8821 = phi float [ %8850, %8849 ], [ %8678, %8819 ]
  %8822 = phi float [ %8851, %8849 ], [ %8679, %8819 ]
  %8823 = phi float [ %8831, %8849 ], [ %8815, %8819 ]
  %8824 = phi i32 [ %8828, %8849 ], [ %8773, %8819 ]
  %8825 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8824
  %8826 = load float, float* %8825, align 4, !tbaa !125, !noalias !127
  %8827 = icmp slt i32 %8824, 2
  %8828 = add nsw i32 %8824, 1
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8828
  %8830 = load float, float* %8829, align 4, !tbaa !125, !noalias !127
  %8831 = select i1 %8827, float %8830, float %8594
  %8832 = call float @dx.op.binary.f32(i32 36, float %8831, float %8826)  ; FMin(a,b)
  %8833 = call float @dx.op.binary.f32(i32 36, float %8680, float %8832)  ; FMin(a,b)
  %8834 = icmp eq i32 %8544, 0
  %8835 = fadd fast float %8833, %8823
  %8836 = fmul fast float %8835, %8525
  %8837 = fadd fast float %8836, %8538
  br i1 %8834, label %8843, label %8838

; <label>:8838                                    ; preds = %8820
  %8839 = fsub fast float %8833, %8823
  %8840 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8839)  ; FMax(a,b)
  %8841 = fmul fast float %8840, %8837
  %8842 = fadd fast float %8841, %8822
  br label %8849

; <label>:8843                                    ; preds = %8820
  %8844 = fsub fast float %8823, %8833
  %8845 = call float @dx.op.unary.f32(i32 6, float %8844)  ; FAbs(value)
  %8846 = fadd fast float %8845, %8821
  %8847 = fmul fast float %8845, %8837
  %8848 = fsub fast float %8822, %8847
  br label %8849

; <label>:8849                                    ; preds = %8843, %8838
  %8850 = phi float [ %8840, %8838 ], [ %8846, %8843 ]
  %8851 = phi float [ %8842, %8838 ], [ %8848, %8843 ]
  %8852 = fcmp fast olt float %8831, %8680
  %8853 = icmp slt i32 %8828, 3
  %8854 = and i1 %8853, %8852
  br i1 %8854, label %8820, label %8855

; <label>:8855                                    ; preds = %8849
  br label %8856

; <label>:8856                                    ; preds = %8855, %8813
  %8857 = phi float [ %8678, %8813 ], [ %8850, %8855 ]
  %8858 = phi float [ %8679, %8813 ], [ %8851, %8855 ]
  %8859 = fsub fast float %8594, %8857
  %8860 = select i1 %8596, float %8857, float %8859
  %8861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8862 = extractvalue %dx.types.CBufRet.f32 %8861, 0
  %8863 = extractvalue %dx.types.CBufRet.f32 %8861, 1
  %8864 = extractvalue %dx.types.CBufRet.f32 %8861, 2
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8869 = extractvalue %dx.types.CBufRet.f32 %8865, 3
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 3
  %8872 = call float @dx.op.binary.f32(i32 36, float %8858, float %8871)  ; FMin(a,b)
  %8873 = fmul fast float %8869, %8860
  %8874 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8875 = fsub fast float %8866, %8862
  %8876 = fsub fast float %8867, %8863
  %8877 = fsub fast float %8868, %8864
  %8878 = fmul fast float %8874, %8875
  %8879 = fmul fast float %8874, %8876
  %8880 = fmul fast float %8874, %8877
  %8881 = fadd fast float %8878, %8862
  %8882 = fadd fast float %8879, %8863
  %8883 = fadd fast float %8880, %8864
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 0
  %8886 = extractvalue %dx.types.CBufRet.f32 %8884, 1
  %8887 = fadd fast float %8886, %8885
  %8888 = call float @dx.op.unary.f32(i32 7, float %8887)  ; Saturate(value)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8884, 2
  %8890 = extractvalue %dx.types.CBufRet.f32 %8884, 3
  %8891 = fadd fast float %8890, %8889
  %8892 = call float @dx.op.unary.f32(i32 7, float %8891)  ; Saturate(value)
  %8893 = fmul fast float %8888, %8872
  %8894 = fmul fast float %8893, %8892
  br label %8895

; <label>:8895                                    ; preds = %8856, %8775, %8610, %8592, %8590
  %8896 = phi float [ %8619, %8610 ], [ %8778, %8775 ], [ %8860, %8856 ], [ 0.000000e+00, %8590 ], [ 0.000000e+00, %8592 ]
  %8897 = phi float [ %8653, %8610 ], [ %8812, %8775 ], [ %8894, %8856 ], [ 0.000000e+00, %8590 ], [ 0.000000e+00, %8592 ]
  %8898 = phi float [ %8640, %8610 ], [ %8799, %8775 ], [ %8881, %8856 ], [ 0.000000e+00, %8590 ], [ 0.000000e+00, %8592 ]
  %8899 = phi float [ %8641, %8610 ], [ %8800, %8775 ], [ %8882, %8856 ], [ 0.000000e+00, %8590 ], [ 0.000000e+00, %8592 ]
  %8900 = phi float [ %8642, %8610 ], [ %8801, %8775 ], [ %8883, %8856 ], [ 0.000000e+00, %8590 ], [ 0.000000e+00, %8592 ]
  %8901 = fmul fast float %8533, %8897
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8904 = fsub fast float %8540, %8903
  %8905 = fcmp fast olt float %8901, -2.000000e+01
  %8906 = call float @dx.op.unary.f32(i32 21, float %8901)  ; Exp(value)
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 2
  %8909 = extractvalue %dx.types.CBufRet.f32 %8907, 3
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8912 = fmul fast float %8909, %8904
  %8913 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8914 = fsub fast float 1.000000e+00, %8913
  %8915 = fmul fast float %8525, 5.000000e-01
  %8916 = fadd fast float %8915, 5.000000e-01
  %8917 = call float @dx.op.unary.f32(i32 7, float %8916)  ; Saturate(value)
  %8918 = fsub fast float 1.000000e+00, %8917
  %8919 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8914)  ; FMax(a,b)
  %8920 = fdiv fast float %8918, %8919
  %8921 = fsub fast float %8904, %8482
  %8922 = call float @dx.op.unary.f32(i32 6, float %8921)  ; FAbs(value)
  %8923 = fmul fast float %8922, %8908
  %8924 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8925 = fsub fast float 1.000000e+00, %8923
  %8926 = fmul fast float %8925, %8924
  %8927 = fadd fast float %8926, %8923
  %8928 = fmul fast float %8911, %8904
  %8929 = call float @dx.op.unary.f32(i32 7, float %8928)  ; Saturate(value)
  %8930 = fsub fast float 1.000000e+00, %8927
  %8931 = fmul fast float %8930, %8929
  %8932 = fadd fast float %8931, %8927
  %8933 = call float @dx.op.unary.f32(i32 7, float %8932)  ; Saturate(value)
  %8934 = fadd fast float %8906, -1.000000e+00
  %8935 = select i1 %8905, float -1.000000e+00, float %8934
  %8936 = fmul fast float %8933, %8935
  %8937 = fadd fast float %8936, 1.000000e+00
  %8938 = fsub fast float -0.000000e+00, %8936
  %8939 = fmul fast float %8898, %8938
  %8940 = fmul fast float %8899, %8938
  %8941 = fmul fast float %8900, %8938
  br label %8942

; <label>:8942                                    ; preds = %8895, %8491
  %8943 = phi float [ %8896, %8895 ], [ 0.000000e+00, %8491 ]
  %8944 = phi float [ %8937, %8895 ], [ 1.000000e+00, %8491 ]
  %8945 = phi float [ %8939, %8895 ], [ 0.000000e+00, %8491 ]
  %8946 = phi float [ %8940, %8895 ], [ 0.000000e+00, %8491 ]
  %8947 = phi float [ %8941, %8895 ], [ 0.000000e+00, %8491 ]
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 1
  %8950 = fsub fast float 1.000000e+00, %8944
  %8951 = fmul fast float %8950, %8526
  %8952 = fmul fast float %8951, %8949
  %8953 = fsub fast float %8526, %8952
  br i1 %8519, label %8954, label %8983, !dx.controlflow.hints !163

; <label>:8954                                    ; preds = %8942
  %8955 = fmul fast float %8527, %8516
  %8956 = fadd fast float %8955, %8517
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fmul fast float %8498, %8953
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = fmul fast float %8499, %8953
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = call float @dx.op.unary.f32(i32 21, float %8959)  ; Exp(value)
  %8963 = call float @dx.op.unary.f32(i32 21, float %8961)  ; Exp(value)
  %8964 = call float @dx.op.binary.f32(i32 35, float %8506, float %8962)  ; FMax(a,b)
  %8965 = call float @dx.op.binary.f32(i32 35, float %8506, float %8963)  ; FMax(a,b)
  %8966 = fsub fast float %8965, %8964
  %8967 = fmul fast float %8966, %8957
  %8968 = fadd fast float %8967, %8964
  %8969 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8970 = fsub fast float %8503, %8508
  %8971 = fsub fast float %8504, %8509
  %8972 = fsub fast float %8505, %8510
  %8973 = fmul fast float %8957, %8970
  %8974 = fmul fast float %8957, %8971
  %8975 = fmul fast float %8957, %8972
  %8976 = fadd fast float %8973, %8508
  %8977 = fadd fast float %8974, %8509
  %8978 = fadd fast float %8975, %8510
  %8979 = fsub fast float 1.000000e+00, %8969
  %8980 = fmul fast float %8979, %8976
  %8981 = fmul fast float %8979, %8977
  %8982 = fmul fast float %8979, %8978
  br label %9042

; <label>:8983                                    ; preds = %8942
  %8984 = fmul fast float %8953, %8515
  %8985 = call float @dx.op.unary.f32(i32 7, float %8984)  ; Saturate(value)
  %8986 = fsub fast float 2.000000e+00, %8985
  %8987 = fmul fast float %8985, 9.921875e-01
  %8988 = fmul fast float %8987, %8986
  %8989 = fadd fast float %8988, 3.906250e-03
  %8990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8989, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8991 = extractvalue %dx.types.ResRet.f32 %8990, 0
  %8992 = fsub fast float %8985, %8991
  %8993 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8992)  ; FMax(a,b)
  %8994 = fmul fast float %8501, %8482
  %8995 = call float @dx.op.unary.f32(i32 6, float %8994)  ; FAbs(value)
  %8996 = fcmp fast ogt float %8995, 0x3EB0C6F7A0000000
  br i1 %8996, label %8997, label %9003, !dx.controlflow.hints !164

; <label>:8997                                    ; preds = %8983
  %8998 = fmul fast float %8994, 0xBFF7154760000000
  %8999 = call float @dx.op.unary.f32(i32 21, float %8998)  ; Exp(value)
  %9000 = fsub fast float 1.000000e+00, %8999
  %9001 = fdiv fast float %9000, %8994
  %9002 = fmul fast float %9001, %8511
  br label %9003

; <label>:9003                                    ; preds = %8997, %8983
  %9004 = phi float [ %9002, %8997 ], [ %8511, %8983 ]
  %9005 = fadd fast float %9004, %8513
  %9006 = fmul fast float %9005, %8993
  %9007 = fmul fast float %8498, %9006
  %9008 = fsub fast float -0.000000e+00, %9007
  %9009 = fmul fast float %8499, %9006
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = fmul fast float %8500, %9006
  %9012 = fsub fast float -0.000000e+00, %9011
  %9013 = call float @dx.op.unary.f32(i32 21, float %9008)  ; Exp(value)
  %9014 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9015 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9016 = fmul fast float %8527, %8527
  %9017 = fadd fast float %9016, 1.000000e+00
  %9018 = fmul fast float %9017, 0x3FAE8EC8A0000000
  %9019 = fmul fast float %9018, %8508
  %9020 = fmul fast float %9018, %8509
  %9021 = fmul fast float %9018, %8510
  %9022 = fmul fast float %8527, %8506
  %9023 = fsub fast float 1.000000e+00, %9022
  %9024 = fmul fast float %8506, %8506
  %9025 = fsub fast float 1.000000e+00, %9024
  %9026 = fmul fast float %9025, 0x3FB45F3060000000
  %9027 = fmul fast float %9023, %9023
  %9028 = fdiv fast float 1.000000e+00, %9027
  %9029 = fmul fast float %9026, %9028
  %9030 = fmul fast float %9029, %8503
  %9031 = fmul fast float %9029, %8504
  %9032 = fmul fast float %9029, %8505
  %9033 = fadd fast float %9030, %9019
  %9034 = fadd fast float %9031, %9020
  %9035 = fadd fast float %9032, %9021
  %9036 = fsub fast float 1.000000e+00, %9013
  %9037 = fsub fast float 1.000000e+00, %9014
  %9038 = fsub fast float 1.000000e+00, %9015
  %9039 = fmul fast float %9033, %9036
  %9040 = fmul fast float %9034, %9037
  %9041 = fmul fast float %9035, %9038
  br label %9042

; <label>:9042                                    ; preds = %9003, %8954
  %9043 = phi float [ %8980, %8954 ], [ %9039, %9003 ]
  %9044 = phi float [ %8981, %8954 ], [ %9040, %9003 ]
  %9045 = phi float [ %8982, %8954 ], [ %9041, %9003 ]
  %9046 = phi float [ %8969, %8954 ], [ %9013, %9003 ]
  %9047 = phi float [ %8969, %8954 ], [ %9014, %9003 ]
  %9048 = phi float [ %8969, %8954 ], [ %9015, %9003 ]
  br i1 %8535, label %9049, label %9247, !dx.controlflow.hints !165

; <label>:9049                                    ; preds = %9042
  %9050 = extractvalue %dx.types.CBufRet.f32 %8948, 0
  %9051 = fmul fast float %9050, %8950
  %9052 = fsub fast float %8945, %9043
  %9053 = fsub fast float %8946, %9044
  %9054 = fsub fast float %8947, %9045
  %9055 = fmul fast float %9051, %9052
  %9056 = fmul fast float %9051, %9053
  %9057 = fmul fast float %9051, %9054
  %9058 = fadd fast float %9055, %9043
  %9059 = fadd fast float %9056, %9044
  %9060 = fadd fast float %9057, %9045
  %9061 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9046)  ; FMax(a,b)
  %9062 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9047)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9048)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8944)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float %8943, float %8953)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9065)  ; FMax(a,b)
  %9067 = fdiv fast float %8943, %9066
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fdiv fast float %8953, %9066
  %9070 = call float @dx.op.unary.f32(i32 7, float %9069)  ; Saturate(value)
  %9071 = fcmp fast une float %9064, 1.000000e+00
  br i1 %9071, label %9072, label %9085, !dx.controlflow.hints !166

; <label>:9072                                    ; preds = %9049
  %9073 = call float @dx.op.unary.f32(i32 23, float %9064)  ; Log(value)
  %9074 = fmul fast float %9073, 0x3FE62E4300000000
  %9075 = fmul fast float %8945, %9074
  %9076 = fsub fast float -0.000000e+00, %9075
  %9077 = fmul fast float %8946, %9074
  %9078 = fsub fast float -0.000000e+00, %9077
  %9079 = fmul fast float %8947, %9074
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fsub fast float 1.000000e+00, %9064
  %9082 = fdiv fast float %9076, %9081
  %9083 = fdiv fast float %9078, %9081
  %9084 = fdiv fast float %9080, %9081
  br label %9085

; <label>:9085                                    ; preds = %9072, %9049
  %9086 = phi float [ %9082, %9072 ], [ %8945, %9049 ]
  %9087 = phi float [ %9083, %9072 ], [ %8946, %9049 ]
  %9088 = phi float [ %9084, %9072 ], [ %8947, %9049 ]
  %9089 = phi float [ %9074, %9072 ], [ 0.000000e+00, %9049 ]
  %9090 = fcmp fast une float %9061, 1.000000e+00
  br i1 %9090, label %9091, label %9098, !dx.controlflow.hints !167

; <label>:9091                                    ; preds = %9085
  %9092 = call float @dx.op.unary.f32(i32 23, float %9061)  ; Log(value)
  %9093 = fmul fast float %9092, 0x3FE62E4300000000
  %9094 = fmul fast float %9058, %9093
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fsub fast float 1.000000e+00, %9061
  %9097 = fdiv fast float %9095, %9096
  br label %9098

; <label>:9098                                    ; preds = %9091, %9085
  %9099 = phi float [ %9097, %9091 ], [ %9058, %9085 ]
  %9100 = phi float [ %9093, %9091 ], [ 0.000000e+00, %9085 ]
  %9101 = fcmp fast une float %9062, 1.000000e+00
  br i1 %9101, label %9102, label %9109, !dx.controlflow.hints !167

; <label>:9102                                    ; preds = %9098
  %9103 = call float @dx.op.unary.f32(i32 23, float %9062)  ; Log(value)
  %9104 = fmul fast float %9103, 0x3FE62E4300000000
  %9105 = fmul fast float %9059, %9104
  %9106 = fsub fast float -0.000000e+00, %9105
  %9107 = fsub fast float 1.000000e+00, %9062
  %9108 = fdiv fast float %9106, %9107
  br label %9109

; <label>:9109                                    ; preds = %9102, %9098
  %9110 = phi float [ %9108, %9102 ], [ %9059, %9098 ]
  %9111 = phi float [ %9104, %9102 ], [ 0.000000e+00, %9098 ]
  %9112 = fcmp fast une float %9063, 1.000000e+00
  br i1 %9112, label %9113, label %9120, !dx.controlflow.hints !167

; <label>:9113                                    ; preds = %9109
  %9114 = call float @dx.op.unary.f32(i32 23, float %9063)  ; Log(value)
  %9115 = fmul fast float %9114, 0x3FE62E4300000000
  %9116 = fmul fast float %9060, %9115
  %9117 = fsub fast float -0.000000e+00, %9116
  %9118 = fsub fast float 1.000000e+00, %9063
  %9119 = fdiv fast float %9117, %9118
  br label %9120

; <label>:9120                                    ; preds = %9113, %9109
  %9121 = phi float [ %9119, %9113 ], [ %9060, %9109 ]
  %9122 = phi float [ %9115, %9113 ], [ 0.000000e+00, %9109 ]
  %9123 = fmul fast float %9086, %9070
  %9124 = fmul fast float %9087, %9070
  %9125 = fmul fast float %9088, %9070
  %9126 = fmul fast float %9089, %9070
  %9127 = fmul fast float %9099, %9068
  %9128 = fmul fast float %9110, %9068
  %9129 = fmul fast float %9121, %9068
  %9130 = fmul fast float %9100, %9068
  %9131 = fmul fast float %9111, %9068
  %9132 = fmul fast float %9122, %9068
  %9133 = fadd fast float %9127, %9123
  %9134 = fadd fast float %9128, %9124
  %9135 = fadd fast float %9129, %9125
  %9136 = fadd fast float %9130, %9126
  %9137 = fadd fast float %9131, %9126
  %9138 = fadd fast float %9132, %9126
  %9139 = fcmp fast une float %9136, 0.000000e+00
  br i1 %9139, label %9140, label %9147, !dx.controlflow.hints !168

; <label>:9140                                    ; preds = %9120
  %9141 = fmul fast float %9136, 0x3FF7154760000000
  %9142 = call float @dx.op.unary.f32(i32 21, float %9141)  ; Exp(value)
  %9143 = fsub fast float 1.000000e+00, %9142
  %9144 = fmul fast float %9133, %9143
  %9145 = fsub fast float -0.000000e+00, %9144
  %9146 = fdiv fast float %9145, %9136
  br label %9147

; <label>:9147                                    ; preds = %9140, %9120
  %9148 = phi float [ %9142, %9140 ], [ 1.000000e+00, %9120 ]
  %9149 = phi float [ %9146, %9140 ], [ %9133, %9120 ]
  %9150 = fcmp fast une float %9137, 0.000000e+00
  br i1 %9150, label %9151, label %9158, !dx.controlflow.hints !168

; <label>:9151                                    ; preds = %9147
  %9152 = fmul fast float %9137, 0x3FF7154760000000
  %9153 = call float @dx.op.unary.f32(i32 21, float %9152)  ; Exp(value)
  %9154 = fsub fast float 1.000000e+00, %9153
  %9155 = fmul fast float %9134, %9154
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = fdiv fast float %9156, %9137
  br label %9158

; <label>:9158                                    ; preds = %9151, %9147
  %9159 = phi float [ %9153, %9151 ], [ 1.000000e+00, %9147 ]
  %9160 = phi float [ %9157, %9151 ], [ %9134, %9147 ]
  %9161 = fcmp fast une float %9138, 0.000000e+00
  br i1 %9161, label %9162, label %9169, !dx.controlflow.hints !168

; <label>:9162                                    ; preds = %9158
  %9163 = fmul fast float %9138, 0x3FF7154760000000
  %9164 = call float @dx.op.unary.f32(i32 21, float %9163)  ; Exp(value)
  %9165 = fsub fast float 1.000000e+00, %9164
  %9166 = fmul fast float %9135, %9165
  %9167 = fsub fast float -0.000000e+00, %9166
  %9168 = fdiv fast float %9167, %9138
  br label %9169

; <label>:9169                                    ; preds = %9162, %9158
  %9170 = phi float [ %9164, %9162 ], [ 1.000000e+00, %9158 ]
  %9171 = phi float [ %9168, %9162 ], [ %9135, %9158 ]
  %9172 = fcmp fast ogt float %9068, %9070
  br i1 %9172, label %9173, label %9193

; <label>:9173                                    ; preds = %9169
  %9174 = fsub fast float 1.000000e+00, %9070
  %9175 = fmul fast float %9086, %9174
  %9176 = fmul fast float %9087, %9174
  %9177 = fmul fast float %9088, %9174
  %9178 = fmul fast float %9089, %9174
  %9179 = fcmp fast une float %9178, 0.000000e+00
  br i1 %9179, label %9180, label %9231, !dx.controlflow.hints !169

; <label>:9180                                    ; preds = %9173
  %9181 = fmul fast float %9178, 0x3FF7154760000000
  %9182 = call float @dx.op.unary.f32(i32 21, float %9181)  ; Exp(value)
  %9183 = fsub fast float 1.000000e+00, %9182
  %9184 = fmul fast float %9175, %9183
  %9185 = fsub fast float -0.000000e+00, %9184
  %9186 = fmul fast float %9176, %9183
  %9187 = fsub fast float -0.000000e+00, %9186
  %9188 = fmul fast float %9177, %9183
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fdiv fast float %9185, %9178
  %9191 = fdiv fast float %9187, %9178
  %9192 = fdiv fast float %9189, %9178
  br label %9231

; <label>:9193                                    ; preds = %9169
  %9194 = fsub fast float 1.000000e+00, %9068
  %9195 = fmul fast float %9099, %9194
  %9196 = fmul fast float %9110, %9194
  %9197 = fmul fast float %9121, %9194
  %9198 = fmul fast float %9100, %9194
  %9199 = fmul fast float %9111, %9194
  %9200 = fmul fast float %9122, %9194
  %9201 = fcmp fast une float %9198, 0.000000e+00
  br i1 %9201, label %9202, label %9209, !dx.controlflow.hints !168

; <label>:9202                                    ; preds = %9193
  %9203 = fmul fast float %9198, 0x3FF7154760000000
  %9204 = call float @dx.op.unary.f32(i32 21, float %9203)  ; Exp(value)
  %9205 = fsub fast float 1.000000e+00, %9204
  %9206 = fmul fast float %9195, %9205
  %9207 = fsub fast float -0.000000e+00, %9206
  %9208 = fdiv fast float %9207, %9198
  br label %9209

; <label>:9209                                    ; preds = %9202, %9193
  %9210 = phi float [ %9208, %9202 ], [ %9195, %9193 ]
  %9211 = phi float [ %9204, %9202 ], [ 1.000000e+00, %9193 ]
  %9212 = fcmp fast une float %9199, 0.000000e+00
  br i1 %9212, label %9213, label %9220, !dx.controlflow.hints !168

; <label>:9213                                    ; preds = %9209
  %9214 = fmul fast float %9199, 0x3FF7154760000000
  %9215 = call float @dx.op.unary.f32(i32 21, float %9214)  ; Exp(value)
  %9216 = fsub fast float 1.000000e+00, %9215
  %9217 = fmul fast float %9196, %9216
  %9218 = fsub fast float -0.000000e+00, %9217
  %9219 = fdiv fast float %9218, %9199
  br label %9220

; <label>:9220                                    ; preds = %9213, %9209
  %9221 = phi float [ %9219, %9213 ], [ %9196, %9209 ]
  %9222 = phi float [ %9215, %9213 ], [ 1.000000e+00, %9209 ]
  %9223 = fcmp fast une float %9200, 0.000000e+00
  br i1 %9223, label %9224, label %9231, !dx.controlflow.hints !168

; <label>:9224                                    ; preds = %9220
  %9225 = fmul fast float %9200, 0x3FF7154760000000
  %9226 = call float @dx.op.unary.f32(i32 21, float %9225)  ; Exp(value)
  %9227 = fsub fast float 1.000000e+00, %9226
  %9228 = fmul fast float %9197, %9227
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fdiv fast float %9229, %9200
  br label %9231

; <label>:9231                                    ; preds = %9224, %9220, %9180, %9173
  %9232 = phi float [ %9230, %9224 ], [ %9192, %9180 ], [ %9177, %9173 ], [ %9197, %9220 ]
  %9233 = phi float [ %9221, %9224 ], [ %9191, %9180 ], [ %9176, %9173 ], [ %9221, %9220 ]
  %9234 = phi float [ %9210, %9224 ], [ %9190, %9180 ], [ %9175, %9173 ], [ %9210, %9220 ]
  %9235 = phi float [ %9226, %9224 ], [ %9182, %9180 ], [ 1.000000e+00, %9173 ], [ 1.000000e+00, %9220 ]
  %9236 = phi float [ %9222, %9224 ], [ %9182, %9180 ], [ 1.000000e+00, %9173 ], [ %9222, %9220 ]
  %9237 = phi float [ %9211, %9224 ], [ %9182, %9180 ], [ 1.000000e+00, %9173 ], [ %9211, %9220 ]
  %9238 = fmul fast float %9237, %9149
  %9239 = fmul fast float %9236, %9160
  %9240 = fmul fast float %9235, %9171
  %9241 = fadd fast float %9238, %9234
  %9242 = fadd fast float %9239, %9233
  %9243 = fadd fast float %9240, %9232
  %9244 = fmul fast float %9237, %9148
  %9245 = fmul fast float %9236, %9159
  %9246 = fmul fast float %9235, %9170
  br label %9247

; <label>:9247                                    ; preds = %9231, %9042
  %9248 = phi float [ %9246, %9231 ], [ %9048, %9042 ]
  %9249 = phi float [ %9245, %9231 ], [ %9047, %9042 ]
  %9250 = phi float [ %9244, %9231 ], [ %9046, %9042 ]
  %9251 = phi float [ %9243, %9231 ], [ %9045, %9042 ]
  %9252 = phi float [ %9242, %9231 ], [ %9044, %9042 ]
  %9253 = phi float [ %9241, %9231 ], [ %9043, %9042 ]
  %9254 = fmul fast float %9253, %8195
  %9255 = fmul fast float %9252, %8197
  %9256 = fmul fast float %9251, %8199
  %9257 = fmul fast float %9250, %8490
  %9258 = call float @dx.op.dot3.f32(i32 55, float %9250, float %9249, float %9248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9259 = call float @dx.op.dot3.f32(i32 55, float %9254, float %9255, float %9256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9260 = select i1 %218, float %9258, float %9250
  %9261 = select i1 %218, float %9258, float %9249
  %9262 = select i1 %218, float 1.000000e+00, float %9248
  %9263 = select i1 %218, float %9259, float %9254
  %9264 = select i1 %218, float 0.000000e+00, float %9255
  %9265 = select i1 %218, float 0.000000e+00, float %9256
  %9266 = fmul fast float %9260, %8484
  %9267 = fmul fast float %9261, %8485
  %9268 = fmul fast float %9262, %8486
  %9269 = fadd fast float %9266, %9263
  %9270 = fadd fast float %9267, %9264
  %9271 = fadd fast float %9265, %9268
  %9272 = fmul fast float %9260, %8487
  %9273 = fmul fast float %9261, %8488
  %9274 = fmul fast float %9262, %8489
  %9275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.i32 %9275, 0
  %9277 = icmp eq i32 %9276, 0
  br i1 %9277, label %9645, label %9278, !dx.controlflow.hints !170

; <label>:9278                                    ; preds = %9247
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %9281 = extractvalue %dx.types.CBufRet.f32 %9279, 3
  %9282 = fmul fast float %9280, %101
  %9283 = fmul fast float %9281, %102
  %9284 = fmul fast float %9282, 2.000000e+00
  %9285 = fmul fast float %9283, 2.000000e+00
  %9286 = fsub fast float 1.000000e+00, %9284
  %9287 = fsub fast float 1.000000e+00, %9285
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 0
  %9290 = extractvalue %dx.types.CBufRet.f32 %9288, 1
  %9291 = extractvalue %dx.types.CBufRet.f32 %9288, 2
  %9292 = fmul fast float %9286, %9289
  %9293 = fmul fast float %9286, %9290
  %9294 = fmul fast float %9286, %9291
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.CBufRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.CBufRet.f32 %9295, 2
  %9299 = fmul fast float %9287, %9296
  %9300 = fmul fast float %9287, %9297
  %9301 = fmul fast float %9287, %9298
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.CBufRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.CBufRet.f32 %9302, 2
  %9306 = fadd fast float %9299, %9303
  %9307 = fadd fast float %9306, %9292
  %9308 = fadd fast float %9300, %9304
  %9309 = fadd fast float %9308, %9293
  %9310 = fadd fast float %9301, %9305
  %9311 = fadd fast float %9310, %9294
  %9312 = fmul fast float %9307, %8483
  %9313 = fmul fast float %9309, %8483
  %9314 = fmul fast float %9311, %8483
  %9315 = fmul fast float %9312, %9312
  %9316 = fmul fast float %9313, %9313
  %9317 = fadd fast float %9315, %9316
  %9318 = fmul fast float %9314, %9314
  %9319 = fadd fast float %9317, %9318
  %9320 = call float @dx.op.unary.f32(i32 24, float %9319)  ; Sqrt(value)
  %9321 = extractvalue %dx.types.CBufRet.f32 %8210, 0
  %9322 = fsub fast float %9320, %9321
  %9323 = extractvalue %dx.types.CBufRet.f32 %8210, 2
  %9324 = fmul fast float %9322, %9323
  %9325 = call float @dx.op.unary.f32(i32 7, float %9324)  ; Saturate(value)
  %9326 = fadd fast float %9325, -5.000000e-01
  %9327 = fmul fast float %9326, 2.000000e+00
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9330 = call float @dx.op.binary.f32(i32 36, float %9329, float %9327)  ; FMin(a,b)
  %9331 = fsub fast float -0.000000e+00, %9329
  %9332 = fcmp fast ogt float %9330, %9331
  br i1 %9332, label %9333, label %9645, !dx.controlflow.hints !171

; <label>:9333                                    ; preds = %9278
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 3
  %9336 = fcmp fast ogt float %9335, 0.000000e+00
  br i1 %9336, label %9337, label %9412, !dx.controlflow.hints !172

; <label>:9337                                    ; preds = %9333
  %9338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9339 = extractvalue %dx.types.Dimensions %9338, 0
  %9340 = sitofp i32 %9339 to float
  %9341 = extractvalue %dx.types.Dimensions %9338, 1
  %9342 = sitofp i32 %9341 to float
  %9343 = fmul fast float %9282, %9340
  %9344 = fmul fast float %9283, %9342
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 1
  %9347 = fsub fast float -0.000000e+00, %9346
  %9348 = fptoui float %9347 to i32
  %9349 = fptoui float %9343 to i32
  %9350 = fptoui float %9344 to i32
  %9351 = and i32 %9348, 31
  %9352 = lshr i32 %9349, %9351
  %9353 = lshr i32 %9350, %9351
  %9354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9348, i32 %9352, i32 %9353, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9355 = extractvalue %dx.types.ResRet.f32 %9354, 0
  %9356 = fcmp fast olt float %9355, -1.000000e+00
  %9357 = fcmp fast ogt float %9355, -1.000000e+00
  %9358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9359 = extractvalue %dx.types.CBufRet.f32 %9358, 1
  %9360 = select i1 %9357, float %9359, float 1.000000e+00
  %9361 = fadd fast float %9355, 1.000000e+00
  %9362 = fmul fast float %9360, %9361
  %9363 = call float @dx.op.unary.f32(i32 6, float %9362)  ; FAbs(value)
  %9364 = extractvalue %dx.types.CBufRet.f32 %9358, 3
  %9365 = fcmp fast oge float %9363, %9364
  %9366 = select i1 %9365, float 0x4197782600000000, float %9363
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 0
  %9369 = extractvalue %dx.types.CBufRet.f32 %9367, 1
  %9370 = extractvalue %dx.types.CBufRet.f32 %9367, 2
  %9371 = select i1 %9356, float %9368, float %9289
  %9372 = select i1 %9356, float %9369, float %9290
  %9373 = select i1 %9356, float %9370, float %9291
  %9374 = fmul fast float %9371, %9286
  %9375 = fmul fast float %9372, %9286
  %9376 = fmul fast float %9373, %9286
  %9377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9377, 0
  %9379 = extractvalue %dx.types.CBufRet.f32 %9377, 1
  %9380 = extractvalue %dx.types.CBufRet.f32 %9377, 2
  %9381 = select i1 %9356, float %9378, float %9296
  %9382 = select i1 %9356, float %9379, float %9297
  %9383 = select i1 %9356, float %9380, float %9298
  %9384 = fmul fast float %9381, %9287
  %9385 = fmul fast float %9382, %9287
  %9386 = fmul fast float %9383, %9287
  %9387 = fadd fast float %9384, %9374
  %9388 = fadd fast float %9385, %9375
  %9389 = fadd fast float %9386, %9376
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9393 = extractvalue %dx.types.CBufRet.f32 %9390, 2
  %9394 = select i1 %9356, float %9391, float %9303
  %9395 = select i1 %9356, float %9392, float %9304
  %9396 = select i1 %9356, float %9393, float %9305
  %9397 = fadd fast float %9387, %9394
  %9398 = fadd fast float %9388, %9395
  %9399 = fadd fast float %9389, %9396
  %9400 = fmul fast float %9397, %9366
  %9401 = fmul fast float %9398, %9366
  %9402 = fmul fast float %9399, %9366
  %9403 = fmul fast float %9400, %9400
  %9404 = fmul fast float %9401, %9401
  %9405 = fadd fast float %9403, %9404
  %9406 = fmul fast float %9402, %9402
  %9407 = fadd fast float %9405, %9406
  %9408 = call float @dx.op.unary.f32(i32 24, float %9407)  ; Sqrt(value)
  %9409 = fsub fast float %9408, %9321
  %9410 = fmul fast float %9409, %9323
  %9411 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  br label %9412

; <label>:9412                                    ; preds = %9337, %9333
  %9413 = phi float [ %9411, %9337 ], [ 1.000000e+00, %9333 ]
  %9414 = fmul fast float %9330, 5.000000e-01
  %9415 = fadd fast float %9414, 5.000000e-01
  %9416 = call float @dx.op.unary.f32(i32 22, float %9415)  ; Frc(value)
  %9417 = call float @dx.op.unary.f32(i32 27, float %9416)  ; Round_ni(value)
  %9418 = call float @dx.op.unary.f32(i32 22, float %9416)  ; Frc(value)
  %9419 = fmul fast float %9418, 2.000000e+00
  %9420 = fadd fast float %9419, -1.000000e+00
  %9421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9282, float %9283, float %9417, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9422 = extractvalue %dx.types.ResRet.f32 %9421, 0
  %9423 = extractvalue %dx.types.ResRet.f32 %9421, 1
  %9424 = extractvalue %dx.types.ResRet.f32 %9421, 2
  %9425 = extractvalue %dx.types.ResRet.f32 %9421, 3
  %9426 = fadd fast float %9422, -5.000000e-01
  %9427 = fadd fast float %9424, -5.000000e-01
  %9428 = fmul fast float %9426, 0xBFD5555560000000
  %9429 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9427, float %9428)  ; FMad(a,b,c)
  %9430 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9423, float 0.000000e+00)  ; FMad(a,b,c)
  %9431 = fadd fast float %9430, %9425
  %9432 = fmul fast float %9426, -7.500000e-01
  %9433 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9427, float %9432)  ; FMad(a,b,c)
  %9434 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9423, float 0.000000e+00)  ; FMad(a,b,c)
  %9435 = fadd fast float %9434, %9425
  %9436 = call float @dx.op.binary.f32(i32 35, float %9429, float -1.000000e+00)  ; FMax(a,b)
  %9437 = call float @dx.op.binary.f32(i32 35, float %9431, float -1.000000e+00)  ; FMax(a,b)
  %9438 = call float @dx.op.binary.f32(i32 35, float %9433, float -1.000000e+00)  ; FMax(a,b)
  %9439 = call float @dx.op.binary.f32(i32 35, float %9435, float -1.000000e+00)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 36, float %9436, float 1.000000e+00)  ; FMin(a,b)
  %9441 = call float @dx.op.binary.f32(i32 36, float %9437, float 1.000000e+00)  ; FMin(a,b)
  %9442 = call float @dx.op.binary.f32(i32 36, float %9438, float 1.000000e+00)  ; FMin(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9439, float 1.000000e+00)  ; FMin(a,b)
  %9444 = fcmp fast olt float %9440, 0x3FEFFF8020000000
  br i1 %9444, label %9445, label %9560, !dx.controlflow.hints !173

; <label>:9445                                    ; preds = %9412
  %9446 = extractvalue %dx.types.CBufRet.f32 %9328, 3
  %9447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9448 = extractvalue %dx.types.CBufRet.f32 %9447, 0
  %9449 = extractvalue %dx.types.CBufRet.f32 %9447, 1
  %9450 = extractvalue %dx.types.CBufRet.f32 %9447, 2
  %9451 = extractvalue %dx.types.CBufRet.f32 %9447, 3
  %9452 = fsub fast float %9448, %9440
  %9453 = fsub fast float %9449, %9441
  %9454 = fsub fast float %9450, %9442
  %9455 = fsub fast float %9451, %9443
  %9456 = fmul fast float %9452, %9446
  %9457 = fmul fast float %9453, %9446
  %9458 = fmul fast float %9454, %9446
  %9459 = fmul fast float %9455, %9446
  %9460 = fadd fast float %9456, %9440
  %9461 = fadd fast float %9457, %9441
  %9462 = fsub fast float -0.000000e+00, %9461
  %9463 = fadd fast float %9458, %9442
  %9464 = fadd fast float %9459, %9443
  %9465 = fmul fast float %9460, %9460
  %9466 = fsub fast float %9461, %9465
  %9467 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9466)  ; FMax(a,b)
  %9468 = fdiv fast float 1.000000e+00, %9467
  %9469 = fmul fast float %9461, %9460
  %9470 = fsub fast float %9463, %9469
  %9471 = fsub fast float %9420, %9460
  %9472 = fmul fast float %9420, %9420
  %9473 = fsub fast float %9472, %9461
  %9474 = fmul fast float %9471, %9468
  %9475 = fmul fast float %9474, %9470
  %9476 = fsub fast float %9473, %9475
  %9477 = fmul fast float %9461, %9461
  %9478 = fsub fast float %9464, %9477
  %9479 = fmul fast float %9470, %9470
  %9480 = fmul fast float %9479, %9468
  %9481 = fsub fast float %9478, %9480
  %9482 = fdiv fast float %9476, %9481
  %9483 = fmul fast float %9470, %9482
  %9484 = fsub fast float %9471, %9483
  %9485 = fmul fast float %9484, %9468
  %9486 = fmul fast float %9485, %9460
  %9487 = fsub fast float 1.000000e+00, %9486
  %9488 = fmul fast float %9461, %9482
  %9489 = fsub fast float %9487, %9488
  %9490 = fmul fast float %9485, %9485
  %9491 = fmul fast float %9482, 4.000000e+00
  %9492 = fmul fast float %9491, %9489
  %9493 = fsub fast float %9490, %9492
  %9494 = call float @dx.op.unary.f32(i32 24, float %9493)  ; Sqrt(value)
  %9495 = fcmp fast oge float %9485, 0.000000e+00
  %9496 = fsub fast float -0.000000e+00, %9494
  %9497 = select i1 %9495, float %9496, float %9494
  %9498 = fsub fast float %9497, %9485
  %9499 = fdiv fast float %9498, %9482
  %9500 = fdiv fast float %9489, %9498
  %9501 = fmul fast float %9499, 5.000000e-01
  %9502 = fmul fast float %9500, 2.000000e+00
  %9503 = select i1 %9495, float %9501, float %9502
  %9504 = select i1 %9495, float %9502, float %9501
  %9505 = call float @dx.op.binary.f32(i32 35, float %9503, float %9504)  ; FMax(a,b)
  %9506 = call float @dx.op.binary.f32(i32 36, float %9503, float %9504)  ; FMin(a,b)
  %9507 = fcmp fast ogt float %9420, %9506
  br i1 %9507, label %9508, label %9518

; <label>:9508                                    ; preds = %9445
  %9509 = fsub fast float %9420, %9506
  %9510 = fsub fast float %9505, %9506
  %9511 = fmul fast float %9509, %9510
  %9512 = fmul fast float %9505, %9420
  %9513 = fadd fast float %9505, %9420
  %9514 = fmul fast float %9513, %9460
  %9515 = fadd fast float %9512, %9461
  %9516 = fsub fast float %9515, %9514
  %9517 = fdiv fast float %9516, %9511
  br label %9518

; <label>:9518                                    ; preds = %9508, %9445
  %9519 = phi float [ %9517, %9508 ], [ 0.000000e+00, %9445 ]
  %9520 = fcmp fast ogt float %9420, %9505
  %9521 = fsub fast float %9420, %9505
  br i1 %9520, label %9522, label %9532

; <label>:9522                                    ; preds = %9518
  %9523 = fsub fast float %9505, %9506
  %9524 = fmul fast float %9523, %9521
  %9525 = fmul fast float %9506, %9420
  %9526 = fadd fast float %9506, %9420
  %9527 = fmul fast float %9526, %9460
  %9528 = fsub fast float %9462, %9525
  %9529 = fadd fast float %9528, %9527
  %9530 = fdiv fast float %9529, %9524
  %9531 = fadd fast float %9530, %9519
  br label %9532

; <label>:9532                                    ; preds = %9522, %9518
  %9533 = phi float [ %9531, %9522 ], [ %9519, %9518 ]
  %9534 = fsub fast float %9420, %9506
  %9535 = fmul fast float %9534, %9521
  %9536 = fmul fast float %9506, %9505
  %9537 = fadd fast float %9506, %9505
  %9538 = fmul fast float %9537, %9460
  %9539 = fadd fast float %9536, %9461
  %9540 = fsub fast float %9539, %9538
  %9541 = fdiv fast float %9540, %9535
  %9542 = call float @dx.op.unary.f32(i32 7, float %9533)  ; Saturate(value)
  %9543 = fcmp fast oeq float %8211, 0.000000e+00
  %9544 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9545 = fcmp fast oeq float %9544, 0.000000e+00
  %9546 = or i1 %9543, %9545
  %9547 = fmul fast float %9544, 2.000000e+00
  %9548 = fadd fast float %9329, %9330
  %9549 = fdiv fast float %9548, %9547
  %9550 = call float @dx.op.unary.f32(i32 7, float %9549)  ; Saturate(value)
  %9551 = fmul fast float %9550, 2.000000e+00
  %9552 = fsub fast float 3.000000e+00, %9551
  %9553 = fmul fast float %9550, %9550
  %9554 = fmul fast float %9553, %9552
  %9555 = select i1 %9546, float 1.000000e+00, float %9554
  %9556 = fmul fast float %9541, %8211
  %9557 = fadd fast float %9542, %9556
  %9558 = call float @dx.op.unary.f32(i32 7, float %9557)  ; Saturate(value)
  %9559 = fmul fast float %9555, %9558
  br label %9560

; <label>:9560                                    ; preds = %9532, %9412
  %9561 = phi float [ %9559, %9532 ], [ 0.000000e+00, %9412 ]
  %9562 = fsub fast float 1.000000e+00, %9561
  %9563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9282, float %9283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9564 = extractvalue %dx.types.ResRet.f32 %9563, 0
  %9565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9566 = extractvalue %dx.types.CBufRet.i32 %9565, 2
  %9567 = icmp eq i32 %9566, 0
  br i1 %9567, label %9573, label %9568

; <label>:9568                                    ; preds = %9560
  %9569 = call float @dx.op.unary.f32(i32 7, float %9561)  ; Saturate(value)
  %9570 = fadd fast float %9564, -1.000000e+00
  %9571 = fmul fast float %9569, %9570
  %9572 = fadd fast float %9571, 1.000000e+00
  br label %9573

; <label>:9573                                    ; preds = %9568, %9560
  %9574 = phi float [ %9572, %9568 ], [ %9562, %9560 ]
  br i1 %9336, label %9575, label %9593

; <label>:9575                                    ; preds = %9573
  %9576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.f32 %9576, 1
  %9578 = fsub fast float %9413, %9577
  %9579 = call float @dx.op.unary.f32(i32 7, float %9578)  ; Saturate(value)
  %9580 = fsub fast float %9413, %9335
  %9581 = call float @dx.op.unary.f32(i32 7, float %9580)  ; Saturate(value)
  %9582 = fsub fast float %9579, %9581
  %9583 = fsub fast float %9415, %9581
  %9584 = fdiv fast float %9583, %9582
  %9585 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9586 = fmul fast float %9585, 2.000000e+00
  %9587 = fsub fast float 3.000000e+00, %9586
  %9588 = fsub fast float %9564, %9574
  %9589 = fmul fast float %9585, %9585
  %9590 = fmul fast float %9589, %9588
  %9591 = fmul fast float %9590, %9587
  %9592 = fadd fast float %9591, %9574
  br label %9593

; <label>:9593                                    ; preds = %9575, %9573
  %9594 = phi float [ %9592, %9575 ], [ %9574, %9573 ]
  %9595 = call float @dx.op.binary.f32(i32 35, float %9564, float %9594)  ; FMax(a,b)
  %9596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.i32 %9596, 2
  %9598 = and i32 %9597, 1
  %9599 = icmp eq i32 %9598, 0
  %9600 = fcmp fast une float %9595, 1.000000e+00
  %9601 = and i1 %9600, %9599
  br i1 %9601, label %9602, label %9621

; <label>:9602                                    ; preds = %9593
  %9603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9282, float %9283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9604 = extractvalue %dx.types.ResRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.ResRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.ResRet.f32 %9603, 2
  %9607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9608 = extractvalue %dx.types.CBufRet.f32 %9607, 1
  %9609 = fmul fast float %9608, %9604
  %9610 = fmul fast float %9608, %9605
  %9611 = fmul fast float %9608, %9606
  %9612 = fcmp fast ogt float %9564, 0x3FEFFF2E40000000
  %9613 = fsub fast float 1.000000e+00, %9595
  %9614 = fsub fast float 1.000000e+00, %9564
  %9615 = fdiv fast float %9613, %9614
  %9616 = call float @dx.op.unary.f32(i32 7, float %9615)  ; Saturate(value)
  %9617 = select i1 %9612, float 0.000000e+00, float %9616
  %9618 = fmul fast float %9609, %9617
  %9619 = fmul fast float %9610, %9617
  %9620 = fmul fast float %9611, %9617
  br label %9621

; <label>:9621                                    ; preds = %9602, %9593
  %9622 = phi float [ 0.000000e+00, %9593 ], [ %9618, %9602 ]
  %9623 = phi float [ 0.000000e+00, %9593 ], [ %9619, %9602 ]
  %9624 = phi float [ 0.000000e+00, %9593 ], [ %9620, %9602 ]
  %9625 = fmul fast float %9622, %8195
  %9626 = fmul fast float %9623, %8197
  %9627 = fmul fast float %9624, %8199
  %9628 = fmul fast float %9595, %9257
  %9629 = call float @dx.op.dot3.f32(i32 55, float %9595, float %9595, float %9595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9630 = call float @dx.op.dot3.f32(i32 55, float %9625, float %9626, float %9627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9631 = select i1 %218, float %9629, float %9595
  %9632 = select i1 %218, float 1.000000e+00, float %9595
  %9633 = select i1 %218, float %9630, float %9625
  %9634 = select i1 %218, float 0.000000e+00, float %9626
  %9635 = select i1 %218, float 0.000000e+00, float %9627
  %9636 = fmul fast float %9631, %9269
  %9637 = fmul fast float %9631, %9270
  %9638 = fmul fast float %9632, %9271
  %9639 = fadd fast float %9636, %9633
  %9640 = fadd fast float %9637, %9634
  %9641 = fadd fast float %9635, %9638
  %9642 = fmul fast float %9631, %9272
  %9643 = fmul fast float %9631, %9273
  %9644 = fmul fast float %9632, %9274
  br label %9645

; <label>:9645                                    ; preds = %9621, %9278, %9247, %8479
  %9646 = phi float [ %8484, %8479 ], [ %9269, %9247 ], [ %9639, %9621 ], [ %9269, %9278 ]
  %9647 = phi float [ %8485, %8479 ], [ %9270, %9247 ], [ %9640, %9621 ], [ %9270, %9278 ]
  %9648 = phi float [ %8486, %8479 ], [ %9271, %9247 ], [ %9641, %9621 ], [ %9271, %9278 ]
  %9649 = phi float [ %8487, %8479 ], [ %9272, %9247 ], [ %9642, %9621 ], [ %9272, %9278 ]
  %9650 = phi float [ %8488, %8479 ], [ %9273, %9247 ], [ %9643, %9621 ], [ %9273, %9278 ]
  %9651 = phi float [ %8489, %8479 ], [ %9274, %9247 ], [ %9644, %9621 ], [ %9274, %9278 ]
  %9652 = phi float [ %8490, %8479 ], [ %9257, %9247 ], [ %9628, %9621 ], [ %9257, %9278 ]
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 2
  %9655 = extractvalue %dx.types.CBufRet.f32 %9653, 3
  %9656 = fmul fast float %9654, %101
  %9657 = fmul fast float %9655, %102
  %9658 = call float @dx.op.unary.f32(i32 7, float %9656)  ; Saturate(value)
  %9659 = call float @dx.op.unary.f32(i32 7, float %9657)  ; Saturate(value)
  %9660 = select i1 %8221, i32 2, i32 0
  %9661 = or i32 %9660, 1
  %9662 = uitofp i32 %9661 to float
  %9663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9658, float %9659, float %9662, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9664 = extractvalue %dx.types.ResRet.f32 %9663, 0
  %9665 = extractvalue %dx.types.ResRet.f32 %9663, 1
  %9666 = extractvalue %dx.types.ResRet.f32 %9663, 2
  %9667 = extractvalue %dx.types.ResRet.f32 %9663, 3
  %9668 = add nuw nsw i32 %9660, 2
  %9669 = uitofp i32 %9668 to float
  %9670 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9658, float %9659, float %9669, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9671 = extractvalue %dx.types.ResRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.ResRet.f32 %9670, 1
  %9673 = extractvalue %dx.types.ResRet.f32 %9670, 2
  %9674 = extractvalue %dx.types.ResRet.f32 %9670, 3
  %9675 = call float @dx.op.binary.f32(i32 35, float %9665, float %9666)  ; FMax(a,b)
  %9676 = call float @dx.op.binary.f32(i32 35, float %9664, float %9675)  ; FMax(a,b)
  %9677 = call float @dx.op.binary.f32(i32 35, float %9676, float %9667)  ; FMax(a,b)
  %9678 = call float @dx.op.binary.f32(i32 36, float %9672, float %9673)  ; FMin(a,b)
  %9679 = call float @dx.op.binary.f32(i32 36, float %9671, float %9678)  ; FMin(a,b)
  %9680 = call float @dx.op.binary.f32(i32 36, float %9679, float %9674)  ; FMin(a,b)
  %9681 = fmul fast float %9677, 2.550000e+02
  %9682 = fadd fast float %9681, 0x3F70101020000000
  %9683 = fptoui float %9682 to i32
  %9684 = fmul fast float %9680, 2.550000e+02
  %9685 = fadd fast float %9684, 0x3F70101020000000
  %9686 = fptoui float %9685 to i32
  %9687 = icmp ult i32 %9683, %9686
  br i1 %9687, label %9688, label %9857

; <label>:9688                                    ; preds = %9645
  %9689 = fcmp fast ogt float %91, 9.843750e-01
  %9690 = fadd fast float %8483, -4.000000e+00
  %9691 = select i1 %9689, float -4.000000e+00, float %9690
  %9692 = call float @dx.op.binary.f32(i32 35, float %9691, float 0.000000e+00)  ; FMax(a,b)
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 0
  %9695 = fadd fast float %9694, %9692
  %9696 = extractvalue %dx.types.CBufRet.f32 %9693, 2
  %9697 = fmul fast float %9695, %9696
  %9698 = call float @dx.op.unary.f32(i32 23, float %9697)  ; Log(value)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9693, 3
  %9700 = fmul fast float %9699, %9698
  %9701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9701, 2
  %9703 = fmul fast float %9700, %9702
  %9704 = call float @dx.op.unary.f32(i32 7, float %9703)  ; Saturate(value)
  %9705 = uitofp i32 %9683 to float
  %9706 = uitofp i32 %9686 to float
  %9707 = fadd fast float %9705, 5.000000e-01
  %9708 = fadd fast float %9706, 5.000000e-01
  %9709 = fmul fast float %9702, %9707
  %9710 = fmul fast float %9702, %9708
  %9711 = fadd fast float %9709, 0x3F0FFB4800000000
  %9712 = fadd fast float %9710, 0xBF0FFB4800000000
  %9713 = call float @dx.op.binary.f32(i32 35, float %9704, float %9711)  ; FMax(a,b)
  %9714 = call float @dx.op.binary.f32(i32 36, float %9713, float %9712)  ; FMin(a,b)
  %9715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9715, 1
  %9717 = extractvalue %dx.types.CBufRet.f32 %9715, 2
  %9718 = extractvalue %dx.types.CBufRet.f32 %9715, 0
  %9719 = select i1 %8221, float %9718, float 0.000000e+00
  %9720 = fmul fast float %9716, %9714
  %9721 = fadd fast float %9719, %9720
  %9722 = fadd fast float %9719, %9717
  %9723 = fsub fast float %9716, %9717
  %9724 = fadd fast float %9723, %9719
  %9725 = call float @dx.op.binary.f32(i32 35, float %9721, float %9722)  ; FMax(a,b)
  %9726 = call float @dx.op.binary.f32(i32 36, float %9725, float %9724)  ; FMin(a,b)
  %9727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9658, float %9659, float %9726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9728 = extractvalue %dx.types.ResRet.f32 %9727, 0
  %9729 = extractvalue %dx.types.ResRet.f32 %9727, 1
  %9730 = extractvalue %dx.types.ResRet.f32 %9727, 2
  %9731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9732 = extractvalue %dx.types.CBufRet.i32 %9731, 0
  %9733 = extractvalue %dx.types.CBufRet.i32 %9731, 1
  %9734 = uitofp i32 %9732 to float
  %9735 = uitofp i32 %9733 to float
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 0
  %9738 = extractvalue %dx.types.CBufRet.f32 %9736, 1
  %9739 = fmul fast float %9734, %9658
  %9740 = fmul fast float %9735, %9659
  %9741 = fadd fast float %9739, -5.000000e-01
  %9742 = fadd fast float %9740, -5.000000e-01
  %9743 = call float @dx.op.unary.f32(i32 22, float %9741)  ; Frc(value)
  %9744 = call float @dx.op.unary.f32(i32 22, float %9742)  ; Frc(value)
  %9745 = fmul fast float %9743, %9743
  %9746 = fmul fast float %9745, %9743
  %9747 = fsub fast float 3.000000e+00, %9743
  %9748 = fmul fast float %9745, %9747
  %9749 = fmul fast float %9743, 3.000000e+00
  %9750 = fmul fast float %9746, 3.000000e+00
  %9751 = fmul fast float %9745, 6.000000e+00
  %9752 = fsub fast float %9750, %9751
  %9753 = fadd fast float %9752, 4.000000e+00
  %9754 = fmul fast float %9753, 0x3FC5555560000000
  %9755 = fmul fast float %9746, -3.000000e+00
  %9756 = fadd fast float %9745, %9743
  %9757 = fmul fast float %9756, 3.000000e+00
  %9758 = fadd fast float %9755, 1.000000e+00
  %9759 = fadd fast float %9758, %9757
  %9760 = fmul fast float %9746, 0x3FC5555560000000
  %9761 = fmul fast float %9744, %9744
  %9762 = fmul fast float %9761, %9744
  %9763 = fsub fast float 3.000000e+00, %9744
  %9764 = fmul fast float %9761, %9763
  %9765 = fmul fast float %9744, 3.000000e+00
  %9766 = fmul fast float %9762, 3.000000e+00
  %9767 = fmul fast float %9761, 6.000000e+00
  %9768 = fsub fast float %9766, %9767
  %9769 = fadd fast float %9768, 4.000000e+00
  %9770 = fmul fast float %9769, 0x3FC5555560000000
  %9771 = fmul fast float %9762, -3.000000e+00
  %9772 = fadd fast float %9761, %9744
  %9773 = fmul fast float %9772, 3.000000e+00
  %9774 = fadd fast float %9771, 1.000000e+00
  %9775 = fadd fast float %9774, %9773
  %9776 = fmul fast float %9762, 0x3FC5555560000000
  %9777 = fadd fast float %9743, 1.000000e+00
  %9778 = fsub fast float 1.000000e+00, %9749
  %9779 = fadd fast float %9778, %9748
  %9780 = fadd fast float %9779, %9753
  %9781 = fmul fast float %9780, 0x3FC5555560000000
  %9782 = fdiv fast float %9754, %9781
  %9783 = fsub fast float %9777, %9782
  %9784 = fsub fast float 1.000000e+00, %9743
  %9785 = fadd fast float %9759, %9746
  %9786 = fmul fast float %9785, 0x3FC5555560000000
  %9787 = fdiv fast float %9760, %9786
  %9788 = fadd fast float %9784, %9787
  %9789 = fadd fast float %9744, 1.000000e+00
  %9790 = fsub fast float 1.000000e+00, %9765
  %9791 = fadd fast float %9790, %9764
  %9792 = fadd fast float %9791, %9769
  %9793 = fmul fast float %9792, 0x3FC5555560000000
  %9794 = fdiv fast float %9770, %9793
  %9795 = fsub fast float %9789, %9794
  %9796 = fsub fast float 1.000000e+00, %9744
  %9797 = fadd fast float %9775, %9762
  %9798 = fmul fast float %9797, 0x3FC5555560000000
  %9799 = fdiv fast float %9776, %9798
  %9800 = fadd fast float %9799, %9796
  %9801 = fmul fast float %9783, %9737
  %9802 = fsub fast float %9658, %9801
  %9803 = fmul fast float %9788, %9737
  %9804 = fadd fast float %9803, %9658
  %9805 = fmul fast float %9800, %9738
  %9806 = fadd fast float %9805, %9659
  %9807 = fmul fast float %9795, %9738
  %9808 = fsub fast float %9659, %9807
  %9809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9802, float %9808, float %9726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9810 = extractvalue %dx.types.ResRet.f32 %9809, 0
  %9811 = extractvalue %dx.types.ResRet.f32 %9809, 1
  %9812 = extractvalue %dx.types.ResRet.f32 %9809, 2
  %9813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9804, float %9808, float %9726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9814 = extractvalue %dx.types.ResRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.ResRet.f32 %9813, 1
  %9816 = extractvalue %dx.types.ResRet.f32 %9813, 2
  %9817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9802, float %9806, float %9726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9818 = extractvalue %dx.types.ResRet.f32 %9817, 0
  %9819 = extractvalue %dx.types.ResRet.f32 %9817, 1
  %9820 = extractvalue %dx.types.ResRet.f32 %9817, 2
  %9821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9804, float %9806, float %9726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9822 = extractvalue %dx.types.ResRet.f32 %9821, 0
  %9823 = extractvalue %dx.types.ResRet.f32 %9821, 1
  %9824 = extractvalue %dx.types.ResRet.f32 %9821, 2
  %9825 = fsub fast float %9818, %9810
  %9826 = fsub fast float %9819, %9811
  %9827 = fsub fast float %9820, %9812
  %9828 = fmul fast float %9825, %9798
  %9829 = fmul fast float %9826, %9798
  %9830 = fmul fast float %9827, %9798
  %9831 = fadd fast float %9828, %9810
  %9832 = fadd fast float %9829, %9811
  %9833 = fadd fast float %9830, %9812
  %9834 = fsub fast float %9822, %9814
  %9835 = fsub fast float %9823, %9815
  %9836 = fsub fast float %9824, %9816
  %9837 = fmul fast float %9834, %9798
  %9838 = fmul fast float %9835, %9798
  %9839 = fmul fast float %9836, %9798
  %9840 = fsub fast float %9814, %9831
  %9841 = fadd fast float %9840, %9837
  %9842 = fsub fast float %9815, %9832
  %9843 = fadd fast float %9842, %9838
  %9844 = fsub fast float %9816, %9833
  %9845 = fadd fast float %9844, %9839
  %9846 = fmul fast float %9841, %9786
  %9847 = fmul fast float %9843, %9786
  %9848 = fmul fast float %9845, %9786
  %9849 = fadd fast float %9846, %9831
  %9850 = fadd fast float %9847, %9832
  %9851 = fadd fast float %9848, %9833
  %9852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9853 = extractvalue %dx.types.CBufRet.f32 %9852, 1
  %9854 = fmul fast float %9849, %9853
  %9855 = fmul fast float %9850, %9853
  %9856 = fmul fast float %9851, %9853
  br label %9857

; <label>:9857                                    ; preds = %9688, %9645
  %9858 = phi float [ %9728, %9688 ], [ 1.000000e+00, %9645 ]
  %9859 = phi float [ %9729, %9688 ], [ 1.000000e+00, %9645 ]
  %9860 = phi float [ %9730, %9688 ], [ 1.000000e+00, %9645 ]
  %9861 = phi float [ %9854, %9688 ], [ 0.000000e+00, %9645 ]
  %9862 = phi float [ %9855, %9688 ], [ 0.000000e+00, %9645 ]
  %9863 = phi float [ %9856, %9688 ], [ 0.000000e+00, %9645 ]
  %9864 = fmul fast float %9861, %8195
  %9865 = fmul fast float %9862, %8197
  %9866 = fmul fast float %9863, %8199
  %9867 = fmul fast float %9858, %9652
  %9868 = call float @dx.op.dot3.f32(i32 55, float %9858, float %9859, float %9860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9869 = call float @dx.op.dot3.f32(i32 55, float %9864, float %9865, float %9866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9870 = select i1 %218, float %9868, float %9858
  %9871 = select i1 %218, float %9868, float %9859
  %9872 = select i1 %218, float 1.000000e+00, float %9860
  %9873 = select i1 %218, float %9869, float %9864
  %9874 = select i1 %218, float 0.000000e+00, float %9865
  %9875 = select i1 %218, float 0.000000e+00, float %9866
  %9876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.i32 %9876, 3
  %9878 = and i32 %9877, 3
  %9879 = icmp ne i32 %9878, 0
  %9880 = and i32 %9877, 4
  %9881 = icmp ne i32 %9880, 0
  %9882 = and i1 %9879, %9881
  %9883 = and i1 %218, %9882
  br i1 %9883, label %9884, label %9890

; <label>:9884                                    ; preds = %9857
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9887 = fadd fast float %9867, -1.000000e+00
  %9888 = fmul fast float %9886, %9887
  %9889 = fadd fast float %9888, 1.000000e+00
  br label %9890

; <label>:9890                                    ; preds = %9884, %9857
  %9891 = phi float [ %9889, %9884 ], [ %9867, %9857 ]
  %9892 = fadd fast float %9649, %9646
  %9893 = fmul fast float %9870, %9892
  %9894 = fadd fast float %9893, %9873
  %9895 = fadd fast float %9650, %9647
  %9896 = fmul fast float %9871, %9895
  %9897 = fadd fast float %9896, %9874
  %9898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9898, 0
  br i1 %218, label %9900, label %9916

; <label>:9900                                    ; preds = %9890
  %9901 = fadd fast float %9894, %9897
  %9902 = fmul fast float %9899, %9901
  %9903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9904 = extractvalue %dx.types.CBufRet.f32 %9903, 3
  %9905 = extractvalue %dx.types.CBufRet.f32 %8203, 1
  %9906 = fsub fast float %8208, %8202
  %9907 = fadd fast float %9906, %8209
  %9908 = fsub fast float %9907, %9905
  %9909 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %9910 = fmul fast float %9908, %9909
  %9911 = call float @dx.op.unary.f32(i32 7, float %9910)  ; Saturate(value)
  %9912 = fsub fast float %9911, %9904
  %9913 = fmul fast float %9912, %9891
  %9914 = fadd fast float %9913, %9904
  %9915 = fmul fast float %9914, %5073
  br label %9942

; <label>:9916                                    ; preds = %9890
  %9917 = fadd fast float %9651, %9648
  %9918 = fmul fast float %9872, %9917
  %9919 = fadd fast float %9918, %9875
  %9920 = fmul fast float %9899, %9894
  %9921 = fmul fast float %9899, %9897
  %9922 = fmul fast float %9899, %9919
  %9923 = call float @dx.op.binary.f32(i32 35, float %9921, float %9922)  ; FMax(a,b)
  %9924 = call float @dx.op.binary.f32(i32 35, float %9920, float %9923)  ; FMax(a,b)
  %9925 = call float @dx.op.binary.f32(i32 35, float %8197, float %8199)  ; FMax(a,b)
  %9926 = call float @dx.op.binary.f32(i32 35, float %8195, float %9925)  ; FMax(a,b)
  %9927 = call float @dx.op.binary.f32(i32 35, float %9924, float %9926)  ; FMax(a,b)
  %9928 = fcmp fast ugt float %9927, 0x3F10000000000000
  br i1 %9928, label %9930, label %9929

; <label>:9929                                    ; preds = %9916
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9930

; <label>:9930                                    ; preds = %9929, %9916
  %9931 = add i32 %54, 356
  %9932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9931, i32 undef)  ; BufferLoad(srv,index,wot)
  %9933 = extractvalue %dx.types.ResRet.i32 %9932, 0
  %9934 = and i32 %9933, 32
  %9935 = icmp eq i32 %9934, 0
  br i1 %9935, label %9942, label %9936

; <label>:9936                                    ; preds = %9930
  %9937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9938 = extractvalue %dx.types.CBufRet.f32 %9937, 0
  %9939 = fmul fast float %9938, 0x3FE99999A0000000
  %9940 = fadd fast float %9938, %9920
  %9941 = fadd fast float %9939, %9922
  br label %9942

; <label>:9942                                    ; preds = %9936, %9930, %9900
  %9943 = phi float [ %5073, %9900 ], [ %8197, %9936 ], [ %8197, %9930 ]
  %9944 = phi float [ %5073, %9900 ], [ %8199, %9936 ], [ %8199, %9930 ]
  %9945 = phi float [ %9902, %9900 ], [ %9940, %9936 ], [ %9920, %9930 ]
  %9946 = phi float [ %9915, %9900 ], [ %9921, %9936 ], [ %9921, %9930 ]
  %9947 = phi float [ %5073, %9900 ], [ %9941, %9936 ], [ %9922, %9930 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9948 = call float @dx.op.binary.f32(i32 36, float %9945, float 3.225500e+04)  ; FMin(a,b)
  %9949 = call float @dx.op.binary.f32(i32 36, float %9946, float 3.225500e+04)  ; FMin(a,b)
  %9950 = call float @dx.op.binary.f32(i32 36, float %9947, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9948)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9951 = call float @dx.op.binary.f32(i32 36, float %8195, float 3.225500e+04)  ; FMin(a,b)
  %9952 = call float @dx.op.binary.f32(i32 36, float %9943, float 3.225500e+04)  ; FMin(a,b)
  %9953 = call float @dx.op.binary.f32(i32 36, float %9944, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

