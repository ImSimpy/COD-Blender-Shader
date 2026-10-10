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
; shader hash: 1d3e8b53b83a86b38d0efc968cb86296
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
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = alloca [3 x float], align 4
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fmul fast float %99, %88
  %101 = fmul fast float %99, %89
  %102 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %79
  %108 = fmul fast float %106, %80
  %109 = fmul fast float %106, %81
  %110 = fmul fast float %80, %77
  %111 = fmul fast float %81, %76
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %81, %75
  %114 = fmul fast float %79, %77
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %79, %76
  %117 = fmul fast float %80, %75
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %112, %78
  %120 = fmul fast float %115, %78
  %121 = fmul fast float %118, %78
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %100, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %101, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %129, %132
  %136 = fmul fast float %129, %133
  %137 = fmul fast float %129, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %130, %139
  %143 = fmul fast float %130, %140
  %144 = fmul fast float %130, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %149, %135
  %151 = fadd fast float %143, %147
  %152 = fadd fast float %151, %136
  %153 = fadd fast float %144, %148
  %154 = fadd fast float %153, %137
  %155 = fmul fast float %150, %91
  %156 = fmul fast float %152, %91
  %157 = fmul fast float %154, %91
  %158 = add i32 %54, 360
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = extractvalue %dx.types.ResRet.i32 %159, 1
  %162 = extractvalue %dx.types.ResRet.i32 %159, 2
  %163 = extractvalue %dx.types.ResRet.i32 %159, 3
  %164 = bitcast i32 %160 to float
  %165 = bitcast i32 %161 to float
  %166 = bitcast i32 %162 to float
  %167 = bitcast i32 %163 to float
  %168 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call float @dx.op.unary.f32(i32 25, float %168)  ; Rsqrt(value)
  %170 = fmul fast float %169, %107
  %171 = fmul fast float %169, %108
  %172 = fmul fast float %169, %109
  %173 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 25, float %173)  ; Rsqrt(value)
  %175 = fmul fast float %174, %155
  %176 = fmul fast float %174, %156
  %177 = fmul fast float %174, %157
  %178 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = fmul fast float %178, %178
  %180 = fmul fast float %179, %166
  %181 = fadd fast float %180, %167
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 3
  %185 = fmul fast float %184, %173
  %186 = fsub fast float %164, %185
  %187 = fmul fast float %186, %165
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, %182
  %190 = fmul fast float %100, 5.000000e-01
  %191 = fmul fast float %101, 5.000000e-01
  %192 = fptosi float %190 to i32
  %193 = fptosi float %191 to i32
  %194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 18
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F4C00EBA0000000
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fadd fast float %199, -1.000000e+00
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = sitofp i32 %202 to float
  %204 = extractvalue %dx.types.Dimensions %201, 1
  %205 = sitofp i32 %204 to float
  %206 = fcmp fast oge float %190, %203
  %207 = fcmp fast oge float %191, %205
  %208 = or i1 %206, %207
  %209 = select i1 %208, float 0x4197782600000000, float %200
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 2
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 3
  %213 = fmul fast float %211, %100
  %214 = fmul fast float %212, %101
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 114688
  %218 = icmp ne i32 %217, 0
  %219 = select i1 %218, float %213, float 0.000000e+00
  %220 = select i1 %218, float %214, float 0.000000e+00
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %219, float %220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fmul fast float %222, 2.550000e+02
  %224 = fptoui float %223 to i32
  %225 = select i1 %218, i32 %224, i32 0
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 3
  %229 = and i32 %228, 3
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, 4
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %245

; <label>:234                                     ; preds = %0
  %235 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %236 = fmul fast float %235, %101
  %237 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %238 = fmul fast float %237, %100
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %238, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = fcmp fast olt float %241, %243
  br label %248

; <label>:245                                     ; preds = %0
  %246 = icmp eq i32 %231, 0
  %247 = and i1 %230, %246
  br label %248

; <label>:248                                     ; preds = %245, %234
  %249 = phi i1 [ %244, %234 ], [ %247, %245 ]
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fmul fast float %251, 0x3FE3C6EF40000000
  %253 = frem fast float %100, 2.560000e+02
  %254 = frem fast float %101, 2.560000e+02
  %255 = fptoui float %253 to i32
  %256 = fptoui float %254 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %255, i32 %256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fadd fast float %258, %252
  %260 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %261 = add i32 %54, 156
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %54, 216
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %54, 36
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %54, 288
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = add i32 %54, 172
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = shl i32 %305, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %305, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %305, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %54, 232
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %317, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %317, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %54, 52
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %54, 304
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = add i32 %54, 188
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = shl i32 %347, 4
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %347, 7
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %347, 22
  %355 = shl nuw nsw i32 %354, 5
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %54, 248
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %359, 8
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %359, 16
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = add i32 %54, 68
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 65535
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %373, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %54, 320
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %382, 0x3F50624DE0000000
  %386 = fmul fast float %384, 0x3F50624DE0000000
  %387 = add i32 %54, 204
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = shl i32 %389, 4
  %391 = and i32 %390, 32752
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %389, 7
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %389, 22
  %397 = shl nuw nsw i32 %396, 5
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %54, 264
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = lshr i32 %401, 8
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = lshr i32 %401, 16
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = add i32 %54, 84
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = add i32 %54, 336
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fmul fast float %424, 0x3F50624DE0000000
  %428 = fmul fast float %426, 0x3F50624DE0000000
  %429 = add i32 %54, 348
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 32
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %431, 64
  %435 = icmp eq i32 %434, 0
  %436 = and i32 %431, 128
  %437 = icmp eq i32 %436, 0
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 2
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %457, label %442

; <label>:442                                     ; preds = %248
  %443 = add i32 %54, 536
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %445, 0
  %447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %447, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = fmul fast float %452, %84
  %454 = fmul fast float %449, %85
  %455 = fmul fast float %450, %86
  %456 = fmul fast float %451, %87
  br label %457

; <label>:457                                     ; preds = %442, %248
  %458 = phi float [ %87, %248 ], [ %456, %442 ]
  %459 = phi float [ %86, %248 ], [ %455, %442 ]
  %460 = phi float [ %85, %248 ], [ %454, %442 ]
  %461 = phi float [ %84, %248 ], [ %453, %442 ]
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 2
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %485, label %466

; <label>:466                                     ; preds = %457
  %467 = add i32 %54, 44
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 1
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %460, float 1.000000e+00
  %473 = add i32 %54, 60
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 1
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %459, float 1.000000e+00
  %479 = add i32 %54, 76
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %458, float 1.000000e+00
  br label %485

; <label>:485                                     ; preds = %466, %457
  %486 = phi float [ %458, %457 ], [ %484, %466 ]
  %487 = phi float [ %459, %457 ], [ %478, %466 ]
  %488 = phi float [ %460, %457 ], [ %472, %466 ]
  %489 = lshr i32 %463, 20
  %490 = and i32 %489, 3
  %491 = add nuw nsw i32 %490, 1
  %492 = add i32 %54, 24
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add i32 %54, 28
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = or i32 %497, %494
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %1260, label %500

; <label>:500                                     ; preds = %485
  %501 = and i32 %494, 262144
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %57, float 1.000000e+00
  %504 = select i1 %502, float %58, float 0.000000e+00
  %505 = select i1 %502, float %59, float 0.000000e+00
  %506 = select i1 %502, float %60, float 1.000000e+00
  %507 = select i1 %502, float %61, float %82
  %508 = select i1 %502, float %62, float %83
  %509 = add i32 %54, 284
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = fmul fast float %513, 0x3F50624DE0000000
  %515 = add i32 %54, 88
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = and i32 %518, 255
  %520 = lshr i32 %517, 24
  %521 = add i32 %54, 292
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 65535
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = lshr i32 %523, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = add i32 %54, 32
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 22
  %532 = shl nuw nsw i32 %531, 5
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = shl i32 %530, 4
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 7
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fmul fast float %541, 1.000000e+03
  %543 = fmul fast float %301, %542
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = fadd fast float %544, %291
  %546 = fmul fast float %302, %542
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %293
  %549 = fmul fast float %514, %542
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fmul fast float %550, 0x401921FB60000000
  %552 = fadd fast float %551, %533
  %553 = call float @dx.op.unary.f32(i32 13, float %552)  ; Sin(value)
  %554 = call float @dx.op.unary.f32(i32 12, float %552)  ; Cos(value)
  %555 = fsub fast float -0.000000e+00, %553
  %556 = fadd fast float %507, -5.000000e-01
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fmul fast float %525, %556
  %559 = fmul fast float %527, %557
  %560 = fadd fast float %558, 5.000000e-01
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fmul fast float %536, %560
  %563 = fmul fast float %539, %561
  %564 = fmul fast float %554, %562
  %565 = call float @dx.op.tertiary.f32(i32 46, float %555, float %563, float %564)  ; FMad(a,b,c)
  %566 = fmul fast float %553, %562
  %567 = call float @dx.op.tertiary.f32(i32 46, float %554, float %563, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %545, %565
  %569 = fadd fast float %548, %567
  %570 = icmp ugt i32 %519, 1
  %571 = icmp ugt i32 %517, 33554431
  %572 = or i1 %571, %570
  br i1 %572, label %573, label %598

; <label>:573                                     ; preds = %500
  %574 = add i32 %54, 228
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = lshr i32 %576, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = fmul fast float %541, %578
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = mul nuw nsw i32 %519, %520
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %580, %582
  %584 = call float @dx.op.unary.f32(i32 27, float %583)  ; Round_ni(value)
  %585 = fptoui float %584 to i32
  %586 = urem i32 %585, %519
  %587 = udiv i32 %585, %520
  %588 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = uitofp i32 %586 to float
  %591 = uitofp i32 %587 to float
  %592 = fadd fast float %588, %590
  %593 = fadd fast float %589, %591
  %594 = uitofp i32 %519 to float
  %595 = uitofp i32 %520 to float
  %596 = fdiv fast float %592, %594
  %597 = fdiv fast float %593, %595
  br label %598

; <label>:598                                     ; preds = %573, %500
  %599 = phi float [ %596, %573 ], [ %568, %500 ]
  %600 = phi float [ %597, %573 ], [ %569, %500 ]
  %601 = and i32 %494, 16777216
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %712, label %603

; <label>:603                                     ; preds = %598
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = extractvalue %dx.types.CBufRet.f32 %604, 1
  %607 = extractvalue %dx.types.CBufRet.f32 %604, 2
  %608 = fadd fast float %605, %155
  %609 = fadd fast float %606, %156
  %610 = fadd fast float %607, %157
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = icmp eq i32 %55, 65535
  br i1 %614, label %709, label %615

; <label>:615                                     ; preds = %603
  %616 = lshr i32 %55, 1
  %617 = shl i32 %616, 2
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %55, 1
  %621 = icmp ne i32 %620, 0
  %622 = lshr i32 %619, 16
  %623 = and i32 %619, 65535
  %624 = select i1 %621, i32 %622, i32 %623
  %625 = icmp eq i32 %624, 65535
  br i1 %625, label %705, label %626

; <label>:626                                     ; preds = %615
  %627 = mul nuw nsw i32 %624, 40
  %628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = add nuw nsw i32 %627, 12
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = add nuw nsw i32 %627, 24
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add nuw nsw i32 %627, 36
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = fsub fast float %608, %629
  %646 = fsub fast float %609, %630
  %647 = fsub fast float %610, %631
  %648 = fmul fast float %644, %645
  %649 = fmul fast float %644, %646
  %650 = fmul fast float %644, %647
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fmul fast float %654, %634
  %658 = fmul fast float %655, %635
  %659 = fmul fast float %656, %636
  %660 = shl i32 %55, 2
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call float @dx.op.unary.f32(i32 22, float %657)  ; Frc(value)
  %666 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %667 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %664, %dx.types.Handle %49, float %665, float %666, float %667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = extractvalue %dx.types.ResRet.f32 %668, 1
  %671 = extractvalue %dx.types.ResRet.f32 %668, 2
  %672 = fmul fast float %669, 1.023000e+03
  %673 = fmul fast float %670, 1.023000e+03
  %674 = fmul fast float %671, 1.023000e+03
  %675 = fadd fast float %672, 5.000000e-01
  %676 = fadd fast float %673, 5.000000e-01
  %677 = fadd fast float %674, 5.000000e-01
  %678 = call float @dx.op.unary.f32(i32 27, float %675)  ; Round_ni(value)
  %679 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %677)  ; Round_ni(value)
  %681 = fsub fast float %648, %651
  %682 = fsub fast float %649, %652
  %683 = fsub fast float %650, %653
  %684 = fmul fast float %681, 7.500000e-01
  %685 = fmul fast float %682, 7.500000e-01
  %686 = fmul fast float %683, 7.500000e-01
  %687 = fadd fast float %651, 1.250000e-01
  %688 = fadd fast float %687, %684
  %689 = fadd fast float %688, %678
  %690 = fadd fast float %652, 1.250000e-01
  %691 = fadd fast float %690, %685
  %692 = fadd fast float %691, %679
  %693 = fadd fast float %653, 1.250000e-01
  %694 = fadd fast float %693, %686
  %695 = fadd fast float %694, %680
  %696 = fmul fast float %689, %639
  %697 = fmul fast float %692, %640
  %698 = fmul fast float %695, %641
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %702, %dx.types.Handle %47, float %696, float %697, float %698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  br label %705

; <label>:705                                     ; preds = %626, %615
  %706 = phi float [ %704, %626 ], [ -1.000000e+00, %615 ]
  %707 = fadd fast float %706, %613
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  br label %709

; <label>:709                                     ; preds = %705, %603
  %710 = phi float [ %708, %705 ], [ %613, %603 ]
  %711 = fmul fast float %710, %461
  br label %712

; <label>:712                                     ; preds = %709, %598
  %713 = phi float [ %711, %709 ], [ %461, %598 ]
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 256
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %764, label %718

; <label>:718                                     ; preds = %712
  %719 = add i32 %54, 472
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = add i32 %54, 100
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = shl i32 %728, 4
  %730 = and i32 %729, 32752
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %728, 7
  %733 = and i32 %732, 32752
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = fsub fast float 1.000000e+00, %713
  %736 = call float @dx.op.binary.f32(i32 35, float %735, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %737 = bitcast float %713 to i32
  %738 = sitofp i32 %737 to float
  %739 = fadd fast float %738, 0xC1CFBF8940000000
  %740 = fmul fast float %734, %739
  %741 = fadd fast float %740, 0x41CFBF8940000000
  %742 = fptosi float %741 to i32
  %743 = bitcast i32 %742 to float
  %744 = bitcast float %736 to i32
  %745 = sitofp i32 %744 to float
  %746 = fadd fast float %745, 0xC1CFBF8940000000
  %747 = fmul fast float %746, %734
  %748 = fadd fast float %747, 0x41CFBF8940000000
  %749 = fptosi float %748 to i32
  %750 = bitcast i32 %749 to float
  %751 = fmul fast float %743, %731
  %752 = fmul fast float %750, %731
  %753 = fsub fast float %736, %751
  %754 = fadd fast float %752, %736
  %755 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %757 = fsub fast float %725, %755
  %758 = fsub fast float %756, %755
  %759 = bitcast float %758 to i32
  %760 = sub nsw i32 2129859010, %759
  %761 = bitcast i32 %760 to float
  %762 = fmul fast float %761, %757
  %763 = call float @dx.op.unary.f32(i32 7, float %762)  ; Saturate(value)
  br label %764

; <label>:764                                     ; preds = %718, %712
  %765 = phi float [ %763, %718 ], [ %713, %712 ]
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 128
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %786, label %770

; <label>:770                                     ; preds = %764
  %771 = add i32 %54, 456
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %773, 0
  %775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %775, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 524288
  %781 = icmp ne i32 %780, 0
  %782 = fcmp fast ogt float %777, 0x3FE0101020000000
  %783 = select i1 %782, float 1.000000e+00, float 0.000000e+00
  %784 = select i1 %781, float %783, float %777
  %785 = fmul fast float %784, %765
  br label %786

; <label>:786                                     ; preds = %770, %764
  %787 = phi float [ %785, %770 ], [ %765, %764 ]
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 16
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %990, label %792

; <label>:792                                     ; preds = %786
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %54, 408
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %797, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = and i32 %794, 255
  %806 = uitofp i32 %805 to float
  %807 = lshr i32 %794, 8
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %804, %806
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %811, 0x3F70101000000000
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 512
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %825, label %817

; <label>:817                                     ; preds = %792
  %818 = add i32 %54, 488
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  br label %825

; <label>:825                                     ; preds = %817, %792
  %826 = phi float [ %824, %817 ], [ 1.000000e+00, %792 ]
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 33554432
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %937, label %831

; <label>:831                                     ; preds = %825
  %832 = add i32 %54, 224
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 65535
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = lshr i32 %834, 16
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = add i32 %54, 228
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %860 = add i32 %54, 220
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %860, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = lshr i32 %862, 24
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = and i32 %862, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = lshr i32 %862, 8
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101020000000
  %873 = lshr i32 %862, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F70101020000000
  %877 = bitcast float %801 to i32
  %878 = ashr i32 %877, 1
  %879 = sub nsw i32 1597463174, %878
  %880 = bitcast i32 %879 to float
  %881 = fmul fast float %801, 5.000000e-01
  %882 = fmul fast float %880, %880
  %883 = fmul fast float %882, %881
  %884 = fsub fast float 1.500000e+00, %883
  %885 = fmul fast float %880, %801
  %886 = fmul fast float %885, %884
  %887 = bitcast float %802 to i32
  %888 = ashr i32 %887, 1
  %889 = sub nsw i32 1597463174, %888
  %890 = bitcast i32 %889 to float
  %891 = fmul fast float %802, 5.000000e-01
  %892 = fmul fast float %890, %890
  %893 = fmul fast float %892, %891
  %894 = fsub fast float 1.500000e+00, %893
  %895 = fmul fast float %890, %802
  %896 = fmul fast float %895, %894
  %897 = bitcast float %803 to i32
  %898 = ashr i32 %897, 1
  %899 = sub nsw i32 1597463174, %898
  %900 = bitcast i32 %899 to float
  %901 = fmul fast float %803, 5.000000e-01
  %902 = fmul fast float %900, %900
  %903 = fmul fast float %902, %901
  %904 = fsub fast float 1.500000e+00, %903
  %905 = fmul fast float %900, %803
  %906 = fmul fast float %905, %904
  %907 = fsub fast float %886, %868
  %908 = fsub fast float %896, %872
  %909 = fsub fast float %906, %876
  %910 = fmul fast float %907, %836
  %911 = fmul fast float %908, %838
  %912 = fmul fast float %909, %843
  %913 = fadd fast float %910, %851
  %914 = fadd fast float %911, %855
  %915 = fadd fast float %912, %859
  %916 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %918 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %919 = fmul fast float %916, %916
  %920 = fmul fast float %917, %917
  %921 = fmul fast float %918, %918
  %922 = fsub fast float %919, %801
  %923 = fsub fast float %920, %802
  %924 = fsub fast float %921, %803
  %925 = fmul fast float %922, %826
  %926 = fmul fast float %923, %826
  %927 = fmul fast float %924, %826
  %928 = fadd fast float %925, %801
  %929 = fadd fast float %926, %802
  %930 = fadd fast float %927, %803
  %931 = fadd fast float %848, %812
  %932 = fsub fast float %931, %865
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fsub fast float %933, %812
  %935 = fmul fast float %934, %826
  %936 = fadd fast float %935, %812
  br label %990

; <label>:937                                     ; preds = %825
  %938 = and i32 %828, 134217728
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %974, label %940

; <label>:940                                     ; preds = %937
  %941 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %942 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %943 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %944 = fadd fast float %941, -5.000000e-01
  %945 = fadd fast float %942, -5.000000e-01
  %946 = fadd fast float %943, -5.000000e-01
  %947 = fmul fast float %944, %826
  %948 = fmul fast float %945, %826
  %949 = fmul fast float %946, %826
  %950 = fadd fast float %947, 5.000000e-01
  %951 = fadd fast float %948, 5.000000e-01
  %952 = fadd fast float %949, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 24, float %801)  ; Sqrt(value)
  %954 = call float @dx.op.unary.f32(i32 24, float %802)  ; Sqrt(value)
  %955 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %956 = fmul fast float %950, 2.000000e+00
  %957 = fsub fast float 1.000000e+00, %956
  %958 = fmul fast float %957, %953
  %959 = fadd fast float %958, %956
  %960 = fmul fast float %959, %953
  %961 = fmul fast float %951, 2.000000e+00
  %962 = fsub fast float 1.000000e+00, %961
  %963 = fmul fast float %962, %954
  %964 = fadd fast float %963, %961
  %965 = fmul fast float %964, %954
  %966 = fmul fast float %952, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %955
  %969 = fadd fast float %968, %966
  %970 = fmul fast float %969, %955
  %971 = fmul fast float %960, %960
  %972 = fmul fast float %965, %965
  %973 = fmul fast float %970, %970
  br label %990

; <label>:974                                     ; preds = %937
  %975 = fmul fast float %278, %278
  %976 = fmul fast float %282, %282
  %977 = fmul fast float %286, %286
  %978 = fadd fast float %975, -1.000000e+00
  %979 = fadd fast float %976, -1.000000e+00
  %980 = fadd fast float %977, -1.000000e+00
  %981 = fmul fast float %826, %978
  %982 = fmul fast float %826, %979
  %983 = fmul fast float %826, %980
  %984 = fadd fast float %981, 1.000000e+00
  %985 = fadd fast float %982, 1.000000e+00
  %986 = fadd fast float %983, 1.000000e+00
  %987 = fmul fast float %984, %801
  %988 = fmul fast float %985, %802
  %989 = fmul fast float %986, %803
  br label %990

; <label>:990                                     ; preds = %974, %940, %831, %786
  %991 = phi float [ %936, %831 ], [ %812, %940 ], [ %812, %974 ], [ 0x3FA23C0BE0000000, %786 ]
  %992 = phi float [ %928, %831 ], [ %971, %940 ], [ %987, %974 ], [ 1.000000e+00, %786 ]
  %993 = phi float [ %929, %831 ], [ %972, %940 ], [ %988, %974 ], [ 1.000000e+00, %786 ]
  %994 = phi float [ %930, %831 ], [ %973, %940 ], [ %989, %974 ], [ 1.000000e+00, %786 ]
  %995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.i32 %995, 1
  %997 = and i32 %996, 1
  %998 = icmp ne i32 %997, 0
  %999 = add i32 %54, 356
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %1001, 32
  %1003 = icmp ne i32 %1002, 0
  %1004 = and i1 %998, %1003
  %1005 = select i1 %1004, float 1.000000e+00, float %992
  %1006 = select i1 %1004, float 0x3FD3333340000000, float %993
  %1007 = select i1 %1004, float 0x3FD3333340000000, float %994
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 32
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1084, label %1012

; <label>:1012                                    ; preds = %990
  %1013 = add i32 %54, 92
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = add i32 %54, 424
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %1018, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1026 = and i32 %1015, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = lshr i32 %1015, 8
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1015, 16
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F70101000000000
  %1035 = fmul fast float %1022, %1027
  %1036 = fadd fast float %1035, %1030
  %1037 = fmul fast float %1036, 0x3F70101000000000
  %1038 = fadd fast float %1023, -5.000000e-01
  %1039 = fadd fast float %1025, -5.000000e-01
  %1040 = fmul fast float %1038, %1034
  %1041 = fmul fast float %1039, %1034
  %1042 = fadd fast float %1040, 5.000000e-01
  %1043 = fadd fast float %1041, 5.000000e-01
  %1044 = fmul fast float %1042, 2.000000e+00
  %1045 = fadd fast float %1044, -1.000000e+00
  %1046 = fmul fast float %1043, 2.000000e+00
  %1047 = fadd fast float %1046, -1.000000e+00
  %1048 = fadd fast float %1045, %1047
  %1049 = fmul fast float %1048, 5.000000e-01
  %1050 = fsub fast float %1045, %1047
  %1051 = fmul fast float %1050, 5.000000e-01
  %1052 = call float @dx.op.unary.f32(i32 6, float %1049)  ; FAbs(value)
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = call float @dx.op.unary.f32(i32 6, float %1051)  ; FAbs(value)
  %1055 = fsub fast float %1053, %1054
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1049, float %1051, float %1055, float %1049, float %1051, float %1055)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = call float @dx.op.unary.f32(i32 25, float %1056)  ; Rsqrt(value)
  %1058 = fmul fast float %1049, %1057
  %1059 = fmul fast float %1051, %1057
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = and i32 %1061, 67108864
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1080, label %1064

; <label>:1064                                    ; preds = %1012
  %1065 = add i32 %54, 280
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 65535
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 65535
  %1073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1072)  ; LegacyF16ToF32(value)
  %1074 = lshr i32 %1067, 16
  %1075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1074)  ; LegacyF16ToF32(value)
  %1076 = fsub fast float %1037, %1075
  %1077 = fmul fast float %1076, %1069
  %1078 = fadd fast float %1077, %1073
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  br label %1080

; <label>:1080                                    ; preds = %1064, %1012
  %1081 = phi float [ %1079, %1064 ], [ %1037, %1012 ]
  %1082 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  %1083 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %505, float %506)  ; Dot2(ax,ay,bx,by)
  br label %1084

; <label>:1084                                    ; preds = %1080, %990
  %1085 = phi float [ %1081, %1080 ], [ 0x3FD6666660000000, %990 ]
  %1086 = phi float [ %1082, %1080 ], [ 0.000000e+00, %990 ]
  %1087 = phi float [ %1083, %1080 ], [ 0.000000e+00, %990 ]
  %1088 = phi float [ %1024, %1080 ], [ 1.000000e+00, %990 ]
  %1089 = add i32 %54, 160
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = lshr i32 %1091, 22
  %1093 = shl nuw nsw i32 %1092, 5
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 64
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1132, label %1099

; <label>:1099                                    ; preds = %1084
  %1100 = add i32 %54, 440
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 131072
  %1108 = icmp eq i32 %1107, 0
  %1109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %96, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.ResRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1109, 2
  %1113 = fmul fast float %1110, %266
  %1114 = fmul fast float %1111, %269
  %1115 = fmul fast float %1112, %272
  br i1 %1108, label %1122, label %1116

; <label>:1116                                    ; preds = %1099
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = fmul fast float %1118, %1113
  %1120 = fmul fast float %1118, %1114
  %1121 = fmul fast float %1118, %1115
  br label %1122

; <label>:1122                                    ; preds = %1116, %1099
  %1123 = phi float [ %1119, %1116 ], [ %1113, %1099 ]
  %1124 = phi float [ %1120, %1116 ], [ %1114, %1099 ]
  %1125 = phi float [ %1121, %1116 ], [ %1115, %1099 ]
  %1126 = fmul fast float %1123, %1094
  %1127 = select i1 %249, float %1126, float %1123
  %1128 = call float @dx.op.dot3.f32(i32 55, float %1127, float %1124, float %1125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = select i1 %249, float 0.000000e+00, float %1123
  %1130 = select i1 %249, float %1128, float %1124
  %1131 = select i1 %249, float 0.000000e+00, float %1125
  br label %1132

; <label>:1132                                    ; preds = %1122, %1084
  %1133 = phi float [ %1129, %1122 ], [ 0.000000e+00, %1084 ]
  %1134 = phi float [ %1130, %1122 ], [ 0.000000e+00, %1084 ]
  %1135 = phi float [ %1131, %1122 ], [ 0.000000e+00, %1084 ]
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 1024
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1170, label %1140

; <label>:1140                                    ; preds = %1132
  %1141 = add i32 %54, 152
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = lshr i32 %1143, 8
  %1148 = and i32 %1147, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = lshr i32 %1143, 16
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F70101020000000
  %1155 = fmul fast float %1146, %1146
  %1156 = fmul fast float %1150, %1150
  %1157 = fmul fast float %1154, %1154
  %1158 = add i32 %54, 504
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = add i32 %1160, 0
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1162, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = fmul fast float %1155, %1164
  %1168 = fmul fast float %1156, %1165
  %1169 = fmul fast float %1157, %1166
  br label %1170

; <label>:1170                                    ; preds = %1140, %1132
  %1171 = phi float [ %1167, %1140 ], [ 0.000000e+00, %1132 ]
  %1172 = phi float [ %1168, %1140 ], [ 0.000000e+00, %1132 ]
  %1173 = phi float [ %1169, %1140 ], [ 0.000000e+00, %1132 ]
  %1174 = fcmp fast ogt float %1171, 0.000000e+00
  %1175 = fcmp fast ogt float %1172, 0.000000e+00
  %1176 = fcmp fast ogt float %1173, 0.000000e+00
  %1177 = call float @dx.op.unary.f32(i32 23, float %1171)  ; Log(value)
  %1178 = call float @dx.op.unary.f32(i32 23, float %1172)  ; Log(value)
  %1179 = call float @dx.op.unary.f32(i32 23, float %1173)  ; Log(value)
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = lshr i32 %1181, 7
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fmul fast float %1177, 0xBFE62E4300000000
  %1186 = fmul fast float %1185, %1184
  %1187 = fmul fast float %1178, 0xBFE62E4300000000
  %1188 = fmul fast float %1187, %1184
  %1189 = fmul fast float %1179, 0xBFE62E4300000000
  %1190 = fmul fast float %1189, %1184
  %1191 = select i1 %1174, float %1186, float 1.270000e+02
  %1192 = select i1 %1175, float %1188, float 1.270000e+02
  %1193 = select i1 %1176, float %1190, float 1.270000e+02
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 10240
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1242, label %1198

; <label>:1198                                    ; preds = %1170
  %1199 = add i32 %54, 520
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = add i32 %1201, 0
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1203, %dx.types.Handle %97, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 3
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 1048576
  %1210 = icmp ne i32 %1209, 0
  %1211 = and i32 %1208, 8192
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1228, label %1213

; <label>:1213                                    ; preds = %1198
  %1214 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1215 = select i1 %1210, float %1214, float %1205
  %1216 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1217 = select i1 %1210, float %1216, float %1205
  %1218 = add i32 %54, 96
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = lshr i32 %1220, 16
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F80101020000000
  %1225 = fmul fast float %1224, %1217
  %1226 = fmul fast float %1224, %1205
  %1227 = fmul fast float %1224, %1215
  br label %1228

; <label>:1228                                    ; preds = %1213, %1198
  %1229 = phi float [ %1225, %1213 ], [ 0.000000e+00, %1198 ]
  %1230 = phi float [ %1226, %1213 ], [ 0.000000e+00, %1198 ]
  %1231 = phi float [ %1227, %1213 ], [ 0.000000e+00, %1198 ]
  %1232 = and i32 %1208, 2048
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1242, label %1234

; <label>:1234                                    ; preds = %1228
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = shl i32 %1236, 4
  %1238 = and i32 %1237, 32752
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = fmul fast float %1239, %1206
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1242

; <label>:1242                                    ; preds = %1234, %1228, %1170
  %1243 = phi float [ %1229, %1234 ], [ %1229, %1228 ], [ 0.000000e+00, %1170 ]
  %1244 = phi float [ %1230, %1234 ], [ %1230, %1228 ], [ 0.000000e+00, %1170 ]
  %1245 = phi float [ %1231, %1234 ], [ %1231, %1228 ], [ 0.000000e+00, %1170 ]
  %1246 = phi float [ %1241, %1234 ], [ 0x3F70101020000000, %1228 ], [ 0x3F70101020000000, %1170 ]
  %1247 = add i32 %54, 96
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = lshr i32 %1249, 8
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1006, float %1007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = fmul fast float %1254, %1255
  %1257 = fadd fast float %1256, %1251
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  br label %1260

; <label>:1260                                    ; preds = %1242, %485
  %1261 = phi float [ 0.000000e+00, %485 ], [ %1086, %1242 ]
  %1262 = phi float [ 0.000000e+00, %485 ], [ %1087, %1242 ]
  %1263 = phi float [ 0.000000e+00, %485 ], [ %1005, %1242 ]
  %1264 = phi float [ 0.000000e+00, %485 ], [ %1006, %1242 ]
  %1265 = phi float [ 0.000000e+00, %485 ], [ %1007, %1242 ]
  %1266 = phi float [ 0.000000e+00, %485 ], [ %1243, %1242 ]
  %1267 = phi float [ 0.000000e+00, %485 ], [ %1244, %1242 ]
  %1268 = phi float [ 0.000000e+00, %485 ], [ %1245, %1242 ]
  %1269 = phi float [ 0.000000e+00, %485 ], [ %1133, %1242 ]
  %1270 = phi float [ 0.000000e+00, %485 ], [ %1134, %1242 ]
  %1271 = phi float [ 0.000000e+00, %485 ], [ %1135, %1242 ]
  %1272 = phi float [ 0.000000e+00, %485 ], [ %1191, %1242 ]
  %1273 = phi float [ 0.000000e+00, %485 ], [ %1192, %1242 ]
  %1274 = phi float [ 0.000000e+00, %485 ], [ %1193, %1242 ]
  %1275 = phi float [ 0.000000e+00, %485 ], [ %991, %1242 ]
  %1276 = phi float [ 0.000000e+00, %485 ], [ %787, %1242 ]
  %1277 = phi float [ 0.000000e+00, %485 ], [ %1085, %1242 ]
  %1278 = phi float [ 0.000000e+00, %485 ], [ %1088, %1242 ]
  %1279 = phi float [ 0.000000e+00, %485 ], [ %1246, %1242 ]
  %1280 = phi float [ 0.000000e+00, %485 ], [ %1259, %1242 ]
  br i1 %433, label %2318, label %1281

; <label>:1281                                    ; preds = %1260
  %1282 = icmp ult i32 %491, 2
  %1283 = add i32 %54, 40
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %54, 44
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = or i32 %1288, %1285
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %2318, label %1291

; <label>:1291                                    ; preds = %1281
  %1292 = and i32 %1285, 262144
  %1293 = icmp ne i32 %1292, 0
  %1294 = select i1 %1293, float %57, float 1.000000e+00
  %1295 = select i1 %1293, float %58, float 0.000000e+00
  %1296 = select i1 %1293, float %59, float 0.000000e+00
  %1297 = select i1 %1293, float %60, float 1.000000e+00
  %1298 = select i1 %1293, float %61, float %82
  %1299 = select i1 %1293, float %62, float %83
  %1300 = add i32 %54, 300
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = lshr i32 %1302, 16
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = fmul fast float %1304, 0x3F50624DE0000000
  %1306 = add i32 %54, 104
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 16
  %1310 = and i32 %1309, 255
  %1311 = lshr i32 %1308, 24
  %1312 = add i32 %54, 308
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 65535
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = lshr i32 %1314, 16
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = add i32 %54, 48
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = lshr i32 %1321, 22
  %1323 = shl nuw nsw i32 %1322, 5
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = shl i32 %1321, 4
  %1326 = and i32 %1325, 32752
  %1327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1326)  ; LegacyF16ToF32(value)
  %1328 = lshr i32 %1321, 7
  %1329 = and i32 %1328, 32752
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 3
  %1333 = fmul fast float %1332, 1.000000e+03
  %1334 = fmul fast float %343, %1333
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = fadd fast float %1335, %333
  %1337 = fmul fast float %344, %1333
  %1338 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1339 = fadd fast float %1338, %335
  %1340 = fmul fast float %1305, %1333
  %1341 = call float @dx.op.unary.f32(i32 22, float %1340)  ; Frc(value)
  %1342 = fmul fast float %1341, 0x401921FB60000000
  %1343 = fadd fast float %1342, %1324
  %1344 = call float @dx.op.unary.f32(i32 13, float %1343)  ; Sin(value)
  %1345 = call float @dx.op.unary.f32(i32 12, float %1343)  ; Cos(value)
  %1346 = fsub fast float -0.000000e+00, %1344
  %1347 = fadd fast float %1298, -5.000000e-01
  %1348 = fadd fast float %1299, -5.000000e-01
  %1349 = fmul fast float %1316, %1347
  %1350 = fmul fast float %1318, %1348
  %1351 = fadd fast float %1349, 5.000000e-01
  %1352 = fadd fast float %1350, 5.000000e-01
  %1353 = fmul fast float %1327, %1351
  %1354 = fmul fast float %1330, %1352
  %1355 = fmul fast float %1345, %1353
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1354, float %1355)  ; FMad(a,b,c)
  %1357 = fmul fast float %1344, %1353
  %1358 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1354, float %1357)  ; FMad(a,b,c)
  %1359 = fadd fast float %1336, %1356
  %1360 = fadd fast float %1339, %1358
  %1361 = icmp ugt i32 %1310, 1
  %1362 = icmp ugt i32 %1308, 33554431
  %1363 = or i1 %1362, %1361
  br i1 %1363, label %1364, label %1389

; <label>:1364                                    ; preds = %1291
  %1365 = add i32 %54, 244
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = lshr i32 %1367, 16
  %1369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1368)  ; LegacyF16ToF32(value)
  %1370 = fmul fast float %1332, %1369
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = mul nuw nsw i32 %1310, %1311
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1371, %1373
  %1375 = call float @dx.op.unary.f32(i32 27, float %1374)  ; Round_ni(value)
  %1376 = fptoui float %1375 to i32
  %1377 = urem i32 %1376, %1310
  %1378 = udiv i32 %1376, %1311
  %1379 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1380 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1381 = uitofp i32 %1377 to float
  %1382 = uitofp i32 %1378 to float
  %1383 = fadd fast float %1379, %1381
  %1384 = fadd fast float %1380, %1382
  %1385 = uitofp i32 %1310 to float
  %1386 = uitofp i32 %1311 to float
  %1387 = fdiv fast float %1383, %1385
  %1388 = fdiv fast float %1384, %1386
  br label %1389

; <label>:1389                                    ; preds = %1364, %1291
  %1390 = phi float [ %1387, %1364 ], [ %1359, %1291 ]
  %1391 = phi float [ %1388, %1364 ], [ %1360, %1291 ]
  %1392 = and i32 %1285, 16777216
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1503, label %1394

; <label>:1394                                    ; preds = %1389
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.CBufRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.CBufRet.f32 %1395, 2
  %1399 = fadd fast float %1396, %155
  %1400 = fadd fast float %1397, %156
  %1401 = fadd fast float %1398, %157
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1405 = icmp eq i32 %55, 65535
  br i1 %1405, label %1500, label %1406

; <label>:1406                                    ; preds = %1394
  %1407 = lshr i32 %55, 1
  %1408 = shl i32 %1407, 2
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %55, 1
  %1412 = icmp ne i32 %1411, 0
  %1413 = lshr i32 %1410, 16
  %1414 = and i32 %1410, 65535
  %1415 = select i1 %1412, i32 %1413, i32 %1414
  %1416 = icmp eq i32 %1415, 65535
  br i1 %1416, label %1496, label %1417

; <label>:1417                                    ; preds = %1406
  %1418 = mul nuw nsw i32 %1415, 40
  %1419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = add nuw nsw i32 %1418, 12
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = add nuw nsw i32 %1418, 24
  %1429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = add nuw nsw i32 %1418, 36
  %1434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = fsub fast float %1399, %1420
  %1437 = fsub fast float %1400, %1421
  %1438 = fsub fast float %1401, %1422
  %1439 = fmul fast float %1435, %1436
  %1440 = fmul fast float %1435, %1437
  %1441 = fmul fast float %1435, %1438
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = fadd fast float %1443, 5.000000e-01
  %1447 = fadd fast float %1444, 5.000000e-01
  %1448 = fmul fast float %1445, %1425
  %1449 = fmul fast float %1446, %1426
  %1450 = fmul fast float %1447, %1427
  %1451 = shl i32 %55, 2
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1457 = call float @dx.op.unary.f32(i32 22, float %1449)  ; Frc(value)
  %1458 = call float @dx.op.unary.f32(i32 22, float %1450)  ; Frc(value)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1455, %dx.types.Handle %49, float %1456, float %1457, float %1458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = extractvalue %dx.types.ResRet.f32 %1459, 1
  %1462 = extractvalue %dx.types.ResRet.f32 %1459, 2
  %1463 = fmul fast float %1460, 1.023000e+03
  %1464 = fmul fast float %1461, 1.023000e+03
  %1465 = fmul fast float %1462, 1.023000e+03
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = fadd fast float %1465, 5.000000e-01
  %1469 = call float @dx.op.unary.f32(i32 27, float %1466)  ; Round_ni(value)
  %1470 = call float @dx.op.unary.f32(i32 27, float %1467)  ; Round_ni(value)
  %1471 = call float @dx.op.unary.f32(i32 27, float %1468)  ; Round_ni(value)
  %1472 = fsub fast float %1439, %1442
  %1473 = fsub fast float %1440, %1443
  %1474 = fsub fast float %1441, %1444
  %1475 = fmul fast float %1472, 7.500000e-01
  %1476 = fmul fast float %1473, 7.500000e-01
  %1477 = fmul fast float %1474, 7.500000e-01
  %1478 = fadd fast float %1442, 1.250000e-01
  %1479 = fadd fast float %1478, %1475
  %1480 = fadd fast float %1479, %1469
  %1481 = fadd fast float %1443, 1.250000e-01
  %1482 = fadd fast float %1481, %1476
  %1483 = fadd fast float %1482, %1470
  %1484 = fadd fast float %1444, 1.250000e-01
  %1485 = fadd fast float %1484, %1477
  %1486 = fadd fast float %1485, %1471
  %1487 = fmul fast float %1480, %1430
  %1488 = fmul fast float %1483, %1431
  %1489 = fmul fast float %1486, %1432
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = add i32 %1491, 0
  %1493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1493, %dx.types.Handle %47, float %1487, float %1488, float %1489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  br label %1496

; <label>:1496                                    ; preds = %1417, %1406
  %1497 = phi float [ %1495, %1417 ], [ -1.000000e+00, %1406 ]
  %1498 = fadd fast float %1497, %1404
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  br label %1500

; <label>:1500                                    ; preds = %1496, %1394
  %1501 = phi float [ %1499, %1496 ], [ %1404, %1394 ]
  %1502 = fmul fast float %1501, %488
  br label %1503

; <label>:1503                                    ; preds = %1500, %1389
  %1504 = phi float [ %1502, %1500 ], [ %488, %1389 ]
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 256
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1555, label %1509

; <label>:1509                                    ; preds = %1503
  %1510 = add i32 %54, 476
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %97, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = add i32 %54, 116
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = shl i32 %1519, 4
  %1521 = and i32 %1520, 32752
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = lshr i32 %1519, 7
  %1524 = and i32 %1523, 32752
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = fsub fast float 1.000000e+00, %1504
  %1527 = call float @dx.op.binary.f32(i32 35, float %1526, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1528 = bitcast float %1504 to i32
  %1529 = sitofp i32 %1528 to float
  %1530 = fadd fast float %1529, 0xC1CFBF8940000000
  %1531 = fmul fast float %1525, %1530
  %1532 = fadd fast float %1531, 0x41CFBF8940000000
  %1533 = fptosi float %1532 to i32
  %1534 = bitcast i32 %1533 to float
  %1535 = bitcast float %1527 to i32
  %1536 = sitofp i32 %1535 to float
  %1537 = fadd fast float %1536, 0xC1CFBF8940000000
  %1538 = fmul fast float %1537, %1525
  %1539 = fadd fast float %1538, 0x41CFBF8940000000
  %1540 = fptosi float %1539 to i32
  %1541 = bitcast i32 %1540 to float
  %1542 = fmul fast float %1534, %1522
  %1543 = fmul fast float %1541, %1522
  %1544 = fsub fast float %1527, %1542
  %1545 = fadd fast float %1543, %1527
  %1546 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = fsub fast float %1516, %1546
  %1549 = fsub fast float %1547, %1546
  %1550 = bitcast float %1549 to i32
  %1551 = sub nsw i32 2129859010, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1552, %1548
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  br label %1555

; <label>:1555                                    ; preds = %1509, %1503
  %1556 = phi float [ %1554, %1509 ], [ %1504, %1503 ]
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 128
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1577, label %1561

; <label>:1561                                    ; preds = %1555
  %1562 = add i32 %54, 460
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %97, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 524288
  %1572 = icmp ne i32 %1571, 0
  %1573 = fcmp fast ogt float %1568, 0x3FE0101020000000
  %1574 = select i1 %1573, float 1.000000e+00, float 0.000000e+00
  %1575 = select i1 %1572, float %1574, float %1568
  %1576 = fmul fast float %1575, %1556
  br label %1577

; <label>:1577                                    ; preds = %1561, %1555
  %1578 = phi float [ %1576, %1561 ], [ %1556, %1555 ]
  %1579 = fcmp fast ult float %1578, 0x3F70101020000000
  br i1 %1579, label %2318, label %1580

; <label>:1580                                    ; preds = %1577
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 16
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1783, label %1585

; <label>:1585                                    ; preds = %1580
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %54, 412
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = add i32 %1590, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1592, %dx.types.Handle %96, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.ResRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1593, 2
  %1597 = extractvalue %dx.types.ResRet.f32 %1593, 3
  %1598 = and i32 %1587, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = lshr i32 %1587, 8
  %1601 = and i32 %1600, 255
  %1602 = uitofp i32 %1601 to float
  %1603 = fmul fast float %1597, %1599
  %1604 = fadd fast float %1603, %1602
  %1605 = fmul fast float %1604, 0x3F70101000000000
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 512
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1618, label %1610

; <label>:1610                                    ; preds = %1585
  %1611 = add i32 %54, 492
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = add i32 %1613, 0
  %1615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1616 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1615, %dx.types.Handle %97, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  br label %1618

; <label>:1618                                    ; preds = %1610, %1585
  %1619 = phi float [ %1617, %1610 ], [ 1.000000e+00, %1585 ]
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 33554432
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1730, label %1624

; <label>:1624                                    ; preds = %1618
  %1625 = add i32 %54, 240
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 65535
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = lshr i32 %1627, 16
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = add i32 %54, 244
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1632, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 65535
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1653 = add i32 %54, 236
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = lshr i32 %1655, 24
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101020000000
  %1659 = and i32 %1655, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = lshr i32 %1655, 8
  %1663 = and i32 %1662, 255
  %1664 = uitofp i32 %1663 to float
  %1665 = fmul fast float %1664, 0x3F70101020000000
  %1666 = lshr i32 %1655, 16
  %1667 = and i32 %1666, 255
  %1668 = uitofp i32 %1667 to float
  %1669 = fmul fast float %1668, 0x3F70101020000000
  %1670 = bitcast float %1594 to i32
  %1671 = ashr i32 %1670, 1
  %1672 = sub nsw i32 1597463174, %1671
  %1673 = bitcast i32 %1672 to float
  %1674 = fmul fast float %1594, 5.000000e-01
  %1675 = fmul fast float %1673, %1673
  %1676 = fmul fast float %1675, %1674
  %1677 = fsub fast float 1.500000e+00, %1676
  %1678 = fmul fast float %1673, %1594
  %1679 = fmul fast float %1678, %1677
  %1680 = bitcast float %1595 to i32
  %1681 = ashr i32 %1680, 1
  %1682 = sub nsw i32 1597463174, %1681
  %1683 = bitcast i32 %1682 to float
  %1684 = fmul fast float %1595, 5.000000e-01
  %1685 = fmul fast float %1683, %1683
  %1686 = fmul fast float %1685, %1684
  %1687 = fsub fast float 1.500000e+00, %1686
  %1688 = fmul fast float %1683, %1595
  %1689 = fmul fast float %1688, %1687
  %1690 = bitcast float %1596 to i32
  %1691 = ashr i32 %1690, 1
  %1692 = sub nsw i32 1597463174, %1691
  %1693 = bitcast i32 %1692 to float
  %1694 = fmul fast float %1596, 5.000000e-01
  %1695 = fmul fast float %1693, %1693
  %1696 = fmul fast float %1695, %1694
  %1697 = fsub fast float 1.500000e+00, %1696
  %1698 = fmul fast float %1693, %1596
  %1699 = fmul fast float %1698, %1697
  %1700 = fsub fast float %1679, %1661
  %1701 = fsub fast float %1689, %1665
  %1702 = fsub fast float %1699, %1669
  %1703 = fmul fast float %1700, %1629
  %1704 = fmul fast float %1701, %1631
  %1705 = fmul fast float %1702, %1636
  %1706 = fadd fast float %1703, %1644
  %1707 = fadd fast float %1704, %1648
  %1708 = fadd fast float %1705, %1652
  %1709 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1710 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1711 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1712 = fmul fast float %1709, %1709
  %1713 = fmul fast float %1710, %1710
  %1714 = fmul fast float %1711, %1711
  %1715 = fsub fast float %1712, %1594
  %1716 = fsub fast float %1713, %1595
  %1717 = fsub fast float %1714, %1596
  %1718 = fmul fast float %1715, %1619
  %1719 = fmul fast float %1716, %1619
  %1720 = fmul fast float %1717, %1619
  %1721 = fadd fast float %1718, %1594
  %1722 = fadd fast float %1719, %1595
  %1723 = fadd fast float %1720, %1596
  %1724 = fadd fast float %1641, %1605
  %1725 = fsub fast float %1724, %1658
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = fsub fast float %1726, %1605
  %1728 = fmul fast float %1727, %1619
  %1729 = fadd fast float %1728, %1605
  br label %1783

; <label>:1730                                    ; preds = %1618
  %1731 = and i32 %1621, 134217728
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1767, label %1733

; <label>:1733                                    ; preds = %1730
  %1734 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1735 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1736 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fadd fast float %1735, -5.000000e-01
  %1739 = fadd fast float %1736, -5.000000e-01
  %1740 = fmul fast float %1737, %1619
  %1741 = fmul fast float %1738, %1619
  %1742 = fmul fast float %1739, %1619
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = fadd fast float %1741, 5.000000e-01
  %1745 = fadd fast float %1742, 5.000000e-01
  %1746 = call float @dx.op.unary.f32(i32 24, float %1594)  ; Sqrt(value)
  %1747 = call float @dx.op.unary.f32(i32 24, float %1595)  ; Sqrt(value)
  %1748 = call float @dx.op.unary.f32(i32 24, float %1596)  ; Sqrt(value)
  %1749 = fmul fast float %1743, 2.000000e+00
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = fmul fast float %1750, %1746
  %1752 = fadd fast float %1751, %1749
  %1753 = fmul fast float %1752, %1746
  %1754 = fmul fast float %1744, 2.000000e+00
  %1755 = fsub fast float 1.000000e+00, %1754
  %1756 = fmul fast float %1755, %1747
  %1757 = fadd fast float %1756, %1754
  %1758 = fmul fast float %1757, %1747
  %1759 = fmul fast float %1745, 2.000000e+00
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = fmul fast float %1760, %1748
  %1762 = fadd fast float %1761, %1759
  %1763 = fmul fast float %1762, %1748
  %1764 = fmul fast float %1753, %1753
  %1765 = fmul fast float %1758, %1758
  %1766 = fmul fast float %1763, %1763
  br label %1783

; <label>:1767                                    ; preds = %1730
  %1768 = fmul fast float %320, %320
  %1769 = fmul fast float %324, %324
  %1770 = fmul fast float %328, %328
  %1771 = fadd fast float %1768, -1.000000e+00
  %1772 = fadd fast float %1769, -1.000000e+00
  %1773 = fadd fast float %1770, -1.000000e+00
  %1774 = fmul fast float %1619, %1771
  %1775 = fmul fast float %1619, %1772
  %1776 = fmul fast float %1619, %1773
  %1777 = fadd fast float %1774, 1.000000e+00
  %1778 = fadd fast float %1775, 1.000000e+00
  %1779 = fadd fast float %1776, 1.000000e+00
  %1780 = fmul fast float %1777, %1594
  %1781 = fmul fast float %1778, %1595
  %1782 = fmul fast float %1779, %1596
  br label %1783

; <label>:1783                                    ; preds = %1767, %1733, %1624, %1580
  %1784 = phi float [ %1729, %1624 ], [ %1605, %1733 ], [ %1605, %1767 ], [ 0x3FA23C0BE0000000, %1580 ]
  %1785 = phi float [ %1721, %1624 ], [ %1764, %1733 ], [ %1780, %1767 ], [ 1.000000e+00, %1580 ]
  %1786 = phi float [ %1722, %1624 ], [ %1765, %1733 ], [ %1781, %1767 ], [ 1.000000e+00, %1580 ]
  %1787 = phi float [ %1723, %1624 ], [ %1766, %1733 ], [ %1782, %1767 ], [ 1.000000e+00, %1580 ]
  %1788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.i32 %1788, 1
  %1790 = and i32 %1789, 1
  %1791 = icmp ne i32 %1790, 0
  %1792 = add i32 %54, 356
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 32
  %1796 = icmp ne i32 %1795, 0
  %1797 = and i1 %1791, %1796
  %1798 = select i1 %1797, float 1.000000e+00, float %1785
  %1799 = select i1 %1797, float 0x3FD3333340000000, float %1786
  %1800 = select i1 %1797, float 0x3FD3333340000000, float %1787
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = and i32 %1802, 32
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1877, label %1805

; <label>:1805                                    ; preds = %1783
  %1806 = add i32 %54, 108
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = add i32 %54, 428
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = add i32 %1811, 0
  %1813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1813, %dx.types.Handle %96, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1817 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1818 = extractvalue %dx.types.ResRet.f32 %1814, 3
  %1819 = and i32 %1808, 255
  %1820 = uitofp i32 %1819 to float
  %1821 = lshr i32 %1808, 8
  %1822 = and i32 %1821, 255
  %1823 = uitofp i32 %1822 to float
  %1824 = lshr i32 %1808, 16
  %1825 = and i32 %1824, 255
  %1826 = uitofp i32 %1825 to float
  %1827 = fmul fast float %1826, 0x3F70101000000000
  %1828 = fmul fast float %1815, %1820
  %1829 = fadd fast float %1828, %1823
  %1830 = fmul fast float %1829, 0x3F70101000000000
  %1831 = fadd fast float %1816, -5.000000e-01
  %1832 = fadd fast float %1818, -5.000000e-01
  %1833 = fmul fast float %1831, %1827
  %1834 = fmul fast float %1832, %1827
  %1835 = fadd fast float %1833, 5.000000e-01
  %1836 = fadd fast float %1834, 5.000000e-01
  %1837 = fmul fast float %1835, 2.000000e+00
  %1838 = fadd fast float %1837, -1.000000e+00
  %1839 = fmul fast float %1836, 2.000000e+00
  %1840 = fadd fast float %1839, -1.000000e+00
  %1841 = fadd fast float %1838, %1840
  %1842 = fmul fast float %1841, 5.000000e-01
  %1843 = fsub fast float %1838, %1840
  %1844 = fmul fast float %1843, 5.000000e-01
  %1845 = call float @dx.op.unary.f32(i32 6, float %1842)  ; FAbs(value)
  %1846 = fsub fast float 1.000000e+00, %1845
  %1847 = call float @dx.op.unary.f32(i32 6, float %1844)  ; FAbs(value)
  %1848 = fsub fast float %1846, %1847
  %1849 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1844, float %1848, float %1842, float %1844, float %1848)  ; Dot3(ax,ay,az,bx,by,bz)
  %1850 = call float @dx.op.unary.f32(i32 25, float %1849)  ; Rsqrt(value)
  %1851 = fmul fast float %1842, %1850
  %1852 = fmul fast float %1844, %1850
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 67108864
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %1873, label %1857

; <label>:1857                                    ; preds = %1805
  %1858 = add i32 %54, 296
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 65535
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %1864, 65535
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = lshr i32 %1860, 16
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = fsub fast float %1830, %1868
  %1870 = fmul fast float %1869, %1862
  %1871 = fadd fast float %1870, %1866
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  br label %1873

; <label>:1873                                    ; preds = %1857, %1805
  %1874 = phi float [ %1872, %1857 ], [ %1830, %1805 ]
  %1875 = call float @dx.op.dot2.f32(i32 54, float %1851, float %1852, float %1294, float %1295)  ; Dot2(ax,ay,bx,by)
  %1876 = call float @dx.op.dot2.f32(i32 54, float %1851, float %1852, float %1296, float %1297)  ; Dot2(ax,ay,bx,by)
  br label %1877

; <label>:1877                                    ; preds = %1873, %1783
  %1878 = phi float [ %1874, %1873 ], [ 0x3FD6666660000000, %1783 ]
  %1879 = phi float [ %1875, %1873 ], [ 0.000000e+00, %1783 ]
  %1880 = phi float [ %1876, %1873 ], [ 0.000000e+00, %1783 ]
  %1881 = phi float [ %1817, %1873 ], [ 1.000000e+00, %1783 ]
  %1882 = add i32 %54, 176
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = lshr i32 %1884, 22
  %1886 = shl nuw nsw i32 %1885, 5
  %1887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1886)  ; LegacyF16ToF32(value)
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 64
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %1925, label %1892

; <label>:1892                                    ; preds = %1877
  %1893 = add i32 %54, 444
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = add i32 %1895, 0
  %1897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 131072
  %1901 = icmp eq i32 %1900, 0
  %1902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1897, %dx.types.Handle %96, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = fmul fast float %1903, %308
  %1907 = fmul fast float %1904, %311
  %1908 = fmul fast float %1905, %314
  br i1 %1901, label %1915, label %1909

; <label>:1909                                    ; preds = %1892
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = fmul fast float %1911, %1906
  %1913 = fmul fast float %1911, %1907
  %1914 = fmul fast float %1911, %1908
  br label %1915

; <label>:1915                                    ; preds = %1909, %1892
  %1916 = phi float [ %1912, %1909 ], [ %1906, %1892 ]
  %1917 = phi float [ %1913, %1909 ], [ %1907, %1892 ]
  %1918 = phi float [ %1914, %1909 ], [ %1908, %1892 ]
  %1919 = fmul fast float %1916, %1887
  %1920 = select i1 %249, float %1919, float %1916
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1920, float %1917, float %1918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = select i1 %249, float 0.000000e+00, float %1916
  %1923 = select i1 %249, float %1921, float %1917
  %1924 = select i1 %249, float 0.000000e+00, float %1918
  br label %1925

; <label>:1925                                    ; preds = %1915, %1877
  %1926 = phi float [ %1922, %1915 ], [ 0.000000e+00, %1877 ]
  %1927 = phi float [ %1923, %1915 ], [ 0.000000e+00, %1877 ]
  %1928 = phi float [ %1924, %1915 ], [ 0.000000e+00, %1877 ]
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = and i32 %1930, 1024
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1963, label %1933

; <label>:1933                                    ; preds = %1925
  %1934 = add i32 %54, 168
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1936, 8
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = lshr i32 %1936, 16
  %1945 = and i32 %1944, 255
  %1946 = uitofp i32 %1945 to float
  %1947 = fmul fast float %1946, 0x3F70101020000000
  %1948 = fmul fast float %1939, %1939
  %1949 = fmul fast float %1943, %1943
  %1950 = fmul fast float %1947, %1947
  %1951 = add i32 %54, 508
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = add i32 %1953, 0
  %1955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1955, %dx.types.Handle %97, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.ResRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.ResRet.f32 %1956, 2
  %1960 = fmul fast float %1948, %1957
  %1961 = fmul fast float %1949, %1958
  %1962 = fmul fast float %1950, %1959
  br label %1963

; <label>:1963                                    ; preds = %1933, %1925
  %1964 = phi float [ %1960, %1933 ], [ 0.000000e+00, %1925 ]
  %1965 = phi float [ %1961, %1933 ], [ 0.000000e+00, %1925 ]
  %1966 = phi float [ %1962, %1933 ], [ 0.000000e+00, %1925 ]
  %1967 = fcmp fast ogt float %1964, 0.000000e+00
  %1968 = fcmp fast ogt float %1965, 0.000000e+00
  %1969 = fcmp fast ogt float %1966, 0.000000e+00
  %1970 = call float @dx.op.unary.f32(i32 23, float %1964)  ; Log(value)
  %1971 = call float @dx.op.unary.f32(i32 23, float %1965)  ; Log(value)
  %1972 = call float @dx.op.unary.f32(i32 23, float %1966)  ; Log(value)
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = lshr i32 %1974, 7
  %1976 = and i32 %1975, 32752
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = fmul fast float %1970, 0xBFE62E4300000000
  %1979 = fmul fast float %1978, %1977
  %1980 = fmul fast float %1971, 0xBFE62E4300000000
  %1981 = fmul fast float %1980, %1977
  %1982 = fmul fast float %1972, 0xBFE62E4300000000
  %1983 = fmul fast float %1982, %1977
  %1984 = select i1 %1967, float %1979, float 1.270000e+02
  %1985 = select i1 %1968, float %1981, float 1.270000e+02
  %1986 = select i1 %1969, float %1983, float 1.270000e+02
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 10240
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2035, label %1991

; <label>:1991                                    ; preds = %1963
  %1992 = add i32 %54, 524
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %1994, 0
  %1996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1996, %dx.types.Handle %97, float %1390, float %1391, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 3
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = and i32 %2001, 1048576
  %2003 = icmp ne i32 %2002, 0
  %2004 = and i32 %2001, 8192
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2021, label %2006

; <label>:2006                                    ; preds = %1991
  %2007 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2008 = select i1 %2003, float %2007, float %1998
  %2009 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %2010 = select i1 %2003, float %2009, float %1998
  %2011 = add i32 %54, 112
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 16
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, 0x3F80101020000000
  %2018 = fmul fast float %2017, %2010
  %2019 = fmul fast float %2017, %1998
  %2020 = fmul fast float %2017, %2008
  br label %2021

; <label>:2021                                    ; preds = %2006, %1991
  %2022 = phi float [ %2018, %2006 ], [ 0.000000e+00, %1991 ]
  %2023 = phi float [ %2019, %2006 ], [ 0.000000e+00, %1991 ]
  %2024 = phi float [ %2020, %2006 ], [ 0.000000e+00, %1991 ]
  %2025 = and i32 %2001, 2048
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2035, label %2027

; <label>:2027                                    ; preds = %2021
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = shl i32 %2029, 4
  %2031 = and i32 %2030, 32752
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = fmul fast float %2032, %1999
  %2034 = call float @dx.op.binary.f32(i32 35, float %2033, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2035

; <label>:2035                                    ; preds = %2027, %2021, %1963
  %2036 = phi float [ %2022, %2027 ], [ %2022, %2021 ], [ 0.000000e+00, %1963 ]
  %2037 = phi float [ %2023, %2027 ], [ %2023, %2021 ], [ 0.000000e+00, %1963 ]
  %2038 = phi float [ %2024, %2027 ], [ %2024, %2021 ], [ 0.000000e+00, %1963 ]
  %2039 = phi float [ %2034, %2027 ], [ 0x3F70101020000000, %2021 ], [ 0x3F70101020000000, %1963 ]
  %2040 = add i32 %54, 112
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = lshr i32 %2042, 8
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1799, float %1800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2049 = fmul fast float %2047, %2048
  %2050 = fadd fast float %2049, %2044
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  br i1 %1282, label %2053, label %2088

; <label>:2053                                    ; preds = %2035
  %2054 = fmul fast float %2039, 2.000000e+00
  %2055 = fcmp fast olt float %1984, 1.270000e+02
  %2056 = fcmp fast olt float %1985, 1.270000e+02
  %2057 = fcmp fast olt float %1986, 1.270000e+02
  %2058 = fmul fast float %1984, 0xBFF7154760000000
  %2059 = fmul fast float %2058, %2054
  %2060 = fmul fast float %1985, 0xBFF7154760000000
  %2061 = fmul fast float %2060, %2054
  %2062 = fmul fast float %1986, 0xBFF7154760000000
  %2063 = fmul fast float %2062, %2054
  %2064 = call float @dx.op.unary.f32(i32 21, float %2059)  ; Exp(value)
  %2065 = call float @dx.op.unary.f32(i32 21, float %2061)  ; Exp(value)
  %2066 = call float @dx.op.unary.f32(i32 21, float %2063)  ; Exp(value)
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2069 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2070 = fadd fast float %2067, -1.000000e+00
  %2071 = select i1 %2055, float %2070, float -1.000000e+00
  %2072 = fadd fast float %2068, -1.000000e+00
  %2073 = select i1 %2056, float %2072, float -1.000000e+00
  %2074 = fadd fast float %2069, -1.000000e+00
  %2075 = select i1 %2057, float %2074, float -1.000000e+00
  %2076 = fmul fast float %2071, %1578
  %2077 = fmul fast float %2073, %1578
  %2078 = fmul fast float %2075, %1578
  %2079 = fadd fast float %2076, 1.000000e+00
  %2080 = fadd fast float %2077, 1.000000e+00
  %2081 = fadd fast float %2078, 1.000000e+00
  %2082 = fmul fast float %2079, %1263
  %2083 = fmul fast float %2080, %1264
  %2084 = fmul fast float %2081, %1265
  %2085 = fmul fast float %2079, %1269
  %2086 = fmul fast float %2080, %1270
  %2087 = fmul fast float %2081, %1271
  br label %2088

; <label>:2088                                    ; preds = %2053, %2035
  %2089 = phi float [ %2082, %2053 ], [ %1263, %2035 ]
  %2090 = phi float [ %2083, %2053 ], [ %1264, %2035 ]
  %2091 = phi float [ %2084, %2053 ], [ %1265, %2035 ]
  %2092 = phi float [ %2085, %2053 ], [ %1269, %2035 ]
  %2093 = phi float [ %2086, %2053 ], [ %1270, %2035 ]
  %2094 = phi float [ %2087, %2053 ], [ %1271, %2035 ]
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = and i32 %2096, 3
  %2098 = icmp eq i32 %2097, 3
  br i1 %2098, label %2177, label %2099

; <label>:2099                                    ; preds = %2088
  %2100 = and i32 %2096, 16
  %2101 = icmp ne i32 %2100, 0
  %2102 = select i1 %2101, float %1578, float 0.000000e+00
  %2103 = icmp eq i32 %2097, 0
  br i1 %2103, label %2104, label %2132

; <label>:2104                                    ; preds = %2099
  %2105 = and i32 %2096, 64
  %2106 = icmp ne i32 %2105, 0
  %2107 = select i1 %2106, float %1578, float 0.000000e+00
  %2108 = fsub fast float %1798, %2089
  %2109 = fsub fast float %1799, %2090
  %2110 = fsub fast float %1800, %2091
  %2111 = fmul fast float %2102, %2108
  %2112 = fmul fast float %2102, %2109
  %2113 = fmul fast float %2102, %2110
  %2114 = fadd fast float %2111, %2089
  %2115 = fadd fast float %2112, %2090
  %2116 = fadd fast float %2113, %2091
  %2117 = fsub fast float %1784, %1275
  %2118 = fmul fast float %2102, %2117
  %2119 = fadd fast float %2118, %1275
  %2120 = fsub fast float %1926, %2092
  %2121 = fsub fast float %1927, %2093
  %2122 = fsub fast float %1928, %2094
  %2123 = fmul fast float %2107, %2120
  %2124 = fmul fast float %2107, %2121
  %2125 = fmul fast float %2107, %2122
  %2126 = fadd fast float %2123, %2092
  %2127 = fadd fast float %2124, %2093
  %2128 = fadd fast float %2125, %2094
  %2129 = fsub fast float %2052, %1280
  %2130 = fmul fast float %2102, %2129
  %2131 = fadd fast float %2130, %1280
  br label %2177

; <label>:2132                                    ; preds = %2099
  %2133 = icmp eq i32 %2097, 1
  br i1 %2133, label %2134, label %2147

; <label>:2134                                    ; preds = %2132
  %2135 = fadd fast float %1798, -1.000000e+00
  %2136 = fadd fast float %1799, -1.000000e+00
  %2137 = fadd fast float %1800, -1.000000e+00
  %2138 = fmul fast float %2102, %2135
  %2139 = fmul fast float %2102, %2136
  %2140 = fmul fast float %2102, %2137
  %2141 = fadd fast float %2138, 1.000000e+00
  %2142 = fadd fast float %2139, 1.000000e+00
  %2143 = fadd fast float %2140, 1.000000e+00
  %2144 = fmul fast float %2141, %2089
  %2145 = fmul fast float %2142, %2090
  %2146 = fmul fast float %2143, %2091
  br label %2177

; <label>:2147                                    ; preds = %2132
  %2148 = icmp eq i32 %2097, 2
  br i1 %2148, label %2149, label %2177

; <label>:2149                                    ; preds = %2147
  %2150 = call float @dx.op.unary.f32(i32 24, float %1798)  ; Sqrt(value)
  %2151 = call float @dx.op.unary.f32(i32 24, float %1799)  ; Sqrt(value)
  %2152 = call float @dx.op.unary.f32(i32 24, float %1800)  ; Sqrt(value)
  %2153 = fadd fast float %2150, -5.000000e-01
  %2154 = fadd fast float %2151, -5.000000e-01
  %2155 = fadd fast float %2152, -5.000000e-01
  %2156 = fmul fast float %2153, %2102
  %2157 = fmul fast float %2154, %2102
  %2158 = fmul fast float %2155, %2102
  %2159 = fadd fast float %2156, 5.000000e-01
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fmul fast float %2159, 2.000000e+00
  %2163 = fsub fast float 1.000000e+00, %2162
  %2164 = fmul fast float %2163, %2089
  %2165 = fadd fast float %2164, %2162
  %2166 = fmul fast float %2165, %2089
  %2167 = fmul fast float %2160, 2.000000e+00
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = fmul fast float %2168, %2090
  %2170 = fadd fast float %2169, %2167
  %2171 = fmul fast float %2170, %2090
  %2172 = fmul fast float %2161, 2.000000e+00
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fmul fast float %2173, %2091
  %2175 = fadd fast float %2174, %2172
  %2176 = fmul fast float %2175, %2091
  br label %2177

; <label>:2177                                    ; preds = %2149, %2147, %2134, %2104, %2088
  %2178 = phi float [ %2089, %2088 ], [ %2166, %2149 ], [ %2089, %2147 ], [ %2144, %2134 ], [ %2114, %2104 ]
  %2179 = phi float [ %2090, %2088 ], [ %2171, %2149 ], [ %2090, %2147 ], [ %2145, %2134 ], [ %2115, %2104 ]
  %2180 = phi float [ %2091, %2088 ], [ %2176, %2149 ], [ %2091, %2147 ], [ %2146, %2134 ], [ %2116, %2104 ]
  %2181 = phi float [ %2092, %2088 ], [ %2092, %2149 ], [ %2092, %2147 ], [ %2092, %2134 ], [ %2126, %2104 ]
  %2182 = phi float [ %2093, %2088 ], [ %2093, %2149 ], [ %2093, %2147 ], [ %2093, %2134 ], [ %2127, %2104 ]
  %2183 = phi float [ %2094, %2088 ], [ %2094, %2149 ], [ %2094, %2147 ], [ %2094, %2134 ], [ %2128, %2104 ]
  %2184 = phi float [ %1275, %2088 ], [ %1275, %2149 ], [ %1275, %2147 ], [ %1275, %2134 ], [ %2119, %2104 ]
  %2185 = phi float [ %1280, %2088 ], [ %1280, %2149 ], [ %1280, %2147 ], [ %1280, %2134 ], [ %2131, %2104 ]
  %2186 = and i32 %2096, 12
  %2187 = icmp eq i32 %2186, 12
  br i1 %2187, label %2318, label %2188

; <label>:2188                                    ; preds = %2177
  %2189 = and i32 %2096, 2097184
  %2190 = icmp eq i32 %2189, 2097184
  %2191 = select i1 %2190, float %1578, float 0.000000e+00
  %2192 = and i32 %2096, 4194336
  %2193 = icmp eq i32 %2192, 4194336
  %2194 = select i1 %2193, float %1578, float 0.000000e+00
  %2195 = and i32 %2096, 8388640
  %2196 = icmp eq i32 %2195, 8388640
  %2197 = select i1 %2196, float %1578, float 0.000000e+00
  %2198 = and i32 %2096, 1024
  %2199 = icmp ne i32 %2198, 0
  %2200 = select i1 %2199, float %1578, float 0.000000e+00
  %2201 = and i32 %2096, 2048
  %2202 = icmp ne i32 %2201, 0
  %2203 = select i1 %2202, float %1578, float 0.000000e+00
  %2204 = and i32 %2096, 8192
  %2205 = icmp ne i32 %2204, 0
  %2206 = select i1 %2205, float %1578, float 0.000000e+00
  %2207 = icmp eq i32 %2186, 0
  br i1 %2207, label %2208, label %2242

; <label>:2208                                    ; preds = %2188
  %2209 = fsub fast float %1879, %1261
  %2210 = fsub fast float %1880, %1262
  %2211 = fmul fast float %2191, %2209
  %2212 = fmul fast float %2191, %2210
  %2213 = fadd fast float %2211, %1261
  %2214 = fadd fast float %2212, %1262
  %2215 = fsub fast float %1881, %1278
  %2216 = fmul fast float %2194, %2215
  %2217 = fadd fast float %2216, %1278
  %2218 = fsub fast float %1878, %1277
  %2219 = fmul fast float %2197, %2218
  %2220 = fadd fast float %2219, %1277
  %2221 = fsub fast float %1984, %1272
  %2222 = fsub fast float %1985, %1273
  %2223 = fsub fast float %1986, %1274
  %2224 = fmul fast float %2200, %2221
  %2225 = fmul fast float %2200, %2222
  %2226 = fmul fast float %2200, %2223
  %2227 = fadd fast float %2224, %1272
  %2228 = fadd fast float %2225, %1273
  %2229 = fadd fast float %2226, %1274
  %2230 = fsub fast float %2039, %1279
  %2231 = fmul fast float %2203, %2230
  %2232 = fadd fast float %2231, %1279
  %2233 = fsub fast float %2036, %1266
  %2234 = fsub fast float %2037, %1267
  %2235 = fsub fast float %2038, %1268
  %2236 = fmul fast float %2206, %2233
  %2237 = fmul fast float %2206, %2234
  %2238 = fmul fast float %2206, %2235
  %2239 = fadd fast float %2236, %1266
  %2240 = fadd fast float %2237, %1267
  %2241 = fadd fast float %2238, %1268
  br label %2318

; <label>:2242                                    ; preds = %2188
  %2243 = icmp eq i32 %2186, 4
  br i1 %2243, label %2244, label %2290

; <label>:2244                                    ; preds = %2242
  %2245 = fmul fast float %2191, %1879
  %2246 = fmul fast float %2191, %1880
  %2247 = fadd fast float %2245, %1261
  %2248 = fadd fast float %2246, %1262
  %2249 = call float @dx.op.binary.f32(i32 36, float %1278, float %1881)  ; FMin(a,b)
  %2250 = fsub fast float %2249, %1278
  %2251 = fmul fast float %2250, %2194
  %2252 = fadd fast float %2251, %1278
  %2253 = fadd fast float %1878, %1277
  %2254 = fmul fast float %2253, 0x3FF337FAE0000000
  %2255 = fmul fast float %1277, %1277
  %2256 = fmul fast float %1878, %1878
  %2257 = fadd fast float %2256, %2255
  %2258 = fmul fast float %2257, 0x3FE5152B00000000
  %2259 = fmul fast float %1277, 0xBFCC1F85E0000000
  %2260 = fmul fast float %2259, %1878
  %2261 = fadd fast float %2260, 0xBFE1363700000000
  %2262 = fadd fast float %2261, %2254
  %2263 = fsub fast float %2262, %2258
  %2264 = fmul fast float %2253, 0x3FBA6F0D00000000
  %2265 = fmul fast float %2257, 0x3FD0432880000000
  %2266 = fmul fast float %1277, 0xBFEF110800000000
  %2267 = fmul fast float %2266, %1878
  %2268 = fadd fast float %2267, 1.000000e+00
  %2269 = fsub fast float %2268, %2264
  %2270 = fadd fast float %2269, %2265
  %2271 = fdiv fast float %2263, %2270
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2273 = fsub fast float %2272, %1277
  %2274 = fmul fast float %2273, %2197
  %2275 = fadd fast float %2274, %1277
  %2276 = fmul fast float %2200, %1984
  %2277 = fmul fast float %2200, %1985
  %2278 = fmul fast float %2200, %1986
  %2279 = fadd fast float %2276, %1272
  %2280 = fadd fast float %2277, %1273
  %2281 = fadd fast float %2278, %1274
  %2282 = fmul fast float %2203, %2039
  %2283 = fadd fast float %2282, %1279
  %2284 = fmul fast float %2206, %2036
  %2285 = fmul fast float %2206, %2037
  %2286 = fmul fast float %2206, %2038
  %2287 = fadd fast float %2284, %1266
  %2288 = fadd fast float %2285, %1267
  %2289 = fadd fast float %2286, %1268
  br label %2318

; <label>:2290                                    ; preds = %2242
  %2291 = icmp eq i32 %2186, 8
  br i1 %2291, label %2292, label %2318

; <label>:2292                                    ; preds = %2290
  %2293 = fmul fast float %2191, %1879
  %2294 = fmul fast float %2191, %1880
  %2295 = fadd fast float %2293, %1261
  %2296 = fadd fast float %2294, %1262
  %2297 = call float @dx.op.binary.f32(i32 36, float %1278, float %1881)  ; FMin(a,b)
  %2298 = fsub fast float %2297, %1278
  %2299 = fmul fast float %2298, %2194
  %2300 = fadd fast float %2299, %1278
  %2301 = fsub fast float %1878, %1277
  %2302 = fmul fast float %2197, %2301
  %2303 = fadd fast float %2302, %1277
  %2304 = fmul fast float %2200, %1984
  %2305 = fmul fast float %2200, %1985
  %2306 = fmul fast float %2200, %1986
  %2307 = fadd fast float %2304, %1272
  %2308 = fadd fast float %2305, %1273
  %2309 = fadd fast float %2306, %1274
  %2310 = fmul fast float %2203, %2039
  %2311 = fadd fast float %2310, %1279
  %2312 = fmul fast float %2206, %2036
  %2313 = fmul fast float %2206, %2037
  %2314 = fmul fast float %2206, %2038
  %2315 = fadd fast float %2312, %1266
  %2316 = fadd fast float %2313, %1267
  %2317 = fadd fast float %2314, %1268
  br label %2318

; <label>:2318                                    ; preds = %2292, %2290, %2244, %2208, %2177, %1577, %1281, %1260
  %2319 = phi float [ %1261, %2177 ], [ %1261, %1577 ], [ %1261, %1260 ], [ %2295, %2292 ], [ %1261, %2290 ], [ %2247, %2244 ], [ %2213, %2208 ], [ %1261, %1281 ]
  %2320 = phi float [ %1262, %2177 ], [ %1262, %1577 ], [ %1262, %1260 ], [ %2296, %2292 ], [ %1262, %2290 ], [ %2248, %2244 ], [ %2214, %2208 ], [ %1262, %1281 ]
  %2321 = phi float [ %2178, %2177 ], [ %1263, %1577 ], [ %1263, %1260 ], [ %2178, %2292 ], [ %2178, %2290 ], [ %2178, %2244 ], [ %2178, %2208 ], [ %1263, %1281 ]
  %2322 = phi float [ %2179, %2177 ], [ %1264, %1577 ], [ %1264, %1260 ], [ %2179, %2292 ], [ %2179, %2290 ], [ %2179, %2244 ], [ %2179, %2208 ], [ %1264, %1281 ]
  %2323 = phi float [ %2180, %2177 ], [ %1265, %1577 ], [ %1265, %1260 ], [ %2180, %2292 ], [ %2180, %2290 ], [ %2180, %2244 ], [ %2180, %2208 ], [ %1265, %1281 ]
  %2324 = phi float [ %1266, %2177 ], [ %1266, %1577 ], [ %1266, %1260 ], [ %2315, %2292 ], [ %1266, %2290 ], [ %2287, %2244 ], [ %2239, %2208 ], [ %1266, %1281 ]
  %2325 = phi float [ %1267, %2177 ], [ %1267, %1577 ], [ %1267, %1260 ], [ %2316, %2292 ], [ %1267, %2290 ], [ %2288, %2244 ], [ %2240, %2208 ], [ %1267, %1281 ]
  %2326 = phi float [ %1268, %2177 ], [ %1268, %1577 ], [ %1268, %1260 ], [ %2317, %2292 ], [ %1268, %2290 ], [ %2289, %2244 ], [ %2241, %2208 ], [ %1268, %1281 ]
  %2327 = phi float [ %2181, %2177 ], [ %1269, %1577 ], [ %1269, %1260 ], [ %2181, %2292 ], [ %2181, %2290 ], [ %2181, %2244 ], [ %2181, %2208 ], [ %1269, %1281 ]
  %2328 = phi float [ %2182, %2177 ], [ %1270, %1577 ], [ %1270, %1260 ], [ %2182, %2292 ], [ %2182, %2290 ], [ %2182, %2244 ], [ %2182, %2208 ], [ %1270, %1281 ]
  %2329 = phi float [ %2183, %2177 ], [ %1271, %1577 ], [ %1271, %1260 ], [ %2183, %2292 ], [ %2183, %2290 ], [ %2183, %2244 ], [ %2183, %2208 ], [ %1271, %1281 ]
  %2330 = phi float [ %1272, %2177 ], [ %1272, %1577 ], [ %1272, %1260 ], [ %2307, %2292 ], [ %1272, %2290 ], [ %2279, %2244 ], [ %2227, %2208 ], [ %1272, %1281 ]
  %2331 = phi float [ %1273, %2177 ], [ %1273, %1577 ], [ %1273, %1260 ], [ %2308, %2292 ], [ %1273, %2290 ], [ %2280, %2244 ], [ %2228, %2208 ], [ %1273, %1281 ]
  %2332 = phi float [ %1274, %2177 ], [ %1274, %1577 ], [ %1274, %1260 ], [ %2309, %2292 ], [ %1274, %2290 ], [ %2281, %2244 ], [ %2229, %2208 ], [ %1274, %1281 ]
  %2333 = phi float [ %2184, %2177 ], [ %1275, %1577 ], [ %1275, %1260 ], [ %2184, %2292 ], [ %2184, %2290 ], [ %2184, %2244 ], [ %2184, %2208 ], [ %1275, %1281 ]
  %2334 = phi float [ %1277, %2177 ], [ %1277, %1577 ], [ %1277, %1260 ], [ %2303, %2292 ], [ %1277, %2290 ], [ %2275, %2244 ], [ %2220, %2208 ], [ %1277, %1281 ]
  %2335 = phi float [ %1278, %2177 ], [ %1278, %1577 ], [ %1278, %1260 ], [ %2300, %2292 ], [ %1278, %2290 ], [ %2252, %2244 ], [ %2217, %2208 ], [ %1278, %1281 ]
  %2336 = phi float [ %1279, %2177 ], [ %1279, %1577 ], [ %1279, %1260 ], [ %2311, %2292 ], [ %1279, %2290 ], [ %2283, %2244 ], [ %2232, %2208 ], [ %1279, %1281 ]
  %2337 = phi float [ %2185, %2177 ], [ %1280, %1577 ], [ %1280, %1260 ], [ %2185, %2292 ], [ %2185, %2290 ], [ %2185, %2244 ], [ %2185, %2208 ], [ %1280, %1281 ]
  br i1 %435, label %3375, label %2338

; <label>:2338                                    ; preds = %2318
  %2339 = icmp ult i32 %491, 3
  %2340 = add i32 %54, 56
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = add i32 %54, 60
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = or i32 %2345, %2342
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %3375, label %2348

; <label>:2348                                    ; preds = %2338
  %2349 = and i32 %2342, 262144
  %2350 = icmp ne i32 %2349, 0
  %2351 = select i1 %2350, float %57, float 1.000000e+00
  %2352 = select i1 %2350, float %58, float 0.000000e+00
  %2353 = select i1 %2350, float %59, float 0.000000e+00
  %2354 = select i1 %2350, float %60, float 1.000000e+00
  %2355 = select i1 %2350, float %61, float %82
  %2356 = select i1 %2350, float %62, float %83
  %2357 = add i32 %54, 316
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = lshr i32 %2359, 16
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = fmul fast float %2361, 0x3F50624DE0000000
  %2363 = add i32 %54, 120
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 16
  %2367 = and i32 %2366, 255
  %2368 = lshr i32 %2365, 24
  %2369 = add i32 %54, 324
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 65535
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = lshr i32 %2371, 16
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = add i32 %54, 64
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = lshr i32 %2378, 22
  %2380 = shl nuw nsw i32 %2379, 5
  %2381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2380)  ; LegacyF16ToF32(value)
  %2382 = shl i32 %2378, 4
  %2383 = and i32 %2382, 32752
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %2378, 7
  %2386 = and i32 %2385, 32752
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 3
  %2390 = fmul fast float %2389, 1.000000e+03
  %2391 = fmul fast float %385, %2390
  %2392 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2393 = fadd fast float %2392, %375
  %2394 = fmul fast float %386, %2390
  %2395 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2396 = fadd fast float %2395, %377
  %2397 = fmul fast float %2362, %2390
  %2398 = call float @dx.op.unary.f32(i32 22, float %2397)  ; Frc(value)
  %2399 = fmul fast float %2398, 0x401921FB60000000
  %2400 = fadd fast float %2399, %2381
  %2401 = call float @dx.op.unary.f32(i32 13, float %2400)  ; Sin(value)
  %2402 = call float @dx.op.unary.f32(i32 12, float %2400)  ; Cos(value)
  %2403 = fsub fast float -0.000000e+00, %2401
  %2404 = fadd fast float %2355, -5.000000e-01
  %2405 = fadd fast float %2356, -5.000000e-01
  %2406 = fmul fast float %2373, %2404
  %2407 = fmul fast float %2375, %2405
  %2408 = fadd fast float %2406, 5.000000e-01
  %2409 = fadd fast float %2407, 5.000000e-01
  %2410 = fmul fast float %2384, %2408
  %2411 = fmul fast float %2387, %2409
  %2412 = fmul fast float %2402, %2410
  %2413 = call float @dx.op.tertiary.f32(i32 46, float %2403, float %2411, float %2412)  ; FMad(a,b,c)
  %2414 = fmul fast float %2401, %2410
  %2415 = call float @dx.op.tertiary.f32(i32 46, float %2402, float %2411, float %2414)  ; FMad(a,b,c)
  %2416 = fadd fast float %2393, %2413
  %2417 = fadd fast float %2396, %2415
  %2418 = icmp ugt i32 %2367, 1
  %2419 = icmp ugt i32 %2365, 33554431
  %2420 = or i1 %2419, %2418
  br i1 %2420, label %2421, label %2446

; <label>:2421                                    ; preds = %2348
  %2422 = add i32 %54, 260
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = lshr i32 %2424, 16
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = fmul fast float %2389, %2426
  %2428 = call float @dx.op.unary.f32(i32 22, float %2427)  ; Frc(value)
  %2429 = mul nuw nsw i32 %2367, %2368
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2428, %2430
  %2432 = call float @dx.op.unary.f32(i32 27, float %2431)  ; Round_ni(value)
  %2433 = fptoui float %2432 to i32
  %2434 = urem i32 %2433, %2367
  %2435 = udiv i32 %2433, %2368
  %2436 = call float @dx.op.unary.f32(i32 22, float %2416)  ; Frc(value)
  %2437 = call float @dx.op.unary.f32(i32 22, float %2417)  ; Frc(value)
  %2438 = uitofp i32 %2434 to float
  %2439 = uitofp i32 %2435 to float
  %2440 = fadd fast float %2436, %2438
  %2441 = fadd fast float %2437, %2439
  %2442 = uitofp i32 %2367 to float
  %2443 = uitofp i32 %2368 to float
  %2444 = fdiv fast float %2440, %2442
  %2445 = fdiv fast float %2441, %2443
  br label %2446

; <label>:2446                                    ; preds = %2421, %2348
  %2447 = phi float [ %2444, %2421 ], [ %2416, %2348 ]
  %2448 = phi float [ %2445, %2421 ], [ %2417, %2348 ]
  %2449 = and i32 %2342, 16777216
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2560, label %2451

; <label>:2451                                    ; preds = %2446
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.CBufRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.CBufRet.f32 %2452, 2
  %2456 = fadd fast float %2453, %155
  %2457 = fadd fast float %2454, %156
  %2458 = fadd fast float %2455, %157
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = icmp eq i32 %55, 65535
  br i1 %2462, label %2557, label %2463

; <label>:2463                                    ; preds = %2451
  %2464 = lshr i32 %55, 1
  %2465 = shl i32 %2464, 2
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2465, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %55, 1
  %2469 = icmp ne i32 %2468, 0
  %2470 = lshr i32 %2467, 16
  %2471 = and i32 %2467, 65535
  %2472 = select i1 %2469, i32 %2470, i32 %2471
  %2473 = icmp eq i32 %2472, 65535
  br i1 %2473, label %2553, label %2474

; <label>:2474                                    ; preds = %2463
  %2475 = mul nuw nsw i32 %2472, 40
  %2476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.ResRet.f32 %2476, 1
  %2479 = extractvalue %dx.types.ResRet.f32 %2476, 2
  %2480 = add nuw nsw i32 %2475, 12
  %2481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2485 = add nuw nsw i32 %2475, 24
  %2486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = add nuw nsw i32 %2475, 36
  %2491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = fsub fast float %2456, %2477
  %2494 = fsub fast float %2457, %2478
  %2495 = fsub fast float %2458, %2479
  %2496 = fmul fast float %2492, %2493
  %2497 = fmul fast float %2492, %2494
  %2498 = fmul fast float %2492, %2495
  %2499 = call float @dx.op.unary.f32(i32 27, float %2496)  ; Round_ni(value)
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fmul fast float %2502, %2482
  %2506 = fmul fast float %2503, %2483
  %2507 = fmul fast float %2504, %2484
  %2508 = shl i32 %55, 2
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %2510, 0
  %2512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2513 = call float @dx.op.unary.f32(i32 22, float %2505)  ; Frc(value)
  %2514 = call float @dx.op.unary.f32(i32 22, float %2506)  ; Frc(value)
  %2515 = call float @dx.op.unary.f32(i32 22, float %2507)  ; Frc(value)
  %2516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2512, %dx.types.Handle %49, float %2513, float %2514, float %2515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  %2518 = extractvalue %dx.types.ResRet.f32 %2516, 1
  %2519 = extractvalue %dx.types.ResRet.f32 %2516, 2
  %2520 = fmul fast float %2517, 1.023000e+03
  %2521 = fmul fast float %2518, 1.023000e+03
  %2522 = fmul fast float %2519, 1.023000e+03
  %2523 = fadd fast float %2520, 5.000000e-01
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = fadd fast float %2522, 5.000000e-01
  %2526 = call float @dx.op.unary.f32(i32 27, float %2523)  ; Round_ni(value)
  %2527 = call float @dx.op.unary.f32(i32 27, float %2524)  ; Round_ni(value)
  %2528 = call float @dx.op.unary.f32(i32 27, float %2525)  ; Round_ni(value)
  %2529 = fsub fast float %2496, %2499
  %2530 = fsub fast float %2497, %2500
  %2531 = fsub fast float %2498, %2501
  %2532 = fmul fast float %2529, 7.500000e-01
  %2533 = fmul fast float %2530, 7.500000e-01
  %2534 = fmul fast float %2531, 7.500000e-01
  %2535 = fadd fast float %2499, 1.250000e-01
  %2536 = fadd fast float %2535, %2532
  %2537 = fadd fast float %2536, %2526
  %2538 = fadd fast float %2500, 1.250000e-01
  %2539 = fadd fast float %2538, %2533
  %2540 = fadd fast float %2539, %2527
  %2541 = fadd fast float %2501, 1.250000e-01
  %2542 = fadd fast float %2541, %2534
  %2543 = fadd fast float %2542, %2528
  %2544 = fmul fast float %2537, %2487
  %2545 = fmul fast float %2540, %2488
  %2546 = fmul fast float %2543, %2489
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = add i32 %2548, 0
  %2550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2550, %dx.types.Handle %47, float %2544, float %2545, float %2546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2552 = extractvalue %dx.types.ResRet.f32 %2551, 0
  br label %2553

; <label>:2553                                    ; preds = %2474, %2463
  %2554 = phi float [ %2552, %2474 ], [ -1.000000e+00, %2463 ]
  %2555 = fadd fast float %2554, %2461
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  br label %2557

; <label>:2557                                    ; preds = %2553, %2451
  %2558 = phi float [ %2556, %2553 ], [ %2461, %2451 ]
  %2559 = fmul fast float %2558, %487
  br label %2560

; <label>:2560                                    ; preds = %2557, %2446
  %2561 = phi float [ %2559, %2557 ], [ %487, %2446 ]
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 256
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2612, label %2566

; <label>:2566                                    ; preds = %2560
  %2567 = add i32 %54, 480
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %2569, 0
  %2571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2571, %dx.types.Handle %97, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  %2574 = add i32 %54, 132
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = shl i32 %2576, 4
  %2578 = and i32 %2577, 32752
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = lshr i32 %2576, 7
  %2581 = and i32 %2580, 32752
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = fsub fast float 1.000000e+00, %2561
  %2584 = call float @dx.op.binary.f32(i32 35, float %2583, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2585 = bitcast float %2561 to i32
  %2586 = sitofp i32 %2585 to float
  %2587 = fadd fast float %2586, 0xC1CFBF8940000000
  %2588 = fmul fast float %2582, %2587
  %2589 = fadd fast float %2588, 0x41CFBF8940000000
  %2590 = fptosi float %2589 to i32
  %2591 = bitcast i32 %2590 to float
  %2592 = bitcast float %2584 to i32
  %2593 = sitofp i32 %2592 to float
  %2594 = fadd fast float %2593, 0xC1CFBF8940000000
  %2595 = fmul fast float %2594, %2582
  %2596 = fadd fast float %2595, 0x41CFBF8940000000
  %2597 = fptosi float %2596 to i32
  %2598 = bitcast i32 %2597 to float
  %2599 = fmul fast float %2591, %2579
  %2600 = fmul fast float %2598, %2579
  %2601 = fsub fast float %2584, %2599
  %2602 = fadd fast float %2600, %2584
  %2603 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2604 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2605 = fsub fast float %2573, %2603
  %2606 = fsub fast float %2604, %2603
  %2607 = bitcast float %2606 to i32
  %2608 = sub nsw i32 2129859010, %2607
  %2609 = bitcast i32 %2608 to float
  %2610 = fmul fast float %2609, %2605
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  br label %2612

; <label>:2612                                    ; preds = %2566, %2560
  %2613 = phi float [ %2611, %2566 ], [ %2561, %2560 ]
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 128
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2634, label %2618

; <label>:2618                                    ; preds = %2612
  %2619 = add i32 %54, 464
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2623, %dx.types.Handle %97, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 524288
  %2629 = icmp ne i32 %2628, 0
  %2630 = fcmp fast ogt float %2625, 0x3FE0101020000000
  %2631 = select i1 %2630, float 1.000000e+00, float 0.000000e+00
  %2632 = select i1 %2629, float %2631, float %2625
  %2633 = fmul fast float %2632, %2613
  br label %2634

; <label>:2634                                    ; preds = %2618, %2612
  %2635 = phi float [ %2633, %2618 ], [ %2613, %2612 ]
  %2636 = fcmp fast ult float %2635, 0x3F70101020000000
  br i1 %2636, label %3375, label %2637

; <label>:2637                                    ; preds = %2634
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 16
  %2641 = icmp eq i32 %2640, 0
  br i1 %2641, label %2840, label %2642

; <label>:2642                                    ; preds = %2637
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %54, 416
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = add i32 %2647, 0
  %2649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2649, %dx.types.Handle %96, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = extractvalue %dx.types.ResRet.f32 %2650, 3
  %2655 = and i32 %2644, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = lshr i32 %2644, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = fmul fast float %2654, %2656
  %2661 = fadd fast float %2660, %2659
  %2662 = fmul fast float %2661, 0x3F70101000000000
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 512
  %2666 = icmp eq i32 %2665, 0
  br i1 %2666, label %2675, label %2667

; <label>:2667                                    ; preds = %2642
  %2668 = add i32 %54, 496
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = add i32 %2670, 0
  %2672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2672, %dx.types.Handle %97, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  br label %2675

; <label>:2675                                    ; preds = %2667, %2642
  %2676 = phi float [ %2674, %2667 ], [ 1.000000e+00, %2642 ]
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 33554432
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2787, label %2681

; <label>:2681                                    ; preds = %2675
  %2682 = add i32 %54, 256
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 65535
  %2686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2685)  ; LegacyF16ToF32(value)
  %2687 = lshr i32 %2684, 16
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = add i32 %54, 260
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2710 = add i32 %54, 252
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = lshr i32 %2712, 24
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = and i32 %2712, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = lshr i32 %2712, 8
  %2720 = and i32 %2719, 255
  %2721 = uitofp i32 %2720 to float
  %2722 = fmul fast float %2721, 0x3F70101020000000
  %2723 = lshr i32 %2712, 16
  %2724 = and i32 %2723, 255
  %2725 = uitofp i32 %2724 to float
  %2726 = fmul fast float %2725, 0x3F70101020000000
  %2727 = bitcast float %2651 to i32
  %2728 = ashr i32 %2727, 1
  %2729 = sub nsw i32 1597463174, %2728
  %2730 = bitcast i32 %2729 to float
  %2731 = fmul fast float %2651, 5.000000e-01
  %2732 = fmul fast float %2730, %2730
  %2733 = fmul fast float %2732, %2731
  %2734 = fsub fast float 1.500000e+00, %2733
  %2735 = fmul fast float %2730, %2651
  %2736 = fmul fast float %2735, %2734
  %2737 = bitcast float %2652 to i32
  %2738 = ashr i32 %2737, 1
  %2739 = sub nsw i32 1597463174, %2738
  %2740 = bitcast i32 %2739 to float
  %2741 = fmul fast float %2652, 5.000000e-01
  %2742 = fmul fast float %2740, %2740
  %2743 = fmul fast float %2742, %2741
  %2744 = fsub fast float 1.500000e+00, %2743
  %2745 = fmul fast float %2740, %2652
  %2746 = fmul fast float %2745, %2744
  %2747 = bitcast float %2653 to i32
  %2748 = ashr i32 %2747, 1
  %2749 = sub nsw i32 1597463174, %2748
  %2750 = bitcast i32 %2749 to float
  %2751 = fmul fast float %2653, 5.000000e-01
  %2752 = fmul fast float %2750, %2750
  %2753 = fmul fast float %2752, %2751
  %2754 = fsub fast float 1.500000e+00, %2753
  %2755 = fmul fast float %2750, %2653
  %2756 = fmul fast float %2755, %2754
  %2757 = fsub fast float %2736, %2718
  %2758 = fsub fast float %2746, %2722
  %2759 = fsub fast float %2756, %2726
  %2760 = fmul fast float %2757, %2686
  %2761 = fmul fast float %2758, %2688
  %2762 = fmul fast float %2759, %2693
  %2763 = fadd fast float %2760, %2701
  %2764 = fadd fast float %2761, %2705
  %2765 = fadd fast float %2762, %2709
  %2766 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2769 = fmul fast float %2766, %2766
  %2770 = fmul fast float %2767, %2767
  %2771 = fmul fast float %2768, %2768
  %2772 = fsub fast float %2769, %2651
  %2773 = fsub fast float %2770, %2652
  %2774 = fsub fast float %2771, %2653
  %2775 = fmul fast float %2772, %2676
  %2776 = fmul fast float %2773, %2676
  %2777 = fmul fast float %2774, %2676
  %2778 = fadd fast float %2775, %2651
  %2779 = fadd fast float %2776, %2652
  %2780 = fadd fast float %2777, %2653
  %2781 = fadd fast float %2698, %2662
  %2782 = fsub fast float %2781, %2715
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = fsub fast float %2783, %2662
  %2785 = fmul fast float %2784, %2676
  %2786 = fadd fast float %2785, %2662
  br label %2840

; <label>:2787                                    ; preds = %2675
  %2788 = and i32 %2678, 134217728
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2824, label %2790

; <label>:2790                                    ; preds = %2787
  %2791 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2792 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2793 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2794 = fadd fast float %2791, -5.000000e-01
  %2795 = fadd fast float %2792, -5.000000e-01
  %2796 = fadd fast float %2793, -5.000000e-01
  %2797 = fmul fast float %2794, %2676
  %2798 = fmul fast float %2795, %2676
  %2799 = fmul fast float %2796, %2676
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = call float @dx.op.unary.f32(i32 24, float %2651)  ; Sqrt(value)
  %2804 = call float @dx.op.unary.f32(i32 24, float %2652)  ; Sqrt(value)
  %2805 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2806 = fmul fast float %2800, 2.000000e+00
  %2807 = fsub fast float 1.000000e+00, %2806
  %2808 = fmul fast float %2807, %2803
  %2809 = fadd fast float %2808, %2806
  %2810 = fmul fast float %2809, %2803
  %2811 = fmul fast float %2801, 2.000000e+00
  %2812 = fsub fast float 1.000000e+00, %2811
  %2813 = fmul fast float %2812, %2804
  %2814 = fadd fast float %2813, %2811
  %2815 = fmul fast float %2814, %2804
  %2816 = fmul fast float %2802, 2.000000e+00
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2817, %2805
  %2819 = fadd fast float %2818, %2816
  %2820 = fmul fast float %2819, %2805
  %2821 = fmul fast float %2810, %2810
  %2822 = fmul fast float %2815, %2815
  %2823 = fmul fast float %2820, %2820
  br label %2840

; <label>:2824                                    ; preds = %2787
  %2825 = fmul fast float %362, %362
  %2826 = fmul fast float %366, %366
  %2827 = fmul fast float %370, %370
  %2828 = fadd fast float %2825, -1.000000e+00
  %2829 = fadd fast float %2826, -1.000000e+00
  %2830 = fadd fast float %2827, -1.000000e+00
  %2831 = fmul fast float %2676, %2828
  %2832 = fmul fast float %2676, %2829
  %2833 = fmul fast float %2676, %2830
  %2834 = fadd fast float %2831, 1.000000e+00
  %2835 = fadd fast float %2832, 1.000000e+00
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fmul fast float %2834, %2651
  %2838 = fmul fast float %2835, %2652
  %2839 = fmul fast float %2836, %2653
  br label %2840

; <label>:2840                                    ; preds = %2824, %2790, %2681, %2637
  %2841 = phi float [ %2786, %2681 ], [ %2662, %2790 ], [ %2662, %2824 ], [ 0x3FA23C0BE0000000, %2637 ]
  %2842 = phi float [ %2778, %2681 ], [ %2821, %2790 ], [ %2837, %2824 ], [ 1.000000e+00, %2637 ]
  %2843 = phi float [ %2779, %2681 ], [ %2822, %2790 ], [ %2838, %2824 ], [ 1.000000e+00, %2637 ]
  %2844 = phi float [ %2780, %2681 ], [ %2823, %2790 ], [ %2839, %2824 ], [ 1.000000e+00, %2637 ]
  %2845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.i32 %2845, 1
  %2847 = and i32 %2846, 1
  %2848 = icmp ne i32 %2847, 0
  %2849 = add i32 %54, 356
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 32
  %2853 = icmp ne i32 %2852, 0
  %2854 = and i1 %2848, %2853
  %2855 = select i1 %2854, float 1.000000e+00, float %2842
  %2856 = select i1 %2854, float 0x3FD3333340000000, float %2843
  %2857 = select i1 %2854, float 0x3FD3333340000000, float %2844
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 32
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %2934, label %2862

; <label>:2862                                    ; preds = %2840
  %2863 = add i32 %54, 124
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = add i32 %54, 432
  %2867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.i32 %2867, 0
  %2869 = add i32 %2868, 0
  %2870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2869, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2870, %dx.types.Handle %96, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 0
  %2873 = extractvalue %dx.types.ResRet.f32 %2871, 1
  %2874 = extractvalue %dx.types.ResRet.f32 %2871, 2
  %2875 = extractvalue %dx.types.ResRet.f32 %2871, 3
  %2876 = and i32 %2865, 255
  %2877 = uitofp i32 %2876 to float
  %2878 = lshr i32 %2865, 8
  %2879 = and i32 %2878, 255
  %2880 = uitofp i32 %2879 to float
  %2881 = lshr i32 %2865, 16
  %2882 = and i32 %2881, 255
  %2883 = uitofp i32 %2882 to float
  %2884 = fmul fast float %2883, 0x3F70101000000000
  %2885 = fmul fast float %2872, %2877
  %2886 = fadd fast float %2885, %2880
  %2887 = fmul fast float %2886, 0x3F70101000000000
  %2888 = fadd fast float %2873, -5.000000e-01
  %2889 = fadd fast float %2875, -5.000000e-01
  %2890 = fmul fast float %2888, %2884
  %2891 = fmul fast float %2889, %2884
  %2892 = fadd fast float %2890, 5.000000e-01
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fmul fast float %2892, 2.000000e+00
  %2895 = fadd fast float %2894, -1.000000e+00
  %2896 = fmul fast float %2893, 2.000000e+00
  %2897 = fadd fast float %2896, -1.000000e+00
  %2898 = fadd fast float %2895, %2897
  %2899 = fmul fast float %2898, 5.000000e-01
  %2900 = fsub fast float %2895, %2897
  %2901 = fmul fast float %2900, 5.000000e-01
  %2902 = call float @dx.op.unary.f32(i32 6, float %2899)  ; FAbs(value)
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2905 = fsub fast float %2903, %2904
  %2906 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2901, float %2905, float %2899, float %2901, float %2905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = call float @dx.op.unary.f32(i32 25, float %2906)  ; Rsqrt(value)
  %2908 = fmul fast float %2899, %2907
  %2909 = fmul fast float %2901, %2907
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 67108864
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %2930, label %2914

; <label>:2914                                    ; preds = %2862
  %2915 = add i32 %54, 312
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 65535
  %2919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2918)  ; LegacyF16ToF32(value)
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 65535
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = lshr i32 %2917, 16
  %2925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2924)  ; LegacyF16ToF32(value)
  %2926 = fsub fast float %2887, %2925
  %2927 = fmul fast float %2926, %2919
  %2928 = fadd fast float %2927, %2923
  %2929 = call float @dx.op.unary.f32(i32 7, float %2928)  ; Saturate(value)
  br label %2930

; <label>:2930                                    ; preds = %2914, %2862
  %2931 = phi float [ %2929, %2914 ], [ %2887, %2862 ]
  %2932 = call float @dx.op.dot2.f32(i32 54, float %2908, float %2909, float %2351, float %2352)  ; Dot2(ax,ay,bx,by)
  %2933 = call float @dx.op.dot2.f32(i32 54, float %2908, float %2909, float %2353, float %2354)  ; Dot2(ax,ay,bx,by)
  br label %2934

; <label>:2934                                    ; preds = %2930, %2840
  %2935 = phi float [ %2931, %2930 ], [ 0x3FD6666660000000, %2840 ]
  %2936 = phi float [ %2932, %2930 ], [ 0.000000e+00, %2840 ]
  %2937 = phi float [ %2933, %2930 ], [ 0.000000e+00, %2840 ]
  %2938 = phi float [ %2874, %2930 ], [ 1.000000e+00, %2840 ]
  %2939 = add i32 %54, 192
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 22
  %2943 = shl nuw nsw i32 %2942, 5
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 64
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %2982, label %2949

; <label>:2949                                    ; preds = %2934
  %2950 = add i32 %54, 448
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 131072
  %2958 = icmp eq i32 %2957, 0
  %2959 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2954, %dx.types.Handle %96, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2963 = fmul fast float %2960, %350
  %2964 = fmul fast float %2961, %353
  %2965 = fmul fast float %2962, %356
  br i1 %2958, label %2972, label %2966

; <label>:2966                                    ; preds = %2949
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = fmul fast float %2968, %2963
  %2970 = fmul fast float %2968, %2964
  %2971 = fmul fast float %2968, %2965
  br label %2972

; <label>:2972                                    ; preds = %2966, %2949
  %2973 = phi float [ %2969, %2966 ], [ %2963, %2949 ]
  %2974 = phi float [ %2970, %2966 ], [ %2964, %2949 ]
  %2975 = phi float [ %2971, %2966 ], [ %2965, %2949 ]
  %2976 = fmul fast float %2973, %2944
  %2977 = select i1 %249, float %2976, float %2973
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2977, float %2974, float %2975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = select i1 %249, float 0.000000e+00, float %2973
  %2980 = select i1 %249, float %2978, float %2974
  %2981 = select i1 %249, float 0.000000e+00, float %2975
  br label %2982

; <label>:2982                                    ; preds = %2972, %2934
  %2983 = phi float [ %2979, %2972 ], [ 0.000000e+00, %2934 ]
  %2984 = phi float [ %2980, %2972 ], [ 0.000000e+00, %2934 ]
  %2985 = phi float [ %2981, %2972 ], [ 0.000000e+00, %2934 ]
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = and i32 %2987, 1024
  %2989 = icmp eq i32 %2988, 0
  br i1 %2989, label %3020, label %2990

; <label>:2990                                    ; preds = %2982
  %2991 = add i32 %54, 184
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2993, 8
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2993, 16
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = fmul fast float %2996, %2996
  %3006 = fmul fast float %3000, %3000
  %3007 = fmul fast float %3004, %3004
  %3008 = add i32 %54, 512
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3012, %dx.types.Handle %97, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = fmul fast float %3005, %3014
  %3018 = fmul fast float %3006, %3015
  %3019 = fmul fast float %3007, %3016
  br label %3020

; <label>:3020                                    ; preds = %2990, %2982
  %3021 = phi float [ %3017, %2990 ], [ 0.000000e+00, %2982 ]
  %3022 = phi float [ %3018, %2990 ], [ 0.000000e+00, %2982 ]
  %3023 = phi float [ %3019, %2990 ], [ 0.000000e+00, %2982 ]
  %3024 = fcmp fast ogt float %3021, 0.000000e+00
  %3025 = fcmp fast ogt float %3022, 0.000000e+00
  %3026 = fcmp fast ogt float %3023, 0.000000e+00
  %3027 = call float @dx.op.unary.f32(i32 23, float %3021)  ; Log(value)
  %3028 = call float @dx.op.unary.f32(i32 23, float %3022)  ; Log(value)
  %3029 = call float @dx.op.unary.f32(i32 23, float %3023)  ; Log(value)
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = lshr i32 %3031, 7
  %3033 = and i32 %3032, 32752
  %3034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3033)  ; LegacyF16ToF32(value)
  %3035 = fmul fast float %3027, 0xBFE62E4300000000
  %3036 = fmul fast float %3035, %3034
  %3037 = fmul fast float %3028, 0xBFE62E4300000000
  %3038 = fmul fast float %3037, %3034
  %3039 = fmul fast float %3029, 0xBFE62E4300000000
  %3040 = fmul fast float %3039, %3034
  %3041 = select i1 %3024, float %3036, float 1.270000e+02
  %3042 = select i1 %3025, float %3038, float 1.270000e+02
  %3043 = select i1 %3026, float %3040, float 1.270000e+02
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 10240
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3092, label %3048

; <label>:3048                                    ; preds = %3020
  %3049 = add i32 %54, 528
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = add i32 %3051, 0
  %3053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3052, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3053, %dx.types.Handle %97, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 3
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = and i32 %3058, 1048576
  %3060 = icmp ne i32 %3059, 0
  %3061 = and i32 %3058, 8192
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3078, label %3063

; <label>:3063                                    ; preds = %3048
  %3064 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3065 = select i1 %3060, float %3064, float %3055
  %3066 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3067 = select i1 %3060, float %3066, float %3055
  %3068 = add i32 %54, 128
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = lshr i32 %3070, 16
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3073, 0x3F80101020000000
  %3075 = fmul fast float %3074, %3067
  %3076 = fmul fast float %3074, %3055
  %3077 = fmul fast float %3074, %3065
  br label %3078

; <label>:3078                                    ; preds = %3063, %3048
  %3079 = phi float [ %3075, %3063 ], [ 0.000000e+00, %3048 ]
  %3080 = phi float [ %3076, %3063 ], [ 0.000000e+00, %3048 ]
  %3081 = phi float [ %3077, %3063 ], [ 0.000000e+00, %3048 ]
  %3082 = and i32 %3058, 2048
  %3083 = icmp eq i32 %3082, 0
  br i1 %3083, label %3092, label %3084

; <label>:3084                                    ; preds = %3078
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = shl i32 %3086, 4
  %3088 = and i32 %3087, 32752
  %3089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3088)  ; LegacyF16ToF32(value)
  %3090 = fmul fast float %3089, %3056
  %3091 = call float @dx.op.binary.f32(i32 35, float %3090, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3092

; <label>:3092                                    ; preds = %3084, %3078, %3020
  %3093 = phi float [ %3079, %3084 ], [ %3079, %3078 ], [ 0.000000e+00, %3020 ]
  %3094 = phi float [ %3080, %3084 ], [ %3080, %3078 ], [ 0.000000e+00, %3020 ]
  %3095 = phi float [ %3081, %3084 ], [ %3081, %3078 ], [ 0.000000e+00, %3020 ]
  %3096 = phi float [ %3091, %3084 ], [ 0x3F70101020000000, %3078 ], [ 0x3F70101020000000, %3020 ]
  %3097 = add i32 %54, 128
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 255
  %3101 = uitofp i32 %3100 to float
  %3102 = lshr i32 %3099, 8
  %3103 = and i32 %3102, 255
  %3104 = uitofp i32 %3103 to float
  %3105 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2856, float %2857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3106 = fmul fast float %3104, %3105
  %3107 = fadd fast float %3106, %3101
  %3108 = fmul fast float %3107, 0x3F70101020000000
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  br i1 %2339, label %3110, label %3145

; <label>:3110                                    ; preds = %3092
  %3111 = fmul fast float %3096, 2.000000e+00
  %3112 = fcmp fast olt float %3041, 1.270000e+02
  %3113 = fcmp fast olt float %3042, 1.270000e+02
  %3114 = fcmp fast olt float %3043, 1.270000e+02
  %3115 = fmul fast float %3041, 0xBFF7154760000000
  %3116 = fmul fast float %3115, %3111
  %3117 = fmul fast float %3042, 0xBFF7154760000000
  %3118 = fmul fast float %3117, %3111
  %3119 = fmul fast float %3043, 0xBFF7154760000000
  %3120 = fmul fast float %3119, %3111
  %3121 = call float @dx.op.unary.f32(i32 21, float %3116)  ; Exp(value)
  %3122 = call float @dx.op.unary.f32(i32 21, float %3118)  ; Exp(value)
  %3123 = call float @dx.op.unary.f32(i32 21, float %3120)  ; Exp(value)
  %3124 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3125 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3126 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3127 = fadd fast float %3124, -1.000000e+00
  %3128 = select i1 %3112, float %3127, float -1.000000e+00
  %3129 = fadd fast float %3125, -1.000000e+00
  %3130 = select i1 %3113, float %3129, float -1.000000e+00
  %3131 = fadd fast float %3126, -1.000000e+00
  %3132 = select i1 %3114, float %3131, float -1.000000e+00
  %3133 = fmul fast float %3128, %2635
  %3134 = fmul fast float %3130, %2635
  %3135 = fmul fast float %3132, %2635
  %3136 = fadd fast float %3133, 1.000000e+00
  %3137 = fadd fast float %3134, 1.000000e+00
  %3138 = fadd fast float %3135, 1.000000e+00
  %3139 = fmul fast float %3136, %2321
  %3140 = fmul fast float %3137, %2322
  %3141 = fmul fast float %3138, %2323
  %3142 = fmul fast float %3136, %2327
  %3143 = fmul fast float %3137, %2328
  %3144 = fmul fast float %3138, %2329
  br label %3145

; <label>:3145                                    ; preds = %3110, %3092
  %3146 = phi float [ %3139, %3110 ], [ %2321, %3092 ]
  %3147 = phi float [ %3140, %3110 ], [ %2322, %3092 ]
  %3148 = phi float [ %3141, %3110 ], [ %2323, %3092 ]
  %3149 = phi float [ %3142, %3110 ], [ %2327, %3092 ]
  %3150 = phi float [ %3143, %3110 ], [ %2328, %3092 ]
  %3151 = phi float [ %3144, %3110 ], [ %2329, %3092 ]
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 3
  %3155 = icmp eq i32 %3154, 3
  br i1 %3155, label %3234, label %3156

; <label>:3156                                    ; preds = %3145
  %3157 = and i32 %3153, 16
  %3158 = icmp ne i32 %3157, 0
  %3159 = select i1 %3158, float %2635, float 0.000000e+00
  %3160 = icmp eq i32 %3154, 0
  br i1 %3160, label %3161, label %3189

; <label>:3161                                    ; preds = %3156
  %3162 = and i32 %3153, 64
  %3163 = icmp ne i32 %3162, 0
  %3164 = select i1 %3163, float %2635, float 0.000000e+00
  %3165 = fsub fast float %2855, %3146
  %3166 = fsub fast float %2856, %3147
  %3167 = fsub fast float %2857, %3148
  %3168 = fmul fast float %3159, %3165
  %3169 = fmul fast float %3159, %3166
  %3170 = fmul fast float %3159, %3167
  %3171 = fadd fast float %3168, %3146
  %3172 = fadd fast float %3169, %3147
  %3173 = fadd fast float %3170, %3148
  %3174 = fsub fast float %2841, %2333
  %3175 = fmul fast float %3159, %3174
  %3176 = fadd fast float %3175, %2333
  %3177 = fsub fast float %2983, %3149
  %3178 = fsub fast float %2984, %3150
  %3179 = fsub fast float %2985, %3151
  %3180 = fmul fast float %3164, %3177
  %3181 = fmul fast float %3164, %3178
  %3182 = fmul fast float %3164, %3179
  %3183 = fadd fast float %3180, %3149
  %3184 = fadd fast float %3181, %3150
  %3185 = fadd fast float %3182, %3151
  %3186 = fsub fast float %3109, %2337
  %3187 = fmul fast float %3159, %3186
  %3188 = fadd fast float %3187, %2337
  br label %3234

; <label>:3189                                    ; preds = %3156
  %3190 = icmp eq i32 %3154, 1
  br i1 %3190, label %3191, label %3204

; <label>:3191                                    ; preds = %3189
  %3192 = fadd fast float %2855, -1.000000e+00
  %3193 = fadd fast float %2856, -1.000000e+00
  %3194 = fadd fast float %2857, -1.000000e+00
  %3195 = fmul fast float %3159, %3192
  %3196 = fmul fast float %3159, %3193
  %3197 = fmul fast float %3159, %3194
  %3198 = fadd fast float %3195, 1.000000e+00
  %3199 = fadd fast float %3196, 1.000000e+00
  %3200 = fadd fast float %3197, 1.000000e+00
  %3201 = fmul fast float %3198, %3146
  %3202 = fmul fast float %3199, %3147
  %3203 = fmul fast float %3200, %3148
  br label %3234

; <label>:3204                                    ; preds = %3189
  %3205 = icmp eq i32 %3154, 2
  br i1 %3205, label %3206, label %3234

; <label>:3206                                    ; preds = %3204
  %3207 = call float @dx.op.unary.f32(i32 24, float %2855)  ; Sqrt(value)
  %3208 = call float @dx.op.unary.f32(i32 24, float %2856)  ; Sqrt(value)
  %3209 = call float @dx.op.unary.f32(i32 24, float %2857)  ; Sqrt(value)
  %3210 = fadd fast float %3207, -5.000000e-01
  %3211 = fadd fast float %3208, -5.000000e-01
  %3212 = fadd fast float %3209, -5.000000e-01
  %3213 = fmul fast float %3210, %3159
  %3214 = fmul fast float %3211, %3159
  %3215 = fmul fast float %3212, %3159
  %3216 = fadd fast float %3213, 5.000000e-01
  %3217 = fadd fast float %3214, 5.000000e-01
  %3218 = fadd fast float %3215, 5.000000e-01
  %3219 = fmul fast float %3216, 2.000000e+00
  %3220 = fsub fast float 1.000000e+00, %3219
  %3221 = fmul fast float %3220, %3146
  %3222 = fadd fast float %3221, %3219
  %3223 = fmul fast float %3222, %3146
  %3224 = fmul fast float %3217, 2.000000e+00
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fmul fast float %3225, %3147
  %3227 = fadd fast float %3226, %3224
  %3228 = fmul fast float %3227, %3147
  %3229 = fmul fast float %3218, 2.000000e+00
  %3230 = fsub fast float 1.000000e+00, %3229
  %3231 = fmul fast float %3230, %3148
  %3232 = fadd fast float %3231, %3229
  %3233 = fmul fast float %3232, %3148
  br label %3234

; <label>:3234                                    ; preds = %3206, %3204, %3191, %3161, %3145
  %3235 = phi float [ %3146, %3145 ], [ %3223, %3206 ], [ %3146, %3204 ], [ %3201, %3191 ], [ %3171, %3161 ]
  %3236 = phi float [ %3147, %3145 ], [ %3228, %3206 ], [ %3147, %3204 ], [ %3202, %3191 ], [ %3172, %3161 ]
  %3237 = phi float [ %3148, %3145 ], [ %3233, %3206 ], [ %3148, %3204 ], [ %3203, %3191 ], [ %3173, %3161 ]
  %3238 = phi float [ %3149, %3145 ], [ %3149, %3206 ], [ %3149, %3204 ], [ %3149, %3191 ], [ %3183, %3161 ]
  %3239 = phi float [ %3150, %3145 ], [ %3150, %3206 ], [ %3150, %3204 ], [ %3150, %3191 ], [ %3184, %3161 ]
  %3240 = phi float [ %3151, %3145 ], [ %3151, %3206 ], [ %3151, %3204 ], [ %3151, %3191 ], [ %3185, %3161 ]
  %3241 = phi float [ %2333, %3145 ], [ %2333, %3206 ], [ %2333, %3204 ], [ %2333, %3191 ], [ %3176, %3161 ]
  %3242 = phi float [ %2337, %3145 ], [ %2337, %3206 ], [ %2337, %3204 ], [ %2337, %3191 ], [ %3188, %3161 ]
  %3243 = and i32 %3153, 12
  %3244 = icmp eq i32 %3243, 12
  br i1 %3244, label %3375, label %3245

; <label>:3245                                    ; preds = %3234
  %3246 = and i32 %3153, 2097184
  %3247 = icmp eq i32 %3246, 2097184
  %3248 = select i1 %3247, float %2635, float 0.000000e+00
  %3249 = and i32 %3153, 4194336
  %3250 = icmp eq i32 %3249, 4194336
  %3251 = select i1 %3250, float %2635, float 0.000000e+00
  %3252 = and i32 %3153, 8388640
  %3253 = icmp eq i32 %3252, 8388640
  %3254 = select i1 %3253, float %2635, float 0.000000e+00
  %3255 = and i32 %3153, 1024
  %3256 = icmp ne i32 %3255, 0
  %3257 = select i1 %3256, float %2635, float 0.000000e+00
  %3258 = and i32 %3153, 2048
  %3259 = icmp ne i32 %3258, 0
  %3260 = select i1 %3259, float %2635, float 0.000000e+00
  %3261 = and i32 %3153, 8192
  %3262 = icmp ne i32 %3261, 0
  %3263 = select i1 %3262, float %2635, float 0.000000e+00
  %3264 = icmp eq i32 %3243, 0
  br i1 %3264, label %3265, label %3299

; <label>:3265                                    ; preds = %3245
  %3266 = fsub fast float %2936, %2319
  %3267 = fsub fast float %2937, %2320
  %3268 = fmul fast float %3248, %3266
  %3269 = fmul fast float %3248, %3267
  %3270 = fadd fast float %3268, %2319
  %3271 = fadd fast float %3269, %2320
  %3272 = fsub fast float %2938, %2335
  %3273 = fmul fast float %3251, %3272
  %3274 = fadd fast float %3273, %2335
  %3275 = fsub fast float %2935, %2334
  %3276 = fmul fast float %3254, %3275
  %3277 = fadd fast float %3276, %2334
  %3278 = fsub fast float %3041, %2330
  %3279 = fsub fast float %3042, %2331
  %3280 = fsub fast float %3043, %2332
  %3281 = fmul fast float %3257, %3278
  %3282 = fmul fast float %3257, %3279
  %3283 = fmul fast float %3257, %3280
  %3284 = fadd fast float %3281, %2330
  %3285 = fadd fast float %3282, %2331
  %3286 = fadd fast float %3283, %2332
  %3287 = fsub fast float %3096, %2336
  %3288 = fmul fast float %3260, %3287
  %3289 = fadd fast float %3288, %2336
  %3290 = fsub fast float %3093, %2324
  %3291 = fsub fast float %3094, %2325
  %3292 = fsub fast float %3095, %2326
  %3293 = fmul fast float %3263, %3290
  %3294 = fmul fast float %3263, %3291
  %3295 = fmul fast float %3263, %3292
  %3296 = fadd fast float %3293, %2324
  %3297 = fadd fast float %3294, %2325
  %3298 = fadd fast float %3295, %2326
  br label %3375

; <label>:3299                                    ; preds = %3245
  %3300 = icmp eq i32 %3243, 4
  br i1 %3300, label %3301, label %3347

; <label>:3301                                    ; preds = %3299
  %3302 = fmul fast float %3248, %2936
  %3303 = fmul fast float %3248, %2937
  %3304 = fadd fast float %3302, %2319
  %3305 = fadd fast float %3303, %2320
  %3306 = call float @dx.op.binary.f32(i32 36, float %2335, float %2938)  ; FMin(a,b)
  %3307 = fsub fast float %3306, %2335
  %3308 = fmul fast float %3307, %3251
  %3309 = fadd fast float %3308, %2335
  %3310 = fadd fast float %2935, %2334
  %3311 = fmul fast float %3310, 0x3FF337FAE0000000
  %3312 = fmul fast float %2334, %2334
  %3313 = fmul fast float %2935, %2935
  %3314 = fadd fast float %3313, %3312
  %3315 = fmul fast float %3314, 0x3FE5152B00000000
  %3316 = fmul fast float %2334, 0xBFCC1F85E0000000
  %3317 = fmul fast float %3316, %2935
  %3318 = fadd fast float %3317, 0xBFE1363700000000
  %3319 = fadd fast float %3318, %3311
  %3320 = fsub fast float %3319, %3315
  %3321 = fmul fast float %3310, 0x3FBA6F0D00000000
  %3322 = fmul fast float %3314, 0x3FD0432880000000
  %3323 = fmul fast float %2334, 0xBFEF110800000000
  %3324 = fmul fast float %3323, %2935
  %3325 = fadd fast float %3324, 1.000000e+00
  %3326 = fsub fast float %3325, %3321
  %3327 = fadd fast float %3326, %3322
  %3328 = fdiv fast float %3320, %3327
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3330 = fsub fast float %3329, %2334
  %3331 = fmul fast float %3330, %3254
  %3332 = fadd fast float %3331, %2334
  %3333 = fmul fast float %3257, %3041
  %3334 = fmul fast float %3257, %3042
  %3335 = fmul fast float %3257, %3043
  %3336 = fadd fast float %3333, %2330
  %3337 = fadd fast float %3334, %2331
  %3338 = fadd fast float %3335, %2332
  %3339 = fmul fast float %3260, %3096
  %3340 = fadd fast float %3339, %2336
  %3341 = fmul fast float %3263, %3093
  %3342 = fmul fast float %3263, %3094
  %3343 = fmul fast float %3263, %3095
  %3344 = fadd fast float %3341, %2324
  %3345 = fadd fast float %3342, %2325
  %3346 = fadd fast float %3343, %2326
  br label %3375

; <label>:3347                                    ; preds = %3299
  %3348 = icmp eq i32 %3243, 8
  br i1 %3348, label %3349, label %3375

; <label>:3349                                    ; preds = %3347
  %3350 = fmul fast float %3248, %2936
  %3351 = fmul fast float %3248, %2937
  %3352 = fadd fast float %3350, %2319
  %3353 = fadd fast float %3351, %2320
  %3354 = call float @dx.op.binary.f32(i32 36, float %2335, float %2938)  ; FMin(a,b)
  %3355 = fsub fast float %3354, %2335
  %3356 = fmul fast float %3355, %3251
  %3357 = fadd fast float %3356, %2335
  %3358 = fsub fast float %2935, %2334
  %3359 = fmul fast float %3254, %3358
  %3360 = fadd fast float %3359, %2334
  %3361 = fmul fast float %3257, %3041
  %3362 = fmul fast float %3257, %3042
  %3363 = fmul fast float %3257, %3043
  %3364 = fadd fast float %3361, %2330
  %3365 = fadd fast float %3362, %2331
  %3366 = fadd fast float %3363, %2332
  %3367 = fmul fast float %3260, %3096
  %3368 = fadd fast float %3367, %2336
  %3369 = fmul fast float %3263, %3093
  %3370 = fmul fast float %3263, %3094
  %3371 = fmul fast float %3263, %3095
  %3372 = fadd fast float %3369, %2324
  %3373 = fadd fast float %3370, %2325
  %3374 = fadd fast float %3371, %2326
  br label %3375

; <label>:3375                                    ; preds = %3349, %3347, %3301, %3265, %3234, %2634, %2338, %2318
  %3376 = phi float [ %2319, %3234 ], [ %2319, %2634 ], [ %2319, %2318 ], [ %3352, %3349 ], [ %2319, %3347 ], [ %3304, %3301 ], [ %3270, %3265 ], [ %2319, %2338 ]
  %3377 = phi float [ %2320, %3234 ], [ %2320, %2634 ], [ %2320, %2318 ], [ %3353, %3349 ], [ %2320, %3347 ], [ %3305, %3301 ], [ %3271, %3265 ], [ %2320, %2338 ]
  %3378 = phi float [ %3235, %3234 ], [ %2321, %2634 ], [ %2321, %2318 ], [ %3235, %3349 ], [ %3235, %3347 ], [ %3235, %3301 ], [ %3235, %3265 ], [ %2321, %2338 ]
  %3379 = phi float [ %3236, %3234 ], [ %2322, %2634 ], [ %2322, %2318 ], [ %3236, %3349 ], [ %3236, %3347 ], [ %3236, %3301 ], [ %3236, %3265 ], [ %2322, %2338 ]
  %3380 = phi float [ %3237, %3234 ], [ %2323, %2634 ], [ %2323, %2318 ], [ %3237, %3349 ], [ %3237, %3347 ], [ %3237, %3301 ], [ %3237, %3265 ], [ %2323, %2338 ]
  %3381 = phi float [ %2324, %3234 ], [ %2324, %2634 ], [ %2324, %2318 ], [ %3372, %3349 ], [ %2324, %3347 ], [ %3344, %3301 ], [ %3296, %3265 ], [ %2324, %2338 ]
  %3382 = phi float [ %2325, %3234 ], [ %2325, %2634 ], [ %2325, %2318 ], [ %3373, %3349 ], [ %2325, %3347 ], [ %3345, %3301 ], [ %3297, %3265 ], [ %2325, %2338 ]
  %3383 = phi float [ %2326, %3234 ], [ %2326, %2634 ], [ %2326, %2318 ], [ %3374, %3349 ], [ %2326, %3347 ], [ %3346, %3301 ], [ %3298, %3265 ], [ %2326, %2338 ]
  %3384 = phi float [ %3238, %3234 ], [ %2327, %2634 ], [ %2327, %2318 ], [ %3238, %3349 ], [ %3238, %3347 ], [ %3238, %3301 ], [ %3238, %3265 ], [ %2327, %2338 ]
  %3385 = phi float [ %3239, %3234 ], [ %2328, %2634 ], [ %2328, %2318 ], [ %3239, %3349 ], [ %3239, %3347 ], [ %3239, %3301 ], [ %3239, %3265 ], [ %2328, %2338 ]
  %3386 = phi float [ %3240, %3234 ], [ %2329, %2634 ], [ %2329, %2318 ], [ %3240, %3349 ], [ %3240, %3347 ], [ %3240, %3301 ], [ %3240, %3265 ], [ %2329, %2338 ]
  %3387 = phi float [ %2330, %3234 ], [ %2330, %2634 ], [ %2330, %2318 ], [ %3364, %3349 ], [ %2330, %3347 ], [ %3336, %3301 ], [ %3284, %3265 ], [ %2330, %2338 ]
  %3388 = phi float [ %2331, %3234 ], [ %2331, %2634 ], [ %2331, %2318 ], [ %3365, %3349 ], [ %2331, %3347 ], [ %3337, %3301 ], [ %3285, %3265 ], [ %2331, %2338 ]
  %3389 = phi float [ %2332, %3234 ], [ %2332, %2634 ], [ %2332, %2318 ], [ %3366, %3349 ], [ %2332, %3347 ], [ %3338, %3301 ], [ %3286, %3265 ], [ %2332, %2338 ]
  %3390 = phi float [ %3241, %3234 ], [ %2333, %2634 ], [ %2333, %2318 ], [ %3241, %3349 ], [ %3241, %3347 ], [ %3241, %3301 ], [ %3241, %3265 ], [ %2333, %2338 ]
  %3391 = phi float [ %2334, %3234 ], [ %2334, %2634 ], [ %2334, %2318 ], [ %3360, %3349 ], [ %2334, %3347 ], [ %3332, %3301 ], [ %3277, %3265 ], [ %2334, %2338 ]
  %3392 = phi float [ %2335, %3234 ], [ %2335, %2634 ], [ %2335, %2318 ], [ %3357, %3349 ], [ %2335, %3347 ], [ %3309, %3301 ], [ %3274, %3265 ], [ %2335, %2338 ]
  %3393 = phi float [ %2336, %3234 ], [ %2336, %2634 ], [ %2336, %2318 ], [ %3368, %3349 ], [ %2336, %3347 ], [ %3340, %3301 ], [ %3289, %3265 ], [ %2336, %2338 ]
  %3394 = phi float [ %3242, %3234 ], [ %2337, %2634 ], [ %2337, %2318 ], [ %3242, %3349 ], [ %3242, %3347 ], [ %3242, %3301 ], [ %3242, %3265 ], [ %2337, %2338 ]
  br i1 %437, label %4432, label %3395

; <label>:3395                                    ; preds = %3375
  %3396 = icmp ult i32 %491, 4
  %3397 = add i32 %54, 72
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = add i32 %54, 76
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = or i32 %3402, %3399
  %3404 = icmp eq i32 %3403, 0
  br i1 %3404, label %4432, label %3405

; <label>:3405                                    ; preds = %3395
  %3406 = and i32 %3399, 262144
  %3407 = icmp ne i32 %3406, 0
  %3408 = select i1 %3407, float %57, float 1.000000e+00
  %3409 = select i1 %3407, float %58, float 0.000000e+00
  %3410 = select i1 %3407, float %59, float 0.000000e+00
  %3411 = select i1 %3407, float %60, float 1.000000e+00
  %3412 = select i1 %3407, float %61, float %82
  %3413 = select i1 %3407, float %62, float %83
  %3414 = add i32 %54, 332
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 16
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = fmul fast float %3418, 0x3F50624DE0000000
  %3420 = add i32 %54, 136
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = lshr i32 %3422, 16
  %3424 = and i32 %3423, 255
  %3425 = lshr i32 %3422, 24
  %3426 = add i32 %54, 340
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 65535
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = lshr i32 %3428, 16
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = add i32 %54, 80
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = lshr i32 %3435, 22
  %3437 = shl nuw nsw i32 %3436, 5
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = shl i32 %3435, 4
  %3440 = and i32 %3439, 32752
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = lshr i32 %3435, 7
  %3443 = and i32 %3442, 32752
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 3
  %3447 = fmul fast float %3446, 1.000000e+03
  %3448 = fmul fast float %427, %3447
  %3449 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3450 = fadd fast float %3449, %417
  %3451 = fmul fast float %428, %3447
  %3452 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3453 = fadd fast float %3452, %419
  %3454 = fmul fast float %3419, %3447
  %3455 = call float @dx.op.unary.f32(i32 22, float %3454)  ; Frc(value)
  %3456 = fmul fast float %3455, 0x401921FB60000000
  %3457 = fadd fast float %3456, %3438
  %3458 = call float @dx.op.unary.f32(i32 13, float %3457)  ; Sin(value)
  %3459 = call float @dx.op.unary.f32(i32 12, float %3457)  ; Cos(value)
  %3460 = fsub fast float -0.000000e+00, %3458
  %3461 = fadd fast float %3412, -5.000000e-01
  %3462 = fadd fast float %3413, -5.000000e-01
  %3463 = fmul fast float %3430, %3461
  %3464 = fmul fast float %3432, %3462
  %3465 = fadd fast float %3463, 5.000000e-01
  %3466 = fadd fast float %3464, 5.000000e-01
  %3467 = fmul fast float %3441, %3465
  %3468 = fmul fast float %3444, %3466
  %3469 = fmul fast float %3459, %3467
  %3470 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3468, float %3469)  ; FMad(a,b,c)
  %3471 = fmul fast float %3458, %3467
  %3472 = call float @dx.op.tertiary.f32(i32 46, float %3459, float %3468, float %3471)  ; FMad(a,b,c)
  %3473 = fadd fast float %3450, %3470
  %3474 = fadd fast float %3453, %3472
  %3475 = icmp ugt i32 %3424, 1
  %3476 = icmp ugt i32 %3422, 33554431
  %3477 = or i1 %3476, %3475
  br i1 %3477, label %3478, label %3503

; <label>:3478                                    ; preds = %3405
  %3479 = add i32 %54, 276
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = lshr i32 %3481, 16
  %3483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3482)  ; LegacyF16ToF32(value)
  %3484 = fmul fast float %3446, %3483
  %3485 = call float @dx.op.unary.f32(i32 22, float %3484)  ; Frc(value)
  %3486 = mul nuw nsw i32 %3424, %3425
  %3487 = uitofp i32 %3486 to float
  %3488 = fmul fast float %3485, %3487
  %3489 = call float @dx.op.unary.f32(i32 27, float %3488)  ; Round_ni(value)
  %3490 = fptoui float %3489 to i32
  %3491 = urem i32 %3490, %3424
  %3492 = udiv i32 %3490, %3425
  %3493 = call float @dx.op.unary.f32(i32 22, float %3473)  ; Frc(value)
  %3494 = call float @dx.op.unary.f32(i32 22, float %3474)  ; Frc(value)
  %3495 = uitofp i32 %3491 to float
  %3496 = uitofp i32 %3492 to float
  %3497 = fadd fast float %3493, %3495
  %3498 = fadd fast float %3494, %3496
  %3499 = uitofp i32 %3424 to float
  %3500 = uitofp i32 %3425 to float
  %3501 = fdiv fast float %3497, %3499
  %3502 = fdiv fast float %3498, %3500
  br label %3503

; <label>:3503                                    ; preds = %3478, %3405
  %3504 = phi float [ %3501, %3478 ], [ %3473, %3405 ]
  %3505 = phi float [ %3502, %3478 ], [ %3474, %3405 ]
  %3506 = and i32 %3399, 16777216
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3617, label %3508

; <label>:3508                                    ; preds = %3503
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.CBufRet.f32 %3509, 2
  %3513 = fadd fast float %3510, %155
  %3514 = fadd fast float %3511, %156
  %3515 = fadd fast float %3512, %157
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3519 = icmp eq i32 %55, 65535
  br i1 %3519, label %3614, label %3520

; <label>:3520                                    ; preds = %3508
  %3521 = lshr i32 %55, 1
  %3522 = shl i32 %3521, 2
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %55, 1
  %3526 = icmp ne i32 %3525, 0
  %3527 = lshr i32 %3524, 16
  %3528 = and i32 %3524, 65535
  %3529 = select i1 %3526, i32 %3527, i32 %3528
  %3530 = icmp eq i32 %3529, 65535
  br i1 %3530, label %3610, label %3531

; <label>:3531                                    ; preds = %3520
  %3532 = mul nuw nsw i32 %3529, 40
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.ResRet.f32 %3533, 2
  %3537 = add nuw nsw i32 %3532, 12
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = add nuw nsw i32 %3532, 24
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = add nuw nsw i32 %3532, 36
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = fsub fast float %3513, %3534
  %3551 = fsub fast float %3514, %3535
  %3552 = fsub fast float %3515, %3536
  %3553 = fmul fast float %3549, %3550
  %3554 = fmul fast float %3549, %3551
  %3555 = fmul fast float %3549, %3552
  %3556 = call float @dx.op.unary.f32(i32 27, float %3553)  ; Round_ni(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = fadd fast float %3556, 5.000000e-01
  %3560 = fadd fast float %3557, 5.000000e-01
  %3561 = fadd fast float %3558, 5.000000e-01
  %3562 = fmul fast float %3559, %3539
  %3563 = fmul fast float %3560, %3540
  %3564 = fmul fast float %3561, %3541
  %3565 = shl i32 %55, 2
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = add i32 %3567, 0
  %3569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3570 = call float @dx.op.unary.f32(i32 22, float %3562)  ; Frc(value)
  %3571 = call float @dx.op.unary.f32(i32 22, float %3563)  ; Frc(value)
  %3572 = call float @dx.op.unary.f32(i32 22, float %3564)  ; Frc(value)
  %3573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3569, %dx.types.Handle %49, float %3570, float %3571, float %3572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = fmul fast float %3574, 1.023000e+03
  %3578 = fmul fast float %3575, 1.023000e+03
  %3579 = fmul fast float %3576, 1.023000e+03
  %3580 = fadd fast float %3577, 5.000000e-01
  %3581 = fadd fast float %3578, 5.000000e-01
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = call float @dx.op.unary.f32(i32 27, float %3580)  ; Round_ni(value)
  %3584 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3585 = call float @dx.op.unary.f32(i32 27, float %3582)  ; Round_ni(value)
  %3586 = fsub fast float %3553, %3556
  %3587 = fsub fast float %3554, %3557
  %3588 = fsub fast float %3555, %3558
  %3589 = fmul fast float %3586, 7.500000e-01
  %3590 = fmul fast float %3587, 7.500000e-01
  %3591 = fmul fast float %3588, 7.500000e-01
  %3592 = fadd fast float %3556, 1.250000e-01
  %3593 = fadd fast float %3592, %3589
  %3594 = fadd fast float %3593, %3583
  %3595 = fadd fast float %3557, 1.250000e-01
  %3596 = fadd fast float %3595, %3590
  %3597 = fadd fast float %3596, %3584
  %3598 = fadd fast float %3558, 1.250000e-01
  %3599 = fadd fast float %3598, %3591
  %3600 = fadd fast float %3599, %3585
  %3601 = fmul fast float %3594, %3544
  %3602 = fmul fast float %3597, %3545
  %3603 = fmul fast float %3600, %3546
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = add i32 %3605, 0
  %3607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3607, %dx.types.Handle %47, float %3601, float %3602, float %3603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  br label %3610

; <label>:3610                                    ; preds = %3531, %3520
  %3611 = phi float [ %3609, %3531 ], [ -1.000000e+00, %3520 ]
  %3612 = fadd fast float %3611, %3518
  %3613 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  br label %3614

; <label>:3614                                    ; preds = %3610, %3508
  %3615 = phi float [ %3613, %3610 ], [ %3518, %3508 ]
  %3616 = fmul fast float %3615, %486
  br label %3617

; <label>:3617                                    ; preds = %3614, %3503
  %3618 = phi float [ %3616, %3614 ], [ %486, %3503 ]
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 256
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3669, label %3623

; <label>:3623                                    ; preds = %3617
  %3624 = add i32 %54, 484
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = add i32 %3626, 0
  %3628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3628, %dx.types.Handle %97, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = add i32 %54, 148
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = shl i32 %3633, 4
  %3635 = and i32 %3634, 32752
  %3636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3635)  ; LegacyF16ToF32(value)
  %3637 = lshr i32 %3633, 7
  %3638 = and i32 %3637, 32752
  %3639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3638)  ; LegacyF16ToF32(value)
  %3640 = fsub fast float 1.000000e+00, %3618
  %3641 = call float @dx.op.binary.f32(i32 35, float %3640, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3642 = bitcast float %3618 to i32
  %3643 = sitofp i32 %3642 to float
  %3644 = fadd fast float %3643, 0xC1CFBF8940000000
  %3645 = fmul fast float %3639, %3644
  %3646 = fadd fast float %3645, 0x41CFBF8940000000
  %3647 = fptosi float %3646 to i32
  %3648 = bitcast i32 %3647 to float
  %3649 = bitcast float %3641 to i32
  %3650 = sitofp i32 %3649 to float
  %3651 = fadd fast float %3650, 0xC1CFBF8940000000
  %3652 = fmul fast float %3651, %3639
  %3653 = fadd fast float %3652, 0x41CFBF8940000000
  %3654 = fptosi float %3653 to i32
  %3655 = bitcast i32 %3654 to float
  %3656 = fmul fast float %3648, %3636
  %3657 = fmul fast float %3655, %3636
  %3658 = fsub fast float %3641, %3656
  %3659 = fadd fast float %3657, %3641
  %3660 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3662 = fsub fast float %3630, %3660
  %3663 = fsub fast float %3661, %3660
  %3664 = bitcast float %3663 to i32
  %3665 = sub nsw i32 2129859010, %3664
  %3666 = bitcast i32 %3665 to float
  %3667 = fmul fast float %3666, %3662
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  br label %3669

; <label>:3669                                    ; preds = %3623, %3617
  %3670 = phi float [ %3668, %3623 ], [ %3618, %3617 ]
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 128
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3691, label %3675

; <label>:3675                                    ; preds = %3669
  %3676 = add i32 %54, 468
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %3678, 0
  %3680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3680, %dx.types.Handle %97, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = and i32 %3684, 524288
  %3686 = icmp ne i32 %3685, 0
  %3687 = fcmp fast ogt float %3682, 0x3FE0101020000000
  %3688 = select i1 %3687, float 1.000000e+00, float 0.000000e+00
  %3689 = select i1 %3686, float %3688, float %3682
  %3690 = fmul fast float %3689, %3670
  br label %3691

; <label>:3691                                    ; preds = %3675, %3669
  %3692 = phi float [ %3690, %3675 ], [ %3670, %3669 ]
  %3693 = fcmp fast ult float %3692, 0x3F70101020000000
  br i1 %3693, label %4432, label %3694

; <label>:3694                                    ; preds = %3691
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 16
  %3698 = icmp eq i32 %3697, 0
  br i1 %3698, label %3897, label %3699

; <label>:3699                                    ; preds = %3694
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = add i32 %54, 420
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = add i32 %3704, 0
  %3706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3706, %dx.types.Handle %96, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3707, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3707, 2
  %3711 = extractvalue %dx.types.ResRet.f32 %3707, 3
  %3712 = and i32 %3701, 255
  %3713 = uitofp i32 %3712 to float
  %3714 = lshr i32 %3701, 8
  %3715 = and i32 %3714, 255
  %3716 = uitofp i32 %3715 to float
  %3717 = fmul fast float %3711, %3713
  %3718 = fadd fast float %3717, %3716
  %3719 = fmul fast float %3718, 0x3F70101000000000
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = and i32 %3721, 512
  %3723 = icmp eq i32 %3722, 0
  br i1 %3723, label %3732, label %3724

; <label>:3724                                    ; preds = %3699
  %3725 = add i32 %54, 500
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = add i32 %3727, 0
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3729, %dx.types.Handle %97, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  br label %3732

; <label>:3732                                    ; preds = %3724, %3699
  %3733 = phi float [ %3731, %3724 ], [ 1.000000e+00, %3699 ]
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 33554432
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3844, label %3738

; <label>:3738                                    ; preds = %3732
  %3739 = add i32 %54, 272
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 65535
  %3743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3742)  ; LegacyF16ToF32(value)
  %3744 = lshr i32 %3741, 16
  %3745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3744)  ; LegacyF16ToF32(value)
  %3746 = add i32 %54, 276
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = and i32 %3748, 65535
  %3750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3749)  ; LegacyF16ToF32(value)
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3767 = add i32 %54, 268
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = lshr i32 %3769, 24
  %3771 = uitofp i32 %3770 to float
  %3772 = fmul fast float %3771, 0x3F70101020000000
  %3773 = and i32 %3769, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3774, 0x3F70101020000000
  %3776 = lshr i32 %3769, 8
  %3777 = and i32 %3776, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = fmul fast float %3778, 0x3F70101020000000
  %3780 = lshr i32 %3769, 16
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = fmul fast float %3782, 0x3F70101020000000
  %3784 = bitcast float %3708 to i32
  %3785 = ashr i32 %3784, 1
  %3786 = sub nsw i32 1597463174, %3785
  %3787 = bitcast i32 %3786 to float
  %3788 = fmul fast float %3708, 5.000000e-01
  %3789 = fmul fast float %3787, %3787
  %3790 = fmul fast float %3789, %3788
  %3791 = fsub fast float 1.500000e+00, %3790
  %3792 = fmul fast float %3787, %3708
  %3793 = fmul fast float %3792, %3791
  %3794 = bitcast float %3709 to i32
  %3795 = ashr i32 %3794, 1
  %3796 = sub nsw i32 1597463174, %3795
  %3797 = bitcast i32 %3796 to float
  %3798 = fmul fast float %3709, 5.000000e-01
  %3799 = fmul fast float %3797, %3797
  %3800 = fmul fast float %3799, %3798
  %3801 = fsub fast float 1.500000e+00, %3800
  %3802 = fmul fast float %3797, %3709
  %3803 = fmul fast float %3802, %3801
  %3804 = bitcast float %3710 to i32
  %3805 = ashr i32 %3804, 1
  %3806 = sub nsw i32 1597463174, %3805
  %3807 = bitcast i32 %3806 to float
  %3808 = fmul fast float %3710, 5.000000e-01
  %3809 = fmul fast float %3807, %3807
  %3810 = fmul fast float %3809, %3808
  %3811 = fsub fast float 1.500000e+00, %3810
  %3812 = fmul fast float %3807, %3710
  %3813 = fmul fast float %3812, %3811
  %3814 = fsub fast float %3793, %3775
  %3815 = fsub fast float %3803, %3779
  %3816 = fsub fast float %3813, %3783
  %3817 = fmul fast float %3814, %3743
  %3818 = fmul fast float %3815, %3745
  %3819 = fmul fast float %3816, %3750
  %3820 = fadd fast float %3817, %3758
  %3821 = fadd fast float %3818, %3762
  %3822 = fadd fast float %3819, %3766
  %3823 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = fmul fast float %3823, %3823
  %3827 = fmul fast float %3824, %3824
  %3828 = fmul fast float %3825, %3825
  %3829 = fsub fast float %3826, %3708
  %3830 = fsub fast float %3827, %3709
  %3831 = fsub fast float %3828, %3710
  %3832 = fmul fast float %3829, %3733
  %3833 = fmul fast float %3830, %3733
  %3834 = fmul fast float %3831, %3733
  %3835 = fadd fast float %3832, %3708
  %3836 = fadd fast float %3833, %3709
  %3837 = fadd fast float %3834, %3710
  %3838 = fadd fast float %3755, %3719
  %3839 = fsub fast float %3838, %3772
  %3840 = call float @dx.op.unary.f32(i32 7, float %3839)  ; Saturate(value)
  %3841 = fsub fast float %3840, %3719
  %3842 = fmul fast float %3841, %3733
  %3843 = fadd fast float %3842, %3719
  br label %3897

; <label>:3844                                    ; preds = %3732
  %3845 = and i32 %3735, 134217728
  %3846 = icmp eq i32 %3845, 0
  br i1 %3846, label %3881, label %3847

; <label>:3847                                    ; preds = %3844
  %3848 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %3849 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %3850 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3851 = fadd fast float %3848, -5.000000e-01
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fadd fast float %3850, -5.000000e-01
  %3854 = fmul fast float %3851, %3733
  %3855 = fmul fast float %3852, %3733
  %3856 = fmul fast float %3853, %3733
  %3857 = fadd fast float %3854, 5.000000e-01
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = fadd fast float %3856, 5.000000e-01
  %3860 = call float @dx.op.unary.f32(i32 24, float %3708)  ; Sqrt(value)
  %3861 = call float @dx.op.unary.f32(i32 24, float %3709)  ; Sqrt(value)
  %3862 = call float @dx.op.unary.f32(i32 24, float %3710)  ; Sqrt(value)
  %3863 = fmul fast float %3857, 2.000000e+00
  %3864 = fsub fast float 1.000000e+00, %3863
  %3865 = fmul fast float %3864, %3860
  %3866 = fadd fast float %3865, %3863
  %3867 = fmul fast float %3866, %3860
  %3868 = fmul fast float %3858, 2.000000e+00
  %3869 = fsub fast float 1.000000e+00, %3868
  %3870 = fmul fast float %3869, %3861
  %3871 = fadd fast float %3870, %3868
  %3872 = fmul fast float %3871, %3861
  %3873 = fmul fast float %3859, 2.000000e+00
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3874, %3862
  %3876 = fadd fast float %3875, %3873
  %3877 = fmul fast float %3876, %3862
  %3878 = fmul fast float %3867, %3867
  %3879 = fmul fast float %3872, %3872
  %3880 = fmul fast float %3877, %3877
  br label %3897

; <label>:3881                                    ; preds = %3844
  %3882 = fmul fast float %404, %404
  %3883 = fmul fast float %408, %408
  %3884 = fmul fast float %412, %412
  %3885 = fadd fast float %3882, -1.000000e+00
  %3886 = fadd fast float %3883, -1.000000e+00
  %3887 = fadd fast float %3884, -1.000000e+00
  %3888 = fmul fast float %3733, %3885
  %3889 = fmul fast float %3733, %3886
  %3890 = fmul fast float %3733, %3887
  %3891 = fadd fast float %3888, 1.000000e+00
  %3892 = fadd fast float %3889, 1.000000e+00
  %3893 = fadd fast float %3890, 1.000000e+00
  %3894 = fmul fast float %3891, %3708
  %3895 = fmul fast float %3892, %3709
  %3896 = fmul fast float %3893, %3710
  br label %3897

; <label>:3897                                    ; preds = %3881, %3847, %3738, %3694
  %3898 = phi float [ %3843, %3738 ], [ %3719, %3847 ], [ %3719, %3881 ], [ 0x3FA23C0BE0000000, %3694 ]
  %3899 = phi float [ %3835, %3738 ], [ %3878, %3847 ], [ %3894, %3881 ], [ 1.000000e+00, %3694 ]
  %3900 = phi float [ %3836, %3738 ], [ %3879, %3847 ], [ %3895, %3881 ], [ 1.000000e+00, %3694 ]
  %3901 = phi float [ %3837, %3738 ], [ %3880, %3847 ], [ %3896, %3881 ], [ 1.000000e+00, %3694 ]
  %3902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.i32 %3902, 1
  %3904 = and i32 %3903, 1
  %3905 = icmp ne i32 %3904, 0
  %3906 = add i32 %54, 356
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = and i32 %3908, 32
  %3910 = icmp ne i32 %3909, 0
  %3911 = and i1 %3905, %3910
  %3912 = select i1 %3911, float 1.000000e+00, float %3899
  %3913 = select i1 %3911, float 0x3FD3333340000000, float %3900
  %3914 = select i1 %3911, float 0x3FD3333340000000, float %3901
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = and i32 %3916, 32
  %3918 = icmp eq i32 %3917, 0
  br i1 %3918, label %3991, label %3919

; <label>:3919                                    ; preds = %3897
  %3920 = add i32 %54, 140
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = add i32 %54, 436
  %3924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.i32 %3924, 0
  %3926 = add i32 %3925, 0
  %3927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3927, %dx.types.Handle %96, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = and i32 %3922, 255
  %3934 = uitofp i32 %3933 to float
  %3935 = lshr i32 %3922, 8
  %3936 = and i32 %3935, 255
  %3937 = uitofp i32 %3936 to float
  %3938 = lshr i32 %3922, 16
  %3939 = and i32 %3938, 255
  %3940 = uitofp i32 %3939 to float
  %3941 = fmul fast float %3940, 0x3F70101000000000
  %3942 = fmul fast float %3929, %3934
  %3943 = fadd fast float %3942, %3937
  %3944 = fmul fast float %3943, 0x3F70101000000000
  %3945 = fadd fast float %3930, -5.000000e-01
  %3946 = fadd fast float %3932, -5.000000e-01
  %3947 = fmul fast float %3945, %3941
  %3948 = fmul fast float %3946, %3941
  %3949 = fadd fast float %3947, 5.000000e-01
  %3950 = fadd fast float %3948, 5.000000e-01
  %3951 = fmul fast float %3949, 2.000000e+00
  %3952 = fadd fast float %3951, -1.000000e+00
  %3953 = fmul fast float %3950, 2.000000e+00
  %3954 = fadd fast float %3953, -1.000000e+00
  %3955 = fadd fast float %3952, %3954
  %3956 = fmul fast float %3955, 5.000000e-01
  %3957 = fsub fast float %3952, %3954
  %3958 = fmul fast float %3957, 5.000000e-01
  %3959 = call float @dx.op.unary.f32(i32 6, float %3956)  ; FAbs(value)
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3962 = fsub fast float %3960, %3961
  %3963 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3958, float %3962, float %3956, float %3958, float %3962)  ; Dot3(ax,ay,az,bx,by,bz)
  %3964 = call float @dx.op.unary.f32(i32 25, float %3963)  ; Rsqrt(value)
  %3965 = fmul fast float %3956, %3964
  %3966 = fmul fast float %3958, %3964
  %3967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.i32 %3967, 0
  %3969 = and i32 %3968, 67108864
  %3970 = icmp eq i32 %3969, 0
  br i1 %3970, label %3987, label %3971

; <label>:3971                                    ; preds = %3919
  %3972 = add i32 %54, 328
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = and i32 %3974, 65535
  %3976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3975)  ; LegacyF16ToF32(value)
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = and i32 %3978, 65535
  %3980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3979)  ; LegacyF16ToF32(value)
  %3981 = lshr i32 %3974, 16
  %3982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3981)  ; LegacyF16ToF32(value)
  %3983 = fsub fast float %3944, %3982
  %3984 = fmul fast float %3983, %3976
  %3985 = fadd fast float %3984, %3980
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  br label %3987

; <label>:3987                                    ; preds = %3971, %3919
  %3988 = phi float [ %3986, %3971 ], [ %3944, %3919 ]
  %3989 = call float @dx.op.dot2.f32(i32 54, float %3965, float %3966, float %3408, float %3409)  ; Dot2(ax,ay,bx,by)
  %3990 = call float @dx.op.dot2.f32(i32 54, float %3965, float %3966, float %3410, float %3411)  ; Dot2(ax,ay,bx,by)
  br label %3991

; <label>:3991                                    ; preds = %3987, %3897
  %3992 = phi float [ %3988, %3987 ], [ 0x3FD6666660000000, %3897 ]
  %3993 = phi float [ %3989, %3987 ], [ 0.000000e+00, %3897 ]
  %3994 = phi float [ %3990, %3987 ], [ 0.000000e+00, %3897 ]
  %3995 = phi float [ %3931, %3987 ], [ 1.000000e+00, %3897 ]
  %3996 = add i32 %54, 208
  %3997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.i32 %3997, 0
  %3999 = lshr i32 %3998, 22
  %4000 = shl nuw nsw i32 %3999, 5
  %4001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4000)  ; LegacyF16ToF32(value)
  %4002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.i32 %4002, 0
  %4004 = and i32 %4003, 64
  %4005 = icmp eq i32 %4004, 0
  br i1 %4005, label %4039, label %4006

; <label>:4006                                    ; preds = %3991
  %4007 = add i32 %54, 452
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = add i32 %4009, 0
  %4011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 131072
  %4015 = icmp eq i32 %4014, 0
  %4016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4011, %dx.types.Handle %96, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = fmul fast float %4017, %392
  %4021 = fmul fast float %4018, %395
  %4022 = fmul fast float %4019, %398
  br i1 %4015, label %4029, label %4023

; <label>:4023                                    ; preds = %4006
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = fmul fast float %4025, %4020
  %4027 = fmul fast float %4025, %4021
  %4028 = fmul fast float %4025, %4022
  br label %4029

; <label>:4029                                    ; preds = %4023, %4006
  %4030 = phi float [ %4026, %4023 ], [ %4020, %4006 ]
  %4031 = phi float [ %4027, %4023 ], [ %4021, %4006 ]
  %4032 = phi float [ %4028, %4023 ], [ %4022, %4006 ]
  %4033 = fmul fast float %4030, %4001
  %4034 = select i1 %249, float %4033, float %4030
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4031, float %4032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = select i1 %249, float 0.000000e+00, float %4030
  %4037 = select i1 %249, float %4035, float %4031
  %4038 = select i1 %249, float 0.000000e+00, float %4032
  br label %4039

; <label>:4039                                    ; preds = %4029, %3991
  %4040 = phi float [ %4036, %4029 ], [ 0.000000e+00, %3991 ]
  %4041 = phi float [ %4037, %4029 ], [ 0.000000e+00, %3991 ]
  %4042 = phi float [ %4038, %4029 ], [ 0.000000e+00, %3991 ]
  %4043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.i32 %4043, 0
  %4045 = and i32 %4044, 1024
  %4046 = icmp eq i32 %4045, 0
  br i1 %4046, label %4077, label %4047

; <label>:4047                                    ; preds = %4039
  %4048 = add i32 %54, 200
  %4049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.i32 %4049, 0
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = fmul fast float %4052, 0x3F70101020000000
  %4054 = lshr i32 %4050, 8
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = fmul fast float %4056, 0x3F70101020000000
  %4058 = lshr i32 %4050, 16
  %4059 = and i32 %4058, 255
  %4060 = uitofp i32 %4059 to float
  %4061 = fmul fast float %4060, 0x3F70101020000000
  %4062 = fmul fast float %4053, %4053
  %4063 = fmul fast float %4057, %4057
  %4064 = fmul fast float %4061, %4061
  %4065 = add i32 %54, 516
  %4066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4065, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.i32 %4066, 0
  %4068 = add i32 %4067, 0
  %4069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4069, %dx.types.Handle %97, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4071 = extractvalue %dx.types.ResRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.ResRet.f32 %4070, 1
  %4073 = extractvalue %dx.types.ResRet.f32 %4070, 2
  %4074 = fmul fast float %4062, %4071
  %4075 = fmul fast float %4063, %4072
  %4076 = fmul fast float %4064, %4073
  br label %4077

; <label>:4077                                    ; preds = %4047, %4039
  %4078 = phi float [ %4074, %4047 ], [ 0.000000e+00, %4039 ]
  %4079 = phi float [ %4075, %4047 ], [ 0.000000e+00, %4039 ]
  %4080 = phi float [ %4076, %4047 ], [ 0.000000e+00, %4039 ]
  %4081 = fcmp fast ogt float %4078, 0.000000e+00
  %4082 = fcmp fast ogt float %4079, 0.000000e+00
  %4083 = fcmp fast ogt float %4080, 0.000000e+00
  %4084 = call float @dx.op.unary.f32(i32 23, float %4078)  ; Log(value)
  %4085 = call float @dx.op.unary.f32(i32 23, float %4079)  ; Log(value)
  %4086 = call float @dx.op.unary.f32(i32 23, float %4080)  ; Log(value)
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = lshr i32 %4088, 7
  %4090 = and i32 %4089, 32752
  %4091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4090)  ; LegacyF16ToF32(value)
  %4092 = fmul fast float %4084, 0xBFE62E4300000000
  %4093 = fmul fast float %4092, %4091
  %4094 = fmul fast float %4085, 0xBFE62E4300000000
  %4095 = fmul fast float %4094, %4091
  %4096 = fmul fast float %4086, 0xBFE62E4300000000
  %4097 = fmul fast float %4096, %4091
  %4098 = select i1 %4081, float %4093, float 1.270000e+02
  %4099 = select i1 %4082, float %4095, float 1.270000e+02
  %4100 = select i1 %4083, float %4097, float 1.270000e+02
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = and i32 %4102, 10240
  %4104 = icmp eq i32 %4103, 0
  br i1 %4104, label %4149, label %4105

; <label>:4105                                    ; preds = %4077
  %4106 = add i32 %54, 532
  %4107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.i32 %4107, 0
  %4109 = add i32 %4108, 0
  %4110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4110, %dx.types.Handle %97, float %3504, float %3505, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4111, 3
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = and i32 %4115, 1048576
  %4117 = icmp ne i32 %4116, 0
  %4118 = and i32 %4115, 8192
  %4119 = icmp eq i32 %4118, 0
  br i1 %4119, label %4135, label %4120

; <label>:4120                                    ; preds = %4105
  %4121 = extractvalue %dx.types.ResRet.f32 %4111, 2
  %4122 = select i1 %4117, float %4121, float %4112
  %4123 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4124 = select i1 %4117, float %4123, float %4112
  %4125 = add i32 %54, 144
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = lshr i32 %4127, 16
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = fmul fast float %4130, 0x3F80101020000000
  %4132 = fmul fast float %4131, %4124
  %4133 = fmul fast float %4131, %4112
  %4134 = fmul fast float %4131, %4122
  br label %4135

; <label>:4135                                    ; preds = %4120, %4105
  %4136 = phi float [ %4132, %4120 ], [ 0.000000e+00, %4105 ]
  %4137 = phi float [ %4133, %4120 ], [ 0.000000e+00, %4105 ]
  %4138 = phi float [ %4134, %4120 ], [ 0.000000e+00, %4105 ]
  %4139 = and i32 %4115, 2048
  %4140 = icmp eq i32 %4139, 0
  br i1 %4140, label %4149, label %4141

; <label>:4141                                    ; preds = %4135
  %4142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.i32 %4142, 0
  %4144 = shl i32 %4143, 4
  %4145 = and i32 %4144, 32752
  %4146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4145)  ; LegacyF16ToF32(value)
  %4147 = fmul fast float %4146, %4113
  %4148 = call float @dx.op.binary.f32(i32 35, float %4147, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4149

; <label>:4149                                    ; preds = %4141, %4135, %4077
  %4150 = phi float [ %4136, %4141 ], [ %4136, %4135 ], [ 0.000000e+00, %4077 ]
  %4151 = phi float [ %4137, %4141 ], [ %4137, %4135 ], [ 0.000000e+00, %4077 ]
  %4152 = phi float [ %4138, %4141 ], [ %4138, %4135 ], [ 0.000000e+00, %4077 ]
  %4153 = phi float [ %4148, %4141 ], [ 0x3F70101020000000, %4135 ], [ 0x3F70101020000000, %4077 ]
  %4154 = add i32 %54, 144
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = and i32 %4156, 255
  %4158 = uitofp i32 %4157 to float
  %4159 = lshr i32 %4156, 8
  %4160 = and i32 %4159, 255
  %4161 = uitofp i32 %4160 to float
  %4162 = call float @dx.op.dot3.f32(i32 55, float %3912, float %3913, float %3914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4163 = fmul fast float %4161, %4162
  %4164 = fadd fast float %4163, %4158
  %4165 = fmul fast float %4164, 0x3F70101020000000
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  br i1 %3396, label %4167, label %4202

; <label>:4167                                    ; preds = %4149
  %4168 = fmul fast float %4153, 2.000000e+00
  %4169 = fcmp fast olt float %4098, 1.270000e+02
  %4170 = fcmp fast olt float %4099, 1.270000e+02
  %4171 = fcmp fast olt float %4100, 1.270000e+02
  %4172 = fmul fast float %4098, 0xBFF7154760000000
  %4173 = fmul fast float %4172, %4168
  %4174 = fmul fast float %4099, 0xBFF7154760000000
  %4175 = fmul fast float %4174, %4168
  %4176 = fmul fast float %4100, 0xBFF7154760000000
  %4177 = fmul fast float %4176, %4168
  %4178 = call float @dx.op.unary.f32(i32 21, float %4173)  ; Exp(value)
  %4179 = call float @dx.op.unary.f32(i32 21, float %4175)  ; Exp(value)
  %4180 = call float @dx.op.unary.f32(i32 21, float %4177)  ; Exp(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = fadd fast float %4181, -1.000000e+00
  %4185 = select i1 %4169, float %4184, float -1.000000e+00
  %4186 = fadd fast float %4182, -1.000000e+00
  %4187 = select i1 %4170, float %4186, float -1.000000e+00
  %4188 = fadd fast float %4183, -1.000000e+00
  %4189 = select i1 %4171, float %4188, float -1.000000e+00
  %4190 = fmul fast float %4185, %3692
  %4191 = fmul fast float %4187, %3692
  %4192 = fmul fast float %4189, %3692
  %4193 = fadd fast float %4190, 1.000000e+00
  %4194 = fadd fast float %4191, 1.000000e+00
  %4195 = fadd fast float %4192, 1.000000e+00
  %4196 = fmul fast float %4193, %3378
  %4197 = fmul fast float %4194, %3379
  %4198 = fmul fast float %4195, %3380
  %4199 = fmul fast float %4193, %3384
  %4200 = fmul fast float %4194, %3385
  %4201 = fmul fast float %4195, %3386
  br label %4202

; <label>:4202                                    ; preds = %4167, %4149
  %4203 = phi float [ %4196, %4167 ], [ %3378, %4149 ]
  %4204 = phi float [ %4197, %4167 ], [ %3379, %4149 ]
  %4205 = phi float [ %4198, %4167 ], [ %3380, %4149 ]
  %4206 = phi float [ %4199, %4167 ], [ %3384, %4149 ]
  %4207 = phi float [ %4200, %4167 ], [ %3385, %4149 ]
  %4208 = phi float [ %4201, %4167 ], [ %3386, %4149 ]
  %4209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.i32 %4209, 0
  %4211 = and i32 %4210, 3
  %4212 = icmp eq i32 %4211, 3
  br i1 %4212, label %4291, label %4213

; <label>:4213                                    ; preds = %4202
  %4214 = and i32 %4210, 16
  %4215 = icmp ne i32 %4214, 0
  %4216 = select i1 %4215, float %3692, float 0.000000e+00
  %4217 = icmp eq i32 %4211, 0
  br i1 %4217, label %4218, label %4246

; <label>:4218                                    ; preds = %4213
  %4219 = and i32 %4210, 64
  %4220 = icmp ne i32 %4219, 0
  %4221 = select i1 %4220, float %3692, float 0.000000e+00
  %4222 = fsub fast float %3912, %4203
  %4223 = fsub fast float %3913, %4204
  %4224 = fsub fast float %3914, %4205
  %4225 = fmul fast float %4216, %4222
  %4226 = fmul fast float %4216, %4223
  %4227 = fmul fast float %4216, %4224
  %4228 = fadd fast float %4225, %4203
  %4229 = fadd fast float %4226, %4204
  %4230 = fadd fast float %4227, %4205
  %4231 = fsub fast float %3898, %3390
  %4232 = fmul fast float %4216, %4231
  %4233 = fadd fast float %4232, %3390
  %4234 = fsub fast float %4040, %4206
  %4235 = fsub fast float %4041, %4207
  %4236 = fsub fast float %4042, %4208
  %4237 = fmul fast float %4221, %4234
  %4238 = fmul fast float %4221, %4235
  %4239 = fmul fast float %4221, %4236
  %4240 = fadd fast float %4237, %4206
  %4241 = fadd fast float %4238, %4207
  %4242 = fadd fast float %4239, %4208
  %4243 = fsub fast float %4166, %3394
  %4244 = fmul fast float %4216, %4243
  %4245 = fadd fast float %4244, %3394
  br label %4291

; <label>:4246                                    ; preds = %4213
  %4247 = icmp eq i32 %4211, 1
  br i1 %4247, label %4248, label %4261

; <label>:4248                                    ; preds = %4246
  %4249 = fadd fast float %3912, -1.000000e+00
  %4250 = fadd fast float %3913, -1.000000e+00
  %4251 = fadd fast float %3914, -1.000000e+00
  %4252 = fmul fast float %4216, %4249
  %4253 = fmul fast float %4216, %4250
  %4254 = fmul fast float %4216, %4251
  %4255 = fadd fast float %4252, 1.000000e+00
  %4256 = fadd fast float %4253, 1.000000e+00
  %4257 = fadd fast float %4254, 1.000000e+00
  %4258 = fmul fast float %4255, %4203
  %4259 = fmul fast float %4256, %4204
  %4260 = fmul fast float %4257, %4205
  br label %4291

; <label>:4261                                    ; preds = %4246
  %4262 = icmp eq i32 %4211, 2
  br i1 %4262, label %4263, label %4291

; <label>:4263                                    ; preds = %4261
  %4264 = call float @dx.op.unary.f32(i32 24, float %3912)  ; Sqrt(value)
  %4265 = call float @dx.op.unary.f32(i32 24, float %3913)  ; Sqrt(value)
  %4266 = call float @dx.op.unary.f32(i32 24, float %3914)  ; Sqrt(value)
  %4267 = fadd fast float %4264, -5.000000e-01
  %4268 = fadd fast float %4265, -5.000000e-01
  %4269 = fadd fast float %4266, -5.000000e-01
  %4270 = fmul fast float %4267, %4216
  %4271 = fmul fast float %4268, %4216
  %4272 = fmul fast float %4269, %4216
  %4273 = fadd fast float %4270, 5.000000e-01
  %4274 = fadd fast float %4271, 5.000000e-01
  %4275 = fadd fast float %4272, 5.000000e-01
  %4276 = fmul fast float %4273, 2.000000e+00
  %4277 = fsub fast float 1.000000e+00, %4276
  %4278 = fmul fast float %4277, %4203
  %4279 = fadd fast float %4278, %4276
  %4280 = fmul fast float %4279, %4203
  %4281 = fmul fast float %4274, 2.000000e+00
  %4282 = fsub fast float 1.000000e+00, %4281
  %4283 = fmul fast float %4282, %4204
  %4284 = fadd fast float %4283, %4281
  %4285 = fmul fast float %4284, %4204
  %4286 = fmul fast float %4275, 2.000000e+00
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = fmul fast float %4287, %4205
  %4289 = fadd fast float %4288, %4286
  %4290 = fmul fast float %4289, %4205
  br label %4291

; <label>:4291                                    ; preds = %4263, %4261, %4248, %4218, %4202
  %4292 = phi float [ %4203, %4202 ], [ %4280, %4263 ], [ %4203, %4261 ], [ %4258, %4248 ], [ %4228, %4218 ]
  %4293 = phi float [ %4204, %4202 ], [ %4285, %4263 ], [ %4204, %4261 ], [ %4259, %4248 ], [ %4229, %4218 ]
  %4294 = phi float [ %4205, %4202 ], [ %4290, %4263 ], [ %4205, %4261 ], [ %4260, %4248 ], [ %4230, %4218 ]
  %4295 = phi float [ %4206, %4202 ], [ %4206, %4263 ], [ %4206, %4261 ], [ %4206, %4248 ], [ %4240, %4218 ]
  %4296 = phi float [ %4207, %4202 ], [ %4207, %4263 ], [ %4207, %4261 ], [ %4207, %4248 ], [ %4241, %4218 ]
  %4297 = phi float [ %4208, %4202 ], [ %4208, %4263 ], [ %4208, %4261 ], [ %4208, %4248 ], [ %4242, %4218 ]
  %4298 = phi float [ %3390, %4202 ], [ %3390, %4263 ], [ %3390, %4261 ], [ %3390, %4248 ], [ %4233, %4218 ]
  %4299 = phi float [ %3394, %4202 ], [ %3394, %4263 ], [ %3394, %4261 ], [ %3394, %4248 ], [ %4245, %4218 ]
  %4300 = and i32 %4210, 12
  %4301 = icmp eq i32 %4300, 12
  br i1 %4301, label %4432, label %4302

; <label>:4302                                    ; preds = %4291
  %4303 = and i32 %4210, 2097184
  %4304 = icmp eq i32 %4303, 2097184
  %4305 = select i1 %4304, float %3692, float 0.000000e+00
  %4306 = and i32 %4210, 4194336
  %4307 = icmp eq i32 %4306, 4194336
  %4308 = select i1 %4307, float %3692, float 0.000000e+00
  %4309 = and i32 %4210, 8388640
  %4310 = icmp eq i32 %4309, 8388640
  %4311 = select i1 %4310, float %3692, float 0.000000e+00
  %4312 = and i32 %4210, 1024
  %4313 = icmp ne i32 %4312, 0
  %4314 = select i1 %4313, float %3692, float 0.000000e+00
  %4315 = and i32 %4210, 2048
  %4316 = icmp ne i32 %4315, 0
  %4317 = select i1 %4316, float %3692, float 0.000000e+00
  %4318 = and i32 %4210, 8192
  %4319 = icmp ne i32 %4318, 0
  %4320 = select i1 %4319, float %3692, float 0.000000e+00
  %4321 = icmp eq i32 %4300, 0
  br i1 %4321, label %4322, label %4356

; <label>:4322                                    ; preds = %4302
  %4323 = fsub fast float %3993, %3376
  %4324 = fsub fast float %3994, %3377
  %4325 = fmul fast float %4305, %4323
  %4326 = fmul fast float %4305, %4324
  %4327 = fadd fast float %4325, %3376
  %4328 = fadd fast float %4326, %3377
  %4329 = fsub fast float %3995, %3392
  %4330 = fmul fast float %4308, %4329
  %4331 = fadd fast float %4330, %3392
  %4332 = fsub fast float %3992, %3391
  %4333 = fmul fast float %4311, %4332
  %4334 = fadd fast float %4333, %3391
  %4335 = fsub fast float %4098, %3387
  %4336 = fsub fast float %4099, %3388
  %4337 = fsub fast float %4100, %3389
  %4338 = fmul fast float %4314, %4335
  %4339 = fmul fast float %4314, %4336
  %4340 = fmul fast float %4314, %4337
  %4341 = fadd fast float %4338, %3387
  %4342 = fadd fast float %4339, %3388
  %4343 = fadd fast float %4340, %3389
  %4344 = fsub fast float %4153, %3393
  %4345 = fmul fast float %4317, %4344
  %4346 = fadd fast float %4345, %3393
  %4347 = fsub fast float %4150, %3381
  %4348 = fsub fast float %4151, %3382
  %4349 = fsub fast float %4152, %3383
  %4350 = fmul fast float %4320, %4347
  %4351 = fmul fast float %4320, %4348
  %4352 = fmul fast float %4320, %4349
  %4353 = fadd fast float %4350, %3381
  %4354 = fadd fast float %4351, %3382
  %4355 = fadd fast float %4352, %3383
  br label %4432

; <label>:4356                                    ; preds = %4302
  %4357 = icmp eq i32 %4300, 4
  br i1 %4357, label %4358, label %4404

; <label>:4358                                    ; preds = %4356
  %4359 = fmul fast float %4305, %3993
  %4360 = fmul fast float %4305, %3994
  %4361 = fadd fast float %4359, %3376
  %4362 = fadd fast float %4360, %3377
  %4363 = call float @dx.op.binary.f32(i32 36, float %3392, float %3995)  ; FMin(a,b)
  %4364 = fsub fast float %4363, %3392
  %4365 = fmul fast float %4364, %4308
  %4366 = fadd fast float %4365, %3392
  %4367 = fadd fast float %3992, %3391
  %4368 = fmul fast float %4367, 0x3FF337FAE0000000
  %4369 = fmul fast float %3391, %3391
  %4370 = fmul fast float %3992, %3992
  %4371 = fadd fast float %4370, %4369
  %4372 = fmul fast float %4371, 0x3FE5152B00000000
  %4373 = fmul fast float %3391, 0xBFCC1F85E0000000
  %4374 = fmul fast float %4373, %3992
  %4375 = fadd fast float %4374, 0xBFE1363700000000
  %4376 = fadd fast float %4375, %4368
  %4377 = fsub fast float %4376, %4372
  %4378 = fmul fast float %4367, 0x3FBA6F0D00000000
  %4379 = fmul fast float %4371, 0x3FD0432880000000
  %4380 = fmul fast float %3391, 0xBFEF110800000000
  %4381 = fmul fast float %4380, %3992
  %4382 = fadd fast float %4381, 1.000000e+00
  %4383 = fsub fast float %4382, %4378
  %4384 = fadd fast float %4383, %4379
  %4385 = fdiv fast float %4377, %4384
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fsub fast float %4386, %3391
  %4388 = fmul fast float %4387, %4311
  %4389 = fadd fast float %4388, %3391
  %4390 = fmul fast float %4314, %4098
  %4391 = fmul fast float %4314, %4099
  %4392 = fmul fast float %4314, %4100
  %4393 = fadd fast float %4390, %3387
  %4394 = fadd fast float %4391, %3388
  %4395 = fadd fast float %4392, %3389
  %4396 = fmul fast float %4317, %4153
  %4397 = fadd fast float %4396, %3393
  %4398 = fmul fast float %4320, %4150
  %4399 = fmul fast float %4320, %4151
  %4400 = fmul fast float %4320, %4152
  %4401 = fadd fast float %4398, %3381
  %4402 = fadd fast float %4399, %3382
  %4403 = fadd fast float %4400, %3383
  br label %4432

; <label>:4404                                    ; preds = %4356
  %4405 = icmp eq i32 %4300, 8
  br i1 %4405, label %4406, label %4432

; <label>:4406                                    ; preds = %4404
  %4407 = fmul fast float %4305, %3993
  %4408 = fmul fast float %4305, %3994
  %4409 = fadd fast float %4407, %3376
  %4410 = fadd fast float %4408, %3377
  %4411 = call float @dx.op.binary.f32(i32 36, float %3392, float %3995)  ; FMin(a,b)
  %4412 = fsub fast float %4411, %3392
  %4413 = fmul fast float %4412, %4308
  %4414 = fadd fast float %4413, %3392
  %4415 = fsub fast float %3992, %3391
  %4416 = fmul fast float %4311, %4415
  %4417 = fadd fast float %4416, %3391
  %4418 = fmul fast float %4314, %4098
  %4419 = fmul fast float %4314, %4099
  %4420 = fmul fast float %4314, %4100
  %4421 = fadd fast float %4418, %3387
  %4422 = fadd fast float %4419, %3388
  %4423 = fadd fast float %4420, %3389
  %4424 = fmul fast float %4317, %4153
  %4425 = fadd fast float %4424, %3393
  %4426 = fmul fast float %4320, %4150
  %4427 = fmul fast float %4320, %4151
  %4428 = fmul fast float %4320, %4152
  %4429 = fadd fast float %4426, %3381
  %4430 = fadd fast float %4427, %3382
  %4431 = fadd fast float %4428, %3383
  br label %4432

; <label>:4432                                    ; preds = %4406, %4404, %4358, %4322, %4291, %3691, %3395, %3375
  %4433 = phi float [ %3376, %4291 ], [ %3376, %3691 ], [ %3376, %3375 ], [ %3376, %3395 ], [ %4327, %4322 ], [ %4361, %4358 ], [ %3376, %4404 ], [ %4409, %4406 ]
  %4434 = phi float [ %3377, %4291 ], [ %3377, %3691 ], [ %3377, %3375 ], [ %3377, %3395 ], [ %4328, %4322 ], [ %4362, %4358 ], [ %3377, %4404 ], [ %4410, %4406 ]
  %4435 = phi float [ %4292, %4291 ], [ %3378, %3691 ], [ %3378, %3375 ], [ %3378, %3395 ], [ %4292, %4322 ], [ %4292, %4358 ], [ %4292, %4404 ], [ %4292, %4406 ]
  %4436 = phi float [ %4293, %4291 ], [ %3379, %3691 ], [ %3379, %3375 ], [ %3379, %3395 ], [ %4293, %4322 ], [ %4293, %4358 ], [ %4293, %4404 ], [ %4293, %4406 ]
  %4437 = phi float [ %4294, %4291 ], [ %3380, %3691 ], [ %3380, %3375 ], [ %3380, %3395 ], [ %4294, %4322 ], [ %4294, %4358 ], [ %4294, %4404 ], [ %4294, %4406 ]
  %4438 = phi float [ %3381, %4291 ], [ %3381, %3691 ], [ %3381, %3375 ], [ %3381, %3395 ], [ %4353, %4322 ], [ %4401, %4358 ], [ %3381, %4404 ], [ %4429, %4406 ]
  %4439 = phi float [ %3382, %4291 ], [ %3382, %3691 ], [ %3382, %3375 ], [ %3382, %3395 ], [ %4354, %4322 ], [ %4402, %4358 ], [ %3382, %4404 ], [ %4430, %4406 ]
  %4440 = phi float [ %3383, %4291 ], [ %3383, %3691 ], [ %3383, %3375 ], [ %3383, %3395 ], [ %4355, %4322 ], [ %4403, %4358 ], [ %3383, %4404 ], [ %4431, %4406 ]
  %4441 = phi float [ %4295, %4291 ], [ %3384, %3691 ], [ %3384, %3375 ], [ %3384, %3395 ], [ %4295, %4322 ], [ %4295, %4358 ], [ %4295, %4404 ], [ %4295, %4406 ]
  %4442 = phi float [ %4296, %4291 ], [ %3385, %3691 ], [ %3385, %3375 ], [ %3385, %3395 ], [ %4296, %4322 ], [ %4296, %4358 ], [ %4296, %4404 ], [ %4296, %4406 ]
  %4443 = phi float [ %4297, %4291 ], [ %3386, %3691 ], [ %3386, %3375 ], [ %3386, %3395 ], [ %4297, %4322 ], [ %4297, %4358 ], [ %4297, %4404 ], [ %4297, %4406 ]
  %4444 = phi float [ %3387, %4291 ], [ %3387, %3691 ], [ %3387, %3375 ], [ %3387, %3395 ], [ %4341, %4322 ], [ %4393, %4358 ], [ %3387, %4404 ], [ %4421, %4406 ]
  %4445 = phi float [ %3388, %4291 ], [ %3388, %3691 ], [ %3388, %3375 ], [ %3388, %3395 ], [ %4342, %4322 ], [ %4394, %4358 ], [ %3388, %4404 ], [ %4422, %4406 ]
  %4446 = phi float [ %3389, %4291 ], [ %3389, %3691 ], [ %3389, %3375 ], [ %3389, %3395 ], [ %4343, %4322 ], [ %4395, %4358 ], [ %3389, %4404 ], [ %4423, %4406 ]
  %4447 = phi float [ %4298, %4291 ], [ %3390, %3691 ], [ %3390, %3375 ], [ %3390, %3395 ], [ %4298, %4322 ], [ %4298, %4358 ], [ %4298, %4404 ], [ %4298, %4406 ]
  %4448 = phi float [ %3391, %4291 ], [ %3391, %3691 ], [ %3391, %3375 ], [ %3391, %3395 ], [ %4334, %4322 ], [ %4389, %4358 ], [ %3391, %4404 ], [ %4417, %4406 ]
  %4449 = phi float [ %3392, %4291 ], [ %3392, %3691 ], [ %3392, %3375 ], [ %3392, %3395 ], [ %4331, %4322 ], [ %4366, %4358 ], [ %3392, %4404 ], [ %4414, %4406 ]
  %4450 = phi float [ %3393, %4291 ], [ %3393, %3691 ], [ %3393, %3375 ], [ %3393, %3395 ], [ %4346, %4322 ], [ %4397, %4358 ], [ %3393, %4404 ], [ %4425, %4406 ]
  %4451 = phi float [ %4299, %4291 ], [ %3394, %3691 ], [ %3394, %3375 ], [ %3394, %3395 ], [ %4299, %4322 ], [ %4299, %4358 ], [ %4299, %4404 ], [ %4299, %4406 ]
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = call float @dx.op.dot2.f32(i32 54, float %4433, float %4434, float %4433, float %4434)  ; Dot2(ax,ay,bx,by)
  %4455 = fmul fast float %4454, 0x3FE3333340000000
  %4456 = fsub fast float 1.000000e+00, %4455
  %4457 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4456, float %4433, float %4434, float %4456)  ; Dot3(ax,ay,az,bx,by,bz)
  %4458 = call float @dx.op.unary.f32(i32 25, float %4457)  ; Rsqrt(value)
  %4459 = fmul fast float %4458, %4433
  %4460 = fmul fast float %4458, %4434
  %4461 = fmul fast float %4456, %4458
  %4462 = fmul fast float %4461, %107
  %4463 = fmul fast float %4461, %108
  %4464 = fmul fast float %4461, %109
  %4465 = fmul fast float %4459, %75
  %4466 = fmul fast float %4459, %76
  %4467 = fmul fast float %4459, %77
  %4468 = fadd fast float %4462, %4465
  %4469 = fadd fast float %4463, %4466
  %4470 = fadd fast float %4464, %4467
  %4471 = fmul fast float %119, %4460
  %4472 = fmul fast float %120, %4460
  %4473 = fmul fast float %121, %4460
  %4474 = fadd fast float %4468, %4471
  %4475 = fadd fast float %4469, %4472
  %4476 = fadd fast float %4470, %4473
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = call float @dx.op.unary.f32(i32 25, float %4477)  ; Rsqrt(value)
  %4479 = fmul fast float %4474, %4478
  %4480 = fmul fast float %4475, %4478
  %4481 = fmul fast float %4476, %4478
  %4482 = and i32 %56, 1
  %4483 = icmp eq i32 %4482, 0
  br i1 %4483, label %4484, label %5076

; <label>:4484                                    ; preds = %4432
  %4485 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4486 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4487 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4488 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4489 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4490 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4491 = fadd fast float %4485, %155
  %4492 = fadd fast float %4486, %156
  %4493 = fadd fast float %4487, %157
  %4494 = fadd fast float %4488, %155
  %4495 = fadd fast float %4489, %156
  %4496 = fadd fast float %4490, %157
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4503 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4504 = fmul fast float %4498, %100
  %4505 = fmul fast float %4504, %4502
  %4506 = fmul fast float %4499, %101
  %4507 = fmul fast float %4506, %4503
  %4508 = fptoui float %4505 to i32
  %4509 = fptoui float %4507 to i32
  %4510 = fadd fast float %4498, -1.000000e+00
  %4511 = fadd fast float %4499, -1.000000e+00
  %4512 = fptoui float %4510 to i32
  %4513 = fptoui float %4511 to i32
  %4514 = call i32 @dx.op.binary.i32(i32 40, i32 %4508, i32 %4512)  ; UMin(a,b)
  %4515 = call i32 @dx.op.binary.i32(i32 40, i32 %4509, i32 %4513)  ; UMin(a,b)
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4516, 3
  %4519 = fmul fast float %4517, %91
  %4520 = fsub fast float %4519, %4518
  %4521 = fadd fast float %4500, -1.000000e+00
  %4522 = call float @dx.op.binary.f32(i32 36, float %4520, float %4521)  ; FMin(a,b)
  %4523 = fptoui float %4522 to i32
  %4524 = fptoui float %4498 to i32
  %4525 = fptoui float %4499 to i32
  %4526 = mul i32 %4523, %4525
  %4527 = add i32 %4526, %4515
  %4528 = mul i32 %4527, %4524
  %4529 = add i32 %4528, %4514
  %4530 = shl i32 %4529, 2
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = and i32 %4532, 1023
  %4534 = lshr i32 %4532, 10
  %4535 = icmp eq i32 %4533, 0
  br i1 %4535, label %5039, label %4536

; <label>:4536                                    ; preds = %4484
  %4537 = and i32 %4532, 1023
  br label %4538

; <label>:4538                                    ; preds = %4670, %4536
  %4539 = phi i32 [ %4620, %4670 ], [ 0, %4536 ]
  %4540 = phi float [ %4671, %4670 ], [ 0.000000e+00, %4536 ]
  %4541 = phi float [ %4672, %4670 ], [ %4453, %4536 ]
  %4542 = phi float [ %4673, %4670 ], [ %4451, %4536 ]
  %4543 = phi float [ %4674, %4670 ], [ %4444, %4536 ]
  %4544 = phi float [ %4675, %4670 ], [ %4445, %4536 ]
  %4545 = phi float [ %4676, %4670 ], [ %4446, %4536 ]
  %4546 = phi float [ %4677, %4670 ], [ 0.000000e+00, %4536 ]
  %4547 = phi float [ %4678, %4670 ], [ 0.000000e+00, %4536 ]
  %4548 = phi float [ %4679, %4670 ], [ %4438, %4536 ]
  %4549 = phi float [ %4680, %4670 ], [ %4439, %4536 ]
  %4550 = phi float [ %4681, %4670 ], [ %4440, %4536 ]
  %4551 = phi float [ %4682, %4670 ], [ %4441, %4536 ]
  %4552 = phi float [ %4683, %4670 ], [ %4442, %4536 ]
  %4553 = phi float [ %4684, %4670 ], [ %4443, %4536 ]
  %4554 = phi float [ %4685, %4670 ], [ %4479, %4536 ]
  %4555 = phi float [ %4686, %4670 ], [ %4480, %4536 ]
  %4556 = phi float [ %4687, %4670 ], [ %4481, %4536 ]
  %4557 = phi float [ %4688, %4670 ], [ %4449, %4536 ]
  %4558 = phi float [ %4689, %4670 ], [ %4448, %4536 ]
  %4559 = phi float [ %4690, %4670 ], [ 0.000000e+00, %4536 ]
  %4560 = phi float [ %4691, %4670 ], [ %4447, %4536 ]
  %4561 = phi float [ %4692, %4670 ], [ %4435, %4536 ]
  %4562 = phi float [ %4693, %4670 ], [ %4436, %4536 ]
  %4563 = phi float [ %4694, %4670 ], [ %4437, %4536 ]
  %4564 = add nuw nsw i32 %4539, %4534
  %4565 = shl i32 %4564, 2
  %4566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.i32 %4566, 0
  %4568 = shl i32 %4567, 8
  %4569 = or i32 %4568, 48
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = or i32 %4568, 64
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.i32 %4576, 1
  %4579 = or i32 %4568, 80
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4583 = or i32 %4568, 96
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4589 = or i32 %4568, 112
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 2
  %4592 = or i32 %4568, 128
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = or i32 %4568, 144
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = or i32 %4568, 160
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = or i32 %4568, 192
  %4611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.i32 %4611, 0
  %4613 = or i32 %4568, 208
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = or i32 %4568, 248
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = add nuw nsw i32 %4539, 1
  %4621 = bitcast float %4574 to i32
  %4622 = and i32 %4621, 512
  %4623 = icmp eq i32 %4622, 0
  %4624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.ResRet.f32 %4624, 2
  %4628 = extractvalue %dx.types.ResRet.f32 %4624, 3
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4625, float %4626, float %4627, float %4628, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = or i32 %4568, 16
  %4631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.f32 %4631, 3
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = or i32 %4568, 32
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.ResRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.ResRet.f32 %4638, 2
  %4642 = extractvalue %dx.types.ResRet.f32 %4638, 3
  %4643 = call float @dx.op.dot4.f32(i32 56, float %4639, float %4640, float %4641, float %4642, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4644 = call float @dx.op.unary.f32(i32 27, float %4629)  ; Round_ni(value)
  %4645 = call float @dx.op.unary.f32(i32 6, float %4644)  ; FAbs(value)
  %4646 = call float @dx.op.unary.f32(i32 27, float %4636)  ; Round_ni(value)
  %4647 = call float @dx.op.unary.f32(i32 6, float %4646)  ; FAbs(value)
  %4648 = call float @dx.op.unary.f32(i32 6, float %4643)  ; FAbs(value)
  %4649 = call float @dx.op.unary.f32(i32 27, float %4648)  ; Round_ni(value)
  %4650 = fadd fast float %4647, %4645
  %4651 = fadd fast float %4650, %4649
  %4652 = fcmp fast oeq float %4651, 0.000000e+00
  %4653 = call float @dx.op.dot4.f32(i32 56, float %4625, float %4626, float %4627, float %4628, float %4491, float %4492, float %4493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4654 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %4491, float %4492, float %4493, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4655 = call float @dx.op.dot4.f32(i32 56, float %4625, float %4626, float %4627, float %4628, float %4494, float %4495, float %4496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4656 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %4494, float %4495, float %4496, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4657 = fsub fast float %4653, %4629
  %4658 = fsub fast float %4655, %4629
  %4659 = fsub fast float %4654, %4636
  %4660 = fsub fast float %4656, %4636
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4572, float %4573, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4664 = fadd fast float %4663, %4661
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4667 = fcmp fast ogt float %4665, %4666
  %4668 = and i1 %4652, %4667
  %4669 = and i1 %4623, %4668
  br i1 %4669, label %4696, label %4670

; <label>:4670                                    ; preds = %5025, %4777, %4696, %4538
  %4671 = phi float [ %4540, %4696 ], [ %4780, %4777 ], [ %4780, %5025 ], [ %4540, %4538 ]
  %4672 = phi float [ %4541, %4696 ], [ %4541, %4777 ], [ %5001, %5025 ], [ %4541, %4538 ]
  %4673 = phi float [ %4542, %4696 ], [ %4542, %4777 ], [ %4999, %5025 ], [ %4542, %4538 ]
  %4674 = phi float [ %4543, %4696 ], [ %4543, %4777 ], [ %4977, %5025 ], [ %4543, %4538 ]
  %4675 = phi float [ %4544, %4696 ], [ %4544, %4777 ], [ %4978, %5025 ], [ %4544, %4538 ]
  %4676 = phi float [ %4545, %4696 ], [ %4545, %4777 ], [ %4979, %5025 ], [ %4545, %4538 ]
  %4677 = phi float [ %4546, %4696 ], [ %4546, %4777 ], [ %4904, %5025 ], [ %4546, %4538 ]
  %4678 = phi float [ %4547, %4696 ], [ %4547, %4777 ], [ %4902, %5025 ], [ %4547, %4538 ]
  %4679 = phi float [ %4548, %4696 ], [ %4548, %4777 ], [ %4947, %5025 ], [ %4548, %4538 ]
  %4680 = phi float [ %4549, %4696 ], [ %4549, %4777 ], [ %4948, %5025 ], [ %4549, %4538 ]
  %4681 = phi float [ %4550, %4696 ], [ %4550, %4777 ], [ %4949, %5025 ], [ %4550, %4538 ]
  %4682 = phi float [ %4551, %4696 ], [ %4551, %4777 ], [ %5035, %5025 ], [ %4551, %4538 ]
  %4683 = phi float [ %4552, %4696 ], [ %4552, %4777 ], [ %5036, %5025 ], [ %4552, %4538 ]
  %4684 = phi float [ %4553, %4696 ], [ %4553, %4777 ], [ %5037, %5025 ], [ %4553, %4538 ]
  %4685 = phi float [ %4554, %4696 ], [ %4554, %4777 ], [ %4883, %5025 ], [ %4554, %4538 ]
  %4686 = phi float [ %4555, %4696 ], [ %4555, %4777 ], [ %4884, %5025 ], [ %4555, %4538 ]
  %4687 = phi float [ %4556, %4696 ], [ %4556, %4777 ], [ %4885, %5025 ], [ %4556, %4538 ]
  %4688 = phi float [ %4557, %4696 ], [ %4557, %4777 ], [ %4957, %5025 ], [ %4557, %4538 ]
  %4689 = phi float [ %4558, %4696 ], [ %4558, %4777 ], [ %4954, %5025 ], [ %4558, %4538 ]
  %4690 = phi float [ %4559, %4696 ], [ %4559, %4777 ], [ %4951, %5025 ], [ %4559, %4538 ]
  %4691 = phi float [ %4560, %4696 ], [ %4560, %4777 ], [ %4900, %5025 ], [ %4560, %4538 ]
  %4692 = phi float [ %4561, %4696 ], [ %4561, %4777 ], [ %4895, %5025 ], [ %4561, %4538 ]
  %4693 = phi float [ %4562, %4696 ], [ %4562, %4777 ], [ %4896, %5025 ], [ %4562, %4538 ]
  %4694 = phi float [ %4563, %4696 ], [ %4563, %4777 ], [ %4897, %5025 ], [ %4563, %4538 ]
  %4695 = icmp eq i32 %4620, %4537
  br i1 %4695, label %5038, label %4538

; <label>:4696                                    ; preds = %4538
  %4697 = extractvalue %dx.types.ResRet.f32 %4590, 3
  %4698 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4702 = extractvalue %dx.types.ResRet.i32 %4576, 3
  %4703 = extractvalue %dx.types.ResRet.i32 %4576, 2
  %4704 = add i32 %4702, 0
  %4705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4705, %dx.types.Handle %4706, float %4629, float %4636, float undef, float undef, i32 0, i32 0, i32 undef, float %4657, float %4659, float undef, float %4658, float %4660, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = fmul fast float %4708, %4701
  %4710 = fadd fast float %4709, %4700
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4629, %4585
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4586, float %4636, float %4712)  ; FMad(a,b,c)
  %4714 = fadd fast float %4713, %4699
  %4715 = fmul fast float %4629, %4587
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4636, float %4715)  ; FMad(a,b,c)
  %4717 = fadd fast float %4716, %4698
  %4718 = fmul fast float %4657, %4585
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4586, float %4659, float %4718)  ; FMad(a,b,c)
  %4720 = fmul fast float %4657, %4587
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4659, float %4720)  ; FMad(a,b,c)
  %4722 = fmul fast float %4658, %4585
  %4723 = call float @dx.op.tertiary.f32(i32 46, float %4586, float %4660, float %4722)  ; FMad(a,b,c)
  %4724 = fmul fast float %4658, %4587
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %4588, float %4660, float %4724)  ; FMad(a,b,c)
  %4726 = add i32 %4703, 0
  %4727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4727, %dx.types.Handle %4706, float %4714, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4719, float %4721, float undef, float %4723, float %4725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = and i32 %4621, 1024
  %4731 = icmp ne i32 %4730, 0
  %4732 = fcmp fast ogt float %4729, 0x3FE0101020000000
  %4733 = uitofp i1 %4732 to float
  %4734 = select i1 %4731, float %4733, float %4729
  %4735 = and i32 %4621, 8192
  %4736 = icmp ne i32 %4735, 0
  %4737 = select i1 %4736, float %4697, float 1.000000e+00
  %4738 = fmul fast float %4629, 2.000000e+00
  %4739 = fadd fast float %4738, -1.000000e+00
  %4740 = call float @dx.op.unary.f32(i32 6, float %4739)  ; FAbs(value)
  %4741 = fmul fast float %4740, %4618
  %4742 = fsub fast float %4741, %4618
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4636, 2.000000e+00
  %4745 = fadd fast float %4744, -1.000000e+00
  %4746 = call float @dx.op.unary.f32(i32 6, float %4745)  ; FAbs(value)
  %4747 = fmul fast float %4746, %4619
  %4748 = fsub fast float %4747, %4619
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4648, %4581
  %4751 = fsub fast float %4750, %4581
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4711, %4737
  %4754 = fmul fast float %4753, %4708
  %4755 = fmul fast float %4754, %4743
  %4756 = fmul fast float %4755, %4734
  %4757 = fmul fast float %4756, %4749
  %4758 = fmul fast float %4757, %4752
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4761 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4762 = fsub fast float %4665, %4761
  %4763 = fmul fast float %4762, %4760
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fmul fast float %4758, %4582
  %4766 = fadd fast float %4758, %4582
  %4767 = fmul fast float %4766, %4591
  %4768 = fsub fast float %4767, %4591
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = and i32 %4621, 128
  %4771 = icmp ne i32 %4770, 0
  %4772 = select i1 %4771, float %4769, float %4765
  %4773 = fmul fast float %4772, %4764
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 0
  %4776 = fcmp fast ugt float %4773, %4775
  br i1 %4776, label %4777, label %4670

; <label>:4777                                    ; preds = %4696
  %4778 = select i1 %4736, float %4773, float 0.000000e+00
  %4779 = fadd fast float %4778, %4540
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  br i1 %4736, label %4670, label %4781

; <label>:4781                                    ; preds = %4777
  %4782 = and i32 %4621, 4
  %4783 = and i32 %4621, 8
  %4784 = add i32 %4577, 0
  %4785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4785, %dx.types.Handle %4786, float %4714, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4719, float %4721, float undef, float %4723, float %4725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.ResRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.ResRet.f32 %4787, 3
  %4792 = bitcast float %4603 to i32
  %4793 = and i32 %4792, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = lshr i32 %4792, 8
  %4796 = and i32 %4795, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = fmul fast float %4791, %4794
  %4799 = fadd fast float %4798, %4797
  %4800 = fmul fast float %4799, 0x3F70101000000000
  %4801 = add i32 %4578, 0
  %4802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4802, %dx.types.Handle %4786, float %4714, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4719, float %4721, float undef, float %4723, float %4725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = extractvalue %dx.types.ResRet.f32 %4803, 3
  %4808 = bitcast float %4597 to i32
  %4809 = and i32 %4808, 255
  %4810 = uitofp i32 %4809 to float
  %4811 = lshr i32 %4808, 8
  %4812 = and i32 %4811, 255
  %4813 = uitofp i32 %4812 to float
  %4814 = lshr i32 %4808, 16
  %4815 = and i32 %4814, 255
  %4816 = uitofp i32 %4815 to float
  %4817 = fmul fast float %4816, 0x3F70101000000000
  %4818 = fmul fast float %4804, %4810
  %4819 = fadd fast float %4818, %4813
  %4820 = fmul fast float %4819, 0x3F70101000000000
  %4821 = fadd fast float %4805, -5.000000e-01
  %4822 = fadd fast float %4807, -5.000000e-01
  %4823 = fmul fast float %4821, %4817
  %4824 = fmul fast float %4822, %4817
  %4825 = fadd fast float %4823, 5.000000e-01
  %4826 = fadd fast float %4824, 5.000000e-01
  %4827 = fmul fast float %4788, %4606
  %4828 = fmul fast float %4789, %4607
  %4829 = fmul fast float %4790, %4608
  %4830 = fmul fast float %4825, 2.000000e+00
  %4831 = fadd fast float %4830, -1.000000e+00
  %4832 = fmul fast float %4826, 2.000000e+00
  %4833 = fadd fast float %4832, -1.000000e+00
  %4834 = fadd fast float %4831, %4833
  %4835 = fmul fast float %4834, 5.000000e-01
  %4836 = fsub fast float %4831, %4833
  %4837 = fmul fast float %4836, 5.000000e-01
  %4838 = call float @dx.op.unary.f32(i32 6, float %4835)  ; FAbs(value)
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = call float @dx.op.unary.f32(i32 6, float %4837)  ; FAbs(value)
  %4841 = fsub fast float %4839, %4840
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4837, float %4841, float %4835, float %4837, float %4841)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4835, %4843
  %4845 = fmul fast float %4837, %4843
  %4846 = fmul fast float %4843, %4841
  %4847 = fmul fast float %4846, %4571
  %4848 = fmul fast float %4846, %4572
  %4849 = fmul fast float %4846, %4573
  %4850 = fmul fast float %4844, %4594
  %4851 = fmul fast float %4844, %4595
  %4852 = fmul fast float %4844, %4596
  %4853 = fadd fast float %4850, %4847
  %4854 = fadd fast float %4851, %4848
  %4855 = fadd fast float %4852, %4849
  %4856 = fmul fast float %4845, %4600
  %4857 = fmul fast float %4845, %4601
  %4858 = fmul fast float %4845, %4602
  %4859 = fadd fast float %4853, %4856
  %4860 = fadd fast float %4854, %4857
  %4861 = fadd fast float %4855, %4858
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4859, float %4860, float %4861)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = call float @dx.op.unary.f32(i32 25, float %4862)  ; Rsqrt(value)
  %4864 = fmul fast float %4859, %4863
  %4865 = fmul fast float %4860, %4863
  %4866 = fmul fast float %4861, %4863
  %4867 = icmp ne i32 %4783, 0
  %4868 = select i1 %4867, float 1.000000e+00, float 0.000000e+00
  %4869 = fmul fast float %4773, %4868
  %4870 = and i32 %4621, 1
  %4871 = icmp eq i32 %4870, 0
  br i1 %4871, label %4872, label %4876

; <label>:4872                                    ; preds = %4781
  %4873 = fsub fast float %4864, %4554
  %4874 = fsub fast float %4865, %4555
  %4875 = fsub fast float %4866, %4556
  br label %4876

; <label>:4876                                    ; preds = %4872, %4781
  %4877 = phi float [ %4873, %4872 ], [ %4864, %4781 ]
  %4878 = phi float [ %4874, %4872 ], [ %4865, %4781 ]
  %4879 = phi float [ %4875, %4872 ], [ %4866, %4781 ]
  %4880 = fmul float %4879, %4869
  %4881 = fmul float %4878, %4869
  %4882 = fmul float %4877, %4869
  %4883 = fadd fast float %4882, %4554
  %4884 = fadd fast float %4881, %4555
  %4885 = fadd fast float %4880, %4556
  %4886 = icmp ne i32 %4782, 0
  %4887 = select i1 %4886, float 1.000000e+00, float 0.000000e+00
  %4888 = fmul fast float %4773, %4887
  %4889 = fsub fast float %4827, %4561
  %4890 = fsub fast float %4828, %4562
  %4891 = fsub fast float %4829, %4563
  %4892 = fmul fast float %4889, %4888
  %4893 = fmul fast float %4890, %4888
  %4894 = fmul fast float %4891, %4888
  %4895 = fadd fast float %4892, %4561
  %4896 = fadd fast float %4893, %4562
  %4897 = fadd fast float %4894, %4563
  %4898 = fsub fast float %4800, %4560
  %4899 = fmul fast float %4898, %4888
  %4900 = fadd fast float %4899, %4560
  %4901 = fmul fast float %4888, %4547
  %4902 = fsub fast float %4547, %4901
  %4903 = fmul fast float %4888, %4546
  %4904 = fsub fast float %4546, %4903
  %4905 = bitcast float %4615 to i32
  %4906 = lshr i32 %4905, 16
  %4907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4906)  ; LegacyF16ToF32(value)
  %4908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4909 = extractvalue %dx.types.ResRet.i32 %4908, 0
  %4910 = and i32 %4909, 1
  %4911 = icmp eq i32 %4910, 0
  br i1 %4911, label %4912, label %4937

; <label>:4912                                    ; preds = %4876
  %4913 = fadd fast float %4800, 0xBFB99999A0000000
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4914, 0x3FF1C71C80000000
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, %4827
  %4919 = fmul fast float %4917, %4828
  %4920 = fmul fast float %4917, %4829
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4921, float %4924)  ; FMax(a,b)
  %4926 = fcmp fast ogt float %4925, 0.000000e+00
  %4927 = bitcast float %4925 to i32
  %4928 = sub nsw i32 2129859010, %4927
  %4929 = bitcast i32 %4928 to float
  %4930 = select i1 %4926, float %4929, float 0.000000e+00
  %4931 = fmul fast float %4921, %4907
  %4932 = fmul fast float %4922, %4907
  %4933 = fmul fast float %4923, %4907
  %4934 = fmul fast float %4931, %4930
  %4935 = fmul fast float %4932, %4930
  %4936 = fmul fast float %4933, %4930
  br label %4937

; <label>:4937                                    ; preds = %4912, %4876
  %4938 = phi float [ %4907, %4876 ], [ %4934, %4912 ]
  %4939 = phi float [ %4907, %4876 ], [ %4935, %4912 ]
  %4940 = phi float [ %4907, %4876 ], [ %4936, %4912 ]
  %4941 = fsub fast float %4938, %4548
  %4942 = fsub fast float %4939, %4549
  %4943 = fsub fast float %4940, %4550
  %4944 = fmul fast float %4941, %4888
  %4945 = fmul fast float %4942, %4888
  %4946 = fmul fast float %4943, %4888
  %4947 = fadd fast float %4944, %4548
  %4948 = fadd fast float %4945, %4549
  %4949 = fadd fast float %4946, %4550
  %4950 = fadd fast float %4773, %4559
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = fsub fast float %4820, %4558
  %4953 = fmul fast float %4952, %4869
  %4954 = fadd fast float %4953, %4558
  %4955 = fsub fast float %4806, %4557
  %4956 = fmul fast float %4955, %4869
  %4957 = fadd fast float %4956, %4557
  br i1 %4871, label %4966, label %4958

; <label>:4958                                    ; preds = %4937
  %4959 = and i32 %4621, 32768
  %4960 = icmp eq i32 %4959, 0
  br i1 %4960, label %4976, label %4961

; <label>:4961                                    ; preds = %4958
  %4962 = fmul fast float %4869, 1.270000e+02
  %4963 = fadd fast float %4962, %4543
  %4964 = fadd fast float %4962, %4544
  %4965 = fadd fast float %4962, %4545
  br label %4976

; <label>:4966                                    ; preds = %4937
  %4967 = fsub fast float 1.270000e+02, %4543
  %4968 = fsub fast float 1.270000e+02, %4544
  %4969 = fsub fast float 1.270000e+02, %4545
  %4970 = fmul fast float %4869, %4967
  %4971 = fmul fast float %4869, %4968
  %4972 = fmul fast float %4869, %4969
  %4973 = fadd fast float %4970, %4543
  %4974 = fadd fast float %4971, %4544
  %4975 = fadd fast float %4972, %4545
  br label %4976

; <label>:4976                                    ; preds = %4966, %4961, %4958
  %4977 = phi float [ %4963, %4961 ], [ %4543, %4958 ], [ %4973, %4966 ]
  %4978 = phi float [ %4964, %4961 ], [ %4544, %4958 ], [ %4974, %4966 ]
  %4979 = phi float [ %4965, %4961 ], [ %4545, %4958 ], [ %4975, %4966 ]
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4828, float %4829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = fmul fast float %4983, %4980
  %4985 = fadd fast float %4984, %4982
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = bitcast float %4609 to i32
  %4988 = and i32 %4987, 65535
  %4989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4988)  ; LegacyF16ToF32(value)
  %4990 = lshr i32 %4987, 16
  %4991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4990)  ; LegacyF16ToF32(value)
  %4992 = fcmp fast oge float %4989, 0.000000e+00
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = select i1 %4992, float %4989, float %4994
  %4996 = fadd fast float %4995, %4991
  %4997 = fsub fast float %4986, %4542
  %4998 = fmul fast float %4997, %4773
  %4999 = fadd fast float %4998, %4542
  %5000 = fmul fast float %4996, %4773
  %5001 = call float @dx.op.binary.f32(i32 35, float %4541, float %5000)  ; FMax(a,b)
  %5002 = and i32 %4621, 16
  %5003 = icmp eq i32 %5002, 0
  br i1 %5003, label %5025, label %5004

; <label>:5004                                    ; preds = %4976
  %5005 = add i32 %4612, 0
  %5006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5005, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5007 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5006, %dx.types.Handle %4786, float %4714, float %4717, float undef, float undef, i32 0, i32 0, i32 undef, float %4719, float %4721, float undef, float %4723, float %4725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5008 = extractvalue %dx.types.ResRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.ResRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.ResRet.f32 %5007, 2
  %5011 = and i32 %4905, 65535
  %5012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5011)  ; LegacyF16ToF32(value)
  %5013 = fmul fast float %5008, %4606
  %5014 = fmul fast float %5009, %4607
  %5015 = fmul fast float %5010, %4608
  %5016 = and i32 %4621, 16384
  %5017 = icmp ne i32 %5016, 0
  %5018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.f32 %5018, 0
  %5020 = select i1 %5017, float %5019, float 1.000000e+00
  %5021 = fmul fast float %5020, %5012
  %5022 = fmul fast float %5013, %5021
  %5023 = fmul fast float %5014, %5021
  %5024 = fmul fast float %5015, %5021
  br label %5025

; <label>:5025                                    ; preds = %5004, %4976
  %5026 = phi float [ %5022, %5004 ], [ 0.000000e+00, %4976 ]
  %5027 = phi float [ %5023, %5004 ], [ 0.000000e+00, %4976 ]
  %5028 = phi float [ %5024, %5004 ], [ 0.000000e+00, %4976 ]
  %5029 = fsub fast float %5026, %4551
  %5030 = fsub fast float %5027, %4552
  %5031 = fsub fast float %5028, %4553
  %5032 = fmul fast float %5029, %4773
  %5033 = fmul fast float %5030, %4773
  %5034 = fmul fast float %5031, %4773
  %5035 = fadd fast float %5032, %4551
  %5036 = fadd fast float %5033, %4552
  %5037 = fadd fast float %5034, %4553
  br label %4670

; <label>:5038                                    ; preds = %4670
  br label %5039

; <label>:5039                                    ; preds = %5038, %4484
  %5040 = phi float [ 0.000000e+00, %4484 ], [ %4671, %5038 ]
  %5041 = phi float [ %4453, %4484 ], [ %4672, %5038 ]
  %5042 = phi float [ %4451, %4484 ], [ %4673, %5038 ]
  %5043 = phi float [ %4444, %4484 ], [ %4674, %5038 ]
  %5044 = phi float [ %4445, %4484 ], [ %4675, %5038 ]
  %5045 = phi float [ %4446, %4484 ], [ %4676, %5038 ]
  %5046 = phi float [ 0.000000e+00, %4484 ], [ %4677, %5038 ]
  %5047 = phi float [ 0.000000e+00, %4484 ], [ %4678, %5038 ]
  %5048 = phi float [ %4438, %4484 ], [ %4679, %5038 ]
  %5049 = phi float [ %4439, %4484 ], [ %4680, %5038 ]
  %5050 = phi float [ %4440, %4484 ], [ %4681, %5038 ]
  %5051 = phi float [ %4441, %4484 ], [ %4682, %5038 ]
  %5052 = phi float [ %4442, %4484 ], [ %4683, %5038 ]
  %5053 = phi float [ %4443, %4484 ], [ %4684, %5038 ]
  %5054 = phi float [ %4479, %4484 ], [ %4685, %5038 ]
  %5055 = phi float [ %4480, %4484 ], [ %4686, %5038 ]
  %5056 = phi float [ %4481, %4484 ], [ %4687, %5038 ]
  %5057 = phi float [ %4449, %4484 ], [ %4688, %5038 ]
  %5058 = phi float [ %4448, %4484 ], [ %4689, %5038 ]
  %5059 = phi float [ 0.000000e+00, %4484 ], [ %4690, %5038 ]
  %5060 = phi float [ %4447, %4484 ], [ %4691, %5038 ]
  %5061 = phi float [ %4435, %4484 ], [ %4692, %5038 ]
  %5062 = phi float [ %4436, %4484 ], [ %4693, %5038 ]
  %5063 = phi float [ %4437, %4484 ], [ %4694, %5038 ]
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 25, float %5064)  ; Rsqrt(value)
  %5066 = fmul fast float %5065, %5054
  %5067 = fmul fast float %5065, %5055
  %5068 = fmul fast float %5065, %5056
  %5069 = fadd fast float %5059, %1276
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = call float @dx.op.unary.f32(i32 25, float %5071)  ; Rsqrt(value)
  %5073 = fmul fast float %5072, %5066
  %5074 = fmul fast float %5072, %5067
  %5075 = fmul fast float %5072, %5068
  br label %5076

; <label>:5076                                    ; preds = %5039, %4432
  %5077 = phi float [ %5073, %5039 ], [ %4479, %4432 ]
  %5078 = phi float [ %5074, %5039 ], [ %4480, %4432 ]
  %5079 = phi float [ %5075, %5039 ], [ %4481, %4432 ]
  %5080 = phi float [ %5051, %5039 ], [ %4441, %4432 ]
  %5081 = phi float [ %5052, %5039 ], [ %4442, %4432 ]
  %5082 = phi float [ %5053, %5039 ], [ %4443, %4432 ]
  %5083 = phi float [ %5048, %5039 ], [ %4438, %4432 ]
  %5084 = phi float [ %5049, %5039 ], [ %4439, %4432 ]
  %5085 = phi float [ %5050, %5039 ], [ %4440, %4432 ]
  %5086 = phi float [ %5043, %5039 ], [ %4444, %4432 ]
  %5087 = phi float [ %5044, %5039 ], [ %4445, %4432 ]
  %5088 = phi float [ %5045, %5039 ], [ %4446, %4432 ]
  %5089 = phi float [ %5061, %5039 ], [ %4435, %4432 ]
  %5090 = phi float [ %5062, %5039 ], [ %4436, %4432 ]
  %5091 = phi float [ %5063, %5039 ], [ %4437, %4432 ]
  %5092 = phi float [ %5060, %5039 ], [ %4447, %4432 ]
  %5093 = phi float [ %5070, %5039 ], [ %1276, %4432 ]
  %5094 = phi float [ %5058, %5039 ], [ %4448, %4432 ]
  %5095 = phi float [ %5057, %5039 ], [ %4449, %4432 ]
  %5096 = phi float [ %5047, %5039 ], [ 0.000000e+00, %4432 ]
  %5097 = phi float [ %5046, %5039 ], [ 0.000000e+00, %4432 ]
  %5098 = phi float [ %5040, %5039 ], [ 0.000000e+00, %4432 ]
  %5099 = phi float [ %5041, %5039 ], [ %4453, %4432 ]
  %5100 = phi float [ %5042, %5039 ], [ %4451, %4432 ]
  %5101 = add i32 %54, 392
  %5102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.i32 %5102, 0
  %5104 = extractvalue %dx.types.ResRet.i32 %5102, 1
  %5105 = extractvalue %dx.types.ResRet.i32 %5102, 2
  %5106 = extractvalue %dx.types.ResRet.i32 %5102, 3
  %5107 = bitcast i32 %5103 to float
  %5108 = bitcast i32 %5104 to float
  %5109 = bitcast i32 %5105 to float
  %5110 = bitcast i32 %5106 to float
  %5111 = fsub fast float %5089, %5107
  %5112 = fsub fast float %5090, %5108
  %5113 = fsub fast float %5091, %5109
  %5114 = fmul fast float %5111, %189
  %5115 = fmul fast float %5112, %189
  %5116 = fmul fast float %5113, %189
  %5117 = fadd fast float %5114, %5107
  %5118 = fadd fast float %5115, %5108
  %5119 = fadd fast float %5116, %5109
  %5120 = fsub fast float %5093, %5110
  %5121 = fmul fast float %5120, %189
  %5122 = fadd fast float %5121, %5110
  %5123 = fadd fast float %5092, 0xBFB99999A0000000
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %5124, 0x3FF1C71C80000000
  %5126 = call float @dx.op.binary.f32(i32 36, float %5092, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5127 = fsub fast float 1.000000e+00, %5125
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = fmul fast float %5117, %5128
  %5130 = fmul fast float %5118, %5128
  %5131 = fmul fast float %5119, %5128
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = fmul fast float %5117, %5125
  %5136 = fmul fast float %5118, %5125
  %5137 = fmul fast float %5119, %5125
  %5138 = fadd fast float %5135, %5126
  %5139 = fadd fast float %5136, %5126
  %5140 = fadd fast float %5137, %5126
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5146 = extractvalue %dx.types.ResRet.i32 %5145, 0
  %5147 = and i32 %5146, 1
  %5148 = icmp eq i32 %5147, 0
  br i1 %5148, label %5163, label %5149

; <label>:5149                                    ; preds = %5076
  %5150 = call float @dx.op.binary.f32(i32 35, float %5133, float %5134)  ; FMax(a,b)
  %5151 = call float @dx.op.binary.f32(i32 35, float %5132, float %5150)  ; FMax(a,b)
  %5152 = fcmp fast ogt float %5151, 0.000000e+00
  %5153 = bitcast float %5151 to i32
  %5154 = sub nsw i32 2129859010, %5153
  %5155 = bitcast i32 %5154 to float
  %5156 = select i1 %5152, float %5155, float 0.000000e+00
  %5157 = fmul fast float %5132, %5083
  %5158 = fmul fast float %5133, %5084
  %5159 = fmul fast float %5134, %5085
  %5160 = fmul fast float %5157, %5156
  %5161 = fmul fast float %5158, %5156
  %5162 = fmul fast float %5159, %5156
  br label %5163

; <label>:5163                                    ; preds = %5149, %5076
  %5164 = phi float [ %5160, %5149 ], [ %5083, %5076 ]
  %5165 = phi float [ %5161, %5149 ], [ %5084, %5076 ]
  %5166 = phi float [ %5162, %5149 ], [ %5085, %5076 ]
  %5167 = call float @dx.op.binary.f32(i32 36, float %5086, float 1.270000e+02)  ; FMin(a,b)
  %5168 = call float @dx.op.binary.f32(i32 36, float %5087, float 1.270000e+02)  ; FMin(a,b)
  %5169 = call float @dx.op.binary.f32(i32 36, float %5088, float 1.270000e+02)  ; FMin(a,b)
  %5170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.i32 %5170, 3
  %5172 = and i32 %5171, 8
  %5173 = icmp ne i32 %5172, 0
  %5174 = call float @dx.op.binary.f32(i32 35, float %5132, float %5117)  ; FMax(a,b)
  %5175 = call float @dx.op.binary.f32(i32 35, float %5133, float %5117)  ; FMax(a,b)
  %5176 = call float @dx.op.binary.f32(i32 35, float %5134, float %5117)  ; FMax(a,b)
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = select i1 %249, float %5117, float %5132
  %5179 = select i1 %249, float %5177, float %5133
  %5180 = select i1 %249, float 1.000000e+00, float %5134
  %5181 = select i1 %5173, float %5174, float %5178
  %5182 = select i1 %5173, float %5175, float %5179
  %5183 = select i1 %5173, float %5176, float %5180
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = select i1 %249, float %5184, float %5164
  %5186 = select i1 %249, float %5184, float %5165
  %5187 = select i1 %249, float %5184, float %5166
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5192 = fadd fast float %5189, %155
  %5193 = fadd fast float %5190, %156
  %5194 = fadd fast float %5191, %157
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.CBufRet.f32 %5195, 1
  %5198 = fsub fast float %5192, %5196
  %5199 = fsub fast float %5193, %5197
  %5200 = fmul fast float %5198, %5198
  %5201 = fmul fast float %5199, %5199
  %5202 = fadd fast float %5200, %5201
  %5203 = call float @dx.op.unary.f32(i32 24, float %5202)  ; Sqrt(value)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %5205 = fcmp fast olt float %5203, %5204
  br i1 %5205, label %5206, label %5273

; <label>:5206                                    ; preds = %5163
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5215 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5216 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5217 = extractvalue %dx.types.CBufRet.f32 %5209, 3
  %5218 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5219 = fadd fast float %5216, %5192
  %5220 = fadd fast float %5217, %5193
  %5221 = fadd fast float %5218, %5194
  %5222 = fmul fast float %5219, %5208
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5210, float %5222)  ; FMad(a,b,c)
  %5224 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %5212, float %5223)  ; FMad(a,b,c)
  %5225 = fmul fast float %5219, %5213
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5214, float %5225)  ; FMad(a,b,c)
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %5215, float %5226)  ; FMad(a,b,c)
  %5228 = fsub fast float %5224, %5216
  %5229 = fsub fast float %5227, %5217
  %5230 = fsub fast float %5228, %5196
  %5231 = fadd fast float %5230, %5204
  %5232 = fsub fast float %5229, %5197
  %5233 = fadd fast float %5232, %5204
  %5234 = extractvalue %dx.types.CBufRet.f32 %5195, 3
  %5235 = fmul fast float %5231, %5234
  %5236 = fmul fast float %5233, %5234
  %5237 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5239 = fsub fast float 1.000000e+00, %5237
  %5240 = fsub fast float 1.000000e+00, %5238
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5239, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = fcmp fast ugt float %5242, 0.000000e+00
  br i1 %5243, label %5244, label %5547

; <label>:5244                                    ; preds = %5206
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5247 = fmul fast float %5246, %5242
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5249 = fadd fast float %5248, %5247
  %5250 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5251 = fadd fast float %5249, %5218
  %5252 = fmul fast float %5224, %5212
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5227, float %5215, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5250, float %5253)  ; FMad(a,b,c)
  %5255 = fsub fast float %5254, %5218
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = fsub fast float %5255, %5257
  %5259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5239, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5239, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5267 = fadd fast float %5264, %5260
  %5268 = fmul fast float %5267, 0x3F847AE140000000
  %5269 = fadd fast float %5265, %5261
  %5270 = fmul fast float %5269, 0x3F847AE140000000
  %5271 = fadd fast float %5266, %5262
  %5272 = fmul fast float %5271, 0x3F847AE140000000
  br label %5547

; <label>:5273                                    ; preds = %5163
  %5274 = and i32 %225, 1
  %5275 = icmp eq i32 %5274, 0
  br i1 %5275, label %5547, label %5276

; <label>:5276                                    ; preds = %5273
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 0
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.CBufRet.f32 %5277, 1
  %5284 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5285 = extractvalue %dx.types.CBufRet.f32 %5281, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5277, 3
  %5287 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5288 = extractvalue %dx.types.CBufRet.f32 %5281, 3
  %5289 = fadd fast float %5286, %5192
  %5290 = fadd fast float %5287, %5193
  %5291 = fadd fast float %5288, %5194
  %5292 = fmul fast float %5289, %5278
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5280, float %5292)  ; FMad(a,b,c)
  %5294 = call float @dx.op.tertiary.f32(i32 46, float %5291, float %5282, float %5293)  ; FMad(a,b,c)
  %5295 = fmul fast float %5289, %5283
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5284, float %5295)  ; FMad(a,b,c)
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5291, float %5285, float %5296)  ; FMad(a,b,c)
  %5298 = fsub fast float %5294, %5286
  %5299 = fsub fast float %5297, %5287
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.i32 %5307, 0
  %5309 = extractvalue %dx.types.CBufRet.i32 %5307, 1
  %5310 = udiv i32 %5309, %5308
  %5311 = fsub fast float %5298, %5301
  %5312 = fsub fast float %5299, %5302
  %5313 = call float @dx.op.binary.f32(i32 35, float %5311, float 0.000000e+00)  ; FMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5312, float 0.000000e+00)  ; FMax(a,b)
  %5315 = call float @dx.op.binary.f32(i32 36, float %5313, float %5303)  ; FMin(a,b)
  %5316 = call float @dx.op.binary.f32(i32 36, float %5314, float %5304)  ; FMin(a,b)
  %5317 = add i32 %5308, -1
  %5318 = add i32 %5310, -1
  %5319 = fmul fast float %5315, %5306
  %5320 = fmul fast float %5316, %5306
  %5321 = fptoui float %5319 to i32
  %5322 = fptoui float %5320 to i32
  %5323 = call i32 @dx.op.binary.i32(i32 40, i32 %5321, i32 %5317)  ; UMin(a,b)
  %5324 = call i32 @dx.op.binary.i32(i32 40, i32 %5322, i32 %5318)  ; UMin(a,b)
  %5325 = mul i32 %5324, %5308
  %5326 = add i32 %5325, %5323
  %5327 = shl i32 %5326, 2
  %5328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.i32 %5328, 0
  %5330 = icmp eq i32 %5329, -1
  br i1 %5330, label %5547, label %5331

; <label>:5331                                    ; preds = %5276
  %5332 = mul i32 %5329, 148
  %5333 = add i32 %5332, 4
  %5334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 0
  %5336 = add i32 %5332, 8
  %5337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5336, i32 undef)  ; BufferLoad(srv,index,wot)
  %5338 = extractvalue %dx.types.ResRet.f32 %5337, 0
  %5339 = add i32 %5332, 36
  %5340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5339, i32 undef)  ; BufferLoad(srv,index,wot)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  %5342 = add i32 %5332, 60
  %5343 = add i32 %5332, 92
  %5344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.i32 %5344, 0
  %5346 = add i32 %5332, 116
  %5347 = fsub fast float %5298, %5335
  %5348 = fsub fast float %5299, %5338
  %5349 = fmul fast float %5306, %5347
  %5350 = fmul fast float %5306, %5348
  %5351 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5356 = call float @dx.op.unary.f32(i32 83, float %5351)  ; DerivCoarseX(value)
  %5357 = call float @dx.op.unary.f32(i32 83, float %5353)  ; DerivCoarseX(value)
  %5358 = call float @dx.op.unary.f32(i32 84, float %5351)  ; DerivCoarseY(value)
  %5359 = call float @dx.op.unary.f32(i32 84, float %5353)  ; DerivCoarseY(value)
  %5360 = fmul fast float %5356, %5355
  %5361 = fmul fast float %5357, %5355
  %5362 = fmul fast float %5358, %5355
  %5363 = fmul fast float %5359, %5355
  %5364 = call float @dx.op.dot2.f32(i32 54, float %5362, float %5363, float %5362, float %5363)  ; Dot2(ax,ay,bx,by)
  %5365 = call float @dx.op.dot2.f32(i32 54, float %5360, float %5361, float %5360, float %5361)  ; Dot2(ax,ay,bx,by)
  %5366 = call float @dx.op.binary.f32(i32 35, float %5365, float %5364)  ; FMax(a,b)
  %5367 = call float @dx.op.unary.f32(i32 23, float %5366)  ; Log(value)
  %5368 = fmul fast float %5367, 5.000000e-01
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 1
  %5371 = fadd fast float %5370, %5368
  %5372 = call float @dx.op.binary.f32(i32 35, float %5371, float 0.000000e+00)  ; FMax(a,b)
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 3
  %5375 = fadd fast float %5374, %5372
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5378 = fadd fast float %5375, %5377
  %5379 = add i32 %5345, 0
  %5380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5379, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5381 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5380, i32 0)  ; GetDimensions(handle,mipLevel)
  %5382 = extractvalue %dx.types.Dimensions %5381, 0
  %5383 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5382)  ; FirstbitLo(value)
  %5384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.i32 %5384, 1
  %5386 = sub nsw i32 %5385, %5383
  %5387 = sitofp i32 %5386 to float
  %5388 = fsub fast float %5378, %5387
  %5389 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5380, %dx.types.Handle %46, float %5351, float %5353, float %5341, float undef, i32 0, i32 0, i32 undef, float %5389)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = fcmp ule float %5391, 0x3FE0101020000000
  %5393 = extractvalue %dx.types.CBufRet.i32 %5384, 0
  %5394 = and i32 %5393, 128
  %5395 = icmp ne i32 %5394, 0
  %5396 = and i1 %5392, %5395
  br i1 %5396, label %5547, label %5397

; <label>:5397                                    ; preds = %5331
  %5398 = add i32 %5332, 20
  %5399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = add i32 %5332, 24
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = add i32 %5332, 40
  %5405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = add i32 %5332, 96
  %5408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5409 = extractvalue %dx.types.ResRet.i32 %5408, 0
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5412 = fmul fast float %5411, %5351
  %5413 = fmul fast float %5411, %5353
  %5414 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5415 = fadd fast float %5412, %5414
  %5416 = fadd fast float %5413, %5414
  %5417 = add i32 %5409, 0
  %5418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5417, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5419 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5418, i32 0)  ; GetDimensions(handle,mipLevel)
  %5420 = extractvalue %dx.types.Dimensions %5419, 0
  %5421 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5420)  ; FirstbitLo(value)
  %5422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.i32 %5422, 1
  %5424 = sub nsw i32 %5423, %5421
  %5425 = sitofp i32 %5424 to float
  %5426 = fsub fast float %5375, %5425
  %5427 = call float @dx.op.binary.f32(i32 35, float %5426, float 0.000000e+00)  ; FMax(a,b)
  %5428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5418, %dx.types.Handle %46, float %5415, float %5416, float %5406, float undef, i32 0, i32 0, i32 undef, float %5427)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = fmul fast float %5429, %5400
  %5431 = fadd fast float %5430, %5403
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5440 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5441 = fadd fast float %5437, %5298
  %5442 = fadd fast float %5439, %5299
  %5443 = fadd fast float %5431, %5440
  %5444 = fmul fast float %5441, %5433
  %5445 = call float @dx.op.tertiary.f32(i32 46, float %5442, float %5434, float %5444)  ; FMad(a,b,c)
  %5446 = call float @dx.op.tertiary.f32(i32 46, float %5443, float %5435, float %5445)  ; FMad(a,b,c)
  %5447 = fsub fast float %5446, %5440
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5450 = fsub fast float %5447, %5449
  %5451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.i32 %5451, 0
  %5453 = call i32 @dx.op.binary.i32(i32 40, i32 %5329, i32 %5452)  ; UMin(a,b)
  %5454 = mul i32 %5453, 36
  %5455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.i32 %5455, 0
  %5457 = add i32 %5454, 4
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5460 = fmul fast float %5459, %5351
  %5461 = fmul fast float %5459, %5353
  %5462 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5463 = fadd fast float %5460, %5462
  %5464 = fadd fast float %5461, %5462
  %5465 = icmp eq i32 %5456, 0
  br i1 %5465, label %5534, label %5466

; <label>:5466                                    ; preds = %5397
  br label %5467

; <label>:5467                                    ; preds = %5524, %5466
  %5468 = phi float [ %5525, %5524 ], [ 0.000000e+00, %5466 ]
  %5469 = phi float [ %5526, %5524 ], [ 0.000000e+00, %5466 ]
  %5470 = phi float [ %5527, %5524 ], [ 0.000000e+00, %5466 ]
  %5471 = phi float [ %5528, %5524 ], [ 0.000000e+00, %5466 ]
  %5472 = phi float [ %5529, %5524 ], [ 0.000000e+00, %5466 ]
  %5473 = phi float [ %5530, %5524 ], [ 0.000000e+00, %5466 ]
  %5474 = phi i32 [ %5531, %5524 ], [ 0, %5466 ]
  %5475 = shl i32 %5474, 2
  %5476 = add i32 %5342, %5475
  %5477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5476, i32 undef)  ; BufferLoad(srv,index,wot)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 0
  %5479 = add i32 %5346, %5475
  %5480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.i32 %5480, 0
  %5482 = add i32 %5481, 0
  %5483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5484 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5483, i32 0)  ; GetDimensions(handle,mipLevel)
  %5485 = extractvalue %dx.types.Dimensions %5484, 0
  %5486 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5485)  ; FirstbitLo(value)
  %5487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.i32 %5487, 1
  %5489 = sub nsw i32 %5488, %5486
  %5490 = sitofp i32 %5489 to float
  %5491 = fsub fast float %5375, %5490
  %5492 = call float @dx.op.binary.f32(i32 35, float %5491, float 0.000000e+00)  ; FMax(a,b)
  %5493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5483, %dx.types.Handle %46, float %5463, float %5464, float %5478, float undef, i32 0, i32 0, i32 undef, float %5492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = fcmp fast ogt float %5494, 0.000000e+00
  br i1 %5495, label %5496, label %5524

; <label>:5496                                    ; preds = %5467
  %5497 = add i32 %5457, %5475
  %5498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5497, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.i32 %5498, 0
  %5500 = and i32 %5499, 32767
  %5501 = mul nuw nsw i32 %5500, 928
  %5502 = add nuw nsw i32 %5501, 48
  %5503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5502, i32 undef)  ; BufferLoad(srv,index,wot)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.ResRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.ResRet.f32 %5503, 2
  %5507 = add nuw nsw i32 %5501, 60
  %5508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5507, i32 undef)  ; BufferLoad(srv,index,wot)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.ResRet.f32 %5508, 1
  %5511 = extractvalue %dx.types.ResRet.f32 %5508, 2
  %5512 = fmul fast float %5504, %5494
  %5513 = fmul fast float %5505, %5494
  %5514 = fmul fast float %5506, %5494
  %5515 = fadd fast float %5512, %5468
  %5516 = fadd fast float %5513, %5469
  %5517 = fadd fast float %5514, %5470
  %5518 = fmul fast float %5509, %5494
  %5519 = fmul fast float %5510, %5494
  %5520 = fmul fast float %5511, %5494
  %5521 = fadd fast float %5518, %5471
  %5522 = fadd fast float %5519, %5472
  %5523 = fadd fast float %5520, %5473
  br label %5524

; <label>:5524                                    ; preds = %5496, %5467
  %5525 = phi float [ %5515, %5496 ], [ %5468, %5467 ]
  %5526 = phi float [ %5516, %5496 ], [ %5469, %5467 ]
  %5527 = phi float [ %5517, %5496 ], [ %5470, %5467 ]
  %5528 = phi float [ %5521, %5496 ], [ %5471, %5467 ]
  %5529 = phi float [ %5522, %5496 ], [ %5472, %5467 ]
  %5530 = phi float [ %5523, %5496 ], [ %5473, %5467 ]
  %5531 = add nuw i32 %5474, 1
  %5532 = icmp eq i32 %5531, %5456
  br i1 %5532, label %5533, label %5467

; <label>:5533                                    ; preds = %5524
  br label %5534

; <label>:5534                                    ; preds = %5533, %5397
  %5535 = phi float [ 0.000000e+00, %5397 ], [ %5525, %5533 ]
  %5536 = phi float [ 0.000000e+00, %5397 ], [ %5526, %5533 ]
  %5537 = phi float [ 0.000000e+00, %5397 ], [ %5527, %5533 ]
  %5538 = phi float [ 0.000000e+00, %5397 ], [ %5528, %5533 ]
  %5539 = phi float [ 0.000000e+00, %5397 ], [ %5529, %5533 ]
  %5540 = phi float [ 0.000000e+00, %5397 ], [ %5530, %5533 ]
  %5541 = fadd fast float %5538, %5535
  %5542 = fmul fast float %5541, 0x3F847AE140000000
  %5543 = fadd fast float %5539, %5536
  %5544 = fmul fast float %5543, 0x3F847AE140000000
  %5545 = fadd fast float %5540, %5537
  %5546 = fmul fast float %5545, 0x3F847AE140000000
  br label %5547

; <label>:5547                                    ; preds = %5534, %5331, %5276, %5273, %5244, %5206
  %5548 = phi float [ %5258, %5244 ], [ -1.310720e+05, %5206 ], [ %5450, %5534 ], [ -1.310720e+05, %5276 ], [ -1.310720e+05, %5331 ], [ -1.310720e+05, %5273 ]
  %5549 = phi float [ %5268, %5244 ], [ 0.000000e+00, %5206 ], [ %5542, %5534 ], [ 0.000000e+00, %5276 ], [ 0.000000e+00, %5331 ], [ 0.000000e+00, %5273 ]
  %5550 = phi float [ %5270, %5244 ], [ 0.000000e+00, %5206 ], [ %5544, %5534 ], [ 0.000000e+00, %5276 ], [ 0.000000e+00, %5331 ], [ 0.000000e+00, %5273 ]
  %5551 = phi float [ %5272, %5244 ], [ 0.000000e+00, %5206 ], [ %5546, %5534 ], [ 0.000000e+00, %5276 ], [ 0.000000e+00, %5331 ], [ 0.000000e+00, %5273 ]
  %5552 = phi i1 [ true, %5244 ], [ false, %5206 ], [ true, %5534 ], [ false, %5276 ], [ false, %5331 ], [ false, %5273 ]
  %5553 = and i32 %225, 3
  %5554 = icmp eq i32 %5553, 1
  %5555 = select i1 %5554, float 1.000000e+00, float 0.000000e+00
  %5556 = fsub fast float %5548, %157
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = select i1 %5552, float %5557, float 1.000000e+00
  %5559 = fmul fast float %5558, %5555
  %5560 = icmp eq i32 %5553, 3
  %5561 = select i1 %5560, float 1.000000e+00, float %5559
  %5562 = call float @dx.op.binary.f32(i32 35, float %5098, float %5561)  ; FMax(a,b)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = fcmp fast une float %5563, 0.000000e+00
  %5565 = fsub fast float -0.000000e+00, %175
  %5566 = fsub fast float -0.000000e+00, %176
  %5567 = fsub fast float -0.000000e+00, %177
  br i1 %5564, label %5568, label %5730

; <label>:5568                                    ; preds = %5547
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = fmul fast float %5563, 2.500000e+00
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fmul fast float %5563, 0x4013FFFFE0000000
  %5573 = fadd fast float %5572, 0xBFFFFFFFE0000000
  %5574 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5575 = fmul fast float %5563, 0x4004000020000000
  %5576 = fadd fast float %5575, 0xBFF8000040000000
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5579 = fmul fast float %5123, 1.000000e+01
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = fmul fast float %5580, 2.000000e+00
  %5582 = fsub fast float 3.000000e+00, %5581
  %5583 = fmul fast float %5580, %5580
  %5584 = fmul fast float %5583, %5582
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = fsub fast float 0x3FE3333340000000, %5144
  %5587 = fmul fast float %5586, 0x400AAAAAA0000000
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fmul fast float %5585, %5588
  %5590 = fmul fast float %5181, 0x3FEA2B8620000000
  %5591 = fmul fast float %5182, 0x3FEA2B8620000000
  %5592 = fmul fast float %5183, 0x3FEA2B8620000000
  %5593 = fadd fast float %5590, 0x3FC81DFBA0000000
  %5594 = fmul fast float %5593, %5181
  %5595 = fadd fast float %5594, 0x3F910E6020000000
  %5596 = fadd fast float %5591, 0x3FC81DFBA0000000
  %5597 = fmul fast float %5596, %5182
  %5598 = fadd fast float %5597, 0x3F910E6020000000
  %5599 = fadd fast float %5592, 0x3FC81DFBA0000000
  %5600 = fmul fast float %5599, %5183
  %5601 = fadd fast float %5600, 0x3F910E6020000000
  %5602 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5605 = fsub fast float %5602, %5181
  %5606 = fsub fast float %5603, %5182
  %5607 = fsub fast float %5604, %5183
  %5608 = fmul fast float %5605, %5578
  %5609 = fmul fast float %5608, %5589
  %5610 = fmul fast float %5606, %5578
  %5611 = fmul fast float %5610, %5589
  %5612 = fmul fast float %5607, %5578
  %5613 = fmul fast float %5612, %5589
  %5614 = fadd fast float %5609, %5181
  %5615 = fadd fast float %5611, %5182
  %5616 = fadd fast float %5613, %5183
  %5617 = fmul fast float %5095, %5095
  %5618 = fmul fast float %5617, %5617
  %5619 = fadd fast float %5574, 1.000000e+00
  %5620 = fsub fast float %5619, %5589
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = fsub fast float 1.000000e+00, %5618
  %5625 = call float @dx.op.binary.f32(i32 36, float %5621, float %5624)  ; FMin(a,b)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5627 = call float @dx.op.binary.f32(i32 35, float %5625, float %5626)  ; FMax(a,b)
  %5628 = fadd fast float %5623, 0xBFE4CCCCC0000000
  %5629 = fmul fast float %5628, 0x4006DB6DA0000000
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fmul fast float %5630, 2.000000e+00
  %5632 = fsub fast float 3.000000e+00, %5631
  %5633 = bitcast float %5141 to i32
  %5634 = ashr i32 %5633, 1
  %5635 = add nsw i32 %5634, 532487669
  %5636 = bitcast i32 %5635 to float
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = bitcast i32 %5639 to float
  %5641 = fmul fast float %5640, 2.000000e+00
  %5642 = bitcast float %5142 to i32
  %5643 = ashr i32 %5642, 1
  %5644 = add nsw i32 %5643, 532487669
  %5645 = bitcast i32 %5644 to float
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5649, 2.000000e+00
  %5651 = bitcast float %5143 to i32
  %5652 = ashr i32 %5651, 1
  %5653 = add nsw i32 %5652, 532487669
  %5654 = bitcast i32 %5653 to float
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = fmul fast float %5658, 2.000000e+00
  %5660 = fsub fast float 0x4002A9FBE0000000, %5641
  %5661 = fadd fast float %5641, 0x3FD54FDF00000000
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, %5660
  %5666 = fmul fast float %5665, %5665
  %5667 = fsub fast float 0x4002A9FBE0000000, %5650
  %5668 = fadd fast float %5650, 0x3FD54FDF00000000
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5671, %5667
  %5673 = fmul fast float %5672, %5672
  %5674 = fsub fast float 0x4002A9FBE0000000, %5659
  %5675 = fadd fast float %5659, 0x3FD54FDF00000000
  %5676 = bitcast float %5675 to i32
  %5677 = sub nsw i32 2129859010, %5676
  %5678 = bitcast i32 %5677 to float
  %5679 = fmul fast float %5678, %5674
  %5680 = fmul fast float %5679, %5679
  %5681 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5666)  ; FMax(a,b)
  %5682 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5673)  ; FMax(a,b)
  %5683 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5680)  ; FMax(a,b)
  %5684 = fsub fast float 1.000000e+00, %5569
  %5685 = fadd fast float %5684, %5585
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = fsub fast float 1.000000e+00, %5561
  %5688 = fmul fast float %5627, %5687
  %5689 = fmul fast float %5630, %5630
  %5690 = fmul fast float %5689, %5688
  %5691 = fmul fast float %5690, %5632
  %5692 = fmul fast float %5687, 0xBFE99999A0000000
  %5693 = fmul fast float %5692, %5578
  %5694 = fmul fast float %5693, %5589
  %5695 = fadd fast float %5694, 1.000000e+00
  %5696 = fadd fast float %5144, -1.000000e+00
  %5697 = fmul fast float %5695, %5696
  %5698 = fadd fast float %5697, 1.000000e+00
  %5699 = fsub fast float %5681, %5141
  %5700 = fsub fast float %5682, %5142
  %5701 = fsub fast float %5683, %5143
  %5702 = fmul fast float %5691, %5699
  %5703 = fmul fast float %5691, %5700
  %5704 = fmul fast float %5691, %5701
  %5705 = fadd fast float %5702, %5141
  %5706 = fadd fast float %5703, %5142
  %5707 = fadd fast float %5704, %5143
  %5708 = fsub fast float %107, %5077
  %5709 = fsub fast float %108, %5078
  %5710 = fsub fast float %109, %5079
  %5711 = fmul fast float %5691, %5708
  %5712 = fmul fast float %5691, %5709
  %5713 = fmul fast float %5691, %5710
  %5714 = fadd fast float %5711, %5077
  %5715 = fadd fast float %5712, %5078
  %5716 = fadd fast float %5713, %5079
  %5717 = fmul fast float %5691, %5686
  %5718 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = fmul fast float %5717, %5719
  %5721 = fadd fast float %5720, %5718
  %5722 = fsub fast float 1.000000e+00, %5095
  %5723 = fmul fast float %5691, %5722
  %5724 = fadd fast float %5723, %5095
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5715, float %5716, float %5714, float %5715, float %5716)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.unary.f32(i32 25, float %5725)  ; Rsqrt(value)
  %5727 = fmul fast float %5714, %5726
  %5728 = fmul fast float %5715, %5726
  %5729 = fmul fast float %5716, %5726
  br label %5730

; <label>:5730                                    ; preds = %5568, %5547
  %5731 = phi float [ %5614, %5568 ], [ %5181, %5547 ]
  %5732 = phi float [ %5615, %5568 ], [ %5182, %5547 ]
  %5733 = phi float [ %5616, %5568 ], [ %5183, %5547 ]
  %5734 = phi float [ %5705, %5568 ], [ %5141, %5547 ]
  %5735 = phi float [ %5706, %5568 ], [ %5142, %5547 ]
  %5736 = phi float [ %5707, %5568 ], [ %5143, %5547 ]
  %5737 = phi float [ %5727, %5568 ], [ %5077, %5547 ]
  %5738 = phi float [ %5728, %5568 ], [ %5078, %5547 ]
  %5739 = phi float [ %5729, %5568 ], [ %5079, %5547 ]
  %5740 = phi float [ %5721, %5568 ], [ %5144, %5547 ]
  %5741 = phi float [ %5724, %5568 ], [ %5095, %5547 ]
  %5742 = fsub fast float -0.000000e+00, %157
  %5743 = select i1 %249, float 0.000000e+00, float %5736
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %5565, float %5566, float %5567)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fmul fast float %5746, 2.000000e+00
  %5748 = fmul fast float %5747, %5737
  %5749 = fmul fast float %5747, %5738
  %5750 = fmul fast float %5747, %5739
  %5751 = fsub fast float %175, %5748
  %5752 = fsub fast float %176, %5749
  %5753 = fsub fast float %177, %5750
  %5754 = call float @dx.op.binary.f32(i32 36, float %5741, float 1.000000e+00)  ; FMin(a,b)
  %5755 = fsub fast float 1.000000e+00, %5741
  %5756 = bitcast float %5755 to i32
  %5757 = sub nsw i32 2129859010, %5756
  %5758 = bitcast i32 %5757 to float
  %5759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5760 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = fcmp fast oeq float %5760, 0.000000e+00
  %5762 = fcmp fast oeq float %5759, 0.000000e+00
  %5763 = or i1 %5762, %5761
  br i1 %5763, label %5793, label %5764

; <label>:5764                                    ; preds = %5730
  %5765 = fsub fast float -0.000000e+00, %74
  %5766 = fsub fast float -0.000000e+00, %72
  %5767 = call float @dx.op.unary.f32(i32 24, float %5760)  ; Sqrt(value)
  %5768 = fdiv fast float %5767, %5759
  %5769 = fcmp fast ogt float %5768, 0x3FFB6F8900000000
  %5770 = select i1 %5769, float 0x3FFB6F8900000000, float %5768
  %5771 = fmul fast float %5770, 0x3FE8A23460000000
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = call float @dx.op.binary.f32(i32 35, float %5770, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5774 = fmul fast float %5772, %5759
  %5775 = fmul fast float %5773, 0x3FF279A740000000
  %5776 = fadd fast float %5775, -1.000000e+00
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5766, float %73, float %5765, float %5766, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = call float @dx.op.unary.f32(i32 25, float %5777)  ; Rsqrt(value)
  %5779 = fmul fast float %5778, %5765
  %5780 = fmul fast float %5778, %5766
  %5781 = fmul fast float %5778, %73
  %5782 = fmul fast float %5776, %5776
  %5783 = fsub fast float 1.000000e+00, %5782
  %5784 = fmul fast float %5773, 0x40005F8BE0000000
  %5785 = fsub fast float 0x400C5BF8A0000000, %5784
  %5786 = fdiv fast float %5774, %5785
  %5787 = fmul fast float %5786, 0x3FEE31C3C0000000
  %5788 = fmul fast float %5787, %5783
  %5789 = fmul fast float %5773, 0x3FDACB7480000000
  %5790 = fadd fast float %5789, 0xBFD7347680000000
  %5791 = fmul fast float %5790, %5786
  %5792 = fmul fast float %5791, %5783
  br label %5793

; <label>:5793                                    ; preds = %5764, %5730
  %5794 = phi float [ %5779, %5764 ], [ 0.000000e+00, %5730 ]
  %5795 = phi float [ %5780, %5764 ], [ 0.000000e+00, %5730 ]
  %5796 = phi float [ %5781, %5764 ], [ 0.000000e+00, %5730 ]
  %5797 = phi float [ %5788, %5764 ], [ 0.000000e+00, %5730 ]
  %5798 = phi float [ %5792, %5764 ], [ 0.000000e+00, %5730 ]
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fmul fast float %5799, 0x3FDF454380000000
  %5801 = fmul fast float %5799, %5799
  %5802 = fmul fast float %5801, 0x3FEE471020000000
  %5803 = fadd fast float %5802, 0xBFD42F6020000000
  %5804 = fmul fast float %5759, 0x3FD20DD760000000
  %5805 = fmul fast float %5803, %5798
  %5806 = fadd fast float %5805, %5804
  %5807 = fmul fast float %5800, %5797
  %5808 = fadd fast float %5806, %5807
  %5809 = fsub fast float %5806, %5807
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fmul fast float %5810, 0x3FDF454380000000
  %5812 = fmul fast float %5810, %5810
  %5813 = fmul fast float %5812, 0x3FEE471020000000
  %5814 = fadd fast float %5813, 0xBFD42F6020000000
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5759, float %5797, float %5798, float 0x3FD20DD760000000, float %5811, float %5814)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5817 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = fcmp fast oeq float %5817, 0.000000e+00
  %5819 = fcmp fast oeq float %5816, 0.000000e+00
  %5820 = or i1 %5819, %5818
  br i1 %5820, label %5850, label %5821

; <label>:5821                                    ; preds = %5793
  %5822 = fsub fast float -0.000000e+00, %70
  %5823 = fsub fast float -0.000000e+00, %68
  %5824 = call float @dx.op.unary.f32(i32 24, float %5817)  ; Sqrt(value)
  %5825 = fdiv fast float %5824, %5816
  %5826 = fcmp fast ogt float %5825, 0x3FFB6F8900000000
  %5827 = select i1 %5826, float 0x3FFB6F8900000000, float %5825
  %5828 = fmul fast float %5827, 0x3FE8A23460000000
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = call float @dx.op.binary.f32(i32 35, float %5827, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5831 = fmul fast float %5829, %5816
  %5832 = fmul fast float %5830, 0x3FF279A740000000
  %5833 = fadd fast float %5832, -1.000000e+00
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %69, float %5822, float %5823, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = call float @dx.op.unary.f32(i32 25, float %5834)  ; Rsqrt(value)
  %5836 = fmul fast float %5835, %5822
  %5837 = fmul fast float %5835, %5823
  %5838 = fmul fast float %5835, %69
  %5839 = fmul fast float %5833, %5833
  %5840 = fsub fast float 1.000000e+00, %5839
  %5841 = fmul fast float %5830, 0x40005F8BE0000000
  %5842 = fsub fast float 0x400C5BF8A0000000, %5841
  %5843 = fdiv fast float %5831, %5842
  %5844 = fmul fast float %5843, 0x3FEE31C3C0000000
  %5845 = fmul fast float %5844, %5840
  %5846 = fmul fast float %5830, 0x3FDACB7480000000
  %5847 = fadd fast float %5846, 0xBFD7347680000000
  %5848 = fmul fast float %5847, %5843
  %5849 = fmul fast float %5848, %5840
  br label %5850

; <label>:5850                                    ; preds = %5821, %5793
  %5851 = phi float [ %5836, %5821 ], [ 0.000000e+00, %5793 ]
  %5852 = phi float [ %5837, %5821 ], [ 0.000000e+00, %5793 ]
  %5853 = phi float [ %5838, %5821 ], [ 0.000000e+00, %5793 ]
  %5854 = phi float [ %5845, %5821 ], [ 0.000000e+00, %5793 ]
  %5855 = phi float [ %5849, %5821 ], [ 0.000000e+00, %5793 ]
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = fmul fast float %5856, 0x3FDF454380000000
  %5858 = fmul fast float %5856, %5856
  %5859 = fmul fast float %5858, 0x3FEE471020000000
  %5860 = fadd fast float %5859, 0xBFD42F6020000000
  %5861 = fmul fast float %5816, 0x3FD20DD760000000
  %5862 = fmul fast float %5860, %5855
  %5863 = fadd fast float %5862, %5861
  %5864 = fmul fast float %5857, %5854
  %5865 = fadd fast float %5863, %5864
  %5866 = fsub fast float %5863, %5864
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = fmul fast float %5867, 0x3FDF454380000000
  %5869 = fmul fast float %5867, %5867
  %5870 = fmul fast float %5869, 0x3FEE471020000000
  %5871 = fadd fast float %5870, 0xBFD42F6020000000
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5854, float %5855, float 0x3FD20DD760000000, float %5868, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5874 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = fcmp fast oeq float %5874, 0.000000e+00
  %5876 = fcmp fast oeq float %5873, 0.000000e+00
  %5877 = or i1 %5876, %5875
  br i1 %5877, label %5907, label %5878

; <label>:5878                                    ; preds = %5850
  %5879 = fsub fast float -0.000000e+00, %66
  %5880 = fsub fast float -0.000000e+00, %64
  %5881 = call float @dx.op.unary.f32(i32 24, float %5874)  ; Sqrt(value)
  %5882 = fdiv fast float %5881, %5873
  %5883 = fcmp fast ogt float %5882, 0x3FFB6F8900000000
  %5884 = select i1 %5883, float 0x3FFB6F8900000000, float %5882
  %5885 = fmul fast float %5884, 0x3FE8A23460000000
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = call float @dx.op.binary.f32(i32 35, float %5884, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5888 = fmul fast float %5886, %5873
  %5889 = fmul fast float %5887, 0x3FF279A740000000
  %5890 = fadd fast float %5889, -1.000000e+00
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %65, float %5879, float %5880, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 25, float %5891)  ; Rsqrt(value)
  %5893 = fmul fast float %5892, %5879
  %5894 = fmul fast float %5892, %5880
  %5895 = fmul fast float %5892, %65
  %5896 = fmul fast float %5890, %5890
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = fmul fast float %5887, 0x40005F8BE0000000
  %5899 = fsub fast float 0x400C5BF8A0000000, %5898
  %5900 = fdiv fast float %5888, %5899
  %5901 = fmul fast float %5900, 0x3FEE31C3C0000000
  %5902 = fmul fast float %5901, %5897
  %5903 = fmul fast float %5887, 0x3FDACB7480000000
  %5904 = fadd fast float %5903, 0xBFD7347680000000
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %5905, %5897
  br label %5907

; <label>:5907                                    ; preds = %5878, %5850
  %5908 = phi float [ %5893, %5878 ], [ 0.000000e+00, %5850 ]
  %5909 = phi float [ %5894, %5878 ], [ 0.000000e+00, %5850 ]
  %5910 = phi float [ %5895, %5878 ], [ 0.000000e+00, %5850 ]
  %5911 = phi float [ %5902, %5878 ], [ 0.000000e+00, %5850 ]
  %5912 = phi float [ %5906, %5878 ], [ 0.000000e+00, %5850 ]
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fmul fast float %5913, 0x3FDF454380000000
  %5915 = fmul fast float %5913, %5913
  %5916 = fmul fast float %5915, 0x3FEE471020000000
  %5917 = fadd fast float %5916, 0xBFD42F6020000000
  %5918 = fmul fast float %5873, 0x3FD20DD760000000
  %5919 = fmul fast float %5917, %5912
  %5920 = fadd fast float %5919, %5918
  %5921 = fmul fast float %5914, %5911
  %5922 = fadd fast float %5920, %5921
  %5923 = fsub fast float %5920, %5921
  %5924 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = fmul fast float %5924, 0x3FDF454380000000
  %5926 = fmul fast float %5924, %5924
  %5927 = fmul fast float %5926, 0x3FEE471020000000
  %5928 = fadd fast float %5927, 0xBFD42F6020000000
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5911, float %5912, float 0x3FD20DD760000000, float %5925, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5933 = call float @dx.op.binary.f32(i32 35, float %5809, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5866, float 0.000000e+00)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5923, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5815, float 0.000000e+00)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5872, float 0.000000e+00)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = call float @dx.op.binary.f32(i32 36, float %5731, float %5940)  ; FMin(a,b)
  %5942 = fsub fast float 1.000000e+00, %5754
  %5943 = fmul fast float %5941, %5942
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = bitcast float %5944 to i32
  %5946 = sub nsw i32 2129859010, %5945
  %5947 = bitcast i32 %5946 to float
  %5948 = call float @dx.op.binary.f32(i32 36, float %5732, float %5940)  ; FMin(a,b)
  %5949 = fmul fast float %5948, %5942
  %5950 = fsub fast float 1.000000e+00, %5949
  %5951 = bitcast float %5950 to i32
  %5952 = sub nsw i32 2129859010, %5951
  %5953 = bitcast i32 %5952 to float
  %5954 = call float @dx.op.binary.f32(i32 36, float %5733, float %5940)  ; FMin(a,b)
  %5955 = fmul fast float %5954, %5942
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = bitcast float %5956 to i32
  %5958 = sub nsw i32 2129859010, %5957
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5930, %5754
  %5961 = fmul fast float %5960, %5947
  %5962 = fmul fast float %5931, %5754
  %5963 = fmul fast float %5962, %5953
  %5964 = fmul fast float %5932, %5754
  %5965 = fmul fast float %5964, %5959
  %5966 = call float @dx.op.binary.f32(i32 36, float %5734, float %5940)  ; FMin(a,b)
  %5967 = fmul fast float %5966, %5942
  %5968 = fsub fast float 1.000000e+00, %5967
  %5969 = bitcast float %5968 to i32
  %5970 = sub nsw i32 2129859010, %5969
  %5971 = bitcast i32 %5970 to float
  %5972 = call float @dx.op.binary.f32(i32 36, float %5735, float %5940)  ; FMin(a,b)
  %5973 = fmul fast float %5972, %5942
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = bitcast float %5974 to i32
  %5976 = sub nsw i32 2129859010, %5975
  %5977 = bitcast i32 %5976 to float
  %5978 = call float @dx.op.binary.f32(i32 36, float %5743, float %5940)  ; FMin(a,b)
  %5979 = fmul fast float %5978, %5942
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = bitcast float %5980 to i32
  %5982 = sub nsw i32 2129859010, %5981
  %5983 = bitcast i32 %5982 to float
  %5984 = fmul fast float %5936, %5754
  %5985 = fmul fast float %5984, %5971
  %5986 = fmul fast float %5937, %5754
  %5987 = fmul fast float %5986, %5977
  %5988 = fmul fast float %5938, %5754
  %5989 = fmul fast float %5988, %5983
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5963, float %5965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = select i1 %249, float 0.000000e+00, float %5961
  %5992 = select i1 %249, float %5990, float %5963
  %5993 = select i1 %249, float 0.000000e+00, float %5965
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5934, float %5935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = select i1 %249, float 0.000000e+00, float %5933
  %5996 = select i1 %249, float %5994, float %5934
  %5997 = select i1 %249, float 0.000000e+00, float %5935
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5987, float %5989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = select i1 %249, float 0.000000e+00, float %5985
  %6000 = select i1 %249, float %5998, float %5987
  %6001 = select i1 %249, float 0.000000e+00, float %5989
  %6002 = fmul fast float %4450, %4450
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fmul fast float %5745, 9.843750e-01
  %6005 = fmul fast float %5740, 9.843750e-01
  %6006 = fadd fast float %6004, 7.812500e-03
  %6007 = fadd fast float %6005, 7.812500e-03
  %6008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6006, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = extractvalue %dx.types.ResRet.f32 %6008, 3
  %6013 = fsub fast float 1.000000e+00, %6003
  %6014 = fsub fast float %6011, %6009
  %6015 = fsub fast float %6012, %6010
  %6016 = fmul fast float %6014, %6013
  %6017 = fmul fast float %6015, %6013
  %6018 = fadd fast float %6016, %6009
  %6019 = fadd fast float %6017, %6010
  %6020 = fmul fast float %6018, %5734
  %6021 = fmul fast float %6018, %5735
  %6022 = fmul fast float %6018, %5743
  %6023 = fadd fast float %6020, %6019
  %6024 = fadd fast float %6021, %6019
  %6025 = fadd fast float %6022, %6019
  %6026 = fcmp fast ogt float %5096, 0.000000e+00
  br i1 %6026, label %6027, label %6053

; <label>:6027                                    ; preds = %5907
  %6028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %5745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6029 = extractvalue %dx.types.ResRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.ResRet.f32 %6028, 1
  %6031 = extractvalue %dx.types.ResRet.f32 %6028, 2
  %6032 = fadd fast float %6029, -5.000000e-01
  %6033 = fadd fast float %6030, -5.000000e-01
  %6034 = fadd fast float %6031, -5.000000e-01
  %6035 = fsub fast float 1.000000e+00, %5734
  %6036 = fsub fast float 1.000000e+00, %5735
  %6037 = fsub fast float 1.000000e+00, %5743
  %6038 = fmul fast float %5734, 4.000000e+00
  %6039 = fmul fast float %6038, %6035
  %6040 = fmul fast float %6039, %6032
  %6041 = fmul fast float %5735, 4.000000e+00
  %6042 = fmul fast float %6041, %6036
  %6043 = fmul fast float %6042, %6033
  %6044 = fmul fast float %5743, 4.000000e+00
  %6045 = fmul fast float %6044, %6037
  %6046 = fmul fast float %6045, %6034
  %6047 = fadd fast float %6040, %6023
  %6048 = fadd fast float %6043, %6024
  %6049 = fadd fast float %6046, %6025
  %6050 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  %6051 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6052 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  br label %6053

; <label>:6053                                    ; preds = %6027, %5907
  %6054 = phi float [ %6050, %6027 ], [ %6023, %5907 ]
  %6055 = phi float [ %6051, %6027 ], [ %6024, %5907 ]
  %6056 = phi float [ %6052, %6027 ], [ %6025, %5907 ]
  %6057 = call float @dx.op.binary.f32(i32 35, float %6055, float %6056)  ; FMax(a,b)
  %6058 = call float @dx.op.binary.f32(i32 35, float %6054, float %6057)  ; FMax(a,b)
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5732, float %5733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = fcmp fast ogt float %6060, 0x3E7FF19E20000000
  %6062 = fdiv fast float 1.000000e+00, %6060
  %6063 = select i1 %6061, float %6062, float 0.000000e+00
  %6064 = fmul fast float %6063, %5731
  %6065 = fmul fast float %6063, %5732
  %6066 = fmul fast float %6063, %5733
  %6067 = fadd fast float %6064, -1.000000e+00
  %6068 = fadd fast float %6065, -1.000000e+00
  %6069 = fadd fast float %6066, -1.000000e+00
  %6070 = fmul fast float %6067, 5.000000e-01
  %6071 = fmul fast float %6068, 5.000000e-01
  %6072 = fmul fast float %6069, 5.000000e-01
  %6073 = fadd fast float %6070, 1.000000e+00
  %6074 = fadd fast float %6071, 1.000000e+00
  %6075 = fadd fast float %6072, 1.000000e+00
  %6076 = call float @dx.op.binary.f32(i32 35, float %5745, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6077 = fdiv fast float %4450, %6076
  %6078 = fcmp fast olt float %5167, 1.270000e+02
  %6079 = fcmp fast olt float %5168, 1.270000e+02
  %6080 = fcmp fast olt float %5169, 1.270000e+02
  %6081 = fmul fast float %5167, 0xBFF7154760000000
  %6082 = fmul fast float %6081, %6077
  %6083 = fmul fast float %5168, 0xBFF7154760000000
  %6084 = fmul fast float %6083, %6077
  %6085 = fmul fast float %5169, 0xBFF7154760000000
  %6086 = fmul fast float %6085, %6077
  %6087 = call float @dx.op.unary.f32(i32 21, float %6082)  ; Exp(value)
  %6088 = call float @dx.op.unary.f32(i32 21, float %6084)  ; Exp(value)
  %6089 = call float @dx.op.unary.f32(i32 21, float %6086)  ; Exp(value)
  %6090 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6091 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6092 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6093 = select i1 %6078, float %6090, float 0.000000e+00
  %6094 = select i1 %6079, float %6091, float 0.000000e+00
  %6095 = select i1 %6080, float %6092, float 0.000000e+00
  %6096 = fmul fast float %6093, %6059
  %6097 = fmul fast float %6094, %6059
  %6098 = fmul fast float %6095, %6059
  %6099 = fadd fast float %6096, -1.000000e+00
  %6100 = fadd fast float %6097, -1.000000e+00
  %6101 = fadd fast float %6098, -1.000000e+00
  %6102 = fmul fast float %6099, %5122
  %6103 = fmul fast float %6100, %5122
  %6104 = fmul fast float %6101, %5122
  %6105 = fmul fast float %6054, %5999
  %6106 = fmul fast float %6055, %6000
  %6107 = fmul fast float %6056, %6001
  %6108 = fsub fast float 1.000000e+00, %5745
  %6109 = bitcast float %6108 to i32
  %6110 = sitofp i32 %6109 to float
  %6111 = fmul fast float %6110, 5.000000e+00
  %6112 = fadd fast float %6111, 0xC1EFBF8940000000
  %6113 = fptosi float %6112 to i32
  %6114 = bitcast i32 %6113 to float
  %6115 = fmul fast float %6114, %5097
  %6116 = fmul fast float %5991, %6115
  %6117 = fmul fast float %6116, %6059
  %6118 = fmul fast float %6117, %6073
  %6119 = fmul fast float %5992, %6115
  %6120 = fmul fast float %6119, %6059
  %6121 = fmul fast float %6120, %6074
  %6122 = fmul fast float %5993, %6115
  %6123 = fmul fast float %6122, %6059
  %6124 = fmul fast float %6123, %6075
  %6125 = fadd fast float %6105, %5080
  %6126 = fadd fast float %6125, %6118
  %6127 = fmul fast float %6126, %5122
  %6128 = fadd fast float %6106, %5081
  %6129 = fadd fast float %6128, %6121
  %6130 = fmul fast float %6129, %5122
  %6131 = fadd fast float %6107, %5082
  %6132 = fadd fast float %6131, %6124
  %6133 = fmul fast float %6132, %5122
  %6134 = fmul fast float %5735, 0x4012D0A400000000
  %6135 = fadd fast float %6104, 1.000000e+00
  %6136 = fadd fast float %6103, 1.000000e+00
  %6137 = fadd fast float %6102, 1.000000e+00
  %6138 = fmul fast float %6059, %5993
  %6139 = fmul fast float %6059, %5992
  %6140 = fmul fast float %6059, %5991
  %6141 = fsub fast float 1.000000e+00, %5740
  %6142 = fmul fast float %6141, %5122
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  %6145 = fsub fast float 1.000000e+00, %6144
  %6146 = fadd fast float %6134, 0x3FDB6377A0000000
  %6147 = fmul fast float %6145, %6146
  %6148 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6149 = fadd fast float %6147, %6148
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = call float @dx.op.binary.f32(i32 35, float %6150, float 0x3F847AE140000000)  ; FMax(a,b)
  %6152 = fmul fast float %6151, %6151
  %6153 = fmul fast float %6152, %6152
  %6154 = fmul fast float %6153, 0xC00A935000000000
  %6155 = call float @dx.op.unary.f32(i32 21, float %6154)  ; Exp(value)
  %6156 = fsub fast float 1.000000e+00, %6155
  %6157 = fmul fast float %6137, %5995
  %6158 = fmul fast float %6157, %6156
  %6159 = fmul fast float %6136, %5996
  %6160 = fmul fast float %6159, %6156
  %6161 = fmul fast float %6135, %5997
  %6162 = fmul fast float %6161, %6156
  %6163 = fadd fast float %6158, %6140
  %6164 = fmul fast float %6163, %5122
  %6165 = fadd fast float %6160, %6139
  %6166 = fmul fast float %6165, %5122
  %6167 = fadd fast float %6162, %6138
  %6168 = fmul fast float %6167, %5122
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 3
  %6171 = fcmp fast oeq float %6170, 0.000000e+00
  br i1 %6171, label %7376, label %6172

; <label>:6172                                    ; preds = %6053
  %6173 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6184 = select i1 %249, float %6181, float %6177
  %6185 = select i1 %249, float %6183, float %6178
  %6186 = select i1 %249, float %6182, float %6179
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6189 = fmul fast float %6188, %107
  %6190 = fmul fast float %6188, %108
  %6191 = fmul fast float %6188, %109
  %6192 = fadd fast float %6189, %155
  %6193 = fadd fast float %6190, %156
  %6194 = fadd fast float %6191, %157
  %6195 = fcmp fast olt float %6170, 0.000000e+00
  br i1 %6195, label %6820, label %6196

; <label>:6196                                    ; preds = %6172
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6212 = fmul fast float %6198, %6192
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6199, float %6212)  ; FMad(a,b,c)
  %6214 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6200, float %6213)  ; FMad(a,b,c)
  %6215 = fadd fast float %6214, %6201
  %6216 = fmul fast float %6203, %6192
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6204, float %6216)  ; FMad(a,b,c)
  %6218 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6205, float %6217)  ; FMad(a,b,c)
  %6219 = fadd fast float %6218, %6206
  %6220 = fmul fast float %6208, %6192
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6209, float %6220)  ; FMad(a,b,c)
  %6222 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6210, float %6221)  ; FMad(a,b,c)
  %6223 = fadd fast float %6222, %6211
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6228 = fmul fast float %6227, %6215
  %6229 = fmul fast float %6227, %6219
  %6230 = fadd fast float %6228, %6225
  %6231 = fadd fast float %6229, %6226
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 3
  %6236 = fmul fast float %6235, %6215
  %6237 = fmul fast float %6235, %6219
  %6238 = fadd fast float %6236, %6233
  %6239 = fadd fast float %6237, %6234
  %6240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6240, 1
  %6242 = fsub fast float %6241, %6223
  %6243 = extractvalue %dx.types.CBufRet.f32 %6240, 2
  %6244 = fmul fast float %6242, %6243
  %6245 = fsub fast float 1.000000e+00, %6244
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6250 = fadd fast float %6249, %6247
  %6251 = fcmp fast ogt float %6250, 0.000000e+00
  br i1 %6251, label %6252, label %6276

; <label>:6252                                    ; preds = %6196
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = fsub fast float %6238, %6254
  %6257 = fsub fast float %6239, %6255
  %6258 = fcmp fast olt float %6256, 0.000000e+00
  %6259 = fcmp fast olt float %6257, 0.000000e+00
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6264 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6265 = select i1 %6258, float %6261, float %6263
  %6266 = select i1 %6259, float %6262, float %6264
  %6267 = fmul fast float %6265, %6256
  %6268 = fmul fast float %6266, %6257
  %6269 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6270 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6272 = call float @dx.op.binary.f32(i32 35, float %6269, float %6270)  ; FMax(a,b)
  %6273 = fsub fast float %6271, %6272
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = fmul fast float %6274, %6246
  br label %6276

; <label>:6276                                    ; preds = %6252, %6196
  %6277 = phi float [ %6275, %6252 ], [ 0.000000e+00, %6196 ]
  %6278 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6279 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6280 = fadd fast float %6279, %6278
  %6281 = fcmp fast ogt float %6280, 0.000000e+00
  %6282 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  br i1 %6281, label %6283, label %6306

; <label>:6283                                    ; preds = %6276
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = fsub fast float %6230, %6285
  %6288 = fsub fast float %6231, %6286
  %6289 = fcmp fast olt float %6287, 0.000000e+00
  %6290 = fcmp fast olt float %6288, 0.000000e+00
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6296 = select i1 %6289, float %6292, float %6294
  %6297 = select i1 %6290, float %6293, float %6295
  %6298 = fmul fast float %6296, %6287
  %6299 = fmul fast float %6297, %6288
  %6300 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6301 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6300, float %6301)  ; FMax(a,b)
  %6303 = fsub fast float %6282, %6302
  %6304 = call float @dx.op.unary.f32(i32 7, float %6303)  ; Saturate(value)
  %6305 = fmul fast float %6304, %6246
  br label %6306

; <label>:6306                                    ; preds = %6283, %6276
  %6307 = phi float [ %6305, %6283 ], [ 0.000000e+00, %6276 ]
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = fsub fast float %6215, %6312
  %6315 = fsub fast float %6219, %6313
  %6316 = fcmp fast olt float %6314, 0.000000e+00
  %6317 = fcmp fast olt float %6315, 0.000000e+00
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6330 = fsub fast float %6282, %6329
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6331, float %6310)  ; FMin(a,b)
  %6333 = fmul fast float %6332, %6246
  %6334 = fsub fast float %6307, %6333
  %6335 = fsub fast float %6277, %6307
  %6336 = fsub fast float %6335, %6333
  %6337 = call float @dx.op.binary.f32(i32 35, float %6307, float %6277)  ; FMax(a,b)
  %6338 = call float @dx.op.binary.f32(i32 35, float %6333, float %6337)  ; FMax(a,b)
  %6339 = fcmp fast olt float %6338, 1.000000e+00
  br i1 %6339, label %6340, label %6738, !dx.controlflow.hints !94

; <label>:6340                                    ; preds = %6306
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = fcmp fast une float %6342, 0.000000e+00
  br i1 %6343, label %6344, label %6738, !dx.controlflow.hints !95

; <label>:6344                                    ; preds = %6340
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6345, 3
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = fmul fast float %6346, %6192
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6347, float %6360)  ; FMad(a,b,c)
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = fadd fast float %6362, %6349
  %6364 = fmul fast float %6351, %6192
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6352, float %6364)  ; FMad(a,b,c)
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6353, float %6365)  ; FMad(a,b,c)
  %6367 = fadd fast float %6366, %6354
  %6368 = fmul fast float %6356, %6192
  %6369 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6357, float %6368)  ; FMad(a,b,c)
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6358, float %6369)  ; FMad(a,b,c)
  %6371 = fadd fast float %6370, %6359
  %6372 = fcmp fast oge float %6363, 1.000000e+00
  %6373 = fcmp fast oge float %6367, 1.000000e+00
  %6374 = or i1 %6372, %6373
  %6375 = fcmp fast olt float %6363, 0.000000e+00
  %6376 = fcmp fast olt float %6367, 0.000000e+00
  %6377 = or i1 %6375, %6376
  %6378 = or i1 %6374, %6377
  br i1 %6378, label %6738, label %6379, !dx.controlflow.hints !96

; <label>:6379                                    ; preds = %6344
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6382 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6383 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.i32 %6384, 2
  %6386 = uitofp i32 %6385 to float
  %6387 = extractvalue %dx.types.CBufRet.i32 %6384, 3
  %6388 = uitofp i32 %6387 to float
  %6389 = extractvalue %dx.types.CBufRet.f32 %6380, 3
  %6390 = fmul fast float %6389, 2.000000e+00
  %6391 = fsub fast float %6363, %6381
  %6392 = fsub fast float %6367, %6382
  %6393 = fmul fast float %6390, %6391
  %6394 = fmul fast float %6390, %6392
  %6395 = fdiv fast float 1.000000e+00, %6175
  %6396 = fmul fast float %6394, %6395
  %6397 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6398 = fmul fast float %6383, %6194
  %6399 = fmul fast float %6398, %6390
  %6400 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6401 = call float @dx.op.unary.f32(i32 6, float %6393)  ; FAbs(value)
  %6402 = call float @dx.op.binary.f32(i32 35, float %6400, float %6397)  ; FMax(a,b)
  %6403 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6404 = fmul fast float %6403, 2.000000e+00
  %6405 = call float @dx.op.unary.f32(i32 23, float %6404)  ; Log(value)
  %6406 = call float @dx.op.binary.f32(i32 35, float %6405, float %6386)  ; FMax(a,b)
  %6407 = call float @dx.op.unary.f32(i32 22, float %6406)  ; Frc(value)
  %6408 = fadd fast float %6407, 0xBFEA666660000000
  %6409 = fmul fast float %6408, 8.000000e+00
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = call float @dx.op.unary.f32(i32 27, float %6406)  ; Round_ni(value)
  %6412 = fadd fast float %6411, %6410
  %6413 = call float @dx.op.binary.f32(i32 36, float %6412, float %6388)  ; FMin(a,b)
  %6414 = call float @dx.op.unary.f32(i32 27, float %6413)  ; Round_ni(value)
  %6415 = fsub fast float -0.000000e+00, %6414
  %6416 = call float @dx.op.unary.f32(i32 21, float %6415)  ; Exp(value)
  %6417 = fmul fast float %6416, %6390
  %6418 = fmul fast float %6417, %6363
  %6419 = fmul fast float %6417, %6367
  %6420 = fmul fast float %6418, 2.500000e-01
  %6421 = fmul fast float %6419, 2.500000e-01
  %6422 = fadd fast float %6420, 5.000000e-01
  %6423 = fadd fast float %6421, 5.000000e-01
  %6424 = fsub fast float %6388, %6386
  %6425 = fptoui float %6424 to i32
  %6426 = add i32 %6425, 320
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6426)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = fcmp fast une float %6413, %6388
  %6431 = fsub fast float %6363, %6428
  %6432 = fsub fast float %6367, %6429
  %6433 = call float @dx.op.unary.f32(i32 6, float %6431)  ; FAbs(value)
  %6434 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6435 = fmul fast float %6433, %6417
  %6436 = fmul fast float %6434, %6417
  %6437 = fcmp fast olt float %6435, 1.000000e+00
  %6438 = fcmp fast olt float %6436, 1.000000e+00
  %6439 = and i1 %6437, %6438
  %6440 = or i1 %6430, %6439
  br i1 %6440, label %6441, label %6738, !dx.controlflow.hints !97

; <label>:6441                                    ; preds = %6379
  %6442 = fmul fast float %6419, 5.000000e-01
  %6443 = fmul fast float %6418, 5.000000e-01
  %6444 = fadd fast float %6442, 5.000000e-01
  %6445 = fadd fast float %6443, 5.000000e-01
  %6446 = sitofp i32 %6385 to float
  %6447 = fsub fast float %6413, %6446
  %6448 = call float @dx.op.unary.f32(i32 27, float %6447)  ; Round_ni(value)
  %6449 = call float @dx.op.unary.f32(i32 22, float %6413)  ; Frc(value)
  %6450 = call float @dx.op.unary.f32(i32 22, float %6445)  ; Frc(value)
  %6451 = call float @dx.op.unary.f32(i32 22, float %6444)  ; Frc(value)
  %6452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6450, float %6451, float %6448, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.ResRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.ResRet.f32 %6452, 3
  %6457 = fcmp fast ogt float %6449, 0.000000e+00
  br i1 %6457, label %6458, label %6479, !dx.controlflow.hints !98

; <label>:6458                                    ; preds = %6441
  %6459 = fadd fast float %6448, 1.000000e+00
  %6460 = call float @dx.op.unary.f32(i32 22, float %6422)  ; Frc(value)
  %6461 = call float @dx.op.unary.f32(i32 22, float %6423)  ; Frc(value)
  %6462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6460, float %6461, float %6459, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6463 = extractvalue %dx.types.ResRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.ResRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.ResRet.f32 %6462, 2
  %6466 = extractvalue %dx.types.ResRet.f32 %6462, 3
  %6467 = fsub fast float %6463, %6453
  %6468 = fsub fast float %6464, %6454
  %6469 = fsub fast float %6465, %6455
  %6470 = fsub fast float %6466, %6456
  %6471 = fmul fast float %6467, %6449
  %6472 = fmul fast float %6468, %6449
  %6473 = fmul fast float %6469, %6449
  %6474 = fmul fast float %6470, %6449
  %6475 = fadd fast float %6471, %6453
  %6476 = fadd fast float %6472, %6454
  %6477 = fadd fast float %6473, %6455
  %6478 = fadd fast float %6474, %6456
  br label %6479

; <label>:6479                                    ; preds = %6458, %6441
  %6480 = phi float [ %6475, %6458 ], [ %6453, %6441 ]
  %6481 = phi float [ %6476, %6458 ], [ %6454, %6441 ]
  %6482 = phi float [ %6477, %6458 ], [ %6455, %6441 ]
  %6483 = phi float [ %6478, %6458 ], [ %6456, %6441 ]
  %6484 = fadd fast float %6480, -5.000000e-01
  %6485 = fadd fast float %6482, -5.000000e-01
  %6486 = fmul fast float %6484, 0xBFD5555560000000
  %6487 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6485, float %6486)  ; FMad(a,b,c)
  %6488 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6481, float 0.000000e+00)  ; FMad(a,b,c)
  %6489 = fadd fast float %6488, %6483
  %6490 = fmul fast float %6484, -7.500000e-01
  %6491 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6485, float %6490)  ; FMad(a,b,c)
  %6492 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6481, float 0.000000e+00)  ; FMad(a,b,c)
  %6493 = fadd fast float %6492, %6483
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.CBufRet.f32 %6496, 3
  %6501 = fsub fast float %6497, %6487
  %6502 = fsub fast float %6498, %6489
  %6503 = fsub fast float %6499, %6491
  %6504 = fsub fast float %6500, %6493
  %6505 = fmul fast float %6501, %6495
  %6506 = fmul fast float %6502, %6495
  %6507 = fmul fast float %6503, %6495
  %6508 = fmul fast float %6504, %6495
  %6509 = fadd fast float %6505, %6487
  %6510 = fadd fast float %6506, %6489
  %6511 = fadd fast float %6507, %6491
  %6512 = fadd fast float %6508, %6493
  %6513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6514 = extractvalue %dx.types.ResRet.i32 %6513, 0
  %6515 = and i32 %6514, 536870911
  %6516 = uitofp i32 %6515 to float
  %6517 = fmul fast float %6516, %6363
  %6518 = fmul fast float %6516, %6367
  %6519 = fptoui float %6517 to i32
  %6520 = fptoui float %6518 to i32
  %6521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.i32 %6521, 0
  %6523 = and i32 %6522, 31
  %6524 = lshr i32 %6519, %6523
  %6525 = lshr i32 %6520, %6523
  %6526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.i32 %6526, 0
  %6528 = and i32 %6527, 31
  %6529 = shl i32 1, %6528
  %6530 = call i32 @dx.op.binary.i32(i32 40, i32 %6529, i32 4)  ; UMin(a,b)
  %6531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.i32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.i32 %6531, 1
  %6534 = icmp eq i32 %6530, 0
  br i1 %6534, label %6576, label %6535

; <label>:6535                                    ; preds = %6479
  br label %6536

; <label>:6536                                    ; preds = %6564, %6535
  %6537 = phi i32 [ %6567, %6564 ], [ 0, %6535 ]
  %6538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6539 = extractvalue %dx.types.ResRet.i32 %6538, 0
  %6540 = lshr i32 %6539, 16
  %6541 = and i32 %6540, 31
  %6542 = shl i32 %6525, %6541
  %6543 = add i32 %6542, %6524
  %6544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6545 = extractvalue %dx.types.ResRet.i32 %6544, 0
  %6546 = and i32 %6545, 31
  %6547 = shl i32 %6543, %6546
  %6548 = add i32 %6547, %6537
  %6549 = shl i32 %6548, 2
  %6550 = add i32 %6549, 32
  %6551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6550, i32 undef)  ; BufferLoad(srv,index,wot)
  %6552 = extractvalue %dx.types.ResRet.i32 %6551, 0
  %6553 = icmp slt i32 %6552, 0
  %6554 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6537
  %6555 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6537
  %6556 = bitcast float* %6554 to i32*
  %6557 = bitcast float* %6555 to i32*
  br i1 %6553, label %6558, label %6564

; <label>:6558                                    ; preds = %6536
  %6559 = and i32 %6552, 1073741823
  %6560 = add nuw nsw i32 %6559, 20
  %6561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6560, i32 undef)  ; BufferLoad(srv,index,wot)
  %6562 = extractvalue %dx.types.ResRet.i32 %6561, 0
  %6563 = extractvalue %dx.types.ResRet.i32 %6561, 1
  br label %6564

; <label>:6564                                    ; preds = %6558, %6536
  %6565 = phi i32 [ %6562, %6558 ], [ %6532, %6536 ]
  %6566 = phi i32 [ %6563, %6558 ], [ %6533, %6536 ]
  store i32 %6565, i32* %6556, align 4
  store i32 %6566, i32* %6557, align 4
  %6567 = add nuw i32 %6537, 1
  %6568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.i32 %6568, 2
  %6570 = icmp eq i32 %6569, 0
  %6571 = icmp ugt i32 %6552, -1073741825
  %6572 = and i1 %6571, %6570
  %6573 = icmp ult i32 %6567, %6530
  %6574 = and i1 %6572, %6573
  br i1 %6574, label %6536, label %6575

; <label>:6575                                    ; preds = %6564
  br label %6576

; <label>:6576                                    ; preds = %6575, %6479
  %6577 = phi i32 [ 0, %6479 ], [ %6567, %6575 ]
  %6578 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6579 = fptoui float %6578 to i32
  %6580 = icmp eq i32 %6579, 0
  br i1 %6580, label %6632, label %6581

; <label>:6581                                    ; preds = %6576
  br label %6582

; <label>:6582                                    ; preds = %6627, %6581
  %6583 = phi i32 [ %6628, %6627 ], [ %6577, %6581 ]
  %6584 = phi i32 [ %6629, %6627 ], [ 0, %6581 ]
  %6585 = lshr i32 %6584, 2
  %6586 = and i32 %6584, 3
  %6587 = add nuw nsw i32 %6585, 83
  %6588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6587)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.i32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.i32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.i32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.i32 %6588, 3
  %6593 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6589, i32* %6593, align 4
  %6594 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6590, i32* %6594, align 4
  %6595 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6591, i32* %6595, align 4
  %6596 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6592, i32* %6596, align 4
  %6597 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6586
  %6598 = load i32, i32* %6597, align 4, !tbaa !99, !noalias !103
  %6599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6600 = extractvalue %dx.types.ResRet.i32 %6599, 0
  %6601 = lshr i32 %6600, 16
  %6602 = and i32 %6601, 31
  %6603 = shl i32 %6525, %6602
  %6604 = add i32 %6603, %6524
  %6605 = shl i32 %6604, 2
  %6606 = add i32 %6605, %6598
  %6607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6606, i32 undef)  ; BufferLoad(srv,index,wot)
  %6608 = extractvalue %dx.types.ResRet.i32 %6607, 0
  %6609 = icmp eq i32 %6608, 0
  br i1 %6609, label %6627, label %6610

; <label>:6610                                    ; preds = %6582
  %6611 = icmp slt i32 %6608, 0
  %6612 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6583
  %6613 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6583
  %6614 = bitcast float* %6612 to i32*
  %6615 = bitcast float* %6613 to i32*
  br i1 %6611, label %6616, label %6623

; <label>:6616                                    ; preds = %6610
  %6617 = and i32 %6608, 1073741823
  %6618 = add i32 %6598, 20
  %6619 = add i32 %6618, %6617
  %6620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6619, i32 undef)  ; BufferLoad(srv,index,wot)
  %6621 = extractvalue %dx.types.ResRet.i32 %6620, 0
  %6622 = extractvalue %dx.types.ResRet.i32 %6620, 1
  br label %6623

; <label>:6623                                    ; preds = %6616, %6610
  %6624 = phi i32 [ %6621, %6616 ], [ %6532, %6610 ]
  %6625 = phi i32 [ %6622, %6616 ], [ %6533, %6610 ]
  store i32 %6624, i32* %6614, align 4
  store i32 %6625, i32* %6615, align 4
  %6626 = add i32 %6583, 1
  br label %6627

; <label>:6627                                    ; preds = %6623, %6582
  %6628 = phi i32 [ %6583, %6582 ], [ %6626, %6623 ]
  %6629 = add nuw i32 %6584, 1
  %6630 = icmp eq i32 %6629, %6579
  br i1 %6630, label %6631, label %6582

; <label>:6631                                    ; preds = %6627
  br label %6632

; <label>:6632                                    ; preds = %6631, %6576
  %6633 = phi i32 [ %6577, %6576 ], [ %6628, %6631 ]
  %6634 = icmp eq i32 %6633, 1
  %6635 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6636 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6634, label %6637, label %6640

; <label>:6637                                    ; preds = %6632
  %6638 = load float, float* %6635, align 4
  %6639 = load float, float* %6636, align 4
  br label %6667

; <label>:6640                                    ; preds = %6632
  %6641 = load float, float* %6635, align 4
  %6642 = load float, float* %6636, align 4
  %6643 = fdiv fast float 1.000000e+00, %6642
  %6644 = fsub fast float %6641, %6643
  %6645 = icmp ugt i32 %6633, 1
  br i1 %6645, label %6646, label %6662

; <label>:6646                                    ; preds = %6640
  br label %6647

; <label>:6647                                    ; preds = %6647, %6646
  %6648 = phi float [ %6657, %6647 ], [ %6644, %6646 ]
  %6649 = phi float [ %6658, %6647 ], [ %6641, %6646 ]
  %6650 = phi i32 [ %6659, %6647 ], [ 1, %6646 ]
  %6651 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6650
  %6652 = load float, float* %6651, align 4
  %6653 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6650
  %6654 = load float, float* %6653, align 4
  %6655 = fdiv fast float 1.000000e+00, %6654
  %6656 = fsub fast float %6652, %6655
  %6657 = call float @dx.op.binary.f32(i32 36, float %6648, float %6656)  ; FMin(a,b)
  %6658 = call float @dx.op.binary.f32(i32 35, float %6649, float %6652)  ; FMax(a,b)
  %6659 = add nuw i32 %6650, 1
  %6660 = icmp eq i32 %6659, %6633
  br i1 %6660, label %6661, label %6647

; <label>:6661                                    ; preds = %6647
  br label %6662

; <label>:6662                                    ; preds = %6661, %6640
  %6663 = phi float [ %6644, %6640 ], [ %6657, %6661 ]
  %6664 = phi float [ %6641, %6640 ], [ %6658, %6661 ]
  %6665 = fsub fast float %6664, %6663
  %6666 = fdiv fast float 1.000000e+00, %6665
  br label %6667

; <label>:6667                                    ; preds = %6662, %6637
  %6668 = phi float [ %6638, %6637 ], [ %6664, %6662 ]
  %6669 = phi float [ %6639, %6637 ], [ %6666, %6662 ]
  %6670 = fadd fast float %6371, %6668
  %6671 = fmul fast float %6670, %6669
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = fmul fast float %6672, 2.000000e+00
  %6674 = fsub fast float 1.000000e+00, %6673
  %6675 = fmul fast float %6509, %6509
  %6676 = fsub fast float %6510, %6675
  %6677 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6676)  ; FMax(a,b)
  %6678 = fdiv fast float 1.000000e+00, %6677
  %6679 = fmul fast float %6510, %6509
  %6680 = fsub fast float %6511, %6679
  %6681 = fsub fast float %6674, %6509
  %6682 = fmul fast float %6674, %6674
  %6683 = fsub fast float %6682, %6510
  %6684 = fmul fast float %6678, %6680
  %6685 = fmul fast float %6684, %6681
  %6686 = fsub fast float %6683, %6685
  %6687 = fmul fast float %6510, %6510
  %6688 = fsub fast float %6512, %6687
  %6689 = fmul fast float %6680, %6680
  %6690 = fmul fast float %6689, %6678
  %6691 = fsub fast float %6688, %6690
  %6692 = fdiv fast float %6686, %6691
  %6693 = fmul fast float %6692, %6680
  %6694 = fsub fast float %6681, %6693
  %6695 = fmul fast float %6694, %6678
  %6696 = fmul fast float %6695, %6509
  %6697 = fsub fast float 1.000000e+00, %6696
  %6698 = fmul fast float %6692, %6510
  %6699 = fsub fast float %6697, %6698
  %6700 = fmul fast float %6695, %6695
  %6701 = fmul fast float %6692, 4.000000e+00
  %6702 = fmul fast float %6701, %6699
  %6703 = fsub fast float %6700, %6702
  %6704 = call float @dx.op.unary.f32(i32 24, float %6703)  ; Sqrt(value)
  %6705 = fcmp fast oge float %6695, 0.000000e+00
  %6706 = fsub fast float -0.000000e+00, %6704
  %6707 = select i1 %6705, float %6706, float %6704
  %6708 = fsub fast float %6707, %6695
  %6709 = fdiv fast float %6708, %6692
  %6710 = fdiv fast float %6699, %6708
  %6711 = fmul fast float %6709, 5.000000e-01
  %6712 = fmul fast float %6710, 2.000000e+00
  %6713 = select i1 %6705, float %6711, float %6712
  %6714 = select i1 %6705, float %6712, float %6711
  %6715 = call float @dx.op.binary.f32(i32 35, float %6713, float %6714)  ; FMax(a,b)
  %6716 = call float @dx.op.binary.f32(i32 36, float %6713, float %6714)  ; FMin(a,b)
  %6717 = fcmp fast ogt float %6674, %6715
  %6718 = fsub fast float %6674, %6716
  %6719 = fsub fast float %6674, %6715
  %6720 = fsub fast float %6715, %6716
  %6721 = select i1 %6717, float %6719, float %6720
  %6722 = fmul float %6718, %6721
  %6723 = select i1 %6717, float %6716, float %6674
  %6724 = fcmp fast ogt float %6674, %6716
  %6725 = fmul fast float %6723, %6715
  %6726 = fadd fast float %6723, %6715
  %6727 = fmul fast float %6726, %6509
  %6728 = fadd fast float %6725, %6510
  %6729 = fsub fast float %6728, %6727
  %6730 = fdiv fast float %6729, %6722
  %6731 = select i1 %6724, float %6730, float 0.000000e+00
  %6732 = fsub fast float 1.000000e+00, %6731
  %6733 = select i1 %6717, float %6732, float %6731
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6494, 3
  %6736 = fmul fast float %6735, %6734
  %6737 = fsub fast float 1.000000e+00, %6736
  br label %6738

; <label>:6738                                    ; preds = %6667, %6379, %6344, %6340, %6306
  %6739 = phi float [ 1.000000e+00, %6306 ], [ %6737, %6667 ], [ 1.000000e+00, %6344 ], [ 1.000000e+00, %6379 ], [ 1.000000e+00, %6340 ]
  %6740 = fcmp fast ogt float %6336, 0.000000e+00
  br i1 %6740, label %6741, label %6747, !dx.controlflow.hints !112

; <label>:6741                                    ; preds = %6738
  %6742 = fadd fast float %6249, %6223
  %6743 = call float @dx.op.binary.f32(i32 35, float %6742, float 0.000000e+00)  ; FMax(a,b)
  %6744 = fadd fast float %6743, 0x3F10000000000000
  %6745 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6238, float %6239, float undef, float undef, i32 0, i32 0, i32 undef, float %6744)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6746 = extractvalue %dx.types.ResRet.f32 %6745, 0
  br label %6747

; <label>:6747                                    ; preds = %6741, %6738
  %6748 = phi float [ %6746, %6741 ], [ 1.000000e+00, %6738 ]
  %6749 = fcmp fast ogt float %6334, 0.000000e+00
  br i1 %6749, label %6750, label %6756, !dx.controlflow.hints !113

; <label>:6750                                    ; preds = %6747
  %6751 = fadd fast float %6279, %6223
  %6752 = call float @dx.op.binary.f32(i32 35, float %6751, float 0.000000e+00)  ; FMax(a,b)
  %6753 = fadd fast float %6752, 0x3F10000000000000
  %6754 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6230, float %6231, float undef, float undef, i32 0, i32 0, i32 undef, float %6753)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6755 = extractvalue %dx.types.ResRet.f32 %6754, 0
  br label %6756

; <label>:6756                                    ; preds = %6750, %6747
  %6757 = phi float [ %6755, %6750 ], [ 1.000000e+00, %6747 ]
  %6758 = fcmp fast ogt float %6333, 0.000000e+00
  br i1 %6758, label %6759, label %6766, !dx.controlflow.hints !114

; <label>:6759                                    ; preds = %6756
  %6760 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6761 = fadd fast float %6760, %6223
  %6762 = call float @dx.op.binary.f32(i32 35, float %6761, float 0.000000e+00)  ; FMax(a,b)
  %6763 = fadd fast float %6762, 0x3F10000000000000
  %6764 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6215, float %6219, float undef, float undef, i32 0, i32 0, i32 undef, float %6763)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6765 = extractvalue %dx.types.ResRet.f32 %6764, 0
  br label %6766

; <label>:6766                                    ; preds = %6759, %6756
  %6767 = phi float [ %6765, %6759 ], [ 1.000000e+00, %6756 ]
  %6768 = fsub fast float %6748, %6739
  %6769 = fmul fast float %6768, %6277
  %6770 = fadd fast float %6769, %6739
  %6771 = fsub fast float %6757, %6770
  %6772 = fmul fast float %6771, %6307
  %6773 = fadd fast float %6772, %6770
  %6774 = fsub fast float %6767, %6773
  %6775 = fmul fast float %6774, %6333
  %6776 = fadd fast float %6775, %6773
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 2
  %6779 = fcmp fast ogt float %6778, 0.000000e+00
  br i1 %6779, label %6780, label %6820, !dx.controlflow.hints !115

; <label>:6780                                    ; preds = %6766
  %6781 = fcmp fast ugt float %6778, 0.000000e+00
  br i1 %6781, label %6782, label %6817

; <label>:6782                                    ; preds = %6780
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.CBufRet.f32 %6788, 1
  %6791 = extractvalue %dx.types.CBufRet.f32 %6788, 2
  %6792 = extractvalue %dx.types.CBufRet.f32 %6788, 3
  %6793 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = fadd fast float %6796, %6192
  %6800 = fadd fast float %6797, %6193
  %6801 = fadd fast float %6798, %6194
  %6802 = fmul fast float %6799, %6784
  %6803 = call float @dx.op.tertiary.f32(i32 46, float %6785, float %6800, float %6802)  ; FMad(a,b,c)
  %6804 = call float @dx.op.tertiary.f32(i32 46, float %6786, float %6801, float %6803)  ; FMad(a,b,c)
  %6805 = fadd fast float %6804, %6787
  %6806 = fmul fast float %6799, %6789
  %6807 = call float @dx.op.tertiary.f32(i32 46, float %6790, float %6800, float %6806)  ; FMad(a,b,c)
  %6808 = call float @dx.op.tertiary.f32(i32 46, float %6791, float %6801, float %6807)  ; FMad(a,b,c)
  %6809 = fadd fast float %6808, %6792
  %6810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6805, float %6809, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  %6812 = fmul fast float %6811, %6794
  %6813 = fadd fast float %6812, %6793
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = fmul fast float %6814, %6778
  %6816 = fsub fast float 1.000000e+00, %6815
  br label %6817

; <label>:6817                                    ; preds = %6782, %6780
  %6818 = phi float [ %6816, %6782 ], [ 1.000000e+00, %6780 ]
  %6819 = fmul fast float %6818, %6776
  br label %6820

; <label>:6820                                    ; preds = %6817, %6766, %6172
  %6821 = phi float [ 1.000000e+00, %6172 ], [ %6819, %6817 ], [ %6776, %6766 ]
  %6822 = call float @dx.op.binary.f32(i32 36, float %6821, float %6821)  ; FMin(a,b)
  %6823 = call float @dx.op.binary.f32(i32 36, float %6821, float %6822)  ; FMin(a,b)
  %6824 = fcmp fast ogt float %6823, 0.000000e+00
  br i1 %6824, label %6825, label %6985, !dx.controlflow.hints !116

; <label>:6825                                    ; preds = %6820
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = fmul fast float %6827, %6192
  %6842 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6828, float %6841)  ; FMad(a,b,c)
  %6843 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6829, float %6842)  ; FMad(a,b,c)
  %6844 = fadd fast float %6843, %6830
  %6845 = fmul fast float %6832, %6192
  %6846 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6833, float %6845)  ; FMad(a,b,c)
  %6847 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6834, float %6846)  ; FMad(a,b,c)
  %6848 = fadd fast float %6847, %6835
  %6849 = fmul fast float %6837, %6192
  %6850 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6838, float %6849)  ; FMad(a,b,c)
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6839, float %6850)  ; FMad(a,b,c)
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6856 = fmul fast float %6855, %6844
  %6857 = fmul fast float %6855, %6848
  %6858 = fadd fast float %6856, %6853
  %6859 = fadd fast float %6857, %6854
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = fsub fast float %6858, %6861
  %6864 = fsub fast float %6859, %6862
  %6865 = fcmp fast olt float %6863, 0.000000e+00
  %6866 = fcmp fast olt float %6864, 0.000000e+00
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.CBufRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.CBufRet.f32 %6867, 3
  %6872 = select i1 %6865, float %6868, float %6870
  %6873 = select i1 %6866, float %6869, float %6871
  %6874 = fmul fast float %6872, %6863
  %6875 = fmul fast float %6873, %6864
  %6876 = call float @dx.op.unary.f32(i32 6, float %6874)  ; FAbs(value)
  %6877 = call float @dx.op.unary.f32(i32 6, float %6875)  ; FAbs(value)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6879 = call float @dx.op.binary.f32(i32 35, float %6876, float %6877)  ; FMax(a,b)
  %6880 = fsub fast float %6878, %6879
  %6881 = call float @dx.op.unary.f32(i32 7, float %6880)  ; Saturate(value)
  %6882 = fcmp fast ogt float %6881, 0.000000e+00
  br i1 %6882, label %6883, label %6924, !dx.controlflow.hints !117

; <label>:6883                                    ; preds = %6825
  %6884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6858, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6885 = extractvalue %dx.types.ResRet.f32 %6884, 1
  %6886 = fcmp fast ogt float %6885, 0.000000e+00
  br i1 %6886, label %6887, label %6919

; <label>:6887                                    ; preds = %6883
  %6888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6858, float %6859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6889 = extractvalue %dx.types.ResRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.ResRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.ResRet.f32 %6888, 2
  %6892 = extractvalue %dx.types.ResRet.f32 %6888, 3
  %6893 = fsub fast float 1.000000e+00, %6840
  %6894 = fsub fast float %6893, %6851
  %6895 = fmul fast float %6894, 0x400921FB60000000
  %6896 = fadd fast float %6895, 0x3FF921FB60000000
  %6897 = call float @dx.op.unary.f32(i32 13, float %6896)  ; Sin(value)
  %6898 = fadd fast float %6897, -1.000000e+00
  %6899 = fmul fast float %6898, 0x3FD45F3060000000
  %6900 = fmul fast float %6894, 0x401921FB60000000
  %6901 = fadd fast float %6900, 0x400921FB60000000
  %6902 = call float @dx.op.unary.f32(i32 13, float %6901)  ; Sin(value)
  %6903 = fadd fast float %6902, 0x3E7777A5C0000000
  %6904 = fmul fast float %6903, 0x3FC45F3060000000
  %6905 = fmul fast float %6894, 0x4022D97C80000000
  %6906 = fadd fast float %6905, 0x4012D97C80000000
  %6907 = call float @dx.op.unary.f32(i32 13, float %6906)  ; Sin(value)
  %6908 = fadd fast float %6907, 1.000000e+00
  %6909 = fmul fast float %6908, 0x3FBB2995E0000000
  %6910 = fmul fast float %6894, 0x402921FB60000000
  %6911 = fadd fast float %6910, 0x401921FB60000000
  %6912 = call float @dx.op.unary.f32(i32 13, float %6911)  ; Sin(value)
  %6913 = fadd fast float %6912, 0xBE8777A5C0000000
  %6914 = fmul fast float %6913, 0x3FB45F3060000000
  %6915 = call float @dx.op.dot4.f32(i32 56, float %6889, float %6890, float %6891, float %6892, float %6899, float %6904, float %6909, float %6914)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6916 = fmul fast float %6915, 0xBFF7154760000000
  %6917 = call float @dx.op.unary.f32(i32 21, float %6916)  ; Exp(value)
  %6918 = call float @dx.op.unary.f32(i32 7, float %6917)  ; Saturate(value)
  br label %6919

; <label>:6919                                    ; preds = %6887, %6883
  %6920 = phi float [ %6918, %6887 ], [ 1.000000e+00, %6883 ]
  %6921 = fadd fast float %6920, -1.000000e+00
  %6922 = fmul fast float %6921, %6881
  %6923 = fadd fast float %6922, 1.000000e+00
  br label %6924

; <label>:6924                                    ; preds = %6919, %6825
  %6925 = phi float [ %6923, %6919 ], [ 1.000000e+00, %6825 ]
  %6926 = fmul fast float %6925, %6821
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.CBufRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.CBufRet.f32 %6927, 2
  %6931 = fadd fast float %6928, %155
  %6932 = fadd fast float %6929, %156
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6935 = fsub fast float -0.000000e+00, %6931
  %6936 = fsub fast float -0.000000e+00, %6932
  %6937 = fsub fast float %5742, %6930
  %6938 = fadd fast float %6937, %6934
  %6939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6935, float %6936, float %6938)  ; Dot3(ax,ay,az,bx,by,bz)
  %6940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6941 = fdiv fast float 1.000000e+00, %6940
  %6942 = fmul fast float %6941, %6939
  %6943 = fmul fast float %6173, %6942
  %6944 = fmul fast float %6174, %6942
  %6945 = fadd fast float %6943, %6931
  %6946 = fadd fast float %6944, %6932
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6950 = fsub fast float %6945, %6948
  %6951 = fsub fast float %6946, %6949
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 3
  %6955 = fmul fast float %6950, %6953
  %6956 = fmul fast float %6951, %6954
  %6957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.i32 %6957, 3
  %6959 = icmp eq i32 %6958, 0
  br i1 %6959, label %6965, label %6960

; <label>:6960                                    ; preds = %6924
  %6961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6955, float %6956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = extractvalue %dx.types.ResRet.f32 %6961, 1
  %6964 = extractvalue %dx.types.ResRet.f32 %6961, 2
  br label %6970

; <label>:6965                                    ; preds = %6924
  %6966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6955, float %6956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.ResRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.ResRet.f32 %6966, 2
  br label %6970

; <label>:6970                                    ; preds = %6965, %6960
  %6971 = phi float [ %6962, %6960 ], [ %6967, %6965 ]
  %6972 = phi float [ %6963, %6960 ], [ %6968, %6965 ]
  %6973 = phi float [ %6964, %6960 ], [ %6969, %6965 ]
  %6974 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6975 = fmul fast float %6974, %6971
  %6976 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6977 = fsub fast float %6942, %6976
  %6978 = fsub fast float %6977, %6975
  %6979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6978)  ; FMax(a,b)
  %6980 = fmul fast float %6979, %6972
  %6981 = call float @dx.op.binary.f32(i32 36, float %6973, float %6980)  ; FMin(a,b)
  %6982 = fmul fast float %6981, 0xBFF7154760000000
  %6983 = call float @dx.op.unary.f32(i32 21, float %6982)  ; Exp(value)
  %6984 = fmul fast float %6926, %6983
  br label %6985

; <label>:6985                                    ; preds = %6970, %6820
  %6986 = phi float [ %6984, %6970 ], [ %6821, %6820 ]
  %6987 = call float @dx.op.binary.f32(i32 36, float %6986, float %6986)  ; FMin(a,b)
  %6988 = call float @dx.op.binary.f32(i32 36, float %6986, float %6987)  ; FMin(a,b)
  %6989 = fcmp fast ogt float %6988, 0.000000e+00
  br i1 %6989, label %6990, label %7376, !dx.controlflow.hints !118

; <label>:6990                                    ; preds = %6985
  %6991 = fmul fast float %6986, %6184
  %6992 = fmul fast float %6986, %6185
  %6993 = fmul fast float %6986, %6186
  %6994 = fsub fast float %157, %5548
  %6995 = fcmp fast ogt float %6994, 0.000000e+00
  %6996 = fmul fast float %6173, 5.120000e+02
  %6997 = fmul fast float %6174, 5.120000e+02
  %6998 = fmul fast float %6175, 5.120000e+02
  %6999 = fadd fast float %6998, %157
  %7000 = fsub fast float %5548, %6999
  %7001 = fmul fast float %7000, 2.000000e+00
  %7002 = fadd fast float %7001, %6999
  %7003 = select i1 %6995, float %7002, float %6999
  %7004 = fsub fast float %7003, %157
  %7005 = call float @dx.op.dot3.f32(i32 55, float %6996, float %6997, float %7004, float %6996, float %6997, float %7004)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = call float @dx.op.unary.f32(i32 25, float %7005)  ; Rsqrt(value)
  %7007 = fmul fast float %7006, %6996
  %7008 = fmul fast float %7006, %6997
  %7009 = fmul fast float %7006, %7004
  %7010 = fsub fast float %5548, %157
  %7011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7010)  ; Dot3(ax,ay,az,bx,by,bz)
  %7012 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7007, float %7008, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7013 = fdiv fast float 1.000000e+00, %7012
  %7014 = fmul fast float %7013, %7011
  %7015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6994, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7016 = fcmp fast ogt float %7015, 0.000000e+00
  %7017 = fcmp fast olt float %7015, 0.000000e+00
  %7018 = zext i1 %7016 to i32
  %7019 = zext i1 %7017 to i32
  %7020 = sub nsw i32 %7018, %7019
  %7021 = sitofp i32 %7020 to float
  %7022 = fsub fast float %7003, %5548
  %7023 = call float @dx.op.dot3.f32(i32 55, float %6996, float %6997, float %7022, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7024 = fcmp fast ogt float %7023, 0.000000e+00
  %7025 = fcmp fast olt float %7023, 0.000000e+00
  %7026 = zext i1 %7024 to i32
  %7027 = zext i1 %7025 to i32
  %7028 = sub nsw i32 %7026, %7027
  %7029 = sitofp i32 %7028 to float
  %7030 = fcmp fast une float %7021, %7029
  br i1 %7030, label %7031, label %7041

; <label>:7031                                    ; preds = %6990
  %7032 = fmul fast float %7014, %7009
  %7033 = fmul fast float %7014, %7008
  %7034 = fmul fast float %7014, %7007
  %7035 = fmul fast float %7034, %7034
  %7036 = fmul fast float %7033, %7033
  %7037 = fadd fast float %7035, %7036
  %7038 = fmul fast float %7032, %7032
  %7039 = fadd fast float %7037, %7038
  %7040 = call float @dx.op.unary.f32(i32 24, float %7039)  ; Sqrt(value)
  br label %7051

; <label>:7041                                    ; preds = %6990
  %7042 = icmp slt i32 %7020, 0
  br i1 %7042, label %7043, label %7051

; <label>:7043                                    ; preds = %7041
  %7044 = fsub fast float %157, %7003
  %7045 = fmul fast float %6996, %6996
  %7046 = fmul fast float %6997, %6997
  %7047 = fadd fast float %7045, %7046
  %7048 = fmul fast float %7044, %7044
  %7049 = fadd fast float %7047, %7048
  %7050 = call float @dx.op.unary.f32(i32 24, float %7049)  ; Sqrt(value)
  br label %7051

; <label>:7051                                    ; preds = %7043, %7041, %7031
  %7052 = phi float [ %7040, %7031 ], [ %7050, %7043 ], [ 0.000000e+00, %7041 ]
  %7053 = fsub fast float -0.000000e+00, %7052
  %7054 = select i1 %6995, float -0.000000e+00, float %7053
  %7055 = fmul fast float %5549, 0x3FF7154760000000
  %7056 = fmul fast float %7055, %7054
  %7057 = fmul fast float %5550, 0x3FF7154760000000
  %7058 = fmul fast float %7057, %7054
  %7059 = fmul fast float %5551, 0x3FF7154760000000
  %7060 = fmul fast float %7059, %7054
  %7061 = call float @dx.op.unary.f32(i32 21, float %7056)  ; Exp(value)
  %7062 = call float @dx.op.unary.f32(i32 21, float %7058)  ; Exp(value)
  %7063 = call float @dx.op.unary.f32(i32 21, float %7060)  ; Exp(value)
  %7064 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7065 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7066 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7067 = fmul fast float %6991, %7064
  %7068 = fmul fast float %6992, %7065
  %7069 = fmul fast float %6993, %7066
  %7070 = fsub fast float %6173, %175
  %7071 = fsub fast float %6174, %176
  %7072 = fsub fast float %6175, %177
  %7073 = call float @dx.op.dot3.f32(i32 55, float %7070, float %7071, float %7072, float %7070, float %7071, float %7072)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = call float @dx.op.unary.f32(i32 25, float %7073)  ; Rsqrt(value)
  %7075 = fmul fast float %7074, %7070
  %7076 = fmul fast float %7074, %7071
  %7077 = fmul fast float %7074, %7072
  %7078 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7080 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7081 = fmul fast float %7080, %7080
  %7082 = fmul fast float %7081, %5758
  %7083 = call float @dx.op.unary.f32(i32 7, float %7082)  ; Saturate(value)
  %7084 = fmul fast float %7083, %7080
  %7085 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7086 = fmul fast float %7085, %7085
  %7087 = call float @dx.op.unary.f32(i32 6, float %7078)  ; FAbs(value)
  %7088 = call float @dx.op.binary.f32(i32 35, float %6141, float 0x3F847AE140000000)  ; FMax(a,b)
  %7089 = fmul fast float %7088, %7088
  %7090 = fmul fast float %7089, %7089
  %7091 = fsub fast float 1.000000e+00, %7090
  %7092 = fmul fast float %5745, %5745
  %7093 = fmul fast float %7092, %7091
  %7094 = fadd fast float %7093, %7090
  %7095 = bitcast float %7094 to i32
  %7096 = ashr i32 %7095, 1
  %7097 = add nsw i32 %7096, 532487669
  %7098 = bitcast i32 %7097 to float
  %7099 = fadd fast float %7098, %5745
  %7100 = fmul fast float %7090, %7086
  %7101 = fsub fast float 1.000000e+00, %7086
  %7102 = fadd fast float %7101, %7100
  %7103 = fmul fast float %7087, %7087
  %7104 = fmul fast float %7103, %7091
  %7105 = fadd fast float %7104, %7090
  %7106 = bitcast float %7105 to i32
  %7107 = ashr i32 %7106, 1
  %7108 = add nsw i32 %7107, 532487669
  %7109 = bitcast i32 %7108 to float
  %7110 = fadd fast float %7109, %7087
  %7111 = fmul fast float %7102, %7102
  %7112 = fmul fast float %7111, %7099
  %7113 = fmul fast float %7112, %7110
  %7114 = fdiv fast float 0x3FF0A00000000000, %7113
  %7115 = fmul fast float %7114, %7090
  %7116 = fmul fast float %6003, 0x3FF9999980000000
  %7117 = fsub fast float 5.000000e+00, %7116
  %7118 = call float @dx.op.unary.f32(i32 6, float %7079)  ; FAbs(value)
  %7119 = fsub fast float 1.000000e+00, %7118
  %7120 = fmul fast float %6003, 0x41D9660740000000
  %7121 = fadd fast float %7120, 0xC1EFBF8940000000
  %7122 = bitcast float %7119 to i32
  %7123 = sitofp i32 %7122 to float
  %7124 = fmul fast float %7123, %7117
  %7125 = fadd fast float %7121, %7124
  %7126 = fptosi float %7125 to i32
  %7127 = bitcast i32 %7126 to float
  %7128 = fsub fast float 1.000000e+00, %5734
  %7129 = fsub fast float 1.000000e+00, %5735
  %7130 = fsub fast float 1.000000e+00, %5743
  %7131 = fmul fast float %7127, %7128
  %7132 = fmul fast float %7127, %7129
  %7133 = fmul fast float %7127, %7130
  %7134 = fadd fast float %7131, %5734
  %7135 = fadd fast float %7132, %5735
  %7136 = fadd fast float %7133, %5743
  br i1 %6026, label %7137, label %7160

; <label>:7137                                    ; preds = %7051
  %7138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.ResRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.ResRet.f32 %7138, 2
  %7142 = fadd fast float %7139, -5.000000e-01
  %7143 = fadd fast float %7140, -5.000000e-01
  %7144 = fadd fast float %7141, -5.000000e-01
  %7145 = fmul fast float %5734, 4.000000e+00
  %7146 = fmul fast float %7145, %7128
  %7147 = fmul fast float %7146, %7142
  %7148 = fmul fast float %5735, 4.000000e+00
  %7149 = fmul fast float %7148, %7129
  %7150 = fmul fast float %7149, %7143
  %7151 = fmul fast float %5743, 4.000000e+00
  %7152 = fmul fast float %7151, %7130
  %7153 = fmul fast float %7152, %7144
  %7154 = fadd fast float %7147, %7134
  %7155 = fadd fast float %7150, %7135
  %7156 = fadd fast float %7153, %7136
  %7157 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7158 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7159 = call float @dx.op.unary.f32(i32 7, float %7156)  ; Saturate(value)
  br label %7160

; <label>:7160                                    ; preds = %7137, %7051
  %7161 = phi float [ %7157, %7137 ], [ %7134, %7051 ]
  %7162 = phi float [ %7158, %7137 ], [ %7135, %7051 ]
  %7163 = phi float [ %7159, %7137 ], [ %7136, %7051 ]
  %7164 = fmul fast float %7078, 9.843750e-01
  %7165 = fadd fast float %7164, 7.812500e-03
  %7166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7165, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7167 = extractvalue %dx.types.ResRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.ResRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.ResRet.f32 %7166, 2
  %7170 = extractvalue %dx.types.ResRet.f32 %7166, 3
  %7171 = fsub fast float %7169, %7167
  %7172 = fsub fast float %7170, %7168
  %7173 = fmul fast float %7171, %6013
  %7174 = fmul fast float %7172, %6013
  %7175 = fadd fast float %7173, %7167
  %7176 = fadd fast float %7174, %7168
  %7177 = fmul fast float %7175, %5734
  %7178 = fmul fast float %7175, %5735
  %7179 = fmul fast float %7175, %5743
  %7180 = fadd fast float %7177, %7176
  %7181 = fadd fast float %7178, %7176
  %7182 = fadd fast float %7179, %7176
  br i1 %6026, label %7183, label %7206

; <label>:7183                                    ; preds = %7160
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = fadd fast float %7185, -5.000000e-01
  %7189 = fadd fast float %7186, -5.000000e-01
  %7190 = fadd fast float %7187, -5.000000e-01
  %7191 = fmul fast float %5734, 4.000000e+00
  %7192 = fmul fast float %7191, %7128
  %7193 = fmul fast float %7192, %7188
  %7194 = fmul fast float %5735, 4.000000e+00
  %7195 = fmul fast float %7194, %7129
  %7196 = fmul fast float %7195, %7189
  %7197 = fmul fast float %5743, 4.000000e+00
  %7198 = fmul fast float %7197, %7130
  %7199 = fmul fast float %7198, %7190
  %7200 = fadd fast float %7193, %7180
  %7201 = fadd fast float %7196, %7181
  %7202 = fadd fast float %7199, %7182
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7205 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  br label %7206

; <label>:7206                                    ; preds = %7183, %7160
  %7207 = phi float [ %7203, %7183 ], [ %7180, %7160 ]
  %7208 = phi float [ %7204, %7183 ], [ %7181, %7160 ]
  %7209 = phi float [ %7205, %7183 ], [ %7182, %7160 ]
  %7210 = call float @dx.op.binary.f32(i32 35, float %7208, float %7209)  ; FMax(a,b)
  %7211 = call float @dx.op.binary.f32(i32 35, float %7207, float %7210)  ; FMax(a,b)
  %7212 = fsub fast float 1.000000e+00, %7211
  %7213 = call float @dx.op.binary.f32(i32 35, float %7087, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7214 = fdiv fast float %4450, %7213
  %7215 = fmul fast float %6081, %7214
  %7216 = fmul fast float %6083, %7214
  %7217 = fmul fast float %6085, %7214
  %7218 = call float @dx.op.unary.f32(i32 21, float %7215)  ; Exp(value)
  %7219 = call float @dx.op.unary.f32(i32 21, float %7216)  ; Exp(value)
  %7220 = call float @dx.op.unary.f32(i32 21, float %7217)  ; Exp(value)
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7224 = select i1 %6078, float %7221, float 0.000000e+00
  %7225 = select i1 %6079, float %7222, float 0.000000e+00
  %7226 = select i1 %6080, float %7223, float 0.000000e+00
  %7227 = fsub fast float -0.000000e+00, %5737
  %7228 = fsub fast float -0.000000e+00, %5738
  %7229 = fsub fast float -0.000000e+00, %5739
  %7230 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %7227, float %7228, float %7229)  ; Dot3(ax,ay,az,bx,by,bz)
  %7231 = call float @dx.op.unary.f32(i32 7, float %7230)  ; Saturate(value)
  %7232 = fmul fast float %7231, 9.843750e-01
  %7233 = fadd fast float %7232, 7.812500e-03
  %7234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7233, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7235 = extractvalue %dx.types.ResRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.ResRet.f32 %7234, 1
  %7237 = extractvalue %dx.types.ResRet.f32 %7234, 2
  %7238 = extractvalue %dx.types.ResRet.f32 %7234, 3
  %7239 = fsub fast float %7237, %7235
  %7240 = fsub fast float %7238, %7236
  %7241 = fmul fast float %7239, %6013
  %7242 = fmul fast float %7240, %6013
  %7243 = fadd fast float %7241, %7235
  %7244 = fadd fast float %7242, %7236
  %7245 = fmul fast float %7243, %5734
  %7246 = fmul fast float %7243, %5735
  %7247 = fmul fast float %7243, %5743
  %7248 = fadd fast float %7245, %7244
  %7249 = fadd fast float %7246, %7244
  %7250 = fadd fast float %7247, %7244
  br i1 %6026, label %7251, label %7274

; <label>:7251                                    ; preds = %7206
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = fadd fast float %7253, -5.000000e-01
  %7257 = fadd fast float %7254, -5.000000e-01
  %7258 = fadd fast float %7255, -5.000000e-01
  %7259 = fmul fast float %5734, 4.000000e+00
  %7260 = fmul fast float %7259, %7128
  %7261 = fmul fast float %7260, %7256
  %7262 = fmul fast float %5735, 4.000000e+00
  %7263 = fmul fast float %7262, %7129
  %7264 = fmul fast float %7263, %7257
  %7265 = fmul fast float %5743, 4.000000e+00
  %7266 = fmul fast float %7265, %7130
  %7267 = fmul fast float %7266, %7258
  %7268 = fadd fast float %7261, %7248
  %7269 = fadd fast float %7264, %7249
  %7270 = fadd fast float %7267, %7250
  %7271 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7272 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7273 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  br label %7274

; <label>:7274                                    ; preds = %7251, %7206
  %7275 = phi float [ %7271, %7251 ], [ %7248, %7206 ]
  %7276 = phi float [ %7272, %7251 ], [ %7249, %7206 ]
  %7277 = phi float [ %7273, %7251 ], [ %7250, %7206 ]
  %7278 = call float @dx.op.binary.f32(i32 35, float %7276, float %7277)  ; FMax(a,b)
  %7279 = call float @dx.op.binary.f32(i32 35, float %7275, float %7278)  ; FMax(a,b)
  %7280 = fsub fast float 1.000000e+00, %7279
  %7281 = fmul fast float %6141, %6146
  %7282 = fadd fast float %6148, %7281
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  %7284 = fsub fast float %6173, %5751
  %7285 = fsub fast float %6174, %5752
  %7286 = fsub fast float %6175, %5753
  %7287 = call float @dx.op.dot3.f32(i32 55, float %7284, float %7285, float %7286, float %7284, float %7285, float %7286)  ; Dot3(ax,ay,az,bx,by,bz)
  %7288 = call float @dx.op.unary.f32(i32 25, float %7287)  ; Rsqrt(value)
  %7289 = fmul fast float %7288, %7284
  %7290 = fmul fast float %7288, %7285
  %7291 = fmul fast float %7288, %7286
  %7292 = call float @dx.op.dot3.f32(i32 55, float %7227, float %7228, float %7229, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = fmul fast float %7292, %7292
  %7294 = call float @dx.op.unary.f32(i32 6, float %7231)  ; FAbs(value)
  %7295 = call float @dx.op.binary.f32(i32 35, float %7283, float 0x3F847AE140000000)  ; FMax(a,b)
  %7296 = fmul fast float %7295, %7295
  %7297 = fmul fast float %7296, %7296
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = fmul fast float %7092, %7298
  %7300 = fadd fast float %7299, %7297
  %7301 = bitcast float %7300 to i32
  %7302 = ashr i32 %7301, 1
  %7303 = add nsw i32 %7302, 532487669
  %7304 = bitcast i32 %7303 to float
  %7305 = fadd fast float %7304, %5745
  %7306 = fmul fast float %7297, %7293
  %7307 = fsub fast float 1.000000e+00, %7293
  %7308 = fadd fast float %7307, %7306
  %7309 = fmul fast float %7294, %7294
  %7310 = fmul fast float %7309, %7298
  %7311 = fadd fast float %7310, %7297
  %7312 = bitcast float %7311 to i32
  %7313 = ashr i32 %7312, 1
  %7314 = add nsw i32 %7313, 532487669
  %7315 = bitcast i32 %7314 to float
  %7316 = fadd fast float %7315, %7294
  %7317 = fmul fast float %7308, %7308
  %7318 = fmul fast float %7317, %7305
  %7319 = fmul fast float %7318, %7316
  %7320 = fdiv fast float 0x3FF0A00000000000, %7319
  %7321 = fmul fast float %7320, %7297
  %7322 = fmul fast float %7231, %7224
  %7323 = fmul fast float %7231, %7225
  %7324 = fmul fast float %7231, %7226
  %7325 = fmul fast float %7322, %7280
  %7326 = fmul fast float %7325, %7321
  %7327 = fmul fast float %7323, %7280
  %7328 = fmul fast float %7327, %7321
  %7329 = fmul fast float %7324, %7280
  %7330 = fmul fast float %7329, %7321
  %7331 = fmul fast float %7161, %7115
  %7332 = fmul fast float %7162, %7115
  %7333 = fmul fast float %7163, %7115
  %7334 = fsub fast float 1.000000e+00, %7079
  %7335 = bitcast float %7334 to i32
  %7336 = sitofp i32 %7335 to float
  %7337 = fmul fast float %7336, 5.000000e+00
  %7338 = fadd fast float %7337, 0xC1EFBF8940000000
  %7339 = fptosi float %7338 to i32
  %7340 = bitcast i32 %7339 to float
  %7341 = fmul fast float %7340, %5097
  %7342 = fmul fast float %7212, %7341
  %7343 = fmul fast float %7342, %6073
  %7344 = fmul fast float %7342, %6074
  %7345 = fmul fast float %7342, %6075
  %7346 = fadd fast float %7343, %7331
  %7347 = fadd fast float %7344, %7332
  %7348 = fadd fast float %7345, %7333
  %7349 = fmul fast float %7346, %7084
  %7350 = fmul fast float %7347, %7084
  %7351 = fmul fast float %7348, %7084
  %7352 = fmul fast float %7084, %7067
  %7353 = fmul fast float %7352, %7212
  %7354 = fmul fast float %7084, %7068
  %7355 = fmul fast float %7354, %7212
  %7356 = fmul fast float %7084, %7069
  %7357 = fmul fast float %7356, %7212
  %7358 = fadd fast float %7349, %7326
  %7359 = fadd fast float %7350, %7328
  %7360 = fadd fast float %7351, %7330
  %7361 = fmul fast float %7358, %7067
  %7362 = fmul fast float %7359, %7068
  %7363 = fmul fast float %7360, %7069
  %7364 = fadd fast float %7353, %6163
  %7365 = fmul fast float %7364, %5122
  %7366 = fadd fast float %7355, %6165
  %7367 = fmul fast float %7366, %5122
  %7368 = fadd fast float %7357, %6167
  %7369 = fmul fast float %7368, %5122
  %7370 = fadd fast float %7361, %6126
  %7371 = fmul fast float %7370, %5122
  %7372 = fadd fast float %7362, %6129
  %7373 = fmul fast float %7372, %5122
  %7374 = fadd fast float %7363, %6132
  %7375 = fmul fast float %7374, %5122
  br label %7376

; <label>:7376                                    ; preds = %7274, %6985, %6053
  %7377 = phi float [ %6127, %6053 ], [ %6127, %6985 ], [ %7371, %7274 ]
  %7378 = phi float [ %6130, %6053 ], [ %6130, %6985 ], [ %7373, %7274 ]
  %7379 = phi float [ %6133, %6053 ], [ %6133, %6985 ], [ %7375, %7274 ]
  %7380 = phi float [ %6164, %6053 ], [ %6164, %6985 ], [ %7365, %7274 ]
  %7381 = phi float [ %6166, %6053 ], [ %6166, %6985 ], [ %7367, %7274 ]
  %7382 = phi float [ %6168, %6053 ], [ %6168, %6985 ], [ %7369, %7274 ]
  %7383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.i32 %7383, 0
  %7385 = icmp eq i32 %7384, 0
  br i1 %7385, label %8160, label %7386

; <label>:7386                                    ; preds = %7376
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 2
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 3
  %7390 = fmul fast float %7388, %100
  %7391 = fmul fast float %7389, %101
  %7392 = fptoui float %7390 to i32
  %7393 = fptoui float %7391 to i32
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.f32 %7394, 2
  %7397 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7398 = fadd fast float %91, -4.000000e+00
  %7399 = call float @dx.op.binary.f32(i32 35, float %7398, float 0.000000e+00)  ; FMax(a,b)
  %7400 = fadd fast float %7399, %7395
  %7401 = fmul fast float %7400, %7396
  %7402 = call float @dx.op.unary.f32(i32 23, float %7401)  ; Log(value)
  %7403 = fmul fast float %7402, %7397
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7406 = fmul fast float %7403, %7405
  %7407 = call float @dx.op.unary.f32(i32 7, float %7406)  ; Saturate(value)
  %7408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.i32 %7408, 1
  %7410 = add i32 %7409, -1
  %7411 = uitofp i32 %7409 to float
  %7412 = fmul fast float %7411, %7407
  %7413 = fptoui float %7412 to i32
  %7414 = call i32 @dx.op.binary.i32(i32 40, i32 %7413, i32 %7410)  ; UMin(a,b)
  %7415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.i32 %7415, 2
  %7417 = extractvalue %dx.types.CBufRet.i32 %7415, 3
  %7418 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7393, i32 %7416, i32 %7392)  ; UMad(a,b,c)
  %7419 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7414, i32 %7417, i32 %7418)  ; UMad(a,b,c)
  %7420 = add nsw i32 %7384, -1
  %7421 = call i32 @dx.op.binary.i32(i32 37, i32 %7420, i32 0)  ; IMax(a,b)
  %7422 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7423 = fptoui float %7422 to i32
  %7424 = lshr i32 %7423, 5
  %7425 = call i32 @dx.op.binary.i32(i32 40, i32 %7424, i32 8191)  ; UMin(a,b)
  %7426 = shl i32 %7425, 2
  %7427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.i32 %7427, 0
  %7429 = lshr i32 %7428, 16
  %7430 = and i32 %7428, 65535
  %7431 = lshr i32 %7428, 21
  %7432 = lshr i32 %7430, 5
  %7433 = call i32 @dx.op.binary.i32(i32 40, i32 %7432, i32 %7421)  ; UMin(a,b)
  %7434 = icmp ugt i32 %7431, %7433
  br i1 %7434, label %8160, label %7435

; <label>:7435                                    ; preds = %7386
  br label %7436

; <label>:7436                                    ; preds = %8150, %7435
  %7437 = phi i32 [ %8157, %8150 ], [ %7431, %7435 ]
  %7438 = phi float [ %8151, %8150 ], [ %7377, %7435 ]
  %7439 = phi float [ %8152, %8150 ], [ %7378, %7435 ]
  %7440 = phi float [ %8153, %8150 ], [ %7379, %7435 ]
  %7441 = phi float [ %8154, %8150 ], [ %7380, %7435 ]
  %7442 = phi float [ %8155, %8150 ], [ %7381, %7435 ]
  %7443 = phi float [ %8156, %8150 ], [ %7382, %7435 ]
  %7444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.i32 %7444, 0
  %7446 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7419, i32 %7445, i32 %7437)  ; UMad(a,b,c)
  %7447 = shl i32 %7446, 2
  %7448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7447, i32 undef)  ; BufferLoad(srv,index,wot)
  %7449 = extractvalue %dx.types.ResRet.i32 %7448, 0
  %7450 = shl i32 %7437, 5
  %7451 = sub nsw i32 %7429, %7450
  %7452 = call i32 @dx.op.binary.i32(i32 37, i32 %7451, i32 0)  ; IMax(a,b)
  %7453 = call i32 @dx.op.binary.i32(i32 38, i32 %7452, i32 31)  ; IMin(a,b)
  %7454 = sub nsw i32 1, %7429
  %7455 = add nsw i32 %7454, %7430
  %7456 = call i32 @dx.op.binary.i32(i32 37, i32 %7455, i32 0)  ; IMax(a,b)
  %7457 = call i32 @dx.op.binary.i32(i32 38, i32 %7456, i32 32)  ; IMin(a,b)
  %7458 = and i32 %7457, 31
  %7459 = shl i32 -1, %7458
  %7460 = xor i32 %7459, -1
  %7461 = and i32 %7453, 31
  %7462 = shl i32 %7460, %7461
  %7463 = icmp eq i32 %7457, 32
  %7464 = select i1 %7463, i32 -1, i32 %7462
  %7465 = and i32 %7464, %7449
  %7466 = icmp eq i32 %7465, 0
  br i1 %7466, label %8150, label %7467

; <label>:7467                                    ; preds = %7436
  br label %7468

; <label>:7468                                    ; preds = %7603, %7467
  %7469 = phi i32 [ %7480, %7603 ], [ %7465, %7467 ]
  %7470 = phi float [ %7604, %7603 ], [ %7438, %7467 ]
  %7471 = phi float [ %7605, %7603 ], [ %7439, %7467 ]
  %7472 = phi float [ %7606, %7603 ], [ %7440, %7467 ]
  %7473 = phi float [ %7607, %7603 ], [ %7441, %7467 ]
  %7474 = phi float [ %7608, %7603 ], [ %7442, %7467 ]
  %7475 = phi float [ %7609, %7603 ], [ %7443, %7467 ]
  %7476 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7469)  ; FirstbitLo(value)
  %7477 = add i32 %7476, %7450
  %7478 = and i32 %7476, 31
  %7479 = shl i32 1, %7478
  %7480 = xor i32 %7479, %7469
  %7481 = mul i32 %7477, 112
  %7482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7481, i32 undef)  ; BufferLoad(srv,index,wot)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.ResRet.f32 %7482, 1
  %7485 = extractvalue %dx.types.ResRet.f32 %7482, 2
  %7486 = or i32 %7481, 12
  %7487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7486, i32 undef)  ; BufferLoad(srv,index,wot)
  %7488 = extractvalue %dx.types.ResRet.f32 %7487, 0
  %7489 = add i32 %7481, 16
  %7490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7489, i32 undef)  ; BufferLoad(srv,index,wot)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.ResRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.ResRet.f32 %7490, 2
  %7494 = add i32 %7481, 28
  %7495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7494, i32 undef)  ; BufferLoad(srv,index,wot)
  %7496 = extractvalue %dx.types.ResRet.i32 %7495, 0
  %7497 = add i32 %7481, 44
  %7498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7497, i32 undef)  ; BufferLoad(srv,index,wot)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = add i32 %7481, 48
  %7501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = extractvalue %dx.types.ResRet.f32 %7501, 3
  %7506 = add i32 %7481, 64
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.ResRet.f32 %7507, 3
  %7512 = add i32 %7481, 80
  %7513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7512, i32 undef)  ; BufferLoad(srv,index,wot)
  %7514 = extractvalue %dx.types.ResRet.f32 %7513, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7513, 2
  %7516 = add i32 %7481, 92
  %7517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7516, i32 undef)  ; BufferLoad(srv,index,wot)
  %7518 = extractvalue %dx.types.ResRet.i32 %7517, 0
  %7519 = call float @dx.op.dot3.f32(i32 55, float %7483, float %7484, float %7485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7520 = select i1 %249, float %7514, float %7483
  %7521 = select i1 %249, float %7519, float %7484
  %7522 = select i1 %249, float %7515, float %7485
  %7523 = and i32 %7518, 65535
  %7524 = uitofp i32 %7523 to float
  %7525 = lshr i32 %7518, 16
  %7526 = uitofp i32 %7525 to float
  %7527 = and i32 %7496, 65535
  %7528 = and i32 %7496, 50331648
  %7529 = icmp slt i32 %7496, 0
  %7530 = icmp eq i32 %7528, 33554432
  %7531 = fsub fast float %7502, %155
  %7532 = fsub fast float %7503, %156
  %7533 = fsub fast float %7504, %157
  %7534 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7533, float %7531, float %7532, float %7533)  ; Dot3(ax,ay,az,bx,by,bz)
  %7535 = call float @dx.op.unary.f32(i32 24, float %7534)  ; Sqrt(value)
  %7536 = fdiv fast float 1.000000e+00, %7535
  %7537 = fmul fast float %7536, %7531
  %7538 = fmul fast float %7536, %7532
  %7539 = fmul fast float %7536, %7533
  %7540 = fadd fast float %7535, %7488
  %7541 = fdiv fast float 1.000000e+00, %7540
  %7542 = fmul float %7499, %7541
  %7543 = fmul float %7542, %7542
  %7544 = call float @dx.op.unary.f32(i32 7, float %7543)  ; Saturate(value)
  br i1 %7530, label %7545, label %7566

; <label>:7545                                    ; preds = %7468
  %7546 = fmul fast float %7510, %7491
  %7547 = fmul fast float %7510, %7492
  %7548 = fmul fast float %7510, %7493
  %7549 = fadd fast float %7531, %7546
  %7550 = fadd fast float %7532, %7547
  %7551 = fadd fast float %7533, %7548
  %7552 = call float @dx.op.dot3.f32(i32 55, float %7549, float %7550, float %7551, float %7549, float %7550, float %7551)  ; Dot3(ax,ay,az,bx,by,bz)
  %7553 = call float @dx.op.unary.f32(i32 25, float %7552)  ; Rsqrt(value)
  %7554 = fmul fast float %7553, %7549
  %7555 = fmul fast float %7553, %7550
  %7556 = fmul fast float %7553, %7551
  %7557 = fsub fast float %155, %7502
  %7558 = fsub fast float %156, %7503
  %7559 = fsub fast float %157, %7504
  %7560 = fsub fast float -0.000000e+00, %7557
  %7561 = fsub fast float -0.000000e+00, %7558
  %7562 = fsub fast float -0.000000e+00, %7559
  %7563 = call float @dx.op.dot3.f32(i32 55, float %7560, float %7561, float %7562, float %7491, float %7492, float %7493)  ; Dot3(ax,ay,az,bx,by,bz)
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = uitofp i1 %7564 to float
  br label %7566

; <label>:7566                                    ; preds = %7545, %7468
  %7567 = phi float [ %7565, %7545 ], [ 1.000000e+00, %7468 ]
  %7568 = phi float [ %7554, %7545 ], [ %7537, %7468 ]
  %7569 = phi float [ %7555, %7545 ], [ %7538, %7468 ]
  %7570 = phi float [ %7556, %7545 ], [ %7539, %7468 ]
  %7571 = call float @dx.op.dot3.f32(i32 55, float %7491, float %7492, float %7493, float %7568, float %7569, float %7570)  ; Dot3(ax,ay,az,bx,by,bz)
  %7572 = fmul fast float %7571, %7571
  %7573 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7574 = fsub fast float 1.000000e+00, %7573
  %7575 = fmul fast float %7574, 5.000000e-01
  %7576 = fcmp fast ogt float %7571, 0.000000e+00
  %7577 = fsub fast float 1.000000e+00, %7575
  %7578 = select i1 %7576, float %7575, float %7577
  %7579 = fmul fast float %7578, %7526
  %7580 = fadd fast float %7579, %7524
  %7581 = fmul fast float %7580, 0x3EF0001000000000
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7581, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = fmul fast float %7571, %7508
  %7585 = fadd fast float %7584, %7509
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = select i1 %7530, float 1.000000e+00, float %7586
  %7588 = select i1 %7530, float %7586, float 1.000000e+00
  %7589 = fmul fast float %7535, %7505
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, %7511
  %7592 = call float @dx.op.unary.f32(i32 7, float %7591)  ; Saturate(value)
  %7593 = fmul fast float %7592, %7588
  %7594 = fmul fast float %7593, 2.000000e+00
  %7595 = fsub fast float 3.000000e+00, %7594
  %7596 = fmul fast float %7583, %7567
  %7597 = fmul fast float %7593, %7593
  %7598 = fmul fast float %7597, %7596
  %7599 = fmul fast float %7598, %7595
  %7600 = call float @dx.op.binary.f32(i32 36, float %7599, float %7599)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7599, float %7600)  ; FMin(a,b)
  %7602 = fcmp fast ogt float %7601, 0.000000e+00
  br i1 %7602, label %7611, label %7603, !dx.controlflow.hints !119

; <label>:7603                                    ; preds = %8103, %7711, %7566
  %7604 = phi float [ %7470, %7711 ], [ %7470, %7566 ], [ %8146, %8103 ]
  %7605 = phi float [ %7471, %7711 ], [ %7471, %7566 ], [ %8147, %8103 ]
  %7606 = phi float [ %7472, %7711 ], [ %7472, %7566 ], [ %8148, %8103 ]
  %7607 = phi float [ %7473, %7711 ], [ %7473, %7566 ], [ %8140, %8103 ]
  %7608 = phi float [ %7474, %7711 ], [ %7474, %7566 ], [ %8141, %8103 ]
  %7609 = phi float [ %7475, %7711 ], [ %7475, %7566 ], [ %8142, %8103 ]
  %7610 = icmp eq i32 %7469, %7479
  br i1 %7610, label %8149, label %7468

; <label>:7611                                    ; preds = %7566
  %7612 = icmp eq i32 %7527, 255
  br i1 %7612, label %7711, label %7613, !dx.controlflow.hints !120

; <label>:7613                                    ; preds = %7611
  %7614 = mul nuw nsw i32 %7527, 176
  %7615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7614, i32 undef)  ; BufferLoad(srv,index,wot)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.ResRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.ResRet.f32 %7615, 2
  %7619 = extractvalue %dx.types.ResRet.f32 %7615, 3
  %7620 = add nuw nsw i32 %7614, 16
  %7621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7620, i32 undef)  ; BufferLoad(srv,index,wot)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.ResRet.f32 %7621, 1
  %7624 = add nuw nsw i32 %7614, 32
  %7625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7624, i32 undef)  ; BufferLoad(srv,index,wot)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.ResRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.ResRet.f32 %7625, 2
  %7629 = add nuw nsw i32 %7614, 48
  %7630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7629, i32 undef)  ; BufferLoad(srv,index,wot)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.ResRet.f32 %7630, 3
  %7635 = add nuw nsw i32 %7614, 64
  %7636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7635, i32 undef)  ; BufferLoad(srv,index,wot)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7640 = extractvalue %dx.types.ResRet.f32 %7636, 3
  %7641 = add nuw nsw i32 %7614, 80
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = extractvalue %dx.types.ResRet.f32 %7642, 3
  %7647 = add nuw nsw i32 %7614, 96
  %7648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7647, i32 undef)  ; BufferLoad(srv,index,wot)
  %7649 = extractvalue %dx.types.ResRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.ResRet.f32 %7648, 1
  %7651 = extractvalue %dx.types.ResRet.f32 %7648, 2
  %7652 = extractvalue %dx.types.ResRet.f32 %7648, 3
  %7653 = bitcast float %7623 to i32
  %7654 = fmul fast float %7628, %107
  %7655 = fmul fast float %7628, %108
  %7656 = fmul fast float %7628, %109
  %7657 = fadd fast float %7654, %155
  %7658 = fadd fast float %7655, %156
  %7659 = fadd fast float %7656, %157
  %7660 = fmul fast float %7657, %7631
  %7661 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7637, float %7660)  ; FMad(a,b,c)
  %7662 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7643, float %7661)  ; FMad(a,b,c)
  %7663 = fadd fast float %7662, %7649
  %7664 = fmul fast float %7657, %7632
  %7665 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7638, float %7664)  ; FMad(a,b,c)
  %7666 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7644, float %7665)  ; FMad(a,b,c)
  %7667 = fadd fast float %7666, %7650
  %7668 = fmul fast float %7657, %7633
  %7669 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7639, float %7668)  ; FMad(a,b,c)
  %7670 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7645, float %7669)  ; FMad(a,b,c)
  %7671 = fadd fast float %7670, %7651
  %7672 = fmul fast float %7657, %7634
  %7673 = call float @dx.op.tertiary.f32(i32 46, float %7658, float %7640, float %7672)  ; FMad(a,b,c)
  %7674 = call float @dx.op.tertiary.f32(i32 46, float %7659, float %7646, float %7673)  ; FMad(a,b,c)
  %7675 = fadd fast float %7674, %7652
  %7676 = fdiv fast float %7663, %7675
  %7677 = fdiv fast float %7667, %7675
  %7678 = fdiv fast float %7671, %7675
  %7679 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7678)  ; FMax(a,b)
  %7680 = fmul fast float %260, 0x401921FB60000000
  %7681 = call float @dx.op.unary.f32(i32 13, float %7680)  ; Sin(value)
  %7682 = call float @dx.op.unary.f32(i32 12, float %7680)  ; Cos(value)
  %7683 = fsub fast float -0.000000e+00, %7681
  %7684 = fmul fast float %7618, 5.000000e-01
  %7685 = call float @dx.op.dot2.f32(i32 54, float %260, float %260, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7686 = call float @dx.op.unary.f32(i32 22, float %7685)  ; Frc(value)
  %7687 = fmul fast float %7686, 0x404A7DD040000000
  %7688 = call float @dx.op.unary.f32(i32 22, float %7687)  ; Frc(value)
  %7689 = fmul fast float %7688, %7627
  %7690 = fadd fast float %7689, %7684
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %7690, float %7683, float 0.000000e+00)  ; FMad(a,b,c)
  %7692 = call float @dx.op.tertiary.f32(i32 46, float %7690, float %7682, float 0.000000e+00)  ; FMad(a,b,c)
  %7693 = fadd fast float %7691, %7676
  %7694 = fadd fast float %7692, %7677
  %7695 = fmul fast float %7693, %7622
  %7696 = fmul fast float %7694, %7622
  %7697 = call float @dx.op.binary.f32(i32 35, float %7695, float %7618)  ; FMax(a,b)
  %7698 = call float @dx.op.binary.f32(i32 35, float %7696, float %7618)  ; FMax(a,b)
  %7699 = call float @dx.op.binary.f32(i32 36, float %7697, float %7619)  ; FMin(a,b)
  %7700 = call float @dx.op.binary.f32(i32 36, float %7698, float %7619)  ; FMin(a,b)
  %7701 = fadd fast float %7699, %7616
  %7702 = fadd fast float %7700, %7617
  %7703 = uitofp i32 %7653 to float
  %7704 = fadd fast float %7679, %7626
  %7705 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7701, float %7702, float %7703, float undef, i32 0, i32 0, i32 undef, float %7704)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7706 = extractvalue %dx.types.ResRet.f32 %7705, 0
  %7707 = fadd fast float %7706, -1.000000e+00
  %7708 = fmul fast float %7707, %7587
  %7709 = fadd fast float %7708, 1.000000e+00
  %7710 = fmul fast float %7709, %7599
  br label %7711

; <label>:7711                                    ; preds = %7613, %7611
  %7712 = phi float [ %7710, %7613 ], [ %7599, %7611 ]
  %7713 = call float @dx.op.binary.f32(i32 36, float %7712, float %7712)  ; FMin(a,b)
  %7714 = call float @dx.op.binary.f32(i32 36, float %7712, float %7713)  ; FMin(a,b)
  %7715 = fcmp fast ogt float %7714, 0.000000e+00
  br i1 %7715, label %7716, label %7603, !dx.controlflow.hints !121

; <label>:7716                                    ; preds = %7711
  %7717 = fmul fast float %7712, %7520
  %7718 = fmul fast float %7712, %7521
  %7719 = fmul fast float %7712, %7522
  %7720 = fsub fast float %7504, %5548
  %7721 = fcmp fast ogt float %7720, 0.000000e+00
  %7722 = fsub fast float %157, %5548
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  %7724 = xor i1 %7723, %7721
  %7725 = fsub fast float %5548, %7504
  %7726 = fmul fast float %7725, 2.000000e+00
  %7727 = fadd fast float %7726, %7504
  %7728 = select i1 %7724, float %7504, float %7727
  %7729 = fsub fast float %7728, %157
  %7730 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7729, float %7531, float %7532, float %7729)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = call float @dx.op.unary.f32(i32 25, float %7730)  ; Rsqrt(value)
  %7732 = fmul fast float %7731, %7531
  %7733 = fmul fast float %7731, %7532
  %7734 = fmul fast float %7731, %7729
  %7735 = fsub fast float %5548, %157
  %7736 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7735)  ; Dot3(ax,ay,az,bx,by,bz)
  %7737 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7732, float %7733, float %7734)  ; Dot3(ax,ay,az,bx,by,bz)
  %7738 = fdiv fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7738, %7736
  %7740 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7722, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7741 = fcmp fast ogt float %7740, 0.000000e+00
  %7742 = fcmp fast olt float %7740, 0.000000e+00
  %7743 = zext i1 %7741 to i32
  %7744 = zext i1 %7742 to i32
  %7745 = sub nsw i32 %7743, %7744
  %7746 = sitofp i32 %7745 to float
  %7747 = fsub fast float %7728, %5548
  %7748 = call float @dx.op.dot3.f32(i32 55, float %7531, float %7532, float %7747, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7749 = fcmp fast ogt float %7748, 0.000000e+00
  %7750 = fcmp fast olt float %7748, 0.000000e+00
  %7751 = zext i1 %7749 to i32
  %7752 = zext i1 %7750 to i32
  %7753 = sub nsw i32 %7751, %7752
  %7754 = sitofp i32 %7753 to float
  %7755 = fcmp fast une float %7746, %7754
  br i1 %7755, label %7756, label %7766

; <label>:7756                                    ; preds = %7716
  %7757 = fmul fast float %7739, %7734
  %7758 = fmul fast float %7739, %7733
  %7759 = fmul fast float %7739, %7732
  %7760 = fmul fast float %7759, %7759
  %7761 = fmul fast float %7758, %7758
  %7762 = fadd fast float %7760, %7761
  %7763 = fmul fast float %7757, %7757
  %7764 = fadd fast float %7762, %7763
  %7765 = call float @dx.op.unary.f32(i32 24, float %7764)  ; Sqrt(value)
  br label %7778

; <label>:7766                                    ; preds = %7716
  %7767 = icmp slt i32 %7745, 0
  br i1 %7767, label %7768, label %7778

; <label>:7768                                    ; preds = %7766
  %7769 = fsub fast float %155, %7502
  %7770 = fsub fast float %156, %7503
  %7771 = fsub fast float %157, %7728
  %7772 = fmul fast float %7769, %7769
  %7773 = fmul fast float %7770, %7770
  %7774 = fadd fast float %7772, %7773
  %7775 = fmul fast float %7771, %7771
  %7776 = fadd fast float %7774, %7775
  %7777 = call float @dx.op.unary.f32(i32 24, float %7776)  ; Sqrt(value)
  br label %7778

; <label>:7778                                    ; preds = %7768, %7766, %7756
  %7779 = phi float [ %7765, %7756 ], [ %7777, %7768 ], [ 0.000000e+00, %7766 ]
  %7780 = and i1 %7723, %7721
  %7781 = fsub fast float -0.000000e+00, %7779
  %7782 = select i1 %7780, float -0.000000e+00, float %7781
  %7783 = fmul fast float %5549, 0x3FF7154760000000
  %7784 = fmul fast float %7783, %7782
  %7785 = fmul fast float %5550, 0x3FF7154760000000
  %7786 = fmul fast float %7785, %7782
  %7787 = fmul fast float %5551, 0x3FF7154760000000
  %7788 = fmul fast float %7787, %7782
  %7789 = call float @dx.op.unary.f32(i32 21, float %7784)  ; Exp(value)
  %7790 = call float @dx.op.unary.f32(i32 21, float %7786)  ; Exp(value)
  %7791 = call float @dx.op.unary.f32(i32 21, float %7788)  ; Exp(value)
  %7792 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7793 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7794 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7795 = fmul fast float %7717, %7792
  %7796 = fmul fast float %7718, %7793
  %7797 = fmul fast float %7719, %7794
  %7798 = fsub fast float %7537, %175
  %7799 = fsub fast float %7538, %176
  %7800 = fsub fast float %7539, %177
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7798, float %7799, float %7800, float %7798, float %7799, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = call float @dx.op.unary.f32(i32 25, float %7801)  ; Rsqrt(value)
  %7803 = fmul fast float %7802, %7798
  %7804 = fmul fast float %7802, %7799
  %7805 = fmul fast float %7802, %7800
  %7806 = call float @dx.op.dot3.f32(i32 55, float %7537, float %7538, float %7539, float %5737, float %5738, float %5739)  ; Dot3(ax,ay,az,bx,by,bz)
  %7807 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %7803, float %7804, float %7805)  ; Dot3(ax,ay,az,bx,by,bz)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7809 = fmul fast float %7808, %7544
  %7810 = fmul fast float %7808, %7808
  %7811 = fmul fast float %7810, %5758
  %7812 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7813 = fmul fast float %7809, %7812
  %7814 = bitcast float %7534 to i32
  %7815 = ashr i32 %7814, 1
  %7816 = sub nsw i32 1597463007, %7815
  %7817 = bitcast i32 %7816 to float
  %7818 = fmul fast float %7817, %7531
  %7819 = fmul fast float %7817, %7532
  %7820 = fmul fast float %7817, %7533
  %7821 = fsub fast float %7818, %175
  %7822 = fsub fast float %7819, %176
  %7823 = fsub fast float %7820, %177
  %7824 = call float @dx.op.dot3.f32(i32 55, float %7821, float %7822, float %7823, float %7821, float %7822, float %7823)  ; Dot3(ax,ay,az,bx,by,bz)
  %7825 = call float @dx.op.unary.f32(i32 25, float %7824)  ; Rsqrt(value)
  %7826 = fmul fast float %7821, %7825
  %7827 = fmul fast float %7822, %7825
  %7828 = fmul fast float %7823, %7825
  %7829 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %7826, float %7827, float %7828)  ; Dot3(ax,ay,az,bx,by,bz)
  %7830 = fmul fast float %7829, %7829
  %7831 = call float @dx.op.unary.f32(i32 6, float %7806)  ; FAbs(value)
  %7832 = call float @dx.op.binary.f32(i32 35, float %6141, float 0x3F847AE140000000)  ; FMax(a,b)
  %7833 = fmul fast float %7832, %7832
  %7834 = fmul fast float %7833, %7833
  %7835 = fsub fast float 1.000000e+00, %7834
  %7836 = fmul fast float %5745, %5745
  %7837 = fmul fast float %7836, %7835
  %7838 = fadd fast float %7837, %7834
  %7839 = bitcast float %7838 to i32
  %7840 = ashr i32 %7839, 1
  %7841 = add nsw i32 %7840, 532487669
  %7842 = bitcast i32 %7841 to float
  %7843 = fadd fast float %7842, %5745
  %7844 = fmul fast float %7834, %7830
  %7845 = fsub fast float 1.000000e+00, %7830
  %7846 = fadd fast float %7845, %7844
  %7847 = fmul fast float %7831, %7831
  %7848 = fmul fast float %7847, %7835
  %7849 = fadd fast float %7848, %7834
  %7850 = bitcast float %7849 to i32
  %7851 = ashr i32 %7850, 1
  %7852 = add nsw i32 %7851, 532487669
  %7853 = bitcast i32 %7852 to float
  %7854 = fadd fast float %7853, %7831
  %7855 = fmul fast float %7846, %7846
  %7856 = fmul fast float %7855, %7843
  %7857 = fmul fast float %7856, %7854
  %7858 = fdiv fast float 1.000000e+00, %7857
  %7859 = bitcast float %7834 to i32
  %7860 = sitofp i32 %7859 to float
  %7861 = fmul fast float %7860, 0x3FE7F73180000000
  %7862 = fadd fast float %7861, 0x41AFE27C40000000
  %7863 = fptosi float %7862 to i32
  %7864 = bitcast i32 %7863 to float
  %7865 = fmul fast float %7499, 0x3FD80E9D60000000
  %7866 = fmul fast float %7865, %7817
  %7867 = fadd fast float %7864, %7866
  %7868 = bitcast float %7867 to i32
  %7869 = sub nsw i32 2129859010, %7868
  %7870 = bitcast i32 %7869 to float
  %7871 = fmul fast float %7834, %7858
  %7872 = fmul fast float %7871, %7864
  %7873 = fmul fast float %7872, %7870
  %7874 = fmul fast float %6003, 0x3FF9999980000000
  %7875 = fsub fast float 5.000000e+00, %7874
  %7876 = call float @dx.op.unary.f32(i32 6, float %7807)  ; FAbs(value)
  %7877 = fsub fast float 1.000000e+00, %7876
  %7878 = fmul fast float %6003, 0x41D9660740000000
  %7879 = fadd fast float %7878, 0xC1EFBF8940000000
  %7880 = bitcast float %7877 to i32
  %7881 = sitofp i32 %7880 to float
  %7882 = fmul fast float %7881, %7875
  %7883 = fadd fast float %7879, %7882
  %7884 = fptosi float %7883 to i32
  %7885 = bitcast i32 %7884 to float
  %7886 = fsub fast float 1.000000e+00, %5734
  %7887 = fsub fast float 1.000000e+00, %5735
  %7888 = fsub fast float 1.000000e+00, %5743
  %7889 = fmul fast float %7885, %7886
  %7890 = fmul fast float %7885, %7887
  %7891 = fmul fast float %7885, %7888
  %7892 = fadd fast float %7889, %5734
  %7893 = fadd fast float %7890, %5735
  %7894 = fadd fast float %7891, %5743
  br i1 %6026, label %7895, label %7918

; <label>:7895                                    ; preds = %7778
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.ResRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.ResRet.f32 %7896, 2
  %7900 = fadd fast float %7897, -5.000000e-01
  %7901 = fadd fast float %7898, -5.000000e-01
  %7902 = fadd fast float %7899, -5.000000e-01
  %7903 = fmul fast float %5734, 4.000000e+00
  %7904 = fmul fast float %7903, %7886
  %7905 = fmul fast float %7904, %7900
  %7906 = fmul fast float %5735, 4.000000e+00
  %7907 = fmul fast float %7906, %7887
  %7908 = fmul fast float %7907, %7901
  %7909 = fmul fast float %5743, 4.000000e+00
  %7910 = fmul fast float %7909, %7888
  %7911 = fmul fast float %7910, %7902
  %7912 = fadd fast float %7905, %7892
  %7913 = fadd fast float %7908, %7893
  %7914 = fadd fast float %7911, %7894
  %7915 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7916 = call float @dx.op.unary.f32(i32 7, float %7913)  ; Saturate(value)
  %7917 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  br label %7918

; <label>:7918                                    ; preds = %7895, %7778
  %7919 = phi float [ %7915, %7895 ], [ %7892, %7778 ]
  %7920 = phi float [ %7916, %7895 ], [ %7893, %7778 ]
  %7921 = phi float [ %7917, %7895 ], [ %7894, %7778 ]
  %7922 = fmul fast float %7806, 9.843750e-01
  %7923 = fadd fast float %7922, 7.812500e-03
  %7924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7923, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7925 = extractvalue %dx.types.ResRet.f32 %7924, 0
  %7926 = extractvalue %dx.types.ResRet.f32 %7924, 1
  %7927 = extractvalue %dx.types.ResRet.f32 %7924, 2
  %7928 = extractvalue %dx.types.ResRet.f32 %7924, 3
  %7929 = fsub fast float %7927, %7925
  %7930 = fsub fast float %7928, %7926
  %7931 = fmul fast float %7929, %6013
  %7932 = fmul fast float %7930, %6013
  %7933 = fadd fast float %7931, %7925
  %7934 = fadd fast float %7932, %7926
  %7935 = fmul fast float %7933, %5734
  %7936 = fmul fast float %7933, %5735
  %7937 = fmul fast float %7933, %5743
  %7938 = fadd fast float %7935, %7934
  %7939 = fadd fast float %7936, %7934
  %7940 = fadd fast float %7937, %7934
  br i1 %6026, label %7941, label %7964

; <label>:7941                                    ; preds = %7918
  %7942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7943 = extractvalue %dx.types.ResRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.ResRet.f32 %7942, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7942, 2
  %7946 = fadd fast float %7943, -5.000000e-01
  %7947 = fadd fast float %7944, -5.000000e-01
  %7948 = fadd fast float %7945, -5.000000e-01
  %7949 = fmul fast float %5734, 4.000000e+00
  %7950 = fmul fast float %7949, %7886
  %7951 = fmul fast float %7950, %7946
  %7952 = fmul fast float %5735, 4.000000e+00
  %7953 = fmul fast float %7952, %7887
  %7954 = fmul fast float %7953, %7947
  %7955 = fmul fast float %5743, 4.000000e+00
  %7956 = fmul fast float %7955, %7888
  %7957 = fmul fast float %7956, %7948
  %7958 = fadd fast float %7951, %7938
  %7959 = fadd fast float %7954, %7939
  %7960 = fadd fast float %7957, %7940
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7963 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  br label %7964

; <label>:7964                                    ; preds = %7941, %7918
  %7965 = phi float [ %7961, %7941 ], [ %7938, %7918 ]
  %7966 = phi float [ %7962, %7941 ], [ %7939, %7918 ]
  %7967 = phi float [ %7963, %7941 ], [ %7940, %7918 ]
  %7968 = call float @dx.op.binary.f32(i32 35, float %7966, float %7967)  ; FMax(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7965, float %7968)  ; FMax(a,b)
  %7970 = fsub fast float 1.000000e+00, %7969
  %7971 = call float @dx.op.binary.f32(i32 35, float %7831, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7972 = fdiv fast float %4450, %7971
  %7973 = fmul fast float %6081, %7972
  %7974 = fmul fast float %6083, %7972
  %7975 = fmul fast float %6085, %7972
  %7976 = call float @dx.op.unary.f32(i32 21, float %7973)  ; Exp(value)
  %7977 = call float @dx.op.unary.f32(i32 21, float %7974)  ; Exp(value)
  %7978 = call float @dx.op.unary.f32(i32 21, float %7975)  ; Exp(value)
  %7979 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = select i1 %6078, float %7979, float 0.000000e+00
  %7983 = select i1 %6079, float %7980, float 0.000000e+00
  %7984 = select i1 %6080, float %7981, float 0.000000e+00
  %7985 = fsub fast float -0.000000e+00, %5737
  %7986 = fsub fast float -0.000000e+00, %5738
  %7987 = fsub fast float -0.000000e+00, %5739
  %7988 = call float @dx.op.dot3.f32(i32 55, float %7537, float %7538, float %7539, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  %7990 = fmul fast float %7989, %7544
  %7991 = fmul fast float %7989, 9.843750e-01
  %7992 = fadd fast float %7991, 7.812500e-03
  %7993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7992, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 0
  %7995 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7996 = extractvalue %dx.types.ResRet.f32 %7993, 2
  %7997 = extractvalue %dx.types.ResRet.f32 %7993, 3
  %7998 = fsub fast float %7996, %7994
  %7999 = fsub fast float %7997, %7995
  %8000 = fmul fast float %7998, %6013
  %8001 = fmul fast float %7999, %6013
  %8002 = fadd fast float %8000, %7994
  %8003 = fadd fast float %8001, %7995
  %8004 = fmul fast float %8002, %5734
  %8005 = fmul fast float %8002, %5735
  %8006 = fmul fast float %8002, %5743
  %8007 = fadd fast float %8004, %8003
  %8008 = fadd fast float %8005, %8003
  %8009 = fadd fast float %8006, %8003
  br i1 %6026, label %8010, label %8033

; <label>:8010                                    ; preds = %7964
  %8011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5096, float %7989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8012 = extractvalue %dx.types.ResRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.ResRet.f32 %8011, 1
  %8014 = extractvalue %dx.types.ResRet.f32 %8011, 2
  %8015 = fadd fast float %8012, -5.000000e-01
  %8016 = fadd fast float %8013, -5.000000e-01
  %8017 = fadd fast float %8014, -5.000000e-01
  %8018 = fmul fast float %5734, 4.000000e+00
  %8019 = fmul fast float %8018, %7886
  %8020 = fmul fast float %8019, %8015
  %8021 = fmul fast float %5735, 4.000000e+00
  %8022 = fmul fast float %8021, %7887
  %8023 = fmul fast float %8022, %8016
  %8024 = fmul fast float %5743, 4.000000e+00
  %8025 = fmul fast float %8024, %7888
  %8026 = fmul fast float %8025, %8017
  %8027 = fadd fast float %8020, %8007
  %8028 = fadd fast float %8023, %8008
  %8029 = fadd fast float %8026, %8009
  %8030 = call float @dx.op.unary.f32(i32 7, float %8027)  ; Saturate(value)
  %8031 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8032 = call float @dx.op.unary.f32(i32 7, float %8029)  ; Saturate(value)
  br label %8033

; <label>:8033                                    ; preds = %8010, %7964
  %8034 = phi float [ %8030, %8010 ], [ %8007, %7964 ]
  %8035 = phi float [ %8031, %8010 ], [ %8008, %7964 ]
  %8036 = phi float [ %8032, %8010 ], [ %8009, %7964 ]
  %8037 = call float @dx.op.binary.f32(i32 35, float %8035, float %8036)  ; FMax(a,b)
  %8038 = call float @dx.op.binary.f32(i32 35, float %8034, float %8037)  ; FMax(a,b)
  %8039 = fsub fast float 1.000000e+00, %8038
  %8040 = fmul fast float %6141, %6146
  %8041 = fadd fast float %6148, %8040
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fsub fast float %7818, %5751
  %8044 = fsub fast float %7819, %5752
  %8045 = fsub fast float %7820, %5753
  %8046 = call float @dx.op.dot3.f32(i32 55, float %8043, float %8044, float %8045, float %8043, float %8044, float %8045)  ; Dot3(ax,ay,az,bx,by,bz)
  %8047 = call float @dx.op.unary.f32(i32 25, float %8046)  ; Rsqrt(value)
  %8048 = fmul fast float %8043, %8047
  %8049 = fmul fast float %8044, %8047
  %8050 = fmul fast float %8045, %8047
  %8051 = call float @dx.op.dot3.f32(i32 55, float %7985, float %7986, float %7987, float %8048, float %8049, float %8050)  ; Dot3(ax,ay,az,bx,by,bz)
  %8052 = fmul fast float %8051, %8051
  %8053 = call float @dx.op.unary.f32(i32 6, float %7989)  ; FAbs(value)
  %8054 = call float @dx.op.binary.f32(i32 35, float %8042, float 0x3F847AE140000000)  ; FMax(a,b)
  %8055 = fmul fast float %8054, %8054
  %8056 = fmul fast float %8055, %8055
  %8057 = fsub fast float 1.000000e+00, %8056
  %8058 = fmul fast float %7836, %8057
  %8059 = fadd fast float %8058, %8056
  %8060 = bitcast float %8059 to i32
  %8061 = ashr i32 %8060, 1
  %8062 = add nsw i32 %8061, 532487669
  %8063 = bitcast i32 %8062 to float
  %8064 = fadd fast float %8063, %5745
  %8065 = fmul fast float %8056, %8052
  %8066 = fsub fast float 1.000000e+00, %8052
  %8067 = fadd fast float %8066, %8065
  %8068 = fmul fast float %8053, %8053
  %8069 = fmul fast float %8068, %8057
  %8070 = fadd fast float %8069, %8056
  %8071 = bitcast float %8070 to i32
  %8072 = ashr i32 %8071, 1
  %8073 = add nsw i32 %8072, 532487669
  %8074 = bitcast i32 %8073 to float
  %8075 = fadd fast float %8074, %8053
  %8076 = fmul fast float %8067, %8067
  %8077 = fmul fast float %8076, %8064
  %8078 = fmul fast float %8077, %8075
  %8079 = fdiv fast float 1.000000e+00, %8078
  %8080 = bitcast float %8056 to i32
  %8081 = sitofp i32 %8080 to float
  %8082 = fmul fast float %8081, 0x3FE7F73180000000
  %8083 = fadd fast float %8082, 0x41AFE27C40000000
  %8084 = fptosi float %8083 to i32
  %8085 = bitcast i32 %8084 to float
  %8086 = fadd fast float %8085, %7866
  %8087 = bitcast float %8086 to i32
  %8088 = sub nsw i32 2129859010, %8087
  %8089 = bitcast i32 %8088 to float
  %8090 = fmul fast float %8056, %8079
  %8091 = fmul fast float %8090, %8085
  %8092 = fmul fast float %8091, %8089
  br i1 %7529, label %8093, label %8103

; <label>:8093                                    ; preds = %8033
  %8094 = fmul fast float %7990, %7982
  %8095 = fmul fast float %7990, %7983
  %8096 = fmul fast float %7990, %7984
  %8097 = fmul fast float %8094, %8039
  %8098 = fmul fast float %8097, %8092
  %8099 = fmul fast float %8095, %8039
  %8100 = fmul fast float %8099, %8092
  %8101 = fmul fast float %8096, %8039
  %8102 = fmul fast float %8101, %8092
  br label %8103

; <label>:8103                                    ; preds = %8093, %8033
  %8104 = phi float [ %8098, %8093 ], [ 0.000000e+00, %8033 ]
  %8105 = phi float [ %8100, %8093 ], [ 0.000000e+00, %8033 ]
  %8106 = phi float [ %8102, %8093 ], [ 0.000000e+00, %8033 ]
  %8107 = fmul fast float %7919, %7873
  %8108 = fmul fast float %7920, %7873
  %8109 = fmul fast float %7921, %7873
  %8110 = fsub fast float 1.000000e+00, %7807
  %8111 = bitcast float %8110 to i32
  %8112 = sitofp i32 %8111 to float
  %8113 = fmul fast float %8112, 5.000000e+00
  %8114 = fadd fast float %8113, 0xC1EFBF8940000000
  %8115 = fptosi float %8114 to i32
  %8116 = bitcast i32 %8115 to float
  %8117 = fmul fast float %8116, %5097
  %8118 = fmul fast float %7970, %8117
  %8119 = fmul fast float %8118, %6073
  %8120 = fmul fast float %8118, %6074
  %8121 = fmul fast float %8118, %6075
  %8122 = fadd fast float %8119, %8107
  %8123 = fadd fast float %8120, %8108
  %8124 = fadd fast float %8121, %8109
  %8125 = fmul fast float %8122, %7813
  %8126 = fmul fast float %8123, %7813
  %8127 = fmul fast float %8124, %7813
  %8128 = fadd fast float %8125, %8104
  %8129 = fadd fast float %8126, %8105
  %8130 = fadd fast float %8127, %8106
  %8131 = fmul fast float %7795, %5122
  %8132 = fmul fast float %8131, %7813
  %8133 = fmul fast float %8132, %7970
  %8134 = fmul fast float %7796, %5122
  %8135 = fmul fast float %8134, %7813
  %8136 = fmul fast float %8135, %7970
  %8137 = fmul fast float %7797, %5122
  %8138 = fmul fast float %8137, %7813
  %8139 = fmul fast float %8138, %7970
  %8140 = fadd fast float %8133, %7473
  %8141 = fadd fast float %8136, %7474
  %8142 = fadd fast float %8139, %7475
  %8143 = fmul fast float %8131, %8128
  %8144 = fmul fast float %8134, %8129
  %8145 = fmul fast float %8137, %8130
  %8146 = fadd fast float %8143, %7470
  %8147 = fadd fast float %8144, %7471
  %8148 = fadd fast float %8145, %7472
  br label %7603

; <label>:8149                                    ; preds = %7603
  br label %8150

; <label>:8150                                    ; preds = %8149, %7436
  %8151 = phi float [ %7438, %7436 ], [ %7604, %8149 ]
  %8152 = phi float [ %7439, %7436 ], [ %7605, %8149 ]
  %8153 = phi float [ %7440, %7436 ], [ %7606, %8149 ]
  %8154 = phi float [ %7441, %7436 ], [ %7607, %8149 ]
  %8155 = phi float [ %7442, %7436 ], [ %7608, %8149 ]
  %8156 = phi float [ %7443, %7436 ], [ %7609, %8149 ]
  %8157 = add i32 %7437, 1
  %8158 = icmp ugt i32 %8157, %7433
  br i1 %8158, label %8159, label %7436

; <label>:8159                                    ; preds = %8150
  br label %8160

; <label>:8160                                    ; preds = %8159, %7386, %7376
  %8161 = phi float [ %7377, %7376 ], [ %7377, %7386 ], [ %8151, %8159 ]
  %8162 = phi float [ %7378, %7376 ], [ %7378, %7386 ], [ %8152, %8159 ]
  %8163 = phi float [ %7379, %7376 ], [ %7379, %7386 ], [ %8153, %8159 ]
  %8164 = phi float [ %7380, %7376 ], [ %7380, %7386 ], [ %8154, %8159 ]
  %8165 = phi float [ %7381, %7376 ], [ %7381, %7386 ], [ %8155, %8159 ]
  %8166 = phi float [ %7382, %7376 ], [ %7382, %7386 ], [ %8156, %8159 ]
  %8167 = fmul fast float %5122, %6102
  %8168 = fsub fast float -0.000000e+00, %8167
  %8169 = fmul fast float %5122, %6103
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = fmul fast float %5122, %6104
  %8172 = fsub fast float -0.000000e+00, %8171
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = fmul fast float %8174, %6108
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 3
  %8178 = fsub fast float 1.000000e+00, %5100
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = fadd fast float %8166, %5099
  %8181 = fmul fast float %8180, %5100
  %8182 = fmul fast float %8179, %8177
  %8183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %8184 = extractvalue %dx.types.ResRet.i32 %8183, 3
  %8185 = bitcast i32 %8184 to float
  %8186 = fsub fast float %8168, %8185
  %8187 = fsub fast float %8170, %8185
  %8188 = fsub fast float %8172, %8185
  %8189 = fmul fast float %8186, %189
  %8190 = fmul fast float %8187, %189
  %8191 = fmul fast float %8188, %189
  %8192 = fadd fast float %8189, %8185
  %8193 = fadd fast float %8190, %8185
  %8194 = fadd fast float %8191, %8185
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8197 = fmul fast float %8164, %5731
  %8198 = fmul fast float %8165, %5732
  %8199 = fmul fast float %8166, %5733
  %8200 = fcmp fast ogt float %91, %209
  %8201 = and i1 %8200, %5554
  %8202 = or i1 %5560, %8201
  %8203 = icmp eq i32 %5553, 2
  %8204 = fcmp fast ole float %91, %209
  %8205 = and i1 %8204, %8203
  %8206 = or i1 %8205, %8202
  br i1 %8201, label %8207, label %8464

; <label>:8207                                    ; preds = %8160
  %8208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8208, 2
  %8210 = extractvalue %dx.types.CBufRet.f32 %8208, 3
  %8211 = fmul fast float %8209, %100
  %8212 = fmul fast float %8210, %101
  %8213 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8214 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8215 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8213, float %8214, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8216 = extractvalue %dx.types.ResRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.ResRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.ResRet.f32 %8215, 2
  %8219 = extractvalue %dx.types.ResRet.f32 %8215, 3
  %8220 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8213, float %8214, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.ResRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.ResRet.f32 %8220, 3
  %8225 = call float @dx.op.binary.f32(i32 35, float %8217, float %8218)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8216, float %8225)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 35, float %8226, float %8219)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 36, float %8222, float %8223)  ; FMin(a,b)
  %8229 = call float @dx.op.binary.f32(i32 36, float %8221, float %8228)  ; FMin(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8229, float %8224)  ; FMin(a,b)
  %8231 = fmul fast float %8227, 2.550000e+02
  %8232 = fadd fast float %8231, 0x3F70101020000000
  %8233 = fptoui float %8232 to i32
  %8234 = fmul fast float %8230, 2.550000e+02
  %8235 = fadd fast float %8234, 0x3F70101020000000
  %8236 = fptoui float %8235 to i32
  %8237 = icmp ult i32 %8233, %8236
  br i1 %8237, label %8238, label %8406

; <label>:8238                                    ; preds = %8207
  %8239 = fcmp fast ogt float %90, 9.843750e-01
  %8240 = fadd fast float %91, -4.000000e+00
  %8241 = select i1 %8239, float -4.000000e+00, float %8240
  %8242 = call float @dx.op.binary.f32(i32 35, float %8241, float 0.000000e+00)  ; FMax(a,b)
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = fadd fast float %8244, %8242
  %8246 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %8247 = fmul fast float %8245, %8246
  %8248 = call float @dx.op.unary.f32(i32 23, float %8247)  ; Log(value)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8250 = fmul fast float %8249, %8248
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8253 = fmul fast float %8250, %8252
  %8254 = call float @dx.op.unary.f32(i32 7, float %8253)  ; Saturate(value)
  %8255 = uitofp i32 %8233 to float
  %8256 = uitofp i32 %8236 to float
  %8257 = fadd fast float %8255, 5.000000e-01
  %8258 = fadd fast float %8256, 5.000000e-01
  %8259 = fmul fast float %8252, %8257
  %8260 = fmul fast float %8252, %8258
  %8261 = fadd fast float %8259, 0x3F0FFB4800000000
  %8262 = fadd fast float %8260, 0xBF0FFB4800000000
  %8263 = call float @dx.op.binary.f32(i32 35, float %8254, float %8261)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 36, float %8263, float %8262)  ; FMin(a,b)
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8269 = fmul fast float %8266, %8264
  %8270 = fadd fast float %8268, %8269
  %8271 = fadd fast float %8268, %8267
  %8272 = fsub fast float %8266, %8267
  %8273 = fadd fast float %8272, %8268
  %8274 = call float @dx.op.binary.f32(i32 35, float %8270, float %8271)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8274, float %8273)  ; FMin(a,b)
  %8276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8213, float %8214, float %8275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8277 = extractvalue %dx.types.ResRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.ResRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.ResRet.f32 %8276, 2
  %8280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.i32 %8280, 0
  %8282 = extractvalue %dx.types.CBufRet.i32 %8280, 1
  %8283 = uitofp i32 %8281 to float
  %8284 = uitofp i32 %8282 to float
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.CBufRet.f32 %8285, 1
  %8288 = fmul fast float %8283, %8213
  %8289 = fmul fast float %8284, %8214
  %8290 = fadd fast float %8288, -5.000000e-01
  %8291 = fadd fast float %8289, -5.000000e-01
  %8292 = call float @dx.op.unary.f32(i32 22, float %8290)  ; Frc(value)
  %8293 = call float @dx.op.unary.f32(i32 22, float %8291)  ; Frc(value)
  %8294 = fmul fast float %8292, %8292
  %8295 = fmul fast float %8294, %8292
  %8296 = fsub fast float 3.000000e+00, %8292
  %8297 = fmul fast float %8294, %8296
  %8298 = fmul fast float %8292, 3.000000e+00
  %8299 = fmul fast float %8295, 3.000000e+00
  %8300 = fmul fast float %8294, 6.000000e+00
  %8301 = fsub fast float %8299, %8300
  %8302 = fadd fast float %8301, 4.000000e+00
  %8303 = fmul fast float %8302, 0x3FC5555560000000
  %8304 = fmul fast float %8295, -3.000000e+00
  %8305 = fadd fast float %8294, %8292
  %8306 = fmul fast float %8305, 3.000000e+00
  %8307 = fadd fast float %8304, 1.000000e+00
  %8308 = fadd fast float %8307, %8306
  %8309 = fmul fast float %8295, 0x3FC5555560000000
  %8310 = fmul fast float %8293, %8293
  %8311 = fmul fast float %8310, %8293
  %8312 = fsub fast float 3.000000e+00, %8293
  %8313 = fmul fast float %8310, %8312
  %8314 = fmul fast float %8293, 3.000000e+00
  %8315 = fmul fast float %8311, 3.000000e+00
  %8316 = fmul fast float %8310, 6.000000e+00
  %8317 = fsub fast float %8315, %8316
  %8318 = fadd fast float %8317, 4.000000e+00
  %8319 = fmul fast float %8318, 0x3FC5555560000000
  %8320 = fmul fast float %8311, -3.000000e+00
  %8321 = fadd fast float %8310, %8293
  %8322 = fmul fast float %8321, 3.000000e+00
  %8323 = fadd fast float %8320, 1.000000e+00
  %8324 = fadd fast float %8323, %8322
  %8325 = fmul fast float %8311, 0x3FC5555560000000
  %8326 = fadd fast float %8292, 1.000000e+00
  %8327 = fsub fast float 1.000000e+00, %8298
  %8328 = fadd fast float %8327, %8297
  %8329 = fadd fast float %8328, %8302
  %8330 = fmul fast float %8329, 0x3FC5555560000000
  %8331 = fdiv fast float %8303, %8330
  %8332 = fsub fast float %8326, %8331
  %8333 = fsub fast float 1.000000e+00, %8292
  %8334 = fadd fast float %8308, %8295
  %8335 = fmul fast float %8334, 0x3FC5555560000000
  %8336 = fdiv fast float %8309, %8335
  %8337 = fadd fast float %8333, %8336
  %8338 = fadd fast float %8293, 1.000000e+00
  %8339 = fsub fast float 1.000000e+00, %8314
  %8340 = fadd fast float %8339, %8313
  %8341 = fadd fast float %8340, %8318
  %8342 = fmul fast float %8341, 0x3FC5555560000000
  %8343 = fdiv fast float %8319, %8342
  %8344 = fsub fast float %8338, %8343
  %8345 = fsub fast float 1.000000e+00, %8293
  %8346 = fadd fast float %8324, %8311
  %8347 = fmul fast float %8346, 0x3FC5555560000000
  %8348 = fdiv fast float %8325, %8347
  %8349 = fadd fast float %8348, %8345
  %8350 = fmul fast float %8332, %8286
  %8351 = fsub fast float %8213, %8350
  %8352 = fmul fast float %8337, %8286
  %8353 = fadd fast float %8352, %8213
  %8354 = fmul fast float %8349, %8287
  %8355 = fadd fast float %8354, %8214
  %8356 = fmul fast float %8344, %8287
  %8357 = fsub fast float %8214, %8356
  %8358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8351, float %8357, float %8275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8359 = extractvalue %dx.types.ResRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.ResRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.ResRet.f32 %8358, 2
  %8362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8353, float %8357, float %8275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8363 = extractvalue %dx.types.ResRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.ResRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.ResRet.f32 %8362, 2
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8351, float %8355, float %8275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.ResRet.f32 %8366, 1
  %8369 = extractvalue %dx.types.ResRet.f32 %8366, 2
  %8370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8353, float %8355, float %8275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8371 = extractvalue %dx.types.ResRet.f32 %8370, 0
  %8372 = extractvalue %dx.types.ResRet.f32 %8370, 1
  %8373 = extractvalue %dx.types.ResRet.f32 %8370, 2
  %8374 = fsub fast float %8367, %8359
  %8375 = fsub fast float %8368, %8360
  %8376 = fsub fast float %8369, %8361
  %8377 = fmul fast float %8374, %8347
  %8378 = fmul fast float %8375, %8347
  %8379 = fmul fast float %8376, %8347
  %8380 = fadd fast float %8377, %8359
  %8381 = fadd fast float %8378, %8360
  %8382 = fadd fast float %8379, %8361
  %8383 = fsub fast float %8371, %8363
  %8384 = fsub fast float %8372, %8364
  %8385 = fsub fast float %8373, %8365
  %8386 = fmul fast float %8383, %8347
  %8387 = fmul fast float %8384, %8347
  %8388 = fmul fast float %8385, %8347
  %8389 = fsub fast float %8363, %8380
  %8390 = fadd fast float %8389, %8386
  %8391 = fsub fast float %8364, %8381
  %8392 = fadd fast float %8391, %8387
  %8393 = fsub fast float %8365, %8382
  %8394 = fadd fast float %8393, %8388
  %8395 = fmul fast float %8390, %8335
  %8396 = fmul fast float %8392, %8335
  %8397 = fmul fast float %8394, %8335
  %8398 = fadd fast float %8395, %8380
  %8399 = fadd fast float %8396, %8381
  %8400 = fadd fast float %8397, %8382
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 1
  %8403 = fmul fast float %8398, %8402
  %8404 = fmul fast float %8399, %8402
  %8405 = fmul fast float %8400, %8402
  br label %8406

; <label>:8406                                    ; preds = %8238, %8207
  %8407 = phi float [ %8277, %8238 ], [ 1.000000e+00, %8207 ]
  %8408 = phi float [ %8278, %8238 ], [ 1.000000e+00, %8207 ]
  %8409 = phi float [ %8279, %8238 ], [ 1.000000e+00, %8207 ]
  %8410 = phi float [ %8403, %8238 ], [ 0.000000e+00, %8207 ]
  %8411 = phi float [ %8404, %8238 ], [ 0.000000e+00, %8207 ]
  %8412 = phi float [ %8405, %8238 ], [ 0.000000e+00, %8207 ]
  %8413 = fmul fast float %8410, %8192
  %8414 = fmul fast float %8411, %8193
  %8415 = fmul fast float %8412, %8194
  %8416 = call float @dx.op.dot3.f32(i32 55, float %8407, float %8408, float %8409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8417 = call float @dx.op.dot3.f32(i32 55, float %8413, float %8414, float %8415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8418 = select i1 %249, float %8416, float %8407
  %8419 = select i1 %249, float %8416, float %8408
  %8420 = select i1 %249, float 1.000000e+00, float %8409
  %8421 = select i1 %249, float %8417, float %8413
  %8422 = select i1 %249, float 0.000000e+00, float %8414
  %8423 = select i1 %249, float 0.000000e+00, float %8415
  %8424 = fmul fast float %8418, %8197
  %8425 = fmul fast float %8419, %8198
  %8426 = fmul fast float %8420, %8199
  %8427 = fadd fast float %8424, %8421
  %8428 = fadd fast float %8425, %8422
  %8429 = fadd fast float %8423, %8426
  %8430 = fmul fast float %8418, %8161
  %8431 = fmul fast float %8419, %8162
  %8432 = fmul fast float %8420, %8163
  %8433 = fmul fast float %125, %8209
  %8434 = fmul fast float %127, %8210
  %8435 = fsub fast float 1.000000e+00, %8433
  %8436 = fsub fast float 1.000000e+00, %8434
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = fmul fast float %8435, %8438
  %8442 = fmul fast float %8435, %8439
  %8443 = fmul fast float %8435, %8440
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.CBufRet.f32 %8444, 2
  %8448 = fmul fast float %8436, %8445
  %8449 = fmul fast float %8436, %8446
  %8450 = fmul fast float %8436, %8447
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8455 = fadd fast float %8448, %8452
  %8456 = fadd fast float %8455, %8441
  %8457 = fadd fast float %8449, %8453
  %8458 = fadd fast float %8457, %8442
  %8459 = fadd fast float %8450, %8454
  %8460 = fadd fast float %8459, %8443
  %8461 = fmul fast float %8456, %209
  %8462 = fmul fast float %8458, %209
  %8463 = fmul fast float %8460, %209
  br label %8464

; <label>:8464                                    ; preds = %8406, %8160
  %8465 = phi float [ %8461, %8406 ], [ %155, %8160 ]
  %8466 = phi float [ %8462, %8406 ], [ %156, %8160 ]
  %8467 = phi float [ %8463, %8406 ], [ %157, %8160 ]
  %8468 = phi float [ %209, %8406 ], [ %91, %8160 ]
  %8469 = phi float [ %8427, %8406 ], [ %8197, %8160 ]
  %8470 = phi float [ %8428, %8406 ], [ %8198, %8160 ]
  %8471 = phi float [ %8429, %8406 ], [ %8199, %8160 ]
  %8472 = phi float [ %8430, %8406 ], [ %8161, %8160 ]
  %8473 = phi float [ %8431, %8406 ], [ %8162, %8160 ]
  %8474 = phi float [ %8432, %8406 ], [ %8163, %8160 ]
  %8475 = phi float [ %8407, %8406 ], [ 1.000000e+00, %8160 ]
  br i1 %8206, label %9630, label %8476

; <label>:8476                                    ; preds = %8464
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8481 = extractvalue %dx.types.CBufRet.f32 %8477, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8486 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8491 = extractvalue %dx.types.CBufRet.f32 %8487, 3
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 3
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8503 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8504 = fcmp fast olt float %8503, -5.000000e-01
  %8505 = call float @dx.op.dot3.f32(i32 55, float %8465, float %8466, float %8467, float %8465, float %8466, float %8467)  ; Dot3(ax,ay,az,bx,by,bz)
  %8506 = call float @dx.op.unary.f32(i32 25, float %8505)  ; Rsqrt(value)
  %8507 = fmul fast float %8506, %8505
  %8508 = fmul fast float %8506, %8465
  %8509 = fmul fast float %8506, %8466
  %8510 = fmul fast float %8506, %8467
  %8511 = fadd fast float %8507, %8481
  %8512 = call float @dx.op.dot3.f32(i32 55, float %8508, float %8509, float %8510, float %8478, float %8479, float %8480)  ; Dot3(ax,ay,az,bx,by,bz)
  %8513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.i32 %8513, 1
  %8515 = and i32 %8514, 1
  %8516 = icmp ne i32 %8515, 0
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8519 = fcmp fast ogt float %8518, 0.000000e+00
  %8520 = and i1 %8516, %8519
  br i1 %8520, label %8521, label %8927, !dx.controlflow.hints !122

; <label>:8521                                    ; preds = %8476
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 3
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 2
  %8528 = fsub fast float %8525, %8527
  %8529 = and i32 %8514, 2
  %8530 = extractvalue %dx.types.CBufRet.i32 %8513, 0
  %8531 = call i32 @dx.op.binary.i32(i32 40, i32 %8530, i32 3)  ; UMin(a,b)
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.CBufRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8526, 0
  %8536 = extractvalue %dx.types.CBufRet.f32 %8526, 1
  %8537 = fsub fast float %8533, %8535
  %8538 = fsub fast float %8534, %8536
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 0
  %8541 = fcmp fast ogt float %8540, 0.000000e+00
  %8542 = fsub fast float -0.000000e+00, %8537
  %8543 = fsub fast float -0.000000e+00, %8538
  %8544 = call float @dx.op.dot2.f32(i32 54, float %8508, float %8509, float %8508, float %8509)  ; Dot2(ax,ay,bx,by)
  %8545 = call float @dx.op.dot2.f32(i32 54, float %8508, float %8509, float %8542, float %8543)  ; Dot2(ax,ay,bx,by)
  %8546 = fmul fast float %8545, 2.000000e+00
  %8547 = call float @dx.op.dot2.f32(i32 54, float %8542, float %8543, float %8542, float %8543)  ; Dot2(ax,ay,bx,by)
  %8548 = fmul fast float %8540, %8540
  %8549 = fsub fast float %8547, %8548
  %8550 = fmul fast float %8546, %8546
  %8551 = fmul fast float %8544, 4.000000e+00
  %8552 = fmul fast float %8551, %8549
  %8553 = fsub fast float %8550, %8552
  %8554 = fcmp fast ogt float %8553, 0.000000e+00
  br i1 %8554, label %8555, label %8570

; <label>:8555                                    ; preds = %8521
  %8556 = fcmp fast ogt float %8546, 0.000000e+00
  %8557 = call float @dx.op.unary.f32(i32 24, float %8553)  ; Sqrt(value)
  %8558 = fsub fast float -0.000000e+00, %8557
  %8559 = select i1 %8556, float %8557, float %8558
  %8560 = fadd fast float %8559, %8546
  %8561 = fmul float %8560, -5.000000e-01
  %8562 = fdiv fast float %8561, %8544
  %8563 = call float @dx.op.binary.f32(i32 35, float %8562, float 0.000000e+00)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 36, float %8507, float %8563)  ; FMin(a,b)
  %8565 = fdiv fast float %8549, %8561
  %8566 = call float @dx.op.binary.f32(i32 35, float %8565, float 0.000000e+00)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8507, float %8566)  ; FMin(a,b)
  %8568 = call float @dx.op.binary.f32(i32 36, float %8564, float %8567)  ; FMin(a,b)
  %8569 = call float @dx.op.binary.f32(i32 35, float %8564, float %8567)  ; FMax(a,b)
  br label %8570

; <label>:8570                                    ; preds = %8555, %8521
  %8571 = phi float [ %8569, %8555 ], [ -1.000000e+00, %8521 ]
  %8572 = phi float [ %8568, %8555 ], [ -1.000000e+00, %8521 ]
  %8573 = phi i1 [ true, %8555 ], [ false, %8521 ]
  %8574 = and i1 %8541, %8573
  br i1 %8574, label %8575, label %8577

; <label>:8575                                    ; preds = %8570
  %8576 = fcmp fast oeq float %8572, %8571
  br i1 %8576, label %8880, label %8578

; <label>:8577                                    ; preds = %8570
  br i1 %8541, label %8880, label %8578

; <label>:8578                                    ; preds = %8577, %8575
  %8579 = phi float [ %8507, %8577 ], [ %8571, %8575 ]
  %8580 = phi float [ 0.000000e+00, %8577 ], [ %8572, %8575 ]
  %8581 = icmp ne i32 %8529, 0
  %8582 = fmul fast float %8579, %8510
  %8583 = fadd fast float %8582, %8523
  %8584 = fmul fast float %8583, %8579
  %8585 = select i1 %8581, float 0.000000e+00, float %8584
  %8586 = fcmp fast oeq float %8510, 0.000000e+00
  %8587 = fdiv fast float %8528, %8510
  %8588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8587)  ; FMax(a,b)
  %8589 = select i1 %8586, float %8579, float %8588
  %8590 = call float @dx.op.binary.f32(i32 36, float %8579, float %8589)  ; FMin(a,b)
  %8591 = fcmp fast ogt float %8510, 0.000000e+00
  %8592 = fcmp fast olt float %8528, 0.000000e+00
  br i1 %8591, label %8593, label %8650

; <label>:8593                                    ; preds = %8578
  %8594 = icmp eq i32 %8529, 0
  br i1 %8592, label %8595, label %8639

; <label>:8595                                    ; preds = %8593
  %8596 = select i1 %8594, float %8579, float 0.000000e+00
  %8597 = fsub fast float -0.000000e+00, %8596
  %8598 = call float @dx.op.unary.f32(i32 6, float %8597)  ; FAbs(value)
  %8599 = fmul fast float %8596, %8510
  %8600 = fadd fast float %8599, %8523
  %8601 = fmul fast float %8598, %8600
  %8602 = fsub fast float %8585, %8601
  %8603 = fsub fast float %8579, %8598
  %8604 = select i1 %8594, float %8603, float 0.000000e+00
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.CBufRet.f32 %8605, 1
  %8608 = extractvalue %dx.types.CBufRet.f32 %8605, 2
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = extractvalue %dx.types.CBufRet.f32 %8609, 3
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 3
  %8616 = call float @dx.op.binary.f32(i32 36, float %8602, float %8615)  ; FMin(a,b)
  %8617 = fmul fast float %8613, %8604
  %8618 = call float @dx.op.unary.f32(i32 7, float %8617)  ; Saturate(value)
  %8619 = fsub fast float %8610, %8606
  %8620 = fsub fast float %8611, %8607
  %8621 = fsub fast float %8612, %8608
  %8622 = fmul fast float %8618, %8619
  %8623 = fmul fast float %8618, %8620
  %8624 = fmul fast float %8618, %8621
  %8625 = fadd fast float %8622, %8606
  %8626 = fadd fast float %8623, %8607
  %8627 = fadd fast float %8624, %8608
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8631 = fadd fast float %8630, %8629
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8628, 2
  %8634 = extractvalue %dx.types.CBufRet.f32 %8628, 3
  %8635 = fadd fast float %8634, %8633
  %8636 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8637 = fmul fast float %8632, %8616
  %8638 = fmul fast float %8637, %8636
  br label %8880

; <label>:8639                                    ; preds = %8593
  br i1 %8594, label %8640, label %8661

; <label>:8640                                    ; preds = %8639
  %8641 = call float @dx.op.binary.f32(i32 36, float %8590, float %8580)  ; FMin(a,b)
  %8642 = fsub fast float %8590, %8641
  %8643 = fsub fast float %8642, %8579
  %8644 = call float @dx.op.unary.f32(i32 6, float %8643)  ; FAbs(value)
  %8645 = fadd fast float %8642, %8579
  %8646 = fmul fast float %8645, %8510
  %8647 = fadd fast float %8646, %8523
  %8648 = fmul fast float %8647, %8644
  %8649 = fsub fast float %8585, %8648
  br label %8661

; <label>:8650                                    ; preds = %8578
  br i1 %8592, label %8651, label %8661

; <label>:8651                                    ; preds = %8650
  %8652 = call float @dx.op.binary.f32(i32 35, float %8580, float %8590)  ; FMax(a,b)
  %8653 = icmp eq i32 %8529, 0
  %8654 = select i1 %8653, float %8590, float 0.000000e+00
  %8655 = fsub fast float -0.000000e+00, %8654
  %8656 = call float @dx.op.unary.f32(i32 6, float %8655)  ; FAbs(value)
  %8657 = fmul fast float %8654, %8510
  %8658 = fadd fast float %8657, %8523
  %8659 = fmul fast float %8656, %8658
  %8660 = fsub fast float %8585, %8659
  br label %8661

; <label>:8661                                    ; preds = %8651, %8650, %8640, %8639
  %8662 = phi float [ %8580, %8639 ], [ %8580, %8640 ], [ %8652, %8651 ], [ %8580, %8650 ]
  %8663 = phi float [ 0.000000e+00, %8639 ], [ %8644, %8640 ], [ %8656, %8651 ], [ 0.000000e+00, %8650 ]
  %8664 = phi float [ %8585, %8639 ], [ %8649, %8640 ], [ %8660, %8651 ], [ %8585, %8650 ]
  %8665 = phi float [ %8590, %8639 ], [ %8590, %8640 ], [ %8579, %8651 ], [ %8579, %8650 ]
  %8666 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8666, align 4, !tbaa !123, !noalias !125
  %8667 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8667, align 4, !tbaa !123, !noalias !125
  %8668 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8668, align 4, !tbaa !123, !noalias !125
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8669, align 4, !tbaa !123, !noalias !125
  %8670 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8670, align 4, !tbaa !123, !noalias !125
  %8671 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8671, align 4, !tbaa !123, !noalias !125
  %8672 = icmp sgt i32 %8531, 0
  br i1 %8672, label %8673, label %8734

; <label>:8673                                    ; preds = %8661
  br label %8674

; <label>:8674                                    ; preds = %8723, %8673
  %8675 = phi i32 [ %8724, %8723 ], [ 0, %8673 ]
  %8676 = phi i32 [ %8725, %8723 ], [ 0, %8673 ]
  %8677 = add nuw i32 %8676, 171
  %8678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8677)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.CBufRet.f32 %8678, 1
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 1
  %8684 = fsub fast float %8679, %8682
  %8685 = fsub fast float %8680, %8683
  %8686 = extractvalue %dx.types.CBufRet.f32 %8678, 2
  %8687 = fsub fast float -0.000000e+00, %8684
  %8688 = fsub fast float -0.000000e+00, %8685
  %8689 = call float @dx.op.dot2.f32(i32 54, float %8508, float %8509, float %8687, float %8688)  ; Dot2(ax,ay,bx,by)
  %8690 = fmul fast float %8689, 2.000000e+00
  %8691 = call float @dx.op.dot2.f32(i32 54, float %8687, float %8688, float %8687, float %8688)  ; Dot2(ax,ay,bx,by)
  %8692 = fmul fast float %8686, %8686
  %8693 = fsub fast float %8691, %8692
  %8694 = fmul fast float %8690, %8690
  %8695 = fmul fast float %8551, %8693
  %8696 = fsub fast float %8694, %8695
  %8697 = fcmp fast ogt float %8696, 0.000000e+00
  br i1 %8697, label %8698, label %8713

; <label>:8698                                    ; preds = %8674
  %8699 = fcmp fast ogt float %8690, 0.000000e+00
  %8700 = call float @dx.op.unary.f32(i32 24, float %8696)  ; Sqrt(value)
  %8701 = fsub fast float -0.000000e+00, %8700
  %8702 = select i1 %8699, float %8700, float %8701
  %8703 = fadd fast float %8702, %8690
  %8704 = fmul float %8703, -5.000000e-01
  %8705 = fdiv fast float %8704, %8544
  %8706 = call float @dx.op.binary.f32(i32 35, float %8705, float 0.000000e+00)  ; FMax(a,b)
  %8707 = call float @dx.op.binary.f32(i32 36, float %8579, float %8706)  ; FMin(a,b)
  %8708 = fdiv fast float %8693, %8704
  %8709 = call float @dx.op.binary.f32(i32 35, float %8708, float 0.000000e+00)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 36, float %8579, float %8709)  ; FMin(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8707, float %8710)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8707, float %8710)  ; FMax(a,b)
  br label %8713

; <label>:8713                                    ; preds = %8698, %8674
  %8714 = phi float [ %8712, %8698 ], [ -1.000000e+00, %8674 ]
  %8715 = phi float [ %8711, %8698 ], [ -1.000000e+00, %8674 ]
  %8716 = phi i1 [ true, %8698 ], [ false, %8674 ]
  br i1 %8716, label %8717, label %8723

; <label>:8717                                    ; preds = %8713
  %8718 = call float @dx.op.binary.f32(i32 35, float %8662, float %8715)  ; FMax(a,b)
  %8719 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8676
  store float %8718, float* %8719, align 4, !tbaa !123, !noalias !125
  %8720 = call float @dx.op.binary.f32(i32 35, float %8662, float %8714)  ; FMax(a,b)
  %8721 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8676
  store float %8720, float* %8721, align 4, !tbaa !123, !noalias !125
  %8722 = add nsw i32 %8675, 1
  br label %8723

; <label>:8723                                    ; preds = %8717, %8713
  %8724 = phi i32 [ %8722, %8717 ], [ %8675, %8713 ]
  %8725 = add nuw nsw i32 %8676, 1
  %8726 = icmp eq i32 %8725, %8531
  br i1 %8726, label %8727, label %8674

; <label>:8727                                    ; preds = %8723
  %8728 = load float, float* %8668, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8729 = load float, float* %8667, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8730 = load float, float* %8666, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8731 = load float, float* %8671, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8732 = load float, float* %8670, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8733 = load float, float* %8669, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8734

; <label>:8734                                    ; preds = %8727, %8661
  %8735 = phi float [ -1.000000e+00, %8661 ], [ %8733, %8727 ]
  %8736 = phi float [ -1.000000e+00, %8661 ], [ %8732, %8727 ]
  %8737 = phi float [ -1.000000e+00, %8661 ], [ %8731, %8727 ]
  %8738 = phi float [ -1.000000e+00, %8661 ], [ %8730, %8727 ]
  %8739 = phi float [ -1.000000e+00, %8661 ], [ %8729, %8727 ]
  %8740 = phi float [ -1.000000e+00, %8661 ], [ %8728, %8727 ]
  %8741 = phi i32 [ 0, %8661 ], [ %8724, %8727 ]
  %8742 = call float @dx.op.binary.f32(i32 36, float %8739, float %8740)  ; FMin(a,b)
  %8743 = call float @dx.op.binary.f32(i32 36, float %8738, float %8742)  ; FMin(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float %8738, float %8739)  ; FMax(a,b)
  %8745 = call float @dx.op.binary.f32(i32 36, float %8744, float %8740)  ; FMin(a,b)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8738, float %8739)  ; FMin(a,b)
  %8747 = call float @dx.op.binary.f32(i32 35, float %8746, float %8745)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 35, float %8739, float %8740)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 35, float %8738, float %8748)  ; FMax(a,b)
  store float %8743, float* %8666, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8747, float* %8667, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8749, float* %8668, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8750 = call float @dx.op.binary.f32(i32 36, float %8736, float %8737)  ; FMin(a,b)
  %8751 = call float @dx.op.binary.f32(i32 36, float %8735, float %8750)  ; FMin(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8735, float %8736)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8752, float %8737)  ; FMin(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8735, float %8736)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 35, float %8754, float %8753)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float %8736, float %8737)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float %8735, float %8756)  ; FMax(a,b)
  store float %8751, float* %8669, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8755, float* %8670, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8757, float* %8671, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8758 = sub nsw i32 3, %8741
  %8759 = icmp sgt i32 %8758, 2
  br i1 %8759, label %8760, label %8798

; <label>:8760                                    ; preds = %8734
  %8761 = icmp eq i32 %8529, 0
  %8762 = fsub fast float %8579, %8663
  %8763 = select i1 %8761, float %8762, float %8663
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8769 = extractvalue %dx.types.CBufRet.f32 %8768, 0
  %8770 = extractvalue %dx.types.CBufRet.f32 %8768, 1
  %8771 = extractvalue %dx.types.CBufRet.f32 %8768, 2
  %8772 = extractvalue %dx.types.CBufRet.f32 %8768, 3
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8775 = call float @dx.op.binary.f32(i32 36, float %8664, float %8774)  ; FMin(a,b)
  %8776 = fmul fast float %8772, %8763
  %8777 = call float @dx.op.unary.f32(i32 7, float %8776)  ; Saturate(value)
  %8778 = fsub fast float %8769, %8765
  %8779 = fsub fast float %8770, %8766
  %8780 = fsub fast float %8771, %8767
  %8781 = fmul fast float %8777, %8778
  %8782 = fmul fast float %8777, %8779
  %8783 = fmul fast float %8777, %8780
  %8784 = fadd fast float %8781, %8765
  %8785 = fadd fast float %8782, %8766
  %8786 = fadd fast float %8783, %8767
  %8787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8787, 0
  %8789 = extractvalue %dx.types.CBufRet.f32 %8787, 1
  %8790 = fadd fast float %8789, %8788
  %8791 = call float @dx.op.unary.f32(i32 7, float %8790)  ; Saturate(value)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8787, 2
  %8793 = extractvalue %dx.types.CBufRet.f32 %8787, 3
  %8794 = fadd fast float %8793, %8792
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = fmul fast float %8791, %8775
  %8797 = fmul fast float %8796, %8795
  br label %8880

; <label>:8798                                    ; preds = %8734
  %8799 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8758
  %8800 = load float, float* %8799, align 4, !tbaa !123, !noalias !125
  %8801 = fcmp fast olt float %8800, %8665
  %8802 = icmp sgt i32 %8741, 0
  %8803 = and i1 %8802, %8801
  br i1 %8803, label %8804, label %8841

; <label>:8804                                    ; preds = %8798
  br label %8805

; <label>:8805                                    ; preds = %8834, %8804
  %8806 = phi float [ %8835, %8834 ], [ %8663, %8804 ]
  %8807 = phi float [ %8836, %8834 ], [ %8664, %8804 ]
  %8808 = phi float [ %8816, %8834 ], [ %8800, %8804 ]
  %8809 = phi i32 [ %8813, %8834 ], [ %8758, %8804 ]
  %8810 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8809
  %8811 = load float, float* %8810, align 4, !tbaa !123, !noalias !125
  %8812 = icmp slt i32 %8809, 2
  %8813 = add nsw i32 %8809, 1
  %8814 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8813
  %8815 = load float, float* %8814, align 4, !tbaa !123, !noalias !125
  %8816 = select i1 %8812, float %8815, float %8579
  %8817 = call float @dx.op.binary.f32(i32 36, float %8816, float %8811)  ; FMin(a,b)
  %8818 = call float @dx.op.binary.f32(i32 36, float %8665, float %8817)  ; FMin(a,b)
  %8819 = icmp eq i32 %8529, 0
  %8820 = fadd fast float %8818, %8808
  %8821 = fmul fast float %8820, %8510
  %8822 = fadd fast float %8821, %8523
  br i1 %8819, label %8828, label %8823

; <label>:8823                                    ; preds = %8805
  %8824 = fsub fast float %8818, %8808
  %8825 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8824)  ; FMax(a,b)
  %8826 = fmul fast float %8825, %8822
  %8827 = fadd fast float %8826, %8807
  br label %8834

; <label>:8828                                    ; preds = %8805
  %8829 = fsub fast float %8808, %8818
  %8830 = call float @dx.op.unary.f32(i32 6, float %8829)  ; FAbs(value)
  %8831 = fadd fast float %8830, %8806
  %8832 = fmul fast float %8830, %8822
  %8833 = fsub fast float %8807, %8832
  br label %8834

; <label>:8834                                    ; preds = %8828, %8823
  %8835 = phi float [ %8825, %8823 ], [ %8831, %8828 ]
  %8836 = phi float [ %8827, %8823 ], [ %8833, %8828 ]
  %8837 = fcmp fast olt float %8816, %8665
  %8838 = icmp slt i32 %8813, 3
  %8839 = and i1 %8838, %8837
  br i1 %8839, label %8805, label %8840

; <label>:8840                                    ; preds = %8834
  br label %8841

; <label>:8841                                    ; preds = %8840, %8798
  %8842 = phi float [ %8663, %8798 ], [ %8835, %8840 ]
  %8843 = phi float [ %8664, %8798 ], [ %8836, %8840 ]
  %8844 = fsub fast float %8579, %8842
  %8845 = select i1 %8581, float %8842, float %8844
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 0
  %8848 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %8849 = extractvalue %dx.types.CBufRet.f32 %8846, 2
  %8850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.f32 %8850, 0
  %8852 = extractvalue %dx.types.CBufRet.f32 %8850, 1
  %8853 = extractvalue %dx.types.CBufRet.f32 %8850, 2
  %8854 = extractvalue %dx.types.CBufRet.f32 %8850, 3
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8857 = call float @dx.op.binary.f32(i32 36, float %8843, float %8856)  ; FMin(a,b)
  %8858 = fmul fast float %8854, %8845
  %8859 = call float @dx.op.unary.f32(i32 7, float %8858)  ; Saturate(value)
  %8860 = fsub fast float %8851, %8847
  %8861 = fsub fast float %8852, %8848
  %8862 = fsub fast float %8853, %8849
  %8863 = fmul fast float %8859, %8860
  %8864 = fmul fast float %8859, %8861
  %8865 = fmul fast float %8859, %8862
  %8866 = fadd fast float %8863, %8847
  %8867 = fadd fast float %8864, %8848
  %8868 = fadd fast float %8865, %8849
  %8869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8869, 0
  %8871 = extractvalue %dx.types.CBufRet.f32 %8869, 1
  %8872 = fadd fast float %8871, %8870
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8869, 2
  %8875 = extractvalue %dx.types.CBufRet.f32 %8869, 3
  %8876 = fadd fast float %8875, %8874
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fmul fast float %8873, %8857
  %8879 = fmul fast float %8878, %8877
  br label %8880

; <label>:8880                                    ; preds = %8841, %8760, %8595, %8577, %8575
  %8881 = phi float [ %8604, %8595 ], [ %8763, %8760 ], [ %8845, %8841 ], [ 0.000000e+00, %8575 ], [ 0.000000e+00, %8577 ]
  %8882 = phi float [ %8638, %8595 ], [ %8797, %8760 ], [ %8879, %8841 ], [ 0.000000e+00, %8575 ], [ 0.000000e+00, %8577 ]
  %8883 = phi float [ %8625, %8595 ], [ %8784, %8760 ], [ %8866, %8841 ], [ 0.000000e+00, %8575 ], [ 0.000000e+00, %8577 ]
  %8884 = phi float [ %8626, %8595 ], [ %8785, %8760 ], [ %8867, %8841 ], [ 0.000000e+00, %8575 ], [ 0.000000e+00, %8577 ]
  %8885 = phi float [ %8627, %8595 ], [ %8786, %8760 ], [ %8868, %8841 ], [ 0.000000e+00, %8575 ], [ 0.000000e+00, %8577 ]
  %8886 = fmul fast float %8518, %8882
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 2
  %8889 = fsub fast float %8525, %8888
  %8890 = fcmp fast olt float %8886, -2.000000e+01
  %8891 = call float @dx.op.unary.f32(i32 21, float %8886)  ; Exp(value)
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 3
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8897 = fmul fast float %8894, %8889
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fsub fast float 1.000000e+00, %8898
  %8900 = fmul fast float %8510, 5.000000e-01
  %8901 = fadd fast float %8900, 5.000000e-01
  %8902 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8903 = fsub fast float 1.000000e+00, %8902
  %8904 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8899)  ; FMax(a,b)
  %8905 = fdiv fast float %8903, %8904
  %8906 = fsub fast float %8889, %8467
  %8907 = call float @dx.op.unary.f32(i32 6, float %8906)  ; FAbs(value)
  %8908 = fmul fast float %8907, %8893
  %8909 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  %8910 = fsub fast float 1.000000e+00, %8908
  %8911 = fmul fast float %8910, %8909
  %8912 = fadd fast float %8911, %8908
  %8913 = fmul fast float %8896, %8889
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fsub fast float 1.000000e+00, %8912
  %8916 = fmul fast float %8915, %8914
  %8917 = fadd fast float %8916, %8912
  %8918 = call float @dx.op.unary.f32(i32 7, float %8917)  ; Saturate(value)
  %8919 = fadd fast float %8891, -1.000000e+00
  %8920 = select i1 %8890, float -1.000000e+00, float %8919
  %8921 = fmul fast float %8918, %8920
  %8922 = fadd fast float %8921, 1.000000e+00
  %8923 = fsub fast float -0.000000e+00, %8921
  %8924 = fmul fast float %8883, %8923
  %8925 = fmul fast float %8884, %8923
  %8926 = fmul fast float %8885, %8923
  br label %8927

; <label>:8927                                    ; preds = %8880, %8476
  %8928 = phi float [ %8881, %8880 ], [ 0.000000e+00, %8476 ]
  %8929 = phi float [ %8922, %8880 ], [ 1.000000e+00, %8476 ]
  %8930 = phi float [ %8924, %8880 ], [ 0.000000e+00, %8476 ]
  %8931 = phi float [ %8925, %8880 ], [ 0.000000e+00, %8476 ]
  %8932 = phi float [ %8926, %8880 ], [ 0.000000e+00, %8476 ]
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 1
  %8935 = fsub fast float 1.000000e+00, %8929
  %8936 = fmul fast float %8935, %8511
  %8937 = fmul fast float %8936, %8934
  %8938 = fsub fast float %8511, %8937
  br i1 %8504, label %8939, label %8968, !dx.controlflow.hints !161

; <label>:8939                                    ; preds = %8927
  %8940 = fmul fast float %8512, %8501
  %8941 = fadd fast float %8940, %8502
  %8942 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8943 = fmul fast float %8483, %8938
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fmul fast float %8484, %8938
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8948 = call float @dx.op.unary.f32(i32 21, float %8946)  ; Exp(value)
  %8949 = call float @dx.op.binary.f32(i32 35, float %8491, float %8947)  ; FMax(a,b)
  %8950 = call float @dx.op.binary.f32(i32 35, float %8491, float %8948)  ; FMax(a,b)
  %8951 = fsub fast float %8950, %8949
  %8952 = fmul fast float %8951, %8942
  %8953 = fadd fast float %8952, %8949
  %8954 = call float @dx.op.unary.f32(i32 7, float %8953)  ; Saturate(value)
  %8955 = fsub fast float %8488, %8493
  %8956 = fsub fast float %8489, %8494
  %8957 = fsub fast float %8490, %8495
  %8958 = fmul fast float %8942, %8955
  %8959 = fmul fast float %8942, %8956
  %8960 = fmul fast float %8942, %8957
  %8961 = fadd fast float %8958, %8493
  %8962 = fadd fast float %8959, %8494
  %8963 = fadd fast float %8960, %8495
  %8964 = fsub fast float 1.000000e+00, %8954
  %8965 = fmul fast float %8964, %8961
  %8966 = fmul fast float %8964, %8962
  %8967 = fmul fast float %8964, %8963
  br label %9027

; <label>:8968                                    ; preds = %8927
  %8969 = fmul fast float %8938, %8500
  %8970 = call float @dx.op.unary.f32(i32 7, float %8969)  ; Saturate(value)
  %8971 = fsub fast float 2.000000e+00, %8970
  %8972 = fmul fast float %8970, 9.921875e-01
  %8973 = fmul fast float %8972, %8971
  %8974 = fadd fast float %8973, 3.906250e-03
  %8975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8974, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = fsub fast float %8970, %8976
  %8978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8977)  ; FMax(a,b)
  %8979 = fmul fast float %8486, %8467
  %8980 = call float @dx.op.unary.f32(i32 6, float %8979)  ; FAbs(value)
  %8981 = fcmp fast ogt float %8980, 0x3EB0C6F7A0000000
  br i1 %8981, label %8982, label %8988, !dx.controlflow.hints !162

; <label>:8982                                    ; preds = %8968
  %8983 = fmul fast float %8979, 0xBFF7154760000000
  %8984 = call float @dx.op.unary.f32(i32 21, float %8983)  ; Exp(value)
  %8985 = fsub fast float 1.000000e+00, %8984
  %8986 = fdiv fast float %8985, %8979
  %8987 = fmul fast float %8986, %8496
  br label %8988

; <label>:8988                                    ; preds = %8982, %8968
  %8989 = phi float [ %8987, %8982 ], [ %8496, %8968 ]
  %8990 = fadd fast float %8989, %8498
  %8991 = fmul fast float %8990, %8978
  %8992 = fmul fast float %8483, %8991
  %8993 = fsub fast float -0.000000e+00, %8992
  %8994 = fmul fast float %8484, %8991
  %8995 = fsub fast float -0.000000e+00, %8994
  %8996 = fmul fast float %8485, %8991
  %8997 = fsub fast float -0.000000e+00, %8996
  %8998 = call float @dx.op.unary.f32(i32 21, float %8993)  ; Exp(value)
  %8999 = call float @dx.op.unary.f32(i32 21, float %8995)  ; Exp(value)
  %9000 = call float @dx.op.unary.f32(i32 21, float %8997)  ; Exp(value)
  %9001 = fmul fast float %8512, %8512
  %9002 = fadd fast float %9001, 1.000000e+00
  %9003 = fmul fast float %9002, 0x3FAE8EC8A0000000
  %9004 = fmul fast float %9003, %8493
  %9005 = fmul fast float %9003, %8494
  %9006 = fmul fast float %9003, %8495
  %9007 = fmul fast float %8512, %8491
  %9008 = fsub fast float 1.000000e+00, %9007
  %9009 = fmul fast float %8491, %8491
  %9010 = fsub fast float 1.000000e+00, %9009
  %9011 = fmul fast float %9010, 0x3FB45F3060000000
  %9012 = fmul fast float %9008, %9008
  %9013 = fdiv fast float 1.000000e+00, %9012
  %9014 = fmul fast float %9011, %9013
  %9015 = fmul fast float %9014, %8488
  %9016 = fmul fast float %9014, %8489
  %9017 = fmul fast float %9014, %8490
  %9018 = fadd fast float %9015, %9004
  %9019 = fadd fast float %9016, %9005
  %9020 = fadd fast float %9017, %9006
  %9021 = fsub fast float 1.000000e+00, %8998
  %9022 = fsub fast float 1.000000e+00, %8999
  %9023 = fsub fast float 1.000000e+00, %9000
  %9024 = fmul fast float %9018, %9021
  %9025 = fmul fast float %9019, %9022
  %9026 = fmul fast float %9020, %9023
  br label %9027

; <label>:9027                                    ; preds = %8988, %8939
  %9028 = phi float [ %8965, %8939 ], [ %9024, %8988 ]
  %9029 = phi float [ %8966, %8939 ], [ %9025, %8988 ]
  %9030 = phi float [ %8967, %8939 ], [ %9026, %8988 ]
  %9031 = phi float [ %8954, %8939 ], [ %8998, %8988 ]
  %9032 = phi float [ %8954, %8939 ], [ %8999, %8988 ]
  %9033 = phi float [ %8954, %8939 ], [ %9000, %8988 ]
  br i1 %8520, label %9034, label %9232, !dx.controlflow.hints !163

; <label>:9034                                    ; preds = %9027
  %9035 = extractvalue %dx.types.CBufRet.f32 %8933, 0
  %9036 = fmul fast float %9035, %8935
  %9037 = fsub fast float %8930, %9028
  %9038 = fsub fast float %8931, %9029
  %9039 = fsub fast float %8932, %9030
  %9040 = fmul fast float %9036, %9037
  %9041 = fmul fast float %9036, %9038
  %9042 = fmul fast float %9036, %9039
  %9043 = fadd fast float %9040, %9028
  %9044 = fadd fast float %9041, %9029
  %9045 = fadd fast float %9042, %9030
  %9046 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9031)  ; FMax(a,b)
  %9047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9032)  ; FMax(a,b)
  %9048 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9033)  ; FMax(a,b)
  %9049 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8929)  ; FMax(a,b)
  %9050 = call float @dx.op.binary.f32(i32 35, float %8928, float %8938)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9050)  ; FMax(a,b)
  %9052 = fdiv fast float %8928, %9051
  %9053 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9054 = fdiv fast float %8938, %9051
  %9055 = call float @dx.op.unary.f32(i32 7, float %9054)  ; Saturate(value)
  %9056 = fcmp fast une float %9049, 1.000000e+00
  br i1 %9056, label %9057, label %9070, !dx.controlflow.hints !164

; <label>:9057                                    ; preds = %9034
  %9058 = call float @dx.op.unary.f32(i32 23, float %9049)  ; Log(value)
  %9059 = fmul fast float %9058, 0x3FE62E4300000000
  %9060 = fmul fast float %8930, %9059
  %9061 = fsub fast float -0.000000e+00, %9060
  %9062 = fmul fast float %8931, %9059
  %9063 = fsub fast float -0.000000e+00, %9062
  %9064 = fmul fast float %8932, %9059
  %9065 = fsub fast float -0.000000e+00, %9064
  %9066 = fsub fast float 1.000000e+00, %9049
  %9067 = fdiv fast float %9061, %9066
  %9068 = fdiv fast float %9063, %9066
  %9069 = fdiv fast float %9065, %9066
  br label %9070

; <label>:9070                                    ; preds = %9057, %9034
  %9071 = phi float [ %9067, %9057 ], [ %8930, %9034 ]
  %9072 = phi float [ %9068, %9057 ], [ %8931, %9034 ]
  %9073 = phi float [ %9069, %9057 ], [ %8932, %9034 ]
  %9074 = phi float [ %9059, %9057 ], [ 0.000000e+00, %9034 ]
  %9075 = fcmp fast une float %9046, 1.000000e+00
  br i1 %9075, label %9076, label %9083, !dx.controlflow.hints !165

; <label>:9076                                    ; preds = %9070
  %9077 = call float @dx.op.unary.f32(i32 23, float %9046)  ; Log(value)
  %9078 = fmul fast float %9077, 0x3FE62E4300000000
  %9079 = fmul fast float %9043, %9078
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fsub fast float 1.000000e+00, %9046
  %9082 = fdiv fast float %9080, %9081
  br label %9083

; <label>:9083                                    ; preds = %9076, %9070
  %9084 = phi float [ %9082, %9076 ], [ %9043, %9070 ]
  %9085 = phi float [ %9078, %9076 ], [ 0.000000e+00, %9070 ]
  %9086 = fcmp fast une float %9047, 1.000000e+00
  br i1 %9086, label %9087, label %9094, !dx.controlflow.hints !165

; <label>:9087                                    ; preds = %9083
  %9088 = call float @dx.op.unary.f32(i32 23, float %9047)  ; Log(value)
  %9089 = fmul fast float %9088, 0x3FE62E4300000000
  %9090 = fmul fast float %9044, %9089
  %9091 = fsub fast float -0.000000e+00, %9090
  %9092 = fsub fast float 1.000000e+00, %9047
  %9093 = fdiv fast float %9091, %9092
  br label %9094

; <label>:9094                                    ; preds = %9087, %9083
  %9095 = phi float [ %9093, %9087 ], [ %9044, %9083 ]
  %9096 = phi float [ %9089, %9087 ], [ 0.000000e+00, %9083 ]
  %9097 = fcmp fast une float %9048, 1.000000e+00
  br i1 %9097, label %9098, label %9105, !dx.controlflow.hints !165

; <label>:9098                                    ; preds = %9094
  %9099 = call float @dx.op.unary.f32(i32 23, float %9048)  ; Log(value)
  %9100 = fmul fast float %9099, 0x3FE62E4300000000
  %9101 = fmul fast float %9045, %9100
  %9102 = fsub fast float -0.000000e+00, %9101
  %9103 = fsub fast float 1.000000e+00, %9048
  %9104 = fdiv fast float %9102, %9103
  br label %9105

; <label>:9105                                    ; preds = %9098, %9094
  %9106 = phi float [ %9104, %9098 ], [ %9045, %9094 ]
  %9107 = phi float [ %9100, %9098 ], [ 0.000000e+00, %9094 ]
  %9108 = fmul fast float %9071, %9055
  %9109 = fmul fast float %9072, %9055
  %9110 = fmul fast float %9073, %9055
  %9111 = fmul fast float %9074, %9055
  %9112 = fmul fast float %9084, %9053
  %9113 = fmul fast float %9095, %9053
  %9114 = fmul fast float %9106, %9053
  %9115 = fmul fast float %9085, %9053
  %9116 = fmul fast float %9096, %9053
  %9117 = fmul fast float %9107, %9053
  %9118 = fadd fast float %9112, %9108
  %9119 = fadd fast float %9113, %9109
  %9120 = fadd fast float %9114, %9110
  %9121 = fadd fast float %9115, %9111
  %9122 = fadd fast float %9116, %9111
  %9123 = fadd fast float %9117, %9111
  %9124 = fcmp fast une float %9121, 0.000000e+00
  br i1 %9124, label %9125, label %9132, !dx.controlflow.hints !166

; <label>:9125                                    ; preds = %9105
  %9126 = fmul fast float %9121, 0x3FF7154760000000
  %9127 = call float @dx.op.unary.f32(i32 21, float %9126)  ; Exp(value)
  %9128 = fsub fast float 1.000000e+00, %9127
  %9129 = fmul fast float %9118, %9128
  %9130 = fsub fast float -0.000000e+00, %9129
  %9131 = fdiv fast float %9130, %9121
  br label %9132

; <label>:9132                                    ; preds = %9125, %9105
  %9133 = phi float [ %9127, %9125 ], [ 1.000000e+00, %9105 ]
  %9134 = phi float [ %9131, %9125 ], [ %9118, %9105 ]
  %9135 = fcmp fast une float %9122, 0.000000e+00
  br i1 %9135, label %9136, label %9143, !dx.controlflow.hints !166

; <label>:9136                                    ; preds = %9132
  %9137 = fmul fast float %9122, 0x3FF7154760000000
  %9138 = call float @dx.op.unary.f32(i32 21, float %9137)  ; Exp(value)
  %9139 = fsub fast float 1.000000e+00, %9138
  %9140 = fmul fast float %9119, %9139
  %9141 = fsub fast float -0.000000e+00, %9140
  %9142 = fdiv fast float %9141, %9122
  br label %9143

; <label>:9143                                    ; preds = %9136, %9132
  %9144 = phi float [ %9138, %9136 ], [ 1.000000e+00, %9132 ]
  %9145 = phi float [ %9142, %9136 ], [ %9119, %9132 ]
  %9146 = fcmp fast une float %9123, 0.000000e+00
  br i1 %9146, label %9147, label %9154, !dx.controlflow.hints !166

; <label>:9147                                    ; preds = %9143
  %9148 = fmul fast float %9123, 0x3FF7154760000000
  %9149 = call float @dx.op.unary.f32(i32 21, float %9148)  ; Exp(value)
  %9150 = fsub fast float 1.000000e+00, %9149
  %9151 = fmul fast float %9120, %9150
  %9152 = fsub fast float -0.000000e+00, %9151
  %9153 = fdiv fast float %9152, %9123
  br label %9154

; <label>:9154                                    ; preds = %9147, %9143
  %9155 = phi float [ %9149, %9147 ], [ 1.000000e+00, %9143 ]
  %9156 = phi float [ %9153, %9147 ], [ %9120, %9143 ]
  %9157 = fcmp fast ogt float %9053, %9055
  br i1 %9157, label %9158, label %9178

; <label>:9158                                    ; preds = %9154
  %9159 = fsub fast float 1.000000e+00, %9055
  %9160 = fmul fast float %9071, %9159
  %9161 = fmul fast float %9072, %9159
  %9162 = fmul fast float %9073, %9159
  %9163 = fmul fast float %9074, %9159
  %9164 = fcmp fast une float %9163, 0.000000e+00
  br i1 %9164, label %9165, label %9216, !dx.controlflow.hints !167

; <label>:9165                                    ; preds = %9158
  %9166 = fmul fast float %9163, 0x3FF7154760000000
  %9167 = call float @dx.op.unary.f32(i32 21, float %9166)  ; Exp(value)
  %9168 = fsub fast float 1.000000e+00, %9167
  %9169 = fmul fast float %9160, %9168
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fmul fast float %9161, %9168
  %9172 = fsub fast float -0.000000e+00, %9171
  %9173 = fmul fast float %9162, %9168
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = fdiv fast float %9170, %9163
  %9176 = fdiv fast float %9172, %9163
  %9177 = fdiv fast float %9174, %9163
  br label %9216

; <label>:9178                                    ; preds = %9154
  %9179 = fsub fast float 1.000000e+00, %9053
  %9180 = fmul fast float %9084, %9179
  %9181 = fmul fast float %9095, %9179
  %9182 = fmul fast float %9106, %9179
  %9183 = fmul fast float %9085, %9179
  %9184 = fmul fast float %9096, %9179
  %9185 = fmul fast float %9107, %9179
  %9186 = fcmp fast une float %9183, 0.000000e+00
  br i1 %9186, label %9187, label %9194, !dx.controlflow.hints !166

; <label>:9187                                    ; preds = %9178
  %9188 = fmul fast float %9183, 0x3FF7154760000000
  %9189 = call float @dx.op.unary.f32(i32 21, float %9188)  ; Exp(value)
  %9190 = fsub fast float 1.000000e+00, %9189
  %9191 = fmul fast float %9180, %9190
  %9192 = fsub fast float -0.000000e+00, %9191
  %9193 = fdiv fast float %9192, %9183
  br label %9194

; <label>:9194                                    ; preds = %9187, %9178
  %9195 = phi float [ %9193, %9187 ], [ %9180, %9178 ]
  %9196 = phi float [ %9189, %9187 ], [ 1.000000e+00, %9178 ]
  %9197 = fcmp fast une float %9184, 0.000000e+00
  br i1 %9197, label %9198, label %9205, !dx.controlflow.hints !166

; <label>:9198                                    ; preds = %9194
  %9199 = fmul fast float %9184, 0x3FF7154760000000
  %9200 = call float @dx.op.unary.f32(i32 21, float %9199)  ; Exp(value)
  %9201 = fsub fast float 1.000000e+00, %9200
  %9202 = fmul fast float %9181, %9201
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = fdiv fast float %9203, %9184
  br label %9205

; <label>:9205                                    ; preds = %9198, %9194
  %9206 = phi float [ %9204, %9198 ], [ %9181, %9194 ]
  %9207 = phi float [ %9200, %9198 ], [ 1.000000e+00, %9194 ]
  %9208 = fcmp fast une float %9185, 0.000000e+00
  br i1 %9208, label %9209, label %9216, !dx.controlflow.hints !166

; <label>:9209                                    ; preds = %9205
  %9210 = fmul fast float %9185, 0x3FF7154760000000
  %9211 = call float @dx.op.unary.f32(i32 21, float %9210)  ; Exp(value)
  %9212 = fsub fast float 1.000000e+00, %9211
  %9213 = fmul fast float %9182, %9212
  %9214 = fsub fast float -0.000000e+00, %9213
  %9215 = fdiv fast float %9214, %9185
  br label %9216

; <label>:9216                                    ; preds = %9209, %9205, %9165, %9158
  %9217 = phi float [ %9215, %9209 ], [ %9177, %9165 ], [ %9162, %9158 ], [ %9182, %9205 ]
  %9218 = phi float [ %9206, %9209 ], [ %9176, %9165 ], [ %9161, %9158 ], [ %9206, %9205 ]
  %9219 = phi float [ %9195, %9209 ], [ %9175, %9165 ], [ %9160, %9158 ], [ %9195, %9205 ]
  %9220 = phi float [ %9211, %9209 ], [ %9167, %9165 ], [ 1.000000e+00, %9158 ], [ 1.000000e+00, %9205 ]
  %9221 = phi float [ %9207, %9209 ], [ %9167, %9165 ], [ 1.000000e+00, %9158 ], [ %9207, %9205 ]
  %9222 = phi float [ %9196, %9209 ], [ %9167, %9165 ], [ 1.000000e+00, %9158 ], [ %9196, %9205 ]
  %9223 = fmul fast float %9222, %9134
  %9224 = fmul fast float %9221, %9145
  %9225 = fmul fast float %9220, %9156
  %9226 = fadd fast float %9223, %9219
  %9227 = fadd fast float %9224, %9218
  %9228 = fadd fast float %9225, %9217
  %9229 = fmul fast float %9222, %9133
  %9230 = fmul fast float %9221, %9144
  %9231 = fmul fast float %9220, %9155
  br label %9232

; <label>:9232                                    ; preds = %9216, %9027
  %9233 = phi float [ %9231, %9216 ], [ %9033, %9027 ]
  %9234 = phi float [ %9230, %9216 ], [ %9032, %9027 ]
  %9235 = phi float [ %9229, %9216 ], [ %9031, %9027 ]
  %9236 = phi float [ %9228, %9216 ], [ %9030, %9027 ]
  %9237 = phi float [ %9227, %9216 ], [ %9029, %9027 ]
  %9238 = phi float [ %9226, %9216 ], [ %9028, %9027 ]
  %9239 = fmul fast float %9238, %8192
  %9240 = fmul fast float %9237, %8193
  %9241 = fmul fast float %9236, %8194
  %9242 = fmul fast float %9235, %8475
  %9243 = call float @dx.op.dot3.f32(i32 55, float %9235, float %9234, float %9233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9244 = call float @dx.op.dot3.f32(i32 55, float %9239, float %9240, float %9241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9245 = select i1 %249, float %9243, float %9235
  %9246 = select i1 %249, float %9243, float %9234
  %9247 = select i1 %249, float 1.000000e+00, float %9233
  %9248 = select i1 %249, float %9244, float %9239
  %9249 = select i1 %249, float 0.000000e+00, float %9240
  %9250 = select i1 %249, float 0.000000e+00, float %9241
  %9251 = fmul fast float %9245, %8469
  %9252 = fmul fast float %9246, %8470
  %9253 = fmul fast float %9247, %8471
  %9254 = fadd fast float %9251, %9248
  %9255 = fadd fast float %9252, %9249
  %9256 = fadd fast float %9250, %9253
  %9257 = fmul fast float %9245, %8472
  %9258 = fmul fast float %9246, %8473
  %9259 = fmul fast float %9247, %8474
  %9260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.i32 %9260, 0
  %9262 = icmp eq i32 %9261, 0
  br i1 %9262, label %9630, label %9263, !dx.controlflow.hints !168

; <label>:9263                                    ; preds = %9232
  %9264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9265 = extractvalue %dx.types.CBufRet.f32 %9264, 2
  %9266 = extractvalue %dx.types.CBufRet.f32 %9264, 3
  %9267 = fmul fast float %9265, %100
  %9268 = fmul fast float %9266, %101
  %9269 = fmul fast float %9267, 2.000000e+00
  %9270 = fmul fast float %9268, 2.000000e+00
  %9271 = fsub fast float 1.000000e+00, %9269
  %9272 = fsub fast float 1.000000e+00, %9270
  %9273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9274 = extractvalue %dx.types.CBufRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.CBufRet.f32 %9273, 1
  %9276 = extractvalue %dx.types.CBufRet.f32 %9273, 2
  %9277 = fmul fast float %9271, %9274
  %9278 = fmul fast float %9271, %9275
  %9279 = fmul fast float %9271, %9276
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.CBufRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9284 = fmul fast float %9272, %9281
  %9285 = fmul fast float %9272, %9282
  %9286 = fmul fast float %9272, %9283
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9291 = fadd fast float %9284, %9288
  %9292 = fadd fast float %9291, %9277
  %9293 = fadd fast float %9285, %9289
  %9294 = fadd fast float %9293, %9278
  %9295 = fadd fast float %9286, %9290
  %9296 = fadd fast float %9295, %9279
  %9297 = fmul fast float %9292, %8468
  %9298 = fmul fast float %9294, %8468
  %9299 = fmul fast float %9296, %8468
  %9300 = fmul fast float %9297, %9297
  %9301 = fmul fast float %9298, %9298
  %9302 = fadd fast float %9300, %9301
  %9303 = fmul fast float %9299, %9299
  %9304 = fadd fast float %9302, %9303
  %9305 = call float @dx.op.unary.f32(i32 24, float %9304)  ; Sqrt(value)
  %9306 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %9307 = fsub fast float %9305, %9306
  %9308 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %9309 = fmul fast float %9307, %9308
  %9310 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9311 = fadd fast float %9310, -5.000000e-01
  %9312 = fmul fast float %9311, 2.000000e+00
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9315 = call float @dx.op.binary.f32(i32 36, float %9314, float %9312)  ; FMin(a,b)
  %9316 = fsub fast float -0.000000e+00, %9314
  %9317 = fcmp fast ogt float %9315, %9316
  br i1 %9317, label %9318, label %9630, !dx.controlflow.hints !169

; <label>:9318                                    ; preds = %9263
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 3
  %9321 = fcmp fast ogt float %9320, 0.000000e+00
  br i1 %9321, label %9322, label %9397, !dx.controlflow.hints !170

; <label>:9322                                    ; preds = %9318
  %9323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9324 = extractvalue %dx.types.Dimensions %9323, 0
  %9325 = sitofp i32 %9324 to float
  %9326 = extractvalue %dx.types.Dimensions %9323, 1
  %9327 = sitofp i32 %9326 to float
  %9328 = fmul fast float %9267, %9325
  %9329 = fmul fast float %9268, %9327
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 1
  %9332 = fsub fast float -0.000000e+00, %9331
  %9333 = fptoui float %9332 to i32
  %9334 = fptoui float %9328 to i32
  %9335 = fptoui float %9329 to i32
  %9336 = and i32 %9333, 31
  %9337 = lshr i32 %9334, %9336
  %9338 = lshr i32 %9335, %9336
  %9339 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9333, i32 %9337, i32 %9338, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9340 = extractvalue %dx.types.ResRet.f32 %9339, 0
  %9341 = fcmp fast olt float %9340, -1.000000e+00
  %9342 = fcmp fast ogt float %9340, -1.000000e+00
  %9343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9344 = extractvalue %dx.types.CBufRet.f32 %9343, 1
  %9345 = select i1 %9342, float %9344, float 1.000000e+00
  %9346 = fadd fast float %9340, 1.000000e+00
  %9347 = fmul fast float %9345, %9346
  %9348 = call float @dx.op.unary.f32(i32 6, float %9347)  ; FAbs(value)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9343, 3
  %9350 = fcmp fast oge float %9348, %9349
  %9351 = select i1 %9350, float 0x4197782600000000, float %9348
  %9352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9353 = extractvalue %dx.types.CBufRet.f32 %9352, 0
  %9354 = extractvalue %dx.types.CBufRet.f32 %9352, 1
  %9355 = extractvalue %dx.types.CBufRet.f32 %9352, 2
  %9356 = select i1 %9341, float %9353, float %9274
  %9357 = select i1 %9341, float %9354, float %9275
  %9358 = select i1 %9341, float %9355, float %9276
  %9359 = fmul fast float %9356, %9271
  %9360 = fmul fast float %9357, %9271
  %9361 = fmul fast float %9358, %9271
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9366 = select i1 %9341, float %9363, float %9281
  %9367 = select i1 %9341, float %9364, float %9282
  %9368 = select i1 %9341, float %9365, float %9283
  %9369 = fmul fast float %9366, %9272
  %9370 = fmul fast float %9367, %9272
  %9371 = fmul fast float %9368, %9272
  %9372 = fadd fast float %9369, %9359
  %9373 = fadd fast float %9370, %9360
  %9374 = fadd fast float %9371, %9361
  %9375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.f32 %9375, 0
  %9377 = extractvalue %dx.types.CBufRet.f32 %9375, 1
  %9378 = extractvalue %dx.types.CBufRet.f32 %9375, 2
  %9379 = select i1 %9341, float %9376, float %9288
  %9380 = select i1 %9341, float %9377, float %9289
  %9381 = select i1 %9341, float %9378, float %9290
  %9382 = fadd fast float %9372, %9379
  %9383 = fadd fast float %9373, %9380
  %9384 = fadd fast float %9374, %9381
  %9385 = fmul fast float %9382, %9351
  %9386 = fmul fast float %9383, %9351
  %9387 = fmul fast float %9384, %9351
  %9388 = fmul fast float %9385, %9385
  %9389 = fmul fast float %9386, %9386
  %9390 = fadd fast float %9388, %9389
  %9391 = fmul fast float %9387, %9387
  %9392 = fadd fast float %9390, %9391
  %9393 = call float @dx.op.unary.f32(i32 24, float %9392)  ; Sqrt(value)
  %9394 = fsub fast float %9393, %9306
  %9395 = fmul fast float %9394, %9308
  %9396 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  br label %9397

; <label>:9397                                    ; preds = %9322, %9318
  %9398 = phi float [ %9396, %9322 ], [ 1.000000e+00, %9318 ]
  %9399 = fmul fast float %9315, 5.000000e-01
  %9400 = fadd fast float %9399, 5.000000e-01
  %9401 = call float @dx.op.unary.f32(i32 22, float %9400)  ; Frc(value)
  %9402 = call float @dx.op.unary.f32(i32 27, float %9401)  ; Round_ni(value)
  %9403 = call float @dx.op.unary.f32(i32 22, float %9401)  ; Frc(value)
  %9404 = fmul fast float %9403, 2.000000e+00
  %9405 = fadd fast float %9404, -1.000000e+00
  %9406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9267, float %9268, float %9402, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9407 = extractvalue %dx.types.ResRet.f32 %9406, 0
  %9408 = extractvalue %dx.types.ResRet.f32 %9406, 1
  %9409 = extractvalue %dx.types.ResRet.f32 %9406, 2
  %9410 = extractvalue %dx.types.ResRet.f32 %9406, 3
  %9411 = fadd fast float %9407, -5.000000e-01
  %9412 = fadd fast float %9409, -5.000000e-01
  %9413 = fmul fast float %9411, 0xBFD5555560000000
  %9414 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9412, float %9413)  ; FMad(a,b,c)
  %9415 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9408, float 0.000000e+00)  ; FMad(a,b,c)
  %9416 = fadd fast float %9415, %9410
  %9417 = fmul fast float %9411, -7.500000e-01
  %9418 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9412, float %9417)  ; FMad(a,b,c)
  %9419 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9408, float 0.000000e+00)  ; FMad(a,b,c)
  %9420 = fadd fast float %9419, %9410
  %9421 = call float @dx.op.binary.f32(i32 35, float %9414, float -1.000000e+00)  ; FMax(a,b)
  %9422 = call float @dx.op.binary.f32(i32 35, float %9416, float -1.000000e+00)  ; FMax(a,b)
  %9423 = call float @dx.op.binary.f32(i32 35, float %9418, float -1.000000e+00)  ; FMax(a,b)
  %9424 = call float @dx.op.binary.f32(i32 35, float %9420, float -1.000000e+00)  ; FMax(a,b)
  %9425 = call float @dx.op.binary.f32(i32 36, float %9421, float 1.000000e+00)  ; FMin(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9422, float 1.000000e+00)  ; FMin(a,b)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9423, float 1.000000e+00)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9424, float 1.000000e+00)  ; FMin(a,b)
  %9429 = fcmp fast olt float %9425, 0x3FEFFF8020000000
  br i1 %9429, label %9430, label %9545, !dx.controlflow.hints !171

; <label>:9430                                    ; preds = %9397
  %9431 = extractvalue %dx.types.CBufRet.f32 %9313, 3
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 0
  %9434 = extractvalue %dx.types.CBufRet.f32 %9432, 1
  %9435 = extractvalue %dx.types.CBufRet.f32 %9432, 2
  %9436 = extractvalue %dx.types.CBufRet.f32 %9432, 3
  %9437 = fsub fast float %9433, %9425
  %9438 = fsub fast float %9434, %9426
  %9439 = fsub fast float %9435, %9427
  %9440 = fsub fast float %9436, %9428
  %9441 = fmul fast float %9437, %9431
  %9442 = fmul fast float %9438, %9431
  %9443 = fmul fast float %9439, %9431
  %9444 = fmul fast float %9440, %9431
  %9445 = fadd fast float %9441, %9425
  %9446 = fadd fast float %9442, %9426
  %9447 = fsub fast float -0.000000e+00, %9446
  %9448 = fadd fast float %9443, %9427
  %9449 = fadd fast float %9444, %9428
  %9450 = fmul fast float %9445, %9445
  %9451 = fsub fast float %9446, %9450
  %9452 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9451)  ; FMax(a,b)
  %9453 = fdiv fast float 1.000000e+00, %9452
  %9454 = fmul fast float %9446, %9445
  %9455 = fsub fast float %9448, %9454
  %9456 = fsub fast float %9405, %9445
  %9457 = fmul fast float %9405, %9405
  %9458 = fsub fast float %9457, %9446
  %9459 = fmul fast float %9456, %9453
  %9460 = fmul fast float %9459, %9455
  %9461 = fsub fast float %9458, %9460
  %9462 = fmul fast float %9446, %9446
  %9463 = fsub fast float %9449, %9462
  %9464 = fmul fast float %9455, %9455
  %9465 = fmul fast float %9464, %9453
  %9466 = fsub fast float %9463, %9465
  %9467 = fdiv fast float %9461, %9466
  %9468 = fmul fast float %9455, %9467
  %9469 = fsub fast float %9456, %9468
  %9470 = fmul fast float %9469, %9453
  %9471 = fmul fast float %9470, %9445
  %9472 = fsub fast float 1.000000e+00, %9471
  %9473 = fmul fast float %9446, %9467
  %9474 = fsub fast float %9472, %9473
  %9475 = fmul fast float %9470, %9470
  %9476 = fmul fast float %9467, 4.000000e+00
  %9477 = fmul fast float %9476, %9474
  %9478 = fsub fast float %9475, %9477
  %9479 = call float @dx.op.unary.f32(i32 24, float %9478)  ; Sqrt(value)
  %9480 = fcmp fast oge float %9470, 0.000000e+00
  %9481 = fsub fast float -0.000000e+00, %9479
  %9482 = select i1 %9480, float %9481, float %9479
  %9483 = fsub fast float %9482, %9470
  %9484 = fdiv fast float %9483, %9467
  %9485 = fdiv fast float %9474, %9483
  %9486 = fmul fast float %9484, 5.000000e-01
  %9487 = fmul fast float %9485, 2.000000e+00
  %9488 = select i1 %9480, float %9486, float %9487
  %9489 = select i1 %9480, float %9487, float %9486
  %9490 = call float @dx.op.binary.f32(i32 35, float %9488, float %9489)  ; FMax(a,b)
  %9491 = call float @dx.op.binary.f32(i32 36, float %9488, float %9489)  ; FMin(a,b)
  %9492 = fcmp fast ogt float %9405, %9491
  br i1 %9492, label %9493, label %9503

; <label>:9493                                    ; preds = %9430
  %9494 = fsub fast float %9405, %9491
  %9495 = fsub fast float %9490, %9491
  %9496 = fmul fast float %9494, %9495
  %9497 = fmul fast float %9490, %9405
  %9498 = fadd fast float %9490, %9405
  %9499 = fmul fast float %9498, %9445
  %9500 = fadd fast float %9497, %9446
  %9501 = fsub fast float %9500, %9499
  %9502 = fdiv fast float %9501, %9496
  br label %9503

; <label>:9503                                    ; preds = %9493, %9430
  %9504 = phi float [ %9502, %9493 ], [ 0.000000e+00, %9430 ]
  %9505 = fcmp fast ogt float %9405, %9490
  %9506 = fsub fast float %9405, %9490
  br i1 %9505, label %9507, label %9517

; <label>:9507                                    ; preds = %9503
  %9508 = fsub fast float %9490, %9491
  %9509 = fmul fast float %9508, %9506
  %9510 = fmul fast float %9491, %9405
  %9511 = fadd fast float %9491, %9405
  %9512 = fmul fast float %9511, %9445
  %9513 = fsub fast float %9447, %9510
  %9514 = fadd fast float %9513, %9512
  %9515 = fdiv fast float %9514, %9509
  %9516 = fadd fast float %9515, %9504
  br label %9517

; <label>:9517                                    ; preds = %9507, %9503
  %9518 = phi float [ %9516, %9507 ], [ %9504, %9503 ]
  %9519 = fsub fast float %9405, %9491
  %9520 = fmul fast float %9519, %9506
  %9521 = fmul fast float %9491, %9490
  %9522 = fadd fast float %9491, %9490
  %9523 = fmul fast float %9522, %9445
  %9524 = fadd fast float %9521, %9446
  %9525 = fsub fast float %9524, %9523
  %9526 = fdiv fast float %9525, %9520
  %9527 = call float @dx.op.unary.f32(i32 7, float %9518)  ; Saturate(value)
  %9528 = fcmp fast oeq float %8196, 0.000000e+00
  %9529 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9530 = fcmp fast oeq float %9529, 0.000000e+00
  %9531 = or i1 %9528, %9530
  %9532 = fmul fast float %9529, 2.000000e+00
  %9533 = fadd fast float %9314, %9315
  %9534 = fdiv fast float %9533, %9532
  %9535 = call float @dx.op.unary.f32(i32 7, float %9534)  ; Saturate(value)
  %9536 = fmul fast float %9535, 2.000000e+00
  %9537 = fsub fast float 3.000000e+00, %9536
  %9538 = fmul fast float %9535, %9535
  %9539 = fmul fast float %9538, %9537
  %9540 = select i1 %9531, float 1.000000e+00, float %9539
  %9541 = fmul fast float %9526, %8196
  %9542 = fadd fast float %9527, %9541
  %9543 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9544 = fmul fast float %9540, %9543
  br label %9545

; <label>:9545                                    ; preds = %9517, %9397
  %9546 = phi float [ %9544, %9517 ], [ 0.000000e+00, %9397 ]
  %9547 = fsub fast float 1.000000e+00, %9546
  %9548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9267, float %9268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9549 = extractvalue %dx.types.ResRet.f32 %9548, 0
  %9550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9551 = extractvalue %dx.types.CBufRet.i32 %9550, 2
  %9552 = icmp eq i32 %9551, 0
  br i1 %9552, label %9558, label %9553

; <label>:9553                                    ; preds = %9545
  %9554 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9555 = fadd fast float %9549, -1.000000e+00
  %9556 = fmul fast float %9554, %9555
  %9557 = fadd fast float %9556, 1.000000e+00
  br label %9558

; <label>:9558                                    ; preds = %9553, %9545
  %9559 = phi float [ %9557, %9553 ], [ %9547, %9545 ]
  br i1 %9321, label %9560, label %9578

; <label>:9560                                    ; preds = %9558
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9563 = fsub fast float %9398, %9562
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fsub fast float %9398, %9320
  %9566 = call float @dx.op.unary.f32(i32 7, float %9565)  ; Saturate(value)
  %9567 = fsub fast float %9564, %9566
  %9568 = fsub fast float %9400, %9566
  %9569 = fdiv fast float %9568, %9567
  %9570 = call float @dx.op.unary.f32(i32 7, float %9569)  ; Saturate(value)
  %9571 = fmul fast float %9570, 2.000000e+00
  %9572 = fsub fast float 3.000000e+00, %9571
  %9573 = fsub fast float %9549, %9559
  %9574 = fmul fast float %9570, %9570
  %9575 = fmul fast float %9574, %9573
  %9576 = fmul fast float %9575, %9572
  %9577 = fadd fast float %9576, %9559
  br label %9578

; <label>:9578                                    ; preds = %9560, %9558
  %9579 = phi float [ %9577, %9560 ], [ %9559, %9558 ]
  %9580 = call float @dx.op.binary.f32(i32 35, float %9549, float %9579)  ; FMax(a,b)
  %9581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.i32 %9581, 2
  %9583 = and i32 %9582, 1
  %9584 = icmp eq i32 %9583, 0
  %9585 = fcmp fast une float %9580, 1.000000e+00
  %9586 = and i1 %9585, %9584
  br i1 %9586, label %9587, label %9606

; <label>:9587                                    ; preds = %9578
  %9588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9267, float %9268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9589 = extractvalue %dx.types.ResRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.ResRet.f32 %9588, 1
  %9591 = extractvalue %dx.types.ResRet.f32 %9588, 2
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9594 = fmul fast float %9593, %9589
  %9595 = fmul fast float %9593, %9590
  %9596 = fmul fast float %9593, %9591
  %9597 = fcmp fast ogt float %9549, 0x3FEFFF2E40000000
  %9598 = fsub fast float 1.000000e+00, %9580
  %9599 = fsub fast float 1.000000e+00, %9549
  %9600 = fdiv fast float %9598, %9599
  %9601 = call float @dx.op.unary.f32(i32 7, float %9600)  ; Saturate(value)
  %9602 = select i1 %9597, float 0.000000e+00, float %9601
  %9603 = fmul fast float %9594, %9602
  %9604 = fmul fast float %9595, %9602
  %9605 = fmul fast float %9596, %9602
  br label %9606

; <label>:9606                                    ; preds = %9587, %9578
  %9607 = phi float [ 0.000000e+00, %9578 ], [ %9603, %9587 ]
  %9608 = phi float [ 0.000000e+00, %9578 ], [ %9604, %9587 ]
  %9609 = phi float [ 0.000000e+00, %9578 ], [ %9605, %9587 ]
  %9610 = fmul fast float %9607, %8192
  %9611 = fmul fast float %9608, %8193
  %9612 = fmul fast float %9609, %8194
  %9613 = fmul fast float %9580, %9242
  %9614 = call float @dx.op.dot3.f32(i32 55, float %9580, float %9580, float %9580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9615 = call float @dx.op.dot3.f32(i32 55, float %9610, float %9611, float %9612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9616 = select i1 %249, float %9614, float %9580
  %9617 = select i1 %249, float 1.000000e+00, float %9580
  %9618 = select i1 %249, float %9615, float %9610
  %9619 = select i1 %249, float 0.000000e+00, float %9611
  %9620 = select i1 %249, float 0.000000e+00, float %9612
  %9621 = fmul fast float %9616, %9254
  %9622 = fmul fast float %9616, %9255
  %9623 = fmul fast float %9617, %9256
  %9624 = fadd fast float %9621, %9618
  %9625 = fadd fast float %9622, %9619
  %9626 = fadd fast float %9620, %9623
  %9627 = fmul fast float %9616, %9257
  %9628 = fmul fast float %9616, %9258
  %9629 = fmul fast float %9617, %9259
  br label %9630

; <label>:9630                                    ; preds = %9606, %9263, %9232, %8464
  %9631 = phi float [ %8469, %8464 ], [ %9254, %9232 ], [ %9624, %9606 ], [ %9254, %9263 ]
  %9632 = phi float [ %8470, %8464 ], [ %9255, %9232 ], [ %9625, %9606 ], [ %9255, %9263 ]
  %9633 = phi float [ %8471, %8464 ], [ %9256, %9232 ], [ %9626, %9606 ], [ %9256, %9263 ]
  %9634 = phi float [ %8472, %8464 ], [ %9257, %9232 ], [ %9627, %9606 ], [ %9257, %9263 ]
  %9635 = phi float [ %8473, %8464 ], [ %9258, %9232 ], [ %9628, %9606 ], [ %9258, %9263 ]
  %9636 = phi float [ %8474, %8464 ], [ %9259, %9232 ], [ %9629, %9606 ], [ %9259, %9263 ]
  %9637 = phi float [ %8475, %8464 ], [ %9242, %9232 ], [ %9613, %9606 ], [ %9242, %9263 ]
  %9638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9639 = extractvalue %dx.types.CBufRet.f32 %9638, 2
  %9640 = extractvalue %dx.types.CBufRet.f32 %9638, 3
  %9641 = fmul fast float %9639, %100
  %9642 = fmul fast float %9640, %101
  %9643 = call float @dx.op.unary.f32(i32 7, float %9641)  ; Saturate(value)
  %9644 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9645 = select i1 %8206, i32 2, i32 0
  %9646 = or i32 %9645, 1
  %9647 = uitofp i32 %9646 to float
  %9648 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9643, float %9644, float %9647, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9649 = extractvalue %dx.types.ResRet.f32 %9648, 0
  %9650 = extractvalue %dx.types.ResRet.f32 %9648, 1
  %9651 = extractvalue %dx.types.ResRet.f32 %9648, 2
  %9652 = extractvalue %dx.types.ResRet.f32 %9648, 3
  %9653 = add nuw nsw i32 %9645, 2
  %9654 = uitofp i32 %9653 to float
  %9655 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9643, float %9644, float %9654, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9656 = extractvalue %dx.types.ResRet.f32 %9655, 0
  %9657 = extractvalue %dx.types.ResRet.f32 %9655, 1
  %9658 = extractvalue %dx.types.ResRet.f32 %9655, 2
  %9659 = extractvalue %dx.types.ResRet.f32 %9655, 3
  %9660 = call float @dx.op.binary.f32(i32 35, float %9650, float %9651)  ; FMax(a,b)
  %9661 = call float @dx.op.binary.f32(i32 35, float %9649, float %9660)  ; FMax(a,b)
  %9662 = call float @dx.op.binary.f32(i32 35, float %9661, float %9652)  ; FMax(a,b)
  %9663 = call float @dx.op.binary.f32(i32 36, float %9657, float %9658)  ; FMin(a,b)
  %9664 = call float @dx.op.binary.f32(i32 36, float %9656, float %9663)  ; FMin(a,b)
  %9665 = call float @dx.op.binary.f32(i32 36, float %9664, float %9659)  ; FMin(a,b)
  %9666 = fmul fast float %9662, 2.550000e+02
  %9667 = fadd fast float %9666, 0x3F70101020000000
  %9668 = fptoui float %9667 to i32
  %9669 = fmul fast float %9665, 2.550000e+02
  %9670 = fadd fast float %9669, 0x3F70101020000000
  %9671 = fptoui float %9670 to i32
  %9672 = icmp ult i32 %9668, %9671
  br i1 %9672, label %9673, label %9842

; <label>:9673                                    ; preds = %9630
  %9674 = fcmp fast ogt float %90, 9.843750e-01
  %9675 = fadd fast float %8468, -4.000000e+00
  %9676 = select i1 %9674, float -4.000000e+00, float %9675
  %9677 = call float @dx.op.binary.f32(i32 35, float %9676, float 0.000000e+00)  ; FMax(a,b)
  %9678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9679 = extractvalue %dx.types.CBufRet.f32 %9678, 0
  %9680 = fadd fast float %9679, %9677
  %9681 = extractvalue %dx.types.CBufRet.f32 %9678, 2
  %9682 = fmul fast float %9680, %9681
  %9683 = call float @dx.op.unary.f32(i32 23, float %9682)  ; Log(value)
  %9684 = extractvalue %dx.types.CBufRet.f32 %9678, 3
  %9685 = fmul fast float %9684, %9683
  %9686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9687 = extractvalue %dx.types.CBufRet.f32 %9686, 2
  %9688 = fmul fast float %9685, %9687
  %9689 = call float @dx.op.unary.f32(i32 7, float %9688)  ; Saturate(value)
  %9690 = uitofp i32 %9668 to float
  %9691 = uitofp i32 %9671 to float
  %9692 = fadd fast float %9690, 5.000000e-01
  %9693 = fadd fast float %9691, 5.000000e-01
  %9694 = fmul fast float %9687, %9692
  %9695 = fmul fast float %9687, %9693
  %9696 = fadd fast float %9694, 0x3F0FFB4800000000
  %9697 = fadd fast float %9695, 0xBF0FFB4800000000
  %9698 = call float @dx.op.binary.f32(i32 35, float %9689, float %9696)  ; FMax(a,b)
  %9699 = call float @dx.op.binary.f32(i32 36, float %9698, float %9697)  ; FMin(a,b)
  %9700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9700, 1
  %9702 = extractvalue %dx.types.CBufRet.f32 %9700, 2
  %9703 = extractvalue %dx.types.CBufRet.f32 %9700, 0
  %9704 = select i1 %8206, float %9703, float 0.000000e+00
  %9705 = fmul fast float %9701, %9699
  %9706 = fadd fast float %9704, %9705
  %9707 = fadd fast float %9704, %9702
  %9708 = fsub fast float %9701, %9702
  %9709 = fadd fast float %9708, %9704
  %9710 = call float @dx.op.binary.f32(i32 35, float %9706, float %9707)  ; FMax(a,b)
  %9711 = call float @dx.op.binary.f32(i32 36, float %9710, float %9709)  ; FMin(a,b)
  %9712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9643, float %9644, float %9711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9713 = extractvalue %dx.types.ResRet.f32 %9712, 0
  %9714 = extractvalue %dx.types.ResRet.f32 %9712, 1
  %9715 = extractvalue %dx.types.ResRet.f32 %9712, 2
  %9716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.i32 %9716, 0
  %9718 = extractvalue %dx.types.CBufRet.i32 %9716, 1
  %9719 = uitofp i32 %9717 to float
  %9720 = uitofp i32 %9718 to float
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 0
  %9723 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9724 = fmul fast float %9719, %9643
  %9725 = fmul fast float %9720, %9644
  %9726 = fadd fast float %9724, -5.000000e-01
  %9727 = fadd fast float %9725, -5.000000e-01
  %9728 = call float @dx.op.unary.f32(i32 22, float %9726)  ; Frc(value)
  %9729 = call float @dx.op.unary.f32(i32 22, float %9727)  ; Frc(value)
  %9730 = fmul fast float %9728, %9728
  %9731 = fmul fast float %9730, %9728
  %9732 = fsub fast float 3.000000e+00, %9728
  %9733 = fmul fast float %9730, %9732
  %9734 = fmul fast float %9728, 3.000000e+00
  %9735 = fmul fast float %9731, 3.000000e+00
  %9736 = fmul fast float %9730, 6.000000e+00
  %9737 = fsub fast float %9735, %9736
  %9738 = fadd fast float %9737, 4.000000e+00
  %9739 = fmul fast float %9738, 0x3FC5555560000000
  %9740 = fmul fast float %9731, -3.000000e+00
  %9741 = fadd fast float %9730, %9728
  %9742 = fmul fast float %9741, 3.000000e+00
  %9743 = fadd fast float %9740, 1.000000e+00
  %9744 = fadd fast float %9743, %9742
  %9745 = fmul fast float %9731, 0x3FC5555560000000
  %9746 = fmul fast float %9729, %9729
  %9747 = fmul fast float %9746, %9729
  %9748 = fsub fast float 3.000000e+00, %9729
  %9749 = fmul fast float %9746, %9748
  %9750 = fmul fast float %9729, 3.000000e+00
  %9751 = fmul fast float %9747, 3.000000e+00
  %9752 = fmul fast float %9746, 6.000000e+00
  %9753 = fsub fast float %9751, %9752
  %9754 = fadd fast float %9753, 4.000000e+00
  %9755 = fmul fast float %9754, 0x3FC5555560000000
  %9756 = fmul fast float %9747, -3.000000e+00
  %9757 = fadd fast float %9746, %9729
  %9758 = fmul fast float %9757, 3.000000e+00
  %9759 = fadd fast float %9756, 1.000000e+00
  %9760 = fadd fast float %9759, %9758
  %9761 = fmul fast float %9747, 0x3FC5555560000000
  %9762 = fadd fast float %9728, 1.000000e+00
  %9763 = fsub fast float 1.000000e+00, %9734
  %9764 = fadd fast float %9763, %9733
  %9765 = fadd fast float %9764, %9738
  %9766 = fmul fast float %9765, 0x3FC5555560000000
  %9767 = fdiv fast float %9739, %9766
  %9768 = fsub fast float %9762, %9767
  %9769 = fsub fast float 1.000000e+00, %9728
  %9770 = fadd fast float %9744, %9731
  %9771 = fmul fast float %9770, 0x3FC5555560000000
  %9772 = fdiv fast float %9745, %9771
  %9773 = fadd fast float %9769, %9772
  %9774 = fadd fast float %9729, 1.000000e+00
  %9775 = fsub fast float 1.000000e+00, %9750
  %9776 = fadd fast float %9775, %9749
  %9777 = fadd fast float %9776, %9754
  %9778 = fmul fast float %9777, 0x3FC5555560000000
  %9779 = fdiv fast float %9755, %9778
  %9780 = fsub fast float %9774, %9779
  %9781 = fsub fast float 1.000000e+00, %9729
  %9782 = fadd fast float %9760, %9747
  %9783 = fmul fast float %9782, 0x3FC5555560000000
  %9784 = fdiv fast float %9761, %9783
  %9785 = fadd fast float %9784, %9781
  %9786 = fmul fast float %9768, %9722
  %9787 = fsub fast float %9643, %9786
  %9788 = fmul fast float %9773, %9722
  %9789 = fadd fast float %9788, %9643
  %9790 = fmul fast float %9785, %9723
  %9791 = fadd fast float %9790, %9644
  %9792 = fmul fast float %9780, %9723
  %9793 = fsub fast float %9644, %9792
  %9794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9787, float %9793, float %9711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9795 = extractvalue %dx.types.ResRet.f32 %9794, 0
  %9796 = extractvalue %dx.types.ResRet.f32 %9794, 1
  %9797 = extractvalue %dx.types.ResRet.f32 %9794, 2
  %9798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9789, float %9793, float %9711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9799 = extractvalue %dx.types.ResRet.f32 %9798, 0
  %9800 = extractvalue %dx.types.ResRet.f32 %9798, 1
  %9801 = extractvalue %dx.types.ResRet.f32 %9798, 2
  %9802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9787, float %9791, float %9711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9803 = extractvalue %dx.types.ResRet.f32 %9802, 0
  %9804 = extractvalue %dx.types.ResRet.f32 %9802, 1
  %9805 = extractvalue %dx.types.ResRet.f32 %9802, 2
  %9806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9789, float %9791, float %9711, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9807 = extractvalue %dx.types.ResRet.f32 %9806, 0
  %9808 = extractvalue %dx.types.ResRet.f32 %9806, 1
  %9809 = extractvalue %dx.types.ResRet.f32 %9806, 2
  %9810 = fsub fast float %9803, %9795
  %9811 = fsub fast float %9804, %9796
  %9812 = fsub fast float %9805, %9797
  %9813 = fmul fast float %9810, %9783
  %9814 = fmul fast float %9811, %9783
  %9815 = fmul fast float %9812, %9783
  %9816 = fadd fast float %9813, %9795
  %9817 = fadd fast float %9814, %9796
  %9818 = fadd fast float %9815, %9797
  %9819 = fsub fast float %9807, %9799
  %9820 = fsub fast float %9808, %9800
  %9821 = fsub fast float %9809, %9801
  %9822 = fmul fast float %9819, %9783
  %9823 = fmul fast float %9820, %9783
  %9824 = fmul fast float %9821, %9783
  %9825 = fsub fast float %9799, %9816
  %9826 = fadd fast float %9825, %9822
  %9827 = fsub fast float %9800, %9817
  %9828 = fadd fast float %9827, %9823
  %9829 = fsub fast float %9801, %9818
  %9830 = fadd fast float %9829, %9824
  %9831 = fmul fast float %9826, %9771
  %9832 = fmul fast float %9828, %9771
  %9833 = fmul fast float %9830, %9771
  %9834 = fadd fast float %9831, %9816
  %9835 = fadd fast float %9832, %9817
  %9836 = fadd fast float %9833, %9818
  %9837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9838 = extractvalue %dx.types.CBufRet.f32 %9837, 1
  %9839 = fmul fast float %9834, %9838
  %9840 = fmul fast float %9835, %9838
  %9841 = fmul fast float %9836, %9838
  br label %9842

; <label>:9842                                    ; preds = %9673, %9630
  %9843 = phi float [ %9713, %9673 ], [ 1.000000e+00, %9630 ]
  %9844 = phi float [ %9714, %9673 ], [ 1.000000e+00, %9630 ]
  %9845 = phi float [ %9715, %9673 ], [ 1.000000e+00, %9630 ]
  %9846 = phi float [ %9839, %9673 ], [ 0.000000e+00, %9630 ]
  %9847 = phi float [ %9840, %9673 ], [ 0.000000e+00, %9630 ]
  %9848 = phi float [ %9841, %9673 ], [ 0.000000e+00, %9630 ]
  %9849 = fmul fast float %9846, %8192
  %9850 = fmul fast float %9847, %8193
  %9851 = fmul fast float %9848, %8194
  %9852 = fmul fast float %9843, %9637
  %9853 = call float @dx.op.dot3.f32(i32 55, float %9843, float %9844, float %9845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9854 = call float @dx.op.dot3.f32(i32 55, float %9849, float %9850, float %9851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9855 = select i1 %249, float %9853, float %9843
  %9856 = select i1 %249, float %9853, float %9844
  %9857 = select i1 %249, float 1.000000e+00, float %9845
  %9858 = select i1 %249, float %9854, float %9849
  %9859 = select i1 %249, float 0.000000e+00, float %9850
  %9860 = select i1 %249, float 0.000000e+00, float %9851
  %9861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9862 = extractvalue %dx.types.CBufRet.i32 %9861, 3
  %9863 = and i32 %9862, 3
  %9864 = icmp ne i32 %9863, 0
  %9865 = and i32 %9862, 4
  %9866 = icmp ne i32 %9865, 0
  %9867 = and i1 %9864, %9866
  %9868 = and i1 %249, %9867
  br i1 %9868, label %9869, label %9875

; <label>:9869                                    ; preds = %9842
  %9870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.f32 %9870, 1
  %9872 = fadd fast float %9852, -1.000000e+00
  %9873 = fmul fast float %9871, %9872
  %9874 = fadd fast float %9873, 1.000000e+00
  br label %9875

; <label>:9875                                    ; preds = %9869, %9842
  %9876 = phi float [ %9874, %9869 ], [ %9852, %9842 ]
  %9877 = fadd fast float %9634, %9631
  %9878 = fmul fast float %9855, %9877
  %9879 = fadd fast float %9878, %9858
  %9880 = fadd fast float %9635, %9632
  %9881 = fmul fast float %9856, %9880
  %9882 = fadd fast float %9881, %9859
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 0
  br i1 %249, label %9885, label %9900

; <label>:9885                                    ; preds = %9875
  %9886 = fadd fast float %9879, %9882
  %9887 = fmul fast float %9884, %9886
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 3
  %9890 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %9891 = fsub fast float %8181, %8175
  %9892 = fadd fast float %9891, %8182
  %9893 = fsub fast float %9892, %9890
  %9894 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %9895 = fmul fast float %9893, %9894
  %9896 = call float @dx.op.unary.f32(i32 7, float %9895)  ; Saturate(value)
  %9897 = fsub fast float %9896, %9889
  %9898 = fmul fast float %9897, %9876
  %9899 = fadd fast float %9898, %9889
  br label %9926

; <label>:9900                                    ; preds = %9875
  %9901 = fadd fast float %9636, %9633
  %9902 = fmul fast float %9857, %9901
  %9903 = fadd fast float %9902, %9860
  %9904 = fmul fast float %9884, %9879
  %9905 = fmul fast float %9884, %9882
  %9906 = fmul fast float %9884, %9903
  %9907 = call float @dx.op.binary.f32(i32 35, float %9905, float %9906)  ; FMax(a,b)
  %9908 = call float @dx.op.binary.f32(i32 35, float %9904, float %9907)  ; FMax(a,b)
  %9909 = call float @dx.op.binary.f32(i32 35, float %8193, float %8194)  ; FMax(a,b)
  %9910 = call float @dx.op.binary.f32(i32 35, float %8192, float %9909)  ; FMax(a,b)
  %9911 = call float @dx.op.binary.f32(i32 35, float %9908, float %9910)  ; FMax(a,b)
  %9912 = fcmp fast ugt float %9911, 0x3F10000000000000
  br i1 %9912, label %9914, label %9913

; <label>:9913                                    ; preds = %9900
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9914

; <label>:9914                                    ; preds = %9913, %9900
  %9915 = add i32 %54, 356
  %9916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9915, i32 undef)  ; BufferLoad(srv,index,wot)
  %9917 = extractvalue %dx.types.ResRet.i32 %9916, 0
  %9918 = and i32 %9917, 32
  %9919 = icmp eq i32 %9918, 0
  br i1 %9919, label %9926, label %9920

; <label>:9920                                    ; preds = %9914
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 0
  %9923 = fmul fast float %9922, 0x3FE99999A0000000
  %9924 = fadd fast float %9922, %9904
  %9925 = fadd fast float %9923, %9906
  br label %9926

; <label>:9926                                    ; preds = %9920, %9914, %9885
  %9927 = phi float [ 1.000000e+00, %9885 ], [ %8193, %9920 ], [ %8193, %9914 ]
  %9928 = phi float [ 1.000000e+00, %9885 ], [ %8194, %9920 ], [ %8194, %9914 ]
  %9929 = phi float [ %9887, %9885 ], [ %9924, %9920 ], [ %9904, %9914 ]
  %9930 = phi float [ %9899, %9885 ], [ %9905, %9920 ], [ %9905, %9914 ]
  %9931 = phi float [ 1.000000e+00, %9885 ], [ %9925, %9920 ], [ %9906, %9914 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9932 = call float @dx.op.binary.f32(i32 36, float %9929, float 3.225500e+04)  ; FMin(a,b)
  %9933 = call float @dx.op.binary.f32(i32 36, float %9930, float 3.225500e+04)  ; FMin(a,b)
  %9934 = call float @dx.op.binary.f32(i32 36, float %9931, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9933)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9935 = call float @dx.op.binary.f32(i32 36, float %8192, float 3.225500e+04)  ; FMin(a,b)
  %9936 = call float @dx.op.binary.f32(i32 36, float %9927, float 3.225500e+04)  ; FMin(a,b)
  %9937 = call float @dx.op.binary.f32(i32 36, float %9928, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9936)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9937)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !93}
!70 = !{!71, !89, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88}
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
!88 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90, !91}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!91 = !{i32 1, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!92 = !{i32 1}
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
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

