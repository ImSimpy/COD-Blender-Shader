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
; shader hash: 2727fdb4db94ef33811fdf35aed5b092
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fmul fast float %101, 5.000000e-01
  %160 = fptosi float %158 to i32
  %161 = fptosi float %159 to i32
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %160, i32 %161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = lshr i32 %163, 18
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %165, 0x3F4C00EBA0000000
  %167 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %168 = fadd fast float %167, -1.000000e+00
  %169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %170 = extractvalue %dx.types.Dimensions %169, 0
  %171 = sitofp i32 %170 to float
  %172 = extractvalue %dx.types.Dimensions %169, 1
  %173 = sitofp i32 %172 to float
  %174 = fcmp fast oge float %158, %171
  %175 = fcmp fast oge float %159, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %181 = fmul fast float %179, %100
  %182 = fmul fast float %180, %101
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 114688
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float %181, float 0.000000e+00
  %188 = select i1 %186, float %182, float 0.000000e+00
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fmul fast float %190, 2.550000e+02
  %192 = fptoui float %191 to i32
  %193 = select i1 %186, i32 %192, i32 0
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %213

; <label>:202                                     ; preds = %0
  %203 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %204 = fmul fast float %203, %101
  %205 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %206 = fmul fast float %205, %100
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %206, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %199, 0
  %215 = and i1 %198, %214
  br label %216

; <label>:216                                     ; preds = %213, %202
  %217 = phi i1 [ %212, %202 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %100, 2.560000e+02
  %222 = frem fast float %101, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fadd fast float %226, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = add i32 %54, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %54, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %54, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %54, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %54, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %54, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %54, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %54, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %54, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %54, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %54, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %54, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %54, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %54, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %54, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %54, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %54, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %216
  %411 = add i32 %54, 488
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = fmul fast float %420, %84
  %422 = fmul fast float %417, %85
  %423 = fmul fast float %418, %86
  %424 = fmul fast float %419, %87
  br label %425

; <label>:425                                     ; preds = %410, %216
  %426 = phi float [ %87, %216 ], [ %424, %410 ]
  %427 = phi float [ %86, %216 ], [ %423, %410 ]
  %428 = phi float [ %85, %216 ], [ %422, %410 ]
  %429 = phi float [ %84, %216 ], [ %421, %410 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

; <label>:434                                     ; preds = %425
  %435 = add i32 %54, 44
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %428, float 1.000000e+00
  %441 = add i32 %54, 60
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %427, float 1.000000e+00
  %447 = add i32 %54, 76
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %426, float 1.000000e+00
  br label %453

; <label>:453                                     ; preds = %434, %425
  %454 = phi float [ %426, %425 ], [ %452, %434 ]
  %455 = phi float [ %427, %425 ], [ %446, %434 ]
  %456 = phi float [ %428, %425 ], [ %440, %434 ]
  %457 = lshr i32 %431, 20
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 1
  %460 = add i32 %54, 24
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %54, 28
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %465, %462
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %1228, label %468

; <label>:468                                     ; preds = %453
  %469 = and i32 %462, 262144
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %57, float 1.000000e+00
  %472 = select i1 %470, float %58, float 0.000000e+00
  %473 = select i1 %470, float %59, float 0.000000e+00
  %474 = select i1 %470, float %60, float 1.000000e+00
  %475 = select i1 %470, float %61, float %82
  %476 = select i1 %470, float %62, float %83
  %477 = add i32 %54, 284
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = fmul fast float %481, 0x3F50624DE0000000
  %483 = add i32 %54, 88
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = lshr i32 %485, 24
  %489 = add i32 %54, 292
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %54, 32
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = shl i32 %498, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = fmul fast float %509, 1.000000e+03
  %511 = fmul fast float %269, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %259
  %514 = fmul fast float %270, %510
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %261
  %517 = fmul fast float %482, %510
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, 0x401921FB60000000
  %520 = fadd fast float %519, %501
  %521 = call float @dx.op.unary.f32(i32 13, float %520)  ; Sin(value)
  %522 = call float @dx.op.unary.f32(i32 12, float %520)  ; Cos(value)
  %523 = fsub fast float -0.000000e+00, %521
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fmul fast float %493, %524
  %527 = fmul fast float %495, %525
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %504, %528
  %531 = fmul fast float %507, %529
  %532 = fmul fast float %522, %530
  %533 = call float @dx.op.tertiary.f32(i32 46, float %523, float %531, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %521, %530
  %535 = call float @dx.op.tertiary.f32(i32 46, float %522, float %531, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %513, %533
  %537 = fadd fast float %516, %535
  %538 = icmp ugt i32 %487, 1
  %539 = icmp ugt i32 %485, 33554431
  %540 = or i1 %539, %538
  br i1 %540, label %541, label %566

; <label>:541                                     ; preds = %468
  %542 = add i32 %54, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %509, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = mul nuw nsw i32 %487, %488
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %548, %550
  %552 = call float @dx.op.unary.f32(i32 27, float %551)  ; Round_ni(value)
  %553 = fptoui float %552 to i32
  %554 = urem i32 %553, %487
  %555 = udiv i32 %553, %488
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = fadd fast float %556, %558
  %561 = fadd fast float %557, %559
  %562 = uitofp i32 %487 to float
  %563 = uitofp i32 %488 to float
  %564 = fdiv fast float %560, %562
  %565 = fdiv fast float %561, %563
  br label %566

; <label>:566                                     ; preds = %541, %468
  %567 = phi float [ %564, %541 ], [ %536, %468 ]
  %568 = phi float [ %565, %541 ], [ %537, %468 ]
  %569 = and i32 %462, 16777216
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %680, label %571

; <label>:571                                     ; preds = %566
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fadd fast float %573, %155
  %577 = fadd fast float %574, %156
  %578 = fadd fast float %575, %157
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = icmp eq i32 %55, 65535
  br i1 %582, label %677, label %583

; <label>:583                                     ; preds = %571
  %584 = lshr i32 %55, 1
  %585 = shl i32 %584, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %55, 1
  %589 = icmp ne i32 %588, 0
  %590 = lshr i32 %587, 16
  %591 = and i32 %587, 65535
  %592 = select i1 %589, i32 %590, i32 %591
  %593 = icmp eq i32 %592, 65535
  br i1 %593, label %673, label %594

; <label>:594                                     ; preds = %583
  %595 = mul nuw nsw i32 %592, 40
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = add nuw nsw i32 %595, 12
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %595, 24
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %595, 36
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fmul fast float %612, %613
  %617 = fmul fast float %612, %614
  %618 = fmul fast float %612, %615
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = shl i32 %55, 2
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %632, %dx.types.Handle %49, float %633, float %634, float %635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fadd fast float %619, 1.250000e-01
  %656 = fadd fast float %655, %652
  %657 = fadd fast float %656, %646
  %658 = fadd fast float %620, 1.250000e-01
  %659 = fadd fast float %658, %653
  %660 = fadd fast float %659, %647
  %661 = fadd fast float %621, 1.250000e-01
  %662 = fadd fast float %661, %654
  %663 = fadd fast float %662, %648
  %664 = fmul fast float %657, %607
  %665 = fmul fast float %660, %608
  %666 = fmul fast float %663, %609
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %670, %dx.types.Handle %47, float %664, float %665, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  br label %673

; <label>:673                                     ; preds = %594, %583
  %674 = phi float [ %672, %594 ], [ -1.000000e+00, %583 ]
  %675 = fadd fast float %674, %581
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %673, %571
  %678 = phi float [ %676, %673 ], [ %581, %571 ]
  %679 = fmul fast float %678, %429
  br label %680

; <label>:680                                     ; preds = %677, %566
  %681 = phi float [ %679, %677 ], [ %429, %566 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 256
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %732, label %686

; <label>:686                                     ; preds = %680
  %687 = add i32 %54, 424
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = add i32 %54, 100
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = shl i32 %696, 4
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = lshr i32 %696, 7
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fsub fast float 1.000000e+00, %681
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %705 = bitcast float %681 to i32
  %706 = sitofp i32 %705 to float
  %707 = fadd fast float %706, 0xC1CFBF8940000000
  %708 = fmul fast float %702, %707
  %709 = fadd fast float %708, 0x41CFBF8940000000
  %710 = fptosi float %709 to i32
  %711 = bitcast i32 %710 to float
  %712 = bitcast float %704 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %711, %699
  %720 = fmul fast float %718, %699
  %721 = fsub fast float %704, %719
  %722 = fadd fast float %720, %704
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = fsub fast float %693, %723
  %726 = fsub fast float %724, %723
  %727 = bitcast float %726 to i32
  %728 = sub nsw i32 2129859010, %727
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %729, %725
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  br label %732

; <label>:732                                     ; preds = %686, %680
  %733 = phi float [ %731, %686 ], [ %681, %680 ]
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 128
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %754, label %738

; <label>:738                                     ; preds = %732
  %739 = add i32 %54, 408
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 524288
  %749 = icmp ne i32 %748, 0
  %750 = fcmp fast ogt float %745, 0x3FE0101020000000
  %751 = select i1 %750, float 1.000000e+00, float 0.000000e+00
  %752 = select i1 %749, float %751, float %745
  %753 = fmul fast float %752, %733
  br label %754

; <label>:754                                     ; preds = %738, %732
  %755 = phi float [ %753, %738 ], [ %733, %732 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 16
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %958, label %760

; <label>:760                                     ; preds = %754
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %54, 360
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %772, %774
  %779 = fadd fast float %778, %777
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 512
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %793, label %785

; <label>:785                                     ; preds = %760
  %786 = add i32 %54, 440
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = add i32 %788, 0
  %790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %790, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  br label %793

; <label>:793                                     ; preds = %785, %760
  %794 = phi float [ %792, %785 ], [ 1.000000e+00, %760 ]
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 33554432
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %905, label %799

; <label>:799                                     ; preds = %793
  %800 = add i32 %54, 224
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %802, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = add i32 %54, 228
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 24
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = and i32 %813, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %813, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = lshr i32 %813, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = add i32 %54, 220
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 24
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = and i32 %830, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %830, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = lshr i32 %830, 16
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = bitcast float %769 to i32
  %846 = ashr i32 %845, 1
  %847 = sub nsw i32 1597463174, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %769, 5.000000e-01
  %850 = fmul fast float %848, %848
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.500000e+00, %851
  %853 = fmul fast float %848, %769
  %854 = fmul fast float %853, %852
  %855 = bitcast float %770 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %770, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %770
  %864 = fmul fast float %863, %862
  %865 = bitcast float %771 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463174, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %771, 5.000000e-01
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %870, %869
  %872 = fsub fast float 1.500000e+00, %871
  %873 = fmul fast float %868, %771
  %874 = fmul fast float %873, %872
  %875 = fsub fast float %854, %836
  %876 = fsub fast float %864, %840
  %877 = fsub fast float %874, %844
  %878 = fmul fast float %875, %804
  %879 = fmul fast float %876, %806
  %880 = fmul fast float %877, %811
  %881 = fadd fast float %878, %819
  %882 = fadd fast float %879, %823
  %883 = fadd fast float %880, %827
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fmul fast float %890, %794
  %894 = fmul fast float %891, %794
  %895 = fmul fast float %892, %794
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %816, %780
  %900 = fsub fast float %899, %833
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float %901, %780
  %903 = fmul fast float %902, %794
  %904 = fadd fast float %903, %780
  br label %958

; <label>:905                                     ; preds = %793
  %906 = and i32 %796, 134217728
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %942, label %908

; <label>:908                                     ; preds = %905
  %909 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fmul fast float %912, %794
  %916 = fmul fast float %913, %794
  %917 = fmul fast float %914, %794
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = fmul fast float %918, 2.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %925, %921
  %927 = fadd fast float %926, %924
  %928 = fmul fast float %927, %921
  %929 = fmul fast float %919, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %922
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %922
  %934 = fmul fast float %920, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %923
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %923
  %939 = fmul fast float %928, %928
  %940 = fmul fast float %933, %933
  %941 = fmul fast float %938, %938
  br label %958

; <label>:942                                     ; preds = %905
  %943 = fmul fast float %246, %246
  %944 = fmul fast float %250, %250
  %945 = fmul fast float %254, %254
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fmul fast float %794, %946
  %950 = fmul fast float %794, %947
  %951 = fmul fast float %794, %948
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  br label %958

; <label>:958                                     ; preds = %942, %908, %799, %754
  %959 = phi float [ %904, %799 ], [ %780, %908 ], [ %780, %942 ], [ 0x3FA23C0BE0000000, %754 ]
  %960 = phi float [ %896, %799 ], [ %939, %908 ], [ %955, %942 ], [ 1.000000e+00, %754 ]
  %961 = phi float [ %897, %799 ], [ %940, %908 ], [ %956, %942 ], [ 1.000000e+00, %754 ]
  %962 = phi float [ %898, %799 ], [ %941, %908 ], [ %957, %942 ], [ 1.000000e+00, %754 ]
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 1
  %965 = and i32 %964, 1
  %966 = icmp ne i32 %965, 0
  %967 = add i32 %54, 356
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp ne i32 %970, 0
  %972 = and i1 %966, %971
  %973 = select i1 %972, float 1.000000e+00, float %960
  %974 = select i1 %972, float 0x3FD3333340000000, float %961
  %975 = select i1 %972, float 0x3FD3333340000000, float %962
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1052, label %980

; <label>:980                                     ; preds = %958
  %981 = add i32 %54, 92
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %54, 376
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = and i32 %983, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %983, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %983, 16
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fmul fast float %990, %995
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fadd fast float %991, -5.000000e-01
  %1007 = fadd fast float %993, -5.000000e-01
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1007, %1002
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fmul fast float %1011, 2.000000e+00
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fadd fast float %1013, %1015
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fsub fast float %1013, %1015
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float 1.000000e+00, %1020
  %1022 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1023 = fsub fast float %1021, %1022
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1019, float %1023, float %1017, float %1019, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1017, %1025
  %1027 = fmul fast float %1019, %1025
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 67108864
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1048, label %1032

; <label>:1032                                    ; preds = %980
  %1033 = add i32 %54, 280
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 65535
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 65535
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = lshr i32 %1035, 16
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fsub fast float %1005, %1043
  %1045 = fmul fast float %1044, %1037
  %1046 = fadd fast float %1045, %1041
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  br label %1048

; <label>:1048                                    ; preds = %1032, %980
  %1049 = phi float [ %1047, %1032 ], [ %1005, %980 ]
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  br label %1052

; <label>:1052                                    ; preds = %1048, %958
  %1053 = phi float [ %1049, %1048 ], [ 0x3FD6666660000000, %958 ]
  %1054 = phi float [ %1050, %1048 ], [ 0.000000e+00, %958 ]
  %1055 = phi float [ %1051, %1048 ], [ 0.000000e+00, %958 ]
  %1056 = phi float [ %992, %1048 ], [ 1.000000e+00, %958 ]
  %1057 = add i32 %54, 160
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 22
  %1061 = shl nuw nsw i32 %1060, 5
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 64
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1100, label %1067

; <label>:1067                                    ; preds = %1052
  %1068 = add i32 %54, 392
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 131072
  %1076 = icmp eq i32 %1075, 0
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %96, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = fmul fast float %1078, %234
  %1082 = fmul fast float %1079, %237
  %1083 = fmul fast float %1080, %240
  br i1 %1076, label %1090, label %1084

; <label>:1084                                    ; preds = %1067
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = fmul fast float %1086, %1081
  %1088 = fmul fast float %1086, %1082
  %1089 = fmul fast float %1086, %1083
  br label %1090

; <label>:1090                                    ; preds = %1084, %1067
  %1091 = phi float [ %1087, %1084 ], [ %1081, %1067 ]
  %1092 = phi float [ %1088, %1084 ], [ %1082, %1067 ]
  %1093 = phi float [ %1089, %1084 ], [ %1083, %1067 ]
  %1094 = fmul fast float %1091, %1062
  %1095 = select i1 %217, float %1094, float %1091
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = select i1 %217, float 0.000000e+00, float %1091
  %1098 = select i1 %217, float %1096, float %1092
  %1099 = select i1 %217, float 0.000000e+00, float %1093
  br label %1100

; <label>:1100                                    ; preds = %1090, %1052
  %1101 = phi float [ %1097, %1090 ], [ 0.000000e+00, %1052 ]
  %1102 = phi float [ %1098, %1090 ], [ 0.000000e+00, %1052 ]
  %1103 = phi float [ %1099, %1090 ], [ 0.000000e+00, %1052 ]
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 1024
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1138, label %1108

; <label>:1108                                    ; preds = %1100
  %1109 = add i32 %54, 152
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = lshr i32 %1111, 8
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = lshr i32 %1111, 16
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = fmul fast float %1114, %1114
  %1124 = fmul fast float %1118, %1118
  %1125 = fmul fast float %1122, %1122
  %1126 = add i32 %54, 456
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  br label %1138

; <label>:1138                                    ; preds = %1108, %1100
  %1139 = phi float [ %1135, %1108 ], [ 0.000000e+00, %1100 ]
  %1140 = phi float [ %1136, %1108 ], [ 0.000000e+00, %1100 ]
  %1141 = phi float [ %1137, %1108 ], [ 0.000000e+00, %1100 ]
  %1142 = fcmp fast ogt float %1139, 0.000000e+00
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1145, 0xBFE62E4300000000
  %1154 = fmul fast float %1153, %1152
  %1155 = fmul fast float %1146, 0xBFE62E4300000000
  %1156 = fmul fast float %1155, %1152
  %1157 = fmul fast float %1147, 0xBFE62E4300000000
  %1158 = fmul fast float %1157, %1152
  %1159 = select i1 %1142, float %1154, float 1.270000e+02
  %1160 = select i1 %1143, float %1156, float 1.270000e+02
  %1161 = select i1 %1144, float %1158, float 1.270000e+02
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 10240
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1210, label %1166

; <label>:1166                                    ; preds = %1138
  %1167 = add i32 %54, 472
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %97, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 3
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 1048576
  %1178 = icmp ne i32 %1177, 0
  %1179 = and i32 %1176, 8192
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1196, label %1181

; <label>:1181                                    ; preds = %1166
  %1182 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1183 = select i1 %1178, float %1182, float %1173
  %1184 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1185 = select i1 %1178, float %1184, float %1173
  %1186 = add i32 %54, 96
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 16
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F80101020000000
  %1193 = fmul fast float %1192, %1185
  %1194 = fmul fast float %1192, %1173
  %1195 = fmul fast float %1192, %1183
  br label %1196

; <label>:1196                                    ; preds = %1181, %1166
  %1197 = phi float [ %1193, %1181 ], [ 0.000000e+00, %1166 ]
  %1198 = phi float [ %1194, %1181 ], [ 0.000000e+00, %1166 ]
  %1199 = phi float [ %1195, %1181 ], [ 0.000000e+00, %1166 ]
  %1200 = and i32 %1176, 2048
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1210, label %1202

; <label>:1202                                    ; preds = %1196
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = shl i32 %1204, 4
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = fmul fast float %1207, %1174
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1210

; <label>:1210                                    ; preds = %1202, %1196, %1138
  %1211 = phi float [ %1197, %1202 ], [ %1197, %1196 ], [ 0.000000e+00, %1138 ]
  %1212 = phi float [ %1198, %1202 ], [ %1198, %1196 ], [ 0.000000e+00, %1138 ]
  %1213 = phi float [ %1199, %1202 ], [ %1199, %1196 ], [ 0.000000e+00, %1138 ]
  %1214 = phi float [ %1209, %1202 ], [ 0x3F70101020000000, %1196 ], [ 0x3F70101020000000, %1138 ]
  %1215 = add i32 %54, 96
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = lshr i32 %1217, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = fmul fast float %1222, %1223
  %1225 = fadd fast float %1224, %1219
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  br label %1228

; <label>:1228                                    ; preds = %1210, %453
  %1229 = phi float [ 0.000000e+00, %453 ], [ %1054, %1210 ]
  %1230 = phi float [ 0.000000e+00, %453 ], [ %1055, %1210 ]
  %1231 = phi float [ 0.000000e+00, %453 ], [ %973, %1210 ]
  %1232 = phi float [ 0.000000e+00, %453 ], [ %974, %1210 ]
  %1233 = phi float [ 0.000000e+00, %453 ], [ %975, %1210 ]
  %1234 = phi float [ 0.000000e+00, %453 ], [ %1101, %1210 ]
  %1235 = phi float [ 0.000000e+00, %453 ], [ %1102, %1210 ]
  %1236 = phi float [ 0.000000e+00, %453 ], [ %1103, %1210 ]
  %1237 = phi float [ 0.000000e+00, %453 ], [ %1211, %1210 ]
  %1238 = phi float [ 0.000000e+00, %453 ], [ %1212, %1210 ]
  %1239 = phi float [ 0.000000e+00, %453 ], [ %1213, %1210 ]
  %1240 = phi float [ 0.000000e+00, %453 ], [ %1159, %1210 ]
  %1241 = phi float [ 0.000000e+00, %453 ], [ %1160, %1210 ]
  %1242 = phi float [ 0.000000e+00, %453 ], [ %1161, %1210 ]
  %1243 = phi float [ 0.000000e+00, %453 ], [ %959, %1210 ]
  %1244 = phi float [ 0.000000e+00, %453 ], [ %755, %1210 ]
  %1245 = phi float [ 0.000000e+00, %453 ], [ %1053, %1210 ]
  %1246 = phi float [ 0.000000e+00, %453 ], [ %1056, %1210 ]
  %1247 = phi float [ 0.000000e+00, %453 ], [ %1214, %1210 ]
  %1248 = phi float [ 0.000000e+00, %453 ], [ %1227, %1210 ]
  br i1 %401, label %2286, label %1249

; <label>:1249                                    ; preds = %1228
  %1250 = icmp ult i32 %459, 2
  %1251 = add i32 %54, 40
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %54, 44
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = or i32 %1256, %1253
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %2286, label %1259

; <label>:1259                                    ; preds = %1249
  %1260 = and i32 %1253, 262144
  %1261 = icmp ne i32 %1260, 0
  %1262 = select i1 %1261, float %57, float 1.000000e+00
  %1263 = select i1 %1261, float %58, float 0.000000e+00
  %1264 = select i1 %1261, float %59, float 0.000000e+00
  %1265 = select i1 %1261, float %60, float 1.000000e+00
  %1266 = select i1 %1261, float %61, float %82
  %1267 = select i1 %1261, float %62, float %83
  %1268 = add i32 %54, 300
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1272, 0x3F50624DE0000000
  %1274 = add i32 %54, 104
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = and i32 %1277, 255
  %1279 = lshr i32 %1276, 24
  %1280 = add i32 %54, 308
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %54, 48
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 22
  %1291 = shl nuw nsw i32 %1290, 5
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = shl i32 %1289, 4
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1289, 7
  %1297 = and i32 %1296, 32752
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1301 = fmul fast float %1300, 1.000000e+03
  %1302 = fmul fast float %311, %1301
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = fadd fast float %1303, %301
  %1305 = fmul fast float %312, %1301
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = fadd fast float %1306, %303
  %1308 = fmul fast float %1273, %1301
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fmul fast float %1309, 0x401921FB60000000
  %1311 = fadd fast float %1310, %1292
  %1312 = call float @dx.op.unary.f32(i32 13, float %1311)  ; Sin(value)
  %1313 = call float @dx.op.unary.f32(i32 12, float %1311)  ; Cos(value)
  %1314 = fsub fast float -0.000000e+00, %1312
  %1315 = fadd fast float %1266, -5.000000e-01
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fmul fast float %1284, %1315
  %1318 = fmul fast float %1286, %1316
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fmul fast float %1295, %1319
  %1322 = fmul fast float %1298, %1320
  %1323 = fmul fast float %1313, %1321
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1322, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1312, %1321
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1322, float %1325)  ; FMad(a,b,c)
  %1327 = fadd fast float %1304, %1324
  %1328 = fadd fast float %1307, %1326
  %1329 = icmp ugt i32 %1278, 1
  %1330 = icmp ugt i32 %1276, 33554431
  %1331 = or i1 %1330, %1329
  br i1 %1331, label %1332, label %1357

; <label>:1332                                    ; preds = %1259
  %1333 = add i32 %54, 244
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = lshr i32 %1335, 16
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = fmul fast float %1300, %1337
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = mul nuw nsw i32 %1278, %1279
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1339, %1341
  %1343 = call float @dx.op.unary.f32(i32 27, float %1342)  ; Round_ni(value)
  %1344 = fptoui float %1343 to i32
  %1345 = urem i32 %1344, %1278
  %1346 = udiv i32 %1344, %1279
  %1347 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = uitofp i32 %1345 to float
  %1350 = uitofp i32 %1346 to float
  %1351 = fadd fast float %1347, %1349
  %1352 = fadd fast float %1348, %1350
  %1353 = uitofp i32 %1278 to float
  %1354 = uitofp i32 %1279 to float
  %1355 = fdiv fast float %1351, %1353
  %1356 = fdiv fast float %1352, %1354
  br label %1357

; <label>:1357                                    ; preds = %1332, %1259
  %1358 = phi float [ %1355, %1332 ], [ %1327, %1259 ]
  %1359 = phi float [ %1356, %1332 ], [ %1328, %1259 ]
  %1360 = and i32 %1253, 16777216
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1471, label %1362

; <label>:1362                                    ; preds = %1357
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1367 = fadd fast float %1364, %155
  %1368 = fadd fast float %1365, %156
  %1369 = fadd fast float %1366, %157
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = icmp eq i32 %55, 65535
  br i1 %1373, label %1468, label %1374

; <label>:1374                                    ; preds = %1362
  %1375 = lshr i32 %55, 1
  %1376 = shl i32 %1375, 2
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %55, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = lshr i32 %1378, 16
  %1382 = and i32 %1378, 65535
  %1383 = select i1 %1380, i32 %1381, i32 %1382
  %1384 = icmp eq i32 %1383, 65535
  br i1 %1384, label %1464, label %1385

; <label>:1385                                    ; preds = %1374
  %1386 = mul nuw nsw i32 %1383, 40
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = add nuw nsw i32 %1386, 12
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1386, 24
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1386, 36
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = fsub fast float %1367, %1388
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fmul fast float %1403, %1404
  %1408 = fmul fast float %1403, %1405
  %1409 = fmul fast float %1403, %1406
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fmul fast float %1413, %1393
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = shl i32 %55, 2
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1423, %dx.types.Handle %49, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = fmul fast float %1428, 1.023000e+03
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 27, float %1434)  ; Round_ni(value)
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = fsub fast float %1407, %1410
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fmul fast float %1440, 7.500000e-01
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fadd fast float %1410, 1.250000e-01
  %1447 = fadd fast float %1446, %1443
  %1448 = fadd fast float %1447, %1437
  %1449 = fadd fast float %1411, 1.250000e-01
  %1450 = fadd fast float %1449, %1444
  %1451 = fadd fast float %1450, %1438
  %1452 = fadd fast float %1412, 1.250000e-01
  %1453 = fadd fast float %1452, %1445
  %1454 = fadd fast float %1453, %1439
  %1455 = fmul fast float %1448, %1398
  %1456 = fmul fast float %1451, %1399
  %1457 = fmul fast float %1454, %1400
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1459, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1461, %dx.types.Handle %47, float %1455, float %1456, float %1457, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  br label %1464

; <label>:1464                                    ; preds = %1385, %1374
  %1465 = phi float [ %1463, %1385 ], [ -1.000000e+00, %1374 ]
  %1466 = fadd fast float %1465, %1372
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br label %1468

; <label>:1468                                    ; preds = %1464, %1362
  %1469 = phi float [ %1467, %1464 ], [ %1372, %1362 ]
  %1470 = fmul fast float %1469, %456
  br label %1471

; <label>:1471                                    ; preds = %1468, %1357
  %1472 = phi float [ %1470, %1468 ], [ %456, %1357 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 256
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1523, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %54, 428
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = add i32 %54, 116
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = shl i32 %1487, 4
  %1489 = and i32 %1488, 32752
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1487, 7
  %1492 = and i32 %1491, 32752
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float 1.000000e+00, %1472
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1496 = bitcast float %1472 to i32
  %1497 = sitofp i32 %1496 to float
  %1498 = fadd fast float %1497, 0xC1CFBF8940000000
  %1499 = fmul fast float %1493, %1498
  %1500 = fadd fast float %1499, 0x41CFBF8940000000
  %1501 = fptosi float %1500 to i32
  %1502 = bitcast i32 %1501 to float
  %1503 = bitcast float %1495 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fadd fast float %1504, 0xC1CFBF8940000000
  %1506 = fmul fast float %1505, %1493
  %1507 = fadd fast float %1506, 0x41CFBF8940000000
  %1508 = fptosi float %1507 to i32
  %1509 = bitcast i32 %1508 to float
  %1510 = fmul fast float %1502, %1490
  %1511 = fmul fast float %1509, %1490
  %1512 = fsub fast float %1495, %1510
  %1513 = fadd fast float %1511, %1495
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = fsub fast float %1484, %1514
  %1517 = fsub fast float %1515, %1514
  %1518 = bitcast float %1517 to i32
  %1519 = sub nsw i32 2129859010, %1518
  %1520 = bitcast i32 %1519 to float
  %1521 = fmul fast float %1520, %1516
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  br label %1523

; <label>:1523                                    ; preds = %1477, %1471
  %1524 = phi float [ %1522, %1477 ], [ %1472, %1471 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 128
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1545, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %54, 412
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 524288
  %1540 = icmp ne i32 %1539, 0
  %1541 = fcmp fast ogt float %1536, 0x3FE0101020000000
  %1542 = select i1 %1541, float 1.000000e+00, float 0.000000e+00
  %1543 = select i1 %1540, float %1542, float %1536
  %1544 = fmul fast float %1543, %1524
  br label %1545

; <label>:1545                                    ; preds = %1529, %1523
  %1546 = phi float [ %1544, %1529 ], [ %1524, %1523 ]
  %1547 = fcmp fast ult float %1546, 0x3F70101020000000
  br i1 %1547, label %2286, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 16
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1751, label %1553

; <label>:1553                                    ; preds = %1548
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %54, 364
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = and i32 %1555, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1555, 8
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1565, %1567
  %1572 = fadd fast float %1571, %1570
  %1573 = fmul fast float %1572, 0x3F70101000000000
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 512
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1586, label %1578

; <label>:1578                                    ; preds = %1553
  %1579 = add i32 %54, 444
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %1581, 0
  %1583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1583, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  br label %1586

; <label>:1586                                    ; preds = %1578, %1553
  %1587 = phi float [ %1585, %1578 ], [ 1.000000e+00, %1553 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 33554432
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1698, label %1592

; <label>:1592                                    ; preds = %1586
  %1593 = add i32 %54, 240
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1595, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = add i32 %54, 244
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 24
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = and i32 %1606, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = lshr i32 %1606, 8
  %1614 = and i32 %1613, 255
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = lshr i32 %1606, 16
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F70101020000000
  %1621 = add i32 %54, 236
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = lshr i32 %1623, 24
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = and i32 %1623, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1623, 8
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1623, 16
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = bitcast float %1562 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1562, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1562
  %1647 = fmul fast float %1646, %1645
  %1648 = bitcast float %1563 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1563, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1563
  %1657 = fmul fast float %1656, %1655
  %1658 = bitcast float %1564 to i32
  %1659 = ashr i32 %1658, 1
  %1660 = sub nsw i32 1597463174, %1659
  %1661 = bitcast i32 %1660 to float
  %1662 = fmul fast float %1564, 5.000000e-01
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float 1.500000e+00, %1664
  %1666 = fmul fast float %1661, %1564
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float %1647, %1629
  %1669 = fsub fast float %1657, %1633
  %1670 = fsub fast float %1667, %1637
  %1671 = fmul fast float %1668, %1597
  %1672 = fmul fast float %1669, %1599
  %1673 = fmul fast float %1670, %1604
  %1674 = fadd fast float %1671, %1612
  %1675 = fadd fast float %1672, %1616
  %1676 = fadd fast float %1673, %1620
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fmul fast float %1683, %1587
  %1687 = fmul fast float %1684, %1587
  %1688 = fmul fast float %1685, %1587
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1609, %1573
  %1693 = fsub fast float %1692, %1626
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fsub fast float %1694, %1573
  %1696 = fmul fast float %1695, %1587
  %1697 = fadd fast float %1696, %1573
  br label %1751

; <label>:1698                                    ; preds = %1586
  %1699 = and i32 %1589, 134217728
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1735, label %1701

; <label>:1701                                    ; preds = %1698
  %1702 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fmul fast float %1705, %1587
  %1709 = fmul fast float %1706, %1587
  %1710 = fmul fast float %1707, %1587
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = fmul fast float %1711, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1714
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1714
  %1722 = fmul fast float %1712, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1715
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1715
  %1727 = fmul fast float %1713, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1716
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1716
  %1732 = fmul fast float %1721, %1721
  %1733 = fmul fast float %1726, %1726
  %1734 = fmul fast float %1731, %1731
  br label %1751

; <label>:1735                                    ; preds = %1698
  %1736 = fmul fast float %288, %288
  %1737 = fmul fast float %292, %292
  %1738 = fmul fast float %296, %296
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fmul fast float %1587, %1739
  %1743 = fmul fast float %1587, %1740
  %1744 = fmul fast float %1587, %1741
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  br label %1751

; <label>:1751                                    ; preds = %1735, %1701, %1592, %1548
  %1752 = phi float [ %1697, %1592 ], [ %1573, %1701 ], [ %1573, %1735 ], [ 0x3FA23C0BE0000000, %1548 ]
  %1753 = phi float [ %1689, %1592 ], [ %1732, %1701 ], [ %1748, %1735 ], [ 1.000000e+00, %1548 ]
  %1754 = phi float [ %1690, %1592 ], [ %1733, %1701 ], [ %1749, %1735 ], [ 1.000000e+00, %1548 ]
  %1755 = phi float [ %1691, %1592 ], [ %1734, %1701 ], [ %1750, %1735 ], [ 1.000000e+00, %1548 ]
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1758 = and i32 %1757, 1
  %1759 = icmp ne i32 %1758, 0
  %1760 = add i32 %54, 356
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp ne i32 %1763, 0
  %1765 = and i1 %1759, %1764
  %1766 = select i1 %1765, float 1.000000e+00, float %1753
  %1767 = select i1 %1765, float 0x3FD3333340000000, float %1754
  %1768 = select i1 %1765, float 0x3FD3333340000000, float %1755
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 32
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1845, label %1773

; <label>:1773                                    ; preds = %1751
  %1774 = add i32 %54, 108
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %54, 380
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %1779, 0
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1781, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = and i32 %1776, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1776, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1776, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101000000000
  %1796 = fmul fast float %1783, %1788
  %1797 = fadd fast float %1796, %1791
  %1798 = fmul fast float %1797, 0x3F70101000000000
  %1799 = fadd fast float %1784, -5.000000e-01
  %1800 = fadd fast float %1786, -5.000000e-01
  %1801 = fmul fast float %1799, %1795
  %1802 = fmul fast float %1800, %1795
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fmul fast float %1803, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fadd fast float %1807, -1.000000e+00
  %1809 = fadd fast float %1806, %1808
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = fsub fast float %1806, %1808
  %1812 = fmul fast float %1811, 5.000000e-01
  %1813 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1816 = fsub fast float %1814, %1815
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1812, float %1816, float %1810, float %1812, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 25, float %1817)  ; Rsqrt(value)
  %1819 = fmul fast float %1810, %1818
  %1820 = fmul fast float %1812, %1818
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 67108864
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1841, label %1825

; <label>:1825                                    ; preds = %1773
  %1826 = add i32 %54, 296
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fsub fast float %1798, %1836
  %1838 = fmul fast float %1837, %1830
  %1839 = fadd fast float %1838, %1834
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  br label %1841

; <label>:1841                                    ; preds = %1825, %1773
  %1842 = phi float [ %1840, %1825 ], [ %1798, %1773 ]
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1262, float %1263)  ; Dot2(ax,ay,bx,by)
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1264, float %1265)  ; Dot2(ax,ay,bx,by)
  br label %1845

; <label>:1845                                    ; preds = %1841, %1751
  %1846 = phi float [ %1842, %1841 ], [ 0x3FD6666660000000, %1751 ]
  %1847 = phi float [ %1843, %1841 ], [ 0.000000e+00, %1751 ]
  %1848 = phi float [ %1844, %1841 ], [ 0.000000e+00, %1751 ]
  %1849 = phi float [ %1785, %1841 ], [ 1.000000e+00, %1751 ]
  %1850 = add i32 %54, 176
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = lshr i32 %1852, 22
  %1854 = shl nuw nsw i32 %1853, 5
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 64
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1893, label %1860

; <label>:1860                                    ; preds = %1845
  %1861 = add i32 %54, 396
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1863, 0
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 131072
  %1869 = icmp eq i32 %1868, 0
  %1870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1865, %dx.types.Handle %96, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = fmul fast float %1871, %276
  %1875 = fmul fast float %1872, %279
  %1876 = fmul fast float %1873, %282
  br i1 %1869, label %1883, label %1877

; <label>:1877                                    ; preds = %1860
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fmul fast float %1879, %1874
  %1881 = fmul fast float %1879, %1875
  %1882 = fmul fast float %1879, %1876
  br label %1883

; <label>:1883                                    ; preds = %1877, %1860
  %1884 = phi float [ %1880, %1877 ], [ %1874, %1860 ]
  %1885 = phi float [ %1881, %1877 ], [ %1875, %1860 ]
  %1886 = phi float [ %1882, %1877 ], [ %1876, %1860 ]
  %1887 = fmul fast float %1884, %1855
  %1888 = select i1 %217, float %1887, float %1884
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = select i1 %217, float 0.000000e+00, float %1884
  %1891 = select i1 %217, float %1889, float %1885
  %1892 = select i1 %217, float 0.000000e+00, float %1886
  br label %1893

; <label>:1893                                    ; preds = %1883, %1845
  %1894 = phi float [ %1890, %1883 ], [ 0.000000e+00, %1845 ]
  %1895 = phi float [ %1891, %1883 ], [ 0.000000e+00, %1845 ]
  %1896 = phi float [ %1892, %1883 ], [ 0.000000e+00, %1845 ]
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 1024
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1931, label %1901

; <label>:1901                                    ; preds = %1893
  %1902 = add i32 %54, 168
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1904, 8
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = lshr i32 %1904, 16
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = fmul fast float %1907, %1907
  %1917 = fmul fast float %1911, %1911
  %1918 = fmul fast float %1915, %1915
  %1919 = add i32 %54, 460
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  br label %1931

; <label>:1931                                    ; preds = %1901, %1893
  %1932 = phi float [ %1928, %1901 ], [ 0.000000e+00, %1893 ]
  %1933 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1893 ]
  %1934 = phi float [ %1930, %1901 ], [ 0.000000e+00, %1893 ]
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fmul fast float %1938, 0xBFE62E4300000000
  %1947 = fmul fast float %1946, %1945
  %1948 = fmul fast float %1939, 0xBFE62E4300000000
  %1949 = fmul fast float %1948, %1945
  %1950 = fmul fast float %1940, 0xBFE62E4300000000
  %1951 = fmul fast float %1950, %1945
  %1952 = select i1 %1935, float %1947, float 1.270000e+02
  %1953 = select i1 %1936, float %1949, float 1.270000e+02
  %1954 = select i1 %1937, float %1951, float 1.270000e+02
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 10240
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2003, label %1959

; <label>:1959                                    ; preds = %1931
  %1960 = add i32 %54, 476
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %97, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 3
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 1048576
  %1971 = icmp ne i32 %1970, 0
  %1972 = and i32 %1969, 8192
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1989, label %1974

; <label>:1974                                    ; preds = %1959
  %1975 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1976 = select i1 %1971, float %1975, float %1966
  %1977 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1978 = select i1 %1971, float %1977, float %1966
  %1979 = add i32 %54, 112
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = lshr i32 %1981, 16
  %1983 = and i32 %1982, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F80101020000000
  %1986 = fmul fast float %1985, %1978
  %1987 = fmul fast float %1985, %1966
  %1988 = fmul fast float %1985, %1976
  br label %1989

; <label>:1989                                    ; preds = %1974, %1959
  %1990 = phi float [ %1986, %1974 ], [ 0.000000e+00, %1959 ]
  %1991 = phi float [ %1987, %1974 ], [ 0.000000e+00, %1959 ]
  %1992 = phi float [ %1988, %1974 ], [ 0.000000e+00, %1959 ]
  %1993 = and i32 %1969, 2048
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2003, label %1995

; <label>:1995                                    ; preds = %1989
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = shl i32 %1997, 4
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = fmul fast float %2000, %1967
  %2002 = call float @dx.op.binary.f32(i32 35, float %2001, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2003

; <label>:2003                                    ; preds = %1995, %1989, %1931
  %2004 = phi float [ %1990, %1995 ], [ %1990, %1989 ], [ 0.000000e+00, %1931 ]
  %2005 = phi float [ %1991, %1995 ], [ %1991, %1989 ], [ 0.000000e+00, %1931 ]
  %2006 = phi float [ %1992, %1995 ], [ %1992, %1989 ], [ 0.000000e+00, %1931 ]
  %2007 = phi float [ %2002, %1995 ], [ 0x3F70101020000000, %1989 ], [ 0x3F70101020000000, %1931 ]
  %2008 = add i32 %54, 112
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = lshr i32 %2010, 8
  %2014 = and i32 %2013, 255
  %2015 = uitofp i32 %2014 to float
  %2016 = call float @dx.op.dot3.f32(i32 55, float %1766, float %1767, float %1768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fmul fast float %2015, %2016
  %2018 = fadd fast float %2017, %2012
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  br i1 %1250, label %2021, label %2056

; <label>:2021                                    ; preds = %2003
  %2022 = fmul fast float %2007, 2.000000e+00
  %2023 = fcmp fast olt float %1952, 1.270000e+02
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fmul fast float %1952, 0xBFF7154760000000
  %2027 = fmul fast float %2026, %2022
  %2028 = fmul fast float %1953, 0xBFF7154760000000
  %2029 = fmul fast float %2028, %2022
  %2030 = fmul fast float %1954, 0xBFF7154760000000
  %2031 = fmul fast float %2030, %2022
  %2032 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2033 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2031)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = select i1 %2023, float %2038, float -1.000000e+00
  %2040 = fadd fast float %2036, -1.000000e+00
  %2041 = select i1 %2024, float %2040, float -1.000000e+00
  %2042 = fadd fast float %2037, -1.000000e+00
  %2043 = select i1 %2025, float %2042, float -1.000000e+00
  %2044 = fmul fast float %2039, %1546
  %2045 = fmul fast float %2041, %1546
  %2046 = fmul fast float %2043, %1546
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fmul fast float %2047, %1231
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2047, %1234
  %2054 = fmul fast float %2048, %1235
  %2055 = fmul fast float %2049, %1236
  br label %2056

; <label>:2056                                    ; preds = %2021, %2003
  %2057 = phi float [ %2050, %2021 ], [ %1231, %2003 ]
  %2058 = phi float [ %2051, %2021 ], [ %1232, %2003 ]
  %2059 = phi float [ %2052, %2021 ], [ %1233, %2003 ]
  %2060 = phi float [ %2053, %2021 ], [ %1234, %2003 ]
  %2061 = phi float [ %2054, %2021 ], [ %1235, %2003 ]
  %2062 = phi float [ %2055, %2021 ], [ %1236, %2003 ]
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 3
  %2066 = icmp eq i32 %2065, 3
  br i1 %2066, label %2145, label %2067

; <label>:2067                                    ; preds = %2056
  %2068 = and i32 %2064, 16
  %2069 = icmp ne i32 %2068, 0
  %2070 = select i1 %2069, float %1546, float 0.000000e+00
  %2071 = icmp eq i32 %2065, 0
  br i1 %2071, label %2072, label %2100

; <label>:2072                                    ; preds = %2067
  %2073 = and i32 %2064, 64
  %2074 = icmp ne i32 %2073, 0
  %2075 = select i1 %2074, float %1546, float 0.000000e+00
  %2076 = fsub fast float %1766, %2057
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fmul fast float %2070, %2076
  %2080 = fmul fast float %2070, %2077
  %2081 = fmul fast float %2070, %2078
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fsub fast float %1752, %1243
  %2086 = fmul fast float %2070, %2085
  %2087 = fadd fast float %2086, %1243
  %2088 = fsub fast float %1894, %2060
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fmul fast float %2075, %2088
  %2092 = fmul fast float %2075, %2089
  %2093 = fmul fast float %2075, %2090
  %2094 = fadd fast float %2091, %2060
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fsub fast float %2020, %1248
  %2098 = fmul fast float %2070, %2097
  %2099 = fadd fast float %2098, %1248
  br label %2145

; <label>:2100                                    ; preds = %2067
  %2101 = icmp eq i32 %2065, 1
  br i1 %2101, label %2102, label %2115

; <label>:2102                                    ; preds = %2100
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fmul fast float %2070, %2103
  %2107 = fmul fast float %2070, %2104
  %2108 = fmul fast float %2070, %2105
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  br label %2145

; <label>:2115                                    ; preds = %2100
  %2116 = icmp eq i32 %2065, 2
  br i1 %2116, label %2117, label %2145

; <label>:2117                                    ; preds = %2115
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fmul fast float %2121, %2070
  %2125 = fmul fast float %2122, %2070
  %2126 = fmul fast float %2123, %2070
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fmul fast float %2127, 2.000000e+00
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %2131, %2057
  %2133 = fadd fast float %2132, %2130
  %2134 = fmul fast float %2133, %2057
  %2135 = fmul fast float %2128, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2058
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2058
  %2140 = fmul fast float %2129, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2059
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2059
  br label %2145

; <label>:2145                                    ; preds = %2117, %2115, %2102, %2072, %2056
  %2146 = phi float [ %2057, %2056 ], [ %2134, %2117 ], [ %2057, %2115 ], [ %2112, %2102 ], [ %2082, %2072 ]
  %2147 = phi float [ %2058, %2056 ], [ %2139, %2117 ], [ %2058, %2115 ], [ %2113, %2102 ], [ %2083, %2072 ]
  %2148 = phi float [ %2059, %2056 ], [ %2144, %2117 ], [ %2059, %2115 ], [ %2114, %2102 ], [ %2084, %2072 ]
  %2149 = phi float [ %2060, %2056 ], [ %2060, %2117 ], [ %2060, %2115 ], [ %2060, %2102 ], [ %2094, %2072 ]
  %2150 = phi float [ %2061, %2056 ], [ %2061, %2117 ], [ %2061, %2115 ], [ %2061, %2102 ], [ %2095, %2072 ]
  %2151 = phi float [ %2062, %2056 ], [ %2062, %2117 ], [ %2062, %2115 ], [ %2062, %2102 ], [ %2096, %2072 ]
  %2152 = phi float [ %1243, %2056 ], [ %1243, %2117 ], [ %1243, %2115 ], [ %1243, %2102 ], [ %2087, %2072 ]
  %2153 = phi float [ %1248, %2056 ], [ %1248, %2117 ], [ %1248, %2115 ], [ %1248, %2102 ], [ %2099, %2072 ]
  %2154 = and i32 %2064, 12
  %2155 = icmp eq i32 %2154, 12
  br i1 %2155, label %2286, label %2156

; <label>:2156                                    ; preds = %2145
  %2157 = and i32 %2064, 2097184
  %2158 = icmp eq i32 %2157, 2097184
  %2159 = select i1 %2158, float %1546, float 0.000000e+00
  %2160 = and i32 %2064, 4194336
  %2161 = icmp eq i32 %2160, 4194336
  %2162 = select i1 %2161, float %1546, float 0.000000e+00
  %2163 = and i32 %2064, 8388640
  %2164 = icmp eq i32 %2163, 8388640
  %2165 = select i1 %2164, float %1546, float 0.000000e+00
  %2166 = and i32 %2064, 1024
  %2167 = icmp ne i32 %2166, 0
  %2168 = select i1 %2167, float %1546, float 0.000000e+00
  %2169 = and i32 %2064, 2048
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %1546, float 0.000000e+00
  %2172 = and i32 %2064, 8192
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1546, float 0.000000e+00
  %2175 = icmp eq i32 %2154, 0
  br i1 %2175, label %2176, label %2210

; <label>:2176                                    ; preds = %2156
  %2177 = fsub fast float %1847, %1229
  %2178 = fsub fast float %1848, %1230
  %2179 = fmul fast float %2159, %2177
  %2180 = fmul fast float %2159, %2178
  %2181 = fadd fast float %2179, %1229
  %2182 = fadd fast float %2180, %1230
  %2183 = fsub fast float %1849, %1246
  %2184 = fmul fast float %2162, %2183
  %2185 = fadd fast float %2184, %1246
  %2186 = fsub fast float %1846, %1245
  %2187 = fmul fast float %2165, %2186
  %2188 = fadd fast float %2187, %1245
  %2189 = fsub fast float %1952, %1240
  %2190 = fsub fast float %1953, %1241
  %2191 = fsub fast float %1954, %1242
  %2192 = fmul fast float %2168, %2189
  %2193 = fmul fast float %2168, %2190
  %2194 = fmul fast float %2168, %2191
  %2195 = fadd fast float %2192, %1240
  %2196 = fadd fast float %2193, %1241
  %2197 = fadd fast float %2194, %1242
  %2198 = fsub fast float %2007, %1247
  %2199 = fmul fast float %2171, %2198
  %2200 = fadd fast float %2199, %1247
  %2201 = fsub fast float %2004, %1237
  %2202 = fsub fast float %2005, %1238
  %2203 = fsub fast float %2006, %1239
  %2204 = fmul fast float %2174, %2201
  %2205 = fmul fast float %2174, %2202
  %2206 = fmul fast float %2174, %2203
  %2207 = fadd fast float %2204, %1237
  %2208 = fadd fast float %2205, %1238
  %2209 = fadd fast float %2206, %1239
  br label %2286

; <label>:2210                                    ; preds = %2156
  %2211 = icmp eq i32 %2154, 4
  br i1 %2211, label %2212, label %2258

; <label>:2212                                    ; preds = %2210
  %2213 = fmul fast float %2159, %1847
  %2214 = fmul fast float %2159, %1848
  %2215 = fadd fast float %2213, %1229
  %2216 = fadd fast float %2214, %1230
  %2217 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2218 = fsub fast float %2217, %1246
  %2219 = fmul fast float %2218, %2162
  %2220 = fadd fast float %2219, %1246
  %2221 = fadd fast float %1846, %1245
  %2222 = fmul fast float %2221, 0x3FF337FAE0000000
  %2223 = fmul fast float %1245, %1245
  %2224 = fmul fast float %1846, %1846
  %2225 = fadd fast float %2224, %2223
  %2226 = fmul fast float %2225, 0x3FE5152B00000000
  %2227 = fmul fast float %1245, 0xBFCC1F85E0000000
  %2228 = fmul fast float %2227, %1846
  %2229 = fadd fast float %2228, 0xBFE1363700000000
  %2230 = fadd fast float %2229, %2222
  %2231 = fsub fast float %2230, %2226
  %2232 = fmul fast float %2221, 0x3FBA6F0D00000000
  %2233 = fmul fast float %2225, 0x3FD0432880000000
  %2234 = fmul fast float %1245, 0xBFEF110800000000
  %2235 = fmul fast float %2234, %1846
  %2236 = fadd fast float %2235, 1.000000e+00
  %2237 = fsub fast float %2236, %2232
  %2238 = fadd fast float %2237, %2233
  %2239 = fdiv fast float %2231, %2238
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float %2240, %1245
  %2242 = fmul fast float %2241, %2165
  %2243 = fadd fast float %2242, %1245
  %2244 = fmul fast float %2168, %1952
  %2245 = fmul fast float %2168, %1953
  %2246 = fmul fast float %2168, %1954
  %2247 = fadd fast float %2244, %1240
  %2248 = fadd fast float %2245, %1241
  %2249 = fadd fast float %2246, %1242
  %2250 = fmul fast float %2171, %2007
  %2251 = fadd fast float %2250, %1247
  %2252 = fmul fast float %2174, %2004
  %2253 = fmul fast float %2174, %2005
  %2254 = fmul fast float %2174, %2006
  %2255 = fadd fast float %2252, %1237
  %2256 = fadd fast float %2253, %1238
  %2257 = fadd fast float %2254, %1239
  br label %2286

; <label>:2258                                    ; preds = %2210
  %2259 = icmp eq i32 %2154, 8
  br i1 %2259, label %2260, label %2286

; <label>:2260                                    ; preds = %2258
  %2261 = fmul fast float %2159, %1847
  %2262 = fmul fast float %2159, %1848
  %2263 = fadd fast float %2261, %1229
  %2264 = fadd fast float %2262, %1230
  %2265 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2266 = fsub fast float %2265, %1246
  %2267 = fmul fast float %2266, %2162
  %2268 = fadd fast float %2267, %1246
  %2269 = fsub fast float %1846, %1245
  %2270 = fmul fast float %2165, %2269
  %2271 = fadd fast float %2270, %1245
  %2272 = fmul fast float %2168, %1952
  %2273 = fmul fast float %2168, %1953
  %2274 = fmul fast float %2168, %1954
  %2275 = fadd fast float %2272, %1240
  %2276 = fadd fast float %2273, %1241
  %2277 = fadd fast float %2274, %1242
  %2278 = fmul fast float %2171, %2007
  %2279 = fadd fast float %2278, %1247
  %2280 = fmul fast float %2174, %2004
  %2281 = fmul fast float %2174, %2005
  %2282 = fmul fast float %2174, %2006
  %2283 = fadd fast float %2280, %1237
  %2284 = fadd fast float %2281, %1238
  %2285 = fadd fast float %2282, %1239
  br label %2286

; <label>:2286                                    ; preds = %2260, %2258, %2212, %2176, %2145, %1545, %1249, %1228
  %2287 = phi float [ %1229, %2145 ], [ %1229, %1545 ], [ %1229, %1228 ], [ %2263, %2260 ], [ %1229, %2258 ], [ %2215, %2212 ], [ %2181, %2176 ], [ %1229, %1249 ]
  %2288 = phi float [ %1230, %2145 ], [ %1230, %1545 ], [ %1230, %1228 ], [ %2264, %2260 ], [ %1230, %2258 ], [ %2216, %2212 ], [ %2182, %2176 ], [ %1230, %1249 ]
  %2289 = phi float [ %2146, %2145 ], [ %1231, %1545 ], [ %1231, %1228 ], [ %2146, %2260 ], [ %2146, %2258 ], [ %2146, %2212 ], [ %2146, %2176 ], [ %1231, %1249 ]
  %2290 = phi float [ %2147, %2145 ], [ %1232, %1545 ], [ %1232, %1228 ], [ %2147, %2260 ], [ %2147, %2258 ], [ %2147, %2212 ], [ %2147, %2176 ], [ %1232, %1249 ]
  %2291 = phi float [ %2148, %2145 ], [ %1233, %1545 ], [ %1233, %1228 ], [ %2148, %2260 ], [ %2148, %2258 ], [ %2148, %2212 ], [ %2148, %2176 ], [ %1233, %1249 ]
  %2292 = phi float [ %2149, %2145 ], [ %1234, %1545 ], [ %1234, %1228 ], [ %2149, %2260 ], [ %2149, %2258 ], [ %2149, %2212 ], [ %2149, %2176 ], [ %1234, %1249 ]
  %2293 = phi float [ %2150, %2145 ], [ %1235, %1545 ], [ %1235, %1228 ], [ %2150, %2260 ], [ %2150, %2258 ], [ %2150, %2212 ], [ %2150, %2176 ], [ %1235, %1249 ]
  %2294 = phi float [ %2151, %2145 ], [ %1236, %1545 ], [ %1236, %1228 ], [ %2151, %2260 ], [ %2151, %2258 ], [ %2151, %2212 ], [ %2151, %2176 ], [ %1236, %1249 ]
  %2295 = phi float [ %1237, %2145 ], [ %1237, %1545 ], [ %1237, %1228 ], [ %2283, %2260 ], [ %1237, %2258 ], [ %2255, %2212 ], [ %2207, %2176 ], [ %1237, %1249 ]
  %2296 = phi float [ %1238, %2145 ], [ %1238, %1545 ], [ %1238, %1228 ], [ %2284, %2260 ], [ %1238, %2258 ], [ %2256, %2212 ], [ %2208, %2176 ], [ %1238, %1249 ]
  %2297 = phi float [ %1239, %2145 ], [ %1239, %1545 ], [ %1239, %1228 ], [ %2285, %2260 ], [ %1239, %2258 ], [ %2257, %2212 ], [ %2209, %2176 ], [ %1239, %1249 ]
  %2298 = phi float [ %1240, %2145 ], [ %1240, %1545 ], [ %1240, %1228 ], [ %2275, %2260 ], [ %1240, %2258 ], [ %2247, %2212 ], [ %2195, %2176 ], [ %1240, %1249 ]
  %2299 = phi float [ %1241, %2145 ], [ %1241, %1545 ], [ %1241, %1228 ], [ %2276, %2260 ], [ %1241, %2258 ], [ %2248, %2212 ], [ %2196, %2176 ], [ %1241, %1249 ]
  %2300 = phi float [ %1242, %2145 ], [ %1242, %1545 ], [ %1242, %1228 ], [ %2277, %2260 ], [ %1242, %2258 ], [ %2249, %2212 ], [ %2197, %2176 ], [ %1242, %1249 ]
  %2301 = phi float [ %2152, %2145 ], [ %1243, %1545 ], [ %1243, %1228 ], [ %2152, %2260 ], [ %2152, %2258 ], [ %2152, %2212 ], [ %2152, %2176 ], [ %1243, %1249 ]
  %2302 = phi float [ %1245, %2145 ], [ %1245, %1545 ], [ %1245, %1228 ], [ %2271, %2260 ], [ %1245, %2258 ], [ %2243, %2212 ], [ %2188, %2176 ], [ %1245, %1249 ]
  %2303 = phi float [ %1246, %2145 ], [ %1246, %1545 ], [ %1246, %1228 ], [ %2268, %2260 ], [ %1246, %2258 ], [ %2220, %2212 ], [ %2185, %2176 ], [ %1246, %1249 ]
  %2304 = phi float [ %1247, %2145 ], [ %1247, %1545 ], [ %1247, %1228 ], [ %2279, %2260 ], [ %1247, %2258 ], [ %2251, %2212 ], [ %2200, %2176 ], [ %1247, %1249 ]
  %2305 = phi float [ %2153, %2145 ], [ %1248, %1545 ], [ %1248, %1228 ], [ %2153, %2260 ], [ %2153, %2258 ], [ %2153, %2212 ], [ %2153, %2176 ], [ %1248, %1249 ]
  br i1 %403, label %3343, label %2306

; <label>:2306                                    ; preds = %2286
  %2307 = icmp ult i32 %459, 3
  %2308 = add i32 %54, 56
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %54, 60
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = or i32 %2313, %2310
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %3343, label %2316

; <label>:2316                                    ; preds = %2306
  %2317 = and i32 %2310, 262144
  %2318 = icmp ne i32 %2317, 0
  %2319 = select i1 %2318, float %57, float 1.000000e+00
  %2320 = select i1 %2318, float %58, float 0.000000e+00
  %2321 = select i1 %2318, float %59, float 0.000000e+00
  %2322 = select i1 %2318, float %60, float 1.000000e+00
  %2323 = select i1 %2318, float %61, float %82
  %2324 = select i1 %2318, float %62, float %83
  %2325 = add i32 %54, 316
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 16
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = fmul fast float %2329, 0x3F50624DE0000000
  %2331 = add i32 %54, 120
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 16
  %2335 = and i32 %2334, 255
  %2336 = lshr i32 %2333, 24
  %2337 = add i32 %54, 324
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2339, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = add i32 %54, 64
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = lshr i32 %2346, 22
  %2348 = shl nuw nsw i32 %2347, 5
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = shl i32 %2346, 4
  %2351 = and i32 %2350, 32752
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = lshr i32 %2346, 7
  %2354 = and i32 %2353, 32752
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2358 = fmul fast float %2357, 1.000000e+03
  %2359 = fmul fast float %353, %2358
  %2360 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2361 = fadd fast float %2360, %343
  %2362 = fmul fast float %354, %2358
  %2363 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2364 = fadd fast float %2363, %345
  %2365 = fmul fast float %2330, %2358
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fmul fast float %2366, 0x401921FB60000000
  %2368 = fadd fast float %2367, %2349
  %2369 = call float @dx.op.unary.f32(i32 13, float %2368)  ; Sin(value)
  %2370 = call float @dx.op.unary.f32(i32 12, float %2368)  ; Cos(value)
  %2371 = fsub fast float -0.000000e+00, %2369
  %2372 = fadd fast float %2323, -5.000000e-01
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fmul fast float %2341, %2372
  %2375 = fmul fast float %2343, %2373
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fmul fast float %2352, %2376
  %2379 = fmul fast float %2355, %2377
  %2380 = fmul fast float %2370, %2378
  %2381 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2379, float %2380)  ; FMad(a,b,c)
  %2382 = fmul fast float %2369, %2378
  %2383 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2379, float %2382)  ; FMad(a,b,c)
  %2384 = fadd fast float %2361, %2381
  %2385 = fadd fast float %2364, %2383
  %2386 = icmp ugt i32 %2335, 1
  %2387 = icmp ugt i32 %2333, 33554431
  %2388 = or i1 %2387, %2386
  br i1 %2388, label %2389, label %2414

; <label>:2389                                    ; preds = %2316
  %2390 = add i32 %54, 260
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 16
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = fmul fast float %2357, %2394
  %2396 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2397 = mul nuw nsw i32 %2335, %2336
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2396, %2398
  %2400 = call float @dx.op.unary.f32(i32 27, float %2399)  ; Round_ni(value)
  %2401 = fptoui float %2400 to i32
  %2402 = urem i32 %2401, %2335
  %2403 = udiv i32 %2401, %2336
  %2404 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = uitofp i32 %2402 to float
  %2407 = uitofp i32 %2403 to float
  %2408 = fadd fast float %2404, %2406
  %2409 = fadd fast float %2405, %2407
  %2410 = uitofp i32 %2335 to float
  %2411 = uitofp i32 %2336 to float
  %2412 = fdiv fast float %2408, %2410
  %2413 = fdiv fast float %2409, %2411
  br label %2414

; <label>:2414                                    ; preds = %2389, %2316
  %2415 = phi float [ %2412, %2389 ], [ %2384, %2316 ]
  %2416 = phi float [ %2413, %2389 ], [ %2385, %2316 ]
  %2417 = and i32 %2310, 16777216
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2528, label %2419

; <label>:2419                                    ; preds = %2414
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.CBufRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.CBufRet.f32 %2420, 2
  %2424 = fadd fast float %2421, %155
  %2425 = fadd fast float %2422, %156
  %2426 = fadd fast float %2423, %157
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = icmp eq i32 %55, 65535
  br i1 %2430, label %2525, label %2431

; <label>:2431                                    ; preds = %2419
  %2432 = lshr i32 %55, 1
  %2433 = shl i32 %2432, 2
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %55, 1
  %2437 = icmp ne i32 %2436, 0
  %2438 = lshr i32 %2435, 16
  %2439 = and i32 %2435, 65535
  %2440 = select i1 %2437, i32 %2438, i32 %2439
  %2441 = icmp eq i32 %2440, 65535
  br i1 %2441, label %2521, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = mul nuw nsw i32 %2440, 40
  %2444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = add nuw nsw i32 %2443, 12
  %2449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = add nuw nsw i32 %2443, 24
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2443, 36
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = fsub fast float %2424, %2445
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fmul fast float %2460, %2461
  %2465 = fmul fast float %2460, %2462
  %2466 = fmul fast float %2460, %2463
  %2467 = call float @dx.op.unary.f32(i32 27, float %2464)  ; Round_ni(value)
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, %2450
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = shl i32 %55, 2
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %2478, 0
  %2480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2480, %dx.types.Handle %49, float %2481, float %2482, float %2483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = fmul fast float %2485, 1.023000e+03
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = fsub fast float %2464, %2467
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fmul fast float %2497, 7.500000e-01
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fadd fast float %2467, 1.250000e-01
  %2504 = fadd fast float %2503, %2500
  %2505 = fadd fast float %2504, %2494
  %2506 = fadd fast float %2468, 1.250000e-01
  %2507 = fadd fast float %2506, %2501
  %2508 = fadd fast float %2507, %2495
  %2509 = fadd fast float %2469, 1.250000e-01
  %2510 = fadd fast float %2509, %2502
  %2511 = fadd fast float %2510, %2496
  %2512 = fmul fast float %2505, %2455
  %2513 = fmul fast float %2508, %2456
  %2514 = fmul fast float %2511, %2457
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = add i32 %2516, 0
  %2518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2518, %dx.types.Handle %47, float %2512, float %2513, float %2514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  br label %2521

; <label>:2521                                    ; preds = %2442, %2431
  %2522 = phi float [ %2520, %2442 ], [ -1.000000e+00, %2431 ]
  %2523 = fadd fast float %2522, %2429
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  br label %2525

; <label>:2525                                    ; preds = %2521, %2419
  %2526 = phi float [ %2524, %2521 ], [ %2429, %2419 ]
  %2527 = fmul fast float %2526, %455
  br label %2528

; <label>:2528                                    ; preds = %2525, %2414
  %2529 = phi float [ %2527, %2525 ], [ %455, %2414 ]
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 256
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2580, label %2534

; <label>:2534                                    ; preds = %2528
  %2535 = add i32 %54, 432
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2539, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = add i32 %54, 132
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = shl i32 %2544, 4
  %2546 = and i32 %2545, 32752
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = lshr i32 %2544, 7
  %2549 = and i32 %2548, 32752
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fsub fast float 1.000000e+00, %2529
  %2552 = call float @dx.op.binary.f32(i32 35, float %2551, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2553 = bitcast float %2529 to i32
  %2554 = sitofp i32 %2553 to float
  %2555 = fadd fast float %2554, 0xC1CFBF8940000000
  %2556 = fmul fast float %2550, %2555
  %2557 = fadd fast float %2556, 0x41CFBF8940000000
  %2558 = fptosi float %2557 to i32
  %2559 = bitcast i32 %2558 to float
  %2560 = bitcast float %2552 to i32
  %2561 = sitofp i32 %2560 to float
  %2562 = fadd fast float %2561, 0xC1CFBF8940000000
  %2563 = fmul fast float %2562, %2550
  %2564 = fadd fast float %2563, 0x41CFBF8940000000
  %2565 = fptosi float %2564 to i32
  %2566 = bitcast i32 %2565 to float
  %2567 = fmul fast float %2559, %2547
  %2568 = fmul fast float %2566, %2547
  %2569 = fsub fast float %2552, %2567
  %2570 = fadd fast float %2568, %2552
  %2571 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = fsub fast float %2541, %2571
  %2574 = fsub fast float %2572, %2571
  %2575 = bitcast float %2574 to i32
  %2576 = sub nsw i32 2129859010, %2575
  %2577 = bitcast i32 %2576 to float
  %2578 = fmul fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2534, %2528
  %2581 = phi float [ %2579, %2534 ], [ %2529, %2528 ]
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 128
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2602, label %2586

; <label>:2586                                    ; preds = %2580
  %2587 = add i32 %54, 416
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 524288
  %2597 = icmp ne i32 %2596, 0
  %2598 = fcmp fast ogt float %2593, 0x3FE0101020000000
  %2599 = select i1 %2598, float 1.000000e+00, float 0.000000e+00
  %2600 = select i1 %2597, float %2599, float %2593
  %2601 = fmul fast float %2600, %2581
  br label %2602

; <label>:2602                                    ; preds = %2586, %2580
  %2603 = phi float [ %2601, %2586 ], [ %2581, %2580 ]
  %2604 = fcmp fast ult float %2603, 0x3F70101020000000
  br i1 %2604, label %3343, label %2605

; <label>:2605                                    ; preds = %2602
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 16
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2808, label %2610

; <label>:2610                                    ; preds = %2605
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %54, 368
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2617, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = extractvalue %dx.types.ResRet.f32 %2618, 3
  %2623 = and i32 %2612, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = lshr i32 %2612, 8
  %2626 = and i32 %2625, 255
  %2627 = uitofp i32 %2626 to float
  %2628 = fmul fast float %2622, %2624
  %2629 = fadd fast float %2628, %2627
  %2630 = fmul fast float %2629, 0x3F70101000000000
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 512
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2643, label %2635

; <label>:2635                                    ; preds = %2610
  %2636 = add i32 %54, 448
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  br label %2643

; <label>:2643                                    ; preds = %2635, %2610
  %2644 = phi float [ %2642, %2635 ], [ 1.000000e+00, %2610 ]
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 33554432
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2755, label %2649

; <label>:2649                                    ; preds = %2643
  %2650 = add i32 %54, 256
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 65535
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = lshr i32 %2652, 16
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = add i32 %54, 260
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 65535
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 24
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = and i32 %2663, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2663, 8
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = lshr i32 %2663, 16
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = add i32 %54, 252
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 24
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = and i32 %2680, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = lshr i32 %2680, 8
  %2688 = and i32 %2687, 255
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = lshr i32 %2680, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = bitcast float %2619 to i32
  %2696 = ashr i32 %2695, 1
  %2697 = sub nsw i32 1597463174, %2696
  %2698 = bitcast i32 %2697 to float
  %2699 = fmul fast float %2619, 5.000000e-01
  %2700 = fmul fast float %2698, %2698
  %2701 = fmul fast float %2700, %2699
  %2702 = fsub fast float 1.500000e+00, %2701
  %2703 = fmul fast float %2698, %2619
  %2704 = fmul fast float %2703, %2702
  %2705 = bitcast float %2620 to i32
  %2706 = ashr i32 %2705, 1
  %2707 = sub nsw i32 1597463174, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2620, 5.000000e-01
  %2710 = fmul fast float %2708, %2708
  %2711 = fmul fast float %2710, %2709
  %2712 = fsub fast float 1.500000e+00, %2711
  %2713 = fmul fast float %2708, %2620
  %2714 = fmul fast float %2713, %2712
  %2715 = bitcast float %2621 to i32
  %2716 = ashr i32 %2715, 1
  %2717 = sub nsw i32 1597463174, %2716
  %2718 = bitcast i32 %2717 to float
  %2719 = fmul fast float %2621, 5.000000e-01
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float 1.500000e+00, %2721
  %2723 = fmul fast float %2718, %2621
  %2724 = fmul fast float %2723, %2722
  %2725 = fsub fast float %2704, %2686
  %2726 = fsub fast float %2714, %2690
  %2727 = fsub fast float %2724, %2694
  %2728 = fmul fast float %2725, %2654
  %2729 = fmul fast float %2726, %2656
  %2730 = fmul fast float %2727, %2661
  %2731 = fadd fast float %2728, %2669
  %2732 = fadd fast float %2729, %2673
  %2733 = fadd fast float %2730, %2677
  %2734 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fsub fast float %2737, %2619
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fmul fast float %2740, %2644
  %2744 = fmul fast float %2741, %2644
  %2745 = fmul fast float %2742, %2644
  %2746 = fadd fast float %2743, %2619
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2666, %2630
  %2750 = fsub fast float %2749, %2683
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = fsub fast float %2751, %2630
  %2753 = fmul fast float %2752, %2644
  %2754 = fadd fast float %2753, %2630
  br label %2808

; <label>:2755                                    ; preds = %2643
  %2756 = and i32 %2646, 134217728
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2792, label %2758

; <label>:2758                                    ; preds = %2755
  %2759 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fmul fast float %2762, %2644
  %2766 = fmul fast float %2763, %2644
  %2767 = fmul fast float %2764, %2644
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = fmul fast float %2768, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2771
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2771
  %2779 = fmul fast float %2769, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2772
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2772
  %2784 = fmul fast float %2770, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2773
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2773
  %2789 = fmul fast float %2778, %2778
  %2790 = fmul fast float %2783, %2783
  %2791 = fmul fast float %2788, %2788
  br label %2808

; <label>:2792                                    ; preds = %2755
  %2793 = fmul fast float %330, %330
  %2794 = fmul fast float %334, %334
  %2795 = fmul fast float %338, %338
  %2796 = fadd fast float %2793, -1.000000e+00
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fmul fast float %2644, %2796
  %2800 = fmul fast float %2644, %2797
  %2801 = fmul fast float %2644, %2798
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fmul fast float %2802, %2619
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  br label %2808

; <label>:2808                                    ; preds = %2792, %2758, %2649, %2605
  %2809 = phi float [ %2754, %2649 ], [ %2630, %2758 ], [ %2630, %2792 ], [ 0x3FA23C0BE0000000, %2605 ]
  %2810 = phi float [ %2746, %2649 ], [ %2789, %2758 ], [ %2805, %2792 ], [ 1.000000e+00, %2605 ]
  %2811 = phi float [ %2747, %2649 ], [ %2790, %2758 ], [ %2806, %2792 ], [ 1.000000e+00, %2605 ]
  %2812 = phi float [ %2748, %2649 ], [ %2791, %2758 ], [ %2807, %2792 ], [ 1.000000e+00, %2605 ]
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 1
  %2815 = and i32 %2814, 1
  %2816 = icmp ne i32 %2815, 0
  %2817 = add i32 %54, 356
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp ne i32 %2820, 0
  %2822 = and i1 %2816, %2821
  %2823 = select i1 %2822, float 1.000000e+00, float %2810
  %2824 = select i1 %2822, float 0x3FD3333340000000, float %2811
  %2825 = select i1 %2822, float 0x3FD3333340000000, float %2812
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 32
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2902, label %2830

; <label>:2830                                    ; preds = %2808
  %2831 = add i32 %54, 124
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %54, 384
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.ResRet.f32 %2839, 3
  %2844 = and i32 %2833, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = lshr i32 %2833, 8
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2833, 16
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2851, 0x3F70101000000000
  %2853 = fmul fast float %2840, %2845
  %2854 = fadd fast float %2853, %2848
  %2855 = fmul fast float %2854, 0x3F70101000000000
  %2856 = fadd fast float %2841, -5.000000e-01
  %2857 = fadd fast float %2843, -5.000000e-01
  %2858 = fmul fast float %2856, %2852
  %2859 = fmul fast float %2857, %2852
  %2860 = fadd fast float %2858, 5.000000e-01
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fmul fast float %2860, 2.000000e+00
  %2863 = fadd fast float %2862, -1.000000e+00
  %2864 = fmul fast float %2861, 2.000000e+00
  %2865 = fadd fast float %2864, -1.000000e+00
  %2866 = fadd fast float %2863, %2865
  %2867 = fmul fast float %2866, 5.000000e-01
  %2868 = fsub fast float %2863, %2865
  %2869 = fmul fast float %2868, 5.000000e-01
  %2870 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = call float @dx.op.unary.f32(i32 6, float %2869)  ; FAbs(value)
  %2873 = fsub fast float %2871, %2872
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2869, float %2873, float %2867, float %2869, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = call float @dx.op.unary.f32(i32 25, float %2874)  ; Rsqrt(value)
  %2876 = fmul fast float %2867, %2875
  %2877 = fmul fast float %2869, %2875
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 67108864
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2898, label %2882

; <label>:2882                                    ; preds = %2830
  %2883 = add i32 %54, 312
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 65535
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = lshr i32 %2885, 16
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = fsub fast float %2855, %2893
  %2895 = fmul fast float %2894, %2887
  %2896 = fadd fast float %2895, %2891
  %2897 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  br label %2898

; <label>:2898                                    ; preds = %2882, %2830
  %2899 = phi float [ %2897, %2882 ], [ %2855, %2830 ]
  %2900 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2319, float %2320)  ; Dot2(ax,ay,bx,by)
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2321, float %2322)  ; Dot2(ax,ay,bx,by)
  br label %2902

; <label>:2902                                    ; preds = %2898, %2808
  %2903 = phi float [ %2899, %2898 ], [ 0x3FD6666660000000, %2808 ]
  %2904 = phi float [ %2900, %2898 ], [ 0.000000e+00, %2808 ]
  %2905 = phi float [ %2901, %2898 ], [ 0.000000e+00, %2808 ]
  %2906 = phi float [ %2842, %2898 ], [ 1.000000e+00, %2808 ]
  %2907 = add i32 %54, 192
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 22
  %2911 = shl nuw nsw i32 %2910, 5
  %2912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2911)  ; LegacyF16ToF32(value)
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 64
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2950, label %2917

; <label>:2917                                    ; preds = %2902
  %2918 = add i32 %54, 400
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %2920, 0
  %2922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 131072
  %2926 = icmp eq i32 %2925, 0
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2922, %dx.types.Handle %96, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = fmul fast float %2928, %318
  %2932 = fmul fast float %2929, %321
  %2933 = fmul fast float %2930, %324
  br i1 %2926, label %2940, label %2934

; <label>:2934                                    ; preds = %2917
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = fmul fast float %2936, %2931
  %2938 = fmul fast float %2936, %2932
  %2939 = fmul fast float %2936, %2933
  br label %2940

; <label>:2940                                    ; preds = %2934, %2917
  %2941 = phi float [ %2937, %2934 ], [ %2931, %2917 ]
  %2942 = phi float [ %2938, %2934 ], [ %2932, %2917 ]
  %2943 = phi float [ %2939, %2934 ], [ %2933, %2917 ]
  %2944 = fmul fast float %2941, %2912
  %2945 = select i1 %217, float %2944, float %2941
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2942, float %2943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = select i1 %217, float 0.000000e+00, float %2941
  %2948 = select i1 %217, float %2946, float %2942
  %2949 = select i1 %217, float 0.000000e+00, float %2943
  br label %2950

; <label>:2950                                    ; preds = %2940, %2902
  %2951 = phi float [ %2947, %2940 ], [ 0.000000e+00, %2902 ]
  %2952 = phi float [ %2948, %2940 ], [ 0.000000e+00, %2902 ]
  %2953 = phi float [ %2949, %2940 ], [ 0.000000e+00, %2902 ]
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 1024
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2988, label %2958

; <label>:2958                                    ; preds = %2950
  %2959 = add i32 %54, 184
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2961, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2961, 16
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = fmul fast float %2964, %2964
  %2974 = fmul fast float %2968, %2968
  %2975 = fmul fast float %2972, %2972
  %2976 = add i32 %54, 464
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = fmul fast float %2973, %2982
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  br label %2988

; <label>:2988                                    ; preds = %2958, %2950
  %2989 = phi float [ %2985, %2958 ], [ 0.000000e+00, %2950 ]
  %2990 = phi float [ %2986, %2958 ], [ 0.000000e+00, %2950 ]
  %2991 = phi float [ %2987, %2958 ], [ 0.000000e+00, %2950 ]
  %2992 = fcmp fast ogt float %2989, 0.000000e+00
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 7
  %3001 = and i32 %3000, 32752
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = fmul fast float %2995, 0xBFE62E4300000000
  %3004 = fmul fast float %3003, %3002
  %3005 = fmul fast float %2996, 0xBFE62E4300000000
  %3006 = fmul fast float %3005, %3002
  %3007 = fmul fast float %2997, 0xBFE62E4300000000
  %3008 = fmul fast float %3007, %3002
  %3009 = select i1 %2992, float %3004, float 1.270000e+02
  %3010 = select i1 %2993, float %3006, float 1.270000e+02
  %3011 = select i1 %2994, float %3008, float 1.270000e+02
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 10240
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3060, label %3016

; <label>:3016                                    ; preds = %2988
  %3017 = add i32 %54, 480
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %97, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 3
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 1048576
  %3028 = icmp ne i32 %3027, 0
  %3029 = and i32 %3026, 8192
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3046, label %3031

; <label>:3031                                    ; preds = %3016
  %3032 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3033 = select i1 %3028, float %3032, float %3023
  %3034 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3035 = select i1 %3028, float %3034, float %3023
  %3036 = add i32 %54, 128
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = lshr i32 %3038, 16
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F80101020000000
  %3043 = fmul fast float %3042, %3035
  %3044 = fmul fast float %3042, %3023
  %3045 = fmul fast float %3042, %3033
  br label %3046

; <label>:3046                                    ; preds = %3031, %3016
  %3047 = phi float [ %3043, %3031 ], [ 0.000000e+00, %3016 ]
  %3048 = phi float [ %3044, %3031 ], [ 0.000000e+00, %3016 ]
  %3049 = phi float [ %3045, %3031 ], [ 0.000000e+00, %3016 ]
  %3050 = and i32 %3026, 2048
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3060, label %3052

; <label>:3052                                    ; preds = %3046
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = shl i32 %3054, 4
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fmul fast float %3057, %3024
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3060

; <label>:3060                                    ; preds = %3052, %3046, %2988
  %3061 = phi float [ %3047, %3052 ], [ %3047, %3046 ], [ 0.000000e+00, %2988 ]
  %3062 = phi float [ %3048, %3052 ], [ %3048, %3046 ], [ 0.000000e+00, %2988 ]
  %3063 = phi float [ %3049, %3052 ], [ %3049, %3046 ], [ 0.000000e+00, %2988 ]
  %3064 = phi float [ %3059, %3052 ], [ 0x3F70101020000000, %3046 ], [ 0x3F70101020000000, %2988 ]
  %3065 = add i32 %54, 128
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3067, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = fmul fast float %3072, %3073
  %3075 = fadd fast float %3074, %3069
  %3076 = fmul fast float %3075, 0x3F70101020000000
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  br i1 %2307, label %3078, label %3113

; <label>:3078                                    ; preds = %3060
  %3079 = fmul fast float %3064, 2.000000e+00
  %3080 = fcmp fast olt float %3009, 1.270000e+02
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fmul fast float %3009, 0xBFF7154760000000
  %3084 = fmul fast float %3083, %3079
  %3085 = fmul fast float %3010, 0xBFF7154760000000
  %3086 = fmul fast float %3085, %3079
  %3087 = fmul fast float %3011, 0xBFF7154760000000
  %3088 = fmul fast float %3087, %3079
  %3089 = call float @dx.op.unary.f32(i32 21, float %3084)  ; Exp(value)
  %3090 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3088)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = fadd fast float %3092, -1.000000e+00
  %3096 = select i1 %3080, float %3095, float -1.000000e+00
  %3097 = fadd fast float %3093, -1.000000e+00
  %3098 = select i1 %3081, float %3097, float -1.000000e+00
  %3099 = fadd fast float %3094, -1.000000e+00
  %3100 = select i1 %3082, float %3099, float -1.000000e+00
  %3101 = fmul fast float %3096, %2603
  %3102 = fmul fast float %3098, %2603
  %3103 = fmul fast float %3100, %2603
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2289
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3104, %2292
  %3111 = fmul fast float %3105, %2293
  %3112 = fmul fast float %3106, %2294
  br label %3113

; <label>:3113                                    ; preds = %3078, %3060
  %3114 = phi float [ %3107, %3078 ], [ %2289, %3060 ]
  %3115 = phi float [ %3108, %3078 ], [ %2290, %3060 ]
  %3116 = phi float [ %3109, %3078 ], [ %2291, %3060 ]
  %3117 = phi float [ %3110, %3078 ], [ %2292, %3060 ]
  %3118 = phi float [ %3111, %3078 ], [ %2293, %3060 ]
  %3119 = phi float [ %3112, %3078 ], [ %2294, %3060 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 3
  %3123 = icmp eq i32 %3122, 3
  br i1 %3123, label %3202, label %3124

; <label>:3124                                    ; preds = %3113
  %3125 = and i32 %3121, 16
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2603, float 0.000000e+00
  %3128 = icmp eq i32 %3122, 0
  br i1 %3128, label %3129, label %3157

; <label>:3129                                    ; preds = %3124
  %3130 = and i32 %3121, 64
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2603, float 0.000000e+00
  %3133 = fsub fast float %2823, %3114
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fmul fast float %3127, %3133
  %3137 = fmul fast float %3127, %3134
  %3138 = fmul fast float %3127, %3135
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fsub fast float %2809, %2301
  %3143 = fmul fast float %3127, %3142
  %3144 = fadd fast float %3143, %2301
  %3145 = fsub fast float %2951, %3117
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fmul fast float %3132, %3145
  %3149 = fmul fast float %3132, %3146
  %3150 = fmul fast float %3132, %3147
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fsub fast float %3077, %2305
  %3155 = fmul fast float %3127, %3154
  %3156 = fadd fast float %3155, %2305
  br label %3202

; <label>:3157                                    ; preds = %3124
  %3158 = icmp eq i32 %3122, 1
  br i1 %3158, label %3159, label %3172

; <label>:3159                                    ; preds = %3157
  %3160 = fadd fast float %2823, -1.000000e+00
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fmul fast float %3127, %3160
  %3164 = fmul fast float %3127, %3161
  %3165 = fmul fast float %3127, %3162
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  br label %3202

; <label>:3172                                    ; preds = %3157
  %3173 = icmp eq i32 %3122, 2
  br i1 %3173, label %3174, label %3202

; <label>:3174                                    ; preds = %3172
  %3175 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fmul fast float %3178, %3127
  %3182 = fmul fast float %3179, %3127
  %3183 = fmul fast float %3180, %3127
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3114
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3114
  %3192 = fmul fast float %3185, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3115
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3115
  %3197 = fmul fast float %3186, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3116
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3116
  br label %3202

; <label>:3202                                    ; preds = %3174, %3172, %3159, %3129, %3113
  %3203 = phi float [ %3114, %3113 ], [ %3191, %3174 ], [ %3114, %3172 ], [ %3169, %3159 ], [ %3139, %3129 ]
  %3204 = phi float [ %3115, %3113 ], [ %3196, %3174 ], [ %3115, %3172 ], [ %3170, %3159 ], [ %3140, %3129 ]
  %3205 = phi float [ %3116, %3113 ], [ %3201, %3174 ], [ %3116, %3172 ], [ %3171, %3159 ], [ %3141, %3129 ]
  %3206 = phi float [ %3117, %3113 ], [ %3117, %3174 ], [ %3117, %3172 ], [ %3117, %3159 ], [ %3151, %3129 ]
  %3207 = phi float [ %3118, %3113 ], [ %3118, %3174 ], [ %3118, %3172 ], [ %3118, %3159 ], [ %3152, %3129 ]
  %3208 = phi float [ %3119, %3113 ], [ %3119, %3174 ], [ %3119, %3172 ], [ %3119, %3159 ], [ %3153, %3129 ]
  %3209 = phi float [ %2301, %3113 ], [ %2301, %3174 ], [ %2301, %3172 ], [ %2301, %3159 ], [ %3144, %3129 ]
  %3210 = phi float [ %2305, %3113 ], [ %2305, %3174 ], [ %2305, %3172 ], [ %2305, %3159 ], [ %3156, %3129 ]
  %3211 = and i32 %3121, 12
  %3212 = icmp eq i32 %3211, 12
  br i1 %3212, label %3343, label %3213

; <label>:3213                                    ; preds = %3202
  %3214 = and i32 %3121, 2097184
  %3215 = icmp eq i32 %3214, 2097184
  %3216 = select i1 %3215, float %2603, float 0.000000e+00
  %3217 = and i32 %3121, 4194336
  %3218 = icmp eq i32 %3217, 4194336
  %3219 = select i1 %3218, float %2603, float 0.000000e+00
  %3220 = and i32 %3121, 8388640
  %3221 = icmp eq i32 %3220, 8388640
  %3222 = select i1 %3221, float %2603, float 0.000000e+00
  %3223 = and i32 %3121, 1024
  %3224 = icmp ne i32 %3223, 0
  %3225 = select i1 %3224, float %2603, float 0.000000e+00
  %3226 = and i32 %3121, 2048
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2603, float 0.000000e+00
  %3229 = and i32 %3121, 8192
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2603, float 0.000000e+00
  %3232 = icmp eq i32 %3211, 0
  br i1 %3232, label %3233, label %3267

; <label>:3233                                    ; preds = %3213
  %3234 = fsub fast float %2904, %2287
  %3235 = fsub fast float %2905, %2288
  %3236 = fmul fast float %3216, %3234
  %3237 = fmul fast float %3216, %3235
  %3238 = fadd fast float %3236, %2287
  %3239 = fadd fast float %3237, %2288
  %3240 = fsub fast float %2906, %2303
  %3241 = fmul fast float %3219, %3240
  %3242 = fadd fast float %3241, %2303
  %3243 = fsub fast float %2903, %2302
  %3244 = fmul fast float %3222, %3243
  %3245 = fadd fast float %3244, %2302
  %3246 = fsub fast float %3009, %2298
  %3247 = fsub fast float %3010, %2299
  %3248 = fsub fast float %3011, %2300
  %3249 = fmul fast float %3225, %3246
  %3250 = fmul fast float %3225, %3247
  %3251 = fmul fast float %3225, %3248
  %3252 = fadd fast float %3249, %2298
  %3253 = fadd fast float %3250, %2299
  %3254 = fadd fast float %3251, %2300
  %3255 = fsub fast float %3064, %2304
  %3256 = fmul fast float %3228, %3255
  %3257 = fadd fast float %3256, %2304
  %3258 = fsub fast float %3061, %2295
  %3259 = fsub fast float %3062, %2296
  %3260 = fsub fast float %3063, %2297
  %3261 = fmul fast float %3231, %3258
  %3262 = fmul fast float %3231, %3259
  %3263 = fmul fast float %3231, %3260
  %3264 = fadd fast float %3261, %2295
  %3265 = fadd fast float %3262, %2296
  %3266 = fadd fast float %3263, %2297
  br label %3343

; <label>:3267                                    ; preds = %3213
  %3268 = icmp eq i32 %3211, 4
  br i1 %3268, label %3269, label %3315

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3216, %2904
  %3271 = fmul fast float %3216, %2905
  %3272 = fadd fast float %3270, %2287
  %3273 = fadd fast float %3271, %2288
  %3274 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2303
  %3276 = fmul fast float %3275, %3219
  %3277 = fadd fast float %3276, %2303
  %3278 = fadd fast float %2903, %2302
  %3279 = fmul fast float %3278, 0x3FF337FAE0000000
  %3280 = fmul fast float %2302, %2302
  %3281 = fmul fast float %2903, %2903
  %3282 = fadd fast float %3281, %3280
  %3283 = fmul fast float %3282, 0x3FE5152B00000000
  %3284 = fmul fast float %2302, 0xBFCC1F85E0000000
  %3285 = fmul fast float %3284, %2903
  %3286 = fadd fast float %3285, 0xBFE1363700000000
  %3287 = fadd fast float %3286, %3279
  %3288 = fsub fast float %3287, %3283
  %3289 = fmul fast float %3278, 0x3FBA6F0D00000000
  %3290 = fmul fast float %3282, 0x3FD0432880000000
  %3291 = fmul fast float %2302, 0xBFEF110800000000
  %3292 = fmul fast float %3291, %2903
  %3293 = fadd fast float %3292, 1.000000e+00
  %3294 = fsub fast float %3293, %3289
  %3295 = fadd fast float %3294, %3290
  %3296 = fdiv fast float %3288, %3295
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fsub fast float %3297, %2302
  %3299 = fmul fast float %3298, %3222
  %3300 = fadd fast float %3299, %2302
  %3301 = fmul fast float %3225, %3009
  %3302 = fmul fast float %3225, %3010
  %3303 = fmul fast float %3225, %3011
  %3304 = fadd fast float %3301, %2298
  %3305 = fadd fast float %3302, %2299
  %3306 = fadd fast float %3303, %2300
  %3307 = fmul fast float %3228, %3064
  %3308 = fadd fast float %3307, %2304
  %3309 = fmul fast float %3231, %3061
  %3310 = fmul fast float %3231, %3062
  %3311 = fmul fast float %3231, %3063
  %3312 = fadd fast float %3309, %2295
  %3313 = fadd fast float %3310, %2296
  %3314 = fadd fast float %3311, %2297
  br label %3343

; <label>:3315                                    ; preds = %3267
  %3316 = icmp eq i32 %3211, 8
  br i1 %3316, label %3317, label %3343

; <label>:3317                                    ; preds = %3315
  %3318 = fmul fast float %3216, %2904
  %3319 = fmul fast float %3216, %2905
  %3320 = fadd fast float %3318, %2287
  %3321 = fadd fast float %3319, %2288
  %3322 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3323 = fsub fast float %3322, %2303
  %3324 = fmul fast float %3323, %3219
  %3325 = fadd fast float %3324, %2303
  %3326 = fsub fast float %2903, %2302
  %3327 = fmul fast float %3222, %3326
  %3328 = fadd fast float %3327, %2302
  %3329 = fmul fast float %3225, %3009
  %3330 = fmul fast float %3225, %3010
  %3331 = fmul fast float %3225, %3011
  %3332 = fadd fast float %3329, %2298
  %3333 = fadd fast float %3330, %2299
  %3334 = fadd fast float %3331, %2300
  %3335 = fmul fast float %3228, %3064
  %3336 = fadd fast float %3335, %2304
  %3337 = fmul fast float %3231, %3061
  %3338 = fmul fast float %3231, %3062
  %3339 = fmul fast float %3231, %3063
  %3340 = fadd fast float %3337, %2295
  %3341 = fadd fast float %3338, %2296
  %3342 = fadd fast float %3339, %2297
  br label %3343

; <label>:3343                                    ; preds = %3317, %3315, %3269, %3233, %3202, %2602, %2306, %2286
  %3344 = phi float [ %2287, %3202 ], [ %2287, %2602 ], [ %2287, %2286 ], [ %3320, %3317 ], [ %2287, %3315 ], [ %3272, %3269 ], [ %3238, %3233 ], [ %2287, %2306 ]
  %3345 = phi float [ %2288, %3202 ], [ %2288, %2602 ], [ %2288, %2286 ], [ %3321, %3317 ], [ %2288, %3315 ], [ %3273, %3269 ], [ %3239, %3233 ], [ %2288, %2306 ]
  %3346 = phi float [ %3203, %3202 ], [ %2289, %2602 ], [ %2289, %2286 ], [ %3203, %3317 ], [ %3203, %3315 ], [ %3203, %3269 ], [ %3203, %3233 ], [ %2289, %2306 ]
  %3347 = phi float [ %3204, %3202 ], [ %2290, %2602 ], [ %2290, %2286 ], [ %3204, %3317 ], [ %3204, %3315 ], [ %3204, %3269 ], [ %3204, %3233 ], [ %2290, %2306 ]
  %3348 = phi float [ %3205, %3202 ], [ %2291, %2602 ], [ %2291, %2286 ], [ %3205, %3317 ], [ %3205, %3315 ], [ %3205, %3269 ], [ %3205, %3233 ], [ %2291, %2306 ]
  %3349 = phi float [ %3206, %3202 ], [ %2292, %2602 ], [ %2292, %2286 ], [ %3206, %3317 ], [ %3206, %3315 ], [ %3206, %3269 ], [ %3206, %3233 ], [ %2292, %2306 ]
  %3350 = phi float [ %3207, %3202 ], [ %2293, %2602 ], [ %2293, %2286 ], [ %3207, %3317 ], [ %3207, %3315 ], [ %3207, %3269 ], [ %3207, %3233 ], [ %2293, %2306 ]
  %3351 = phi float [ %3208, %3202 ], [ %2294, %2602 ], [ %2294, %2286 ], [ %3208, %3317 ], [ %3208, %3315 ], [ %3208, %3269 ], [ %3208, %3233 ], [ %2294, %2306 ]
  %3352 = phi float [ %2295, %3202 ], [ %2295, %2602 ], [ %2295, %2286 ], [ %3340, %3317 ], [ %2295, %3315 ], [ %3312, %3269 ], [ %3264, %3233 ], [ %2295, %2306 ]
  %3353 = phi float [ %2296, %3202 ], [ %2296, %2602 ], [ %2296, %2286 ], [ %3341, %3317 ], [ %2296, %3315 ], [ %3313, %3269 ], [ %3265, %3233 ], [ %2296, %2306 ]
  %3354 = phi float [ %2297, %3202 ], [ %2297, %2602 ], [ %2297, %2286 ], [ %3342, %3317 ], [ %2297, %3315 ], [ %3314, %3269 ], [ %3266, %3233 ], [ %2297, %2306 ]
  %3355 = phi float [ %2298, %3202 ], [ %2298, %2602 ], [ %2298, %2286 ], [ %3332, %3317 ], [ %2298, %3315 ], [ %3304, %3269 ], [ %3252, %3233 ], [ %2298, %2306 ]
  %3356 = phi float [ %2299, %3202 ], [ %2299, %2602 ], [ %2299, %2286 ], [ %3333, %3317 ], [ %2299, %3315 ], [ %3305, %3269 ], [ %3253, %3233 ], [ %2299, %2306 ]
  %3357 = phi float [ %2300, %3202 ], [ %2300, %2602 ], [ %2300, %2286 ], [ %3334, %3317 ], [ %2300, %3315 ], [ %3306, %3269 ], [ %3254, %3233 ], [ %2300, %2306 ]
  %3358 = phi float [ %3209, %3202 ], [ %2301, %2602 ], [ %2301, %2286 ], [ %3209, %3317 ], [ %3209, %3315 ], [ %3209, %3269 ], [ %3209, %3233 ], [ %2301, %2306 ]
  %3359 = phi float [ %2302, %3202 ], [ %2302, %2602 ], [ %2302, %2286 ], [ %3328, %3317 ], [ %2302, %3315 ], [ %3300, %3269 ], [ %3245, %3233 ], [ %2302, %2306 ]
  %3360 = phi float [ %2303, %3202 ], [ %2303, %2602 ], [ %2303, %2286 ], [ %3325, %3317 ], [ %2303, %3315 ], [ %3277, %3269 ], [ %3242, %3233 ], [ %2303, %2306 ]
  %3361 = phi float [ %2304, %3202 ], [ %2304, %2602 ], [ %2304, %2286 ], [ %3336, %3317 ], [ %2304, %3315 ], [ %3308, %3269 ], [ %3257, %3233 ], [ %2304, %2306 ]
  %3362 = phi float [ %3210, %3202 ], [ %2305, %2602 ], [ %2305, %2286 ], [ %3210, %3317 ], [ %3210, %3315 ], [ %3210, %3269 ], [ %3210, %3233 ], [ %2305, %2306 ]
  br i1 %405, label %4400, label %3363

; <label>:3363                                    ; preds = %3343
  %3364 = icmp ult i32 %459, 4
  %3365 = add i32 %54, 72
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = add i32 %54, 76
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = or i32 %3370, %3367
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %4400, label %3373

; <label>:3373                                    ; preds = %3363
  %3374 = and i32 %3367, 262144
  %3375 = icmp ne i32 %3374, 0
  %3376 = select i1 %3375, float %57, float 1.000000e+00
  %3377 = select i1 %3375, float %58, float 0.000000e+00
  %3378 = select i1 %3375, float %59, float 0.000000e+00
  %3379 = select i1 %3375, float %60, float 1.000000e+00
  %3380 = select i1 %3375, float %61, float %82
  %3381 = select i1 %3375, float %62, float %83
  %3382 = add i32 %54, 332
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = lshr i32 %3384, 16
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = fmul fast float %3386, 0x3F50624DE0000000
  %3388 = add i32 %54, 136
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = lshr i32 %3390, 16
  %3392 = and i32 %3391, 255
  %3393 = lshr i32 %3390, 24
  %3394 = add i32 %54, 340
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3396, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = add i32 %54, 80
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = lshr i32 %3403, 22
  %3405 = shl nuw nsw i32 %3404, 5
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = shl i32 %3403, 4
  %3408 = and i32 %3407, 32752
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = lshr i32 %3403, 7
  %3411 = and i32 %3410, 32752
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3415 = fmul fast float %3414, 1.000000e+03
  %3416 = fmul fast float %395, %3415
  %3417 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3418 = fadd fast float %3417, %385
  %3419 = fmul fast float %396, %3415
  %3420 = call float @dx.op.unary.f32(i32 22, float %3419)  ; Frc(value)
  %3421 = fadd fast float %3420, %387
  %3422 = fmul fast float %3387, %3415
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fmul fast float %3423, 0x401921FB60000000
  %3425 = fadd fast float %3424, %3406
  %3426 = call float @dx.op.unary.f32(i32 13, float %3425)  ; Sin(value)
  %3427 = call float @dx.op.unary.f32(i32 12, float %3425)  ; Cos(value)
  %3428 = fsub fast float -0.000000e+00, %3426
  %3429 = fadd fast float %3380, -5.000000e-01
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fmul fast float %3398, %3429
  %3432 = fmul fast float %3400, %3430
  %3433 = fadd fast float %3431, 5.000000e-01
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fmul fast float %3409, %3433
  %3436 = fmul fast float %3412, %3434
  %3437 = fmul fast float %3427, %3435
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3436, float %3437)  ; FMad(a,b,c)
  %3439 = fmul fast float %3426, %3435
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3436, float %3439)  ; FMad(a,b,c)
  %3441 = fadd fast float %3418, %3438
  %3442 = fadd fast float %3421, %3440
  %3443 = icmp ugt i32 %3392, 1
  %3444 = icmp ugt i32 %3390, 33554431
  %3445 = or i1 %3444, %3443
  br i1 %3445, label %3446, label %3471

; <label>:3446                                    ; preds = %3373
  %3447 = add i32 %54, 276
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 16
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = fmul fast float %3414, %3451
  %3453 = call float @dx.op.unary.f32(i32 22, float %3452)  ; Frc(value)
  %3454 = mul nuw nsw i32 %3392, %3393
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3453, %3455
  %3457 = call float @dx.op.unary.f32(i32 27, float %3456)  ; Round_ni(value)
  %3458 = fptoui float %3457 to i32
  %3459 = urem i32 %3458, %3392
  %3460 = udiv i32 %3458, %3393
  %3461 = call float @dx.op.unary.f32(i32 22, float %3441)  ; Frc(value)
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = uitofp i32 %3459 to float
  %3464 = uitofp i32 %3460 to float
  %3465 = fadd fast float %3461, %3463
  %3466 = fadd fast float %3462, %3464
  %3467 = uitofp i32 %3392 to float
  %3468 = uitofp i32 %3393 to float
  %3469 = fdiv fast float %3465, %3467
  %3470 = fdiv fast float %3466, %3468
  br label %3471

; <label>:3471                                    ; preds = %3446, %3373
  %3472 = phi float [ %3469, %3446 ], [ %3441, %3373 ]
  %3473 = phi float [ %3470, %3446 ], [ %3442, %3373 ]
  %3474 = and i32 %3367, 16777216
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3585, label %3476

; <label>:3476                                    ; preds = %3471
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3481 = fadd fast float %3478, %155
  %3482 = fadd fast float %3479, %156
  %3483 = fadd fast float %3480, %157
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = icmp eq i32 %55, 65535
  br i1 %3487, label %3582, label %3488

; <label>:3488                                    ; preds = %3476
  %3489 = lshr i32 %55, 1
  %3490 = shl i32 %3489, 2
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %55, 1
  %3494 = icmp ne i32 %3493, 0
  %3495 = lshr i32 %3492, 16
  %3496 = and i32 %3492, 65535
  %3497 = select i1 %3494, i32 %3495, i32 %3496
  %3498 = icmp eq i32 %3497, 65535
  br i1 %3498, label %3578, label %3499

; <label>:3499                                    ; preds = %3488
  %3500 = mul nuw nsw i32 %3497, 40
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = add nuw nsw i32 %3500, 12
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = add nuw nsw i32 %3500, 24
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3500, 36
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = fsub fast float %3481, %3502
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fmul fast float %3517, %3518
  %3522 = fmul fast float %3517, %3519
  %3523 = fmul fast float %3517, %3520
  %3524 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fmul fast float %3527, %3507
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = shl i32 %55, 2
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3537, %dx.types.Handle %49, float %3538, float %3539, float %3540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = fmul fast float %3542, 1.023000e+03
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = fsub fast float %3521, %3524
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fmul fast float %3554, 7.500000e-01
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fadd fast float %3524, 1.250000e-01
  %3561 = fadd fast float %3560, %3557
  %3562 = fadd fast float %3561, %3551
  %3563 = fadd fast float %3525, 1.250000e-01
  %3564 = fadd fast float %3563, %3558
  %3565 = fadd fast float %3564, %3552
  %3566 = fadd fast float %3526, 1.250000e-01
  %3567 = fadd fast float %3566, %3559
  %3568 = fadd fast float %3567, %3553
  %3569 = fmul fast float %3562, %3512
  %3570 = fmul fast float %3565, %3513
  %3571 = fmul fast float %3568, %3514
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = add i32 %3573, 0
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3575, %dx.types.Handle %47, float %3569, float %3570, float %3571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  br label %3578

; <label>:3578                                    ; preds = %3499, %3488
  %3579 = phi float [ %3577, %3499 ], [ -1.000000e+00, %3488 ]
  %3580 = fadd fast float %3579, %3486
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  br label %3582

; <label>:3582                                    ; preds = %3578, %3476
  %3583 = phi float [ %3581, %3578 ], [ %3486, %3476 ]
  %3584 = fmul fast float %3583, %454
  br label %3585

; <label>:3585                                    ; preds = %3582, %3471
  %3586 = phi float [ %3584, %3582 ], [ %454, %3471 ]
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 256
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3637, label %3591

; <label>:3591                                    ; preds = %3585
  %3592 = add i32 %54, 436
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = add i32 %54, 148
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = shl i32 %3601, 4
  %3603 = and i32 %3602, 32752
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = lshr i32 %3601, 7
  %3606 = and i32 %3605, 32752
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = fsub fast float 1.000000e+00, %3586
  %3609 = call float @dx.op.binary.f32(i32 35, float %3608, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3610 = bitcast float %3586 to i32
  %3611 = sitofp i32 %3610 to float
  %3612 = fadd fast float %3611, 0xC1CFBF8940000000
  %3613 = fmul fast float %3607, %3612
  %3614 = fadd fast float %3613, 0x41CFBF8940000000
  %3615 = fptosi float %3614 to i32
  %3616 = bitcast i32 %3615 to float
  %3617 = bitcast float %3609 to i32
  %3618 = sitofp i32 %3617 to float
  %3619 = fadd fast float %3618, 0xC1CFBF8940000000
  %3620 = fmul fast float %3619, %3607
  %3621 = fadd fast float %3620, 0x41CFBF8940000000
  %3622 = fptosi float %3621 to i32
  %3623 = bitcast i32 %3622 to float
  %3624 = fmul fast float %3616, %3604
  %3625 = fmul fast float %3623, %3604
  %3626 = fsub fast float %3609, %3624
  %3627 = fadd fast float %3625, %3609
  %3628 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = fsub fast float %3598, %3628
  %3631 = fsub fast float %3629, %3628
  %3632 = bitcast float %3631 to i32
  %3633 = sub nsw i32 2129859010, %3632
  %3634 = bitcast i32 %3633 to float
  %3635 = fmul fast float %3634, %3630
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  br label %3637

; <label>:3637                                    ; preds = %3591, %3585
  %3638 = phi float [ %3636, %3591 ], [ %3586, %3585 ]
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 128
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3659, label %3643

; <label>:3643                                    ; preds = %3637
  %3644 = add i32 %54, 420
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %3646, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3648, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 524288
  %3654 = icmp ne i32 %3653, 0
  %3655 = fcmp fast ogt float %3650, 0x3FE0101020000000
  %3656 = select i1 %3655, float 1.000000e+00, float 0.000000e+00
  %3657 = select i1 %3654, float %3656, float %3650
  %3658 = fmul fast float %3657, %3638
  br label %3659

; <label>:3659                                    ; preds = %3643, %3637
  %3660 = phi float [ %3658, %3643 ], [ %3638, %3637 ]
  %3661 = fcmp fast ult float %3660, 0x3F70101020000000
  br i1 %3661, label %4400, label %3662

; <label>:3662                                    ; preds = %3659
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 16
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3865, label %3667

; <label>:3667                                    ; preds = %3662
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = add i32 %54, 372
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = add i32 %3672, 0
  %3674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3674, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = and i32 %3669, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = lshr i32 %3669, 8
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = fmul fast float %3679, %3681
  %3686 = fadd fast float %3685, %3684
  %3687 = fmul fast float %3686, 0x3F70101000000000
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 512
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3700, label %3692

; <label>:3692                                    ; preds = %3667
  %3693 = add i32 %54, 452
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = add i32 %3695, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3697, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  br label %3700

; <label>:3700                                    ; preds = %3692, %3667
  %3701 = phi float [ %3699, %3692 ], [ 1.000000e+00, %3667 ]
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 33554432
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3812, label %3706

; <label>:3706                                    ; preds = %3700
  %3707 = add i32 %54, 272
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 65535
  %3711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3710)  ; LegacyF16ToF32(value)
  %3712 = lshr i32 %3709, 16
  %3713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3712)  ; LegacyF16ToF32(value)
  %3714 = add i32 %54, 276
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 65535
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = lshr i32 %3720, 24
  %3722 = uitofp i32 %3721 to float
  %3723 = fmul fast float %3722, 0x3F70101020000000
  %3724 = and i32 %3720, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = lshr i32 %3720, 8
  %3728 = and i32 %3727, 255
  %3729 = uitofp i32 %3728 to float
  %3730 = fmul fast float %3729, 0x3F70101020000000
  %3731 = lshr i32 %3720, 16
  %3732 = and i32 %3731, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = fmul fast float %3733, 0x3F70101020000000
  %3735 = add i32 %54, 268
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = lshr i32 %3737, 24
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = and i32 %3737, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = lshr i32 %3737, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = lshr i32 %3737, 16
  %3749 = and i32 %3748, 255
  %3750 = uitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 0x3F70101020000000
  %3752 = bitcast float %3676 to i32
  %3753 = ashr i32 %3752, 1
  %3754 = sub nsw i32 1597463174, %3753
  %3755 = bitcast i32 %3754 to float
  %3756 = fmul fast float %3676, 5.000000e-01
  %3757 = fmul fast float %3755, %3755
  %3758 = fmul fast float %3757, %3756
  %3759 = fsub fast float 1.500000e+00, %3758
  %3760 = fmul fast float %3755, %3676
  %3761 = fmul fast float %3760, %3759
  %3762 = bitcast float %3677 to i32
  %3763 = ashr i32 %3762, 1
  %3764 = sub nsw i32 1597463174, %3763
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3677, 5.000000e-01
  %3767 = fmul fast float %3765, %3765
  %3768 = fmul fast float %3767, %3766
  %3769 = fsub fast float 1.500000e+00, %3768
  %3770 = fmul fast float %3765, %3677
  %3771 = fmul fast float %3770, %3769
  %3772 = bitcast float %3678 to i32
  %3773 = ashr i32 %3772, 1
  %3774 = sub nsw i32 1597463174, %3773
  %3775 = bitcast i32 %3774 to float
  %3776 = fmul fast float %3678, 5.000000e-01
  %3777 = fmul fast float %3775, %3775
  %3778 = fmul fast float %3777, %3776
  %3779 = fsub fast float 1.500000e+00, %3778
  %3780 = fmul fast float %3775, %3678
  %3781 = fmul fast float %3780, %3779
  %3782 = fsub fast float %3761, %3743
  %3783 = fsub fast float %3771, %3747
  %3784 = fsub fast float %3781, %3751
  %3785 = fmul fast float %3782, %3711
  %3786 = fmul fast float %3783, %3713
  %3787 = fmul fast float %3784, %3718
  %3788 = fadd fast float %3785, %3726
  %3789 = fadd fast float %3786, %3730
  %3790 = fadd fast float %3787, %3734
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = fmul fast float %3791, %3791
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fsub fast float %3794, %3676
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fmul fast float %3797, %3701
  %3801 = fmul fast float %3798, %3701
  %3802 = fmul fast float %3799, %3701
  %3803 = fadd fast float %3800, %3676
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3723, %3687
  %3807 = fsub fast float %3806, %3740
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = fsub fast float %3808, %3687
  %3810 = fmul fast float %3809, %3701
  %3811 = fadd fast float %3810, %3687
  br label %3865

; <label>:3812                                    ; preds = %3700
  %3813 = and i32 %3703, 134217728
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3849, label %3815

; <label>:3815                                    ; preds = %3812
  %3816 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3817 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fmul fast float %3819, %3701
  %3823 = fmul fast float %3820, %3701
  %3824 = fmul fast float %3821, %3701
  %3825 = fadd fast float %3822, 5.000000e-01
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = fmul fast float %3825, 2.000000e+00
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3832, %3828
  %3834 = fadd fast float %3833, %3831
  %3835 = fmul fast float %3834, %3828
  %3836 = fmul fast float %3826, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3829
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3829
  %3841 = fmul fast float %3827, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3830
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3830
  %3846 = fmul fast float %3835, %3835
  %3847 = fmul fast float %3840, %3840
  %3848 = fmul fast float %3845, %3845
  br label %3865

; <label>:3849                                    ; preds = %3812
  %3850 = fmul fast float %372, %372
  %3851 = fmul fast float %376, %376
  %3852 = fmul fast float %380, %380
  %3853 = fadd fast float %3850, -1.000000e+00
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fmul fast float %3701, %3853
  %3857 = fmul fast float %3701, %3854
  %3858 = fmul fast float %3701, %3855
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fmul fast float %3859, %3676
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  br label %3865

; <label>:3865                                    ; preds = %3849, %3815, %3706, %3662
  %3866 = phi float [ %3811, %3706 ], [ %3687, %3815 ], [ %3687, %3849 ], [ 0x3FA23C0BE0000000, %3662 ]
  %3867 = phi float [ %3803, %3706 ], [ %3846, %3815 ], [ %3862, %3849 ], [ 1.000000e+00, %3662 ]
  %3868 = phi float [ %3804, %3706 ], [ %3847, %3815 ], [ %3863, %3849 ], [ 1.000000e+00, %3662 ]
  %3869 = phi float [ %3805, %3706 ], [ %3848, %3815 ], [ %3864, %3849 ], [ 1.000000e+00, %3662 ]
  %3870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.i32 %3870, 1
  %3872 = and i32 %3871, 1
  %3873 = icmp ne i32 %3872, 0
  %3874 = add i32 %54, 356
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = and i32 %3876, 32
  %3878 = icmp ne i32 %3877, 0
  %3879 = and i1 %3873, %3878
  %3880 = select i1 %3879, float 1.000000e+00, float %3867
  %3881 = select i1 %3879, float 0x3FD3333340000000, float %3868
  %3882 = select i1 %3879, float 0x3FD3333340000000, float %3869
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = and i32 %3884, 32
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3959, label %3887

; <label>:3887                                    ; preds = %3865
  %3888 = add i32 %54, 140
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = add i32 %54, 388
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = add i32 %3893, 0
  %3895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3895, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3901 = and i32 %3890, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = lshr i32 %3890, 8
  %3904 = and i32 %3903, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = lshr i32 %3890, 16
  %3907 = and i32 %3906, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = fmul fast float %3908, 0x3F70101000000000
  %3910 = fmul fast float %3897, %3902
  %3911 = fadd fast float %3910, %3905
  %3912 = fmul fast float %3911, 0x3F70101000000000
  %3913 = fadd fast float %3898, -5.000000e-01
  %3914 = fadd fast float %3900, -5.000000e-01
  %3915 = fmul fast float %3913, %3909
  %3916 = fmul fast float %3914, %3909
  %3917 = fadd fast float %3915, 5.000000e-01
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fmul fast float %3917, 2.000000e+00
  %3920 = fadd fast float %3919, -1.000000e+00
  %3921 = fmul fast float %3918, 2.000000e+00
  %3922 = fadd fast float %3921, -1.000000e+00
  %3923 = fadd fast float %3920, %3922
  %3924 = fmul fast float %3923, 5.000000e-01
  %3925 = fsub fast float %3920, %3922
  %3926 = fmul fast float %3925, 5.000000e-01
  %3927 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3930 = fsub fast float %3928, %3929
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3926, float %3930, float %3924, float %3926, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3924, %3932
  %3934 = fmul fast float %3926, %3932
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = and i32 %3936, 67108864
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3955, label %3939

; <label>:3939                                    ; preds = %3887
  %3940 = add i32 %54, 328
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 65535
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 65535
  %3948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3947)  ; LegacyF16ToF32(value)
  %3949 = lshr i32 %3942, 16
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = fsub fast float %3912, %3950
  %3952 = fmul fast float %3951, %3944
  %3953 = fadd fast float %3952, %3948
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  br label %3955

; <label>:3955                                    ; preds = %3939, %3887
  %3956 = phi float [ %3954, %3939 ], [ %3912, %3887 ]
  %3957 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3376, float %3377)  ; Dot2(ax,ay,bx,by)
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3378, float %3379)  ; Dot2(ax,ay,bx,by)
  br label %3959

; <label>:3959                                    ; preds = %3955, %3865
  %3960 = phi float [ %3956, %3955 ], [ 0x3FD6666660000000, %3865 ]
  %3961 = phi float [ %3957, %3955 ], [ 0.000000e+00, %3865 ]
  %3962 = phi float [ %3958, %3955 ], [ 0.000000e+00, %3865 ]
  %3963 = phi float [ %3899, %3955 ], [ 1.000000e+00, %3865 ]
  %3964 = add i32 %54, 208
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = lshr i32 %3966, 22
  %3968 = shl nuw nsw i32 %3967, 5
  %3969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3968)  ; LegacyF16ToF32(value)
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 64
  %3973 = icmp eq i32 %3972, 0
  br i1 %3973, label %4007, label %3974

; <label>:3974                                    ; preds = %3959
  %3975 = add i32 %54, 404
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = add i32 %3977, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = and i32 %3981, 131072
  %3983 = icmp eq i32 %3982, 0
  %3984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3979, %dx.types.Handle %96, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = fmul fast float %3985, %360
  %3989 = fmul fast float %3986, %363
  %3990 = fmul fast float %3987, %366
  br i1 %3983, label %3997, label %3991

; <label>:3991                                    ; preds = %3974
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = fmul fast float %3993, %3988
  %3995 = fmul fast float %3993, %3989
  %3996 = fmul fast float %3993, %3990
  br label %3997

; <label>:3997                                    ; preds = %3991, %3974
  %3998 = phi float [ %3994, %3991 ], [ %3988, %3974 ]
  %3999 = phi float [ %3995, %3991 ], [ %3989, %3974 ]
  %4000 = phi float [ %3996, %3991 ], [ %3990, %3974 ]
  %4001 = fmul fast float %3998, %3969
  %4002 = select i1 %217, float %4001, float %3998
  %4003 = call float @dx.op.dot3.f32(i32 55, float %4002, float %3999, float %4000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = select i1 %217, float 0.000000e+00, float %3998
  %4005 = select i1 %217, float %4003, float %3999
  %4006 = select i1 %217, float 0.000000e+00, float %4000
  br label %4007

; <label>:4007                                    ; preds = %3997, %3959
  %4008 = phi float [ %4004, %3997 ], [ 0.000000e+00, %3959 ]
  %4009 = phi float [ %4005, %3997 ], [ 0.000000e+00, %3959 ]
  %4010 = phi float [ %4006, %3997 ], [ 0.000000e+00, %3959 ]
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 1024
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4045, label %4015

; <label>:4015                                    ; preds = %4007
  %4016 = add i32 %54, 200
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = fmul fast float %4020, 0x3F70101020000000
  %4022 = lshr i32 %4018, 8
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = fmul fast float %4024, 0x3F70101020000000
  %4026 = lshr i32 %4018, 16
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101020000000
  %4030 = fmul fast float %4021, %4021
  %4031 = fmul fast float %4025, %4025
  %4032 = fmul fast float %4029, %4029
  %4033 = add i32 %54, 468
  %4034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.i32 %4034, 0
  %4036 = add i32 %4035, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4037, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %4038, 2
  %4042 = fmul fast float %4030, %4039
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  br label %4045

; <label>:4045                                    ; preds = %4015, %4007
  %4046 = phi float [ %4042, %4015 ], [ 0.000000e+00, %4007 ]
  %4047 = phi float [ %4043, %4015 ], [ 0.000000e+00, %4007 ]
  %4048 = phi float [ %4044, %4015 ], [ 0.000000e+00, %4007 ]
  %4049 = fcmp fast ogt float %4046, 0.000000e+00
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = lshr i32 %4056, 7
  %4058 = and i32 %4057, 32752
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = fmul fast float %4052, 0xBFE62E4300000000
  %4061 = fmul fast float %4060, %4059
  %4062 = fmul fast float %4053, 0xBFE62E4300000000
  %4063 = fmul fast float %4062, %4059
  %4064 = fmul fast float %4054, 0xBFE62E4300000000
  %4065 = fmul fast float %4064, %4059
  %4066 = select i1 %4049, float %4061, float 1.270000e+02
  %4067 = select i1 %4050, float %4063, float 1.270000e+02
  %4068 = select i1 %4051, float %4065, float 1.270000e+02
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = and i32 %4070, 10240
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4117, label %4073

; <label>:4073                                    ; preds = %4045
  %4074 = add i32 %54, 484
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = add i32 %4076, 0
  %4078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4078, %dx.types.Handle %97, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 1048576
  %4085 = icmp ne i32 %4084, 0
  %4086 = and i32 %4083, 8192
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4103, label %4088

; <label>:4088                                    ; preds = %4073
  %4089 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4090 = select i1 %4085, float %4089, float %4080
  %4091 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4092 = select i1 %4085, float %4091, float %4080
  %4093 = add i32 %54, 144
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = lshr i32 %4095, 16
  %4097 = and i32 %4096, 255
  %4098 = uitofp i32 %4097 to float
  %4099 = fmul fast float %4098, 0x3F80101020000000
  %4100 = fmul fast float %4099, %4092
  %4101 = fmul fast float %4099, %4080
  %4102 = fmul fast float %4099, %4090
  br label %4103

; <label>:4103                                    ; preds = %4088, %4073
  %4104 = phi float [ %4100, %4088 ], [ 0.000000e+00, %4073 ]
  %4105 = phi float [ %4101, %4088 ], [ 0.000000e+00, %4073 ]
  %4106 = phi float [ %4102, %4088 ], [ 0.000000e+00, %4073 ]
  %4107 = and i32 %4083, 2048
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4117, label %4109

; <label>:4109                                    ; preds = %4103
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = shl i32 %4111, 4
  %4113 = and i32 %4112, 32752
  %4114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4113)  ; LegacyF16ToF32(value)
  %4115 = fmul fast float %4114, %4081
  %4116 = call float @dx.op.binary.f32(i32 35, float %4115, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4117

; <label>:4117                                    ; preds = %4109, %4103, %4045
  %4118 = phi float [ %4104, %4109 ], [ %4104, %4103 ], [ 0.000000e+00, %4045 ]
  %4119 = phi float [ %4105, %4109 ], [ %4105, %4103 ], [ 0.000000e+00, %4045 ]
  %4120 = phi float [ %4106, %4109 ], [ %4106, %4103 ], [ 0.000000e+00, %4045 ]
  %4121 = phi float [ %4116, %4109 ], [ 0x3F70101020000000, %4103 ], [ 0x3F70101020000000, %4045 ]
  %4122 = add i32 %54, 144
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4124, 8
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3881, float %3882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = fmul fast float %4129, %4130
  %4132 = fadd fast float %4131, %4126
  %4133 = fmul fast float %4132, 0x3F70101020000000
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  br i1 %3364, label %4135, label %4170

; <label>:4135                                    ; preds = %4117
  %4136 = fmul fast float %4121, 2.000000e+00
  %4137 = fcmp fast olt float %4066, 1.270000e+02
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fmul fast float %4066, 0xBFF7154760000000
  %4141 = fmul fast float %4140, %4136
  %4142 = fmul fast float %4067, 0xBFF7154760000000
  %4143 = fmul fast float %4142, %4136
  %4144 = fmul fast float %4068, 0xBFF7154760000000
  %4145 = fmul fast float %4144, %4136
  %4146 = call float @dx.op.unary.f32(i32 21, float %4141)  ; Exp(value)
  %4147 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = fadd fast float %4149, -1.000000e+00
  %4153 = select i1 %4137, float %4152, float -1.000000e+00
  %4154 = fadd fast float %4150, -1.000000e+00
  %4155 = select i1 %4138, float %4154, float -1.000000e+00
  %4156 = fadd fast float %4151, -1.000000e+00
  %4157 = select i1 %4139, float %4156, float -1.000000e+00
  %4158 = fmul fast float %4153, %3660
  %4159 = fmul fast float %4155, %3660
  %4160 = fmul fast float %4157, %3660
  %4161 = fadd fast float %4158, 1.000000e+00
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fmul fast float %4161, %3346
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4161, %3349
  %4168 = fmul fast float %4162, %3350
  %4169 = fmul fast float %4163, %3351
  br label %4170

; <label>:4170                                    ; preds = %4135, %4117
  %4171 = phi float [ %4164, %4135 ], [ %3346, %4117 ]
  %4172 = phi float [ %4165, %4135 ], [ %3347, %4117 ]
  %4173 = phi float [ %4166, %4135 ], [ %3348, %4117 ]
  %4174 = phi float [ %4167, %4135 ], [ %3349, %4117 ]
  %4175 = phi float [ %4168, %4135 ], [ %3350, %4117 ]
  %4176 = phi float [ %4169, %4135 ], [ %3351, %4117 ]
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = and i32 %4178, 3
  %4180 = icmp eq i32 %4179, 3
  br i1 %4180, label %4259, label %4181

; <label>:4181                                    ; preds = %4170
  %4182 = and i32 %4178, 16
  %4183 = icmp ne i32 %4182, 0
  %4184 = select i1 %4183, float %3660, float 0.000000e+00
  %4185 = icmp eq i32 %4179, 0
  br i1 %4185, label %4186, label %4214

; <label>:4186                                    ; preds = %4181
  %4187 = and i32 %4178, 64
  %4188 = icmp ne i32 %4187, 0
  %4189 = select i1 %4188, float %3660, float 0.000000e+00
  %4190 = fsub fast float %3880, %4171
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fmul fast float %4184, %4190
  %4194 = fmul fast float %4184, %4191
  %4195 = fmul fast float %4184, %4192
  %4196 = fadd fast float %4193, %4171
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fsub fast float %3866, %3358
  %4200 = fmul fast float %4184, %4199
  %4201 = fadd fast float %4200, %3358
  %4202 = fsub fast float %4008, %4174
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fmul fast float %4189, %4202
  %4206 = fmul fast float %4189, %4203
  %4207 = fmul fast float %4189, %4204
  %4208 = fadd fast float %4205, %4174
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fsub fast float %4134, %3362
  %4212 = fmul fast float %4184, %4211
  %4213 = fadd fast float %4212, %3362
  br label %4259

; <label>:4214                                    ; preds = %4181
  %4215 = icmp eq i32 %4179, 1
  br i1 %4215, label %4216, label %4229

; <label>:4216                                    ; preds = %4214
  %4217 = fadd fast float %3880, -1.000000e+00
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fmul fast float %4184, %4217
  %4221 = fmul fast float %4184, %4218
  %4222 = fmul fast float %4184, %4219
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fmul fast float %4223, %4171
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  br label %4259

; <label>:4229                                    ; preds = %4214
  %4230 = icmp eq i32 %4179, 2
  br i1 %4230, label %4231, label %4259

; <label>:4231                                    ; preds = %4229
  %4232 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fmul fast float %4235, %4184
  %4239 = fmul fast float %4236, %4184
  %4240 = fmul fast float %4237, %4184
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fmul fast float %4241, 2.000000e+00
  %4245 = fsub fast float 1.000000e+00, %4244
  %4246 = fmul fast float %4245, %4171
  %4247 = fadd fast float %4246, %4244
  %4248 = fmul fast float %4247, %4171
  %4249 = fmul fast float %4242, 2.000000e+00
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4172
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4172
  %4254 = fmul fast float %4243, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4173
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4173
  br label %4259

; <label>:4259                                    ; preds = %4231, %4229, %4216, %4186, %4170
  %4260 = phi float [ %4171, %4170 ], [ %4248, %4231 ], [ %4171, %4229 ], [ %4226, %4216 ], [ %4196, %4186 ]
  %4261 = phi float [ %4172, %4170 ], [ %4253, %4231 ], [ %4172, %4229 ], [ %4227, %4216 ], [ %4197, %4186 ]
  %4262 = phi float [ %4173, %4170 ], [ %4258, %4231 ], [ %4173, %4229 ], [ %4228, %4216 ], [ %4198, %4186 ]
  %4263 = phi float [ %4174, %4170 ], [ %4174, %4231 ], [ %4174, %4229 ], [ %4174, %4216 ], [ %4208, %4186 ]
  %4264 = phi float [ %4175, %4170 ], [ %4175, %4231 ], [ %4175, %4229 ], [ %4175, %4216 ], [ %4209, %4186 ]
  %4265 = phi float [ %4176, %4170 ], [ %4176, %4231 ], [ %4176, %4229 ], [ %4176, %4216 ], [ %4210, %4186 ]
  %4266 = phi float [ %3358, %4170 ], [ %3358, %4231 ], [ %3358, %4229 ], [ %3358, %4216 ], [ %4201, %4186 ]
  %4267 = phi float [ %3362, %4170 ], [ %3362, %4231 ], [ %3362, %4229 ], [ %3362, %4216 ], [ %4213, %4186 ]
  %4268 = and i32 %4178, 12
  %4269 = icmp eq i32 %4268, 12
  br i1 %4269, label %4400, label %4270

; <label>:4270                                    ; preds = %4259
  %4271 = and i32 %4178, 2097184
  %4272 = icmp eq i32 %4271, 2097184
  %4273 = select i1 %4272, float %3660, float 0.000000e+00
  %4274 = and i32 %4178, 4194336
  %4275 = icmp eq i32 %4274, 4194336
  %4276 = select i1 %4275, float %3660, float 0.000000e+00
  %4277 = and i32 %4178, 8388640
  %4278 = icmp eq i32 %4277, 8388640
  %4279 = select i1 %4278, float %3660, float 0.000000e+00
  %4280 = and i32 %4178, 1024
  %4281 = icmp ne i32 %4280, 0
  %4282 = select i1 %4281, float %3660, float 0.000000e+00
  %4283 = and i32 %4178, 2048
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %3660, float 0.000000e+00
  %4286 = and i32 %4178, 8192
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3660, float 0.000000e+00
  %4289 = icmp eq i32 %4268, 0
  br i1 %4289, label %4290, label %4324

; <label>:4290                                    ; preds = %4270
  %4291 = fsub fast float %3961, %3344
  %4292 = fsub fast float %3962, %3345
  %4293 = fmul fast float %4273, %4291
  %4294 = fmul fast float %4273, %4292
  %4295 = fadd fast float %4293, %3344
  %4296 = fadd fast float %4294, %3345
  %4297 = fsub fast float %3963, %3360
  %4298 = fmul fast float %4276, %4297
  %4299 = fadd fast float %4298, %3360
  %4300 = fsub fast float %3960, %3359
  %4301 = fmul fast float %4279, %4300
  %4302 = fadd fast float %4301, %3359
  %4303 = fsub fast float %4066, %3355
  %4304 = fsub fast float %4067, %3356
  %4305 = fsub fast float %4068, %3357
  %4306 = fmul fast float %4282, %4303
  %4307 = fmul fast float %4282, %4304
  %4308 = fmul fast float %4282, %4305
  %4309 = fadd fast float %4306, %3355
  %4310 = fadd fast float %4307, %3356
  %4311 = fadd fast float %4308, %3357
  %4312 = fsub fast float %4121, %3361
  %4313 = fmul fast float %4285, %4312
  %4314 = fadd fast float %4313, %3361
  %4315 = fsub fast float %4118, %3352
  %4316 = fsub fast float %4119, %3353
  %4317 = fsub fast float %4120, %3354
  %4318 = fmul fast float %4288, %4315
  %4319 = fmul fast float %4288, %4316
  %4320 = fmul fast float %4288, %4317
  %4321 = fadd fast float %4318, %3352
  %4322 = fadd fast float %4319, %3353
  %4323 = fadd fast float %4320, %3354
  br label %4400

; <label>:4324                                    ; preds = %4270
  %4325 = icmp eq i32 %4268, 4
  br i1 %4325, label %4326, label %4372

; <label>:4326                                    ; preds = %4324
  %4327 = fmul fast float %4273, %3961
  %4328 = fmul fast float %4273, %3962
  %4329 = fadd fast float %4327, %3344
  %4330 = fadd fast float %4328, %3345
  %4331 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4332 = fsub fast float %4331, %3360
  %4333 = fmul fast float %4332, %4276
  %4334 = fadd fast float %4333, %3360
  %4335 = fadd fast float %3960, %3359
  %4336 = fmul fast float %4335, 0x3FF337FAE0000000
  %4337 = fmul fast float %3359, %3359
  %4338 = fmul fast float %3960, %3960
  %4339 = fadd fast float %4338, %4337
  %4340 = fmul fast float %4339, 0x3FE5152B00000000
  %4341 = fmul fast float %3359, 0xBFCC1F85E0000000
  %4342 = fmul fast float %4341, %3960
  %4343 = fadd fast float %4342, 0xBFE1363700000000
  %4344 = fadd fast float %4343, %4336
  %4345 = fsub fast float %4344, %4340
  %4346 = fmul fast float %4335, 0x3FBA6F0D00000000
  %4347 = fmul fast float %4339, 0x3FD0432880000000
  %4348 = fmul fast float %3359, 0xBFEF110800000000
  %4349 = fmul fast float %4348, %3960
  %4350 = fadd fast float %4349, 1.000000e+00
  %4351 = fsub fast float %4350, %4346
  %4352 = fadd fast float %4351, %4347
  %4353 = fdiv fast float %4345, %4352
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fsub fast float %4354, %3359
  %4356 = fmul fast float %4355, %4279
  %4357 = fadd fast float %4356, %3359
  %4358 = fmul fast float %4282, %4066
  %4359 = fmul fast float %4282, %4067
  %4360 = fmul fast float %4282, %4068
  %4361 = fadd fast float %4358, %3355
  %4362 = fadd fast float %4359, %3356
  %4363 = fadd fast float %4360, %3357
  %4364 = fmul fast float %4285, %4121
  %4365 = fadd fast float %4364, %3361
  %4366 = fmul fast float %4288, %4118
  %4367 = fmul fast float %4288, %4119
  %4368 = fmul fast float %4288, %4120
  %4369 = fadd fast float %4366, %3352
  %4370 = fadd fast float %4367, %3353
  %4371 = fadd fast float %4368, %3354
  br label %4400

; <label>:4372                                    ; preds = %4324
  %4373 = icmp eq i32 %4268, 8
  br i1 %4373, label %4374, label %4400

; <label>:4374                                    ; preds = %4372
  %4375 = fmul fast float %4273, %3961
  %4376 = fmul fast float %4273, %3962
  %4377 = fadd fast float %4375, %3344
  %4378 = fadd fast float %4376, %3345
  %4379 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4380 = fsub fast float %4379, %3360
  %4381 = fmul fast float %4380, %4276
  %4382 = fadd fast float %4381, %3360
  %4383 = fsub fast float %3960, %3359
  %4384 = fmul fast float %4279, %4383
  %4385 = fadd fast float %4384, %3359
  %4386 = fmul fast float %4282, %4066
  %4387 = fmul fast float %4282, %4067
  %4388 = fmul fast float %4282, %4068
  %4389 = fadd fast float %4386, %3355
  %4390 = fadd fast float %4387, %3356
  %4391 = fadd fast float %4388, %3357
  %4392 = fmul fast float %4285, %4121
  %4393 = fadd fast float %4392, %3361
  %4394 = fmul fast float %4288, %4118
  %4395 = fmul fast float %4288, %4119
  %4396 = fmul fast float %4288, %4120
  %4397 = fadd fast float %4394, %3352
  %4398 = fadd fast float %4395, %3353
  %4399 = fadd fast float %4396, %3354
  br label %4400

; <label>:4400                                    ; preds = %4374, %4372, %4326, %4290, %4259, %3659, %3363, %3343
  %4401 = phi float [ %3344, %4259 ], [ %3344, %3659 ], [ %3344, %3343 ], [ %3344, %3363 ], [ %4295, %4290 ], [ %4329, %4326 ], [ %3344, %4372 ], [ %4377, %4374 ]
  %4402 = phi float [ %3345, %4259 ], [ %3345, %3659 ], [ %3345, %3343 ], [ %3345, %3363 ], [ %4296, %4290 ], [ %4330, %4326 ], [ %3345, %4372 ], [ %4378, %4374 ]
  %4403 = phi float [ %4260, %4259 ], [ %3346, %3659 ], [ %3346, %3343 ], [ %3346, %3363 ], [ %4260, %4290 ], [ %4260, %4326 ], [ %4260, %4372 ], [ %4260, %4374 ]
  %4404 = phi float [ %4261, %4259 ], [ %3347, %3659 ], [ %3347, %3343 ], [ %3347, %3363 ], [ %4261, %4290 ], [ %4261, %4326 ], [ %4261, %4372 ], [ %4261, %4374 ]
  %4405 = phi float [ %4262, %4259 ], [ %3348, %3659 ], [ %3348, %3343 ], [ %3348, %3363 ], [ %4262, %4290 ], [ %4262, %4326 ], [ %4262, %4372 ], [ %4262, %4374 ]
  %4406 = phi float [ %4263, %4259 ], [ %3349, %3659 ], [ %3349, %3343 ], [ %3349, %3363 ], [ %4263, %4290 ], [ %4263, %4326 ], [ %4263, %4372 ], [ %4263, %4374 ]
  %4407 = phi float [ %4264, %4259 ], [ %3350, %3659 ], [ %3350, %3343 ], [ %3350, %3363 ], [ %4264, %4290 ], [ %4264, %4326 ], [ %4264, %4372 ], [ %4264, %4374 ]
  %4408 = phi float [ %4265, %4259 ], [ %3351, %3659 ], [ %3351, %3343 ], [ %3351, %3363 ], [ %4265, %4290 ], [ %4265, %4326 ], [ %4265, %4372 ], [ %4265, %4374 ]
  %4409 = phi float [ %3352, %4259 ], [ %3352, %3659 ], [ %3352, %3343 ], [ %3352, %3363 ], [ %4321, %4290 ], [ %4369, %4326 ], [ %3352, %4372 ], [ %4397, %4374 ]
  %4410 = phi float [ %3353, %4259 ], [ %3353, %3659 ], [ %3353, %3343 ], [ %3353, %3363 ], [ %4322, %4290 ], [ %4370, %4326 ], [ %3353, %4372 ], [ %4398, %4374 ]
  %4411 = phi float [ %3354, %4259 ], [ %3354, %3659 ], [ %3354, %3343 ], [ %3354, %3363 ], [ %4323, %4290 ], [ %4371, %4326 ], [ %3354, %4372 ], [ %4399, %4374 ]
  %4412 = phi float [ %3355, %4259 ], [ %3355, %3659 ], [ %3355, %3343 ], [ %3355, %3363 ], [ %4309, %4290 ], [ %4361, %4326 ], [ %3355, %4372 ], [ %4389, %4374 ]
  %4413 = phi float [ %3356, %4259 ], [ %3356, %3659 ], [ %3356, %3343 ], [ %3356, %3363 ], [ %4310, %4290 ], [ %4362, %4326 ], [ %3356, %4372 ], [ %4390, %4374 ]
  %4414 = phi float [ %3357, %4259 ], [ %3357, %3659 ], [ %3357, %3343 ], [ %3357, %3363 ], [ %4311, %4290 ], [ %4363, %4326 ], [ %3357, %4372 ], [ %4391, %4374 ]
  %4415 = phi float [ %4266, %4259 ], [ %3358, %3659 ], [ %3358, %3343 ], [ %3358, %3363 ], [ %4266, %4290 ], [ %4266, %4326 ], [ %4266, %4372 ], [ %4266, %4374 ]
  %4416 = phi float [ %3359, %4259 ], [ %3359, %3659 ], [ %3359, %3343 ], [ %3359, %3363 ], [ %4302, %4290 ], [ %4357, %4326 ], [ %3359, %4372 ], [ %4385, %4374 ]
  %4417 = phi float [ %3360, %4259 ], [ %3360, %3659 ], [ %3360, %3343 ], [ %3360, %3363 ], [ %4299, %4290 ], [ %4334, %4326 ], [ %3360, %4372 ], [ %4382, %4374 ]
  %4418 = phi float [ %3361, %4259 ], [ %3361, %3659 ], [ %3361, %3343 ], [ %3361, %3363 ], [ %4314, %4290 ], [ %4365, %4326 ], [ %3361, %4372 ], [ %4393, %4374 ]
  %4419 = phi float [ %4267, %4259 ], [ %3362, %3659 ], [ %3362, %3343 ], [ %3362, %3363 ], [ %4267, %4290 ], [ %4267, %4326 ], [ %4267, %4372 ], [ %4267, %4374 ]
  %4420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.f32 %4420, 0
  %4422 = call float @dx.op.dot2.f32(i32 54, float %4401, float %4402, float %4401, float %4402)  ; Dot2(ax,ay,bx,by)
  %4423 = fmul fast float %4422, 0x3FE3333340000000
  %4424 = fsub fast float 1.000000e+00, %4423
  %4425 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4424, float %4401, float %4402, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.unary.f32(i32 25, float %4425)  ; Rsqrt(value)
  %4427 = fmul fast float %4426, %4401
  %4428 = fmul fast float %4426, %4402
  %4429 = fmul fast float %4424, %4426
  %4430 = fmul fast float %4429, %107
  %4431 = fmul fast float %4429, %108
  %4432 = fmul fast float %4429, %109
  %4433 = fmul fast float %4427, %75
  %4434 = fmul fast float %4427, %76
  %4435 = fmul fast float %4427, %77
  %4436 = fadd fast float %4430, %4433
  %4437 = fadd fast float %4431, %4434
  %4438 = fadd fast float %4432, %4435
  %4439 = fmul fast float %119, %4428
  %4440 = fmul fast float %120, %4428
  %4441 = fmul fast float %121, %4428
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4444, float %4442, float %4443, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 25, float %4445)  ; Rsqrt(value)
  %4447 = fmul fast float %4442, %4446
  %4448 = fmul fast float %4443, %4446
  %4449 = fmul fast float %4444, %4446
  %4450 = and i32 %56, 1
  %4451 = icmp eq i32 %4450, 0
  br i1 %4451, label %4452, label %5044

; <label>:4452                                    ; preds = %4400
  %4453 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4454 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4459 = fadd fast float %4453, %155
  %4460 = fadd fast float %4454, %156
  %4461 = fadd fast float %4455, %157
  %4462 = fadd fast float %4456, %155
  %4463 = fadd fast float %4457, %156
  %4464 = fadd fast float %4458, %157
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4472 = fmul fast float %4466, %100
  %4473 = fmul fast float %4472, %4470
  %4474 = fmul fast float %4467, %101
  %4475 = fmul fast float %4474, %4471
  %4476 = fptoui float %4473 to i32
  %4477 = fptoui float %4475 to i32
  %4478 = fadd fast float %4466, -1.000000e+00
  %4479 = fadd fast float %4467, -1.000000e+00
  %4480 = fptoui float %4478 to i32
  %4481 = fptoui float %4479 to i32
  %4482 = call i32 @dx.op.binary.i32(i32 40, i32 %4476, i32 %4480)  ; UMin(a,b)
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4481)  ; UMin(a,b)
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4487 = fmul fast float %4485, %91
  %4488 = fsub fast float %4487, %4486
  %4489 = fadd fast float %4468, -1.000000e+00
  %4490 = call float @dx.op.binary.f32(i32 36, float %4488, float %4489)  ; FMin(a,b)
  %4491 = fptoui float %4490 to i32
  %4492 = fptoui float %4466 to i32
  %4493 = fptoui float %4467 to i32
  %4494 = mul i32 %4491, %4493
  %4495 = add i32 %4494, %4483
  %4496 = mul i32 %4495, %4492
  %4497 = add i32 %4496, %4482
  %4498 = shl i32 %4497, 2
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = and i32 %4500, 1023
  %4502 = lshr i32 %4500, 10
  %4503 = icmp eq i32 %4501, 0
  br i1 %4503, label %5007, label %4504

; <label>:4504                                    ; preds = %4452
  %4505 = and i32 %4500, 1023
  br label %4506

; <label>:4506                                    ; preds = %4638, %4504
  %4507 = phi i32 [ %4588, %4638 ], [ 0, %4504 ]
  %4508 = phi float [ %4639, %4638 ], [ 0.000000e+00, %4504 ]
  %4509 = phi float [ %4640, %4638 ], [ %4421, %4504 ]
  %4510 = phi float [ %4641, %4638 ], [ %4419, %4504 ]
  %4511 = phi float [ %4642, %4638 ], [ %4412, %4504 ]
  %4512 = phi float [ %4643, %4638 ], [ %4413, %4504 ]
  %4513 = phi float [ %4644, %4638 ], [ %4414, %4504 ]
  %4514 = phi float [ %4645, %4638 ], [ 0.000000e+00, %4504 ]
  %4515 = phi float [ %4646, %4638 ], [ 0.000000e+00, %4504 ]
  %4516 = phi float [ %4647, %4638 ], [ %4409, %4504 ]
  %4517 = phi float [ %4648, %4638 ], [ %4410, %4504 ]
  %4518 = phi float [ %4649, %4638 ], [ %4411, %4504 ]
  %4519 = phi float [ %4650, %4638 ], [ %4406, %4504 ]
  %4520 = phi float [ %4651, %4638 ], [ %4407, %4504 ]
  %4521 = phi float [ %4652, %4638 ], [ %4408, %4504 ]
  %4522 = phi float [ %4653, %4638 ], [ %4447, %4504 ]
  %4523 = phi float [ %4654, %4638 ], [ %4448, %4504 ]
  %4524 = phi float [ %4655, %4638 ], [ %4449, %4504 ]
  %4525 = phi float [ %4656, %4638 ], [ %4417, %4504 ]
  %4526 = phi float [ %4657, %4638 ], [ %4416, %4504 ]
  %4527 = phi float [ %4658, %4638 ], [ 0.000000e+00, %4504 ]
  %4528 = phi float [ %4659, %4638 ], [ %4415, %4504 ]
  %4529 = phi float [ %4660, %4638 ], [ %4403, %4504 ]
  %4530 = phi float [ %4661, %4638 ], [ %4404, %4504 ]
  %4531 = phi float [ %4662, %4638 ], [ %4405, %4504 ]
  %4532 = add nuw nsw i32 %4507, %4502
  %4533 = shl i32 %4532, 2
  %4534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.i32 %4534, 0
  %4536 = shl i32 %4535, 8
  %4537 = or i32 %4536, 48
  %4538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.ResRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.ResRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.ResRet.f32 %4538, 3
  %4543 = or i32 %4536, 64
  %4544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.i32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.i32 %4544, 1
  %4547 = or i32 %4536, 80
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 3
  %4551 = or i32 %4536, 96
  %4552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = extractvalue %dx.types.ResRet.f32 %4552, 3
  %4557 = or i32 %4536, 112
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4560 = or i32 %4536, 128
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4566 = or i32 %4536, 144
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4536, 160
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = or i32 %4536, 192
  %4579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = or i32 %4536, 208
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = or i32 %4536, 248
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = add nuw nsw i32 %4507, 1
  %4589 = bitcast float %4542 to i32
  %4590 = and i32 %4589, 512
  %4591 = icmp eq i32 %4590, 0
  %4592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.f32 %4592, 0
  %4594 = extractvalue %dx.types.ResRet.f32 %4592, 1
  %4595 = extractvalue %dx.types.ResRet.f32 %4592, 2
  %4596 = extractvalue %dx.types.ResRet.f32 %4592, 3
  %4597 = call float @dx.op.dot4.f32(i32 56, float %4593, float %4594, float %4595, float %4596, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4598 = or i32 %4536, 16
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4605 = or i32 %4536, 32
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = call float @dx.op.dot4.f32(i32 56, float %4607, float %4608, float %4609, float %4610, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4612 = call float @dx.op.unary.f32(i32 27, float %4597)  ; Round_ni(value)
  %4613 = call float @dx.op.unary.f32(i32 6, float %4612)  ; FAbs(value)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4604)  ; Round_ni(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 6, float %4611)  ; FAbs(value)
  %4617 = call float @dx.op.unary.f32(i32 27, float %4616)  ; Round_ni(value)
  %4618 = fadd fast float %4615, %4613
  %4619 = fadd fast float %4618, %4617
  %4620 = fcmp fast oeq float %4619, 0.000000e+00
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4593, float %4594, float %4595, float %4596, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4593, float %4594, float %4595, float %4596, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4600, float %4601, float %4602, float %4603, float %4462, float %4463, float %4464, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = fsub fast float %4621, %4597
  %4626 = fsub fast float %4623, %4597
  %4627 = fsub fast float %4622, %4604
  %4628 = fsub fast float %4624, %4604
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 2
  %4632 = fadd fast float %4631, %4629
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4635 = fcmp fast ogt float %4633, %4634
  %4636 = and i1 %4620, %4635
  %4637 = and i1 %4591, %4636
  br i1 %4637, label %4664, label %4638

; <label>:4638                                    ; preds = %4993, %4745, %4664, %4506
  %4639 = phi float [ %4508, %4664 ], [ %4748, %4745 ], [ %4748, %4993 ], [ %4508, %4506 ]
  %4640 = phi float [ %4509, %4664 ], [ %4509, %4745 ], [ %4969, %4993 ], [ %4509, %4506 ]
  %4641 = phi float [ %4510, %4664 ], [ %4510, %4745 ], [ %4967, %4993 ], [ %4510, %4506 ]
  %4642 = phi float [ %4511, %4664 ], [ %4511, %4745 ], [ %4945, %4993 ], [ %4511, %4506 ]
  %4643 = phi float [ %4512, %4664 ], [ %4512, %4745 ], [ %4946, %4993 ], [ %4512, %4506 ]
  %4644 = phi float [ %4513, %4664 ], [ %4513, %4745 ], [ %4947, %4993 ], [ %4513, %4506 ]
  %4645 = phi float [ %4514, %4664 ], [ %4514, %4745 ], [ %4872, %4993 ], [ %4514, %4506 ]
  %4646 = phi float [ %4515, %4664 ], [ %4515, %4745 ], [ %4870, %4993 ], [ %4515, %4506 ]
  %4647 = phi float [ %4516, %4664 ], [ %4516, %4745 ], [ %4915, %4993 ], [ %4516, %4506 ]
  %4648 = phi float [ %4517, %4664 ], [ %4517, %4745 ], [ %4916, %4993 ], [ %4517, %4506 ]
  %4649 = phi float [ %4518, %4664 ], [ %4518, %4745 ], [ %4917, %4993 ], [ %4518, %4506 ]
  %4650 = phi float [ %4519, %4664 ], [ %4519, %4745 ], [ %5003, %4993 ], [ %4519, %4506 ]
  %4651 = phi float [ %4520, %4664 ], [ %4520, %4745 ], [ %5004, %4993 ], [ %4520, %4506 ]
  %4652 = phi float [ %4521, %4664 ], [ %4521, %4745 ], [ %5005, %4993 ], [ %4521, %4506 ]
  %4653 = phi float [ %4522, %4664 ], [ %4522, %4745 ], [ %4851, %4993 ], [ %4522, %4506 ]
  %4654 = phi float [ %4523, %4664 ], [ %4523, %4745 ], [ %4852, %4993 ], [ %4523, %4506 ]
  %4655 = phi float [ %4524, %4664 ], [ %4524, %4745 ], [ %4853, %4993 ], [ %4524, %4506 ]
  %4656 = phi float [ %4525, %4664 ], [ %4525, %4745 ], [ %4925, %4993 ], [ %4525, %4506 ]
  %4657 = phi float [ %4526, %4664 ], [ %4526, %4745 ], [ %4922, %4993 ], [ %4526, %4506 ]
  %4658 = phi float [ %4527, %4664 ], [ %4527, %4745 ], [ %4919, %4993 ], [ %4527, %4506 ]
  %4659 = phi float [ %4528, %4664 ], [ %4528, %4745 ], [ %4868, %4993 ], [ %4528, %4506 ]
  %4660 = phi float [ %4529, %4664 ], [ %4529, %4745 ], [ %4863, %4993 ], [ %4529, %4506 ]
  %4661 = phi float [ %4530, %4664 ], [ %4530, %4745 ], [ %4864, %4993 ], [ %4530, %4506 ]
  %4662 = phi float [ %4531, %4664 ], [ %4531, %4745 ], [ %4865, %4993 ], [ %4531, %4506 ]
  %4663 = icmp eq i32 %4588, %4505
  br i1 %4663, label %5006, label %4506

; <label>:4664                                    ; preds = %4506
  %4665 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4666 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4668 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4670 = extractvalue %dx.types.ResRet.i32 %4544, 3
  %4671 = extractvalue %dx.types.ResRet.i32 %4544, 2
  %4672 = add i32 %4670, 0
  %4673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4672, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4673, %dx.types.Handle %4674, float %4597, float %4604, float undef, float undef, i32 0, i32 0, i32 undef, float %4625, float %4627, float undef, float %4626, float %4628, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = fmul fast float %4676, %4669
  %4678 = fadd fast float %4677, %4668
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4597, %4553
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4604, float %4680)  ; FMad(a,b,c)
  %4682 = fadd fast float %4681, %4667
  %4683 = fmul fast float %4597, %4555
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4604, float %4683)  ; FMad(a,b,c)
  %4685 = fadd fast float %4684, %4666
  %4686 = fmul fast float %4625, %4553
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4627, float %4686)  ; FMad(a,b,c)
  %4688 = fmul fast float %4625, %4555
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4627, float %4688)  ; FMad(a,b,c)
  %4690 = fmul fast float %4626, %4553
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4554, float %4628, float %4690)  ; FMad(a,b,c)
  %4692 = fmul fast float %4626, %4555
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4628, float %4692)  ; FMad(a,b,c)
  %4694 = add i32 %4671, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4694, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4695, %dx.types.Handle %4674, float %4682, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float %4687, float %4689, float undef, float %4691, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = and i32 %4589, 1024
  %4699 = icmp ne i32 %4698, 0
  %4700 = fcmp fast ogt float %4697, 0x3FE0101020000000
  %4701 = uitofp i1 %4700 to float
  %4702 = select i1 %4699, float %4701, float %4697
  %4703 = and i32 %4589, 8192
  %4704 = icmp ne i32 %4703, 0
  %4705 = select i1 %4704, float %4665, float 1.000000e+00
  %4706 = fmul fast float %4597, 2.000000e+00
  %4707 = fadd fast float %4706, -1.000000e+00
  %4708 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4709 = fmul fast float %4708, %4586
  %4710 = fsub fast float %4709, %4586
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4604, 2.000000e+00
  %4713 = fadd fast float %4712, -1.000000e+00
  %4714 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4715 = fmul fast float %4714, %4587
  %4716 = fsub fast float %4715, %4587
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4616, %4549
  %4719 = fsub fast float %4718, %4549
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4679, %4705
  %4722 = fmul fast float %4721, %4676
  %4723 = fmul fast float %4722, %4711
  %4724 = fmul fast float %4723, %4702
  %4725 = fmul fast float %4724, %4717
  %4726 = fmul fast float %4725, %4720
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4730 = fsub fast float %4633, %4729
  %4731 = fmul fast float %4730, %4728
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4726, %4550
  %4734 = fadd fast float %4726, %4550
  %4735 = fmul fast float %4734, %4559
  %4736 = fsub fast float %4735, %4559
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = and i32 %4589, 128
  %4739 = icmp ne i32 %4738, 0
  %4740 = select i1 %4739, float %4737, float %4733
  %4741 = fmul fast float %4740, %4732
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = fcmp fast ugt float %4741, %4743
  br i1 %4744, label %4745, label %4638

; <label>:4745                                    ; preds = %4664
  %4746 = select i1 %4704, float %4741, float 0.000000e+00
  %4747 = fadd fast float %4746, %4508
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  br i1 %4704, label %4638, label %4749

; <label>:4749                                    ; preds = %4745
  %4750 = and i32 %4589, 4
  %4751 = and i32 %4589, 8
  %4752 = add i32 %4545, 0
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4753, %dx.types.Handle %4754, float %4682, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float %4687, float %4689, float undef, float %4691, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.ResRet.f32 %4755, 1
  %4758 = extractvalue %dx.types.ResRet.f32 %4755, 2
  %4759 = extractvalue %dx.types.ResRet.f32 %4755, 3
  %4760 = bitcast float %4571 to i32
  %4761 = and i32 %4760, 255
  %4762 = uitofp i32 %4761 to float
  %4763 = lshr i32 %4760, 8
  %4764 = and i32 %4763, 255
  %4765 = uitofp i32 %4764 to float
  %4766 = fmul fast float %4759, %4762
  %4767 = fadd fast float %4766, %4765
  %4768 = fmul fast float %4767, 0x3F70101000000000
  %4769 = add i32 %4546, 0
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4769, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4770, %dx.types.Handle %4754, float %4682, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float %4687, float %4689, float undef, float %4691, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = extractvalue %dx.types.ResRet.f32 %4771, 3
  %4776 = bitcast float %4565 to i32
  %4777 = and i32 %4776, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = lshr i32 %4776, 8
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4776, 16
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = fmul fast float %4784, 0x3F70101000000000
  %4786 = fmul fast float %4772, %4778
  %4787 = fadd fast float %4786, %4781
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fadd fast float %4773, -5.000000e-01
  %4790 = fadd fast float %4775, -5.000000e-01
  %4791 = fmul fast float %4789, %4785
  %4792 = fmul fast float %4790, %4785
  %4793 = fadd fast float %4791, 5.000000e-01
  %4794 = fadd fast float %4792, 5.000000e-01
  %4795 = fmul fast float %4756, %4574
  %4796 = fmul fast float %4757, %4575
  %4797 = fmul fast float %4758, %4576
  %4798 = fmul fast float %4793, 2.000000e+00
  %4799 = fadd fast float %4798, -1.000000e+00
  %4800 = fmul fast float %4794, 2.000000e+00
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fadd fast float %4799, %4801
  %4803 = fmul fast float %4802, 5.000000e-01
  %4804 = fsub fast float %4799, %4801
  %4805 = fmul fast float %4804, 5.000000e-01
  %4806 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4809 = fsub fast float %4807, %4808
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4805, float %4809, float %4803, float %4805, float %4809)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = call float @dx.op.unary.f32(i32 25, float %4810)  ; Rsqrt(value)
  %4812 = fmul fast float %4803, %4811
  %4813 = fmul fast float %4805, %4811
  %4814 = fmul fast float %4811, %4809
  %4815 = fmul fast float %4814, %4539
  %4816 = fmul fast float %4814, %4540
  %4817 = fmul fast float %4814, %4541
  %4818 = fmul fast float %4812, %4562
  %4819 = fmul fast float %4812, %4563
  %4820 = fmul fast float %4812, %4564
  %4821 = fadd fast float %4818, %4815
  %4822 = fadd fast float %4819, %4816
  %4823 = fadd fast float %4820, %4817
  %4824 = fmul fast float %4813, %4568
  %4825 = fmul fast float %4813, %4569
  %4826 = fmul fast float %4813, %4570
  %4827 = fadd fast float %4821, %4824
  %4828 = fadd fast float %4822, %4825
  %4829 = fadd fast float %4823, %4826
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4827, float %4828, float %4829, float %4827, float %4828, float %4829)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 25, float %4830)  ; Rsqrt(value)
  %4832 = fmul fast float %4827, %4831
  %4833 = fmul fast float %4828, %4831
  %4834 = fmul fast float %4829, %4831
  %4835 = icmp ne i32 %4751, 0
  %4836 = select i1 %4835, float 1.000000e+00, float 0.000000e+00
  %4837 = fmul fast float %4741, %4836
  %4838 = and i32 %4589, 1
  %4839 = icmp eq i32 %4838, 0
  br i1 %4839, label %4840, label %4844

; <label>:4840                                    ; preds = %4749
  %4841 = fsub fast float %4832, %4522
  %4842 = fsub fast float %4833, %4523
  %4843 = fsub fast float %4834, %4524
  br label %4844

; <label>:4844                                    ; preds = %4840, %4749
  %4845 = phi float [ %4841, %4840 ], [ %4832, %4749 ]
  %4846 = phi float [ %4842, %4840 ], [ %4833, %4749 ]
  %4847 = phi float [ %4843, %4840 ], [ %4834, %4749 ]
  %4848 = fmul float %4847, %4837
  %4849 = fmul float %4846, %4837
  %4850 = fmul float %4845, %4837
  %4851 = fadd fast float %4850, %4522
  %4852 = fadd fast float %4849, %4523
  %4853 = fadd fast float %4848, %4524
  %4854 = icmp ne i32 %4750, 0
  %4855 = select i1 %4854, float 1.000000e+00, float 0.000000e+00
  %4856 = fmul fast float %4741, %4855
  %4857 = fsub fast float %4795, %4529
  %4858 = fsub fast float %4796, %4530
  %4859 = fsub fast float %4797, %4531
  %4860 = fmul fast float %4857, %4856
  %4861 = fmul fast float %4858, %4856
  %4862 = fmul fast float %4859, %4856
  %4863 = fadd fast float %4860, %4529
  %4864 = fadd fast float %4861, %4530
  %4865 = fadd fast float %4862, %4531
  %4866 = fsub fast float %4768, %4528
  %4867 = fmul fast float %4866, %4856
  %4868 = fadd fast float %4867, %4528
  %4869 = fmul fast float %4856, %4515
  %4870 = fsub fast float %4515, %4869
  %4871 = fmul fast float %4856, %4514
  %4872 = fsub fast float %4514, %4871
  %4873 = bitcast float %4583 to i32
  %4874 = lshr i32 %4873, 16
  %4875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4874)  ; LegacyF16ToF32(value)
  %4876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4877 = extractvalue %dx.types.ResRet.i32 %4876, 0
  %4878 = and i32 %4877, 1
  %4879 = icmp eq i32 %4878, 0
  br i1 %4879, label %4880, label %4905

; <label>:4880                                    ; preds = %4844
  %4881 = fadd fast float %4768, 0xBFB99999A0000000
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %4882, 0x3FF1C71C80000000
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, %4795
  %4887 = fmul fast float %4885, %4796
  %4888 = fmul fast float %4885, %4797
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.binary.f32(i32 35, float %4890, float %4891)  ; FMax(a,b)
  %4893 = call float @dx.op.binary.f32(i32 35, float %4889, float %4892)  ; FMax(a,b)
  %4894 = fcmp fast ogt float %4893, 0.000000e+00
  %4895 = bitcast float %4893 to i32
  %4896 = sub nsw i32 2129859010, %4895
  %4897 = bitcast i32 %4896 to float
  %4898 = select i1 %4894, float %4897, float 0.000000e+00
  %4899 = fmul fast float %4889, %4875
  %4900 = fmul fast float %4890, %4875
  %4901 = fmul fast float %4891, %4875
  %4902 = fmul fast float %4899, %4898
  %4903 = fmul fast float %4900, %4898
  %4904 = fmul fast float %4901, %4898
  br label %4905

; <label>:4905                                    ; preds = %4880, %4844
  %4906 = phi float [ %4875, %4844 ], [ %4902, %4880 ]
  %4907 = phi float [ %4875, %4844 ], [ %4903, %4880 ]
  %4908 = phi float [ %4875, %4844 ], [ %4904, %4880 ]
  %4909 = fsub fast float %4906, %4516
  %4910 = fsub fast float %4907, %4517
  %4911 = fsub fast float %4908, %4518
  %4912 = fmul fast float %4909, %4856
  %4913 = fmul fast float %4910, %4856
  %4914 = fmul fast float %4911, %4856
  %4915 = fadd fast float %4912, %4516
  %4916 = fadd fast float %4913, %4517
  %4917 = fadd fast float %4914, %4518
  %4918 = fadd fast float %4741, %4527
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fsub fast float %4788, %4526
  %4921 = fmul fast float %4920, %4837
  %4922 = fadd fast float %4921, %4526
  %4923 = fsub fast float %4774, %4525
  %4924 = fmul fast float %4923, %4837
  %4925 = fadd fast float %4924, %4525
  br i1 %4839, label %4934, label %4926

; <label>:4926                                    ; preds = %4905
  %4927 = and i32 %4589, 32768
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %4944, label %4929

; <label>:4929                                    ; preds = %4926
  %4930 = fmul fast float %4837, 1.270000e+02
  %4931 = fadd fast float %4930, %4511
  %4932 = fadd fast float %4930, %4512
  %4933 = fadd fast float %4930, %4513
  br label %4944

; <label>:4934                                    ; preds = %4905
  %4935 = fsub fast float 1.270000e+02, %4511
  %4936 = fsub fast float 1.270000e+02, %4512
  %4937 = fsub fast float 1.270000e+02, %4513
  %4938 = fmul fast float %4837, %4935
  %4939 = fmul fast float %4837, %4936
  %4940 = fmul fast float %4837, %4937
  %4941 = fadd fast float %4938, %4511
  %4942 = fadd fast float %4939, %4512
  %4943 = fadd fast float %4940, %4513
  br label %4944

; <label>:4944                                    ; preds = %4934, %4929, %4926
  %4945 = phi float [ %4931, %4929 ], [ %4511, %4926 ], [ %4941, %4934 ]
  %4946 = phi float [ %4932, %4929 ], [ %4512, %4926 ], [ %4942, %4934 ]
  %4947 = phi float [ %4933, %4929 ], [ %4513, %4926 ], [ %4943, %4934 ]
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %4797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4952 = fmul fast float %4951, %4948
  %4953 = fadd fast float %4952, %4950
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = bitcast float %4577 to i32
  %4956 = and i32 %4955, 65535
  %4957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4956)  ; LegacyF16ToF32(value)
  %4958 = lshr i32 %4955, 16
  %4959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4958)  ; LegacyF16ToF32(value)
  %4960 = fcmp fast oge float %4957, 0.000000e+00
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = select i1 %4960, float %4957, float %4962
  %4964 = fadd fast float %4963, %4959
  %4965 = fsub fast float %4954, %4510
  %4966 = fmul fast float %4965, %4741
  %4967 = fadd fast float %4966, %4510
  %4968 = fmul fast float %4964, %4741
  %4969 = call float @dx.op.binary.f32(i32 35, float %4509, float %4968)  ; FMax(a,b)
  %4970 = and i32 %4589, 16
  %4971 = icmp eq i32 %4970, 0
  br i1 %4971, label %4993, label %4972

; <label>:4972                                    ; preds = %4944
  %4973 = add i32 %4580, 0
  %4974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4975 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4974, %dx.types.Handle %4754, float %4682, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float %4687, float %4689, float undef, float %4691, float %4693, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4976 = extractvalue %dx.types.ResRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.ResRet.f32 %4975, 1
  %4978 = extractvalue %dx.types.ResRet.f32 %4975, 2
  %4979 = and i32 %4873, 65535
  %4980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4979)  ; LegacyF16ToF32(value)
  %4981 = fmul fast float %4976, %4574
  %4982 = fmul fast float %4977, %4575
  %4983 = fmul fast float %4978, %4576
  %4984 = and i32 %4589, 16384
  %4985 = icmp ne i32 %4984, 0
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = select i1 %4985, float %4987, float 1.000000e+00
  %4989 = fmul fast float %4988, %4980
  %4990 = fmul fast float %4981, %4989
  %4991 = fmul fast float %4982, %4989
  %4992 = fmul fast float %4983, %4989
  br label %4993

; <label>:4993                                    ; preds = %4972, %4944
  %4994 = phi float [ %4990, %4972 ], [ 0.000000e+00, %4944 ]
  %4995 = phi float [ %4991, %4972 ], [ 0.000000e+00, %4944 ]
  %4996 = phi float [ %4992, %4972 ], [ 0.000000e+00, %4944 ]
  %4997 = fsub fast float %4994, %4519
  %4998 = fsub fast float %4995, %4520
  %4999 = fsub fast float %4996, %4521
  %5000 = fmul fast float %4997, %4741
  %5001 = fmul fast float %4998, %4741
  %5002 = fmul fast float %4999, %4741
  %5003 = fadd fast float %5000, %4519
  %5004 = fadd fast float %5001, %4520
  %5005 = fadd fast float %5002, %4521
  br label %4638

; <label>:5006                                    ; preds = %4638
  br label %5007

; <label>:5007                                    ; preds = %5006, %4452
  %5008 = phi float [ 0.000000e+00, %4452 ], [ %4639, %5006 ]
  %5009 = phi float [ %4421, %4452 ], [ %4640, %5006 ]
  %5010 = phi float [ %4419, %4452 ], [ %4641, %5006 ]
  %5011 = phi float [ %4412, %4452 ], [ %4642, %5006 ]
  %5012 = phi float [ %4413, %4452 ], [ %4643, %5006 ]
  %5013 = phi float [ %4414, %4452 ], [ %4644, %5006 ]
  %5014 = phi float [ 0.000000e+00, %4452 ], [ %4645, %5006 ]
  %5015 = phi float [ 0.000000e+00, %4452 ], [ %4646, %5006 ]
  %5016 = phi float [ %4409, %4452 ], [ %4647, %5006 ]
  %5017 = phi float [ %4410, %4452 ], [ %4648, %5006 ]
  %5018 = phi float [ %4411, %4452 ], [ %4649, %5006 ]
  %5019 = phi float [ %4406, %4452 ], [ %4650, %5006 ]
  %5020 = phi float [ %4407, %4452 ], [ %4651, %5006 ]
  %5021 = phi float [ %4408, %4452 ], [ %4652, %5006 ]
  %5022 = phi float [ %4447, %4452 ], [ %4653, %5006 ]
  %5023 = phi float [ %4448, %4452 ], [ %4654, %5006 ]
  %5024 = phi float [ %4449, %4452 ], [ %4655, %5006 ]
  %5025 = phi float [ %4417, %4452 ], [ %4656, %5006 ]
  %5026 = phi float [ %4416, %4452 ], [ %4657, %5006 ]
  %5027 = phi float [ 0.000000e+00, %4452 ], [ %4658, %5006 ]
  %5028 = phi float [ %4415, %4452 ], [ %4659, %5006 ]
  %5029 = phi float [ %4403, %4452 ], [ %4660, %5006 ]
  %5030 = phi float [ %4404, %4452 ], [ %4661, %5006 ]
  %5031 = phi float [ %4405, %4452 ], [ %4662, %5006 ]
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %5022, float %5023, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 25, float %5032)  ; Rsqrt(value)
  %5034 = fmul fast float %5033, %5022
  %5035 = fmul fast float %5033, %5023
  %5036 = fmul fast float %5033, %5024
  %5037 = fadd fast float %5027, %1244
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5035, float %5036, float %5034, float %5035, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5040, %5034
  %5042 = fmul fast float %5040, %5035
  %5043 = fmul fast float %5040, %5036
  br label %5044

; <label>:5044                                    ; preds = %5007, %4400
  %5045 = phi float [ %5041, %5007 ], [ %4447, %4400 ]
  %5046 = phi float [ %5042, %5007 ], [ %4448, %4400 ]
  %5047 = phi float [ %5043, %5007 ], [ %4449, %4400 ]
  %5048 = phi float [ %5029, %5007 ], [ %4403, %4400 ]
  %5049 = phi float [ %5030, %5007 ], [ %4404, %4400 ]
  %5050 = phi float [ %5031, %5007 ], [ %4405, %4400 ]
  %5051 = phi float [ %5019, %5007 ], [ %4406, %4400 ]
  %5052 = phi float [ %5020, %5007 ], [ %4407, %4400 ]
  %5053 = phi float [ %5021, %5007 ], [ %4408, %4400 ]
  %5054 = phi float [ %5016, %5007 ], [ %4409, %4400 ]
  %5055 = phi float [ %5017, %5007 ], [ %4410, %4400 ]
  %5056 = phi float [ %5018, %5007 ], [ %4411, %4400 ]
  %5057 = phi float [ %5011, %5007 ], [ %4412, %4400 ]
  %5058 = phi float [ %5012, %5007 ], [ %4413, %4400 ]
  %5059 = phi float [ %5013, %5007 ], [ %4414, %4400 ]
  %5060 = phi float [ %5028, %5007 ], [ %4415, %4400 ]
  %5061 = phi float [ %5038, %5007 ], [ %1244, %4400 ]
  %5062 = phi float [ %5026, %5007 ], [ %4416, %4400 ]
  %5063 = phi float [ %5025, %5007 ], [ %4417, %4400 ]
  %5064 = phi float [ %5015, %5007 ], [ 0.000000e+00, %4400 ]
  %5065 = phi float [ %5014, %5007 ], [ 0.000000e+00, %4400 ]
  %5066 = phi float [ %5008, %5007 ], [ 0.000000e+00, %4400 ]
  %5067 = phi float [ %5009, %5007 ], [ %4421, %4400 ]
  %5068 = phi float [ %5010, %5007 ], [ %4419, %4400 ]
  %5069 = fadd fast float %5060, 0xBFB99999A0000000
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fmul fast float %5070, 0x3FF1C71C80000000
  %5072 = call float @dx.op.binary.f32(i32 36, float %5060, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5073 = fsub fast float 1.000000e+00, %5071
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fmul fast float %5074, %5048
  %5076 = fmul fast float %5074, %5049
  %5077 = fmul fast float %5074, %5050
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = fmul fast float %5071, %5048
  %5082 = fmul fast float %5071, %5049
  %5083 = fmul fast float %5071, %5050
  %5084 = fadd fast float %5081, %5072
  %5085 = fadd fast float %5082, %5072
  %5086 = fadd fast float %5083, %5072
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5092 = extractvalue %dx.types.ResRet.i32 %5091, 0
  %5093 = and i32 %5092, 1
  %5094 = icmp eq i32 %5093, 0
  br i1 %5094, label %5109, label %5095

; <label>:5095                                    ; preds = %5044
  %5096 = call float @dx.op.binary.f32(i32 35, float %5079, float %5080)  ; FMax(a,b)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5078, float %5096)  ; FMax(a,b)
  %5098 = fcmp fast ogt float %5097, 0.000000e+00
  %5099 = bitcast float %5097 to i32
  %5100 = sub nsw i32 2129859010, %5099
  %5101 = bitcast i32 %5100 to float
  %5102 = select i1 %5098, float %5101, float 0.000000e+00
  %5103 = fmul fast float %5078, %5054
  %5104 = fmul fast float %5079, %5055
  %5105 = fmul fast float %5080, %5056
  %5106 = fmul fast float %5103, %5102
  %5107 = fmul fast float %5104, %5102
  %5108 = fmul fast float %5105, %5102
  br label %5109

; <label>:5109                                    ; preds = %5095, %5044
  %5110 = phi float [ %5106, %5095 ], [ %5054, %5044 ]
  %5111 = phi float [ %5107, %5095 ], [ %5055, %5044 ]
  %5112 = phi float [ %5108, %5095 ], [ %5056, %5044 ]
  %5113 = call float @dx.op.binary.f32(i32 36, float %5057, float 1.270000e+02)  ; FMin(a,b)
  %5114 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.270000e+02)  ; FMin(a,b)
  %5115 = call float @dx.op.binary.f32(i32 36, float %5059, float 1.270000e+02)  ; FMin(a,b)
  %5116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.i32 %5116, 3
  %5118 = and i32 %5117, 8
  %5119 = icmp ne i32 %5118, 0
  %5120 = call float @dx.op.binary.f32(i32 35, float %5078, float %5048)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5079, float %5048)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5080, float %5048)  ; FMax(a,b)
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = select i1 %217, float %5048, float %5078
  %5125 = select i1 %217, float %5123, float %5079
  %5126 = select i1 %217, float 1.000000e+00, float %5080
  %5127 = select i1 %5119, float %5120, float %5124
  %5128 = select i1 %5119, float %5121, float %5125
  %5129 = select i1 %5119, float %5122, float %5126
  %5130 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = select i1 %217, float %5130, float %5110
  %5132 = select i1 %217, float %5130, float %5111
  %5133 = select i1 %217, float %5130, float %5112
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5136 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5137 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5138 = fadd fast float %5135, %155
  %5139 = fadd fast float %5136, %156
  %5140 = fadd fast float %5137, %157
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = fsub fast float %5138, %5142
  %5145 = fsub fast float %5139, %5143
  %5146 = fmul fast float %5144, %5144
  %5147 = fmul fast float %5145, %5145
  %5148 = fadd fast float %5146, %5147
  %5149 = call float @dx.op.unary.f32(i32 24, float %5148)  ; Sqrt(value)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5151 = fcmp fast olt float %5149, %5150
  br i1 %5151, label %5152, label %5219

; <label>:5152                                    ; preds = %5109
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5160 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5163 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5164 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5165 = fadd fast float %5162, %5138
  %5166 = fadd fast float %5163, %5139
  %5167 = fadd fast float %5164, %5140
  %5168 = fmul fast float %5165, %5154
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %5156, float %5168)  ; FMad(a,b,c)
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5158, float %5169)  ; FMad(a,b,c)
  %5171 = fmul fast float %5165, %5159
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %5160, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = fsub fast float %5170, %5162
  %5175 = fsub fast float %5173, %5163
  %5176 = fsub fast float %5174, %5142
  %5177 = fadd fast float %5176, %5150
  %5178 = fsub fast float %5175, %5143
  %5179 = fadd fast float %5178, %5150
  %5180 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5181 = fmul fast float %5177, %5180
  %5182 = fmul fast float %5179, %5180
  %5183 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = fsub fast float 1.000000e+00, %5183
  %5186 = fsub fast float 1.000000e+00, %5184
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = fcmp fast ugt float %5188, 0.000000e+00
  br i1 %5189, label %5190, label %5493

; <label>:5190                                    ; preds = %5152
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 2
  %5193 = fmul fast float %5192, %5188
  %5194 = extractvalue %dx.types.CBufRet.f32 %5191, 3
  %5195 = fadd fast float %5194, %5193
  %5196 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5197 = fadd fast float %5195, %5164
  %5198 = fmul fast float %5170, %5158
  %5199 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5161, float %5198)  ; FMad(a,b,c)
  %5200 = call float @dx.op.tertiary.f32(i32 46, float %5197, float %5196, float %5199)  ; FMad(a,b,c)
  %5201 = fsub fast float %5200, %5164
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5204 = fsub fast float %5201, %5203
  %5205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5206 = extractvalue %dx.types.ResRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.ResRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.ResRet.f32 %5205, 2
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = fadd fast float %5210, %5206
  %5214 = fmul fast float %5213, 0x3F847AE140000000
  %5215 = fadd fast float %5211, %5207
  %5216 = fmul fast float %5215, 0x3F847AE140000000
  %5217 = fadd fast float %5212, %5208
  %5218 = fmul fast float %5217, 0x3F847AE140000000
  br label %5493

; <label>:5219                                    ; preds = %5109
  %5220 = and i32 %193, 1
  %5221 = icmp eq i32 %5220, 0
  br i1 %5221, label %5493, label %5222

; <label>:5222                                    ; preds = %5219
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5230 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5233 = extractvalue %dx.types.CBufRet.f32 %5225, 3
  %5234 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5235 = fadd fast float %5232, %5138
  %5236 = fadd fast float %5233, %5139
  %5237 = fadd fast float %5234, %5140
  %5238 = fmul fast float %5235, %5224
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5226, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5228, float %5239)  ; FMad(a,b,c)
  %5241 = fmul fast float %5235, %5229
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5230, float %5241)  ; FMad(a,b,c)
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = fsub fast float %5240, %5232
  %5245 = fsub fast float %5243, %5233
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 1
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5250 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.i32 %5253, 0
  %5255 = extractvalue %dx.types.CBufRet.i32 %5253, 1
  %5256 = udiv i32 %5255, %5254
  %5257 = fsub fast float %5244, %5247
  %5258 = fsub fast float %5245, %5248
  %5259 = call float @dx.op.binary.f32(i32 35, float %5257, float 0.000000e+00)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float %5258, float 0.000000e+00)  ; FMax(a,b)
  %5261 = call float @dx.op.binary.f32(i32 36, float %5259, float %5249)  ; FMin(a,b)
  %5262 = call float @dx.op.binary.f32(i32 36, float %5260, float %5250)  ; FMin(a,b)
  %5263 = add i32 %5254, -1
  %5264 = add i32 %5256, -1
  %5265 = fmul fast float %5261, %5252
  %5266 = fmul fast float %5262, %5252
  %5267 = fptoui float %5265 to i32
  %5268 = fptoui float %5266 to i32
  %5269 = call i32 @dx.op.binary.i32(i32 40, i32 %5267, i32 %5263)  ; UMin(a,b)
  %5270 = call i32 @dx.op.binary.i32(i32 40, i32 %5268, i32 %5264)  ; UMin(a,b)
  %5271 = mul i32 %5270, %5254
  %5272 = add i32 %5271, %5269
  %5273 = shl i32 %5272, 2
  %5274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.i32 %5274, 0
  %5276 = icmp eq i32 %5275, -1
  br i1 %5276, label %5493, label %5277

; <label>:5277                                    ; preds = %5222
  %5278 = mul i32 %5275, 148
  %5279 = add i32 %5278, 4
  %5280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = add i32 %5278, 8
  %5283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = add i32 %5278, 36
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = add i32 %5278, 60
  %5289 = add i32 %5278, 92
  %5290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.i32 %5290, 0
  %5292 = add i32 %5278, 116
  %5293 = fsub fast float %5244, %5281
  %5294 = fsub fast float %5245, %5284
  %5295 = fmul fast float %5252, %5293
  %5296 = fmul fast float %5252, %5294
  %5297 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5299 = fsub fast float 1.000000e+00, %5298
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5302 = call float @dx.op.unary.f32(i32 83, float %5297)  ; DerivCoarseX(value)
  %5303 = call float @dx.op.unary.f32(i32 83, float %5299)  ; DerivCoarseX(value)
  %5304 = call float @dx.op.unary.f32(i32 84, float %5297)  ; DerivCoarseY(value)
  %5305 = call float @dx.op.unary.f32(i32 84, float %5299)  ; DerivCoarseY(value)
  %5306 = fmul fast float %5302, %5301
  %5307 = fmul fast float %5303, %5301
  %5308 = fmul fast float %5304, %5301
  %5309 = fmul fast float %5305, %5301
  %5310 = call float @dx.op.dot2.f32(i32 54, float %5308, float %5309, float %5308, float %5309)  ; Dot2(ax,ay,bx,by)
  %5311 = call float @dx.op.dot2.f32(i32 54, float %5306, float %5307, float %5306, float %5307)  ; Dot2(ax,ay,bx,by)
  %5312 = call float @dx.op.binary.f32(i32 35, float %5311, float %5310)  ; FMax(a,b)
  %5313 = call float @dx.op.unary.f32(i32 23, float %5312)  ; Log(value)
  %5314 = fmul fast float %5313, 5.000000e-01
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5317 = fadd fast float %5316, %5314
  %5318 = call float @dx.op.binary.f32(i32 35, float %5317, float 0.000000e+00)  ; FMax(a,b)
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5321 = fadd fast float %5320, %5318
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5324 = fadd fast float %5321, %5323
  %5325 = add i32 %5291, 0
  %5326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5325, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5327 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5326, i32 0)  ; GetDimensions(handle,mipLevel)
  %5328 = extractvalue %dx.types.Dimensions %5327, 0
  %5329 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5328)  ; FirstbitLo(value)
  %5330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.i32 %5330, 1
  %5332 = sub nsw i32 %5331, %5329
  %5333 = sitofp i32 %5332 to float
  %5334 = fsub fast float %5324, %5333
  %5335 = call float @dx.op.binary.f32(i32 35, float %5334, float 0.000000e+00)  ; FMax(a,b)
  %5336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5326, %dx.types.Handle %46, float %5297, float %5299, float %5287, float undef, i32 0, i32 0, i32 undef, float %5335)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = fcmp ule float %5337, 0x3FE0101020000000
  %5339 = extractvalue %dx.types.CBufRet.i32 %5330, 0
  %5340 = and i32 %5339, 128
  %5341 = icmp ne i32 %5340, 0
  %5342 = and i1 %5338, %5341
  br i1 %5342, label %5493, label %5343

; <label>:5343                                    ; preds = %5277
  %5344 = add i32 %5278, 20
  %5345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5344, i32 undef)  ; BufferLoad(srv,index,wot)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = add i32 %5278, 24
  %5348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5347, i32 undef)  ; BufferLoad(srv,index,wot)
  %5349 = extractvalue %dx.types.ResRet.f32 %5348, 0
  %5350 = add i32 %5278, 40
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5278, 96
  %5354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.i32 %5354, 0
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 2
  %5358 = fmul fast float %5357, %5297
  %5359 = fmul fast float %5357, %5299
  %5360 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5361 = fadd fast float %5358, %5360
  %5362 = fadd fast float %5359, %5360
  %5363 = add i32 %5355, 0
  %5364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5365 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5364, i32 0)  ; GetDimensions(handle,mipLevel)
  %5366 = extractvalue %dx.types.Dimensions %5365, 0
  %5367 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5366)  ; FirstbitLo(value)
  %5368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.i32 %5368, 1
  %5370 = sub nsw i32 %5369, %5367
  %5371 = sitofp i32 %5370 to float
  %5372 = fsub fast float %5321, %5371
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0.000000e+00)  ; FMax(a,b)
  %5374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5364, %dx.types.Handle %46, float %5361, float %5362, float %5352, float undef, i32 0, i32 0, i32 undef, float %5373)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = fmul fast float %5375, %5346
  %5377 = fadd fast float %5376, %5349
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5386 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5387 = fadd fast float %5383, %5244
  %5388 = fadd fast float %5385, %5245
  %5389 = fadd fast float %5377, %5386
  %5390 = fmul fast float %5387, %5379
  %5391 = call float @dx.op.tertiary.f32(i32 46, float %5388, float %5380, float %5390)  ; FMad(a,b,c)
  %5392 = call float @dx.op.tertiary.f32(i32 46, float %5389, float %5381, float %5391)  ; FMad(a,b,c)
  %5393 = fsub fast float %5392, %5386
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5396 = fsub fast float %5393, %5395
  %5397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.i32 %5397, 0
  %5399 = call i32 @dx.op.binary.i32(i32 40, i32 %5275, i32 %5398)  ; UMin(a,b)
  %5400 = mul i32 %5399, 36
  %5401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.i32 %5401, 0
  %5403 = add i32 %5400, 4
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = fmul fast float %5405, %5297
  %5407 = fmul fast float %5405, %5299
  %5408 = extractvalue %dx.types.CBufRet.f32 %5404, 1
  %5409 = fadd fast float %5406, %5408
  %5410 = fadd fast float %5407, %5408
  %5411 = icmp eq i32 %5402, 0
  br i1 %5411, label %5480, label %5412

; <label>:5412                                    ; preds = %5343
  br label %5413

; <label>:5413                                    ; preds = %5470, %5412
  %5414 = phi float [ %5471, %5470 ], [ 0.000000e+00, %5412 ]
  %5415 = phi float [ %5472, %5470 ], [ 0.000000e+00, %5412 ]
  %5416 = phi float [ %5473, %5470 ], [ 0.000000e+00, %5412 ]
  %5417 = phi float [ %5474, %5470 ], [ 0.000000e+00, %5412 ]
  %5418 = phi float [ %5475, %5470 ], [ 0.000000e+00, %5412 ]
  %5419 = phi float [ %5476, %5470 ], [ 0.000000e+00, %5412 ]
  %5420 = phi i32 [ %5477, %5470 ], [ 0, %5412 ]
  %5421 = shl i32 %5420, 2
  %5422 = add i32 %5288, %5421
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = add i32 %5292, %5421
  %5426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.i32 %5426, 0
  %5428 = add i32 %5427, 0
  %5429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5428, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5430 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5429, i32 0)  ; GetDimensions(handle,mipLevel)
  %5431 = extractvalue %dx.types.Dimensions %5430, 0
  %5432 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5431)  ; FirstbitLo(value)
  %5433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.i32 %5433, 1
  %5435 = sub nsw i32 %5434, %5432
  %5436 = sitofp i32 %5435 to float
  %5437 = fsub fast float %5321, %5436
  %5438 = call float @dx.op.binary.f32(i32 35, float %5437, float 0.000000e+00)  ; FMax(a,b)
  %5439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5429, %dx.types.Handle %46, float %5409, float %5410, float %5424, float undef, i32 0, i32 0, i32 undef, float %5438)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = fcmp fast ogt float %5440, 0.000000e+00
  br i1 %5441, label %5442, label %5470

; <label>:5442                                    ; preds = %5413
  %5443 = add i32 %5403, %5421
  %5444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.i32 %5444, 0
  %5446 = and i32 %5445, 32767
  %5447 = mul nuw nsw i32 %5446, 928
  %5448 = add nuw nsw i32 %5447, 48
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = add nuw nsw i32 %5447, 60
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = fmul fast float %5450, %5440
  %5459 = fmul fast float %5451, %5440
  %5460 = fmul fast float %5452, %5440
  %5461 = fadd fast float %5458, %5414
  %5462 = fadd fast float %5459, %5415
  %5463 = fadd fast float %5460, %5416
  %5464 = fmul fast float %5455, %5440
  %5465 = fmul fast float %5456, %5440
  %5466 = fmul fast float %5457, %5440
  %5467 = fadd fast float %5464, %5417
  %5468 = fadd fast float %5465, %5418
  %5469 = fadd fast float %5466, %5419
  br label %5470

; <label>:5470                                    ; preds = %5442, %5413
  %5471 = phi float [ %5461, %5442 ], [ %5414, %5413 ]
  %5472 = phi float [ %5462, %5442 ], [ %5415, %5413 ]
  %5473 = phi float [ %5463, %5442 ], [ %5416, %5413 ]
  %5474 = phi float [ %5467, %5442 ], [ %5417, %5413 ]
  %5475 = phi float [ %5468, %5442 ], [ %5418, %5413 ]
  %5476 = phi float [ %5469, %5442 ], [ %5419, %5413 ]
  %5477 = add nuw i32 %5420, 1
  %5478 = icmp eq i32 %5477, %5402
  br i1 %5478, label %5479, label %5413

; <label>:5479                                    ; preds = %5470
  br label %5480

; <label>:5480                                    ; preds = %5479, %5343
  %5481 = phi float [ 0.000000e+00, %5343 ], [ %5471, %5479 ]
  %5482 = phi float [ 0.000000e+00, %5343 ], [ %5472, %5479 ]
  %5483 = phi float [ 0.000000e+00, %5343 ], [ %5473, %5479 ]
  %5484 = phi float [ 0.000000e+00, %5343 ], [ %5474, %5479 ]
  %5485 = phi float [ 0.000000e+00, %5343 ], [ %5475, %5479 ]
  %5486 = phi float [ 0.000000e+00, %5343 ], [ %5476, %5479 ]
  %5487 = fadd fast float %5484, %5481
  %5488 = fmul fast float %5487, 0x3F847AE140000000
  %5489 = fadd fast float %5485, %5482
  %5490 = fmul fast float %5489, 0x3F847AE140000000
  %5491 = fadd fast float %5486, %5483
  %5492 = fmul fast float %5491, 0x3F847AE140000000
  br label %5493

; <label>:5493                                    ; preds = %5480, %5277, %5222, %5219, %5190, %5152
  %5494 = phi float [ %5204, %5190 ], [ -1.310720e+05, %5152 ], [ %5396, %5480 ], [ -1.310720e+05, %5222 ], [ -1.310720e+05, %5277 ], [ -1.310720e+05, %5219 ]
  %5495 = phi float [ %5214, %5190 ], [ 0.000000e+00, %5152 ], [ %5488, %5480 ], [ 0.000000e+00, %5222 ], [ 0.000000e+00, %5277 ], [ 0.000000e+00, %5219 ]
  %5496 = phi float [ %5216, %5190 ], [ 0.000000e+00, %5152 ], [ %5490, %5480 ], [ 0.000000e+00, %5222 ], [ 0.000000e+00, %5277 ], [ 0.000000e+00, %5219 ]
  %5497 = phi float [ %5218, %5190 ], [ 0.000000e+00, %5152 ], [ %5492, %5480 ], [ 0.000000e+00, %5222 ], [ 0.000000e+00, %5277 ], [ 0.000000e+00, %5219 ]
  %5498 = phi i1 [ true, %5190 ], [ false, %5152 ], [ true, %5480 ], [ false, %5222 ], [ false, %5277 ], [ false, %5219 ]
  %5499 = and i32 %193, 3
  %5500 = icmp eq i32 %5499, 1
  %5501 = select i1 %5500, float 1.000000e+00, float 0.000000e+00
  %5502 = fsub fast float %5494, %157
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5504 = select i1 %5498, float %5503, float 1.000000e+00
  %5505 = fmul fast float %5504, %5501
  %5506 = icmp eq i32 %5499, 3
  %5507 = select i1 %5506, float 1.000000e+00, float %5505
  %5508 = call float @dx.op.binary.f32(i32 35, float %5066, float %5507)  ; FMax(a,b)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = fcmp fast une float %5509, 0.000000e+00
  %5511 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.unary.f32(i32 25, float %5511)  ; Rsqrt(value)
  br i1 %5510, label %5520, label %5513

; <label>:5513                                    ; preds = %5493
  %5514 = fmul fast float %5512, %155
  %5515 = fmul fast float %5512, %156
  %5516 = fmul fast float %5512, %157
  %5517 = fsub fast float -0.000000e+00, %5514
  %5518 = fsub fast float -0.000000e+00, %5515
  %5519 = fsub fast float -0.000000e+00, %5516
  br label %5688

; <label>:5520                                    ; preds = %5493
  %5521 = fmul fast float %155, %5512
  %5522 = fsub fast float -0.000000e+00, %5521
  %5523 = fmul fast float %156, %5512
  %5524 = fsub fast float -0.000000e+00, %5523
  %5525 = fmul fast float %157, %5512
  %5526 = fsub fast float -0.000000e+00, %5525
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5524, float %5526, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5509, 2.500000e+00
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fmul fast float %5509, 0x4013FFFFE0000000
  %5531 = fadd fast float %5530, 0xBFFFFFFFE0000000
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %5509, 0x4004000020000000
  %5534 = fadd fast float %5533, 0xBFF8000040000000
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5529)  ; Saturate(value)
  %5537 = fmul fast float %5069, 1.000000e+01
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5538, 2.000000e+00
  %5540 = fsub fast float 3.000000e+00, %5539
  %5541 = fmul fast float %5538, %5538
  %5542 = fmul fast float %5541, %5540
  %5543 = fsub fast float 1.000000e+00, %5542
  %5544 = fsub fast float 0x3FE3333340000000, %5090
  %5545 = fmul fast float %5544, 0x400AAAAAA0000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5543, %5546
  %5548 = fmul fast float %5127, 0x3FEA2B8620000000
  %5549 = fmul fast float %5128, 0x3FEA2B8620000000
  %5550 = fmul fast float %5129, 0x3FEA2B8620000000
  %5551 = fadd fast float %5548, 0x3FC81DFBA0000000
  %5552 = fmul fast float %5551, %5127
  %5553 = fadd fast float %5552, 0x3F910E6020000000
  %5554 = fadd fast float %5549, 0x3FC81DFBA0000000
  %5555 = fmul fast float %5554, %5128
  %5556 = fadd fast float %5555, 0x3F910E6020000000
  %5557 = fadd fast float %5550, 0x3FC81DFBA0000000
  %5558 = fmul fast float %5557, %5129
  %5559 = fadd fast float %5558, 0x3F910E6020000000
  %5560 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5563 = fsub fast float %5560, %5127
  %5564 = fsub fast float %5561, %5128
  %5565 = fsub fast float %5562, %5129
  %5566 = fmul fast float %5563, %5536
  %5567 = fmul fast float %5566, %5547
  %5568 = fmul fast float %5564, %5536
  %5569 = fmul fast float %5568, %5547
  %5570 = fmul fast float %5565, %5536
  %5571 = fmul fast float %5570, %5547
  %5572 = fadd fast float %5567, %5127
  %5573 = fadd fast float %5569, %5128
  %5574 = fadd fast float %5571, %5129
  %5575 = fmul fast float %5063, %5063
  %5576 = fmul fast float %5575, %5575
  %5577 = fadd fast float %5532, 1.000000e+00
  %5578 = fsub fast float %5577, %5547
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = fsub fast float 1.000000e+00, %5576
  %5583 = call float @dx.op.binary.f32(i32 36, float %5579, float %5582)  ; FMin(a,b)
  %5584 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5583, float %5584)  ; FMax(a,b)
  %5586 = fadd fast float %5581, 0xBFE4CCCCC0000000
  %5587 = fmul fast float %5586, 0x4006DB6DA0000000
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fmul fast float %5588, 2.000000e+00
  %5590 = fsub fast float 3.000000e+00, %5589
  %5591 = bitcast float %5087 to i32
  %5592 = ashr i32 %5591, 1
  %5593 = add nsw i32 %5592, 532487669
  %5594 = bitcast i32 %5593 to float
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = bitcast float %5595 to i32
  %5597 = sub nsw i32 2129859010, %5596
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5598, 2.000000e+00
  %5600 = bitcast float %5088 to i32
  %5601 = ashr i32 %5600, 1
  %5602 = add nsw i32 %5601, 532487669
  %5603 = bitcast i32 %5602 to float
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = bitcast float %5604 to i32
  %5606 = sub nsw i32 2129859010, %5605
  %5607 = bitcast i32 %5606 to float
  %5608 = fmul fast float %5607, 2.000000e+00
  %5609 = bitcast float %5089 to i32
  %5610 = ashr i32 %5609, 1
  %5611 = add nsw i32 %5610, 532487669
  %5612 = bitcast i32 %5611 to float
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = bitcast float %5613 to i32
  %5615 = sub nsw i32 2129859010, %5614
  %5616 = bitcast i32 %5615 to float
  %5617 = fmul fast float %5616, 2.000000e+00
  %5618 = fsub fast float 0x4002A9FBE0000000, %5599
  %5619 = fadd fast float %5599, 0x3FD54FDF00000000
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, %5618
  %5624 = fmul fast float %5623, %5623
  %5625 = fsub fast float 0x4002A9FBE0000000, %5608
  %5626 = fadd fast float %5608, 0x3FD54FDF00000000
  %5627 = bitcast float %5626 to i32
  %5628 = sub nsw i32 2129859010, %5627
  %5629 = bitcast i32 %5628 to float
  %5630 = fmul fast float %5629, %5625
  %5631 = fmul fast float %5630, %5630
  %5632 = fsub fast float 0x4002A9FBE0000000, %5617
  %5633 = fadd fast float %5617, 0x3FD54FDF00000000
  %5634 = bitcast float %5633 to i32
  %5635 = sub nsw i32 2129859010, %5634
  %5636 = bitcast i32 %5635 to float
  %5637 = fmul fast float %5636, %5632
  %5638 = fmul fast float %5637, %5637
  %5639 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5624)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5631)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5638)  ; FMax(a,b)
  %5642 = fsub fast float 1.000000e+00, %5527
  %5643 = fadd fast float %5642, %5543
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fsub fast float 1.000000e+00, %5507
  %5646 = fmul fast float %5585, %5645
  %5647 = fmul fast float %5588, %5588
  %5648 = fmul fast float %5647, %5646
  %5649 = fmul fast float %5648, %5590
  %5650 = fmul fast float %5645, 0xBFE99999A0000000
  %5651 = fmul fast float %5650, %5536
  %5652 = fmul fast float %5651, %5547
  %5653 = fadd fast float %5652, 1.000000e+00
  %5654 = fadd fast float %5090, -1.000000e+00
  %5655 = fmul fast float %5653, %5654
  %5656 = fadd fast float %5655, 1.000000e+00
  %5657 = fsub fast float %5639, %5087
  %5658 = fsub fast float %5640, %5088
  %5659 = fsub fast float %5641, %5089
  %5660 = fmul fast float %5649, %5657
  %5661 = fmul fast float %5649, %5658
  %5662 = fmul fast float %5649, %5659
  %5663 = fadd fast float %5660, %5087
  %5664 = fadd fast float %5661, %5088
  %5665 = fadd fast float %5662, %5089
  %5666 = fsub fast float %107, %5045
  %5667 = fsub fast float %108, %5046
  %5668 = fsub fast float %109, %5047
  %5669 = fmul fast float %5649, %5666
  %5670 = fmul fast float %5649, %5667
  %5671 = fmul fast float %5649, %5668
  %5672 = fadd fast float %5669, %5045
  %5673 = fadd fast float %5670, %5046
  %5674 = fadd fast float %5671, %5047
  %5675 = fmul fast float %5649, %5644
  %5676 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = fmul fast float %5675, %5677
  %5679 = fadd fast float %5678, %5676
  %5680 = fsub fast float 1.000000e+00, %5063
  %5681 = fmul fast float %5649, %5680
  %5682 = fadd fast float %5681, %5063
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5673, float %5674, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = call float @dx.op.unary.f32(i32 25, float %5683)  ; Rsqrt(value)
  %5685 = fmul fast float %5672, %5684
  %5686 = fmul fast float %5673, %5684
  %5687 = fmul fast float %5674, %5684
  br label %5688

; <label>:5688                                    ; preds = %5520, %5513
  %5689 = phi float [ %5519, %5513 ], [ %5526, %5520 ]
  %5690 = phi float [ %5518, %5513 ], [ %5524, %5520 ]
  %5691 = phi float [ %5517, %5513 ], [ %5522, %5520 ]
  %5692 = phi float [ %5516, %5513 ], [ %5525, %5520 ]
  %5693 = phi float [ %5515, %5513 ], [ %5523, %5520 ]
  %5694 = phi float [ %5514, %5513 ], [ %5521, %5520 ]
  %5695 = phi float [ %5127, %5513 ], [ %5572, %5520 ]
  %5696 = phi float [ %5128, %5513 ], [ %5573, %5520 ]
  %5697 = phi float [ %5129, %5513 ], [ %5574, %5520 ]
  %5698 = phi float [ %5087, %5513 ], [ %5663, %5520 ]
  %5699 = phi float [ %5088, %5513 ], [ %5664, %5520 ]
  %5700 = phi float [ %5089, %5513 ], [ %5665, %5520 ]
  %5701 = phi float [ %5045, %5513 ], [ %5685, %5520 ]
  %5702 = phi float [ %5046, %5513 ], [ %5686, %5520 ]
  %5703 = phi float [ %5047, %5513 ], [ %5687, %5520 ]
  %5704 = phi float [ %5090, %5513 ], [ %5679, %5520 ]
  %5705 = phi float [ %5063, %5513 ], [ %5682, %5520 ]
  %5706 = fsub fast float -0.000000e+00, %157
  %5707 = select i1 %217, float 0.000000e+00, float %5700
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %5691, float %5690, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5693, float %5692, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = fmul fast float %5710, 2.000000e+00
  %5712 = fmul fast float %5711, %5701
  %5713 = fmul fast float %5711, %5702
  %5714 = fmul fast float %5711, %5703
  %5715 = fsub fast float %5694, %5712
  %5716 = fsub fast float %5693, %5713
  %5717 = fsub fast float %5692, %5714
  %5718 = call float @dx.op.binary.f32(i32 36, float %5705, float 1.000000e+00)  ; FMin(a,b)
  %5719 = fsub fast float 1.000000e+00, %5705
  %5720 = bitcast float %5719 to i32
  %5721 = sub nsw i32 2129859010, %5720
  %5722 = bitcast i32 %5721 to float
  %5723 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5724 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = fcmp fast oeq float %5724, 0.000000e+00
  %5726 = fcmp fast oeq float %5723, 0.000000e+00
  %5727 = or i1 %5726, %5725
  br i1 %5727, label %5757, label %5728

; <label>:5728                                    ; preds = %5688
  %5729 = fsub fast float -0.000000e+00, %74
  %5730 = fsub fast float -0.000000e+00, %72
  %5731 = call float @dx.op.unary.f32(i32 24, float %5724)  ; Sqrt(value)
  %5732 = fdiv fast float %5731, %5723
  %5733 = fcmp fast ogt float %5732, 0x3FFB6F8900000000
  %5734 = select i1 %5733, float 0x3FFB6F8900000000, float %5732
  %5735 = fmul fast float %5734, 0x3FE8A23460000000
  %5736 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5734, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5738 = fmul fast float %5736, %5723
  %5739 = fmul fast float %5737, 0x3FF279A740000000
  %5740 = fadd fast float %5739, -1.000000e+00
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %73, float %5729, float %5730, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = call float @dx.op.unary.f32(i32 25, float %5741)  ; Rsqrt(value)
  %5743 = fmul fast float %5742, %5729
  %5744 = fmul fast float %5742, %5730
  %5745 = fmul fast float %5742, %73
  %5746 = fmul fast float %5740, %5740
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = fmul fast float %5737, 0x40005F8BE0000000
  %5749 = fsub fast float 0x400C5BF8A0000000, %5748
  %5750 = fdiv fast float %5738, %5749
  %5751 = fmul fast float %5750, 0x3FEE31C3C0000000
  %5752 = fmul fast float %5751, %5747
  %5753 = fmul fast float %5737, 0x3FDACB7480000000
  %5754 = fadd fast float %5753, 0xBFD7347680000000
  %5755 = fmul fast float %5754, %5750
  %5756 = fmul fast float %5755, %5747
  br label %5757

; <label>:5757                                    ; preds = %5728, %5688
  %5758 = phi float [ %5743, %5728 ], [ 0.000000e+00, %5688 ]
  %5759 = phi float [ %5744, %5728 ], [ 0.000000e+00, %5688 ]
  %5760 = phi float [ %5745, %5728 ], [ 0.000000e+00, %5688 ]
  %5761 = phi float [ %5752, %5728 ], [ 0.000000e+00, %5688 ]
  %5762 = phi float [ %5756, %5728 ], [ 0.000000e+00, %5688 ]
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fmul fast float %5763, 0x3FDF454380000000
  %5765 = fmul fast float %5763, %5763
  %5766 = fmul fast float %5765, 0x3FEE471020000000
  %5767 = fadd fast float %5766, 0xBFD42F6020000000
  %5768 = fmul fast float %5723, 0x3FD20DD760000000
  %5769 = fmul fast float %5767, %5762
  %5770 = fadd fast float %5769, %5768
  %5771 = fmul fast float %5764, %5761
  %5772 = fadd fast float %5770, %5771
  %5773 = fsub fast float %5770, %5771
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %5760, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = fmul fast float %5774, 0x3FDF454380000000
  %5776 = fmul fast float %5774, %5774
  %5777 = fmul fast float %5776, 0x3FEE471020000000
  %5778 = fadd fast float %5777, 0xBFD42F6020000000
  %5779 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5761, float %5762, float 0x3FD20DD760000000, float %5775, float %5778)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5781 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = fcmp fast oeq float %5781, 0.000000e+00
  %5783 = fcmp fast oeq float %5780, 0.000000e+00
  %5784 = or i1 %5783, %5782
  br i1 %5784, label %5814, label %5785

; <label>:5785                                    ; preds = %5757
  %5786 = fsub fast float -0.000000e+00, %70
  %5787 = fsub fast float -0.000000e+00, %68
  %5788 = call float @dx.op.unary.f32(i32 24, float %5781)  ; Sqrt(value)
  %5789 = fdiv fast float %5788, %5780
  %5790 = fcmp fast ogt float %5789, 0x3FFB6F8900000000
  %5791 = select i1 %5790, float 0x3FFB6F8900000000, float %5789
  %5792 = fmul fast float %5791, 0x3FE8A23460000000
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = call float @dx.op.binary.f32(i32 35, float %5791, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5795 = fmul fast float %5793, %5780
  %5796 = fmul fast float %5794, 0x3FF279A740000000
  %5797 = fadd fast float %5796, -1.000000e+00
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %69, float %5786, float %5787, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.unary.f32(i32 25, float %5798)  ; Rsqrt(value)
  %5800 = fmul fast float %5799, %5786
  %5801 = fmul fast float %5799, %5787
  %5802 = fmul fast float %5799, %69
  %5803 = fmul fast float %5797, %5797
  %5804 = fsub fast float 1.000000e+00, %5803
  %5805 = fmul fast float %5794, 0x40005F8BE0000000
  %5806 = fsub fast float 0x400C5BF8A0000000, %5805
  %5807 = fdiv fast float %5795, %5806
  %5808 = fmul fast float %5807, 0x3FEE31C3C0000000
  %5809 = fmul fast float %5808, %5804
  %5810 = fmul fast float %5794, 0x3FDACB7480000000
  %5811 = fadd fast float %5810, 0xBFD7347680000000
  %5812 = fmul fast float %5811, %5807
  %5813 = fmul fast float %5812, %5804
  br label %5814

; <label>:5814                                    ; preds = %5785, %5757
  %5815 = phi float [ %5800, %5785 ], [ 0.000000e+00, %5757 ]
  %5816 = phi float [ %5801, %5785 ], [ 0.000000e+00, %5757 ]
  %5817 = phi float [ %5802, %5785 ], [ 0.000000e+00, %5757 ]
  %5818 = phi float [ %5809, %5785 ], [ 0.000000e+00, %5757 ]
  %5819 = phi float [ %5813, %5785 ], [ 0.000000e+00, %5757 ]
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fmul fast float %5820, 0x3FDF454380000000
  %5822 = fmul fast float %5820, %5820
  %5823 = fmul fast float %5822, 0x3FEE471020000000
  %5824 = fadd fast float %5823, 0xBFD42F6020000000
  %5825 = fmul fast float %5780, 0x3FD20DD760000000
  %5826 = fmul fast float %5824, %5819
  %5827 = fadd fast float %5826, %5825
  %5828 = fmul fast float %5821, %5818
  %5829 = fadd fast float %5827, %5828
  %5830 = fsub fast float %5827, %5828
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fmul fast float %5831, 0x3FDF454380000000
  %5833 = fmul fast float %5831, %5831
  %5834 = fmul fast float %5833, 0x3FEE471020000000
  %5835 = fadd fast float %5834, 0xBFD42F6020000000
  %5836 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5818, float %5819, float 0x3FD20DD760000000, float %5832, float %5835)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5838 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fcmp fast oeq float %5838, 0.000000e+00
  %5840 = fcmp fast oeq float %5837, 0.000000e+00
  %5841 = or i1 %5840, %5839
  br i1 %5841, label %5871, label %5842

; <label>:5842                                    ; preds = %5814
  %5843 = fsub fast float -0.000000e+00, %66
  %5844 = fsub fast float -0.000000e+00, %64
  %5845 = call float @dx.op.unary.f32(i32 24, float %5838)  ; Sqrt(value)
  %5846 = fdiv fast float %5845, %5837
  %5847 = fcmp fast ogt float %5846, 0x3FFB6F8900000000
  %5848 = select i1 %5847, float 0x3FFB6F8900000000, float %5846
  %5849 = fmul fast float %5848, 0x3FE8A23460000000
  %5850 = call float @dx.op.unary.f32(i32 7, float %5849)  ; Saturate(value)
  %5851 = call float @dx.op.binary.f32(i32 35, float %5848, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5852 = fmul fast float %5850, %5837
  %5853 = fmul fast float %5851, 0x3FF279A740000000
  %5854 = fadd fast float %5853, -1.000000e+00
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %65, float %5843, float %5844, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.unary.f32(i32 25, float %5855)  ; Rsqrt(value)
  %5857 = fmul fast float %5856, %5843
  %5858 = fmul fast float %5856, %5844
  %5859 = fmul fast float %5856, %65
  %5860 = fmul fast float %5854, %5854
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5851, 0x40005F8BE0000000
  %5863 = fsub fast float 0x400C5BF8A0000000, %5862
  %5864 = fdiv fast float %5852, %5863
  %5865 = fmul fast float %5864, 0x3FEE31C3C0000000
  %5866 = fmul fast float %5865, %5861
  %5867 = fmul fast float %5851, 0x3FDACB7480000000
  %5868 = fadd fast float %5867, 0xBFD7347680000000
  %5869 = fmul fast float %5868, %5864
  %5870 = fmul fast float %5869, %5861
  br label %5871

; <label>:5871                                    ; preds = %5842, %5814
  %5872 = phi float [ %5857, %5842 ], [ 0.000000e+00, %5814 ]
  %5873 = phi float [ %5858, %5842 ], [ 0.000000e+00, %5814 ]
  %5874 = phi float [ %5859, %5842 ], [ 0.000000e+00, %5814 ]
  %5875 = phi float [ %5866, %5842 ], [ 0.000000e+00, %5814 ]
  %5876 = phi float [ %5870, %5842 ], [ 0.000000e+00, %5814 ]
  %5877 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = fmul fast float %5877, 0x3FDF454380000000
  %5879 = fmul fast float %5877, %5877
  %5880 = fmul fast float %5879, 0x3FEE471020000000
  %5881 = fadd fast float %5880, 0xBFD42F6020000000
  %5882 = fmul fast float %5837, 0x3FD20DD760000000
  %5883 = fmul fast float %5881, %5876
  %5884 = fadd fast float %5883, %5882
  %5885 = fmul fast float %5878, %5875
  %5886 = fadd fast float %5884, %5885
  %5887 = fsub fast float %5884, %5885
  %5888 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = fmul fast float %5888, 0x3FDF454380000000
  %5890 = fmul fast float %5888, %5888
  %5891 = fmul fast float %5890, 0x3FEE471020000000
  %5892 = fadd fast float %5891, 0xBFD42F6020000000
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5875, float %5876, float 0x3FD20DD760000000, float %5889, float %5892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5772, float 0.000000e+00)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5829, float 0.000000e+00)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5886, float 0.000000e+00)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5887, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5779, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5836, float 0.000000e+00)  ; FMax(a,b)
  %5902 = call float @dx.op.binary.f32(i32 35, float %5893, float 0.000000e+00)  ; FMax(a,b)
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = call float @dx.op.binary.f32(i32 36, float %5695, float %5904)  ; FMin(a,b)
  %5906 = fsub fast float 1.000000e+00, %5718
  %5907 = fmul fast float %5905, %5906
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = bitcast float %5908 to i32
  %5910 = sub nsw i32 2129859010, %5909
  %5911 = bitcast i32 %5910 to float
  %5912 = call float @dx.op.binary.f32(i32 36, float %5696, float %5904)  ; FMin(a,b)
  %5913 = fmul fast float %5912, %5906
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = bitcast float %5914 to i32
  %5916 = sub nsw i32 2129859010, %5915
  %5917 = bitcast i32 %5916 to float
  %5918 = call float @dx.op.binary.f32(i32 36, float %5697, float %5904)  ; FMin(a,b)
  %5919 = fmul fast float %5918, %5906
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = bitcast float %5920 to i32
  %5922 = sub nsw i32 2129859010, %5921
  %5923 = bitcast i32 %5922 to float
  %5924 = fmul fast float %5894, %5718
  %5925 = fmul fast float %5924, %5911
  %5926 = fmul fast float %5895, %5718
  %5927 = fmul fast float %5926, %5917
  %5928 = fmul fast float %5896, %5718
  %5929 = fmul fast float %5928, %5923
  %5930 = call float @dx.op.binary.f32(i32 36, float %5698, float %5904)  ; FMin(a,b)
  %5931 = fmul fast float %5930, %5906
  %5932 = fsub fast float 1.000000e+00, %5931
  %5933 = bitcast float %5932 to i32
  %5934 = sub nsw i32 2129859010, %5933
  %5935 = bitcast i32 %5934 to float
  %5936 = call float @dx.op.binary.f32(i32 36, float %5699, float %5904)  ; FMin(a,b)
  %5937 = fmul fast float %5936, %5906
  %5938 = fsub fast float 1.000000e+00, %5937
  %5939 = bitcast float %5938 to i32
  %5940 = sub nsw i32 2129859010, %5939
  %5941 = bitcast i32 %5940 to float
  %5942 = call float @dx.op.binary.f32(i32 36, float %5707, float %5904)  ; FMin(a,b)
  %5943 = fmul fast float %5942, %5906
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = bitcast float %5944 to i32
  %5946 = sub nsw i32 2129859010, %5945
  %5947 = bitcast i32 %5946 to float
  %5948 = fmul fast float %5900, %5718
  %5949 = fmul fast float %5948, %5935
  %5950 = fmul fast float %5901, %5718
  %5951 = fmul fast float %5950, %5941
  %5952 = fmul fast float %5902, %5718
  %5953 = fmul fast float %5952, %5947
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5927, float %5929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = select i1 %217, float 0.000000e+00, float %5925
  %5956 = select i1 %217, float %5954, float %5927
  %5957 = select i1 %217, float 0.000000e+00, float %5929
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = select i1 %217, float 0.000000e+00, float %5897
  %5960 = select i1 %217, float %5958, float %5898
  %5961 = select i1 %217, float 0.000000e+00, float %5899
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5951, float %5953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = select i1 %217, float 0.000000e+00, float %5949
  %5964 = select i1 %217, float %5962, float %5951
  %5965 = select i1 %217, float 0.000000e+00, float %5953
  %5966 = fmul fast float %4418, %4418
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = fmul fast float %5709, 9.843750e-01
  %5969 = fmul fast float %5704, 9.843750e-01
  %5970 = fadd fast float %5968, 7.812500e-03
  %5971 = fadd fast float %5969, 7.812500e-03
  %5972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5970, float %5971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.ResRet.f32 %5972, 2
  %5976 = extractvalue %dx.types.ResRet.f32 %5972, 3
  %5977 = fsub fast float 1.000000e+00, %5967
  %5978 = fsub fast float %5975, %5973
  %5979 = fsub fast float %5976, %5974
  %5980 = fmul fast float %5978, %5977
  %5981 = fmul fast float %5979, %5977
  %5982 = fadd fast float %5980, %5973
  %5983 = fadd fast float %5981, %5974
  %5984 = fmul fast float %5982, %5698
  %5985 = fmul fast float %5982, %5699
  %5986 = fmul fast float %5982, %5707
  %5987 = fadd fast float %5984, %5983
  %5988 = fadd fast float %5985, %5983
  %5989 = fadd fast float %5986, %5983
  %5990 = fcmp fast ogt float %5064, 0.000000e+00
  br i1 %5990, label %5991, label %6017

; <label>:5991                                    ; preds = %5871
  %5992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %5709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5993 = extractvalue %dx.types.ResRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5992, 2
  %5996 = fadd fast float %5993, -5.000000e-01
  %5997 = fadd fast float %5994, -5.000000e-01
  %5998 = fadd fast float %5995, -5.000000e-01
  %5999 = fsub fast float 1.000000e+00, %5698
  %6000 = fsub fast float 1.000000e+00, %5699
  %6001 = fsub fast float 1.000000e+00, %5707
  %6002 = fmul fast float %5698, 4.000000e+00
  %6003 = fmul fast float %6002, %5999
  %6004 = fmul fast float %6003, %5996
  %6005 = fmul fast float %5699, 4.000000e+00
  %6006 = fmul fast float %6005, %6000
  %6007 = fmul fast float %6006, %5997
  %6008 = fmul fast float %5707, 4.000000e+00
  %6009 = fmul fast float %6008, %6001
  %6010 = fmul fast float %6009, %5998
  %6011 = fadd fast float %6004, %5987
  %6012 = fadd fast float %6007, %5988
  %6013 = fadd fast float %6010, %5989
  %6014 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6015 = call float @dx.op.unary.f32(i32 7, float %6012)  ; Saturate(value)
  %6016 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  br label %6017

; <label>:6017                                    ; preds = %5991, %5871
  %6018 = phi float [ %6014, %5991 ], [ %5987, %5871 ]
  %6019 = phi float [ %6015, %5991 ], [ %5988, %5871 ]
  %6020 = phi float [ %6016, %5991 ], [ %5989, %5871 ]
  %6021 = call float @dx.op.binary.f32(i32 35, float %6019, float %6020)  ; FMax(a,b)
  %6022 = call float @dx.op.binary.f32(i32 35, float %6018, float %6021)  ; FMax(a,b)
  %6023 = fsub fast float 1.000000e+00, %6022
  %6024 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = fcmp fast ogt float %6024, 0x3E7FF19E20000000
  %6026 = fdiv fast float 1.000000e+00, %6024
  %6027 = select i1 %6025, float %6026, float 0.000000e+00
  %6028 = fmul fast float %6027, %5695
  %6029 = fmul fast float %6027, %5696
  %6030 = fmul fast float %6027, %5697
  %6031 = fadd fast float %6028, -1.000000e+00
  %6032 = fadd fast float %6029, -1.000000e+00
  %6033 = fadd fast float %6030, -1.000000e+00
  %6034 = fmul fast float %6031, 5.000000e-01
  %6035 = fmul fast float %6032, 5.000000e-01
  %6036 = fmul fast float %6033, 5.000000e-01
  %6037 = fadd fast float %6034, 1.000000e+00
  %6038 = fadd fast float %6035, 1.000000e+00
  %6039 = fadd fast float %6036, 1.000000e+00
  %6040 = call float @dx.op.binary.f32(i32 35, float %5709, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6041 = fdiv fast float %4418, %6040
  %6042 = fcmp fast olt float %5113, 1.270000e+02
  %6043 = fcmp fast olt float %5114, 1.270000e+02
  %6044 = fcmp fast olt float %5115, 1.270000e+02
  %6045 = fmul fast float %5113, 0xBFF7154760000000
  %6046 = fmul fast float %6045, %6041
  %6047 = fmul fast float %5114, 0xBFF7154760000000
  %6048 = fmul fast float %6047, %6041
  %6049 = fmul fast float %5115, 0xBFF7154760000000
  %6050 = fmul fast float %6049, %6041
  %6051 = call float @dx.op.unary.f32(i32 21, float %6046)  ; Exp(value)
  %6052 = call float @dx.op.unary.f32(i32 21, float %6048)  ; Exp(value)
  %6053 = call float @dx.op.unary.f32(i32 21, float %6050)  ; Exp(value)
  %6054 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6056 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6057 = select i1 %6042, float %6054, float 0.000000e+00
  %6058 = select i1 %6043, float %6055, float 0.000000e+00
  %6059 = select i1 %6044, float %6056, float 0.000000e+00
  %6060 = fmul fast float %6057, %6023
  %6061 = fmul fast float %6058, %6023
  %6062 = fmul fast float %6059, %6023
  %6063 = fadd fast float %6060, -1.000000e+00
  %6064 = fadd fast float %6061, -1.000000e+00
  %6065 = fadd fast float %6062, -1.000000e+00
  %6066 = fmul fast float %6063, %5061
  %6067 = fmul fast float %6064, %5061
  %6068 = fmul fast float %6065, %5061
  %6069 = fmul fast float %6018, %5963
  %6070 = fmul fast float %6019, %5964
  %6071 = fmul fast float %6020, %5965
  %6072 = fsub fast float 1.000000e+00, %5709
  %6073 = bitcast float %6072 to i32
  %6074 = sitofp i32 %6073 to float
  %6075 = fmul fast float %6074, 5.000000e+00
  %6076 = fadd fast float %6075, 0xC1EFBF8940000000
  %6077 = fptosi float %6076 to i32
  %6078 = bitcast i32 %6077 to float
  %6079 = fmul fast float %6078, %5065
  %6080 = fmul fast float %5955, %6079
  %6081 = fmul fast float %6080, %6023
  %6082 = fmul fast float %6081, %6037
  %6083 = fmul fast float %5956, %6079
  %6084 = fmul fast float %6083, %6023
  %6085 = fmul fast float %6084, %6038
  %6086 = fmul fast float %5957, %6079
  %6087 = fmul fast float %6086, %6023
  %6088 = fmul fast float %6087, %6039
  %6089 = fadd fast float %6069, %5051
  %6090 = fadd fast float %6089, %6082
  %6091 = fmul fast float %6090, %5061
  %6092 = fadd fast float %6070, %5052
  %6093 = fadd fast float %6092, %6085
  %6094 = fmul fast float %6093, %5061
  %6095 = fadd fast float %6071, %5053
  %6096 = fadd fast float %6095, %6088
  %6097 = fmul fast float %6096, %5061
  %6098 = fmul fast float %5699, 0x4012D0A400000000
  %6099 = fadd fast float %6068, 1.000000e+00
  %6100 = fadd fast float %6067, 1.000000e+00
  %6101 = fadd fast float %6066, 1.000000e+00
  %6102 = fmul fast float %6023, %5957
  %6103 = fmul fast float %6023, %5956
  %6104 = fmul fast float %6023, %5955
  %6105 = fsub fast float 1.000000e+00, %5704
  %6106 = fmul fast float %6105, %5061
  %6107 = fsub fast float 1.000000e+00, %6106
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fsub fast float 1.000000e+00, %6108
  %6110 = fadd fast float %6098, 0x3FDB6377A0000000
  %6111 = fmul fast float %6109, %6110
  %6112 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = fadd fast float %6111, %6112
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = call float @dx.op.binary.f32(i32 35, float %6114, float 0x3F847AE140000000)  ; FMax(a,b)
  %6116 = fmul fast float %6115, %6115
  %6117 = fmul fast float %6116, %6116
  %6118 = fmul fast float %6117, 0xC00A935000000000
  %6119 = call float @dx.op.unary.f32(i32 21, float %6118)  ; Exp(value)
  %6120 = fsub fast float 1.000000e+00, %6119
  %6121 = fmul fast float %6101, %5959
  %6122 = fmul fast float %6121, %6120
  %6123 = fmul fast float %6100, %5960
  %6124 = fmul fast float %6123, %6120
  %6125 = fmul fast float %6099, %5961
  %6126 = fmul fast float %6125, %6120
  %6127 = fadd fast float %6122, %6104
  %6128 = fmul fast float %6127, %5061
  %6129 = fadd fast float %6124, %6103
  %6130 = fmul fast float %6129, %5061
  %6131 = fadd fast float %6126, %6102
  %6132 = fmul fast float %6131, %5061
  %6133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.f32 %6133, 3
  %6135 = fcmp fast oeq float %6134, 0.000000e+00
  br i1 %6135, label %7340, label %6136

; <label>:6136                                    ; preds = %6017
  %6137 = extractvalue %dx.types.CBufRet.f32 %6133, 0
  %6138 = extractvalue %dx.types.CBufRet.f32 %6133, 1
  %6139 = extractvalue %dx.types.CBufRet.f32 %6133, 2
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6147 = call float @dx.op.dot3.f32(i32 55, float %6141, float %6142, float %6143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6148 = select i1 %217, float %6145, float %6141
  %6149 = select i1 %217, float %6147, float %6142
  %6150 = select i1 %217, float %6146, float %6143
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6153 = fmul fast float %6152, %107
  %6154 = fmul fast float %6152, %108
  %6155 = fmul fast float %6152, %109
  %6156 = fadd fast float %6153, %155
  %6157 = fadd fast float %6154, %156
  %6158 = fadd fast float %6155, %157
  %6159 = fcmp fast olt float %6134, 0.000000e+00
  br i1 %6159, label %6784, label %6160

; <label>:6160                                    ; preds = %6136
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.CBufRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.CBufRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.CBufRet.f32 %6161, 3
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = fmul fast float %6162, %6156
  %6177 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6163, float %6176)  ; FMad(a,b,c)
  %6178 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6164, float %6177)  ; FMad(a,b,c)
  %6179 = fadd fast float %6178, %6165
  %6180 = fmul fast float %6167, %6156
  %6181 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6168, float %6180)  ; FMad(a,b,c)
  %6182 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6169, float %6181)  ; FMad(a,b,c)
  %6183 = fadd fast float %6182, %6170
  %6184 = fmul fast float %6172, %6156
  %6185 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6173, float %6184)  ; FMad(a,b,c)
  %6186 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6174, float %6185)  ; FMad(a,b,c)
  %6187 = fadd fast float %6186, %6175
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.CBufRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6188, 3
  %6192 = fmul fast float %6191, %6179
  %6193 = fmul fast float %6191, %6183
  %6194 = fadd fast float %6192, %6189
  %6195 = fadd fast float %6193, %6190
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6196, 3
  %6200 = fmul fast float %6199, %6179
  %6201 = fmul fast float %6199, %6183
  %6202 = fadd fast float %6200, %6197
  %6203 = fadd fast float %6201, %6198
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6206 = fsub fast float %6205, %6187
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = fmul fast float %6206, %6207
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6196, 2
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6214 = fadd fast float %6213, %6211
  %6215 = fcmp fast ogt float %6214, 0.000000e+00
  br i1 %6215, label %6216, label %6240

; <label>:6216                                    ; preds = %6160
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6220 = fsub fast float %6202, %6218
  %6221 = fsub fast float %6203, %6219
  %6222 = fcmp fast olt float %6220, 0.000000e+00
  %6223 = fcmp fast olt float %6221, 0.000000e+00
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = select i1 %6222, float %6225, float %6227
  %6230 = select i1 %6223, float %6226, float %6228
  %6231 = fmul fast float %6229, %6220
  %6232 = fmul fast float %6230, %6221
  %6233 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6234 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6236 = call float @dx.op.binary.f32(i32 35, float %6233, float %6234)  ; FMax(a,b)
  %6237 = fsub fast float %6235, %6236
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fmul fast float %6238, %6210
  br label %6240

; <label>:6240                                    ; preds = %6216, %6160
  %6241 = phi float [ %6239, %6216 ], [ 0.000000e+00, %6160 ]
  %6242 = extractvalue %dx.types.CBufRet.f32 %6188, 2
  %6243 = extractvalue %dx.types.CBufRet.f32 %6212, 1
  %6244 = fadd fast float %6243, %6242
  %6245 = fcmp fast ogt float %6244, 0.000000e+00
  %6246 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  br i1 %6245, label %6247, label %6270

; <label>:6247                                    ; preds = %6240
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = fsub fast float %6194, %6249
  %6252 = fsub fast float %6195, %6250
  %6253 = fcmp fast olt float %6251, 0.000000e+00
  %6254 = fcmp fast olt float %6252, 0.000000e+00
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.CBufRet.f32 %6255, 3
  %6260 = select i1 %6253, float %6256, float %6258
  %6261 = select i1 %6254, float %6257, float %6259
  %6262 = fmul fast float %6260, %6251
  %6263 = fmul fast float %6261, %6252
  %6264 = call float @dx.op.unary.f32(i32 6, float %6262)  ; FAbs(value)
  %6265 = call float @dx.op.unary.f32(i32 6, float %6263)  ; FAbs(value)
  %6266 = call float @dx.op.binary.f32(i32 35, float %6264, float %6265)  ; FMax(a,b)
  %6267 = fsub fast float %6246, %6266
  %6268 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6269 = fmul fast float %6268, %6210
  br label %6270

; <label>:6270                                    ; preds = %6247, %6240
  %6271 = phi float [ %6269, %6247 ], [ 0.000000e+00, %6240 ]
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = fsub fast float %6179, %6276
  %6279 = fsub fast float %6183, %6277
  %6280 = fcmp fast olt float %6278, 0.000000e+00
  %6281 = fcmp fast olt float %6279, 0.000000e+00
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = extractvalue %dx.types.CBufRet.f32 %6282, 3
  %6287 = select i1 %6280, float %6283, float %6285
  %6288 = select i1 %6281, float %6284, float %6286
  %6289 = fmul fast float %6287, %6278
  %6290 = fmul fast float %6288, %6279
  %6291 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6292 = call float @dx.op.unary.f32(i32 6, float %6290)  ; FAbs(value)
  %6293 = call float @dx.op.binary.f32(i32 35, float %6291, float %6292)  ; FMax(a,b)
  %6294 = fsub fast float %6246, %6293
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = call float @dx.op.binary.f32(i32 36, float %6295, float %6274)  ; FMin(a,b)
  %6297 = fmul fast float %6296, %6210
  %6298 = fsub fast float %6271, %6297
  %6299 = fsub fast float %6241, %6271
  %6300 = fsub fast float %6299, %6297
  %6301 = call float @dx.op.binary.f32(i32 35, float %6271, float %6241)  ; FMax(a,b)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6297, float %6301)  ; FMax(a,b)
  %6303 = fcmp fast olt float %6302, 1.000000e+00
  br i1 %6303, label %6304, label %6702, !dx.controlflow.hints !94

; <label>:6304                                    ; preds = %6270
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 0
  %6307 = fcmp fast une float %6306, 0.000000e+00
  br i1 %6307, label %6308, label %6702, !dx.controlflow.hints !95

; <label>:6308                                    ; preds = %6304
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6313 = extractvalue %dx.types.CBufRet.f32 %6309, 3
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6318 = extractvalue %dx.types.CBufRet.f32 %6314, 3
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6324 = fmul fast float %6310, %6156
  %6325 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6311, float %6324)  ; FMad(a,b,c)
  %6326 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6312, float %6325)  ; FMad(a,b,c)
  %6327 = fadd fast float %6326, %6313
  %6328 = fmul fast float %6315, %6156
  %6329 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6316, float %6328)  ; FMad(a,b,c)
  %6330 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6317, float %6329)  ; FMad(a,b,c)
  %6331 = fadd fast float %6330, %6318
  %6332 = fmul fast float %6320, %6156
  %6333 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6321, float %6332)  ; FMad(a,b,c)
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6322, float %6333)  ; FMad(a,b,c)
  %6335 = fadd fast float %6334, %6323
  %6336 = fcmp fast oge float %6327, 1.000000e+00
  %6337 = fcmp fast oge float %6331, 1.000000e+00
  %6338 = or i1 %6336, %6337
  %6339 = fcmp fast olt float %6327, 0.000000e+00
  %6340 = fcmp fast olt float %6331, 0.000000e+00
  %6341 = or i1 %6339, %6340
  %6342 = or i1 %6338, %6341
  br i1 %6342, label %6702, label %6343, !dx.controlflow.hints !96

; <label>:6343                                    ; preds = %6308
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.i32 %6348, 2
  %6350 = uitofp i32 %6349 to float
  %6351 = extractvalue %dx.types.CBufRet.i32 %6348, 3
  %6352 = uitofp i32 %6351 to float
  %6353 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6354 = fmul fast float %6353, 2.000000e+00
  %6355 = fsub fast float %6327, %6345
  %6356 = fsub fast float %6331, %6346
  %6357 = fmul fast float %6354, %6355
  %6358 = fmul fast float %6354, %6356
  %6359 = fdiv fast float 1.000000e+00, %6139
  %6360 = fmul fast float %6358, %6359
  %6361 = call float @dx.op.unary.f32(i32 6, float %6360)  ; FAbs(value)
  %6362 = fmul fast float %6347, %6158
  %6363 = fmul fast float %6362, %6354
  %6364 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6365 = call float @dx.op.unary.f32(i32 6, float %6357)  ; FAbs(value)
  %6366 = call float @dx.op.binary.f32(i32 35, float %6364, float %6361)  ; FMax(a,b)
  %6367 = call float @dx.op.binary.f32(i32 35, float %6365, float %6366)  ; FMax(a,b)
  %6368 = fmul fast float %6367, 2.000000e+00
  %6369 = call float @dx.op.unary.f32(i32 23, float %6368)  ; Log(value)
  %6370 = call float @dx.op.binary.f32(i32 35, float %6369, float %6350)  ; FMax(a,b)
  %6371 = call float @dx.op.unary.f32(i32 22, float %6370)  ; Frc(value)
  %6372 = fadd fast float %6371, 0xBFEA666660000000
  %6373 = fmul fast float %6372, 8.000000e+00
  %6374 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6375 = call float @dx.op.unary.f32(i32 27, float %6370)  ; Round_ni(value)
  %6376 = fadd fast float %6375, %6374
  %6377 = call float @dx.op.binary.f32(i32 36, float %6376, float %6352)  ; FMin(a,b)
  %6378 = call float @dx.op.unary.f32(i32 27, float %6377)  ; Round_ni(value)
  %6379 = fsub fast float -0.000000e+00, %6378
  %6380 = call float @dx.op.unary.f32(i32 21, float %6379)  ; Exp(value)
  %6381 = fmul fast float %6380, %6354
  %6382 = fmul fast float %6381, %6327
  %6383 = fmul fast float %6381, %6331
  %6384 = fmul fast float %6382, 2.500000e-01
  %6385 = fmul fast float %6383, 2.500000e-01
  %6386 = fadd fast float %6384, 5.000000e-01
  %6387 = fadd fast float %6385, 5.000000e-01
  %6388 = fsub fast float %6352, %6350
  %6389 = fptoui float %6388 to i32
  %6390 = add i32 %6389, 320
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6390)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = fcmp fast une float %6377, %6352
  %6395 = fsub fast float %6327, %6392
  %6396 = fsub fast float %6331, %6393
  %6397 = call float @dx.op.unary.f32(i32 6, float %6395)  ; FAbs(value)
  %6398 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6399 = fmul fast float %6397, %6381
  %6400 = fmul fast float %6398, %6381
  %6401 = fcmp fast olt float %6399, 1.000000e+00
  %6402 = fcmp fast olt float %6400, 1.000000e+00
  %6403 = and i1 %6401, %6402
  %6404 = or i1 %6394, %6403
  br i1 %6404, label %6405, label %6702, !dx.controlflow.hints !97

; <label>:6405                                    ; preds = %6343
  %6406 = fmul fast float %6383, 5.000000e-01
  %6407 = fmul fast float %6382, 5.000000e-01
  %6408 = fadd fast float %6406, 5.000000e-01
  %6409 = fadd fast float %6407, 5.000000e-01
  %6410 = sitofp i32 %6349 to float
  %6411 = fsub fast float %6377, %6410
  %6412 = call float @dx.op.unary.f32(i32 27, float %6411)  ; Round_ni(value)
  %6413 = call float @dx.op.unary.f32(i32 22, float %6377)  ; Frc(value)
  %6414 = call float @dx.op.unary.f32(i32 22, float %6409)  ; Frc(value)
  %6415 = call float @dx.op.unary.f32(i32 22, float %6408)  ; Frc(value)
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6414, float %6415, float %6412, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.ResRet.f32 %6416, 1
  %6419 = extractvalue %dx.types.ResRet.f32 %6416, 2
  %6420 = extractvalue %dx.types.ResRet.f32 %6416, 3
  %6421 = fcmp fast ogt float %6413, 0.000000e+00
  br i1 %6421, label %6422, label %6443, !dx.controlflow.hints !98

; <label>:6422                                    ; preds = %6405
  %6423 = fadd fast float %6412, 1.000000e+00
  %6424 = call float @dx.op.unary.f32(i32 22, float %6386)  ; Frc(value)
  %6425 = call float @dx.op.unary.f32(i32 22, float %6387)  ; Frc(value)
  %6426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6424, float %6425, float %6423, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6427 = extractvalue %dx.types.ResRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.ResRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.ResRet.f32 %6426, 2
  %6430 = extractvalue %dx.types.ResRet.f32 %6426, 3
  %6431 = fsub fast float %6427, %6417
  %6432 = fsub fast float %6428, %6418
  %6433 = fsub fast float %6429, %6419
  %6434 = fsub fast float %6430, %6420
  %6435 = fmul fast float %6431, %6413
  %6436 = fmul fast float %6432, %6413
  %6437 = fmul fast float %6433, %6413
  %6438 = fmul fast float %6434, %6413
  %6439 = fadd fast float %6435, %6417
  %6440 = fadd fast float %6436, %6418
  %6441 = fadd fast float %6437, %6419
  %6442 = fadd fast float %6438, %6420
  br label %6443

; <label>:6443                                    ; preds = %6422, %6405
  %6444 = phi float [ %6439, %6422 ], [ %6417, %6405 ]
  %6445 = phi float [ %6440, %6422 ], [ %6418, %6405 ]
  %6446 = phi float [ %6441, %6422 ], [ %6419, %6405 ]
  %6447 = phi float [ %6442, %6422 ], [ %6420, %6405 ]
  %6448 = fadd fast float %6444, -5.000000e-01
  %6449 = fadd fast float %6446, -5.000000e-01
  %6450 = fmul fast float %6448, 0xBFD5555560000000
  %6451 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6449, float %6450)  ; FMad(a,b,c)
  %6452 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6445, float 0.000000e+00)  ; FMad(a,b,c)
  %6453 = fadd fast float %6452, %6447
  %6454 = fmul fast float %6448, -7.500000e-01
  %6455 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6449, float %6454)  ; FMad(a,b,c)
  %6456 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6445, float 0.000000e+00)  ; FMad(a,b,c)
  %6457 = fadd fast float %6456, %6447
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.CBufRet.f32 %6460, 3
  %6465 = fsub fast float %6461, %6451
  %6466 = fsub fast float %6462, %6453
  %6467 = fsub fast float %6463, %6455
  %6468 = fsub fast float %6464, %6457
  %6469 = fmul fast float %6465, %6459
  %6470 = fmul fast float %6466, %6459
  %6471 = fmul fast float %6467, %6459
  %6472 = fmul fast float %6468, %6459
  %6473 = fadd fast float %6469, %6451
  %6474 = fadd fast float %6470, %6453
  %6475 = fadd fast float %6471, %6455
  %6476 = fadd fast float %6472, %6457
  %6477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6478 = extractvalue %dx.types.ResRet.i32 %6477, 0
  %6479 = and i32 %6478, 536870911
  %6480 = uitofp i32 %6479 to float
  %6481 = fmul fast float %6480, %6327
  %6482 = fmul fast float %6480, %6331
  %6483 = fptoui float %6481 to i32
  %6484 = fptoui float %6482 to i32
  %6485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.i32 %6485, 0
  %6487 = and i32 %6486, 31
  %6488 = lshr i32 %6483, %6487
  %6489 = lshr i32 %6484, %6487
  %6490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.i32 %6490, 0
  %6492 = and i32 %6491, 31
  %6493 = shl i32 1, %6492
  %6494 = call i32 @dx.op.binary.i32(i32 40, i32 %6493, i32 4)  ; UMin(a,b)
  %6495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.i32 %6495, 0
  %6497 = extractvalue %dx.types.ResRet.i32 %6495, 1
  %6498 = icmp eq i32 %6494, 0
  br i1 %6498, label %6540, label %6499

; <label>:6499                                    ; preds = %6443
  br label %6500

; <label>:6500                                    ; preds = %6528, %6499
  %6501 = phi i32 [ %6531, %6528 ], [ 0, %6499 ]
  %6502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.i32 %6502, 0
  %6504 = lshr i32 %6503, 16
  %6505 = and i32 %6504, 31
  %6506 = shl i32 %6489, %6505
  %6507 = add i32 %6506, %6488
  %6508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6509 = extractvalue %dx.types.ResRet.i32 %6508, 0
  %6510 = and i32 %6509, 31
  %6511 = shl i32 %6507, %6510
  %6512 = add i32 %6511, %6501
  %6513 = shl i32 %6512, 2
  %6514 = add i32 %6513, 32
  %6515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6514, i32 undef)  ; BufferLoad(srv,index,wot)
  %6516 = extractvalue %dx.types.ResRet.i32 %6515, 0
  %6517 = icmp slt i32 %6516, 0
  %6518 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6501
  %6519 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6501
  %6520 = bitcast float* %6518 to i32*
  %6521 = bitcast float* %6519 to i32*
  br i1 %6517, label %6522, label %6528

; <label>:6522                                    ; preds = %6500
  %6523 = and i32 %6516, 1073741823
  %6524 = add nuw nsw i32 %6523, 20
  %6525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6524, i32 undef)  ; BufferLoad(srv,index,wot)
  %6526 = extractvalue %dx.types.ResRet.i32 %6525, 0
  %6527 = extractvalue %dx.types.ResRet.i32 %6525, 1
  br label %6528

; <label>:6528                                    ; preds = %6522, %6500
  %6529 = phi i32 [ %6526, %6522 ], [ %6496, %6500 ]
  %6530 = phi i32 [ %6527, %6522 ], [ %6497, %6500 ]
  store i32 %6529, i32* %6520, align 4
  store i32 %6530, i32* %6521, align 4
  %6531 = add nuw i32 %6501, 1
  %6532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.i32 %6532, 2
  %6534 = icmp eq i32 %6533, 0
  %6535 = icmp ugt i32 %6516, -1073741825
  %6536 = and i1 %6535, %6534
  %6537 = icmp ult i32 %6531, %6494
  %6538 = and i1 %6536, %6537
  br i1 %6538, label %6500, label %6539

; <label>:6539                                    ; preds = %6528
  br label %6540

; <label>:6540                                    ; preds = %6539, %6443
  %6541 = phi i32 [ 0, %6443 ], [ %6531, %6539 ]
  %6542 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6543 = fptoui float %6542 to i32
  %6544 = icmp eq i32 %6543, 0
  br i1 %6544, label %6596, label %6545

; <label>:6545                                    ; preds = %6540
  br label %6546

; <label>:6546                                    ; preds = %6591, %6545
  %6547 = phi i32 [ %6592, %6591 ], [ %6541, %6545 ]
  %6548 = phi i32 [ %6593, %6591 ], [ 0, %6545 ]
  %6549 = lshr i32 %6548, 2
  %6550 = and i32 %6548, 3
  %6551 = add nuw nsw i32 %6549, 83
  %6552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6551)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.i32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.i32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.i32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.i32 %6552, 3
  %6557 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6553, i32* %6557, align 4
  %6558 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6554, i32* %6558, align 4
  %6559 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6555, i32* %6559, align 4
  %6560 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6556, i32* %6560, align 4
  %6561 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6550
  %6562 = load i32, i32* %6561, align 4, !tbaa !99, !noalias !103
  %6563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6564 = extractvalue %dx.types.ResRet.i32 %6563, 0
  %6565 = lshr i32 %6564, 16
  %6566 = and i32 %6565, 31
  %6567 = shl i32 %6489, %6566
  %6568 = add i32 %6567, %6488
  %6569 = shl i32 %6568, 2
  %6570 = add i32 %6569, %6562
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6570, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = icmp eq i32 %6572, 0
  br i1 %6573, label %6591, label %6574

; <label>:6574                                    ; preds = %6546
  %6575 = icmp slt i32 %6572, 0
  %6576 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6547
  %6577 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6547
  %6578 = bitcast float* %6576 to i32*
  %6579 = bitcast float* %6577 to i32*
  br i1 %6575, label %6580, label %6587

; <label>:6580                                    ; preds = %6574
  %6581 = and i32 %6572, 1073741823
  %6582 = add i32 %6562, 20
  %6583 = add i32 %6582, %6581
  %6584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6583, i32 undef)  ; BufferLoad(srv,index,wot)
  %6585 = extractvalue %dx.types.ResRet.i32 %6584, 0
  %6586 = extractvalue %dx.types.ResRet.i32 %6584, 1
  br label %6587

; <label>:6587                                    ; preds = %6580, %6574
  %6588 = phi i32 [ %6585, %6580 ], [ %6496, %6574 ]
  %6589 = phi i32 [ %6586, %6580 ], [ %6497, %6574 ]
  store i32 %6588, i32* %6578, align 4
  store i32 %6589, i32* %6579, align 4
  %6590 = add i32 %6547, 1
  br label %6591

; <label>:6591                                    ; preds = %6587, %6546
  %6592 = phi i32 [ %6547, %6546 ], [ %6590, %6587 ]
  %6593 = add nuw i32 %6548, 1
  %6594 = icmp eq i32 %6593, %6543
  br i1 %6594, label %6595, label %6546

; <label>:6595                                    ; preds = %6591
  br label %6596

; <label>:6596                                    ; preds = %6595, %6540
  %6597 = phi i32 [ %6541, %6540 ], [ %6592, %6595 ]
  %6598 = icmp eq i32 %6597, 1
  %6599 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6600 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6598, label %6601, label %6604

; <label>:6601                                    ; preds = %6596
  %6602 = load float, float* %6599, align 4
  %6603 = load float, float* %6600, align 4
  br label %6631

; <label>:6604                                    ; preds = %6596
  %6605 = load float, float* %6599, align 4
  %6606 = load float, float* %6600, align 4
  %6607 = fdiv fast float 1.000000e+00, %6606
  %6608 = fsub fast float %6605, %6607
  %6609 = icmp ugt i32 %6597, 1
  br i1 %6609, label %6610, label %6626

; <label>:6610                                    ; preds = %6604
  br label %6611

; <label>:6611                                    ; preds = %6611, %6610
  %6612 = phi float [ %6621, %6611 ], [ %6608, %6610 ]
  %6613 = phi float [ %6622, %6611 ], [ %6605, %6610 ]
  %6614 = phi i32 [ %6623, %6611 ], [ 1, %6610 ]
  %6615 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6614
  %6616 = load float, float* %6615, align 4
  %6617 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6614
  %6618 = load float, float* %6617, align 4
  %6619 = fdiv fast float 1.000000e+00, %6618
  %6620 = fsub fast float %6616, %6619
  %6621 = call float @dx.op.binary.f32(i32 36, float %6612, float %6620)  ; FMin(a,b)
  %6622 = call float @dx.op.binary.f32(i32 35, float %6613, float %6616)  ; FMax(a,b)
  %6623 = add nuw i32 %6614, 1
  %6624 = icmp eq i32 %6623, %6597
  br i1 %6624, label %6625, label %6611

; <label>:6625                                    ; preds = %6611
  br label %6626

; <label>:6626                                    ; preds = %6625, %6604
  %6627 = phi float [ %6608, %6604 ], [ %6621, %6625 ]
  %6628 = phi float [ %6605, %6604 ], [ %6622, %6625 ]
  %6629 = fsub fast float %6628, %6627
  %6630 = fdiv fast float 1.000000e+00, %6629
  br label %6631

; <label>:6631                                    ; preds = %6626, %6601
  %6632 = phi float [ %6602, %6601 ], [ %6628, %6626 ]
  %6633 = phi float [ %6603, %6601 ], [ %6630, %6626 ]
  %6634 = fadd fast float %6335, %6632
  %6635 = fmul fast float %6634, %6633
  %6636 = call float @dx.op.unary.f32(i32 7, float %6635)  ; Saturate(value)
  %6637 = fmul fast float %6636, 2.000000e+00
  %6638 = fsub fast float 1.000000e+00, %6637
  %6639 = fmul fast float %6473, %6473
  %6640 = fsub fast float %6474, %6639
  %6641 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6640)  ; FMax(a,b)
  %6642 = fdiv fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6474, %6473
  %6644 = fsub fast float %6475, %6643
  %6645 = fsub fast float %6638, %6473
  %6646 = fmul fast float %6638, %6638
  %6647 = fsub fast float %6646, %6474
  %6648 = fmul fast float %6642, %6644
  %6649 = fmul fast float %6648, %6645
  %6650 = fsub fast float %6647, %6649
  %6651 = fmul fast float %6474, %6474
  %6652 = fsub fast float %6476, %6651
  %6653 = fmul fast float %6644, %6644
  %6654 = fmul fast float %6653, %6642
  %6655 = fsub fast float %6652, %6654
  %6656 = fdiv fast float %6650, %6655
  %6657 = fmul fast float %6656, %6644
  %6658 = fsub fast float %6645, %6657
  %6659 = fmul fast float %6658, %6642
  %6660 = fmul fast float %6659, %6473
  %6661 = fsub fast float 1.000000e+00, %6660
  %6662 = fmul fast float %6656, %6474
  %6663 = fsub fast float %6661, %6662
  %6664 = fmul fast float %6659, %6659
  %6665 = fmul fast float %6656, 4.000000e+00
  %6666 = fmul fast float %6665, %6663
  %6667 = fsub fast float %6664, %6666
  %6668 = call float @dx.op.unary.f32(i32 24, float %6667)  ; Sqrt(value)
  %6669 = fcmp fast oge float %6659, 0.000000e+00
  %6670 = fsub fast float -0.000000e+00, %6668
  %6671 = select i1 %6669, float %6670, float %6668
  %6672 = fsub fast float %6671, %6659
  %6673 = fdiv fast float %6672, %6656
  %6674 = fdiv fast float %6663, %6672
  %6675 = fmul fast float %6673, 5.000000e-01
  %6676 = fmul fast float %6674, 2.000000e+00
  %6677 = select i1 %6669, float %6675, float %6676
  %6678 = select i1 %6669, float %6676, float %6675
  %6679 = call float @dx.op.binary.f32(i32 35, float %6677, float %6678)  ; FMax(a,b)
  %6680 = call float @dx.op.binary.f32(i32 36, float %6677, float %6678)  ; FMin(a,b)
  %6681 = fcmp fast ogt float %6638, %6679
  %6682 = fsub fast float %6638, %6680
  %6683 = fsub fast float %6638, %6679
  %6684 = fsub fast float %6679, %6680
  %6685 = select i1 %6681, float %6683, float %6684
  %6686 = fmul float %6682, %6685
  %6687 = select i1 %6681, float %6680, float %6638
  %6688 = fcmp fast ogt float %6638, %6680
  %6689 = fmul fast float %6687, %6679
  %6690 = fadd fast float %6687, %6679
  %6691 = fmul fast float %6690, %6473
  %6692 = fadd fast float %6689, %6474
  %6693 = fsub fast float %6692, %6691
  %6694 = fdiv fast float %6693, %6686
  %6695 = select i1 %6688, float %6694, float 0.000000e+00
  %6696 = fsub fast float 1.000000e+00, %6695
  %6697 = select i1 %6681, float %6696, float %6695
  %6698 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6458, 3
  %6700 = fmul fast float %6699, %6698
  %6701 = fsub fast float 1.000000e+00, %6700
  br label %6702

; <label>:6702                                    ; preds = %6631, %6343, %6308, %6304, %6270
  %6703 = phi float [ 1.000000e+00, %6270 ], [ %6701, %6631 ], [ 1.000000e+00, %6308 ], [ 1.000000e+00, %6343 ], [ 1.000000e+00, %6304 ]
  %6704 = fcmp fast ogt float %6300, 0.000000e+00
  br i1 %6704, label %6705, label %6711, !dx.controlflow.hints !112

; <label>:6705                                    ; preds = %6702
  %6706 = fadd fast float %6213, %6187
  %6707 = call float @dx.op.binary.f32(i32 35, float %6706, float 0.000000e+00)  ; FMax(a,b)
  %6708 = fadd fast float %6707, 0x3F10000000000000
  %6709 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6202, float %6203, float undef, float undef, i32 0, i32 0, i32 undef, float %6708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 0
  br label %6711

; <label>:6711                                    ; preds = %6705, %6702
  %6712 = phi float [ %6710, %6705 ], [ 1.000000e+00, %6702 ]
  %6713 = fcmp fast ogt float %6298, 0.000000e+00
  br i1 %6713, label %6714, label %6720, !dx.controlflow.hints !113

; <label>:6714                                    ; preds = %6711
  %6715 = fadd fast float %6243, %6187
  %6716 = call float @dx.op.binary.f32(i32 35, float %6715, float 0.000000e+00)  ; FMax(a,b)
  %6717 = fadd fast float %6716, 0x3F10000000000000
  %6718 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6194, float %6195, float undef, float undef, i32 0, i32 0, i32 undef, float %6717)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  br label %6720

; <label>:6720                                    ; preds = %6714, %6711
  %6721 = phi float [ %6719, %6714 ], [ 1.000000e+00, %6711 ]
  %6722 = fcmp fast ogt float %6297, 0.000000e+00
  br i1 %6722, label %6723, label %6730, !dx.controlflow.hints !114

; <label>:6723                                    ; preds = %6720
  %6724 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6725 = fadd fast float %6724, %6187
  %6726 = call float @dx.op.binary.f32(i32 35, float %6725, float 0.000000e+00)  ; FMax(a,b)
  %6727 = fadd fast float %6726, 0x3F10000000000000
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6179, float %6183, float undef, float undef, i32 0, i32 0, i32 undef, float %6727)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 0
  br label %6730

; <label>:6730                                    ; preds = %6723, %6720
  %6731 = phi float [ %6729, %6723 ], [ 1.000000e+00, %6720 ]
  %6732 = fsub fast float %6712, %6703
  %6733 = fmul fast float %6732, %6241
  %6734 = fadd fast float %6733, %6703
  %6735 = fsub fast float %6721, %6734
  %6736 = fmul fast float %6735, %6271
  %6737 = fadd fast float %6736, %6734
  %6738 = fsub fast float %6731, %6737
  %6739 = fmul fast float %6738, %6297
  %6740 = fadd fast float %6739, %6737
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %6743 = fcmp fast ogt float %6742, 0.000000e+00
  br i1 %6743, label %6744, label %6784, !dx.controlflow.hints !115

; <label>:6744                                    ; preds = %6730
  %6745 = fcmp fast ugt float %6742, 0.000000e+00
  br i1 %6745, label %6746, label %6781

; <label>:6746                                    ; preds = %6744
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6757 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = fadd fast float %6760, %6156
  %6764 = fadd fast float %6761, %6157
  %6765 = fadd fast float %6762, %6158
  %6766 = fmul fast float %6763, %6748
  %6767 = call float @dx.op.tertiary.f32(i32 46, float %6749, float %6764, float %6766)  ; FMad(a,b,c)
  %6768 = call float @dx.op.tertiary.f32(i32 46, float %6750, float %6765, float %6767)  ; FMad(a,b,c)
  %6769 = fadd fast float %6768, %6751
  %6770 = fmul fast float %6763, %6753
  %6771 = call float @dx.op.tertiary.f32(i32 46, float %6754, float %6764, float %6770)  ; FMad(a,b,c)
  %6772 = call float @dx.op.tertiary.f32(i32 46, float %6755, float %6765, float %6771)  ; FMad(a,b,c)
  %6773 = fadd fast float %6772, %6756
  %6774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6769, float %6773, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = fmul fast float %6775, %6758
  %6777 = fadd fast float %6776, %6757
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fmul fast float %6778, %6742
  %6780 = fsub fast float 1.000000e+00, %6779
  br label %6781

; <label>:6781                                    ; preds = %6746, %6744
  %6782 = phi float [ %6780, %6746 ], [ 1.000000e+00, %6744 ]
  %6783 = fmul fast float %6782, %6740
  br label %6784

; <label>:6784                                    ; preds = %6781, %6730, %6136
  %6785 = phi float [ 1.000000e+00, %6136 ], [ %6783, %6781 ], [ %6740, %6730 ]
  %6786 = call float @dx.op.binary.f32(i32 36, float %6785, float %6785)  ; FMin(a,b)
  %6787 = call float @dx.op.binary.f32(i32 36, float %6785, float %6786)  ; FMin(a,b)
  %6788 = fcmp fast ogt float %6787, 0.000000e+00
  br i1 %6788, label %6789, label %6949, !dx.controlflow.hints !116

; <label>:6789                                    ; preds = %6784
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.f32 %6790, 3
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.f32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6795, 3
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = extractvalue %dx.types.CBufRet.f32 %6800, 3
  %6805 = fmul fast float %6791, %6156
  %6806 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6792, float %6805)  ; FMad(a,b,c)
  %6807 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6793, float %6806)  ; FMad(a,b,c)
  %6808 = fadd fast float %6807, %6794
  %6809 = fmul fast float %6796, %6156
  %6810 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6797, float %6809)  ; FMad(a,b,c)
  %6811 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6798, float %6810)  ; FMad(a,b,c)
  %6812 = fadd fast float %6811, %6799
  %6813 = fmul fast float %6801, %6156
  %6814 = call float @dx.op.tertiary.f32(i32 46, float %6157, float %6802, float %6813)  ; FMad(a,b,c)
  %6815 = call float @dx.op.tertiary.f32(i32 46, float %6158, float %6803, float %6814)  ; FMad(a,b,c)
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.CBufRet.f32 %6816, 3
  %6820 = fmul fast float %6819, %6808
  %6821 = fmul fast float %6819, %6812
  %6822 = fadd fast float %6820, %6817
  %6823 = fadd fast float %6821, %6818
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = extractvalue %dx.types.CBufRet.f32 %6824, 1
  %6827 = fsub fast float %6822, %6825
  %6828 = fsub fast float %6823, %6826
  %6829 = fcmp fast olt float %6827, 0.000000e+00
  %6830 = fcmp fast olt float %6828, 0.000000e+00
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = select i1 %6829, float %6832, float %6834
  %6837 = select i1 %6830, float %6833, float %6835
  %6838 = fmul fast float %6836, %6827
  %6839 = fmul fast float %6837, %6828
  %6840 = call float @dx.op.unary.f32(i32 6, float %6838)  ; FAbs(value)
  %6841 = call float @dx.op.unary.f32(i32 6, float %6839)  ; FAbs(value)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6843 = call float @dx.op.binary.f32(i32 35, float %6840, float %6841)  ; FMax(a,b)
  %6844 = fsub fast float %6842, %6843
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = fcmp fast ogt float %6845, 0.000000e+00
  br i1 %6846, label %6847, label %6888, !dx.controlflow.hints !117

; <label>:6847                                    ; preds = %6789
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6822, float %6823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 1
  %6850 = fcmp fast ogt float %6849, 0.000000e+00
  br i1 %6850, label %6851, label %6883

; <label>:6851                                    ; preds = %6847
  %6852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6822, float %6823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6853 = extractvalue %dx.types.ResRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.ResRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.ResRet.f32 %6852, 2
  %6856 = extractvalue %dx.types.ResRet.f32 %6852, 3
  %6857 = fsub fast float 1.000000e+00, %6804
  %6858 = fsub fast float %6857, %6815
  %6859 = fmul fast float %6858, 0x400921FB60000000
  %6860 = fadd fast float %6859, 0x3FF921FB60000000
  %6861 = call float @dx.op.unary.f32(i32 13, float %6860)  ; Sin(value)
  %6862 = fadd fast float %6861, -1.000000e+00
  %6863 = fmul fast float %6862, 0x3FD45F3060000000
  %6864 = fmul fast float %6858, 0x401921FB60000000
  %6865 = fadd fast float %6864, 0x400921FB60000000
  %6866 = call float @dx.op.unary.f32(i32 13, float %6865)  ; Sin(value)
  %6867 = fadd fast float %6866, 0x3E7777A5C0000000
  %6868 = fmul fast float %6867, 0x3FC45F3060000000
  %6869 = fmul fast float %6858, 0x4022D97C80000000
  %6870 = fadd fast float %6869, 0x4012D97C80000000
  %6871 = call float @dx.op.unary.f32(i32 13, float %6870)  ; Sin(value)
  %6872 = fadd fast float %6871, 1.000000e+00
  %6873 = fmul fast float %6872, 0x3FBB2995E0000000
  %6874 = fmul fast float %6858, 0x402921FB60000000
  %6875 = fadd fast float %6874, 0x401921FB60000000
  %6876 = call float @dx.op.unary.f32(i32 13, float %6875)  ; Sin(value)
  %6877 = fadd fast float %6876, 0xBE8777A5C0000000
  %6878 = fmul fast float %6877, 0x3FB45F3060000000
  %6879 = call float @dx.op.dot4.f32(i32 56, float %6853, float %6854, float %6855, float %6856, float %6863, float %6868, float %6873, float %6878)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6880 = fmul fast float %6879, 0xBFF7154760000000
  %6881 = call float @dx.op.unary.f32(i32 21, float %6880)  ; Exp(value)
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  br label %6883

; <label>:6883                                    ; preds = %6851, %6847
  %6884 = phi float [ %6882, %6851 ], [ 1.000000e+00, %6847 ]
  %6885 = fadd fast float %6884, -1.000000e+00
  %6886 = fmul fast float %6885, %6845
  %6887 = fadd fast float %6886, 1.000000e+00
  br label %6888

; <label>:6888                                    ; preds = %6883, %6789
  %6889 = phi float [ %6887, %6883 ], [ 1.000000e+00, %6789 ]
  %6890 = fmul fast float %6889, %6785
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = fadd fast float %6892, %155
  %6896 = fadd fast float %6893, %156
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6899 = fsub fast float -0.000000e+00, %6895
  %6900 = fsub fast float -0.000000e+00, %6896
  %6901 = fsub fast float %5706, %6894
  %6902 = fadd fast float %6901, %6898
  %6903 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6899, float %6900, float %6902)  ; Dot3(ax,ay,az,bx,by,bz)
  %6904 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6137, float %6138, float %6139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6905 = fdiv fast float 1.000000e+00, %6904
  %6906 = fmul fast float %6905, %6903
  %6907 = fmul fast float %6137, %6906
  %6908 = fmul fast float %6138, %6906
  %6909 = fadd fast float %6907, %6895
  %6910 = fadd fast float %6908, %6896
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %6914 = fsub fast float %6909, %6912
  %6915 = fsub fast float %6910, %6913
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 3
  %6919 = fmul fast float %6914, %6917
  %6920 = fmul fast float %6915, %6918
  %6921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.i32 %6921, 3
  %6923 = icmp eq i32 %6922, 0
  br i1 %6923, label %6929, label %6924

; <label>:6924                                    ; preds = %6888
  %6925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6919, float %6920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.ResRet.f32 %6925, 2
  br label %6934

; <label>:6929                                    ; preds = %6888
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6919, float %6920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.ResRet.f32 %6930, 1
  %6933 = extractvalue %dx.types.ResRet.f32 %6930, 2
  br label %6934

; <label>:6934                                    ; preds = %6929, %6924
  %6935 = phi float [ %6926, %6924 ], [ %6931, %6929 ]
  %6936 = phi float [ %6927, %6924 ], [ %6932, %6929 ]
  %6937 = phi float [ %6928, %6924 ], [ %6933, %6929 ]
  %6938 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6939 = fmul fast float %6938, %6935
  %6940 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6941 = fsub fast float %6906, %6940
  %6942 = fsub fast float %6941, %6939
  %6943 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6942)  ; FMax(a,b)
  %6944 = fmul fast float %6943, %6936
  %6945 = call float @dx.op.binary.f32(i32 36, float %6937, float %6944)  ; FMin(a,b)
  %6946 = fmul fast float %6945, 0xBFF7154760000000
  %6947 = call float @dx.op.unary.f32(i32 21, float %6946)  ; Exp(value)
  %6948 = fmul fast float %6890, %6947
  br label %6949

; <label>:6949                                    ; preds = %6934, %6784
  %6950 = phi float [ %6948, %6934 ], [ %6785, %6784 ]
  %6951 = call float @dx.op.binary.f32(i32 36, float %6950, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6950, float %6951)  ; FMin(a,b)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  br i1 %6953, label %6954, label %7340, !dx.controlflow.hints !118

; <label>:6954                                    ; preds = %6949
  %6955 = fmul fast float %6950, %6148
  %6956 = fmul fast float %6950, %6149
  %6957 = fmul fast float %6950, %6150
  %6958 = fsub fast float %157, %5494
  %6959 = fcmp fast ogt float %6958, 0.000000e+00
  %6960 = fmul fast float %6137, 5.120000e+02
  %6961 = fmul fast float %6138, 5.120000e+02
  %6962 = fmul fast float %6139, 5.120000e+02
  %6963 = fadd fast float %6962, %157
  %6964 = fsub fast float %5494, %6963
  %6965 = fmul fast float %6964, 2.000000e+00
  %6966 = fadd fast float %6965, %6963
  %6967 = select i1 %6959, float %6966, float %6963
  %6968 = fsub fast float %6967, %157
  %6969 = call float @dx.op.dot3.f32(i32 55, float %6960, float %6961, float %6968, float %6960, float %6961, float %6968)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = call float @dx.op.unary.f32(i32 25, float %6969)  ; Rsqrt(value)
  %6971 = fmul fast float %6970, %6960
  %6972 = fmul fast float %6970, %6961
  %6973 = fmul fast float %6970, %6968
  %6974 = fsub fast float %5494, %157
  %6975 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6974)  ; Dot3(ax,ay,az,bx,by,bz)
  %6976 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6971, float %6972, float %6973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6977 = fdiv fast float 1.000000e+00, %6976
  %6978 = fmul fast float %6977, %6975
  %6979 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6958, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = fcmp fast ogt float %6979, 0.000000e+00
  %6981 = fcmp fast olt float %6979, 0.000000e+00
  %6982 = zext i1 %6980 to i32
  %6983 = zext i1 %6981 to i32
  %6984 = sub nsw i32 %6982, %6983
  %6985 = sitofp i32 %6984 to float
  %6986 = fsub fast float %6967, %5494
  %6987 = call float @dx.op.dot3.f32(i32 55, float %6960, float %6961, float %6986, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6988 = fcmp fast ogt float %6987, 0.000000e+00
  %6989 = fcmp fast olt float %6987, 0.000000e+00
  %6990 = zext i1 %6988 to i32
  %6991 = zext i1 %6989 to i32
  %6992 = sub nsw i32 %6990, %6991
  %6993 = sitofp i32 %6992 to float
  %6994 = fcmp fast une float %6985, %6993
  br i1 %6994, label %6995, label %7005

; <label>:6995                                    ; preds = %6954
  %6996 = fmul fast float %6978, %6973
  %6997 = fmul fast float %6978, %6972
  %6998 = fmul fast float %6978, %6971
  %6999 = fmul fast float %6998, %6998
  %7000 = fmul fast float %6997, %6997
  %7001 = fadd fast float %6999, %7000
  %7002 = fmul fast float %6996, %6996
  %7003 = fadd fast float %7001, %7002
  %7004 = call float @dx.op.unary.f32(i32 24, float %7003)  ; Sqrt(value)
  br label %7015

; <label>:7005                                    ; preds = %6954
  %7006 = icmp slt i32 %6984, 0
  br i1 %7006, label %7007, label %7015

; <label>:7007                                    ; preds = %7005
  %7008 = fsub fast float %157, %6967
  %7009 = fmul fast float %6960, %6960
  %7010 = fmul fast float %6961, %6961
  %7011 = fadd fast float %7009, %7010
  %7012 = fmul fast float %7008, %7008
  %7013 = fadd fast float %7011, %7012
  %7014 = call float @dx.op.unary.f32(i32 24, float %7013)  ; Sqrt(value)
  br label %7015

; <label>:7015                                    ; preds = %7007, %7005, %6995
  %7016 = phi float [ %7004, %6995 ], [ %7014, %7007 ], [ 0.000000e+00, %7005 ]
  %7017 = fsub fast float -0.000000e+00, %7016
  %7018 = select i1 %6959, float -0.000000e+00, float %7017
  %7019 = fmul fast float %5495, 0x3FF7154760000000
  %7020 = fmul fast float %7019, %7018
  %7021 = fmul fast float %5496, 0x3FF7154760000000
  %7022 = fmul fast float %7021, %7018
  %7023 = fmul fast float %5497, 0x3FF7154760000000
  %7024 = fmul fast float %7023, %7018
  %7025 = call float @dx.op.unary.f32(i32 21, float %7020)  ; Exp(value)
  %7026 = call float @dx.op.unary.f32(i32 21, float %7022)  ; Exp(value)
  %7027 = call float @dx.op.unary.f32(i32 21, float %7024)  ; Exp(value)
  %7028 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  %7029 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7030 = call float @dx.op.unary.f32(i32 7, float %7027)  ; Saturate(value)
  %7031 = fmul fast float %6955, %7028
  %7032 = fmul fast float %6956, %7029
  %7033 = fmul fast float %6957, %7030
  %7034 = fsub fast float %6137, %5694
  %7035 = fsub fast float %6138, %5693
  %7036 = fsub fast float %6139, %5692
  %7037 = call float @dx.op.dot3.f32(i32 55, float %7034, float %7035, float %7036, float %7034, float %7035, float %7036)  ; Dot3(ax,ay,az,bx,by,bz)
  %7038 = call float @dx.op.unary.f32(i32 25, float %7037)  ; Rsqrt(value)
  %7039 = fmul fast float %7038, %7034
  %7040 = fmul fast float %7038, %7035
  %7041 = fmul fast float %7038, %7036
  %7042 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %7043 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5690, float %5689, float %7039, float %7040, float %7041)  ; Dot3(ax,ay,az,bx,by,bz)
  %7044 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7045 = fmul fast float %7044, %7044
  %7046 = fmul fast float %7045, %5722
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = fmul fast float %7047, %7044
  %7049 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %7039, float %7040, float %7041)  ; Dot3(ax,ay,az,bx,by,bz)
  %7050 = fmul fast float %7049, %7049
  %7051 = call float @dx.op.unary.f32(i32 6, float %7042)  ; FAbs(value)
  %7052 = call float @dx.op.binary.f32(i32 35, float %6105, float 0x3F847AE140000000)  ; FMax(a,b)
  %7053 = fmul fast float %7052, %7052
  %7054 = fmul fast float %7053, %7053
  %7055 = fsub fast float 1.000000e+00, %7054
  %7056 = fmul fast float %5709, %5709
  %7057 = fmul fast float %7056, %7055
  %7058 = fadd fast float %7057, %7054
  %7059 = bitcast float %7058 to i32
  %7060 = ashr i32 %7059, 1
  %7061 = add nsw i32 %7060, 532487669
  %7062 = bitcast i32 %7061 to float
  %7063 = fadd fast float %7062, %5709
  %7064 = fmul fast float %7054, %7050
  %7065 = fsub fast float 1.000000e+00, %7050
  %7066 = fadd fast float %7065, %7064
  %7067 = fmul fast float %7051, %7051
  %7068 = fmul fast float %7067, %7055
  %7069 = fadd fast float %7068, %7054
  %7070 = bitcast float %7069 to i32
  %7071 = ashr i32 %7070, 1
  %7072 = add nsw i32 %7071, 532487669
  %7073 = bitcast i32 %7072 to float
  %7074 = fadd fast float %7073, %7051
  %7075 = fmul fast float %7066, %7066
  %7076 = fmul fast float %7075, %7063
  %7077 = fmul fast float %7076, %7074
  %7078 = fdiv fast float 0x3FF0A00000000000, %7077
  %7079 = fmul fast float %7078, %7054
  %7080 = fmul fast float %5967, 0x3FF9999980000000
  %7081 = fsub fast float 5.000000e+00, %7080
  %7082 = call float @dx.op.unary.f32(i32 6, float %7043)  ; FAbs(value)
  %7083 = fsub fast float 1.000000e+00, %7082
  %7084 = fmul fast float %5967, 0x41D9660740000000
  %7085 = fadd fast float %7084, 0xC1EFBF8940000000
  %7086 = bitcast float %7083 to i32
  %7087 = sitofp i32 %7086 to float
  %7088 = fmul fast float %7087, %7081
  %7089 = fadd fast float %7085, %7088
  %7090 = fptosi float %7089 to i32
  %7091 = bitcast i32 %7090 to float
  %7092 = fsub fast float 1.000000e+00, %5698
  %7093 = fsub fast float 1.000000e+00, %5699
  %7094 = fsub fast float 1.000000e+00, %5707
  %7095 = fmul fast float %7091, %7092
  %7096 = fmul fast float %7091, %7093
  %7097 = fmul fast float %7091, %7094
  %7098 = fadd fast float %7095, %5698
  %7099 = fadd fast float %7096, %5699
  %7100 = fadd fast float %7097, %5707
  br i1 %5990, label %7101, label %7124

; <label>:7101                                    ; preds = %7015
  %7102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.ResRet.f32 %7102, 2
  %7106 = fadd fast float %7103, -5.000000e-01
  %7107 = fadd fast float %7104, -5.000000e-01
  %7108 = fadd fast float %7105, -5.000000e-01
  %7109 = fmul fast float %5698, 4.000000e+00
  %7110 = fmul fast float %7109, %7092
  %7111 = fmul fast float %7110, %7106
  %7112 = fmul fast float %5699, 4.000000e+00
  %7113 = fmul fast float %7112, %7093
  %7114 = fmul fast float %7113, %7107
  %7115 = fmul fast float %5707, 4.000000e+00
  %7116 = fmul fast float %7115, %7094
  %7117 = fmul fast float %7116, %7108
  %7118 = fadd fast float %7111, %7098
  %7119 = fadd fast float %7114, %7099
  %7120 = fadd fast float %7117, %7100
  %7121 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  %7122 = call float @dx.op.unary.f32(i32 7, float %7119)  ; Saturate(value)
  %7123 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  br label %7124

; <label>:7124                                    ; preds = %7101, %7015
  %7125 = phi float [ %7121, %7101 ], [ %7098, %7015 ]
  %7126 = phi float [ %7122, %7101 ], [ %7099, %7015 ]
  %7127 = phi float [ %7123, %7101 ], [ %7100, %7015 ]
  %7128 = fmul fast float %7042, 9.843750e-01
  %7129 = fadd fast float %7128, 7.812500e-03
  %7130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7129, float %5971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.ResRet.f32 %7130, 3
  %7135 = fsub fast float %7133, %7131
  %7136 = fsub fast float %7134, %7132
  %7137 = fmul fast float %7135, %5977
  %7138 = fmul fast float %7136, %5977
  %7139 = fadd fast float %7137, %7131
  %7140 = fadd fast float %7138, %7132
  %7141 = fmul fast float %7139, %5698
  %7142 = fmul fast float %7139, %5699
  %7143 = fmul fast float %7139, %5707
  %7144 = fadd fast float %7141, %7140
  %7145 = fadd fast float %7142, %7140
  %7146 = fadd fast float %7143, %7140
  br i1 %5990, label %7147, label %7170

; <label>:7147                                    ; preds = %7124
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 0
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7151 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7152 = fadd fast float %7149, -5.000000e-01
  %7153 = fadd fast float %7150, -5.000000e-01
  %7154 = fadd fast float %7151, -5.000000e-01
  %7155 = fmul fast float %5698, 4.000000e+00
  %7156 = fmul fast float %7155, %7092
  %7157 = fmul fast float %7156, %7152
  %7158 = fmul fast float %5699, 4.000000e+00
  %7159 = fmul fast float %7158, %7093
  %7160 = fmul fast float %7159, %7153
  %7161 = fmul fast float %5707, 4.000000e+00
  %7162 = fmul fast float %7161, %7094
  %7163 = fmul fast float %7162, %7154
  %7164 = fadd fast float %7157, %7144
  %7165 = fadd fast float %7160, %7145
  %7166 = fadd fast float %7163, %7146
  %7167 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  %7168 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7169 = call float @dx.op.unary.f32(i32 7, float %7166)  ; Saturate(value)
  br label %7170

; <label>:7170                                    ; preds = %7147, %7124
  %7171 = phi float [ %7167, %7147 ], [ %7144, %7124 ]
  %7172 = phi float [ %7168, %7147 ], [ %7145, %7124 ]
  %7173 = phi float [ %7169, %7147 ], [ %7146, %7124 ]
  %7174 = call float @dx.op.binary.f32(i32 35, float %7172, float %7173)  ; FMax(a,b)
  %7175 = call float @dx.op.binary.f32(i32 35, float %7171, float %7174)  ; FMax(a,b)
  %7176 = fsub fast float 1.000000e+00, %7175
  %7177 = call float @dx.op.binary.f32(i32 35, float %7051, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7178 = fdiv fast float %4418, %7177
  %7179 = fmul fast float %6045, %7178
  %7180 = fmul fast float %6047, %7178
  %7181 = fmul fast float %6049, %7178
  %7182 = call float @dx.op.unary.f32(i32 21, float %7179)  ; Exp(value)
  %7183 = call float @dx.op.unary.f32(i32 21, float %7180)  ; Exp(value)
  %7184 = call float @dx.op.unary.f32(i32 21, float %7181)  ; Exp(value)
  %7185 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7186 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  %7187 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7188 = select i1 %6042, float %7185, float 0.000000e+00
  %7189 = select i1 %6043, float %7186, float 0.000000e+00
  %7190 = select i1 %6044, float %7187, float 0.000000e+00
  %7191 = fsub fast float -0.000000e+00, %5701
  %7192 = fsub fast float -0.000000e+00, %5702
  %7193 = fsub fast float -0.000000e+00, %5703
  %7194 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %7191, float %7192, float %7193)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = call float @dx.op.unary.f32(i32 7, float %7194)  ; Saturate(value)
  %7196 = fmul fast float %7195, 9.843750e-01
  %7197 = fadd fast float %7196, 7.812500e-03
  %7198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7197, float %5971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7199 = extractvalue %dx.types.ResRet.f32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.f32 %7198, 1
  %7201 = extractvalue %dx.types.ResRet.f32 %7198, 2
  %7202 = extractvalue %dx.types.ResRet.f32 %7198, 3
  %7203 = fsub fast float %7201, %7199
  %7204 = fsub fast float %7202, %7200
  %7205 = fmul fast float %7203, %5977
  %7206 = fmul fast float %7204, %5977
  %7207 = fadd fast float %7205, %7199
  %7208 = fadd fast float %7206, %7200
  %7209 = fmul fast float %7207, %5698
  %7210 = fmul fast float %7207, %5699
  %7211 = fmul fast float %7207, %5707
  %7212 = fadd fast float %7209, %7208
  %7213 = fadd fast float %7210, %7208
  %7214 = fadd fast float %7211, %7208
  br i1 %5990, label %7215, label %7238

; <label>:7215                                    ; preds = %7170
  %7216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = fadd fast float %7217, -5.000000e-01
  %7221 = fadd fast float %7218, -5.000000e-01
  %7222 = fadd fast float %7219, -5.000000e-01
  %7223 = fmul fast float %5698, 4.000000e+00
  %7224 = fmul fast float %7223, %7092
  %7225 = fmul fast float %7224, %7220
  %7226 = fmul fast float %5699, 4.000000e+00
  %7227 = fmul fast float %7226, %7093
  %7228 = fmul fast float %7227, %7221
  %7229 = fmul fast float %5707, 4.000000e+00
  %7230 = fmul fast float %7229, %7094
  %7231 = fmul fast float %7230, %7222
  %7232 = fadd fast float %7225, %7212
  %7233 = fadd fast float %7228, %7213
  %7234 = fadd fast float %7231, %7214
  %7235 = call float @dx.op.unary.f32(i32 7, float %7232)  ; Saturate(value)
  %7236 = call float @dx.op.unary.f32(i32 7, float %7233)  ; Saturate(value)
  %7237 = call float @dx.op.unary.f32(i32 7, float %7234)  ; Saturate(value)
  br label %7238

; <label>:7238                                    ; preds = %7215, %7170
  %7239 = phi float [ %7235, %7215 ], [ %7212, %7170 ]
  %7240 = phi float [ %7236, %7215 ], [ %7213, %7170 ]
  %7241 = phi float [ %7237, %7215 ], [ %7214, %7170 ]
  %7242 = call float @dx.op.binary.f32(i32 35, float %7240, float %7241)  ; FMax(a,b)
  %7243 = call float @dx.op.binary.f32(i32 35, float %7239, float %7242)  ; FMax(a,b)
  %7244 = fsub fast float 1.000000e+00, %7243
  %7245 = fmul fast float %6105, %6110
  %7246 = fadd fast float %6112, %7245
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = fsub fast float %6137, %5715
  %7249 = fsub fast float %6138, %5716
  %7250 = fsub fast float %6139, %5717
  %7251 = call float @dx.op.dot3.f32(i32 55, float %7248, float %7249, float %7250, float %7248, float %7249, float %7250)  ; Dot3(ax,ay,az,bx,by,bz)
  %7252 = call float @dx.op.unary.f32(i32 25, float %7251)  ; Rsqrt(value)
  %7253 = fmul fast float %7252, %7248
  %7254 = fmul fast float %7252, %7249
  %7255 = fmul fast float %7252, %7250
  %7256 = call float @dx.op.dot3.f32(i32 55, float %7191, float %7192, float %7193, float %7253, float %7254, float %7255)  ; Dot3(ax,ay,az,bx,by,bz)
  %7257 = fmul fast float %7256, %7256
  %7258 = call float @dx.op.unary.f32(i32 6, float %7195)  ; FAbs(value)
  %7259 = call float @dx.op.binary.f32(i32 35, float %7247, float 0x3F847AE140000000)  ; FMax(a,b)
  %7260 = fmul fast float %7259, %7259
  %7261 = fmul fast float %7260, %7260
  %7262 = fsub fast float 1.000000e+00, %7261
  %7263 = fmul fast float %7056, %7262
  %7264 = fadd fast float %7263, %7261
  %7265 = bitcast float %7264 to i32
  %7266 = ashr i32 %7265, 1
  %7267 = add nsw i32 %7266, 532487669
  %7268 = bitcast i32 %7267 to float
  %7269 = fadd fast float %7268, %5709
  %7270 = fmul fast float %7261, %7257
  %7271 = fsub fast float 1.000000e+00, %7257
  %7272 = fadd fast float %7271, %7270
  %7273 = fmul fast float %7258, %7258
  %7274 = fmul fast float %7273, %7262
  %7275 = fadd fast float %7274, %7261
  %7276 = bitcast float %7275 to i32
  %7277 = ashr i32 %7276, 1
  %7278 = add nsw i32 %7277, 532487669
  %7279 = bitcast i32 %7278 to float
  %7280 = fadd fast float %7279, %7258
  %7281 = fmul fast float %7272, %7272
  %7282 = fmul fast float %7281, %7269
  %7283 = fmul fast float %7282, %7280
  %7284 = fdiv fast float 0x3FF0A00000000000, %7283
  %7285 = fmul fast float %7284, %7261
  %7286 = fmul fast float %7195, %7188
  %7287 = fmul fast float %7195, %7189
  %7288 = fmul fast float %7195, %7190
  %7289 = fmul fast float %7286, %7244
  %7290 = fmul fast float %7289, %7285
  %7291 = fmul fast float %7287, %7244
  %7292 = fmul fast float %7291, %7285
  %7293 = fmul fast float %7288, %7244
  %7294 = fmul fast float %7293, %7285
  %7295 = fmul fast float %7125, %7079
  %7296 = fmul fast float %7126, %7079
  %7297 = fmul fast float %7127, %7079
  %7298 = fsub fast float 1.000000e+00, %7043
  %7299 = bitcast float %7298 to i32
  %7300 = sitofp i32 %7299 to float
  %7301 = fmul fast float %7300, 5.000000e+00
  %7302 = fadd fast float %7301, 0xC1EFBF8940000000
  %7303 = fptosi float %7302 to i32
  %7304 = bitcast i32 %7303 to float
  %7305 = fmul fast float %7304, %5065
  %7306 = fmul fast float %7176, %7305
  %7307 = fmul fast float %7306, %6037
  %7308 = fmul fast float %7306, %6038
  %7309 = fmul fast float %7306, %6039
  %7310 = fadd fast float %7307, %7295
  %7311 = fadd fast float %7308, %7296
  %7312 = fadd fast float %7309, %7297
  %7313 = fmul fast float %7310, %7048
  %7314 = fmul fast float %7311, %7048
  %7315 = fmul fast float %7312, %7048
  %7316 = fmul fast float %7048, %7031
  %7317 = fmul fast float %7316, %7176
  %7318 = fmul fast float %7048, %7032
  %7319 = fmul fast float %7318, %7176
  %7320 = fmul fast float %7048, %7033
  %7321 = fmul fast float %7320, %7176
  %7322 = fadd fast float %7313, %7290
  %7323 = fadd fast float %7314, %7292
  %7324 = fadd fast float %7315, %7294
  %7325 = fmul fast float %7322, %7031
  %7326 = fmul fast float %7323, %7032
  %7327 = fmul fast float %7324, %7033
  %7328 = fadd fast float %7317, %6127
  %7329 = fmul fast float %7328, %5061
  %7330 = fadd fast float %7319, %6129
  %7331 = fmul fast float %7330, %5061
  %7332 = fadd fast float %7321, %6131
  %7333 = fmul fast float %7332, %5061
  %7334 = fadd fast float %7325, %6090
  %7335 = fmul fast float %7334, %5061
  %7336 = fadd fast float %7326, %6093
  %7337 = fmul fast float %7336, %5061
  %7338 = fadd fast float %7327, %6096
  %7339 = fmul fast float %7338, %5061
  br label %7340

; <label>:7340                                    ; preds = %7238, %6949, %6017
  %7341 = phi float [ %6091, %6017 ], [ %6091, %6949 ], [ %7335, %7238 ]
  %7342 = phi float [ %6094, %6017 ], [ %6094, %6949 ], [ %7337, %7238 ]
  %7343 = phi float [ %6097, %6017 ], [ %6097, %6949 ], [ %7339, %7238 ]
  %7344 = phi float [ %6128, %6017 ], [ %6128, %6949 ], [ %7329, %7238 ]
  %7345 = phi float [ %6130, %6017 ], [ %6130, %6949 ], [ %7331, %7238 ]
  %7346 = phi float [ %6132, %6017 ], [ %6132, %6949 ], [ %7333, %7238 ]
  %7347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.i32 %7347, 0
  %7349 = icmp eq i32 %7348, 0
  br i1 %7349, label %8124, label %7350

; <label>:7350                                    ; preds = %7340
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7354 = fmul fast float %7352, %100
  %7355 = fmul fast float %7353, %101
  %7356 = fptoui float %7354 to i32
  %7357 = fptoui float %7355 to i32
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7361 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7362 = fadd fast float %91, -4.000000e+00
  %7363 = call float @dx.op.binary.f32(i32 35, float %7362, float 0.000000e+00)  ; FMax(a,b)
  %7364 = fadd fast float %7363, %7359
  %7365 = fmul fast float %7364, %7360
  %7366 = call float @dx.op.unary.f32(i32 23, float %7365)  ; Log(value)
  %7367 = fmul fast float %7366, %7361
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7370 = fmul fast float %7367, %7369
  %7371 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  %7372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.i32 %7372, 1
  %7374 = add i32 %7373, -1
  %7375 = uitofp i32 %7373 to float
  %7376 = fmul fast float %7375, %7371
  %7377 = fptoui float %7376 to i32
  %7378 = call i32 @dx.op.binary.i32(i32 40, i32 %7377, i32 %7374)  ; UMin(a,b)
  %7379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.i32 %7379, 2
  %7381 = extractvalue %dx.types.CBufRet.i32 %7379, 3
  %7382 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7357, i32 %7380, i32 %7356)  ; UMad(a,b,c)
  %7383 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7378, i32 %7381, i32 %7382)  ; UMad(a,b,c)
  %7384 = add nsw i32 %7348, -1
  %7385 = call i32 @dx.op.binary.i32(i32 37, i32 %7384, i32 0)  ; IMax(a,b)
  %7386 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7387 = fptoui float %7386 to i32
  %7388 = lshr i32 %7387, 5
  %7389 = call i32 @dx.op.binary.i32(i32 40, i32 %7388, i32 8191)  ; UMin(a,b)
  %7390 = shl i32 %7389, 2
  %7391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7390, i32 undef)  ; BufferLoad(srv,index,wot)
  %7392 = extractvalue %dx.types.ResRet.i32 %7391, 0
  %7393 = lshr i32 %7392, 16
  %7394 = and i32 %7392, 65535
  %7395 = lshr i32 %7392, 21
  %7396 = lshr i32 %7394, 5
  %7397 = call i32 @dx.op.binary.i32(i32 40, i32 %7396, i32 %7385)  ; UMin(a,b)
  %7398 = icmp ugt i32 %7395, %7397
  br i1 %7398, label %8124, label %7399

; <label>:7399                                    ; preds = %7350
  br label %7400

; <label>:7400                                    ; preds = %8114, %7399
  %7401 = phi i32 [ %8121, %8114 ], [ %7395, %7399 ]
  %7402 = phi float [ %8115, %8114 ], [ %7341, %7399 ]
  %7403 = phi float [ %8116, %8114 ], [ %7342, %7399 ]
  %7404 = phi float [ %8117, %8114 ], [ %7343, %7399 ]
  %7405 = phi float [ %8118, %8114 ], [ %7344, %7399 ]
  %7406 = phi float [ %8119, %8114 ], [ %7345, %7399 ]
  %7407 = phi float [ %8120, %8114 ], [ %7346, %7399 ]
  %7408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.i32 %7408, 0
  %7410 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7383, i32 %7409, i32 %7401)  ; UMad(a,b,c)
  %7411 = shl i32 %7410, 2
  %7412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7411, i32 undef)  ; BufferLoad(srv,index,wot)
  %7413 = extractvalue %dx.types.ResRet.i32 %7412, 0
  %7414 = shl i32 %7401, 5
  %7415 = sub nsw i32 %7393, %7414
  %7416 = call i32 @dx.op.binary.i32(i32 37, i32 %7415, i32 0)  ; IMax(a,b)
  %7417 = call i32 @dx.op.binary.i32(i32 38, i32 %7416, i32 31)  ; IMin(a,b)
  %7418 = sub nsw i32 1, %7393
  %7419 = add nsw i32 %7418, %7394
  %7420 = call i32 @dx.op.binary.i32(i32 37, i32 %7419, i32 0)  ; IMax(a,b)
  %7421 = call i32 @dx.op.binary.i32(i32 38, i32 %7420, i32 32)  ; IMin(a,b)
  %7422 = and i32 %7421, 31
  %7423 = shl i32 -1, %7422
  %7424 = xor i32 %7423, -1
  %7425 = and i32 %7417, 31
  %7426 = shl i32 %7424, %7425
  %7427 = icmp eq i32 %7421, 32
  %7428 = select i1 %7427, i32 -1, i32 %7426
  %7429 = and i32 %7428, %7413
  %7430 = icmp eq i32 %7429, 0
  br i1 %7430, label %8114, label %7431

; <label>:7431                                    ; preds = %7400
  br label %7432

; <label>:7432                                    ; preds = %7567, %7431
  %7433 = phi i32 [ %7444, %7567 ], [ %7429, %7431 ]
  %7434 = phi float [ %7568, %7567 ], [ %7402, %7431 ]
  %7435 = phi float [ %7569, %7567 ], [ %7403, %7431 ]
  %7436 = phi float [ %7570, %7567 ], [ %7404, %7431 ]
  %7437 = phi float [ %7571, %7567 ], [ %7405, %7431 ]
  %7438 = phi float [ %7572, %7567 ], [ %7406, %7431 ]
  %7439 = phi float [ %7573, %7567 ], [ %7407, %7431 ]
  %7440 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7433)  ; FirstbitLo(value)
  %7441 = add i32 %7440, %7414
  %7442 = and i32 %7440, 31
  %7443 = shl i32 1, %7442
  %7444 = xor i32 %7443, %7433
  %7445 = mul i32 %7441, 112
  %7446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7445, i32 undef)  ; BufferLoad(srv,index,wot)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.ResRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.ResRet.f32 %7446, 2
  %7450 = or i32 %7445, 12
  %7451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7450, i32 undef)  ; BufferLoad(srv,index,wot)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = add i32 %7445, 16
  %7454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7453, i32 undef)  ; BufferLoad(srv,index,wot)
  %7455 = extractvalue %dx.types.ResRet.f32 %7454, 0
  %7456 = extractvalue %dx.types.ResRet.f32 %7454, 1
  %7457 = extractvalue %dx.types.ResRet.f32 %7454, 2
  %7458 = add i32 %7445, 28
  %7459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7458, i32 undef)  ; BufferLoad(srv,index,wot)
  %7460 = extractvalue %dx.types.ResRet.i32 %7459, 0
  %7461 = add i32 %7445, 44
  %7462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7461, i32 undef)  ; BufferLoad(srv,index,wot)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = add i32 %7445, 48
  %7465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.ResRet.f32 %7465, 1
  %7468 = extractvalue %dx.types.ResRet.f32 %7465, 2
  %7469 = extractvalue %dx.types.ResRet.f32 %7465, 3
  %7470 = add i32 %7445, 64
  %7471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7470, i32 undef)  ; BufferLoad(srv,index,wot)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.ResRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.ResRet.f32 %7471, 2
  %7475 = extractvalue %dx.types.ResRet.f32 %7471, 3
  %7476 = add i32 %7445, 80
  %7477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7476, i32 undef)  ; BufferLoad(srv,index,wot)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7477, 2
  %7480 = add i32 %7445, 92
  %7481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7480, i32 undef)  ; BufferLoad(srv,index,wot)
  %7482 = extractvalue %dx.types.ResRet.i32 %7481, 0
  %7483 = call float @dx.op.dot3.f32(i32 55, float %7447, float %7448, float %7449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7484 = select i1 %217, float %7478, float %7447
  %7485 = select i1 %217, float %7483, float %7448
  %7486 = select i1 %217, float %7479, float %7449
  %7487 = and i32 %7482, 65535
  %7488 = uitofp i32 %7487 to float
  %7489 = lshr i32 %7482, 16
  %7490 = uitofp i32 %7489 to float
  %7491 = and i32 %7460, 65535
  %7492 = and i32 %7460, 50331648
  %7493 = icmp slt i32 %7460, 0
  %7494 = icmp eq i32 %7492, 33554432
  %7495 = fsub fast float %7466, %155
  %7496 = fsub fast float %7467, %156
  %7497 = fsub fast float %7468, %157
  %7498 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7496, float %7497, float %7495, float %7496, float %7497)  ; Dot3(ax,ay,az,bx,by,bz)
  %7499 = call float @dx.op.unary.f32(i32 24, float %7498)  ; Sqrt(value)
  %7500 = fdiv fast float 1.000000e+00, %7499
  %7501 = fmul fast float %7500, %7495
  %7502 = fmul fast float %7500, %7496
  %7503 = fmul fast float %7500, %7497
  %7504 = fadd fast float %7499, %7452
  %7505 = fdiv fast float 1.000000e+00, %7504
  %7506 = fmul float %7463, %7505
  %7507 = fmul float %7506, %7506
  %7508 = call float @dx.op.unary.f32(i32 7, float %7507)  ; Saturate(value)
  br i1 %7494, label %7509, label %7530

; <label>:7509                                    ; preds = %7432
  %7510 = fmul fast float %7474, %7455
  %7511 = fmul fast float %7474, %7456
  %7512 = fmul fast float %7474, %7457
  %7513 = fadd fast float %7495, %7510
  %7514 = fadd fast float %7496, %7511
  %7515 = fadd fast float %7497, %7512
  %7516 = call float @dx.op.dot3.f32(i32 55, float %7513, float %7514, float %7515, float %7513, float %7514, float %7515)  ; Dot3(ax,ay,az,bx,by,bz)
  %7517 = call float @dx.op.unary.f32(i32 25, float %7516)  ; Rsqrt(value)
  %7518 = fmul fast float %7517, %7513
  %7519 = fmul fast float %7517, %7514
  %7520 = fmul fast float %7517, %7515
  %7521 = fsub fast float %155, %7466
  %7522 = fsub fast float %156, %7467
  %7523 = fsub fast float %157, %7468
  %7524 = fsub fast float -0.000000e+00, %7521
  %7525 = fsub fast float -0.000000e+00, %7522
  %7526 = fsub fast float -0.000000e+00, %7523
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7524, float %7525, float %7526, float %7455, float %7456, float %7457)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = fcmp fast ogt float %7527, 0.000000e+00
  %7529 = uitofp i1 %7528 to float
  br label %7530

; <label>:7530                                    ; preds = %7509, %7432
  %7531 = phi float [ %7529, %7509 ], [ 1.000000e+00, %7432 ]
  %7532 = phi float [ %7518, %7509 ], [ %7501, %7432 ]
  %7533 = phi float [ %7519, %7509 ], [ %7502, %7432 ]
  %7534 = phi float [ %7520, %7509 ], [ %7503, %7432 ]
  %7535 = call float @dx.op.dot3.f32(i32 55, float %7455, float %7456, float %7457, float %7532, float %7533, float %7534)  ; Dot3(ax,ay,az,bx,by,bz)
  %7536 = fmul fast float %7535, %7535
  %7537 = call float @dx.op.unary.f32(i32 7, float %7536)  ; Saturate(value)
  %7538 = fsub fast float 1.000000e+00, %7537
  %7539 = fmul fast float %7538, 5.000000e-01
  %7540 = fcmp fast ogt float %7535, 0.000000e+00
  %7541 = fsub fast float 1.000000e+00, %7539
  %7542 = select i1 %7540, float %7539, float %7541
  %7543 = fmul fast float %7542, %7490
  %7544 = fadd fast float %7543, %7488
  %7545 = fmul fast float %7544, 0x3EF0001000000000
  %7546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7545, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7547 = extractvalue %dx.types.ResRet.f32 %7546, 0
  %7548 = fmul fast float %7535, %7472
  %7549 = fadd fast float %7548, %7473
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  %7551 = select i1 %7494, float 1.000000e+00, float %7550
  %7552 = select i1 %7494, float %7550, float 1.000000e+00
  %7553 = fmul fast float %7499, %7469
  %7554 = fsub fast float 1.000000e+00, %7553
  %7555 = fmul fast float %7554, %7475
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = fmul fast float %7556, %7552
  %7558 = fmul fast float %7557, 2.000000e+00
  %7559 = fsub fast float 3.000000e+00, %7558
  %7560 = fmul fast float %7547, %7531
  %7561 = fmul fast float %7557, %7557
  %7562 = fmul fast float %7561, %7560
  %7563 = fmul fast float %7562, %7559
  %7564 = call float @dx.op.binary.f32(i32 36, float %7563, float %7563)  ; FMin(a,b)
  %7565 = call float @dx.op.binary.f32(i32 36, float %7563, float %7564)  ; FMin(a,b)
  %7566 = fcmp fast ogt float %7565, 0.000000e+00
  br i1 %7566, label %7575, label %7567, !dx.controlflow.hints !119

; <label>:7567                                    ; preds = %8067, %7675, %7530
  %7568 = phi float [ %7434, %7675 ], [ %7434, %7530 ], [ %8110, %8067 ]
  %7569 = phi float [ %7435, %7675 ], [ %7435, %7530 ], [ %8111, %8067 ]
  %7570 = phi float [ %7436, %7675 ], [ %7436, %7530 ], [ %8112, %8067 ]
  %7571 = phi float [ %7437, %7675 ], [ %7437, %7530 ], [ %8104, %8067 ]
  %7572 = phi float [ %7438, %7675 ], [ %7438, %7530 ], [ %8105, %8067 ]
  %7573 = phi float [ %7439, %7675 ], [ %7439, %7530 ], [ %8106, %8067 ]
  %7574 = icmp eq i32 %7433, %7443
  br i1 %7574, label %8113, label %7432

; <label>:7575                                    ; preds = %7530
  %7576 = icmp eq i32 %7491, 255
  br i1 %7576, label %7675, label %7577, !dx.controlflow.hints !120

; <label>:7577                                    ; preds = %7575
  %7578 = mul nuw nsw i32 %7491, 176
  %7579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7578, i32 undef)  ; BufferLoad(srv,index,wot)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = extractvalue %dx.types.ResRet.f32 %7579, 1
  %7582 = extractvalue %dx.types.ResRet.f32 %7579, 2
  %7583 = extractvalue %dx.types.ResRet.f32 %7579, 3
  %7584 = add nuw nsw i32 %7578, 16
  %7585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7584, i32 undef)  ; BufferLoad(srv,index,wot)
  %7586 = extractvalue %dx.types.ResRet.f32 %7585, 0
  %7587 = extractvalue %dx.types.ResRet.f32 %7585, 1
  %7588 = add nuw nsw i32 %7578, 32
  %7589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7588, i32 undef)  ; BufferLoad(srv,index,wot)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = extractvalue %dx.types.ResRet.f32 %7589, 1
  %7592 = extractvalue %dx.types.ResRet.f32 %7589, 2
  %7593 = add nuw nsw i32 %7578, 48
  %7594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7593, i32 undef)  ; BufferLoad(srv,index,wot)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.ResRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.ResRet.f32 %7594, 2
  %7598 = extractvalue %dx.types.ResRet.f32 %7594, 3
  %7599 = add nuw nsw i32 %7578, 64
  %7600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7599, i32 undef)  ; BufferLoad(srv,index,wot)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 0
  %7602 = extractvalue %dx.types.ResRet.f32 %7600, 1
  %7603 = extractvalue %dx.types.ResRet.f32 %7600, 2
  %7604 = extractvalue %dx.types.ResRet.f32 %7600, 3
  %7605 = add nuw nsw i32 %7578, 80
  %7606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7605, i32 undef)  ; BufferLoad(srv,index,wot)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.ResRet.f32 %7606, 2
  %7610 = extractvalue %dx.types.ResRet.f32 %7606, 3
  %7611 = add nuw nsw i32 %7578, 96
  %7612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7611, i32 undef)  ; BufferLoad(srv,index,wot)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.ResRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.ResRet.f32 %7612, 2
  %7616 = extractvalue %dx.types.ResRet.f32 %7612, 3
  %7617 = bitcast float %7587 to i32
  %7618 = fmul fast float %7592, %107
  %7619 = fmul fast float %7592, %108
  %7620 = fmul fast float %7592, %109
  %7621 = fadd fast float %7618, %155
  %7622 = fadd fast float %7619, %156
  %7623 = fadd fast float %7620, %157
  %7624 = fmul fast float %7621, %7595
  %7625 = call float @dx.op.tertiary.f32(i32 46, float %7622, float %7601, float %7624)  ; FMad(a,b,c)
  %7626 = call float @dx.op.tertiary.f32(i32 46, float %7623, float %7607, float %7625)  ; FMad(a,b,c)
  %7627 = fadd fast float %7626, %7613
  %7628 = fmul fast float %7621, %7596
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7622, float %7602, float %7628)  ; FMad(a,b,c)
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %7623, float %7608, float %7629)  ; FMad(a,b,c)
  %7631 = fadd fast float %7630, %7614
  %7632 = fmul fast float %7621, %7597
  %7633 = call float @dx.op.tertiary.f32(i32 46, float %7622, float %7603, float %7632)  ; FMad(a,b,c)
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %7623, float %7609, float %7633)  ; FMad(a,b,c)
  %7635 = fadd fast float %7634, %7615
  %7636 = fmul fast float %7621, %7598
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7622, float %7604, float %7636)  ; FMad(a,b,c)
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7623, float %7610, float %7637)  ; FMad(a,b,c)
  %7639 = fadd fast float %7638, %7616
  %7640 = fdiv fast float %7627, %7639
  %7641 = fdiv fast float %7631, %7639
  %7642 = fdiv fast float %7635, %7639
  %7643 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7642)  ; FMax(a,b)
  %7644 = fmul fast float %228, 0x401921FB60000000
  %7645 = call float @dx.op.unary.f32(i32 13, float %7644)  ; Sin(value)
  %7646 = call float @dx.op.unary.f32(i32 12, float %7644)  ; Cos(value)
  %7647 = fsub fast float -0.000000e+00, %7645
  %7648 = fmul fast float %7582, 5.000000e-01
  %7649 = call float @dx.op.dot2.f32(i32 54, float %228, float %228, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7650 = call float @dx.op.unary.f32(i32 22, float %7649)  ; Frc(value)
  %7651 = fmul fast float %7650, 0x404A7DD040000000
  %7652 = call float @dx.op.unary.f32(i32 22, float %7651)  ; Frc(value)
  %7653 = fmul fast float %7652, %7591
  %7654 = fadd fast float %7653, %7648
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7647, float 0.000000e+00)  ; FMad(a,b,c)
  %7656 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7646, float 0.000000e+00)  ; FMad(a,b,c)
  %7657 = fadd fast float %7655, %7640
  %7658 = fadd fast float %7656, %7641
  %7659 = fmul fast float %7657, %7586
  %7660 = fmul fast float %7658, %7586
  %7661 = call float @dx.op.binary.f32(i32 35, float %7659, float %7582)  ; FMax(a,b)
  %7662 = call float @dx.op.binary.f32(i32 35, float %7660, float %7582)  ; FMax(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7661, float %7583)  ; FMin(a,b)
  %7664 = call float @dx.op.binary.f32(i32 36, float %7662, float %7583)  ; FMin(a,b)
  %7665 = fadd fast float %7663, %7580
  %7666 = fadd fast float %7664, %7581
  %7667 = uitofp i32 %7617 to float
  %7668 = fadd fast float %7643, %7590
  %7669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7665, float %7666, float %7667, float undef, i32 0, i32 0, i32 undef, float %7668)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = fadd fast float %7670, -1.000000e+00
  %7672 = fmul fast float %7671, %7551
  %7673 = fadd fast float %7672, 1.000000e+00
  %7674 = fmul fast float %7673, %7563
  br label %7675

; <label>:7675                                    ; preds = %7577, %7575
  %7676 = phi float [ %7674, %7577 ], [ %7563, %7575 ]
  %7677 = call float @dx.op.binary.f32(i32 36, float %7676, float %7676)  ; FMin(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7676, float %7677)  ; FMin(a,b)
  %7679 = fcmp fast ogt float %7678, 0.000000e+00
  br i1 %7679, label %7680, label %7567, !dx.controlflow.hints !121

; <label>:7680                                    ; preds = %7675
  %7681 = fmul fast float %7676, %7484
  %7682 = fmul fast float %7676, %7485
  %7683 = fmul fast float %7676, %7486
  %7684 = fsub fast float %7468, %5494
  %7685 = fcmp fast ogt float %7684, 0.000000e+00
  %7686 = fsub fast float %157, %5494
  %7687 = fcmp fast ogt float %7686, 0.000000e+00
  %7688 = xor i1 %7687, %7685
  %7689 = fsub fast float %5494, %7468
  %7690 = fmul fast float %7689, 2.000000e+00
  %7691 = fadd fast float %7690, %7468
  %7692 = select i1 %7688, float %7468, float %7691
  %7693 = fsub fast float %7692, %157
  %7694 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7496, float %7693, float %7495, float %7496, float %7693)  ; Dot3(ax,ay,az,bx,by,bz)
  %7695 = call float @dx.op.unary.f32(i32 25, float %7694)  ; Rsqrt(value)
  %7696 = fmul fast float %7695, %7495
  %7697 = fmul fast float %7695, %7496
  %7698 = fmul fast float %7695, %7693
  %7699 = fsub fast float %5494, %157
  %7700 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7699)  ; Dot3(ax,ay,az,bx,by,bz)
  %7701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7696, float %7697, float %7698)  ; Dot3(ax,ay,az,bx,by,bz)
  %7702 = fdiv fast float 1.000000e+00, %7701
  %7703 = fmul fast float %7702, %7700
  %7704 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7686, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7705 = fcmp fast ogt float %7704, 0.000000e+00
  %7706 = fcmp fast olt float %7704, 0.000000e+00
  %7707 = zext i1 %7705 to i32
  %7708 = zext i1 %7706 to i32
  %7709 = sub nsw i32 %7707, %7708
  %7710 = sitofp i32 %7709 to float
  %7711 = fsub fast float %7692, %5494
  %7712 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7496, float %7711, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7713 = fcmp fast ogt float %7712, 0.000000e+00
  %7714 = fcmp fast olt float %7712, 0.000000e+00
  %7715 = zext i1 %7713 to i32
  %7716 = zext i1 %7714 to i32
  %7717 = sub nsw i32 %7715, %7716
  %7718 = sitofp i32 %7717 to float
  %7719 = fcmp fast une float %7710, %7718
  br i1 %7719, label %7720, label %7730

; <label>:7720                                    ; preds = %7680
  %7721 = fmul fast float %7703, %7698
  %7722 = fmul fast float %7703, %7697
  %7723 = fmul fast float %7703, %7696
  %7724 = fmul fast float %7723, %7723
  %7725 = fmul fast float %7722, %7722
  %7726 = fadd fast float %7724, %7725
  %7727 = fmul fast float %7721, %7721
  %7728 = fadd fast float %7726, %7727
  %7729 = call float @dx.op.unary.f32(i32 24, float %7728)  ; Sqrt(value)
  br label %7742

; <label>:7730                                    ; preds = %7680
  %7731 = icmp slt i32 %7709, 0
  br i1 %7731, label %7732, label %7742

; <label>:7732                                    ; preds = %7730
  %7733 = fsub fast float %155, %7466
  %7734 = fsub fast float %156, %7467
  %7735 = fsub fast float %157, %7692
  %7736 = fmul fast float %7733, %7733
  %7737 = fmul fast float %7734, %7734
  %7738 = fadd fast float %7736, %7737
  %7739 = fmul fast float %7735, %7735
  %7740 = fadd fast float %7738, %7739
  %7741 = call float @dx.op.unary.f32(i32 24, float %7740)  ; Sqrt(value)
  br label %7742

; <label>:7742                                    ; preds = %7732, %7730, %7720
  %7743 = phi float [ %7729, %7720 ], [ %7741, %7732 ], [ 0.000000e+00, %7730 ]
  %7744 = and i1 %7687, %7685
  %7745 = fsub fast float -0.000000e+00, %7743
  %7746 = select i1 %7744, float -0.000000e+00, float %7745
  %7747 = fmul fast float %5495, 0x3FF7154760000000
  %7748 = fmul fast float %7747, %7746
  %7749 = fmul fast float %5496, 0x3FF7154760000000
  %7750 = fmul fast float %7749, %7746
  %7751 = fmul fast float %5497, 0x3FF7154760000000
  %7752 = fmul fast float %7751, %7746
  %7753 = call float @dx.op.unary.f32(i32 21, float %7748)  ; Exp(value)
  %7754 = call float @dx.op.unary.f32(i32 21, float %7750)  ; Exp(value)
  %7755 = call float @dx.op.unary.f32(i32 21, float %7752)  ; Exp(value)
  %7756 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7757 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7758 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7759 = fmul fast float %7681, %7756
  %7760 = fmul fast float %7682, %7757
  %7761 = fmul fast float %7683, %7758
  %7762 = fsub fast float %7501, %5694
  %7763 = fsub fast float %7502, %5693
  %7764 = fsub fast float %7503, %5692
  %7765 = call float @dx.op.dot3.f32(i32 55, float %7762, float %7763, float %7764, float %7762, float %7763, float %7764)  ; Dot3(ax,ay,az,bx,by,bz)
  %7766 = call float @dx.op.unary.f32(i32 25, float %7765)  ; Rsqrt(value)
  %7767 = fmul fast float %7766, %7762
  %7768 = fmul fast float %7766, %7763
  %7769 = fmul fast float %7766, %7764
  %7770 = call float @dx.op.dot3.f32(i32 55, float %7501, float %7502, float %7503, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %7771 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5690, float %5689, float %7767, float %7768, float %7769)  ; Dot3(ax,ay,az,bx,by,bz)
  %7772 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7773 = fmul fast float %7772, %7508
  %7774 = fmul fast float %7772, %7772
  %7775 = fmul fast float %7774, %5722
  %7776 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7777 = fmul fast float %7773, %7776
  %7778 = bitcast float %7498 to i32
  %7779 = ashr i32 %7778, 1
  %7780 = sub nsw i32 1597463007, %7779
  %7781 = bitcast i32 %7780 to float
  %7782 = fmul fast float %7781, %7495
  %7783 = fmul fast float %7781, %7496
  %7784 = fmul fast float %7781, %7497
  %7785 = fsub fast float %7782, %5694
  %7786 = fsub fast float %7783, %5693
  %7787 = fsub fast float %7784, %5692
  %7788 = call float @dx.op.dot3.f32(i32 55, float %7785, float %7786, float %7787, float %7785, float %7786, float %7787)  ; Dot3(ax,ay,az,bx,by,bz)
  %7789 = call float @dx.op.unary.f32(i32 25, float %7788)  ; Rsqrt(value)
  %7790 = fmul fast float %7785, %7789
  %7791 = fmul fast float %7786, %7789
  %7792 = fmul fast float %7787, %7789
  %7793 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %7790, float %7791, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = fmul fast float %7793, %7793
  %7795 = call float @dx.op.unary.f32(i32 6, float %7770)  ; FAbs(value)
  %7796 = call float @dx.op.binary.f32(i32 35, float %6105, float 0x3F847AE140000000)  ; FMax(a,b)
  %7797 = fmul fast float %7796, %7796
  %7798 = fmul fast float %7797, %7797
  %7799 = fsub fast float 1.000000e+00, %7798
  %7800 = fmul fast float %5709, %5709
  %7801 = fmul fast float %7800, %7799
  %7802 = fadd fast float %7801, %7798
  %7803 = bitcast float %7802 to i32
  %7804 = ashr i32 %7803, 1
  %7805 = add nsw i32 %7804, 532487669
  %7806 = bitcast i32 %7805 to float
  %7807 = fadd fast float %7806, %5709
  %7808 = fmul fast float %7798, %7794
  %7809 = fsub fast float 1.000000e+00, %7794
  %7810 = fadd fast float %7809, %7808
  %7811 = fmul fast float %7795, %7795
  %7812 = fmul fast float %7811, %7799
  %7813 = fadd fast float %7812, %7798
  %7814 = bitcast float %7813 to i32
  %7815 = ashr i32 %7814, 1
  %7816 = add nsw i32 %7815, 532487669
  %7817 = bitcast i32 %7816 to float
  %7818 = fadd fast float %7817, %7795
  %7819 = fmul fast float %7810, %7810
  %7820 = fmul fast float %7819, %7807
  %7821 = fmul fast float %7820, %7818
  %7822 = fdiv fast float 1.000000e+00, %7821
  %7823 = bitcast float %7798 to i32
  %7824 = sitofp i32 %7823 to float
  %7825 = fmul fast float %7824, 0x3FE7F73180000000
  %7826 = fadd fast float %7825, 0x41AFE27C40000000
  %7827 = fptosi float %7826 to i32
  %7828 = bitcast i32 %7827 to float
  %7829 = fmul fast float %7463, 0x3FD80E9D60000000
  %7830 = fmul fast float %7829, %7781
  %7831 = fadd fast float %7828, %7830
  %7832 = bitcast float %7831 to i32
  %7833 = sub nsw i32 2129859010, %7832
  %7834 = bitcast i32 %7833 to float
  %7835 = fmul fast float %7798, %7822
  %7836 = fmul fast float %7835, %7828
  %7837 = fmul fast float %7836, %7834
  %7838 = fmul fast float %5967, 0x3FF9999980000000
  %7839 = fsub fast float 5.000000e+00, %7838
  %7840 = call float @dx.op.unary.f32(i32 6, float %7771)  ; FAbs(value)
  %7841 = fsub fast float 1.000000e+00, %7840
  %7842 = fmul fast float %5967, 0x41D9660740000000
  %7843 = fadd fast float %7842, 0xC1EFBF8940000000
  %7844 = bitcast float %7841 to i32
  %7845 = sitofp i32 %7844 to float
  %7846 = fmul fast float %7845, %7839
  %7847 = fadd fast float %7843, %7846
  %7848 = fptosi float %7847 to i32
  %7849 = bitcast i32 %7848 to float
  %7850 = fsub fast float 1.000000e+00, %5698
  %7851 = fsub fast float 1.000000e+00, %5699
  %7852 = fsub fast float 1.000000e+00, %5707
  %7853 = fmul fast float %7849, %7850
  %7854 = fmul fast float %7849, %7851
  %7855 = fmul fast float %7849, %7852
  %7856 = fadd fast float %7853, %5698
  %7857 = fadd fast float %7854, %5699
  %7858 = fadd fast float %7855, %5707
  br i1 %5990, label %7859, label %7882

; <label>:7859                                    ; preds = %7742
  %7860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7861 = extractvalue %dx.types.ResRet.f32 %7860, 0
  %7862 = extractvalue %dx.types.ResRet.f32 %7860, 1
  %7863 = extractvalue %dx.types.ResRet.f32 %7860, 2
  %7864 = fadd fast float %7861, -5.000000e-01
  %7865 = fadd fast float %7862, -5.000000e-01
  %7866 = fadd fast float %7863, -5.000000e-01
  %7867 = fmul fast float %5698, 4.000000e+00
  %7868 = fmul fast float %7867, %7850
  %7869 = fmul fast float %7868, %7864
  %7870 = fmul fast float %5699, 4.000000e+00
  %7871 = fmul fast float %7870, %7851
  %7872 = fmul fast float %7871, %7865
  %7873 = fmul fast float %5707, 4.000000e+00
  %7874 = fmul fast float %7873, %7852
  %7875 = fmul fast float %7874, %7866
  %7876 = fadd fast float %7869, %7856
  %7877 = fadd fast float %7872, %7857
  %7878 = fadd fast float %7875, %7858
  %7879 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7880 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7881 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  br label %7882

; <label>:7882                                    ; preds = %7859, %7742
  %7883 = phi float [ %7879, %7859 ], [ %7856, %7742 ]
  %7884 = phi float [ %7880, %7859 ], [ %7857, %7742 ]
  %7885 = phi float [ %7881, %7859 ], [ %7858, %7742 ]
  %7886 = fmul fast float %7770, 9.843750e-01
  %7887 = fadd fast float %7886, 7.812500e-03
  %7888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7887, float %5971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7889 = extractvalue %dx.types.ResRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.ResRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.ResRet.f32 %7888, 2
  %7892 = extractvalue %dx.types.ResRet.f32 %7888, 3
  %7893 = fsub fast float %7891, %7889
  %7894 = fsub fast float %7892, %7890
  %7895 = fmul fast float %7893, %5977
  %7896 = fmul fast float %7894, %5977
  %7897 = fadd fast float %7895, %7889
  %7898 = fadd fast float %7896, %7890
  %7899 = fmul fast float %7897, %5698
  %7900 = fmul fast float %7897, %5699
  %7901 = fmul fast float %7897, %5707
  %7902 = fadd fast float %7899, %7898
  %7903 = fadd fast float %7900, %7898
  %7904 = fadd fast float %7901, %7898
  br i1 %5990, label %7905, label %7928

; <label>:7905                                    ; preds = %7882
  %7906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7907 = extractvalue %dx.types.ResRet.f32 %7906, 0
  %7908 = extractvalue %dx.types.ResRet.f32 %7906, 1
  %7909 = extractvalue %dx.types.ResRet.f32 %7906, 2
  %7910 = fadd fast float %7907, -5.000000e-01
  %7911 = fadd fast float %7908, -5.000000e-01
  %7912 = fadd fast float %7909, -5.000000e-01
  %7913 = fmul fast float %5698, 4.000000e+00
  %7914 = fmul fast float %7913, %7850
  %7915 = fmul fast float %7914, %7910
  %7916 = fmul fast float %5699, 4.000000e+00
  %7917 = fmul fast float %7916, %7851
  %7918 = fmul fast float %7917, %7911
  %7919 = fmul fast float %5707, 4.000000e+00
  %7920 = fmul fast float %7919, %7852
  %7921 = fmul fast float %7920, %7912
  %7922 = fadd fast float %7915, %7902
  %7923 = fadd fast float %7918, %7903
  %7924 = fadd fast float %7921, %7904
  %7925 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7926 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7927 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  br label %7928

; <label>:7928                                    ; preds = %7905, %7882
  %7929 = phi float [ %7925, %7905 ], [ %7902, %7882 ]
  %7930 = phi float [ %7926, %7905 ], [ %7903, %7882 ]
  %7931 = phi float [ %7927, %7905 ], [ %7904, %7882 ]
  %7932 = call float @dx.op.binary.f32(i32 35, float %7930, float %7931)  ; FMax(a,b)
  %7933 = call float @dx.op.binary.f32(i32 35, float %7929, float %7932)  ; FMax(a,b)
  %7934 = fsub fast float 1.000000e+00, %7933
  %7935 = call float @dx.op.binary.f32(i32 35, float %7795, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7936 = fdiv fast float %4418, %7935
  %7937 = fmul fast float %6045, %7936
  %7938 = fmul fast float %6047, %7936
  %7939 = fmul fast float %6049, %7936
  %7940 = call float @dx.op.unary.f32(i32 21, float %7937)  ; Exp(value)
  %7941 = call float @dx.op.unary.f32(i32 21, float %7938)  ; Exp(value)
  %7942 = call float @dx.op.unary.f32(i32 21, float %7939)  ; Exp(value)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7946 = select i1 %6042, float %7943, float 0.000000e+00
  %7947 = select i1 %6043, float %7944, float 0.000000e+00
  %7948 = select i1 %6044, float %7945, float 0.000000e+00
  %7949 = fsub fast float -0.000000e+00, %5701
  %7950 = fsub fast float -0.000000e+00, %5702
  %7951 = fsub fast float -0.000000e+00, %5703
  %7952 = call float @dx.op.dot3.f32(i32 55, float %7501, float %7502, float %7503, float %7949, float %7950, float %7951)  ; Dot3(ax,ay,az,bx,by,bz)
  %7953 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7954 = fmul fast float %7953, %7508
  %7955 = fmul fast float %7953, 9.843750e-01
  %7956 = fadd fast float %7955, 7.812500e-03
  %7957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7956, float %5971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7958 = extractvalue %dx.types.ResRet.f32 %7957, 0
  %7959 = extractvalue %dx.types.ResRet.f32 %7957, 1
  %7960 = extractvalue %dx.types.ResRet.f32 %7957, 2
  %7961 = extractvalue %dx.types.ResRet.f32 %7957, 3
  %7962 = fsub fast float %7960, %7958
  %7963 = fsub fast float %7961, %7959
  %7964 = fmul fast float %7962, %5977
  %7965 = fmul fast float %7963, %5977
  %7966 = fadd fast float %7964, %7958
  %7967 = fadd fast float %7965, %7959
  %7968 = fmul fast float %7966, %5698
  %7969 = fmul fast float %7966, %5699
  %7970 = fmul fast float %7966, %5707
  %7971 = fadd fast float %7968, %7967
  %7972 = fadd fast float %7969, %7967
  %7973 = fadd fast float %7970, %7967
  br i1 %5990, label %7974, label %7997

; <label>:7974                                    ; preds = %7928
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5064, float %7953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.ResRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.ResRet.f32 %7975, 2
  %7979 = fadd fast float %7976, -5.000000e-01
  %7980 = fadd fast float %7977, -5.000000e-01
  %7981 = fadd fast float %7978, -5.000000e-01
  %7982 = fmul fast float %5698, 4.000000e+00
  %7983 = fmul fast float %7982, %7850
  %7984 = fmul fast float %7983, %7979
  %7985 = fmul fast float %5699, 4.000000e+00
  %7986 = fmul fast float %7985, %7851
  %7987 = fmul fast float %7986, %7980
  %7988 = fmul fast float %5707, 4.000000e+00
  %7989 = fmul fast float %7988, %7852
  %7990 = fmul fast float %7989, %7981
  %7991 = fadd fast float %7984, %7971
  %7992 = fadd fast float %7987, %7972
  %7993 = fadd fast float %7990, %7973
  %7994 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7995 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7996 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  br label %7997

; <label>:7997                                    ; preds = %7974, %7928
  %7998 = phi float [ %7994, %7974 ], [ %7971, %7928 ]
  %7999 = phi float [ %7995, %7974 ], [ %7972, %7928 ]
  %8000 = phi float [ %7996, %7974 ], [ %7973, %7928 ]
  %8001 = call float @dx.op.binary.f32(i32 35, float %7999, float %8000)  ; FMax(a,b)
  %8002 = call float @dx.op.binary.f32(i32 35, float %7998, float %8001)  ; FMax(a,b)
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = fmul fast float %6105, %6110
  %8005 = fadd fast float %6112, %8004
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8007 = fsub fast float %7782, %5715
  %8008 = fsub fast float %7783, %5716
  %8009 = fsub fast float %7784, %5717
  %8010 = call float @dx.op.dot3.f32(i32 55, float %8007, float %8008, float %8009, float %8007, float %8008, float %8009)  ; Dot3(ax,ay,az,bx,by,bz)
  %8011 = call float @dx.op.unary.f32(i32 25, float %8010)  ; Rsqrt(value)
  %8012 = fmul fast float %8007, %8011
  %8013 = fmul fast float %8008, %8011
  %8014 = fmul fast float %8009, %8011
  %8015 = call float @dx.op.dot3.f32(i32 55, float %7949, float %7950, float %7951, float %8012, float %8013, float %8014)  ; Dot3(ax,ay,az,bx,by,bz)
  %8016 = fmul fast float %8015, %8015
  %8017 = call float @dx.op.unary.f32(i32 6, float %7953)  ; FAbs(value)
  %8018 = call float @dx.op.binary.f32(i32 35, float %8006, float 0x3F847AE140000000)  ; FMax(a,b)
  %8019 = fmul fast float %8018, %8018
  %8020 = fmul fast float %8019, %8019
  %8021 = fsub fast float 1.000000e+00, %8020
  %8022 = fmul fast float %7800, %8021
  %8023 = fadd fast float %8022, %8020
  %8024 = bitcast float %8023 to i32
  %8025 = ashr i32 %8024, 1
  %8026 = add nsw i32 %8025, 532487669
  %8027 = bitcast i32 %8026 to float
  %8028 = fadd fast float %8027, %5709
  %8029 = fmul fast float %8020, %8016
  %8030 = fsub fast float 1.000000e+00, %8016
  %8031 = fadd fast float %8030, %8029
  %8032 = fmul fast float %8017, %8017
  %8033 = fmul fast float %8032, %8021
  %8034 = fadd fast float %8033, %8020
  %8035 = bitcast float %8034 to i32
  %8036 = ashr i32 %8035, 1
  %8037 = add nsw i32 %8036, 532487669
  %8038 = bitcast i32 %8037 to float
  %8039 = fadd fast float %8038, %8017
  %8040 = fmul fast float %8031, %8031
  %8041 = fmul fast float %8040, %8028
  %8042 = fmul fast float %8041, %8039
  %8043 = fdiv fast float 1.000000e+00, %8042
  %8044 = bitcast float %8020 to i32
  %8045 = sitofp i32 %8044 to float
  %8046 = fmul fast float %8045, 0x3FE7F73180000000
  %8047 = fadd fast float %8046, 0x41AFE27C40000000
  %8048 = fptosi float %8047 to i32
  %8049 = bitcast i32 %8048 to float
  %8050 = fadd fast float %8049, %7830
  %8051 = bitcast float %8050 to i32
  %8052 = sub nsw i32 2129859010, %8051
  %8053 = bitcast i32 %8052 to float
  %8054 = fmul fast float %8020, %8043
  %8055 = fmul fast float %8054, %8049
  %8056 = fmul fast float %8055, %8053
  br i1 %7493, label %8057, label %8067

; <label>:8057                                    ; preds = %7997
  %8058 = fmul fast float %7954, %7946
  %8059 = fmul fast float %7954, %7947
  %8060 = fmul fast float %7954, %7948
  %8061 = fmul fast float %8058, %8003
  %8062 = fmul fast float %8061, %8056
  %8063 = fmul fast float %8059, %8003
  %8064 = fmul fast float %8063, %8056
  %8065 = fmul fast float %8060, %8003
  %8066 = fmul fast float %8065, %8056
  br label %8067

; <label>:8067                                    ; preds = %8057, %7997
  %8068 = phi float [ %8062, %8057 ], [ 0.000000e+00, %7997 ]
  %8069 = phi float [ %8064, %8057 ], [ 0.000000e+00, %7997 ]
  %8070 = phi float [ %8066, %8057 ], [ 0.000000e+00, %7997 ]
  %8071 = fmul fast float %7883, %7837
  %8072 = fmul fast float %7884, %7837
  %8073 = fmul fast float %7885, %7837
  %8074 = fsub fast float 1.000000e+00, %7771
  %8075 = bitcast float %8074 to i32
  %8076 = sitofp i32 %8075 to float
  %8077 = fmul fast float %8076, 5.000000e+00
  %8078 = fadd fast float %8077, 0xC1EFBF8940000000
  %8079 = fptosi float %8078 to i32
  %8080 = bitcast i32 %8079 to float
  %8081 = fmul fast float %8080, %5065
  %8082 = fmul fast float %7934, %8081
  %8083 = fmul fast float %8082, %6037
  %8084 = fmul fast float %8082, %6038
  %8085 = fmul fast float %8082, %6039
  %8086 = fadd fast float %8083, %8071
  %8087 = fadd fast float %8084, %8072
  %8088 = fadd fast float %8085, %8073
  %8089 = fmul fast float %8086, %7777
  %8090 = fmul fast float %8087, %7777
  %8091 = fmul fast float %8088, %7777
  %8092 = fadd fast float %8089, %8068
  %8093 = fadd fast float %8090, %8069
  %8094 = fadd fast float %8091, %8070
  %8095 = fmul fast float %7759, %5061
  %8096 = fmul fast float %8095, %7777
  %8097 = fmul fast float %8096, %7934
  %8098 = fmul fast float %7760, %5061
  %8099 = fmul fast float %8098, %7777
  %8100 = fmul fast float %8099, %7934
  %8101 = fmul fast float %7761, %5061
  %8102 = fmul fast float %8101, %7777
  %8103 = fmul fast float %8102, %7934
  %8104 = fadd fast float %8097, %7437
  %8105 = fadd fast float %8100, %7438
  %8106 = fadd fast float %8103, %7439
  %8107 = fmul fast float %8095, %8092
  %8108 = fmul fast float %8098, %8093
  %8109 = fmul fast float %8101, %8094
  %8110 = fadd fast float %8107, %7434
  %8111 = fadd fast float %8108, %7435
  %8112 = fadd fast float %8109, %7436
  br label %7567

; <label>:8113                                    ; preds = %7567
  br label %8114

; <label>:8114                                    ; preds = %8113, %7400
  %8115 = phi float [ %7402, %7400 ], [ %7568, %8113 ]
  %8116 = phi float [ %7403, %7400 ], [ %7569, %8113 ]
  %8117 = phi float [ %7404, %7400 ], [ %7570, %8113 ]
  %8118 = phi float [ %7405, %7400 ], [ %7571, %8113 ]
  %8119 = phi float [ %7406, %7400 ], [ %7572, %8113 ]
  %8120 = phi float [ %7407, %7400 ], [ %7573, %8113 ]
  %8121 = add i32 %7401, 1
  %8122 = icmp ugt i32 %8121, %7397
  br i1 %8122, label %8123, label %7400

; <label>:8123                                    ; preds = %8114
  br label %8124

; <label>:8124                                    ; preds = %8123, %7350, %7340
  %8125 = phi float [ %7341, %7340 ], [ %7341, %7350 ], [ %8115, %8123 ]
  %8126 = phi float [ %7342, %7340 ], [ %7342, %7350 ], [ %8116, %8123 ]
  %8127 = phi float [ %7343, %7340 ], [ %7343, %7350 ], [ %8117, %8123 ]
  %8128 = phi float [ %7344, %7340 ], [ %7344, %7350 ], [ %8118, %8123 ]
  %8129 = phi float [ %7345, %7340 ], [ %7345, %7350 ], [ %8119, %8123 ]
  %8130 = phi float [ %7346, %7340 ], [ %7346, %7350 ], [ %8120, %8123 ]
  %8131 = fmul fast float %5061, %6066
  %8132 = fsub fast float -0.000000e+00, %8131
  %8133 = fmul fast float %5061, %6067
  %8134 = fsub fast float -0.000000e+00, %8133
  %8135 = fmul fast float %5061, %6068
  %8136 = fsub fast float -0.000000e+00, %8135
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = fmul fast float %8138, %6072
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 3
  %8142 = fsub fast float 1.000000e+00, %5068
  %8143 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8144 = fadd fast float %8130, %5067
  %8145 = fmul fast float %8144, %5068
  %8146 = fmul fast float %8143, %8141
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = fmul fast float %8128, %5695
  %8150 = fmul fast float %8129, %5696
  %8151 = fmul fast float %8130, %5697
  %8152 = fcmp fast ogt float %91, %177
  %8153 = and i1 %8152, %5500
  %8154 = or i1 %5506, %8153
  %8155 = icmp eq i32 %5499, 2
  %8156 = fcmp fast ole float %91, %177
  %8157 = and i1 %8156, %8155
  %8158 = or i1 %8157, %8154
  br i1 %8153, label %8159, label %8416

; <label>:8159                                    ; preds = %8124
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8163 = fmul fast float %8161, %100
  %8164 = fmul fast float %8162, %101
  %8165 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8166 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8165, float %8166, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8168 = extractvalue %dx.types.ResRet.f32 %8167, 0
  %8169 = extractvalue %dx.types.ResRet.f32 %8167, 1
  %8170 = extractvalue %dx.types.ResRet.f32 %8167, 2
  %8171 = extractvalue %dx.types.ResRet.f32 %8167, 3
  %8172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8165, float %8166, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8173 = extractvalue %dx.types.ResRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.ResRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.ResRet.f32 %8172, 2
  %8176 = extractvalue %dx.types.ResRet.f32 %8172, 3
  %8177 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8168, float %8177)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8178, float %8171)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8174, float %8175)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8173, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 36, float %8181, float %8176)  ; FMin(a,b)
  %8183 = fmul fast float %8179, 2.550000e+02
  %8184 = fadd fast float %8183, 0x3F70101020000000
  %8185 = fptoui float %8184 to i32
  %8186 = fmul fast float %8182, 2.550000e+02
  %8187 = fadd fast float %8186, 0x3F70101020000000
  %8188 = fptoui float %8187 to i32
  %8189 = icmp ult i32 %8185, %8188
  br i1 %8189, label %8190, label %8358

; <label>:8190                                    ; preds = %8159
  %8191 = fcmp fast ogt float %90, 9.843750e-01
  %8192 = fadd fast float %91, -4.000000e+00
  %8193 = select i1 %8191, float -4.000000e+00, float %8192
  %8194 = call float @dx.op.binary.f32(i32 35, float %8193, float 0.000000e+00)  ; FMax(a,b)
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = fadd fast float %8196, %8194
  %8198 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8199 = fmul fast float %8197, %8198
  %8200 = call float @dx.op.unary.f32(i32 23, float %8199)  ; Log(value)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8202 = fmul fast float %8201, %8200
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8205 = fmul fast float %8202, %8204
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = uitofp i32 %8185 to float
  %8208 = uitofp i32 %8188 to float
  %8209 = fadd fast float %8207, 5.000000e-01
  %8210 = fadd fast float %8208, 5.000000e-01
  %8211 = fmul fast float %8204, %8209
  %8212 = fmul fast float %8204, %8210
  %8213 = fadd fast float %8211, 0x3F0FFB4800000000
  %8214 = fadd fast float %8212, 0xBF0FFB4800000000
  %8215 = call float @dx.op.binary.f32(i32 35, float %8206, float %8213)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8215, float %8214)  ; FMin(a,b)
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8221 = fmul fast float %8218, %8216
  %8222 = fadd fast float %8220, %8221
  %8223 = fadd fast float %8220, %8219
  %8224 = fsub fast float %8218, %8219
  %8225 = fadd fast float %8224, %8220
  %8226 = call float @dx.op.binary.f32(i32 35, float %8222, float %8223)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 36, float %8226, float %8225)  ; FMin(a,b)
  %8228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8165, float %8166, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8229 = extractvalue %dx.types.ResRet.f32 %8228, 0
  %8230 = extractvalue %dx.types.ResRet.f32 %8228, 1
  %8231 = extractvalue %dx.types.ResRet.f32 %8228, 2
  %8232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8233 = extractvalue %dx.types.CBufRet.i32 %8232, 0
  %8234 = extractvalue %dx.types.CBufRet.i32 %8232, 1
  %8235 = uitofp i32 %8233 to float
  %8236 = uitofp i32 %8234 to float
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 1
  %8240 = fmul fast float %8235, %8165
  %8241 = fmul fast float %8236, %8166
  %8242 = fadd fast float %8240, -5.000000e-01
  %8243 = fadd fast float %8241, -5.000000e-01
  %8244 = call float @dx.op.unary.f32(i32 22, float %8242)  ; Frc(value)
  %8245 = call float @dx.op.unary.f32(i32 22, float %8243)  ; Frc(value)
  %8246 = fmul fast float %8244, %8244
  %8247 = fmul fast float %8246, %8244
  %8248 = fsub fast float 3.000000e+00, %8244
  %8249 = fmul fast float %8246, %8248
  %8250 = fmul fast float %8244, 3.000000e+00
  %8251 = fmul fast float %8247, 3.000000e+00
  %8252 = fmul fast float %8246, 6.000000e+00
  %8253 = fsub fast float %8251, %8252
  %8254 = fadd fast float %8253, 4.000000e+00
  %8255 = fmul fast float %8254, 0x3FC5555560000000
  %8256 = fmul fast float %8247, -3.000000e+00
  %8257 = fadd fast float %8246, %8244
  %8258 = fmul fast float %8257, 3.000000e+00
  %8259 = fadd fast float %8256, 1.000000e+00
  %8260 = fadd fast float %8259, %8258
  %8261 = fmul fast float %8247, 0x3FC5555560000000
  %8262 = fmul fast float %8245, %8245
  %8263 = fmul fast float %8262, %8245
  %8264 = fsub fast float 3.000000e+00, %8245
  %8265 = fmul fast float %8262, %8264
  %8266 = fmul fast float %8245, 3.000000e+00
  %8267 = fmul fast float %8263, 3.000000e+00
  %8268 = fmul fast float %8262, 6.000000e+00
  %8269 = fsub fast float %8267, %8268
  %8270 = fadd fast float %8269, 4.000000e+00
  %8271 = fmul fast float %8270, 0x3FC5555560000000
  %8272 = fmul fast float %8263, -3.000000e+00
  %8273 = fadd fast float %8262, %8245
  %8274 = fmul fast float %8273, 3.000000e+00
  %8275 = fadd fast float %8272, 1.000000e+00
  %8276 = fadd fast float %8275, %8274
  %8277 = fmul fast float %8263, 0x3FC5555560000000
  %8278 = fadd fast float %8244, 1.000000e+00
  %8279 = fsub fast float 1.000000e+00, %8250
  %8280 = fadd fast float %8279, %8249
  %8281 = fadd fast float %8280, %8254
  %8282 = fmul fast float %8281, 0x3FC5555560000000
  %8283 = fdiv fast float %8255, %8282
  %8284 = fsub fast float %8278, %8283
  %8285 = fsub fast float 1.000000e+00, %8244
  %8286 = fadd fast float %8260, %8247
  %8287 = fmul fast float %8286, 0x3FC5555560000000
  %8288 = fdiv fast float %8261, %8287
  %8289 = fadd fast float %8285, %8288
  %8290 = fadd fast float %8245, 1.000000e+00
  %8291 = fsub fast float 1.000000e+00, %8266
  %8292 = fadd fast float %8291, %8265
  %8293 = fadd fast float %8292, %8270
  %8294 = fmul fast float %8293, 0x3FC5555560000000
  %8295 = fdiv fast float %8271, %8294
  %8296 = fsub fast float %8290, %8295
  %8297 = fsub fast float 1.000000e+00, %8245
  %8298 = fadd fast float %8276, %8263
  %8299 = fmul fast float %8298, 0x3FC5555560000000
  %8300 = fdiv fast float %8277, %8299
  %8301 = fadd fast float %8300, %8297
  %8302 = fmul fast float %8284, %8238
  %8303 = fsub fast float %8165, %8302
  %8304 = fmul fast float %8289, %8238
  %8305 = fadd fast float %8304, %8165
  %8306 = fmul fast float %8301, %8239
  %8307 = fadd fast float %8306, %8166
  %8308 = fmul fast float %8296, %8239
  %8309 = fsub fast float %8166, %8308
  %8310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8303, float %8309, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8311 = extractvalue %dx.types.ResRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.ResRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.ResRet.f32 %8310, 2
  %8314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8305, float %8309, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8315 = extractvalue %dx.types.ResRet.f32 %8314, 0
  %8316 = extractvalue %dx.types.ResRet.f32 %8314, 1
  %8317 = extractvalue %dx.types.ResRet.f32 %8314, 2
  %8318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8303, float %8307, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8319 = extractvalue %dx.types.ResRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.ResRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.ResRet.f32 %8318, 2
  %8322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8305, float %8307, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = fsub fast float %8319, %8311
  %8327 = fsub fast float %8320, %8312
  %8328 = fsub fast float %8321, %8313
  %8329 = fmul fast float %8326, %8299
  %8330 = fmul fast float %8327, %8299
  %8331 = fmul fast float %8328, %8299
  %8332 = fadd fast float %8329, %8311
  %8333 = fadd fast float %8330, %8312
  %8334 = fadd fast float %8331, %8313
  %8335 = fsub fast float %8323, %8315
  %8336 = fsub fast float %8324, %8316
  %8337 = fsub fast float %8325, %8317
  %8338 = fmul fast float %8335, %8299
  %8339 = fmul fast float %8336, %8299
  %8340 = fmul fast float %8337, %8299
  %8341 = fsub fast float %8315, %8332
  %8342 = fadd fast float %8341, %8338
  %8343 = fsub fast float %8316, %8333
  %8344 = fadd fast float %8343, %8339
  %8345 = fsub fast float %8317, %8334
  %8346 = fadd fast float %8345, %8340
  %8347 = fmul fast float %8342, %8287
  %8348 = fmul fast float %8344, %8287
  %8349 = fmul fast float %8346, %8287
  %8350 = fadd fast float %8347, %8332
  %8351 = fadd fast float %8348, %8333
  %8352 = fadd fast float %8349, %8334
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 1
  %8355 = fmul fast float %8350, %8354
  %8356 = fmul fast float %8351, %8354
  %8357 = fmul fast float %8352, %8354
  br label %8358

; <label>:8358                                    ; preds = %8190, %8159
  %8359 = phi float [ %8229, %8190 ], [ 1.000000e+00, %8159 ]
  %8360 = phi float [ %8230, %8190 ], [ 1.000000e+00, %8159 ]
  %8361 = phi float [ %8231, %8190 ], [ 1.000000e+00, %8159 ]
  %8362 = phi float [ %8355, %8190 ], [ 0.000000e+00, %8159 ]
  %8363 = phi float [ %8356, %8190 ], [ 0.000000e+00, %8159 ]
  %8364 = phi float [ %8357, %8190 ], [ 0.000000e+00, %8159 ]
  %8365 = fmul fast float %8362, %8132
  %8366 = fmul fast float %8363, %8134
  %8367 = fmul fast float %8364, %8136
  %8368 = call float @dx.op.dot3.f32(i32 55, float %8359, float %8360, float %8361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8369 = call float @dx.op.dot3.f32(i32 55, float %8365, float %8366, float %8367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8370 = select i1 %217, float %8368, float %8359
  %8371 = select i1 %217, float %8368, float %8360
  %8372 = select i1 %217, float 1.000000e+00, float %8361
  %8373 = select i1 %217, float %8369, float %8365
  %8374 = select i1 %217, float 0.000000e+00, float %8366
  %8375 = select i1 %217, float 0.000000e+00, float %8367
  %8376 = fmul fast float %8370, %8149
  %8377 = fmul fast float %8371, %8150
  %8378 = fmul fast float %8372, %8151
  %8379 = fadd fast float %8376, %8373
  %8380 = fadd fast float %8377, %8374
  %8381 = fadd fast float %8375, %8378
  %8382 = fmul fast float %8370, %8125
  %8383 = fmul fast float %8371, %8126
  %8384 = fmul fast float %8372, %8127
  %8385 = fmul fast float %125, %8161
  %8386 = fmul fast float %127, %8162
  %8387 = fsub fast float 1.000000e+00, %8385
  %8388 = fsub fast float 1.000000e+00, %8386
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8393 = fmul fast float %8387, %8390
  %8394 = fmul fast float %8387, %8391
  %8395 = fmul fast float %8387, %8392
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8400 = fmul fast float %8388, %8397
  %8401 = fmul fast float %8388, %8398
  %8402 = fmul fast float %8388, %8399
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = fadd fast float %8400, %8404
  %8408 = fadd fast float %8407, %8393
  %8409 = fadd fast float %8401, %8405
  %8410 = fadd fast float %8409, %8394
  %8411 = fadd fast float %8402, %8406
  %8412 = fadd fast float %8411, %8395
  %8413 = fmul fast float %8408, %177
  %8414 = fmul fast float %8410, %177
  %8415 = fmul fast float %8412, %177
  br label %8416

; <label>:8416                                    ; preds = %8358, %8124
  %8417 = phi float [ %8413, %8358 ], [ %155, %8124 ]
  %8418 = phi float [ %8414, %8358 ], [ %156, %8124 ]
  %8419 = phi float [ %8415, %8358 ], [ %157, %8124 ]
  %8420 = phi float [ %177, %8358 ], [ %91, %8124 ]
  %8421 = phi float [ %8379, %8358 ], [ %8149, %8124 ]
  %8422 = phi float [ %8380, %8358 ], [ %8150, %8124 ]
  %8423 = phi float [ %8381, %8358 ], [ %8151, %8124 ]
  %8424 = phi float [ %8382, %8358 ], [ %8125, %8124 ]
  %8425 = phi float [ %8383, %8358 ], [ %8126, %8124 ]
  %8426 = phi float [ %8384, %8358 ], [ %8127, %8124 ]
  %8427 = phi float [ %8359, %8358 ], [ 1.000000e+00, %8124 ]
  br i1 %8158, label %9582, label %8428

; <label>:8428                                    ; preds = %8416
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 1
  %8432 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8433 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8438 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.CBufRet.f32 %8439, 2
  %8443 = extractvalue %dx.types.CBufRet.f32 %8439, 3
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.CBufRet.f32 %8444, 2
  %8448 = extractvalue %dx.types.CBufRet.f32 %8444, 3
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 3
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 3
  %8453 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8451, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8451, 2
  %8456 = fcmp fast olt float %8455, -5.000000e-01
  %8457 = call float @dx.op.dot3.f32(i32 55, float %8417, float %8418, float %8419, float %8417, float %8418, float %8419)  ; Dot3(ax,ay,az,bx,by,bz)
  %8458 = call float @dx.op.unary.f32(i32 25, float %8457)  ; Rsqrt(value)
  %8459 = fmul fast float %8458, %8457
  %8460 = fmul fast float %8458, %8417
  %8461 = fmul fast float %8458, %8418
  %8462 = fmul fast float %8458, %8419
  %8463 = fadd fast float %8459, %8433
  %8464 = call float @dx.op.dot3.f32(i32 55, float %8460, float %8461, float %8462, float %8430, float %8431, float %8432)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.i32 %8465, 1
  %8467 = and i32 %8466, 1
  %8468 = icmp ne i32 %8467, 0
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8471 = fcmp fast ogt float %8470, 0.000000e+00
  %8472 = and i1 %8468, %8471
  br i1 %8472, label %8473, label %8879, !dx.controlflow.hints !122

; <label>:8473                                    ; preds = %8428
  %8474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8474, 3
  %8476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.f32 %8476, 2
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8480 = fsub fast float %8477, %8479
  %8481 = and i32 %8466, 2
  %8482 = extractvalue %dx.types.CBufRet.i32 %8465, 0
  %8483 = call i32 @dx.op.binary.i32(i32 40, i32 %8482, i32 3)  ; UMin(a,b)
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 0
  %8486 = extractvalue %dx.types.CBufRet.f32 %8484, 1
  %8487 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8488 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8489 = fsub fast float %8485, %8487
  %8490 = fsub fast float %8486, %8488
  %8491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8492 = extractvalue %dx.types.CBufRet.f32 %8491, 0
  %8493 = fcmp fast ogt float %8492, 0.000000e+00
  %8494 = fsub fast float -0.000000e+00, %8489
  %8495 = fsub fast float -0.000000e+00, %8490
  %8496 = call float @dx.op.dot2.f32(i32 54, float %8460, float %8461, float %8460, float %8461)  ; Dot2(ax,ay,bx,by)
  %8497 = call float @dx.op.dot2.f32(i32 54, float %8460, float %8461, float %8494, float %8495)  ; Dot2(ax,ay,bx,by)
  %8498 = fmul fast float %8497, 2.000000e+00
  %8499 = call float @dx.op.dot2.f32(i32 54, float %8494, float %8495, float %8494, float %8495)  ; Dot2(ax,ay,bx,by)
  %8500 = fmul fast float %8492, %8492
  %8501 = fsub fast float %8499, %8500
  %8502 = fmul fast float %8498, %8498
  %8503 = fmul fast float %8496, 4.000000e+00
  %8504 = fmul fast float %8503, %8501
  %8505 = fsub fast float %8502, %8504
  %8506 = fcmp fast ogt float %8505, 0.000000e+00
  br i1 %8506, label %8507, label %8522

; <label>:8507                                    ; preds = %8473
  %8508 = fcmp fast ogt float %8498, 0.000000e+00
  %8509 = call float @dx.op.unary.f32(i32 24, float %8505)  ; Sqrt(value)
  %8510 = fsub fast float -0.000000e+00, %8509
  %8511 = select i1 %8508, float %8509, float %8510
  %8512 = fadd fast float %8511, %8498
  %8513 = fmul float %8512, -5.000000e-01
  %8514 = fdiv fast float %8513, %8496
  %8515 = call float @dx.op.binary.f32(i32 35, float %8514, float 0.000000e+00)  ; FMax(a,b)
  %8516 = call float @dx.op.binary.f32(i32 36, float %8459, float %8515)  ; FMin(a,b)
  %8517 = fdiv fast float %8501, %8513
  %8518 = call float @dx.op.binary.f32(i32 35, float %8517, float 0.000000e+00)  ; FMax(a,b)
  %8519 = call float @dx.op.binary.f32(i32 36, float %8459, float %8518)  ; FMin(a,b)
  %8520 = call float @dx.op.binary.f32(i32 36, float %8516, float %8519)  ; FMin(a,b)
  %8521 = call float @dx.op.binary.f32(i32 35, float %8516, float %8519)  ; FMax(a,b)
  br label %8522

; <label>:8522                                    ; preds = %8507, %8473
  %8523 = phi float [ %8521, %8507 ], [ -1.000000e+00, %8473 ]
  %8524 = phi float [ %8520, %8507 ], [ -1.000000e+00, %8473 ]
  %8525 = phi i1 [ true, %8507 ], [ false, %8473 ]
  %8526 = and i1 %8493, %8525
  br i1 %8526, label %8527, label %8529

; <label>:8527                                    ; preds = %8522
  %8528 = fcmp fast oeq float %8524, %8523
  br i1 %8528, label %8832, label %8530

; <label>:8529                                    ; preds = %8522
  br i1 %8493, label %8832, label %8530

; <label>:8530                                    ; preds = %8529, %8527
  %8531 = phi float [ %8459, %8529 ], [ %8523, %8527 ]
  %8532 = phi float [ 0.000000e+00, %8529 ], [ %8524, %8527 ]
  %8533 = icmp ne i32 %8481, 0
  %8534 = fmul fast float %8531, %8462
  %8535 = fadd fast float %8534, %8475
  %8536 = fmul fast float %8535, %8531
  %8537 = select i1 %8533, float 0.000000e+00, float %8536
  %8538 = fcmp fast oeq float %8462, 0.000000e+00
  %8539 = fdiv fast float %8480, %8462
  %8540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8539)  ; FMax(a,b)
  %8541 = select i1 %8538, float %8531, float %8540
  %8542 = call float @dx.op.binary.f32(i32 36, float %8531, float %8541)  ; FMin(a,b)
  %8543 = fcmp fast ogt float %8462, 0.000000e+00
  %8544 = fcmp fast olt float %8480, 0.000000e+00
  br i1 %8543, label %8545, label %8602

; <label>:8545                                    ; preds = %8530
  %8546 = icmp eq i32 %8481, 0
  br i1 %8544, label %8547, label %8591

; <label>:8547                                    ; preds = %8545
  %8548 = select i1 %8546, float %8531, float 0.000000e+00
  %8549 = fsub fast float -0.000000e+00, %8548
  %8550 = call float @dx.op.unary.f32(i32 6, float %8549)  ; FAbs(value)
  %8551 = fmul fast float %8548, %8462
  %8552 = fadd fast float %8551, %8475
  %8553 = fmul fast float %8550, %8552
  %8554 = fsub fast float %8537, %8553
  %8555 = fsub fast float %8531, %8550
  %8556 = select i1 %8546, float %8555, float 0.000000e+00
  %8557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8558 = extractvalue %dx.types.CBufRet.f32 %8557, 0
  %8559 = extractvalue %dx.types.CBufRet.f32 %8557, 1
  %8560 = extractvalue %dx.types.CBufRet.f32 %8557, 2
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8563 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8564 = extractvalue %dx.types.CBufRet.f32 %8561, 2
  %8565 = extractvalue %dx.types.CBufRet.f32 %8561, 3
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 3
  %8568 = call float @dx.op.binary.f32(i32 36, float %8554, float %8567)  ; FMin(a,b)
  %8569 = fmul fast float %8565, %8556
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = fsub fast float %8562, %8558
  %8572 = fsub fast float %8563, %8559
  %8573 = fsub fast float %8564, %8560
  %8574 = fmul fast float %8570, %8571
  %8575 = fmul fast float %8570, %8572
  %8576 = fmul fast float %8570, %8573
  %8577 = fadd fast float %8574, %8558
  %8578 = fadd fast float %8575, %8559
  %8579 = fadd fast float %8576, %8560
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = fadd fast float %8582, %8581
  %8584 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8586 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8587 = fadd fast float %8586, %8585
  %8588 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  %8589 = fmul fast float %8584, %8568
  %8590 = fmul fast float %8589, %8588
  br label %8832

; <label>:8591                                    ; preds = %8545
  br i1 %8546, label %8592, label %8613

; <label>:8592                                    ; preds = %8591
  %8593 = call float @dx.op.binary.f32(i32 36, float %8542, float %8532)  ; FMin(a,b)
  %8594 = fsub fast float %8542, %8593
  %8595 = fsub fast float %8594, %8531
  %8596 = call float @dx.op.unary.f32(i32 6, float %8595)  ; FAbs(value)
  %8597 = fadd fast float %8594, %8531
  %8598 = fmul fast float %8597, %8462
  %8599 = fadd fast float %8598, %8475
  %8600 = fmul fast float %8599, %8596
  %8601 = fsub fast float %8537, %8600
  br label %8613

; <label>:8602                                    ; preds = %8530
  br i1 %8544, label %8603, label %8613

; <label>:8603                                    ; preds = %8602
  %8604 = call float @dx.op.binary.f32(i32 35, float %8532, float %8542)  ; FMax(a,b)
  %8605 = icmp eq i32 %8481, 0
  %8606 = select i1 %8605, float %8542, float 0.000000e+00
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = call float @dx.op.unary.f32(i32 6, float %8607)  ; FAbs(value)
  %8609 = fmul fast float %8606, %8462
  %8610 = fadd fast float %8609, %8475
  %8611 = fmul fast float %8608, %8610
  %8612 = fsub fast float %8537, %8611
  br label %8613

; <label>:8613                                    ; preds = %8603, %8602, %8592, %8591
  %8614 = phi float [ %8532, %8591 ], [ %8532, %8592 ], [ %8604, %8603 ], [ %8532, %8602 ]
  %8615 = phi float [ 0.000000e+00, %8591 ], [ %8596, %8592 ], [ %8608, %8603 ], [ 0.000000e+00, %8602 ]
  %8616 = phi float [ %8537, %8591 ], [ %8601, %8592 ], [ %8612, %8603 ], [ %8537, %8602 ]
  %8617 = phi float [ %8542, %8591 ], [ %8542, %8592 ], [ %8531, %8603 ], [ %8531, %8602 ]
  %8618 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8618, align 4, !tbaa !123, !noalias !125
  %8619 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8619, align 4, !tbaa !123, !noalias !125
  %8620 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8620, align 4, !tbaa !123, !noalias !125
  %8621 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8621, align 4, !tbaa !123, !noalias !125
  %8622 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8622, align 4, !tbaa !123, !noalias !125
  %8623 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8623, align 4, !tbaa !123, !noalias !125
  %8624 = icmp sgt i32 %8483, 0
  br i1 %8624, label %8625, label %8686

; <label>:8625                                    ; preds = %8613
  br label %8626

; <label>:8626                                    ; preds = %8675, %8625
  %8627 = phi i32 [ %8676, %8675 ], [ 0, %8625 ]
  %8628 = phi i32 [ %8677, %8675 ], [ 0, %8625 ]
  %8629 = add nuw i32 %8628, 171
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8629)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.CBufRet.f32 %8633, 1
  %8636 = fsub fast float %8631, %8634
  %8637 = fsub fast float %8632, %8635
  %8638 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8639 = fsub fast float -0.000000e+00, %8636
  %8640 = fsub fast float -0.000000e+00, %8637
  %8641 = call float @dx.op.dot2.f32(i32 54, float %8460, float %8461, float %8639, float %8640)  ; Dot2(ax,ay,bx,by)
  %8642 = fmul fast float %8641, 2.000000e+00
  %8643 = call float @dx.op.dot2.f32(i32 54, float %8639, float %8640, float %8639, float %8640)  ; Dot2(ax,ay,bx,by)
  %8644 = fmul fast float %8638, %8638
  %8645 = fsub fast float %8643, %8644
  %8646 = fmul fast float %8642, %8642
  %8647 = fmul fast float %8503, %8645
  %8648 = fsub fast float %8646, %8647
  %8649 = fcmp fast ogt float %8648, 0.000000e+00
  br i1 %8649, label %8650, label %8665

; <label>:8650                                    ; preds = %8626
  %8651 = fcmp fast ogt float %8642, 0.000000e+00
  %8652 = call float @dx.op.unary.f32(i32 24, float %8648)  ; Sqrt(value)
  %8653 = fsub fast float -0.000000e+00, %8652
  %8654 = select i1 %8651, float %8652, float %8653
  %8655 = fadd fast float %8654, %8642
  %8656 = fmul float %8655, -5.000000e-01
  %8657 = fdiv fast float %8656, %8496
  %8658 = call float @dx.op.binary.f32(i32 35, float %8657, float 0.000000e+00)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 36, float %8531, float %8658)  ; FMin(a,b)
  %8660 = fdiv fast float %8645, %8656
  %8661 = call float @dx.op.binary.f32(i32 35, float %8660, float 0.000000e+00)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8531, float %8661)  ; FMin(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8659, float %8662)  ; FMin(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float %8659, float %8662)  ; FMax(a,b)
  br label %8665

; <label>:8665                                    ; preds = %8650, %8626
  %8666 = phi float [ %8664, %8650 ], [ -1.000000e+00, %8626 ]
  %8667 = phi float [ %8663, %8650 ], [ -1.000000e+00, %8626 ]
  %8668 = phi i1 [ true, %8650 ], [ false, %8626 ]
  br i1 %8668, label %8669, label %8675

; <label>:8669                                    ; preds = %8665
  %8670 = call float @dx.op.binary.f32(i32 35, float %8614, float %8667)  ; FMax(a,b)
  %8671 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8628
  store float %8670, float* %8671, align 4, !tbaa !123, !noalias !125
  %8672 = call float @dx.op.binary.f32(i32 35, float %8614, float %8666)  ; FMax(a,b)
  %8673 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8628
  store float %8672, float* %8673, align 4, !tbaa !123, !noalias !125
  %8674 = add nsw i32 %8627, 1
  br label %8675

; <label>:8675                                    ; preds = %8669, %8665
  %8676 = phi i32 [ %8674, %8669 ], [ %8627, %8665 ]
  %8677 = add nuw nsw i32 %8628, 1
  %8678 = icmp eq i32 %8677, %8483
  br i1 %8678, label %8679, label %8626

; <label>:8679                                    ; preds = %8675
  %8680 = load float, float* %8620, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8681 = load float, float* %8619, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8682 = load float, float* %8618, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8683 = load float, float* %8623, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8684 = load float, float* %8622, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8685 = load float, float* %8621, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8686

; <label>:8686                                    ; preds = %8679, %8613
  %8687 = phi float [ -1.000000e+00, %8613 ], [ %8685, %8679 ]
  %8688 = phi float [ -1.000000e+00, %8613 ], [ %8684, %8679 ]
  %8689 = phi float [ -1.000000e+00, %8613 ], [ %8683, %8679 ]
  %8690 = phi float [ -1.000000e+00, %8613 ], [ %8682, %8679 ]
  %8691 = phi float [ -1.000000e+00, %8613 ], [ %8681, %8679 ]
  %8692 = phi float [ -1.000000e+00, %8613 ], [ %8680, %8679 ]
  %8693 = phi i32 [ 0, %8613 ], [ %8676, %8679 ]
  %8694 = call float @dx.op.binary.f32(i32 36, float %8691, float %8692)  ; FMin(a,b)
  %8695 = call float @dx.op.binary.f32(i32 36, float %8690, float %8694)  ; FMin(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float %8690, float %8691)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 36, float %8696, float %8692)  ; FMin(a,b)
  %8698 = call float @dx.op.binary.f32(i32 36, float %8690, float %8691)  ; FMin(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float %8698, float %8697)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 35, float %8691, float %8692)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8690, float %8700)  ; FMax(a,b)
  store float %8695, float* %8618, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8699, float* %8619, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8701, float* %8620, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8702 = call float @dx.op.binary.f32(i32 36, float %8688, float %8689)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8687, float %8702)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8687, float %8688)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8689)  ; FMin(a,b)
  %8706 = call float @dx.op.binary.f32(i32 36, float %8687, float %8688)  ; FMin(a,b)
  %8707 = call float @dx.op.binary.f32(i32 35, float %8706, float %8705)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8688, float %8689)  ; FMax(a,b)
  %8709 = call float @dx.op.binary.f32(i32 35, float %8687, float %8708)  ; FMax(a,b)
  store float %8703, float* %8621, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8707, float* %8622, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8709, float* %8623, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8710 = sub nsw i32 3, %8693
  %8711 = icmp sgt i32 %8710, 2
  br i1 %8711, label %8712, label %8750

; <label>:8712                                    ; preds = %8686
  %8713 = icmp eq i32 %8481, 0
  %8714 = fsub fast float %8531, %8615
  %8715 = select i1 %8713, float %8714, float %8615
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.CBufRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.CBufRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.CBufRet.f32 %8720, 2
  %8724 = extractvalue %dx.types.CBufRet.f32 %8720, 3
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 3
  %8727 = call float @dx.op.binary.f32(i32 36, float %8616, float %8726)  ; FMin(a,b)
  %8728 = fmul fast float %8724, %8715
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = fsub fast float %8721, %8717
  %8731 = fsub fast float %8722, %8718
  %8732 = fsub fast float %8723, %8719
  %8733 = fmul fast float %8729, %8730
  %8734 = fmul fast float %8729, %8731
  %8735 = fmul fast float %8729, %8732
  %8736 = fadd fast float %8733, %8717
  %8737 = fadd fast float %8734, %8718
  %8738 = fadd fast float %8735, %8719
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.CBufRet.f32 %8739, 1
  %8742 = fadd fast float %8741, %8740
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8739, 2
  %8745 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8746 = fadd fast float %8745, %8744
  %8747 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8748 = fmul fast float %8743, %8727
  %8749 = fmul fast float %8748, %8747
  br label %8832

; <label>:8750                                    ; preds = %8686
  %8751 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8710
  %8752 = load float, float* %8751, align 4, !tbaa !123, !noalias !125
  %8753 = fcmp fast olt float %8752, %8617
  %8754 = icmp sgt i32 %8693, 0
  %8755 = and i1 %8754, %8753
  br i1 %8755, label %8756, label %8793

; <label>:8756                                    ; preds = %8750
  br label %8757

; <label>:8757                                    ; preds = %8786, %8756
  %8758 = phi float [ %8787, %8786 ], [ %8615, %8756 ]
  %8759 = phi float [ %8788, %8786 ], [ %8616, %8756 ]
  %8760 = phi float [ %8768, %8786 ], [ %8752, %8756 ]
  %8761 = phi i32 [ %8765, %8786 ], [ %8710, %8756 ]
  %8762 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8761
  %8763 = load float, float* %8762, align 4, !tbaa !123, !noalias !125
  %8764 = icmp slt i32 %8761, 2
  %8765 = add nsw i32 %8761, 1
  %8766 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8765
  %8767 = load float, float* %8766, align 4, !tbaa !123, !noalias !125
  %8768 = select i1 %8764, float %8767, float %8531
  %8769 = call float @dx.op.binary.f32(i32 36, float %8768, float %8763)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8617, float %8769)  ; FMin(a,b)
  %8771 = icmp eq i32 %8481, 0
  %8772 = fadd fast float %8770, %8760
  %8773 = fmul fast float %8772, %8462
  %8774 = fadd fast float %8773, %8475
  br i1 %8771, label %8780, label %8775

; <label>:8775                                    ; preds = %8757
  %8776 = fsub fast float %8770, %8760
  %8777 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8776)  ; FMax(a,b)
  %8778 = fmul fast float %8777, %8774
  %8779 = fadd fast float %8778, %8759
  br label %8786

; <label>:8780                                    ; preds = %8757
  %8781 = fsub fast float %8760, %8770
  %8782 = call float @dx.op.unary.f32(i32 6, float %8781)  ; FAbs(value)
  %8783 = fadd fast float %8782, %8758
  %8784 = fmul fast float %8782, %8774
  %8785 = fsub fast float %8759, %8784
  br label %8786

; <label>:8786                                    ; preds = %8780, %8775
  %8787 = phi float [ %8777, %8775 ], [ %8783, %8780 ]
  %8788 = phi float [ %8779, %8775 ], [ %8785, %8780 ]
  %8789 = fcmp fast olt float %8768, %8617
  %8790 = icmp slt i32 %8765, 3
  %8791 = and i1 %8790, %8789
  br i1 %8791, label %8757, label %8792

; <label>:8792                                    ; preds = %8786
  br label %8793

; <label>:8793                                    ; preds = %8792, %8750
  %8794 = phi float [ %8615, %8750 ], [ %8787, %8792 ]
  %8795 = phi float [ %8616, %8750 ], [ %8788, %8792 ]
  %8796 = fsub fast float %8531, %8794
  %8797 = select i1 %8533, float %8794, float %8796
  %8798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8799 = extractvalue %dx.types.CBufRet.f32 %8798, 0
  %8800 = extractvalue %dx.types.CBufRet.f32 %8798, 1
  %8801 = extractvalue %dx.types.CBufRet.f32 %8798, 2
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8806 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 3
  %8809 = call float @dx.op.binary.f32(i32 36, float %8795, float %8808)  ; FMin(a,b)
  %8810 = fmul fast float %8806, %8797
  %8811 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  %8812 = fsub fast float %8803, %8799
  %8813 = fsub fast float %8804, %8800
  %8814 = fsub fast float %8805, %8801
  %8815 = fmul fast float %8811, %8812
  %8816 = fmul fast float %8811, %8813
  %8817 = fmul fast float %8811, %8814
  %8818 = fadd fast float %8815, %8799
  %8819 = fadd fast float %8816, %8800
  %8820 = fadd fast float %8817, %8801
  %8821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8822 = extractvalue %dx.types.CBufRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.CBufRet.f32 %8821, 1
  %8824 = fadd fast float %8823, %8822
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8821, 2
  %8827 = extractvalue %dx.types.CBufRet.f32 %8821, 3
  %8828 = fadd fast float %8827, %8826
  %8829 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8830 = fmul fast float %8825, %8809
  %8831 = fmul fast float %8830, %8829
  br label %8832

; <label>:8832                                    ; preds = %8793, %8712, %8547, %8529, %8527
  %8833 = phi float [ %8556, %8547 ], [ %8715, %8712 ], [ %8797, %8793 ], [ 0.000000e+00, %8527 ], [ 0.000000e+00, %8529 ]
  %8834 = phi float [ %8590, %8547 ], [ %8749, %8712 ], [ %8831, %8793 ], [ 0.000000e+00, %8527 ], [ 0.000000e+00, %8529 ]
  %8835 = phi float [ %8577, %8547 ], [ %8736, %8712 ], [ %8818, %8793 ], [ 0.000000e+00, %8527 ], [ 0.000000e+00, %8529 ]
  %8836 = phi float [ %8578, %8547 ], [ %8737, %8712 ], [ %8819, %8793 ], [ 0.000000e+00, %8527 ], [ 0.000000e+00, %8529 ]
  %8837 = phi float [ %8579, %8547 ], [ %8738, %8712 ], [ %8820, %8793 ], [ 0.000000e+00, %8527 ], [ 0.000000e+00, %8529 ]
  %8838 = fmul fast float %8470, %8834
  %8839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8839, 2
  %8841 = fsub fast float %8477, %8840
  %8842 = fcmp fast olt float %8838, -2.000000e+01
  %8843 = call float @dx.op.unary.f32(i32 21, float %8838)  ; Exp(value)
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 3
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8849 = fmul fast float %8846, %8841
  %8850 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8851 = fsub fast float 1.000000e+00, %8850
  %8852 = fmul fast float %8462, 5.000000e-01
  %8853 = fadd fast float %8852, 5.000000e-01
  %8854 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8855 = fsub fast float 1.000000e+00, %8854
  %8856 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8851)  ; FMax(a,b)
  %8857 = fdiv fast float %8855, %8856
  %8858 = fsub fast float %8841, %8419
  %8859 = call float @dx.op.unary.f32(i32 6, float %8858)  ; FAbs(value)
  %8860 = fmul fast float %8859, %8845
  %8861 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8862 = fsub fast float 1.000000e+00, %8860
  %8863 = fmul fast float %8862, %8861
  %8864 = fadd fast float %8863, %8860
  %8865 = fmul fast float %8848, %8841
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = fsub fast float 1.000000e+00, %8864
  %8868 = fmul fast float %8867, %8866
  %8869 = fadd fast float %8868, %8864
  %8870 = call float @dx.op.unary.f32(i32 7, float %8869)  ; Saturate(value)
  %8871 = fadd fast float %8843, -1.000000e+00
  %8872 = select i1 %8842, float -1.000000e+00, float %8871
  %8873 = fmul fast float %8870, %8872
  %8874 = fadd fast float %8873, 1.000000e+00
  %8875 = fsub fast float -0.000000e+00, %8873
  %8876 = fmul fast float %8835, %8875
  %8877 = fmul fast float %8836, %8875
  %8878 = fmul fast float %8837, %8875
  br label %8879

; <label>:8879                                    ; preds = %8832, %8428
  %8880 = phi float [ %8833, %8832 ], [ 0.000000e+00, %8428 ]
  %8881 = phi float [ %8874, %8832 ], [ 1.000000e+00, %8428 ]
  %8882 = phi float [ %8876, %8832 ], [ 0.000000e+00, %8428 ]
  %8883 = phi float [ %8877, %8832 ], [ 0.000000e+00, %8428 ]
  %8884 = phi float [ %8878, %8832 ], [ 0.000000e+00, %8428 ]
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8887 = fsub fast float 1.000000e+00, %8881
  %8888 = fmul fast float %8887, %8463
  %8889 = fmul fast float %8888, %8886
  %8890 = fsub fast float %8463, %8889
  br i1 %8456, label %8891, label %8920, !dx.controlflow.hints !161

; <label>:8891                                    ; preds = %8879
  %8892 = fmul fast float %8464, %8453
  %8893 = fadd fast float %8892, %8454
  %8894 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8895 = fmul fast float %8435, %8890
  %8896 = fsub fast float -0.000000e+00, %8895
  %8897 = fmul fast float %8436, %8890
  %8898 = fsub fast float -0.000000e+00, %8897
  %8899 = call float @dx.op.unary.f32(i32 21, float %8896)  ; Exp(value)
  %8900 = call float @dx.op.unary.f32(i32 21, float %8898)  ; Exp(value)
  %8901 = call float @dx.op.binary.f32(i32 35, float %8443, float %8899)  ; FMax(a,b)
  %8902 = call float @dx.op.binary.f32(i32 35, float %8443, float %8900)  ; FMax(a,b)
  %8903 = fsub fast float %8902, %8901
  %8904 = fmul fast float %8903, %8894
  %8905 = fadd fast float %8904, %8901
  %8906 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  %8907 = fsub fast float %8440, %8445
  %8908 = fsub fast float %8441, %8446
  %8909 = fsub fast float %8442, %8447
  %8910 = fmul fast float %8894, %8907
  %8911 = fmul fast float %8894, %8908
  %8912 = fmul fast float %8894, %8909
  %8913 = fadd fast float %8910, %8445
  %8914 = fadd fast float %8911, %8446
  %8915 = fadd fast float %8912, %8447
  %8916 = fsub fast float 1.000000e+00, %8906
  %8917 = fmul fast float %8916, %8913
  %8918 = fmul fast float %8916, %8914
  %8919 = fmul fast float %8916, %8915
  br label %8979

; <label>:8920                                    ; preds = %8879
  %8921 = fmul fast float %8890, %8452
  %8922 = call float @dx.op.unary.f32(i32 7, float %8921)  ; Saturate(value)
  %8923 = fsub fast float 2.000000e+00, %8922
  %8924 = fmul fast float %8922, 9.921875e-01
  %8925 = fmul fast float %8924, %8923
  %8926 = fadd fast float %8925, 3.906250e-03
  %8927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8926, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8928 = extractvalue %dx.types.ResRet.f32 %8927, 0
  %8929 = fsub fast float %8922, %8928
  %8930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8929)  ; FMax(a,b)
  %8931 = fmul fast float %8438, %8419
  %8932 = call float @dx.op.unary.f32(i32 6, float %8931)  ; FAbs(value)
  %8933 = fcmp fast ogt float %8932, 0x3EB0C6F7A0000000
  br i1 %8933, label %8934, label %8940, !dx.controlflow.hints !162

; <label>:8934                                    ; preds = %8920
  %8935 = fmul fast float %8931, 0xBFF7154760000000
  %8936 = call float @dx.op.unary.f32(i32 21, float %8935)  ; Exp(value)
  %8937 = fsub fast float 1.000000e+00, %8936
  %8938 = fdiv fast float %8937, %8931
  %8939 = fmul fast float %8938, %8448
  br label %8940

; <label>:8940                                    ; preds = %8934, %8920
  %8941 = phi float [ %8939, %8934 ], [ %8448, %8920 ]
  %8942 = fadd fast float %8941, %8450
  %8943 = fmul fast float %8942, %8930
  %8944 = fmul fast float %8435, %8943
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fmul fast float %8436, %8943
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = fmul fast float %8437, %8943
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = call float @dx.op.unary.f32(i32 21, float %8945)  ; Exp(value)
  %8951 = call float @dx.op.unary.f32(i32 21, float %8947)  ; Exp(value)
  %8952 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8953 = fmul fast float %8464, %8464
  %8954 = fadd fast float %8953, 1.000000e+00
  %8955 = fmul fast float %8954, 0x3FAE8EC8A0000000
  %8956 = fmul fast float %8955, %8445
  %8957 = fmul fast float %8955, %8446
  %8958 = fmul fast float %8955, %8447
  %8959 = fmul fast float %8464, %8443
  %8960 = fsub fast float 1.000000e+00, %8959
  %8961 = fmul fast float %8443, %8443
  %8962 = fsub fast float 1.000000e+00, %8961
  %8963 = fmul fast float %8962, 0x3FB45F3060000000
  %8964 = fmul fast float %8960, %8960
  %8965 = fdiv fast float 1.000000e+00, %8964
  %8966 = fmul fast float %8963, %8965
  %8967 = fmul fast float %8966, %8440
  %8968 = fmul fast float %8966, %8441
  %8969 = fmul fast float %8966, %8442
  %8970 = fadd fast float %8967, %8956
  %8971 = fadd fast float %8968, %8957
  %8972 = fadd fast float %8969, %8958
  %8973 = fsub fast float 1.000000e+00, %8950
  %8974 = fsub fast float 1.000000e+00, %8951
  %8975 = fsub fast float 1.000000e+00, %8952
  %8976 = fmul fast float %8970, %8973
  %8977 = fmul fast float %8971, %8974
  %8978 = fmul fast float %8972, %8975
  br label %8979

; <label>:8979                                    ; preds = %8940, %8891
  %8980 = phi float [ %8917, %8891 ], [ %8976, %8940 ]
  %8981 = phi float [ %8918, %8891 ], [ %8977, %8940 ]
  %8982 = phi float [ %8919, %8891 ], [ %8978, %8940 ]
  %8983 = phi float [ %8906, %8891 ], [ %8950, %8940 ]
  %8984 = phi float [ %8906, %8891 ], [ %8951, %8940 ]
  %8985 = phi float [ %8906, %8891 ], [ %8952, %8940 ]
  br i1 %8472, label %8986, label %9184, !dx.controlflow.hints !163

; <label>:8986                                    ; preds = %8979
  %8987 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8988 = fmul fast float %8987, %8887
  %8989 = fsub fast float %8882, %8980
  %8990 = fsub fast float %8883, %8981
  %8991 = fsub fast float %8884, %8982
  %8992 = fmul fast float %8988, %8989
  %8993 = fmul fast float %8988, %8990
  %8994 = fmul fast float %8988, %8991
  %8995 = fadd fast float %8992, %8980
  %8996 = fadd fast float %8993, %8981
  %8997 = fadd fast float %8994, %8982
  %8998 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8983)  ; FMax(a,b)
  %8999 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8984)  ; FMax(a,b)
  %9000 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8985)  ; FMax(a,b)
  %9001 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8881)  ; FMax(a,b)
  %9002 = call float @dx.op.binary.f32(i32 35, float %8880, float %8890)  ; FMax(a,b)
  %9003 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9002)  ; FMax(a,b)
  %9004 = fdiv fast float %8880, %9003
  %9005 = call float @dx.op.unary.f32(i32 7, float %9004)  ; Saturate(value)
  %9006 = fdiv fast float %8890, %9003
  %9007 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  %9008 = fcmp fast une float %9001, 1.000000e+00
  br i1 %9008, label %9009, label %9022, !dx.controlflow.hints !164

; <label>:9009                                    ; preds = %8986
  %9010 = call float @dx.op.unary.f32(i32 23, float %9001)  ; Log(value)
  %9011 = fmul fast float %9010, 0x3FE62E4300000000
  %9012 = fmul fast float %8882, %9011
  %9013 = fsub fast float -0.000000e+00, %9012
  %9014 = fmul fast float %8883, %9011
  %9015 = fsub fast float -0.000000e+00, %9014
  %9016 = fmul fast float %8884, %9011
  %9017 = fsub fast float -0.000000e+00, %9016
  %9018 = fsub fast float 1.000000e+00, %9001
  %9019 = fdiv fast float %9013, %9018
  %9020 = fdiv fast float %9015, %9018
  %9021 = fdiv fast float %9017, %9018
  br label %9022

; <label>:9022                                    ; preds = %9009, %8986
  %9023 = phi float [ %9019, %9009 ], [ %8882, %8986 ]
  %9024 = phi float [ %9020, %9009 ], [ %8883, %8986 ]
  %9025 = phi float [ %9021, %9009 ], [ %8884, %8986 ]
  %9026 = phi float [ %9011, %9009 ], [ 0.000000e+00, %8986 ]
  %9027 = fcmp fast une float %8998, 1.000000e+00
  br i1 %9027, label %9028, label %9035, !dx.controlflow.hints !165

; <label>:9028                                    ; preds = %9022
  %9029 = call float @dx.op.unary.f32(i32 23, float %8998)  ; Log(value)
  %9030 = fmul fast float %9029, 0x3FE62E4300000000
  %9031 = fmul fast float %8995, %9030
  %9032 = fsub fast float -0.000000e+00, %9031
  %9033 = fsub fast float 1.000000e+00, %8998
  %9034 = fdiv fast float %9032, %9033
  br label %9035

; <label>:9035                                    ; preds = %9028, %9022
  %9036 = phi float [ %9034, %9028 ], [ %8995, %9022 ]
  %9037 = phi float [ %9030, %9028 ], [ 0.000000e+00, %9022 ]
  %9038 = fcmp fast une float %8999, 1.000000e+00
  br i1 %9038, label %9039, label %9046, !dx.controlflow.hints !165

; <label>:9039                                    ; preds = %9035
  %9040 = call float @dx.op.unary.f32(i32 23, float %8999)  ; Log(value)
  %9041 = fmul fast float %9040, 0x3FE62E4300000000
  %9042 = fmul fast float %8996, %9041
  %9043 = fsub fast float -0.000000e+00, %9042
  %9044 = fsub fast float 1.000000e+00, %8999
  %9045 = fdiv fast float %9043, %9044
  br label %9046

; <label>:9046                                    ; preds = %9039, %9035
  %9047 = phi float [ %9045, %9039 ], [ %8996, %9035 ]
  %9048 = phi float [ %9041, %9039 ], [ 0.000000e+00, %9035 ]
  %9049 = fcmp fast une float %9000, 1.000000e+00
  br i1 %9049, label %9050, label %9057, !dx.controlflow.hints !165

; <label>:9050                                    ; preds = %9046
  %9051 = call float @dx.op.unary.f32(i32 23, float %9000)  ; Log(value)
  %9052 = fmul fast float %9051, 0x3FE62E4300000000
  %9053 = fmul fast float %8997, %9052
  %9054 = fsub fast float -0.000000e+00, %9053
  %9055 = fsub fast float 1.000000e+00, %9000
  %9056 = fdiv fast float %9054, %9055
  br label %9057

; <label>:9057                                    ; preds = %9050, %9046
  %9058 = phi float [ %9056, %9050 ], [ %8997, %9046 ]
  %9059 = phi float [ %9052, %9050 ], [ 0.000000e+00, %9046 ]
  %9060 = fmul fast float %9023, %9007
  %9061 = fmul fast float %9024, %9007
  %9062 = fmul fast float %9025, %9007
  %9063 = fmul fast float %9026, %9007
  %9064 = fmul fast float %9036, %9005
  %9065 = fmul fast float %9047, %9005
  %9066 = fmul fast float %9058, %9005
  %9067 = fmul fast float %9037, %9005
  %9068 = fmul fast float %9048, %9005
  %9069 = fmul fast float %9059, %9005
  %9070 = fadd fast float %9064, %9060
  %9071 = fadd fast float %9065, %9061
  %9072 = fadd fast float %9066, %9062
  %9073 = fadd fast float %9067, %9063
  %9074 = fadd fast float %9068, %9063
  %9075 = fadd fast float %9069, %9063
  %9076 = fcmp fast une float %9073, 0.000000e+00
  br i1 %9076, label %9077, label %9084, !dx.controlflow.hints !166

; <label>:9077                                    ; preds = %9057
  %9078 = fmul fast float %9073, 0x3FF7154760000000
  %9079 = call float @dx.op.unary.f32(i32 21, float %9078)  ; Exp(value)
  %9080 = fsub fast float 1.000000e+00, %9079
  %9081 = fmul fast float %9070, %9080
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fdiv fast float %9082, %9073
  br label %9084

; <label>:9084                                    ; preds = %9077, %9057
  %9085 = phi float [ %9079, %9077 ], [ 1.000000e+00, %9057 ]
  %9086 = phi float [ %9083, %9077 ], [ %9070, %9057 ]
  %9087 = fcmp fast une float %9074, 0.000000e+00
  br i1 %9087, label %9088, label %9095, !dx.controlflow.hints !166

; <label>:9088                                    ; preds = %9084
  %9089 = fmul fast float %9074, 0x3FF7154760000000
  %9090 = call float @dx.op.unary.f32(i32 21, float %9089)  ; Exp(value)
  %9091 = fsub fast float 1.000000e+00, %9090
  %9092 = fmul fast float %9071, %9091
  %9093 = fsub fast float -0.000000e+00, %9092
  %9094 = fdiv fast float %9093, %9074
  br label %9095

; <label>:9095                                    ; preds = %9088, %9084
  %9096 = phi float [ %9090, %9088 ], [ 1.000000e+00, %9084 ]
  %9097 = phi float [ %9094, %9088 ], [ %9071, %9084 ]
  %9098 = fcmp fast une float %9075, 0.000000e+00
  br i1 %9098, label %9099, label %9106, !dx.controlflow.hints !166

; <label>:9099                                    ; preds = %9095
  %9100 = fmul fast float %9075, 0x3FF7154760000000
  %9101 = call float @dx.op.unary.f32(i32 21, float %9100)  ; Exp(value)
  %9102 = fsub fast float 1.000000e+00, %9101
  %9103 = fmul fast float %9072, %9102
  %9104 = fsub fast float -0.000000e+00, %9103
  %9105 = fdiv fast float %9104, %9075
  br label %9106

; <label>:9106                                    ; preds = %9099, %9095
  %9107 = phi float [ %9101, %9099 ], [ 1.000000e+00, %9095 ]
  %9108 = phi float [ %9105, %9099 ], [ %9072, %9095 ]
  %9109 = fcmp fast ogt float %9005, %9007
  br i1 %9109, label %9110, label %9130

; <label>:9110                                    ; preds = %9106
  %9111 = fsub fast float 1.000000e+00, %9007
  %9112 = fmul fast float %9023, %9111
  %9113 = fmul fast float %9024, %9111
  %9114 = fmul fast float %9025, %9111
  %9115 = fmul fast float %9026, %9111
  %9116 = fcmp fast une float %9115, 0.000000e+00
  br i1 %9116, label %9117, label %9168, !dx.controlflow.hints !167

; <label>:9117                                    ; preds = %9110
  %9118 = fmul fast float %9115, 0x3FF7154760000000
  %9119 = call float @dx.op.unary.f32(i32 21, float %9118)  ; Exp(value)
  %9120 = fsub fast float 1.000000e+00, %9119
  %9121 = fmul fast float %9112, %9120
  %9122 = fsub fast float -0.000000e+00, %9121
  %9123 = fmul fast float %9113, %9120
  %9124 = fsub fast float -0.000000e+00, %9123
  %9125 = fmul fast float %9114, %9120
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fdiv fast float %9122, %9115
  %9128 = fdiv fast float %9124, %9115
  %9129 = fdiv fast float %9126, %9115
  br label %9168

; <label>:9130                                    ; preds = %9106
  %9131 = fsub fast float 1.000000e+00, %9005
  %9132 = fmul fast float %9036, %9131
  %9133 = fmul fast float %9047, %9131
  %9134 = fmul fast float %9058, %9131
  %9135 = fmul fast float %9037, %9131
  %9136 = fmul fast float %9048, %9131
  %9137 = fmul fast float %9059, %9131
  %9138 = fcmp fast une float %9135, 0.000000e+00
  br i1 %9138, label %9139, label %9146, !dx.controlflow.hints !166

; <label>:9139                                    ; preds = %9130
  %9140 = fmul fast float %9135, 0x3FF7154760000000
  %9141 = call float @dx.op.unary.f32(i32 21, float %9140)  ; Exp(value)
  %9142 = fsub fast float 1.000000e+00, %9141
  %9143 = fmul fast float %9132, %9142
  %9144 = fsub fast float -0.000000e+00, %9143
  %9145 = fdiv fast float %9144, %9135
  br label %9146

; <label>:9146                                    ; preds = %9139, %9130
  %9147 = phi float [ %9145, %9139 ], [ %9132, %9130 ]
  %9148 = phi float [ %9141, %9139 ], [ 1.000000e+00, %9130 ]
  %9149 = fcmp fast une float %9136, 0.000000e+00
  br i1 %9149, label %9150, label %9157, !dx.controlflow.hints !166

; <label>:9150                                    ; preds = %9146
  %9151 = fmul fast float %9136, 0x3FF7154760000000
  %9152 = call float @dx.op.unary.f32(i32 21, float %9151)  ; Exp(value)
  %9153 = fsub fast float 1.000000e+00, %9152
  %9154 = fmul fast float %9133, %9153
  %9155 = fsub fast float -0.000000e+00, %9154
  %9156 = fdiv fast float %9155, %9136
  br label %9157

; <label>:9157                                    ; preds = %9150, %9146
  %9158 = phi float [ %9156, %9150 ], [ %9133, %9146 ]
  %9159 = phi float [ %9152, %9150 ], [ 1.000000e+00, %9146 ]
  %9160 = fcmp fast une float %9137, 0.000000e+00
  br i1 %9160, label %9161, label %9168, !dx.controlflow.hints !166

; <label>:9161                                    ; preds = %9157
  %9162 = fmul fast float %9137, 0x3FF7154760000000
  %9163 = call float @dx.op.unary.f32(i32 21, float %9162)  ; Exp(value)
  %9164 = fsub fast float 1.000000e+00, %9163
  %9165 = fmul fast float %9134, %9164
  %9166 = fsub fast float -0.000000e+00, %9165
  %9167 = fdiv fast float %9166, %9137
  br label %9168

; <label>:9168                                    ; preds = %9161, %9157, %9117, %9110
  %9169 = phi float [ %9167, %9161 ], [ %9129, %9117 ], [ %9114, %9110 ], [ %9134, %9157 ]
  %9170 = phi float [ %9158, %9161 ], [ %9128, %9117 ], [ %9113, %9110 ], [ %9158, %9157 ]
  %9171 = phi float [ %9147, %9161 ], [ %9127, %9117 ], [ %9112, %9110 ], [ %9147, %9157 ]
  %9172 = phi float [ %9163, %9161 ], [ %9119, %9117 ], [ 1.000000e+00, %9110 ], [ 1.000000e+00, %9157 ]
  %9173 = phi float [ %9159, %9161 ], [ %9119, %9117 ], [ 1.000000e+00, %9110 ], [ %9159, %9157 ]
  %9174 = phi float [ %9148, %9161 ], [ %9119, %9117 ], [ 1.000000e+00, %9110 ], [ %9148, %9157 ]
  %9175 = fmul fast float %9174, %9086
  %9176 = fmul fast float %9173, %9097
  %9177 = fmul fast float %9172, %9108
  %9178 = fadd fast float %9175, %9171
  %9179 = fadd fast float %9176, %9170
  %9180 = fadd fast float %9177, %9169
  %9181 = fmul fast float %9174, %9085
  %9182 = fmul fast float %9173, %9096
  %9183 = fmul fast float %9172, %9107
  br label %9184

; <label>:9184                                    ; preds = %9168, %8979
  %9185 = phi float [ %9183, %9168 ], [ %8985, %8979 ]
  %9186 = phi float [ %9182, %9168 ], [ %8984, %8979 ]
  %9187 = phi float [ %9181, %9168 ], [ %8983, %8979 ]
  %9188 = phi float [ %9180, %9168 ], [ %8982, %8979 ]
  %9189 = phi float [ %9179, %9168 ], [ %8981, %8979 ]
  %9190 = phi float [ %9178, %9168 ], [ %8980, %8979 ]
  %9191 = fmul fast float %9190, %8132
  %9192 = fmul fast float %9189, %8134
  %9193 = fmul fast float %9188, %8136
  %9194 = fmul fast float %9187, %8427
  %9195 = call float @dx.op.dot3.f32(i32 55, float %9187, float %9186, float %9185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9196 = call float @dx.op.dot3.f32(i32 55, float %9191, float %9192, float %9193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9197 = select i1 %217, float %9195, float %9187
  %9198 = select i1 %217, float %9195, float %9186
  %9199 = select i1 %217, float 1.000000e+00, float %9185
  %9200 = select i1 %217, float %9196, float %9191
  %9201 = select i1 %217, float 0.000000e+00, float %9192
  %9202 = select i1 %217, float 0.000000e+00, float %9193
  %9203 = fmul fast float %9197, %8421
  %9204 = fmul fast float %9198, %8422
  %9205 = fmul fast float %9199, %8423
  %9206 = fadd fast float %9203, %9200
  %9207 = fadd fast float %9204, %9201
  %9208 = fadd fast float %9202, %9205
  %9209 = fmul fast float %9197, %8424
  %9210 = fmul fast float %9198, %8425
  %9211 = fmul fast float %9199, %8426
  %9212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.i32 %9212, 0
  %9214 = icmp eq i32 %9213, 0
  br i1 %9214, label %9582, label %9215, !dx.controlflow.hints !168

; <label>:9215                                    ; preds = %9184
  %9216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9217 = extractvalue %dx.types.CBufRet.f32 %9216, 2
  %9218 = extractvalue %dx.types.CBufRet.f32 %9216, 3
  %9219 = fmul fast float %9217, %100
  %9220 = fmul fast float %9218, %101
  %9221 = fmul fast float %9219, 2.000000e+00
  %9222 = fmul fast float %9220, 2.000000e+00
  %9223 = fsub fast float 1.000000e+00, %9221
  %9224 = fsub fast float 1.000000e+00, %9222
  %9225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9226 = extractvalue %dx.types.CBufRet.f32 %9225, 0
  %9227 = extractvalue %dx.types.CBufRet.f32 %9225, 1
  %9228 = extractvalue %dx.types.CBufRet.f32 %9225, 2
  %9229 = fmul fast float %9223, %9226
  %9230 = fmul fast float %9223, %9227
  %9231 = fmul fast float %9223, %9228
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9236 = fmul fast float %9224, %9233
  %9237 = fmul fast float %9224, %9234
  %9238 = fmul fast float %9224, %9235
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9242 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9243 = fadd fast float %9236, %9240
  %9244 = fadd fast float %9243, %9229
  %9245 = fadd fast float %9237, %9241
  %9246 = fadd fast float %9245, %9230
  %9247 = fadd fast float %9238, %9242
  %9248 = fadd fast float %9247, %9231
  %9249 = fmul fast float %9244, %8420
  %9250 = fmul fast float %9246, %8420
  %9251 = fmul fast float %9248, %8420
  %9252 = fmul fast float %9249, %9249
  %9253 = fmul fast float %9250, %9250
  %9254 = fadd fast float %9252, %9253
  %9255 = fmul fast float %9251, %9251
  %9256 = fadd fast float %9254, %9255
  %9257 = call float @dx.op.unary.f32(i32 24, float %9256)  ; Sqrt(value)
  %9258 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %9259 = fsub fast float %9257, %9258
  %9260 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %9261 = fmul fast float %9259, %9260
  %9262 = call float @dx.op.unary.f32(i32 7, float %9261)  ; Saturate(value)
  %9263 = fadd fast float %9262, -5.000000e-01
  %9264 = fmul fast float %9263, 2.000000e+00
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 2
  %9267 = call float @dx.op.binary.f32(i32 36, float %9266, float %9264)  ; FMin(a,b)
  %9268 = fsub fast float -0.000000e+00, %9266
  %9269 = fcmp fast ogt float %9267, %9268
  br i1 %9269, label %9270, label %9582, !dx.controlflow.hints !169

; <label>:9270                                    ; preds = %9215
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 3
  %9273 = fcmp fast ogt float %9272, 0.000000e+00
  br i1 %9273, label %9274, label %9349, !dx.controlflow.hints !170

; <label>:9274                                    ; preds = %9270
  %9275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9276 = extractvalue %dx.types.Dimensions %9275, 0
  %9277 = sitofp i32 %9276 to float
  %9278 = extractvalue %dx.types.Dimensions %9275, 1
  %9279 = sitofp i32 %9278 to float
  %9280 = fmul fast float %9219, %9277
  %9281 = fmul fast float %9220, %9279
  %9282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9283 = extractvalue %dx.types.CBufRet.f32 %9282, 1
  %9284 = fsub fast float -0.000000e+00, %9283
  %9285 = fptoui float %9284 to i32
  %9286 = fptoui float %9280 to i32
  %9287 = fptoui float %9281 to i32
  %9288 = and i32 %9285, 31
  %9289 = lshr i32 %9286, %9288
  %9290 = lshr i32 %9287, %9288
  %9291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9285, i32 %9289, i32 %9290, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9292 = extractvalue %dx.types.ResRet.f32 %9291, 0
  %9293 = fcmp fast olt float %9292, -1.000000e+00
  %9294 = fcmp fast ogt float %9292, -1.000000e+00
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 1
  %9297 = select i1 %9294, float %9296, float 1.000000e+00
  %9298 = fadd fast float %9292, 1.000000e+00
  %9299 = fmul fast float %9297, %9298
  %9300 = call float @dx.op.unary.f32(i32 6, float %9299)  ; FAbs(value)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9295, 3
  %9302 = fcmp fast oge float %9300, %9301
  %9303 = select i1 %9302, float 0x4197782600000000, float %9300
  %9304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9304, 0
  %9306 = extractvalue %dx.types.CBufRet.f32 %9304, 1
  %9307 = extractvalue %dx.types.CBufRet.f32 %9304, 2
  %9308 = select i1 %9293, float %9305, float %9226
  %9309 = select i1 %9293, float %9306, float %9227
  %9310 = select i1 %9293, float %9307, float %9228
  %9311 = fmul fast float %9308, %9223
  %9312 = fmul fast float %9309, %9223
  %9313 = fmul fast float %9310, %9223
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 0
  %9316 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9317 = extractvalue %dx.types.CBufRet.f32 %9314, 2
  %9318 = select i1 %9293, float %9315, float %9233
  %9319 = select i1 %9293, float %9316, float %9234
  %9320 = select i1 %9293, float %9317, float %9235
  %9321 = fmul fast float %9318, %9224
  %9322 = fmul fast float %9319, %9224
  %9323 = fmul fast float %9320, %9224
  %9324 = fadd fast float %9321, %9311
  %9325 = fadd fast float %9322, %9312
  %9326 = fadd fast float %9323, %9313
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 0
  %9329 = extractvalue %dx.types.CBufRet.f32 %9327, 1
  %9330 = extractvalue %dx.types.CBufRet.f32 %9327, 2
  %9331 = select i1 %9293, float %9328, float %9240
  %9332 = select i1 %9293, float %9329, float %9241
  %9333 = select i1 %9293, float %9330, float %9242
  %9334 = fadd fast float %9324, %9331
  %9335 = fadd fast float %9325, %9332
  %9336 = fadd fast float %9326, %9333
  %9337 = fmul fast float %9334, %9303
  %9338 = fmul fast float %9335, %9303
  %9339 = fmul fast float %9336, %9303
  %9340 = fmul fast float %9337, %9337
  %9341 = fmul fast float %9338, %9338
  %9342 = fadd fast float %9340, %9341
  %9343 = fmul fast float %9339, %9339
  %9344 = fadd fast float %9342, %9343
  %9345 = call float @dx.op.unary.f32(i32 24, float %9344)  ; Sqrt(value)
  %9346 = fsub fast float %9345, %9258
  %9347 = fmul fast float %9346, %9260
  %9348 = call float @dx.op.unary.f32(i32 7, float %9347)  ; Saturate(value)
  br label %9349

; <label>:9349                                    ; preds = %9274, %9270
  %9350 = phi float [ %9348, %9274 ], [ 1.000000e+00, %9270 ]
  %9351 = fmul fast float %9267, 5.000000e-01
  %9352 = fadd fast float %9351, 5.000000e-01
  %9353 = call float @dx.op.unary.f32(i32 22, float %9352)  ; Frc(value)
  %9354 = call float @dx.op.unary.f32(i32 27, float %9353)  ; Round_ni(value)
  %9355 = call float @dx.op.unary.f32(i32 22, float %9353)  ; Frc(value)
  %9356 = fmul fast float %9355, 2.000000e+00
  %9357 = fadd fast float %9356, -1.000000e+00
  %9358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9219, float %9220, float %9354, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = extractvalue %dx.types.ResRet.f32 %9358, 1
  %9361 = extractvalue %dx.types.ResRet.f32 %9358, 2
  %9362 = extractvalue %dx.types.ResRet.f32 %9358, 3
  %9363 = fadd fast float %9359, -5.000000e-01
  %9364 = fadd fast float %9361, -5.000000e-01
  %9365 = fmul fast float %9363, 0xBFD5555560000000
  %9366 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9364, float %9365)  ; FMad(a,b,c)
  %9367 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9360, float 0.000000e+00)  ; FMad(a,b,c)
  %9368 = fadd fast float %9367, %9362
  %9369 = fmul fast float %9363, -7.500000e-01
  %9370 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9364, float %9369)  ; FMad(a,b,c)
  %9371 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9360, float 0.000000e+00)  ; FMad(a,b,c)
  %9372 = fadd fast float %9371, %9362
  %9373 = call float @dx.op.binary.f32(i32 35, float %9366, float -1.000000e+00)  ; FMax(a,b)
  %9374 = call float @dx.op.binary.f32(i32 35, float %9368, float -1.000000e+00)  ; FMax(a,b)
  %9375 = call float @dx.op.binary.f32(i32 35, float %9370, float -1.000000e+00)  ; FMax(a,b)
  %9376 = call float @dx.op.binary.f32(i32 35, float %9372, float -1.000000e+00)  ; FMax(a,b)
  %9377 = call float @dx.op.binary.f32(i32 36, float %9373, float 1.000000e+00)  ; FMin(a,b)
  %9378 = call float @dx.op.binary.f32(i32 36, float %9374, float 1.000000e+00)  ; FMin(a,b)
  %9379 = call float @dx.op.binary.f32(i32 36, float %9375, float 1.000000e+00)  ; FMin(a,b)
  %9380 = call float @dx.op.binary.f32(i32 36, float %9376, float 1.000000e+00)  ; FMin(a,b)
  %9381 = fcmp fast olt float %9377, 0x3FEFFF8020000000
  br i1 %9381, label %9382, label %9497, !dx.controlflow.hints !171

; <label>:9382                                    ; preds = %9349
  %9383 = extractvalue %dx.types.CBufRet.f32 %9265, 3
  %9384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9385 = extractvalue %dx.types.CBufRet.f32 %9384, 0
  %9386 = extractvalue %dx.types.CBufRet.f32 %9384, 1
  %9387 = extractvalue %dx.types.CBufRet.f32 %9384, 2
  %9388 = extractvalue %dx.types.CBufRet.f32 %9384, 3
  %9389 = fsub fast float %9385, %9377
  %9390 = fsub fast float %9386, %9378
  %9391 = fsub fast float %9387, %9379
  %9392 = fsub fast float %9388, %9380
  %9393 = fmul fast float %9389, %9383
  %9394 = fmul fast float %9390, %9383
  %9395 = fmul fast float %9391, %9383
  %9396 = fmul fast float %9392, %9383
  %9397 = fadd fast float %9393, %9377
  %9398 = fadd fast float %9394, %9378
  %9399 = fsub fast float -0.000000e+00, %9398
  %9400 = fadd fast float %9395, %9379
  %9401 = fadd fast float %9396, %9380
  %9402 = fmul fast float %9397, %9397
  %9403 = fsub fast float %9398, %9402
  %9404 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9403)  ; FMax(a,b)
  %9405 = fdiv fast float 1.000000e+00, %9404
  %9406 = fmul fast float %9398, %9397
  %9407 = fsub fast float %9400, %9406
  %9408 = fsub fast float %9357, %9397
  %9409 = fmul fast float %9357, %9357
  %9410 = fsub fast float %9409, %9398
  %9411 = fmul fast float %9408, %9405
  %9412 = fmul fast float %9411, %9407
  %9413 = fsub fast float %9410, %9412
  %9414 = fmul fast float %9398, %9398
  %9415 = fsub fast float %9401, %9414
  %9416 = fmul fast float %9407, %9407
  %9417 = fmul fast float %9416, %9405
  %9418 = fsub fast float %9415, %9417
  %9419 = fdiv fast float %9413, %9418
  %9420 = fmul fast float %9407, %9419
  %9421 = fsub fast float %9408, %9420
  %9422 = fmul fast float %9421, %9405
  %9423 = fmul fast float %9422, %9397
  %9424 = fsub fast float 1.000000e+00, %9423
  %9425 = fmul fast float %9398, %9419
  %9426 = fsub fast float %9424, %9425
  %9427 = fmul fast float %9422, %9422
  %9428 = fmul fast float %9419, 4.000000e+00
  %9429 = fmul fast float %9428, %9426
  %9430 = fsub fast float %9427, %9429
  %9431 = call float @dx.op.unary.f32(i32 24, float %9430)  ; Sqrt(value)
  %9432 = fcmp fast oge float %9422, 0.000000e+00
  %9433 = fsub fast float -0.000000e+00, %9431
  %9434 = select i1 %9432, float %9433, float %9431
  %9435 = fsub fast float %9434, %9422
  %9436 = fdiv fast float %9435, %9419
  %9437 = fdiv fast float %9426, %9435
  %9438 = fmul fast float %9436, 5.000000e-01
  %9439 = fmul fast float %9437, 2.000000e+00
  %9440 = select i1 %9432, float %9438, float %9439
  %9441 = select i1 %9432, float %9439, float %9438
  %9442 = call float @dx.op.binary.f32(i32 35, float %9440, float %9441)  ; FMax(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9440, float %9441)  ; FMin(a,b)
  %9444 = fcmp fast ogt float %9357, %9443
  br i1 %9444, label %9445, label %9455

; <label>:9445                                    ; preds = %9382
  %9446 = fsub fast float %9357, %9443
  %9447 = fsub fast float %9442, %9443
  %9448 = fmul fast float %9446, %9447
  %9449 = fmul fast float %9442, %9357
  %9450 = fadd fast float %9442, %9357
  %9451 = fmul fast float %9450, %9397
  %9452 = fadd fast float %9449, %9398
  %9453 = fsub fast float %9452, %9451
  %9454 = fdiv fast float %9453, %9448
  br label %9455

; <label>:9455                                    ; preds = %9445, %9382
  %9456 = phi float [ %9454, %9445 ], [ 0.000000e+00, %9382 ]
  %9457 = fcmp fast ogt float %9357, %9442
  %9458 = fsub fast float %9357, %9442
  br i1 %9457, label %9459, label %9469

; <label>:9459                                    ; preds = %9455
  %9460 = fsub fast float %9442, %9443
  %9461 = fmul fast float %9460, %9458
  %9462 = fmul fast float %9443, %9357
  %9463 = fadd fast float %9443, %9357
  %9464 = fmul fast float %9463, %9397
  %9465 = fsub fast float %9399, %9462
  %9466 = fadd fast float %9465, %9464
  %9467 = fdiv fast float %9466, %9461
  %9468 = fadd fast float %9467, %9456
  br label %9469

; <label>:9469                                    ; preds = %9459, %9455
  %9470 = phi float [ %9468, %9459 ], [ %9456, %9455 ]
  %9471 = fsub fast float %9357, %9443
  %9472 = fmul fast float %9471, %9458
  %9473 = fmul fast float %9443, %9442
  %9474 = fadd fast float %9443, %9442
  %9475 = fmul fast float %9474, %9397
  %9476 = fadd fast float %9473, %9398
  %9477 = fsub fast float %9476, %9475
  %9478 = fdiv fast float %9477, %9472
  %9479 = call float @dx.op.unary.f32(i32 7, float %9470)  ; Saturate(value)
  %9480 = fcmp fast oeq float %8148, 0.000000e+00
  %9481 = extractvalue %dx.types.CBufRet.f32 %9265, 0
  %9482 = fcmp fast oeq float %9481, 0.000000e+00
  %9483 = or i1 %9480, %9482
  %9484 = fmul fast float %9481, 2.000000e+00
  %9485 = fadd fast float %9266, %9267
  %9486 = fdiv fast float %9485, %9484
  %9487 = call float @dx.op.unary.f32(i32 7, float %9486)  ; Saturate(value)
  %9488 = fmul fast float %9487, 2.000000e+00
  %9489 = fsub fast float 3.000000e+00, %9488
  %9490 = fmul fast float %9487, %9487
  %9491 = fmul fast float %9490, %9489
  %9492 = select i1 %9483, float 1.000000e+00, float %9491
  %9493 = fmul fast float %9478, %8148
  %9494 = fadd fast float %9479, %9493
  %9495 = call float @dx.op.unary.f32(i32 7, float %9494)  ; Saturate(value)
  %9496 = fmul fast float %9492, %9495
  br label %9497

; <label>:9497                                    ; preds = %9469, %9349
  %9498 = phi float [ %9496, %9469 ], [ 0.000000e+00, %9349 ]
  %9499 = fsub fast float 1.000000e+00, %9498
  %9500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9219, float %9220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9501 = extractvalue %dx.types.ResRet.f32 %9500, 0
  %9502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.i32 %9502, 2
  %9504 = icmp eq i32 %9503, 0
  br i1 %9504, label %9510, label %9505

; <label>:9505                                    ; preds = %9497
  %9506 = call float @dx.op.unary.f32(i32 7, float %9498)  ; Saturate(value)
  %9507 = fadd fast float %9501, -1.000000e+00
  %9508 = fmul fast float %9506, %9507
  %9509 = fadd fast float %9508, 1.000000e+00
  br label %9510

; <label>:9510                                    ; preds = %9505, %9497
  %9511 = phi float [ %9509, %9505 ], [ %9499, %9497 ]
  br i1 %9273, label %9512, label %9530

; <label>:9512                                    ; preds = %9510
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 1
  %9515 = fsub fast float %9350, %9514
  %9516 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9517 = fsub fast float %9350, %9272
  %9518 = call float @dx.op.unary.f32(i32 7, float %9517)  ; Saturate(value)
  %9519 = fsub fast float %9516, %9518
  %9520 = fsub fast float %9352, %9518
  %9521 = fdiv fast float %9520, %9519
  %9522 = call float @dx.op.unary.f32(i32 7, float %9521)  ; Saturate(value)
  %9523 = fmul fast float %9522, 2.000000e+00
  %9524 = fsub fast float 3.000000e+00, %9523
  %9525 = fsub fast float %9501, %9511
  %9526 = fmul fast float %9522, %9522
  %9527 = fmul fast float %9526, %9525
  %9528 = fmul fast float %9527, %9524
  %9529 = fadd fast float %9528, %9511
  br label %9530

; <label>:9530                                    ; preds = %9512, %9510
  %9531 = phi float [ %9529, %9512 ], [ %9511, %9510 ]
  %9532 = call float @dx.op.binary.f32(i32 35, float %9501, float %9531)  ; FMax(a,b)
  %9533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.i32 %9533, 2
  %9535 = and i32 %9534, 1
  %9536 = icmp eq i32 %9535, 0
  %9537 = fcmp fast une float %9532, 1.000000e+00
  %9538 = and i1 %9537, %9536
  br i1 %9538, label %9539, label %9558

; <label>:9539                                    ; preds = %9530
  %9540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9219, float %9220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9541 = extractvalue %dx.types.ResRet.f32 %9540, 0
  %9542 = extractvalue %dx.types.ResRet.f32 %9540, 1
  %9543 = extractvalue %dx.types.ResRet.f32 %9540, 2
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9546 = fmul fast float %9545, %9541
  %9547 = fmul fast float %9545, %9542
  %9548 = fmul fast float %9545, %9543
  %9549 = fcmp fast ogt float %9501, 0x3FEFFF2E40000000
  %9550 = fsub fast float 1.000000e+00, %9532
  %9551 = fsub fast float 1.000000e+00, %9501
  %9552 = fdiv fast float %9550, %9551
  %9553 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9554 = select i1 %9549, float 0.000000e+00, float %9553
  %9555 = fmul fast float %9546, %9554
  %9556 = fmul fast float %9547, %9554
  %9557 = fmul fast float %9548, %9554
  br label %9558

; <label>:9558                                    ; preds = %9539, %9530
  %9559 = phi float [ 0.000000e+00, %9530 ], [ %9555, %9539 ]
  %9560 = phi float [ 0.000000e+00, %9530 ], [ %9556, %9539 ]
  %9561 = phi float [ 0.000000e+00, %9530 ], [ %9557, %9539 ]
  %9562 = fmul fast float %9559, %8132
  %9563 = fmul fast float %9560, %8134
  %9564 = fmul fast float %9561, %8136
  %9565 = fmul fast float %9532, %9194
  %9566 = call float @dx.op.dot3.f32(i32 55, float %9532, float %9532, float %9532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9567 = call float @dx.op.dot3.f32(i32 55, float %9562, float %9563, float %9564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9568 = select i1 %217, float %9566, float %9532
  %9569 = select i1 %217, float 1.000000e+00, float %9532
  %9570 = select i1 %217, float %9567, float %9562
  %9571 = select i1 %217, float 0.000000e+00, float %9563
  %9572 = select i1 %217, float 0.000000e+00, float %9564
  %9573 = fmul fast float %9568, %9206
  %9574 = fmul fast float %9568, %9207
  %9575 = fmul fast float %9569, %9208
  %9576 = fadd fast float %9573, %9570
  %9577 = fadd fast float %9574, %9571
  %9578 = fadd fast float %9572, %9575
  %9579 = fmul fast float %9568, %9209
  %9580 = fmul fast float %9568, %9210
  %9581 = fmul fast float %9569, %9211
  br label %9582

; <label>:9582                                    ; preds = %9558, %9215, %9184, %8416
  %9583 = phi float [ %8421, %8416 ], [ %9206, %9184 ], [ %9576, %9558 ], [ %9206, %9215 ]
  %9584 = phi float [ %8422, %8416 ], [ %9207, %9184 ], [ %9577, %9558 ], [ %9207, %9215 ]
  %9585 = phi float [ %8423, %8416 ], [ %9208, %9184 ], [ %9578, %9558 ], [ %9208, %9215 ]
  %9586 = phi float [ %8424, %8416 ], [ %9209, %9184 ], [ %9579, %9558 ], [ %9209, %9215 ]
  %9587 = phi float [ %8425, %8416 ], [ %9210, %9184 ], [ %9580, %9558 ], [ %9210, %9215 ]
  %9588 = phi float [ %8426, %8416 ], [ %9211, %9184 ], [ %9581, %9558 ], [ %9211, %9215 ]
  %9589 = phi float [ %8427, %8416 ], [ %9194, %9184 ], [ %9565, %9558 ], [ %9194, %9215 ]
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 3
  %9593 = fmul fast float %9591, %100
  %9594 = fmul fast float %9592, %101
  %9595 = call float @dx.op.unary.f32(i32 7, float %9593)  ; Saturate(value)
  %9596 = call float @dx.op.unary.f32(i32 7, float %9594)  ; Saturate(value)
  %9597 = select i1 %8158, i32 2, i32 0
  %9598 = or i32 %9597, 1
  %9599 = uitofp i32 %9598 to float
  %9600 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9595, float %9596, float %9599, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9601 = extractvalue %dx.types.ResRet.f32 %9600, 0
  %9602 = extractvalue %dx.types.ResRet.f32 %9600, 1
  %9603 = extractvalue %dx.types.ResRet.f32 %9600, 2
  %9604 = extractvalue %dx.types.ResRet.f32 %9600, 3
  %9605 = add nuw nsw i32 %9597, 2
  %9606 = uitofp i32 %9605 to float
  %9607 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9595, float %9596, float %9606, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9608 = extractvalue %dx.types.ResRet.f32 %9607, 0
  %9609 = extractvalue %dx.types.ResRet.f32 %9607, 1
  %9610 = extractvalue %dx.types.ResRet.f32 %9607, 2
  %9611 = extractvalue %dx.types.ResRet.f32 %9607, 3
  %9612 = call float @dx.op.binary.f32(i32 35, float %9602, float %9603)  ; FMax(a,b)
  %9613 = call float @dx.op.binary.f32(i32 35, float %9601, float %9612)  ; FMax(a,b)
  %9614 = call float @dx.op.binary.f32(i32 35, float %9613, float %9604)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 36, float %9609, float %9610)  ; FMin(a,b)
  %9616 = call float @dx.op.binary.f32(i32 36, float %9608, float %9615)  ; FMin(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9616, float %9611)  ; FMin(a,b)
  %9618 = fmul fast float %9614, 2.550000e+02
  %9619 = fadd fast float %9618, 0x3F70101020000000
  %9620 = fptoui float %9619 to i32
  %9621 = fmul fast float %9617, 2.550000e+02
  %9622 = fadd fast float %9621, 0x3F70101020000000
  %9623 = fptoui float %9622 to i32
  %9624 = icmp ult i32 %9620, %9623
  br i1 %9624, label %9625, label %9794

; <label>:9625                                    ; preds = %9582
  %9626 = fcmp fast ogt float %90, 9.843750e-01
  %9627 = fadd fast float %8420, -4.000000e+00
  %9628 = select i1 %9626, float -4.000000e+00, float %9627
  %9629 = call float @dx.op.binary.f32(i32 35, float %9628, float 0.000000e+00)  ; FMax(a,b)
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = fadd fast float %9631, %9629
  %9633 = extractvalue %dx.types.CBufRet.f32 %9630, 2
  %9634 = fmul fast float %9632, %9633
  %9635 = call float @dx.op.unary.f32(i32 23, float %9634)  ; Log(value)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9630, 3
  %9637 = fmul fast float %9636, %9635
  %9638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9639 = extractvalue %dx.types.CBufRet.f32 %9638, 2
  %9640 = fmul fast float %9637, %9639
  %9641 = call float @dx.op.unary.f32(i32 7, float %9640)  ; Saturate(value)
  %9642 = uitofp i32 %9620 to float
  %9643 = uitofp i32 %9623 to float
  %9644 = fadd fast float %9642, 5.000000e-01
  %9645 = fadd fast float %9643, 5.000000e-01
  %9646 = fmul fast float %9639, %9644
  %9647 = fmul fast float %9639, %9645
  %9648 = fadd fast float %9646, 0x3F0FFB4800000000
  %9649 = fadd fast float %9647, 0xBF0FFB4800000000
  %9650 = call float @dx.op.binary.f32(i32 35, float %9641, float %9648)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 36, float %9650, float %9649)  ; FMin(a,b)
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 1
  %9654 = extractvalue %dx.types.CBufRet.f32 %9652, 2
  %9655 = extractvalue %dx.types.CBufRet.f32 %9652, 0
  %9656 = select i1 %8158, float %9655, float 0.000000e+00
  %9657 = fmul fast float %9653, %9651
  %9658 = fadd fast float %9656, %9657
  %9659 = fadd fast float %9656, %9654
  %9660 = fsub fast float %9653, %9654
  %9661 = fadd fast float %9660, %9656
  %9662 = call float @dx.op.binary.f32(i32 35, float %9658, float %9659)  ; FMax(a,b)
  %9663 = call float @dx.op.binary.f32(i32 36, float %9662, float %9661)  ; FMin(a,b)
  %9664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9595, float %9596, float %9663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9665 = extractvalue %dx.types.ResRet.f32 %9664, 0
  %9666 = extractvalue %dx.types.ResRet.f32 %9664, 1
  %9667 = extractvalue %dx.types.ResRet.f32 %9664, 2
  %9668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.i32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.i32 %9668, 1
  %9671 = uitofp i32 %9669 to float
  %9672 = uitofp i32 %9670 to float
  %9673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9674 = extractvalue %dx.types.CBufRet.f32 %9673, 0
  %9675 = extractvalue %dx.types.CBufRet.f32 %9673, 1
  %9676 = fmul fast float %9671, %9595
  %9677 = fmul fast float %9672, %9596
  %9678 = fadd fast float %9676, -5.000000e-01
  %9679 = fadd fast float %9677, -5.000000e-01
  %9680 = call float @dx.op.unary.f32(i32 22, float %9678)  ; Frc(value)
  %9681 = call float @dx.op.unary.f32(i32 22, float %9679)  ; Frc(value)
  %9682 = fmul fast float %9680, %9680
  %9683 = fmul fast float %9682, %9680
  %9684 = fsub fast float 3.000000e+00, %9680
  %9685 = fmul fast float %9682, %9684
  %9686 = fmul fast float %9680, 3.000000e+00
  %9687 = fmul fast float %9683, 3.000000e+00
  %9688 = fmul fast float %9682, 6.000000e+00
  %9689 = fsub fast float %9687, %9688
  %9690 = fadd fast float %9689, 4.000000e+00
  %9691 = fmul fast float %9690, 0x3FC5555560000000
  %9692 = fmul fast float %9683, -3.000000e+00
  %9693 = fadd fast float %9682, %9680
  %9694 = fmul fast float %9693, 3.000000e+00
  %9695 = fadd fast float %9692, 1.000000e+00
  %9696 = fadd fast float %9695, %9694
  %9697 = fmul fast float %9683, 0x3FC5555560000000
  %9698 = fmul fast float %9681, %9681
  %9699 = fmul fast float %9698, %9681
  %9700 = fsub fast float 3.000000e+00, %9681
  %9701 = fmul fast float %9698, %9700
  %9702 = fmul fast float %9681, 3.000000e+00
  %9703 = fmul fast float %9699, 3.000000e+00
  %9704 = fmul fast float %9698, 6.000000e+00
  %9705 = fsub fast float %9703, %9704
  %9706 = fadd fast float %9705, 4.000000e+00
  %9707 = fmul fast float %9706, 0x3FC5555560000000
  %9708 = fmul fast float %9699, -3.000000e+00
  %9709 = fadd fast float %9698, %9681
  %9710 = fmul fast float %9709, 3.000000e+00
  %9711 = fadd fast float %9708, 1.000000e+00
  %9712 = fadd fast float %9711, %9710
  %9713 = fmul fast float %9699, 0x3FC5555560000000
  %9714 = fadd fast float %9680, 1.000000e+00
  %9715 = fsub fast float 1.000000e+00, %9686
  %9716 = fadd fast float %9715, %9685
  %9717 = fadd fast float %9716, %9690
  %9718 = fmul fast float %9717, 0x3FC5555560000000
  %9719 = fdiv fast float %9691, %9718
  %9720 = fsub fast float %9714, %9719
  %9721 = fsub fast float 1.000000e+00, %9680
  %9722 = fadd fast float %9696, %9683
  %9723 = fmul fast float %9722, 0x3FC5555560000000
  %9724 = fdiv fast float %9697, %9723
  %9725 = fadd fast float %9721, %9724
  %9726 = fadd fast float %9681, 1.000000e+00
  %9727 = fsub fast float 1.000000e+00, %9702
  %9728 = fadd fast float %9727, %9701
  %9729 = fadd fast float %9728, %9706
  %9730 = fmul fast float %9729, 0x3FC5555560000000
  %9731 = fdiv fast float %9707, %9730
  %9732 = fsub fast float %9726, %9731
  %9733 = fsub fast float 1.000000e+00, %9681
  %9734 = fadd fast float %9712, %9699
  %9735 = fmul fast float %9734, 0x3FC5555560000000
  %9736 = fdiv fast float %9713, %9735
  %9737 = fadd fast float %9736, %9733
  %9738 = fmul fast float %9720, %9674
  %9739 = fsub fast float %9595, %9738
  %9740 = fmul fast float %9725, %9674
  %9741 = fadd fast float %9740, %9595
  %9742 = fmul fast float %9737, %9675
  %9743 = fadd fast float %9742, %9596
  %9744 = fmul fast float %9732, %9675
  %9745 = fsub fast float %9596, %9744
  %9746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9739, float %9745, float %9663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9747 = extractvalue %dx.types.ResRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.ResRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.ResRet.f32 %9746, 2
  %9750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9741, float %9745, float %9663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9751 = extractvalue %dx.types.ResRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.ResRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.ResRet.f32 %9750, 2
  %9754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9739, float %9743, float %9663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9755 = extractvalue %dx.types.ResRet.f32 %9754, 0
  %9756 = extractvalue %dx.types.ResRet.f32 %9754, 1
  %9757 = extractvalue %dx.types.ResRet.f32 %9754, 2
  %9758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9741, float %9743, float %9663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9759 = extractvalue %dx.types.ResRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.ResRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.ResRet.f32 %9758, 2
  %9762 = fsub fast float %9755, %9747
  %9763 = fsub fast float %9756, %9748
  %9764 = fsub fast float %9757, %9749
  %9765 = fmul fast float %9762, %9735
  %9766 = fmul fast float %9763, %9735
  %9767 = fmul fast float %9764, %9735
  %9768 = fadd fast float %9765, %9747
  %9769 = fadd fast float %9766, %9748
  %9770 = fadd fast float %9767, %9749
  %9771 = fsub fast float %9759, %9751
  %9772 = fsub fast float %9760, %9752
  %9773 = fsub fast float %9761, %9753
  %9774 = fmul fast float %9771, %9735
  %9775 = fmul fast float %9772, %9735
  %9776 = fmul fast float %9773, %9735
  %9777 = fsub fast float %9751, %9768
  %9778 = fadd fast float %9777, %9774
  %9779 = fsub fast float %9752, %9769
  %9780 = fadd fast float %9779, %9775
  %9781 = fsub fast float %9753, %9770
  %9782 = fadd fast float %9781, %9776
  %9783 = fmul fast float %9778, %9723
  %9784 = fmul fast float %9780, %9723
  %9785 = fmul fast float %9782, %9723
  %9786 = fadd fast float %9783, %9768
  %9787 = fadd fast float %9784, %9769
  %9788 = fadd fast float %9785, %9770
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 1
  %9791 = fmul fast float %9786, %9790
  %9792 = fmul fast float %9787, %9790
  %9793 = fmul fast float %9788, %9790
  br label %9794

; <label>:9794                                    ; preds = %9625, %9582
  %9795 = phi float [ %9665, %9625 ], [ 1.000000e+00, %9582 ]
  %9796 = phi float [ %9666, %9625 ], [ 1.000000e+00, %9582 ]
  %9797 = phi float [ %9667, %9625 ], [ 1.000000e+00, %9582 ]
  %9798 = phi float [ %9791, %9625 ], [ 0.000000e+00, %9582 ]
  %9799 = phi float [ %9792, %9625 ], [ 0.000000e+00, %9582 ]
  %9800 = phi float [ %9793, %9625 ], [ 0.000000e+00, %9582 ]
  %9801 = fmul fast float %9798, %8132
  %9802 = fmul fast float %9799, %8134
  %9803 = fmul fast float %9800, %8136
  %9804 = fmul fast float %9795, %9589
  %9805 = call float @dx.op.dot3.f32(i32 55, float %9795, float %9796, float %9797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9806 = call float @dx.op.dot3.f32(i32 55, float %9801, float %9802, float %9803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9807 = select i1 %217, float %9805, float %9795
  %9808 = select i1 %217, float %9805, float %9796
  %9809 = select i1 %217, float 1.000000e+00, float %9797
  %9810 = select i1 %217, float %9806, float %9801
  %9811 = select i1 %217, float 0.000000e+00, float %9802
  %9812 = select i1 %217, float 0.000000e+00, float %9803
  %9813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9814 = extractvalue %dx.types.CBufRet.i32 %9813, 3
  %9815 = and i32 %9814, 3
  %9816 = icmp ne i32 %9815, 0
  %9817 = and i32 %9814, 4
  %9818 = icmp ne i32 %9817, 0
  %9819 = and i1 %9816, %9818
  %9820 = and i1 %217, %9819
  br i1 %9820, label %9821, label %9827

; <label>:9821                                    ; preds = %9794
  %9822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.f32 %9822, 1
  %9824 = fadd fast float %9804, -1.000000e+00
  %9825 = fmul fast float %9823, %9824
  %9826 = fadd fast float %9825, 1.000000e+00
  br label %9827

; <label>:9827                                    ; preds = %9821, %9794
  %9828 = phi float [ %9826, %9821 ], [ %9804, %9794 ]
  %9829 = fadd fast float %9586, %9583
  %9830 = fmul fast float %9807, %9829
  %9831 = fadd fast float %9830, %9810
  %9832 = fadd fast float %9587, %9584
  %9833 = fmul fast float %9808, %9832
  %9834 = fadd fast float %9833, %9811
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  br i1 %217, label %9837, label %9852

; <label>:9837                                    ; preds = %9827
  %9838 = fadd fast float %9831, %9834
  %9839 = fmul fast float %9836, %9838
  %9840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.f32 %9840, 3
  %9842 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %9843 = fsub fast float %8145, %8139
  %9844 = fadd fast float %9843, %8146
  %9845 = fsub fast float %9844, %9842
  %9846 = extractvalue %dx.types.CBufRet.f32 %8140, 2
  %9847 = fmul fast float %9845, %9846
  %9848 = call float @dx.op.unary.f32(i32 7, float %9847)  ; Saturate(value)
  %9849 = fsub fast float %9848, %9841
  %9850 = fmul fast float %9849, %9828
  %9851 = fadd fast float %9850, %9841
  br label %9878

; <label>:9852                                    ; preds = %9827
  %9853 = fadd fast float %9588, %9585
  %9854 = fmul fast float %9809, %9853
  %9855 = fadd fast float %9854, %9812
  %9856 = fmul fast float %9836, %9831
  %9857 = fmul fast float %9836, %9834
  %9858 = fmul fast float %9836, %9855
  %9859 = call float @dx.op.binary.f32(i32 35, float %9857, float %9858)  ; FMax(a,b)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9856, float %9859)  ; FMax(a,b)
  %9861 = call float @dx.op.binary.f32(i32 35, float %8134, float %8136)  ; FMax(a,b)
  %9862 = call float @dx.op.binary.f32(i32 35, float %8132, float %9861)  ; FMax(a,b)
  %9863 = call float @dx.op.binary.f32(i32 35, float %9860, float %9862)  ; FMax(a,b)
  %9864 = fcmp fast ugt float %9863, 0x3F10000000000000
  br i1 %9864, label %9866, label %9865

; <label>:9865                                    ; preds = %9852
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9866

; <label>:9866                                    ; preds = %9865, %9852
  %9867 = add i32 %54, 356
  %9868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9867, i32 undef)  ; BufferLoad(srv,index,wot)
  %9869 = extractvalue %dx.types.ResRet.i32 %9868, 0
  %9870 = and i32 %9869, 32
  %9871 = icmp eq i32 %9870, 0
  br i1 %9871, label %9878, label %9872

; <label>:9872                                    ; preds = %9866
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 0
  %9875 = fmul fast float %9874, 0x3FE99999A0000000
  %9876 = fadd fast float %9874, %9856
  %9877 = fadd fast float %9875, %9858
  br label %9878

; <label>:9878                                    ; preds = %9872, %9866, %9837
  %9879 = phi float [ 1.000000e+00, %9837 ], [ %8134, %9872 ], [ %8134, %9866 ]
  %9880 = phi float [ 1.000000e+00, %9837 ], [ %8136, %9872 ], [ %8136, %9866 ]
  %9881 = phi float [ %9839, %9837 ], [ %9876, %9872 ], [ %9856, %9866 ]
  %9882 = phi float [ %9851, %9837 ], [ %9857, %9872 ], [ %9857, %9866 ]
  %9883 = phi float [ 1.000000e+00, %9837 ], [ %9877, %9872 ], [ %9858, %9866 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9884 = call float @dx.op.binary.f32(i32 36, float %9881, float 3.225500e+04)  ; FMin(a,b)
  %9885 = call float @dx.op.binary.f32(i32 36, float %9882, float 3.225500e+04)  ; FMin(a,b)
  %9886 = call float @dx.op.binary.f32(i32 36, float %9883, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9884)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9885)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9887 = call float @dx.op.binary.f32(i32 36, float %8132, float 3.225500e+04)  ; FMin(a,b)
  %9888 = call float @dx.op.binary.f32(i32 36, float %9879, float 3.225500e+04)  ; FMin(a,b)
  %9889 = call float @dx.op.binary.f32(i32 36, float %9880, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9887)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9888)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9889)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

