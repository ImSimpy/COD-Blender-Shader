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
; shader hash: 0bf8d8678515e4d907830b68f5cd901a
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
  %443 = add i32 %54, 556
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
  %719 = add i32 %54, 488
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
  %771 = add i32 %54, 472
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
  %795 = add i32 %54, 424
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
  %818 = add i32 %54, 508
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
  %1016 = add i32 %54, 440
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
  %1100 = add i32 %54, 456
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
  %1158 = add i32 %54, 524
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
  %1199 = add i32 %54, 540
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
  %1263 = phi float [ 0.000000e+00, %485 ], [ %1133, %1242 ]
  %1264 = phi float [ 0.000000e+00, %485 ], [ %1134, %1242 ]
  %1265 = phi float [ 0.000000e+00, %485 ], [ %1135, %1242 ]
  %1266 = phi float [ 0.000000e+00, %485 ], [ %1243, %1242 ]
  %1267 = phi float [ 0.000000e+00, %485 ], [ %1244, %1242 ]
  %1268 = phi float [ 0.000000e+00, %485 ], [ %1245, %1242 ]
  %1269 = phi float [ 0.000000e+00, %485 ], [ %1191, %1242 ]
  %1270 = phi float [ 0.000000e+00, %485 ], [ %1192, %1242 ]
  %1271 = phi float [ 0.000000e+00, %485 ], [ %1193, %1242 ]
  %1272 = phi float [ 0.000000e+00, %485 ], [ %1005, %1242 ]
  %1273 = phi float [ 0.000000e+00, %485 ], [ %1006, %1242 ]
  %1274 = phi float [ 0.000000e+00, %485 ], [ %1007, %1242 ]
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
  %1510 = add i32 %54, 492
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
  %1562 = add i32 %54, 476
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
  %1588 = add i32 %54, 428
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
  %1611 = add i32 %54, 512
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
  %1809 = add i32 %54, 444
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
  %1893 = add i32 %54, 460
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
  %1951 = add i32 %54, 528
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
  %1992 = add i32 %54, 544
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
  %2082 = fmul fast float %2079, %1272
  %2083 = fmul fast float %2080, %1273
  %2084 = fmul fast float %2081, %1274
  %2085 = fmul fast float %2079, %1263
  %2086 = fmul fast float %2080, %1264
  %2087 = fmul fast float %2081, %1265
  br label %2088

; <label>:2088                                    ; preds = %2053, %2035
  %2089 = phi float [ %2085, %2053 ], [ %1263, %2035 ]
  %2090 = phi float [ %2086, %2053 ], [ %1264, %2035 ]
  %2091 = phi float [ %2087, %2053 ], [ %1265, %2035 ]
  %2092 = phi float [ %2082, %2053 ], [ %1272, %2035 ]
  %2093 = phi float [ %2083, %2053 ], [ %1273, %2035 ]
  %2094 = phi float [ %2084, %2053 ], [ %1274, %2035 ]
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
  %2108 = fsub fast float %1798, %2092
  %2109 = fsub fast float %1799, %2093
  %2110 = fsub fast float %1800, %2094
  %2111 = fmul fast float %2102, %2108
  %2112 = fmul fast float %2102, %2109
  %2113 = fmul fast float %2102, %2110
  %2114 = fadd fast float %2111, %2092
  %2115 = fadd fast float %2112, %2093
  %2116 = fadd fast float %2113, %2094
  %2117 = fsub fast float %1784, %1275
  %2118 = fmul fast float %2102, %2117
  %2119 = fadd fast float %2118, %1275
  %2120 = fsub fast float %1926, %2089
  %2121 = fsub fast float %1927, %2090
  %2122 = fsub fast float %1928, %2091
  %2123 = fmul fast float %2107, %2120
  %2124 = fmul fast float %2107, %2121
  %2125 = fmul fast float %2107, %2122
  %2126 = fadd fast float %2123, %2089
  %2127 = fadd fast float %2124, %2090
  %2128 = fadd fast float %2125, %2091
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
  %2144 = fmul fast float %2141, %2092
  %2145 = fmul fast float %2142, %2093
  %2146 = fmul fast float %2143, %2094
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
  %2164 = fmul fast float %2163, %2092
  %2165 = fadd fast float %2164, %2162
  %2166 = fmul fast float %2165, %2092
  %2167 = fmul fast float %2160, 2.000000e+00
  %2168 = fsub fast float 1.000000e+00, %2167
  %2169 = fmul fast float %2168, %2093
  %2170 = fadd fast float %2169, %2167
  %2171 = fmul fast float %2170, %2093
  %2172 = fmul fast float %2161, 2.000000e+00
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fmul fast float %2173, %2094
  %2175 = fadd fast float %2174, %2172
  %2176 = fmul fast float %2175, %2094
  br label %2177

; <label>:2177                                    ; preds = %2149, %2147, %2134, %2104, %2088
  %2178 = phi float [ %2089, %2088 ], [ %2089, %2149 ], [ %2089, %2147 ], [ %2089, %2134 ], [ %2126, %2104 ]
  %2179 = phi float [ %2090, %2088 ], [ %2090, %2149 ], [ %2090, %2147 ], [ %2090, %2134 ], [ %2127, %2104 ]
  %2180 = phi float [ %2091, %2088 ], [ %2091, %2149 ], [ %2091, %2147 ], [ %2091, %2134 ], [ %2128, %2104 ]
  %2181 = phi float [ %2092, %2088 ], [ %2166, %2149 ], [ %2092, %2147 ], [ %2144, %2134 ], [ %2114, %2104 ]
  %2182 = phi float [ %2093, %2088 ], [ %2171, %2149 ], [ %2093, %2147 ], [ %2145, %2134 ], [ %2115, %2104 ]
  %2183 = phi float [ %2094, %2088 ], [ %2176, %2149 ], [ %2094, %2147 ], [ %2146, %2134 ], [ %2116, %2104 ]
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
  %2221 = fsub fast float %1984, %1269
  %2222 = fsub fast float %1985, %1270
  %2223 = fsub fast float %1986, %1271
  %2224 = fmul fast float %2200, %2221
  %2225 = fmul fast float %2200, %2222
  %2226 = fmul fast float %2200, %2223
  %2227 = fadd fast float %2224, %1269
  %2228 = fadd fast float %2225, %1270
  %2229 = fadd fast float %2226, %1271
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
  %2279 = fadd fast float %2276, %1269
  %2280 = fadd fast float %2277, %1270
  %2281 = fadd fast float %2278, %1271
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
  %2307 = fadd fast float %2304, %1269
  %2308 = fadd fast float %2305, %1270
  %2309 = fadd fast float %2306, %1271
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
  %2327 = phi float [ %1269, %2177 ], [ %1269, %1577 ], [ %1269, %1260 ], [ %2307, %2292 ], [ %1269, %2290 ], [ %2279, %2244 ], [ %2227, %2208 ], [ %1269, %1281 ]
  %2328 = phi float [ %1270, %2177 ], [ %1270, %1577 ], [ %1270, %1260 ], [ %2308, %2292 ], [ %1270, %2290 ], [ %2280, %2244 ], [ %2228, %2208 ], [ %1270, %1281 ]
  %2329 = phi float [ %1271, %2177 ], [ %1271, %1577 ], [ %1271, %1260 ], [ %2309, %2292 ], [ %1271, %2290 ], [ %2281, %2244 ], [ %2229, %2208 ], [ %1271, %1281 ]
  %2330 = phi float [ %2181, %2177 ], [ %1272, %1577 ], [ %1272, %1260 ], [ %2181, %2292 ], [ %2181, %2290 ], [ %2181, %2244 ], [ %2181, %2208 ], [ %1272, %1281 ]
  %2331 = phi float [ %2182, %2177 ], [ %1273, %1577 ], [ %1273, %1260 ], [ %2182, %2292 ], [ %2182, %2290 ], [ %2182, %2244 ], [ %2182, %2208 ], [ %1273, %1281 ]
  %2332 = phi float [ %2183, %2177 ], [ %1274, %1577 ], [ %1274, %1260 ], [ %2183, %2292 ], [ %2183, %2290 ], [ %2183, %2244 ], [ %2183, %2208 ], [ %1274, %1281 ]
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
  %2567 = add i32 %54, 496
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
  %2619 = add i32 %54, 480
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
  %2645 = add i32 %54, 432
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
  %2668 = add i32 %54, 516
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
  %2866 = add i32 %54, 448
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
  %2950 = add i32 %54, 464
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
  %3008 = add i32 %54, 532
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
  %3049 = add i32 %54, 548
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
  %3139 = fmul fast float %3136, %2330
  %3140 = fmul fast float %3137, %2331
  %3141 = fmul fast float %3138, %2332
  %3142 = fmul fast float %3136, %2321
  %3143 = fmul fast float %3137, %2322
  %3144 = fmul fast float %3138, %2323
  br label %3145

; <label>:3145                                    ; preds = %3110, %3092
  %3146 = phi float [ %3142, %3110 ], [ %2321, %3092 ]
  %3147 = phi float [ %3143, %3110 ], [ %2322, %3092 ]
  %3148 = phi float [ %3144, %3110 ], [ %2323, %3092 ]
  %3149 = phi float [ %3139, %3110 ], [ %2330, %3092 ]
  %3150 = phi float [ %3140, %3110 ], [ %2331, %3092 ]
  %3151 = phi float [ %3141, %3110 ], [ %2332, %3092 ]
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
  %3165 = fsub fast float %2855, %3149
  %3166 = fsub fast float %2856, %3150
  %3167 = fsub fast float %2857, %3151
  %3168 = fmul fast float %3159, %3165
  %3169 = fmul fast float %3159, %3166
  %3170 = fmul fast float %3159, %3167
  %3171 = fadd fast float %3168, %3149
  %3172 = fadd fast float %3169, %3150
  %3173 = fadd fast float %3170, %3151
  %3174 = fsub fast float %2841, %2333
  %3175 = fmul fast float %3159, %3174
  %3176 = fadd fast float %3175, %2333
  %3177 = fsub fast float %2983, %3146
  %3178 = fsub fast float %2984, %3147
  %3179 = fsub fast float %2985, %3148
  %3180 = fmul fast float %3164, %3177
  %3181 = fmul fast float %3164, %3178
  %3182 = fmul fast float %3164, %3179
  %3183 = fadd fast float %3180, %3146
  %3184 = fadd fast float %3181, %3147
  %3185 = fadd fast float %3182, %3148
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
  %3201 = fmul fast float %3198, %3149
  %3202 = fmul fast float %3199, %3150
  %3203 = fmul fast float %3200, %3151
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
  %3221 = fmul fast float %3220, %3149
  %3222 = fadd fast float %3221, %3219
  %3223 = fmul fast float %3222, %3149
  %3224 = fmul fast float %3217, 2.000000e+00
  %3225 = fsub fast float 1.000000e+00, %3224
  %3226 = fmul fast float %3225, %3150
  %3227 = fadd fast float %3226, %3224
  %3228 = fmul fast float %3227, %3150
  %3229 = fmul fast float %3218, 2.000000e+00
  %3230 = fsub fast float 1.000000e+00, %3229
  %3231 = fmul fast float %3230, %3151
  %3232 = fadd fast float %3231, %3229
  %3233 = fmul fast float %3232, %3151
  br label %3234

; <label>:3234                                    ; preds = %3206, %3204, %3191, %3161, %3145
  %3235 = phi float [ %3146, %3145 ], [ %3146, %3206 ], [ %3146, %3204 ], [ %3146, %3191 ], [ %3183, %3161 ]
  %3236 = phi float [ %3147, %3145 ], [ %3147, %3206 ], [ %3147, %3204 ], [ %3147, %3191 ], [ %3184, %3161 ]
  %3237 = phi float [ %3148, %3145 ], [ %3148, %3206 ], [ %3148, %3204 ], [ %3148, %3191 ], [ %3185, %3161 ]
  %3238 = phi float [ %3149, %3145 ], [ %3223, %3206 ], [ %3149, %3204 ], [ %3201, %3191 ], [ %3171, %3161 ]
  %3239 = phi float [ %3150, %3145 ], [ %3228, %3206 ], [ %3150, %3204 ], [ %3202, %3191 ], [ %3172, %3161 ]
  %3240 = phi float [ %3151, %3145 ], [ %3233, %3206 ], [ %3151, %3204 ], [ %3203, %3191 ], [ %3173, %3161 ]
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
  %3278 = fsub fast float %3041, %2327
  %3279 = fsub fast float %3042, %2328
  %3280 = fsub fast float %3043, %2329
  %3281 = fmul fast float %3257, %3278
  %3282 = fmul fast float %3257, %3279
  %3283 = fmul fast float %3257, %3280
  %3284 = fadd fast float %3281, %2327
  %3285 = fadd fast float %3282, %2328
  %3286 = fadd fast float %3283, %2329
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
  %3336 = fadd fast float %3333, %2327
  %3337 = fadd fast float %3334, %2328
  %3338 = fadd fast float %3335, %2329
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
  %3364 = fadd fast float %3361, %2327
  %3365 = fadd fast float %3362, %2328
  %3366 = fadd fast float %3363, %2329
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
  %3384 = phi float [ %2327, %3234 ], [ %2327, %2634 ], [ %2327, %2318 ], [ %3364, %3349 ], [ %2327, %3347 ], [ %3336, %3301 ], [ %3284, %3265 ], [ %2327, %2338 ]
  %3385 = phi float [ %2328, %3234 ], [ %2328, %2634 ], [ %2328, %2318 ], [ %3365, %3349 ], [ %2328, %3347 ], [ %3337, %3301 ], [ %3285, %3265 ], [ %2328, %2338 ]
  %3386 = phi float [ %2329, %3234 ], [ %2329, %2634 ], [ %2329, %2318 ], [ %3366, %3349 ], [ %2329, %3347 ], [ %3338, %3301 ], [ %3286, %3265 ], [ %2329, %2338 ]
  %3387 = phi float [ %3238, %3234 ], [ %2330, %2634 ], [ %2330, %2318 ], [ %3238, %3349 ], [ %3238, %3347 ], [ %3238, %3301 ], [ %3238, %3265 ], [ %2330, %2338 ]
  %3388 = phi float [ %3239, %3234 ], [ %2331, %2634 ], [ %2331, %2318 ], [ %3239, %3349 ], [ %3239, %3347 ], [ %3239, %3301 ], [ %3239, %3265 ], [ %2331, %2338 ]
  %3389 = phi float [ %3240, %3234 ], [ %2332, %2634 ], [ %2332, %2318 ], [ %3240, %3349 ], [ %3240, %3347 ], [ %3240, %3301 ], [ %3240, %3265 ], [ %2332, %2338 ]
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
  %3624 = add i32 %54, 500
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
  %3676 = add i32 %54, 484
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
  %3702 = add i32 %54, 436
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
  %3725 = add i32 %54, 520
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
  %3923 = add i32 %54, 452
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
  %4007 = add i32 %54, 468
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
  %4065 = add i32 %54, 536
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
  %4106 = add i32 %54, 552
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
  %4196 = fmul fast float %4193, %3387
  %4197 = fmul fast float %4194, %3388
  %4198 = fmul fast float %4195, %3389
  %4199 = fmul fast float %4193, %3378
  %4200 = fmul fast float %4194, %3379
  %4201 = fmul fast float %4195, %3380
  br label %4202

; <label>:4202                                    ; preds = %4167, %4149
  %4203 = phi float [ %4199, %4167 ], [ %3378, %4149 ]
  %4204 = phi float [ %4200, %4167 ], [ %3379, %4149 ]
  %4205 = phi float [ %4201, %4167 ], [ %3380, %4149 ]
  %4206 = phi float [ %4196, %4167 ], [ %3387, %4149 ]
  %4207 = phi float [ %4197, %4167 ], [ %3388, %4149 ]
  %4208 = phi float [ %4198, %4167 ], [ %3389, %4149 ]
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
  %4222 = fsub fast float %3912, %4206
  %4223 = fsub fast float %3913, %4207
  %4224 = fsub fast float %3914, %4208
  %4225 = fmul fast float %4216, %4222
  %4226 = fmul fast float %4216, %4223
  %4227 = fmul fast float %4216, %4224
  %4228 = fadd fast float %4225, %4206
  %4229 = fadd fast float %4226, %4207
  %4230 = fadd fast float %4227, %4208
  %4231 = fsub fast float %3898, %3390
  %4232 = fmul fast float %4216, %4231
  %4233 = fadd fast float %4232, %3390
  %4234 = fsub fast float %4040, %4203
  %4235 = fsub fast float %4041, %4204
  %4236 = fsub fast float %4042, %4205
  %4237 = fmul fast float %4221, %4234
  %4238 = fmul fast float %4221, %4235
  %4239 = fmul fast float %4221, %4236
  %4240 = fadd fast float %4237, %4203
  %4241 = fadd fast float %4238, %4204
  %4242 = fadd fast float %4239, %4205
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
  %4258 = fmul fast float %4255, %4206
  %4259 = fmul fast float %4256, %4207
  %4260 = fmul fast float %4257, %4208
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
  %4278 = fmul fast float %4277, %4206
  %4279 = fadd fast float %4278, %4276
  %4280 = fmul fast float %4279, %4206
  %4281 = fmul fast float %4274, 2.000000e+00
  %4282 = fsub fast float 1.000000e+00, %4281
  %4283 = fmul fast float %4282, %4207
  %4284 = fadd fast float %4283, %4281
  %4285 = fmul fast float %4284, %4207
  %4286 = fmul fast float %4275, 2.000000e+00
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = fmul fast float %4287, %4208
  %4289 = fadd fast float %4288, %4286
  %4290 = fmul fast float %4289, %4208
  br label %4291

; <label>:4291                                    ; preds = %4263, %4261, %4248, %4218, %4202
  %4292 = phi float [ %4203, %4202 ], [ %4203, %4263 ], [ %4203, %4261 ], [ %4203, %4248 ], [ %4240, %4218 ]
  %4293 = phi float [ %4204, %4202 ], [ %4204, %4263 ], [ %4204, %4261 ], [ %4204, %4248 ], [ %4241, %4218 ]
  %4294 = phi float [ %4205, %4202 ], [ %4205, %4263 ], [ %4205, %4261 ], [ %4205, %4248 ], [ %4242, %4218 ]
  %4295 = phi float [ %4206, %4202 ], [ %4280, %4263 ], [ %4206, %4261 ], [ %4258, %4248 ], [ %4228, %4218 ]
  %4296 = phi float [ %4207, %4202 ], [ %4285, %4263 ], [ %4207, %4261 ], [ %4259, %4248 ], [ %4229, %4218 ]
  %4297 = phi float [ %4208, %4202 ], [ %4290, %4263 ], [ %4208, %4261 ], [ %4260, %4248 ], [ %4230, %4218 ]
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
  %4335 = fsub fast float %4098, %3384
  %4336 = fsub fast float %4099, %3385
  %4337 = fsub fast float %4100, %3386
  %4338 = fmul fast float %4314, %4335
  %4339 = fmul fast float %4314, %4336
  %4340 = fmul fast float %4314, %4337
  %4341 = fadd fast float %4338, %3384
  %4342 = fadd fast float %4339, %3385
  %4343 = fadd fast float %4340, %3386
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
  %4393 = fadd fast float %4390, %3384
  %4394 = fadd fast float %4391, %3385
  %4395 = fadd fast float %4392, %3386
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
  %4421 = fadd fast float %4418, %3384
  %4422 = fadd fast float %4419, %3385
  %4423 = fadd fast float %4420, %3386
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
  %4441 = phi float [ %3384, %4291 ], [ %3384, %3691 ], [ %3384, %3375 ], [ %3384, %3395 ], [ %4341, %4322 ], [ %4393, %4358 ], [ %3384, %4404 ], [ %4421, %4406 ]
  %4442 = phi float [ %3385, %4291 ], [ %3385, %3691 ], [ %3385, %3375 ], [ %3385, %3395 ], [ %4342, %4322 ], [ %4394, %4358 ], [ %3385, %4404 ], [ %4422, %4406 ]
  %4443 = phi float [ %3386, %4291 ], [ %3386, %3691 ], [ %3386, %3375 ], [ %3386, %3395 ], [ %4343, %4322 ], [ %4395, %4358 ], [ %3386, %4404 ], [ %4423, %4406 ]
  %4444 = phi float [ %4295, %4291 ], [ %3387, %3691 ], [ %3387, %3375 ], [ %3387, %3395 ], [ %4295, %4322 ], [ %4295, %4358 ], [ %4295, %4404 ], [ %4295, %4406 ]
  %4445 = phi float [ %4296, %4291 ], [ %3388, %3691 ], [ %3388, %3375 ], [ %3388, %3395 ], [ %4296, %4322 ], [ %4296, %4358 ], [ %4296, %4404 ], [ %4296, %4406 ]
  %4446 = phi float [ %4297, %4291 ], [ %3389, %3691 ], [ %3389, %3375 ], [ %3389, %3395 ], [ %4297, %4322 ], [ %4297, %4358 ], [ %4297, %4404 ], [ %4297, %4406 ]
  %4447 = phi float [ %4298, %4291 ], [ %3390, %3691 ], [ %3390, %3375 ], [ %3390, %3395 ], [ %4298, %4322 ], [ %4298, %4358 ], [ %4298, %4404 ], [ %4298, %4406 ]
  %4448 = phi float [ %3391, %4291 ], [ %3391, %3691 ], [ %3391, %3375 ], [ %3391, %3395 ], [ %4334, %4322 ], [ %4389, %4358 ], [ %3391, %4404 ], [ %4417, %4406 ]
  %4449 = phi float [ %3392, %4291 ], [ %3392, %3691 ], [ %3392, %3375 ], [ %3392, %3395 ], [ %4331, %4322 ], [ %4366, %4358 ], [ %3392, %4404 ], [ %4414, %4406 ]
  %4450 = phi float [ %3393, %4291 ], [ %3393, %3691 ], [ %3393, %3375 ], [ %3393, %3395 ], [ %4346, %4322 ], [ %4397, %4358 ], [ %3393, %4404 ], [ %4425, %4406 ]
  %4451 = phi float [ %4299, %4291 ], [ %3394, %3691 ], [ %3394, %3375 ], [ %3394, %3395 ], [ %4299, %4322 ], [ %4299, %4358 ], [ %4299, %4404 ], [ %4299, %4406 ]
  %4452 = add i32 %54, 408
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.i32 %4453, 1
  %4456 = bitcast i32 %4454 to float
  %4457 = bitcast i32 %4455 to float
  %4458 = fcmp fast oge float %4456, 0.000000e+00
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = select i1 %4458, float %4456, float %4460
  %4462 = add i32 %54, 504
  %4463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.i32 %4463, 0
  %4465 = add i32 %4464, 0
  %4466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4466, %dx.types.Handle %97, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = fmul fast float %4468, %4457
  %4470 = fadd fast float %4469, %4461
  %4471 = call float @dx.op.dot2.f32(i32 54, float %4433, float %4434, float %4433, float %4434)  ; Dot2(ax,ay,bx,by)
  %4472 = fmul fast float %4471, 0x3FE3333340000000
  %4473 = fsub fast float 1.000000e+00, %4472
  %4474 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4473, float %4433, float %4434, float %4473)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = call float @dx.op.unary.f32(i32 25, float %4474)  ; Rsqrt(value)
  %4476 = fmul fast float %4475, %4433
  %4477 = fmul fast float %4475, %4434
  %4478 = fmul fast float %4473, %4475
  %4479 = fmul fast float %4478, %107
  %4480 = fmul fast float %4478, %108
  %4481 = fmul fast float %4478, %109
  %4482 = fmul fast float %4476, %75
  %4483 = fmul fast float %4476, %76
  %4484 = fmul fast float %4476, %77
  %4485 = fadd fast float %4479, %4482
  %4486 = fadd fast float %4480, %4483
  %4487 = fadd fast float %4481, %4484
  %4488 = fmul fast float %119, %4477
  %4489 = fmul fast float %120, %4477
  %4490 = fmul fast float %121, %4477
  %4491 = fadd fast float %4485, %4488
  %4492 = fadd fast float %4486, %4489
  %4493 = fadd fast float %4487, %4490
  %4494 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4492, float %4493, float %4491, float %4492, float %4493)  ; Dot3(ax,ay,az,bx,by,bz)
  %4495 = call float @dx.op.unary.f32(i32 25, float %4494)  ; Rsqrt(value)
  %4496 = fmul fast float %4491, %4495
  %4497 = fmul fast float %4492, %4495
  %4498 = fmul fast float %4493, %4495
  %4499 = and i32 %56, 1
  %4500 = icmp eq i32 %4499, 0
  br i1 %4500, label %4501, label %5093

; <label>:4501                                    ; preds = %4432
  %4502 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4503 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4504 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4508 = fadd fast float %4502, %155
  %4509 = fadd fast float %4503, %156
  %4510 = fadd fast float %4504, %157
  %4511 = fadd fast float %4505, %155
  %4512 = fadd fast float %4506, %156
  %4513 = fadd fast float %4507, %157
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.f32 %4518, 2
  %4520 = extractvalue %dx.types.CBufRet.f32 %4518, 3
  %4521 = fmul fast float %4515, %100
  %4522 = fmul fast float %4521, %4519
  %4523 = fmul fast float %4516, %101
  %4524 = fmul fast float %4523, %4520
  %4525 = fptoui float %4522 to i32
  %4526 = fptoui float %4524 to i32
  %4527 = fadd fast float %4515, -1.000000e+00
  %4528 = fadd fast float %4516, -1.000000e+00
  %4529 = fptoui float %4527 to i32
  %4530 = fptoui float %4528 to i32
  %4531 = call i32 @dx.op.binary.i32(i32 40, i32 %4525, i32 %4529)  ; UMin(a,b)
  %4532 = call i32 @dx.op.binary.i32(i32 40, i32 %4526, i32 %4530)  ; UMin(a,b)
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4536 = fmul fast float %4534, %91
  %4537 = fsub fast float %4536, %4535
  %4538 = fadd fast float %4517, -1.000000e+00
  %4539 = call float @dx.op.binary.f32(i32 36, float %4537, float %4538)  ; FMin(a,b)
  %4540 = fptoui float %4539 to i32
  %4541 = fptoui float %4515 to i32
  %4542 = fptoui float %4516 to i32
  %4543 = mul i32 %4540, %4542
  %4544 = add i32 %4543, %4532
  %4545 = mul i32 %4544, %4541
  %4546 = add i32 %4545, %4531
  %4547 = shl i32 %4546, 2
  %4548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.i32 %4548, 0
  %4550 = and i32 %4549, 1023
  %4551 = lshr i32 %4549, 10
  %4552 = icmp eq i32 %4550, 0
  br i1 %4552, label %5056, label %4553

; <label>:4553                                    ; preds = %4501
  %4554 = and i32 %4549, 1023
  br label %4555

; <label>:4555                                    ; preds = %4687, %4553
  %4556 = phi i32 [ %4637, %4687 ], [ 0, %4553 ]
  %4557 = phi float [ %4688, %4687 ], [ 0.000000e+00, %4553 ]
  %4558 = phi float [ %4689, %4687 ], [ %4470, %4553 ]
  %4559 = phi float [ %4690, %4687 ], [ %4451, %4553 ]
  %4560 = phi float [ %4691, %4687 ], [ %4441, %4553 ]
  %4561 = phi float [ %4692, %4687 ], [ %4442, %4553 ]
  %4562 = phi float [ %4693, %4687 ], [ %4443, %4553 ]
  %4563 = phi float [ %4694, %4687 ], [ 0.000000e+00, %4553 ]
  %4564 = phi float [ %4695, %4687 ], [ 0.000000e+00, %4553 ]
  %4565 = phi float [ %4696, %4687 ], [ %4438, %4553 ]
  %4566 = phi float [ %4697, %4687 ], [ %4439, %4553 ]
  %4567 = phi float [ %4698, %4687 ], [ %4440, %4553 ]
  %4568 = phi float [ %4699, %4687 ], [ %4435, %4553 ]
  %4569 = phi float [ %4700, %4687 ], [ %4436, %4553 ]
  %4570 = phi float [ %4701, %4687 ], [ %4437, %4553 ]
  %4571 = phi float [ %4702, %4687 ], [ %4496, %4553 ]
  %4572 = phi float [ %4703, %4687 ], [ %4497, %4553 ]
  %4573 = phi float [ %4704, %4687 ], [ %4498, %4553 ]
  %4574 = phi float [ %4705, %4687 ], [ %4449, %4553 ]
  %4575 = phi float [ %4706, %4687 ], [ %4448, %4553 ]
  %4576 = phi float [ %4707, %4687 ], [ 0.000000e+00, %4553 ]
  %4577 = phi float [ %4708, %4687 ], [ %4447, %4553 ]
  %4578 = phi float [ %4709, %4687 ], [ %4444, %4553 ]
  %4579 = phi float [ %4710, %4687 ], [ %4445, %4553 ]
  %4580 = phi float [ %4711, %4687 ], [ %4446, %4553 ]
  %4581 = add nuw nsw i32 %4556, %4551
  %4582 = shl i32 %4581, 2
  %4583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.i32 %4583, 0
  %4585 = shl i32 %4584, 8
  %4586 = or i32 %4585, 48
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = extractvalue %dx.types.ResRet.f32 %4587, 3
  %4592 = or i32 %4585, 64
  %4593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.i32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.i32 %4593, 1
  %4596 = or i32 %4585, 80
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4600 = or i32 %4585, 96
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = or i32 %4585, 112
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4609 = or i32 %4585, 128
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.ResRet.f32 %4610, 3
  %4615 = or i32 %4585, 144
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.ResRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.ResRet.f32 %4616, 2
  %4620 = extractvalue %dx.types.ResRet.f32 %4616, 3
  %4621 = or i32 %4585, 160
  %4622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4621, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.ResRet.f32 %4622, 1
  %4625 = extractvalue %dx.types.ResRet.f32 %4622, 2
  %4626 = extractvalue %dx.types.ResRet.f32 %4622, 3
  %4627 = or i32 %4585, 192
  %4628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.i32 %4628, 0
  %4630 = or i32 %4585, 208
  %4631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = or i32 %4585, 248
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = add nuw nsw i32 %4556, 1
  %4638 = bitcast float %4591 to i32
  %4639 = and i32 %4638, 512
  %4640 = icmp eq i32 %4639, 0
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.ResRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4641, 2
  %4645 = extractvalue %dx.types.ResRet.f32 %4641, 3
  %4646 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4647 = or i32 %4585, 16
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.ResRet.f32 %4648, 3
  %4653 = call float @dx.op.dot4.f32(i32 56, float %4649, float %4650, float %4651, float %4652, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4654 = or i32 %4585, 32
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.ResRet.f32 %4655, 3
  %4660 = call float @dx.op.dot4.f32(i32 56, float %4656, float %4657, float %4658, float %4659, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4661 = call float @dx.op.unary.f32(i32 27, float %4646)  ; Round_ni(value)
  %4662 = call float @dx.op.unary.f32(i32 6, float %4661)  ; FAbs(value)
  %4663 = call float @dx.op.unary.f32(i32 27, float %4653)  ; Round_ni(value)
  %4664 = call float @dx.op.unary.f32(i32 6, float %4663)  ; FAbs(value)
  %4665 = call float @dx.op.unary.f32(i32 6, float %4660)  ; FAbs(value)
  %4666 = call float @dx.op.unary.f32(i32 27, float %4665)  ; Round_ni(value)
  %4667 = fadd fast float %4664, %4662
  %4668 = fadd fast float %4667, %4666
  %4669 = fcmp fast oeq float %4668, 0.000000e+00
  %4670 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %4508, float %4509, float %4510, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4671 = call float @dx.op.dot4.f32(i32 56, float %4649, float %4650, float %4651, float %4652, float %4508, float %4509, float %4510, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4672 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %4511, float %4512, float %4513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4673 = call float @dx.op.dot4.f32(i32 56, float %4649, float %4650, float %4651, float %4652, float %4511, float %4512, float %4513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4674 = fsub fast float %4670, %4646
  %4675 = fsub fast float %4672, %4646
  %4676 = fsub fast float %4671, %4653
  %4677 = fsub fast float %4673, %4653
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4588, float %4589, float %4590, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 2
  %4681 = fadd fast float %4680, %4678
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4679, 0
  %4684 = fcmp fast ogt float %4682, %4683
  %4685 = and i1 %4669, %4684
  %4686 = and i1 %4640, %4685
  br i1 %4686, label %4713, label %4687

; <label>:4687                                    ; preds = %5042, %4794, %4713, %4555
  %4688 = phi float [ %4557, %4713 ], [ %4797, %4794 ], [ %4797, %5042 ], [ %4557, %4555 ]
  %4689 = phi float [ %4558, %4713 ], [ %4558, %4794 ], [ %5018, %5042 ], [ %4558, %4555 ]
  %4690 = phi float [ %4559, %4713 ], [ %4559, %4794 ], [ %5016, %5042 ], [ %4559, %4555 ]
  %4691 = phi float [ %4560, %4713 ], [ %4560, %4794 ], [ %4994, %5042 ], [ %4560, %4555 ]
  %4692 = phi float [ %4561, %4713 ], [ %4561, %4794 ], [ %4995, %5042 ], [ %4561, %4555 ]
  %4693 = phi float [ %4562, %4713 ], [ %4562, %4794 ], [ %4996, %5042 ], [ %4562, %4555 ]
  %4694 = phi float [ %4563, %4713 ], [ %4563, %4794 ], [ %4921, %5042 ], [ %4563, %4555 ]
  %4695 = phi float [ %4564, %4713 ], [ %4564, %4794 ], [ %4919, %5042 ], [ %4564, %4555 ]
  %4696 = phi float [ %4565, %4713 ], [ %4565, %4794 ], [ %4964, %5042 ], [ %4565, %4555 ]
  %4697 = phi float [ %4566, %4713 ], [ %4566, %4794 ], [ %4965, %5042 ], [ %4566, %4555 ]
  %4698 = phi float [ %4567, %4713 ], [ %4567, %4794 ], [ %4966, %5042 ], [ %4567, %4555 ]
  %4699 = phi float [ %4568, %4713 ], [ %4568, %4794 ], [ %5052, %5042 ], [ %4568, %4555 ]
  %4700 = phi float [ %4569, %4713 ], [ %4569, %4794 ], [ %5053, %5042 ], [ %4569, %4555 ]
  %4701 = phi float [ %4570, %4713 ], [ %4570, %4794 ], [ %5054, %5042 ], [ %4570, %4555 ]
  %4702 = phi float [ %4571, %4713 ], [ %4571, %4794 ], [ %4900, %5042 ], [ %4571, %4555 ]
  %4703 = phi float [ %4572, %4713 ], [ %4572, %4794 ], [ %4901, %5042 ], [ %4572, %4555 ]
  %4704 = phi float [ %4573, %4713 ], [ %4573, %4794 ], [ %4902, %5042 ], [ %4573, %4555 ]
  %4705 = phi float [ %4574, %4713 ], [ %4574, %4794 ], [ %4974, %5042 ], [ %4574, %4555 ]
  %4706 = phi float [ %4575, %4713 ], [ %4575, %4794 ], [ %4971, %5042 ], [ %4575, %4555 ]
  %4707 = phi float [ %4576, %4713 ], [ %4576, %4794 ], [ %4968, %5042 ], [ %4576, %4555 ]
  %4708 = phi float [ %4577, %4713 ], [ %4577, %4794 ], [ %4917, %5042 ], [ %4577, %4555 ]
  %4709 = phi float [ %4578, %4713 ], [ %4578, %4794 ], [ %4912, %5042 ], [ %4578, %4555 ]
  %4710 = phi float [ %4579, %4713 ], [ %4579, %4794 ], [ %4913, %5042 ], [ %4579, %4555 ]
  %4711 = phi float [ %4580, %4713 ], [ %4580, %4794 ], [ %4914, %5042 ], [ %4580, %4555 ]
  %4712 = icmp eq i32 %4637, %4554
  br i1 %4712, label %5055, label %4555

; <label>:4713                                    ; preds = %4555
  %4714 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4715 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4717 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4718 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4719 = extractvalue %dx.types.ResRet.i32 %4593, 3
  %4720 = extractvalue %dx.types.ResRet.i32 %4593, 2
  %4721 = add i32 %4719, 0
  %4722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4722, %dx.types.Handle %4723, float %4646, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float %4674, float %4676, float undef, float %4675, float %4677, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = fmul fast float %4725, %4718
  %4727 = fadd fast float %4726, %4717
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4646, %4602
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4653, float %4729)  ; FMad(a,b,c)
  %4731 = fadd fast float %4730, %4716
  %4732 = fmul fast float %4646, %4604
  %4733 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4653, float %4732)  ; FMad(a,b,c)
  %4734 = fadd fast float %4733, %4715
  %4735 = fmul fast float %4674, %4602
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4676, float %4735)  ; FMad(a,b,c)
  %4737 = fmul fast float %4674, %4604
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4676, float %4737)  ; FMad(a,b,c)
  %4739 = fmul fast float %4675, %4602
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4677, float %4739)  ; FMad(a,b,c)
  %4741 = fmul fast float %4675, %4604
  %4742 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4677, float %4741)  ; FMad(a,b,c)
  %4743 = add i32 %4720, 0
  %4744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4743, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4744, %dx.types.Handle %4723, float %4731, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float %4736, float %4738, float undef, float %4740, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4746 = extractvalue %dx.types.ResRet.f32 %4745, 0
  %4747 = and i32 %4638, 1024
  %4748 = icmp ne i32 %4747, 0
  %4749 = fcmp fast ogt float %4746, 0x3FE0101020000000
  %4750 = uitofp i1 %4749 to float
  %4751 = select i1 %4748, float %4750, float %4746
  %4752 = and i32 %4638, 8192
  %4753 = icmp ne i32 %4752, 0
  %4754 = select i1 %4753, float %4714, float 1.000000e+00
  %4755 = fmul fast float %4646, 2.000000e+00
  %4756 = fadd fast float %4755, -1.000000e+00
  %4757 = call float @dx.op.unary.f32(i32 6, float %4756)  ; FAbs(value)
  %4758 = fmul fast float %4757, %4635
  %4759 = fsub fast float %4758, %4635
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fmul fast float %4653, 2.000000e+00
  %4762 = fadd fast float %4761, -1.000000e+00
  %4763 = call float @dx.op.unary.f32(i32 6, float %4762)  ; FAbs(value)
  %4764 = fmul fast float %4763, %4636
  %4765 = fsub fast float %4764, %4636
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fmul fast float %4665, %4598
  %4768 = fsub fast float %4767, %4598
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = fmul fast float %4728, %4754
  %4771 = fmul fast float %4770, %4725
  %4772 = fmul fast float %4771, %4760
  %4773 = fmul fast float %4772, %4751
  %4774 = fmul fast float %4773, %4766
  %4775 = fmul fast float %4774, %4769
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4778 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4779 = fsub fast float %4682, %4778
  %4780 = fmul fast float %4779, %4777
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4775, %4599
  %4783 = fadd fast float %4775, %4599
  %4784 = fmul fast float %4783, %4608
  %4785 = fsub fast float %4784, %4608
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = and i32 %4638, 128
  %4788 = icmp ne i32 %4787, 0
  %4789 = select i1 %4788, float %4786, float %4782
  %4790 = fmul fast float %4789, %4781
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = fcmp fast ugt float %4790, %4792
  br i1 %4793, label %4794, label %4687

; <label>:4794                                    ; preds = %4713
  %4795 = select i1 %4753, float %4790, float 0.000000e+00
  %4796 = fadd fast float %4795, %4557
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  br i1 %4753, label %4687, label %4798

; <label>:4798                                    ; preds = %4794
  %4799 = and i32 %4638, 4
  %4800 = and i32 %4638, 8
  %4801 = add i32 %4594, 0
  %4802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4804 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4802, %dx.types.Handle %4803, float %4731, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float %4736, float %4738, float undef, float %4740, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4808 = extractvalue %dx.types.ResRet.f32 %4804, 3
  %4809 = bitcast float %4620 to i32
  %4810 = and i32 %4809, 255
  %4811 = uitofp i32 %4810 to float
  %4812 = lshr i32 %4809, 8
  %4813 = and i32 %4812, 255
  %4814 = uitofp i32 %4813 to float
  %4815 = fmul fast float %4808, %4811
  %4816 = fadd fast float %4815, %4814
  %4817 = fmul fast float %4816, 0x3F70101000000000
  %4818 = add i32 %4595, 0
  %4819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4818, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4819, %dx.types.Handle %4803, float %4731, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float %4736, float %4738, float undef, float %4740, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.ResRet.f32 %4820, 3
  %4825 = bitcast float %4614 to i32
  %4826 = and i32 %4825, 255
  %4827 = uitofp i32 %4826 to float
  %4828 = lshr i32 %4825, 8
  %4829 = and i32 %4828, 255
  %4830 = uitofp i32 %4829 to float
  %4831 = lshr i32 %4825, 16
  %4832 = and i32 %4831, 255
  %4833 = uitofp i32 %4832 to float
  %4834 = fmul fast float %4833, 0x3F70101000000000
  %4835 = fmul fast float %4821, %4827
  %4836 = fadd fast float %4835, %4830
  %4837 = fmul fast float %4836, 0x3F70101000000000
  %4838 = fadd fast float %4822, -5.000000e-01
  %4839 = fadd fast float %4824, -5.000000e-01
  %4840 = fmul fast float %4838, %4834
  %4841 = fmul fast float %4839, %4834
  %4842 = fadd fast float %4840, 5.000000e-01
  %4843 = fadd fast float %4841, 5.000000e-01
  %4844 = fmul fast float %4805, %4623
  %4845 = fmul fast float %4806, %4624
  %4846 = fmul fast float %4807, %4625
  %4847 = fmul fast float %4842, 2.000000e+00
  %4848 = fadd fast float %4847, -1.000000e+00
  %4849 = fmul fast float %4843, 2.000000e+00
  %4850 = fadd fast float %4849, -1.000000e+00
  %4851 = fadd fast float %4848, %4850
  %4852 = fmul fast float %4851, 5.000000e-01
  %4853 = fsub fast float %4848, %4850
  %4854 = fmul fast float %4853, 5.000000e-01
  %4855 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4858 = fsub fast float %4856, %4857
  %4859 = call float @dx.op.dot3.f32(i32 55, float %4852, float %4854, float %4858, float %4852, float %4854, float %4858)  ; Dot3(ax,ay,az,bx,by,bz)
  %4860 = call float @dx.op.unary.f32(i32 25, float %4859)  ; Rsqrt(value)
  %4861 = fmul fast float %4852, %4860
  %4862 = fmul fast float %4854, %4860
  %4863 = fmul fast float %4860, %4858
  %4864 = fmul fast float %4863, %4588
  %4865 = fmul fast float %4863, %4589
  %4866 = fmul fast float %4863, %4590
  %4867 = fmul fast float %4861, %4611
  %4868 = fmul fast float %4861, %4612
  %4869 = fmul fast float %4861, %4613
  %4870 = fadd fast float %4867, %4864
  %4871 = fadd fast float %4868, %4865
  %4872 = fadd fast float %4869, %4866
  %4873 = fmul fast float %4862, %4617
  %4874 = fmul fast float %4862, %4618
  %4875 = fmul fast float %4862, %4619
  %4876 = fadd fast float %4870, %4873
  %4877 = fadd fast float %4871, %4874
  %4878 = fadd fast float %4872, %4875
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4877, float %4878, float %4876, float %4877, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.unary.f32(i32 25, float %4879)  ; Rsqrt(value)
  %4881 = fmul fast float %4876, %4880
  %4882 = fmul fast float %4877, %4880
  %4883 = fmul fast float %4878, %4880
  %4884 = icmp ne i32 %4800, 0
  %4885 = select i1 %4884, float 1.000000e+00, float 0.000000e+00
  %4886 = fmul fast float %4790, %4885
  %4887 = and i32 %4638, 1
  %4888 = icmp eq i32 %4887, 0
  br i1 %4888, label %4889, label %4893

; <label>:4889                                    ; preds = %4798
  %4890 = fsub fast float %4881, %4571
  %4891 = fsub fast float %4882, %4572
  %4892 = fsub fast float %4883, %4573
  br label %4893

; <label>:4893                                    ; preds = %4889, %4798
  %4894 = phi float [ %4890, %4889 ], [ %4881, %4798 ]
  %4895 = phi float [ %4891, %4889 ], [ %4882, %4798 ]
  %4896 = phi float [ %4892, %4889 ], [ %4883, %4798 ]
  %4897 = fmul float %4896, %4886
  %4898 = fmul float %4895, %4886
  %4899 = fmul float %4894, %4886
  %4900 = fadd fast float %4899, %4571
  %4901 = fadd fast float %4898, %4572
  %4902 = fadd fast float %4897, %4573
  %4903 = icmp ne i32 %4799, 0
  %4904 = select i1 %4903, float 1.000000e+00, float 0.000000e+00
  %4905 = fmul fast float %4790, %4904
  %4906 = fsub fast float %4844, %4578
  %4907 = fsub fast float %4845, %4579
  %4908 = fsub fast float %4846, %4580
  %4909 = fmul fast float %4906, %4905
  %4910 = fmul fast float %4907, %4905
  %4911 = fmul fast float %4908, %4905
  %4912 = fadd fast float %4909, %4578
  %4913 = fadd fast float %4910, %4579
  %4914 = fadd fast float %4911, %4580
  %4915 = fsub fast float %4817, %4577
  %4916 = fmul fast float %4915, %4905
  %4917 = fadd fast float %4916, %4577
  %4918 = fmul fast float %4905, %4564
  %4919 = fsub fast float %4564, %4918
  %4920 = fmul fast float %4905, %4563
  %4921 = fsub fast float %4563, %4920
  %4922 = bitcast float %4632 to i32
  %4923 = lshr i32 %4922, 16
  %4924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4923)  ; LegacyF16ToF32(value)
  %4925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4926 = extractvalue %dx.types.ResRet.i32 %4925, 0
  %4927 = and i32 %4926, 1
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %4929, label %4954

; <label>:4929                                    ; preds = %4893
  %4930 = fadd fast float %4817, 0xBFB99999A0000000
  %4931 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4932 = fmul fast float %4931, 0x3FF1C71C80000000
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fmul fast float %4934, %4844
  %4936 = fmul fast float %4934, %4845
  %4937 = fmul fast float %4934, %4846
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4941 = call float @dx.op.binary.f32(i32 35, float %4939, float %4940)  ; FMax(a,b)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4938, float %4941)  ; FMax(a,b)
  %4943 = fcmp fast ogt float %4942, 0.000000e+00
  %4944 = bitcast float %4942 to i32
  %4945 = sub nsw i32 2129859010, %4944
  %4946 = bitcast i32 %4945 to float
  %4947 = select i1 %4943, float %4946, float 0.000000e+00
  %4948 = fmul fast float %4938, %4924
  %4949 = fmul fast float %4939, %4924
  %4950 = fmul fast float %4940, %4924
  %4951 = fmul fast float %4948, %4947
  %4952 = fmul fast float %4949, %4947
  %4953 = fmul fast float %4950, %4947
  br label %4954

; <label>:4954                                    ; preds = %4929, %4893
  %4955 = phi float [ %4924, %4893 ], [ %4951, %4929 ]
  %4956 = phi float [ %4924, %4893 ], [ %4952, %4929 ]
  %4957 = phi float [ %4924, %4893 ], [ %4953, %4929 ]
  %4958 = fsub fast float %4955, %4565
  %4959 = fsub fast float %4956, %4566
  %4960 = fsub fast float %4957, %4567
  %4961 = fmul fast float %4958, %4905
  %4962 = fmul fast float %4959, %4905
  %4963 = fmul fast float %4960, %4905
  %4964 = fadd fast float %4961, %4565
  %4965 = fadd fast float %4962, %4566
  %4966 = fadd fast float %4963, %4567
  %4967 = fadd fast float %4790, %4576
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = fsub fast float %4837, %4575
  %4970 = fmul fast float %4969, %4886
  %4971 = fadd fast float %4970, %4575
  %4972 = fsub fast float %4823, %4574
  %4973 = fmul fast float %4972, %4886
  %4974 = fadd fast float %4973, %4574
  br i1 %4888, label %4983, label %4975

; <label>:4975                                    ; preds = %4954
  %4976 = and i32 %4638, 32768
  %4977 = icmp eq i32 %4976, 0
  br i1 %4977, label %4993, label %4978

; <label>:4978                                    ; preds = %4975
  %4979 = fmul fast float %4886, 1.270000e+02
  %4980 = fadd fast float %4979, %4560
  %4981 = fadd fast float %4979, %4561
  %4982 = fadd fast float %4979, %4562
  br label %4993

; <label>:4983                                    ; preds = %4954
  %4984 = fsub fast float 1.270000e+02, %4560
  %4985 = fsub fast float 1.270000e+02, %4561
  %4986 = fsub fast float 1.270000e+02, %4562
  %4987 = fmul fast float %4886, %4984
  %4988 = fmul fast float %4886, %4985
  %4989 = fmul fast float %4886, %4986
  %4990 = fadd fast float %4987, %4560
  %4991 = fadd fast float %4988, %4561
  %4992 = fadd fast float %4989, %4562
  br label %4993

; <label>:4993                                    ; preds = %4983, %4978, %4975
  %4994 = phi float [ %4980, %4978 ], [ %4560, %4975 ], [ %4990, %4983 ]
  %4995 = phi float [ %4981, %4978 ], [ %4561, %4975 ], [ %4991, %4983 ]
  %4996 = phi float [ %4982, %4978 ], [ %4562, %4975 ], [ %4992, %4983 ]
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4845, float %4846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5001 = fmul fast float %5000, %4997
  %5002 = fadd fast float %5001, %4999
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = bitcast float %4626 to i32
  %5005 = and i32 %5004, 65535
  %5006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5005)  ; LegacyF16ToF32(value)
  %5007 = lshr i32 %5004, 16
  %5008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5007)  ; LegacyF16ToF32(value)
  %5009 = fcmp fast oge float %5006, 0.000000e+00
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = select i1 %5009, float %5006, float %5011
  %5013 = fadd fast float %5012, %5008
  %5014 = fsub fast float %5003, %4559
  %5015 = fmul fast float %5014, %4790
  %5016 = fadd fast float %5015, %4559
  %5017 = fmul fast float %5013, %4790
  %5018 = call float @dx.op.binary.f32(i32 35, float %4558, float %5017)  ; FMax(a,b)
  %5019 = and i32 %4638, 16
  %5020 = icmp eq i32 %5019, 0
  br i1 %5020, label %5042, label %5021

; <label>:5021                                    ; preds = %4993
  %5022 = add i32 %4629, 0
  %5023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5022, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5023, %dx.types.Handle %4803, float %4731, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float %4736, float %4738, float undef, float %4740, float %4742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5025 = extractvalue %dx.types.ResRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.ResRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.ResRet.f32 %5024, 2
  %5028 = and i32 %4922, 65535
  %5029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5028)  ; LegacyF16ToF32(value)
  %5030 = fmul fast float %5025, %4623
  %5031 = fmul fast float %5026, %4624
  %5032 = fmul fast float %5027, %4625
  %5033 = and i32 %4638, 16384
  %5034 = icmp ne i32 %5033, 0
  %5035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.f32 %5035, 0
  %5037 = select i1 %5034, float %5036, float 1.000000e+00
  %5038 = fmul fast float %5037, %5029
  %5039 = fmul fast float %5030, %5038
  %5040 = fmul fast float %5031, %5038
  %5041 = fmul fast float %5032, %5038
  br label %5042

; <label>:5042                                    ; preds = %5021, %4993
  %5043 = phi float [ %5039, %5021 ], [ 0.000000e+00, %4993 ]
  %5044 = phi float [ %5040, %5021 ], [ 0.000000e+00, %4993 ]
  %5045 = phi float [ %5041, %5021 ], [ 0.000000e+00, %4993 ]
  %5046 = fsub fast float %5043, %4568
  %5047 = fsub fast float %5044, %4569
  %5048 = fsub fast float %5045, %4570
  %5049 = fmul fast float %5046, %4790
  %5050 = fmul fast float %5047, %4790
  %5051 = fmul fast float %5048, %4790
  %5052 = fadd fast float %5049, %4568
  %5053 = fadd fast float %5050, %4569
  %5054 = fadd fast float %5051, %4570
  br label %4687

; <label>:5055                                    ; preds = %4687
  br label %5056

; <label>:5056                                    ; preds = %5055, %4501
  %5057 = phi float [ 0.000000e+00, %4501 ], [ %4688, %5055 ]
  %5058 = phi float [ %4470, %4501 ], [ %4689, %5055 ]
  %5059 = phi float [ %4451, %4501 ], [ %4690, %5055 ]
  %5060 = phi float [ %4441, %4501 ], [ %4691, %5055 ]
  %5061 = phi float [ %4442, %4501 ], [ %4692, %5055 ]
  %5062 = phi float [ %4443, %4501 ], [ %4693, %5055 ]
  %5063 = phi float [ 0.000000e+00, %4501 ], [ %4694, %5055 ]
  %5064 = phi float [ 0.000000e+00, %4501 ], [ %4695, %5055 ]
  %5065 = phi float [ %4438, %4501 ], [ %4696, %5055 ]
  %5066 = phi float [ %4439, %4501 ], [ %4697, %5055 ]
  %5067 = phi float [ %4440, %4501 ], [ %4698, %5055 ]
  %5068 = phi float [ %4435, %4501 ], [ %4699, %5055 ]
  %5069 = phi float [ %4436, %4501 ], [ %4700, %5055 ]
  %5070 = phi float [ %4437, %4501 ], [ %4701, %5055 ]
  %5071 = phi float [ %4496, %4501 ], [ %4702, %5055 ]
  %5072 = phi float [ %4497, %4501 ], [ %4703, %5055 ]
  %5073 = phi float [ %4498, %4501 ], [ %4704, %5055 ]
  %5074 = phi float [ %4449, %4501 ], [ %4705, %5055 ]
  %5075 = phi float [ %4448, %4501 ], [ %4706, %5055 ]
  %5076 = phi float [ 0.000000e+00, %4501 ], [ %4707, %5055 ]
  %5077 = phi float [ %4447, %4501 ], [ %4708, %5055 ]
  %5078 = phi float [ %4444, %4501 ], [ %4709, %5055 ]
  %5079 = phi float [ %4445, %4501 ], [ %4710, %5055 ]
  %5080 = phi float [ %4446, %4501 ], [ %4711, %5055 ]
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = call float @dx.op.unary.f32(i32 25, float %5081)  ; Rsqrt(value)
  %5083 = fmul fast float %5082, %5071
  %5084 = fmul fast float %5082, %5072
  %5085 = fmul fast float %5082, %5073
  %5086 = fadd fast float %5076, %1276
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float %5083, float %5084, float %5085)  ; Dot3(ax,ay,az,bx,by,bz)
  %5089 = call float @dx.op.unary.f32(i32 25, float %5088)  ; Rsqrt(value)
  %5090 = fmul fast float %5089, %5083
  %5091 = fmul fast float %5089, %5084
  %5092 = fmul fast float %5089, %5085
  br label %5093

; <label>:5093                                    ; preds = %5056, %4432
  %5094 = phi float [ %5090, %5056 ], [ %4496, %4432 ]
  %5095 = phi float [ %5091, %5056 ], [ %4497, %4432 ]
  %5096 = phi float [ %5092, %5056 ], [ %4498, %4432 ]
  %5097 = phi float [ %5078, %5056 ], [ %4444, %4432 ]
  %5098 = phi float [ %5079, %5056 ], [ %4445, %4432 ]
  %5099 = phi float [ %5080, %5056 ], [ %4446, %4432 ]
  %5100 = phi float [ %5068, %5056 ], [ %4435, %4432 ]
  %5101 = phi float [ %5069, %5056 ], [ %4436, %4432 ]
  %5102 = phi float [ %5070, %5056 ], [ %4437, %4432 ]
  %5103 = phi float [ %5060, %5056 ], [ %4441, %4432 ]
  %5104 = phi float [ %5061, %5056 ], [ %4442, %4432 ]
  %5105 = phi float [ %5062, %5056 ], [ %4443, %4432 ]
  %5106 = phi float [ %5065, %5056 ], [ %4438, %4432 ]
  %5107 = phi float [ %5066, %5056 ], [ %4439, %4432 ]
  %5108 = phi float [ %5067, %5056 ], [ %4440, %4432 ]
  %5109 = phi float [ %5077, %5056 ], [ %4447, %4432 ]
  %5110 = phi float [ %5087, %5056 ], [ %1276, %4432 ]
  %5111 = phi float [ %5075, %5056 ], [ %4448, %4432 ]
  %5112 = phi float [ %5074, %5056 ], [ %4449, %4432 ]
  %5113 = phi float [ %5064, %5056 ], [ 0.000000e+00, %4432 ]
  %5114 = phi float [ %5063, %5056 ], [ 0.000000e+00, %4432 ]
  %5115 = phi float [ %5057, %5056 ], [ 0.000000e+00, %4432 ]
  %5116 = phi float [ %5058, %5056 ], [ %4470, %4432 ]
  %5117 = phi float [ %5059, %5056 ], [ %4451, %4432 ]
  %5118 = add i32 %54, 392
  %5119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %5120 = extractvalue %dx.types.ResRet.i32 %5119, 0
  %5121 = extractvalue %dx.types.ResRet.i32 %5119, 1
  %5122 = extractvalue %dx.types.ResRet.i32 %5119, 2
  %5123 = extractvalue %dx.types.ResRet.i32 %5119, 3
  %5124 = bitcast i32 %5120 to float
  %5125 = bitcast i32 %5121 to float
  %5126 = bitcast i32 %5122 to float
  %5127 = bitcast i32 %5123 to float
  %5128 = fsub fast float %5097, %5124
  %5129 = fsub fast float %5098, %5125
  %5130 = fsub fast float %5099, %5126
  %5131 = fmul fast float %5128, %189
  %5132 = fmul fast float %5129, %189
  %5133 = fmul fast float %5130, %189
  %5134 = fadd fast float %5131, %5124
  %5135 = fadd fast float %5132, %5125
  %5136 = fadd fast float %5133, %5126
  %5137 = fsub fast float %5110, %5127
  %5138 = fmul fast float %5137, %189
  %5139 = fadd fast float %5138, %5127
  %5140 = fadd fast float %5109, 0xBFB99999A0000000
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, 0x3FF1C71C80000000
  %5143 = call float @dx.op.binary.f32(i32 36, float %5109, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5144 = fsub fast float 1.000000e+00, %5142
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5134, %5145
  %5147 = fmul fast float %5135, %5145
  %5148 = fmul fast float %5136, %5145
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = fmul fast float %5134, %5142
  %5153 = fmul fast float %5135, %5142
  %5154 = fmul fast float %5136, %5142
  %5155 = fadd fast float %5152, %5143
  %5156 = fadd fast float %5153, %5143
  %5157 = fadd fast float %5154, %5143
  %5158 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5163 = extractvalue %dx.types.ResRet.i32 %5162, 0
  %5164 = and i32 %5163, 1
  %5165 = icmp eq i32 %5164, 0
  br i1 %5165, label %5180, label %5166

; <label>:5166                                    ; preds = %5093
  %5167 = call float @dx.op.binary.f32(i32 35, float %5150, float %5151)  ; FMax(a,b)
  %5168 = call float @dx.op.binary.f32(i32 35, float %5149, float %5167)  ; FMax(a,b)
  %5169 = fcmp fast ogt float %5168, 0.000000e+00
  %5170 = bitcast float %5168 to i32
  %5171 = sub nsw i32 2129859010, %5170
  %5172 = bitcast i32 %5171 to float
  %5173 = select i1 %5169, float %5172, float 0.000000e+00
  %5174 = fmul fast float %5149, %5106
  %5175 = fmul fast float %5150, %5107
  %5176 = fmul fast float %5151, %5108
  %5177 = fmul fast float %5174, %5173
  %5178 = fmul fast float %5175, %5173
  %5179 = fmul fast float %5176, %5173
  br label %5180

; <label>:5180                                    ; preds = %5166, %5093
  %5181 = phi float [ %5177, %5166 ], [ %5106, %5093 ]
  %5182 = phi float [ %5178, %5166 ], [ %5107, %5093 ]
  %5183 = phi float [ %5179, %5166 ], [ %5108, %5093 ]
  %5184 = call float @dx.op.binary.f32(i32 36, float %5103, float 1.270000e+02)  ; FMin(a,b)
  %5185 = call float @dx.op.binary.f32(i32 36, float %5104, float 1.270000e+02)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5105, float 1.270000e+02)  ; FMin(a,b)
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 3
  %5189 = and i32 %5188, 8
  %5190 = icmp ne i32 %5189, 0
  %5191 = call float @dx.op.binary.f32(i32 35, float %5149, float %5134)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5150, float %5134)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5151, float %5134)  ; FMax(a,b)
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = select i1 %249, float %5134, float %5149
  %5196 = select i1 %249, float %5194, float %5150
  %5197 = select i1 %249, float 1.000000e+00, float %5151
  %5198 = select i1 %5190, float %5191, float %5195
  %5199 = select i1 %5190, float %5192, float %5196
  %5200 = select i1 %5190, float %5193, float %5197
  %5201 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = select i1 %249, float %5201, float %5181
  %5203 = select i1 %249, float %5201, float %5182
  %5204 = select i1 %249, float %5201, float %5183
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5208 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5209 = fadd fast float %5206, %155
  %5210 = fadd fast float %5207, %156
  %5211 = fadd fast float %5208, %157
  %5212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.CBufRet.f32 %5212, 1
  %5215 = fsub fast float %5209, %5213
  %5216 = fsub fast float %5210, %5214
  %5217 = fmul fast float %5215, %5215
  %5218 = fmul fast float %5216, %5216
  %5219 = fadd fast float %5217, %5218
  %5220 = call float @dx.op.unary.f32(i32 24, float %5219)  ; Sqrt(value)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5212, 2
  %5222 = fcmp fast olt float %5220, %5221
  br i1 %5222, label %5223, label %5290

; <label>:5223                                    ; preds = %5180
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5234 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5235 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5236 = fadd fast float %5233, %5209
  %5237 = fadd fast float %5234, %5210
  %5238 = fadd fast float %5235, %5211
  %5239 = fmul fast float %5236, %5225
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5227, float %5239)  ; FMad(a,b,c)
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5229, float %5240)  ; FMad(a,b,c)
  %5242 = fmul fast float %5236, %5230
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5232, float %5243)  ; FMad(a,b,c)
  %5245 = fsub fast float %5241, %5233
  %5246 = fsub fast float %5244, %5234
  %5247 = fsub fast float %5245, %5213
  %5248 = fadd fast float %5247, %5221
  %5249 = fsub fast float %5246, %5214
  %5250 = fadd fast float %5249, %5221
  %5251 = extractvalue %dx.types.CBufRet.f32 %5212, 3
  %5252 = fmul fast float %5248, %5251
  %5253 = fmul fast float %5250, %5251
  %5254 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5255 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5256 = fsub fast float 1.000000e+00, %5254
  %5257 = fsub fast float 1.000000e+00, %5255
  %5258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5256, float %5257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = fcmp fast ugt float %5259, 0.000000e+00
  br i1 %5260, label %5261, label %5564

; <label>:5261                                    ; preds = %5223
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5264 = fmul fast float %5263, %5259
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5266 = fadd fast float %5265, %5264
  %5267 = extractvalue %dx.types.CBufRet.f32 %5228, 2
  %5268 = fadd fast float %5266, %5235
  %5269 = fmul fast float %5241, %5229
  %5270 = call float @dx.op.tertiary.f32(i32 46, float %5244, float %5232, float %5269)  ; FMad(a,b,c)
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5267, float %5270)  ; FMad(a,b,c)
  %5272 = fsub fast float %5271, %5235
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5275 = fsub fast float %5272, %5274
  %5276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5256, float %5257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.ResRet.f32 %5276, 2
  %5280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5256, float %5257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.ResRet.f32 %5280, 2
  %5284 = fadd fast float %5281, %5277
  %5285 = fmul fast float %5284, 0x3F847AE140000000
  %5286 = fadd fast float %5282, %5278
  %5287 = fmul fast float %5286, 0x3F847AE140000000
  %5288 = fadd fast float %5283, %5279
  %5289 = fmul fast float %5288, 0x3F847AE140000000
  br label %5564

; <label>:5290                                    ; preds = %5180
  %5291 = and i32 %225, 1
  %5292 = icmp eq i32 %5291, 0
  br i1 %5292, label %5564, label %5293

; <label>:5293                                    ; preds = %5290
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5302 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5304 = extractvalue %dx.types.CBufRet.f32 %5296, 3
  %5305 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5306 = fadd fast float %5303, %5209
  %5307 = fadd fast float %5304, %5210
  %5308 = fadd fast float %5305, %5211
  %5309 = fmul fast float %5306, %5295
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5297, float %5309)  ; FMad(a,b,c)
  %5311 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5299, float %5310)  ; FMad(a,b,c)
  %5312 = fmul fast float %5306, %5300
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5301, float %5312)  ; FMad(a,b,c)
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5302, float %5313)  ; FMad(a,b,c)
  %5315 = fsub fast float %5311, %5303
  %5316 = fsub fast float %5314, %5304
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.i32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.i32 %5324, 1
  %5327 = udiv i32 %5326, %5325
  %5328 = fsub fast float %5315, %5318
  %5329 = fsub fast float %5316, %5319
  %5330 = call float @dx.op.binary.f32(i32 35, float %5328, float 0.000000e+00)  ; FMax(a,b)
  %5331 = call float @dx.op.binary.f32(i32 35, float %5329, float 0.000000e+00)  ; FMax(a,b)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5330, float %5320)  ; FMin(a,b)
  %5333 = call float @dx.op.binary.f32(i32 36, float %5331, float %5321)  ; FMin(a,b)
  %5334 = add i32 %5325, -1
  %5335 = add i32 %5327, -1
  %5336 = fmul fast float %5332, %5323
  %5337 = fmul fast float %5333, %5323
  %5338 = fptoui float %5336 to i32
  %5339 = fptoui float %5337 to i32
  %5340 = call i32 @dx.op.binary.i32(i32 40, i32 %5338, i32 %5334)  ; UMin(a,b)
  %5341 = call i32 @dx.op.binary.i32(i32 40, i32 %5339, i32 %5335)  ; UMin(a,b)
  %5342 = mul i32 %5341, %5325
  %5343 = add i32 %5342, %5340
  %5344 = shl i32 %5343, 2
  %5345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5344, i32 undef)  ; BufferLoad(srv,index,wot)
  %5346 = extractvalue %dx.types.ResRet.i32 %5345, 0
  %5347 = icmp eq i32 %5346, -1
  br i1 %5347, label %5564, label %5348

; <label>:5348                                    ; preds = %5293
  %5349 = mul i32 %5346, 148
  %5350 = add i32 %5349, 4
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5349, 8
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = add i32 %5349, 36
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = add i32 %5349, 60
  %5360 = add i32 %5349, 92
  %5361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5360, i32 undef)  ; BufferLoad(srv,index,wot)
  %5362 = extractvalue %dx.types.ResRet.i32 %5361, 0
  %5363 = add i32 %5349, 116
  %5364 = fsub fast float %5315, %5352
  %5365 = fsub fast float %5316, %5355
  %5366 = fmul fast float %5323, %5364
  %5367 = fmul fast float %5323, %5365
  %5368 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5373 = call float @dx.op.unary.f32(i32 83, float %5368)  ; DerivCoarseX(value)
  %5374 = call float @dx.op.unary.f32(i32 83, float %5370)  ; DerivCoarseX(value)
  %5375 = call float @dx.op.unary.f32(i32 84, float %5368)  ; DerivCoarseY(value)
  %5376 = call float @dx.op.unary.f32(i32 84, float %5370)  ; DerivCoarseY(value)
  %5377 = fmul fast float %5373, %5372
  %5378 = fmul fast float %5374, %5372
  %5379 = fmul fast float %5375, %5372
  %5380 = fmul fast float %5376, %5372
  %5381 = call float @dx.op.dot2.f32(i32 54, float %5379, float %5380, float %5379, float %5380)  ; Dot2(ax,ay,bx,by)
  %5382 = call float @dx.op.dot2.f32(i32 54, float %5377, float %5378, float %5377, float %5378)  ; Dot2(ax,ay,bx,by)
  %5383 = call float @dx.op.binary.f32(i32 35, float %5382, float %5381)  ; FMax(a,b)
  %5384 = call float @dx.op.unary.f32(i32 23, float %5383)  ; Log(value)
  %5385 = fmul fast float %5384, 5.000000e-01
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5388 = fadd fast float %5387, %5385
  %5389 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5392 = fadd fast float %5391, %5389
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5395 = fadd fast float %5392, %5394
  %5396 = add i32 %5362, 0
  %5397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5396, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5398 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5397, i32 0)  ; GetDimensions(handle,mipLevel)
  %5399 = extractvalue %dx.types.Dimensions %5398, 0
  %5400 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5399)  ; FirstbitLo(value)
  %5401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.i32 %5401, 1
  %5403 = sub nsw i32 %5402, %5400
  %5404 = sitofp i32 %5403 to float
  %5405 = fsub fast float %5395, %5404
  %5406 = call float @dx.op.binary.f32(i32 35, float %5405, float 0.000000e+00)  ; FMax(a,b)
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5397, %dx.types.Handle %46, float %5368, float %5370, float %5358, float undef, i32 0, i32 0, i32 undef, float %5406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = fcmp ule float %5408, 0x3FE0101020000000
  %5410 = extractvalue %dx.types.CBufRet.i32 %5401, 0
  %5411 = and i32 %5410, 128
  %5412 = icmp ne i32 %5411, 0
  %5413 = and i1 %5409, %5412
  br i1 %5413, label %5564, label %5414

; <label>:5414                                    ; preds = %5348
  %5415 = add i32 %5349, 20
  %5416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 0
  %5418 = add i32 %5349, 24
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = add i32 %5349, 40
  %5422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = add i32 %5349, 96
  %5425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.i32 %5425, 0
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 2
  %5429 = fmul fast float %5428, %5368
  %5430 = fmul fast float %5428, %5370
  %5431 = extractvalue %dx.types.CBufRet.f32 %5427, 3
  %5432 = fadd fast float %5429, %5431
  %5433 = fadd fast float %5430, %5431
  %5434 = add i32 %5426, 0
  %5435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5434, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5436 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5435, i32 0)  ; GetDimensions(handle,mipLevel)
  %5437 = extractvalue %dx.types.Dimensions %5436, 0
  %5438 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5437)  ; FirstbitLo(value)
  %5439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.i32 %5439, 1
  %5441 = sub nsw i32 %5440, %5438
  %5442 = sitofp i32 %5441 to float
  %5443 = fsub fast float %5392, %5442
  %5444 = call float @dx.op.binary.f32(i32 35, float %5443, float 0.000000e+00)  ; FMax(a,b)
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5435, %dx.types.Handle %46, float %5432, float %5433, float %5423, float undef, i32 0, i32 0, i32 undef, float %5444)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = fmul fast float %5446, %5417
  %5448 = fadd fast float %5447, %5420
  %5449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.CBufRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.CBufRet.f32 %5449, 2
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 3
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 3
  %5457 = extractvalue %dx.types.CBufRet.f32 %5449, 3
  %5458 = fadd fast float %5454, %5315
  %5459 = fadd fast float %5456, %5316
  %5460 = fadd fast float %5448, %5457
  %5461 = fmul fast float %5458, %5450
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %5459, float %5451, float %5461)  ; FMad(a,b,c)
  %5463 = call float @dx.op.tertiary.f32(i32 46, float %5460, float %5452, float %5462)  ; FMad(a,b,c)
  %5464 = fsub fast float %5463, %5457
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5467 = fsub fast float %5464, %5466
  %5468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.i32 %5468, 0
  %5470 = call i32 @dx.op.binary.i32(i32 40, i32 %5346, i32 %5469)  ; UMin(a,b)
  %5471 = mul i32 %5470, 36
  %5472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.i32 %5472, 0
  %5474 = add i32 %5471, 4
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = fmul fast float %5476, %5368
  %5478 = fmul fast float %5476, %5370
  %5479 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5480 = fadd fast float %5477, %5479
  %5481 = fadd fast float %5478, %5479
  %5482 = icmp eq i32 %5473, 0
  br i1 %5482, label %5551, label %5483

; <label>:5483                                    ; preds = %5414
  br label %5484

; <label>:5484                                    ; preds = %5541, %5483
  %5485 = phi float [ %5542, %5541 ], [ 0.000000e+00, %5483 ]
  %5486 = phi float [ %5543, %5541 ], [ 0.000000e+00, %5483 ]
  %5487 = phi float [ %5544, %5541 ], [ 0.000000e+00, %5483 ]
  %5488 = phi float [ %5545, %5541 ], [ 0.000000e+00, %5483 ]
  %5489 = phi float [ %5546, %5541 ], [ 0.000000e+00, %5483 ]
  %5490 = phi float [ %5547, %5541 ], [ 0.000000e+00, %5483 ]
  %5491 = phi i32 [ %5548, %5541 ], [ 0, %5483 ]
  %5492 = shl i32 %5491, 2
  %5493 = add i32 %5359, %5492
  %5494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = add i32 %5363, %5492
  %5497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5496, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.i32 %5497, 0
  %5499 = add i32 %5498, 0
  %5500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5501 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5500, i32 0)  ; GetDimensions(handle,mipLevel)
  %5502 = extractvalue %dx.types.Dimensions %5501, 0
  %5503 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5502)  ; FirstbitLo(value)
  %5504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.i32 %5504, 1
  %5506 = sub nsw i32 %5505, %5503
  %5507 = sitofp i32 %5506 to float
  %5508 = fsub fast float %5392, %5507
  %5509 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5510 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5500, %dx.types.Handle %46, float %5480, float %5481, float %5495, float undef, i32 0, i32 0, i32 undef, float %5509)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = fcmp fast ogt float %5511, 0.000000e+00
  br i1 %5512, label %5513, label %5541

; <label>:5513                                    ; preds = %5484
  %5514 = add i32 %5474, %5492
  %5515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5514, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.i32 %5515, 0
  %5517 = and i32 %5516, 32767
  %5518 = mul nuw nsw i32 %5517, 928
  %5519 = add nuw nsw i32 %5518, 48
  %5520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.ResRet.f32 %5520, 1
  %5523 = extractvalue %dx.types.ResRet.f32 %5520, 2
  %5524 = add nuw nsw i32 %5518, 60
  %5525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = fmul fast float %5521, %5511
  %5530 = fmul fast float %5522, %5511
  %5531 = fmul fast float %5523, %5511
  %5532 = fadd fast float %5529, %5485
  %5533 = fadd fast float %5530, %5486
  %5534 = fadd fast float %5531, %5487
  %5535 = fmul fast float %5526, %5511
  %5536 = fmul fast float %5527, %5511
  %5537 = fmul fast float %5528, %5511
  %5538 = fadd fast float %5535, %5488
  %5539 = fadd fast float %5536, %5489
  %5540 = fadd fast float %5537, %5490
  br label %5541

; <label>:5541                                    ; preds = %5513, %5484
  %5542 = phi float [ %5532, %5513 ], [ %5485, %5484 ]
  %5543 = phi float [ %5533, %5513 ], [ %5486, %5484 ]
  %5544 = phi float [ %5534, %5513 ], [ %5487, %5484 ]
  %5545 = phi float [ %5538, %5513 ], [ %5488, %5484 ]
  %5546 = phi float [ %5539, %5513 ], [ %5489, %5484 ]
  %5547 = phi float [ %5540, %5513 ], [ %5490, %5484 ]
  %5548 = add nuw i32 %5491, 1
  %5549 = icmp eq i32 %5548, %5473
  br i1 %5549, label %5550, label %5484

; <label>:5550                                    ; preds = %5541
  br label %5551

; <label>:5551                                    ; preds = %5550, %5414
  %5552 = phi float [ 0.000000e+00, %5414 ], [ %5542, %5550 ]
  %5553 = phi float [ 0.000000e+00, %5414 ], [ %5543, %5550 ]
  %5554 = phi float [ 0.000000e+00, %5414 ], [ %5544, %5550 ]
  %5555 = phi float [ 0.000000e+00, %5414 ], [ %5545, %5550 ]
  %5556 = phi float [ 0.000000e+00, %5414 ], [ %5546, %5550 ]
  %5557 = phi float [ 0.000000e+00, %5414 ], [ %5547, %5550 ]
  %5558 = fadd fast float %5555, %5552
  %5559 = fmul fast float %5558, 0x3F847AE140000000
  %5560 = fadd fast float %5556, %5553
  %5561 = fmul fast float %5560, 0x3F847AE140000000
  %5562 = fadd fast float %5557, %5554
  %5563 = fmul fast float %5562, 0x3F847AE140000000
  br label %5564

; <label>:5564                                    ; preds = %5551, %5348, %5293, %5290, %5261, %5223
  %5565 = phi float [ %5275, %5261 ], [ -1.310720e+05, %5223 ], [ %5467, %5551 ], [ -1.310720e+05, %5293 ], [ -1.310720e+05, %5348 ], [ -1.310720e+05, %5290 ]
  %5566 = phi float [ %5285, %5261 ], [ 0.000000e+00, %5223 ], [ %5559, %5551 ], [ 0.000000e+00, %5293 ], [ 0.000000e+00, %5348 ], [ 0.000000e+00, %5290 ]
  %5567 = phi float [ %5287, %5261 ], [ 0.000000e+00, %5223 ], [ %5561, %5551 ], [ 0.000000e+00, %5293 ], [ 0.000000e+00, %5348 ], [ 0.000000e+00, %5290 ]
  %5568 = phi float [ %5289, %5261 ], [ 0.000000e+00, %5223 ], [ %5563, %5551 ], [ 0.000000e+00, %5293 ], [ 0.000000e+00, %5348 ], [ 0.000000e+00, %5290 ]
  %5569 = phi i1 [ true, %5261 ], [ false, %5223 ], [ true, %5551 ], [ false, %5293 ], [ false, %5348 ], [ false, %5290 ]
  %5570 = and i32 %225, 3
  %5571 = icmp eq i32 %5570, 1
  %5572 = select i1 %5571, float 1.000000e+00, float 0.000000e+00
  %5573 = fsub fast float %5565, %157
  %5574 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5575 = select i1 %5569, float %5574, float 1.000000e+00
  %5576 = fmul fast float %5575, %5572
  %5577 = icmp eq i32 %5570, 3
  %5578 = select i1 %5577, float 1.000000e+00, float %5576
  %5579 = call float @dx.op.binary.f32(i32 35, float %5115, float %5578)  ; FMax(a,b)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = fcmp fast une float %5580, 0.000000e+00
  %5582 = fsub fast float -0.000000e+00, %175
  %5583 = fsub fast float -0.000000e+00, %176
  %5584 = fsub fast float -0.000000e+00, %177
  br i1 %5581, label %5585, label %5747

; <label>:5585                                    ; preds = %5564
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = fmul fast float %5580, 2.500000e+00
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fmul fast float %5580, 0x4013FFFFE0000000
  %5590 = fadd fast float %5589, 0xBFFFFFFFE0000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = fmul fast float %5580, 0x4004000020000000
  %5593 = fadd fast float %5592, 0xBFF8000040000000
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5596 = fmul fast float %5140, 1.000000e+01
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5597, 2.000000e+00
  %5599 = fsub fast float 3.000000e+00, %5598
  %5600 = fmul fast float %5597, %5597
  %5601 = fmul fast float %5600, %5599
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = fsub fast float 0x3FE3333340000000, %5161
  %5604 = fmul fast float %5603, 0x400AAAAAA0000000
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5602, %5605
  %5607 = fmul fast float %5198, 0x3FEA2B8620000000
  %5608 = fmul fast float %5199, 0x3FEA2B8620000000
  %5609 = fmul fast float %5200, 0x3FEA2B8620000000
  %5610 = fadd fast float %5607, 0x3FC81DFBA0000000
  %5611 = fmul fast float %5610, %5198
  %5612 = fadd fast float %5611, 0x3F910E6020000000
  %5613 = fadd fast float %5608, 0x3FC81DFBA0000000
  %5614 = fmul fast float %5613, %5199
  %5615 = fadd fast float %5614, 0x3F910E6020000000
  %5616 = fadd fast float %5609, 0x3FC81DFBA0000000
  %5617 = fmul fast float %5616, %5200
  %5618 = fadd fast float %5617, 0x3F910E6020000000
  %5619 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5621 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5622 = fsub fast float %5619, %5198
  %5623 = fsub fast float %5620, %5199
  %5624 = fsub fast float %5621, %5200
  %5625 = fmul fast float %5622, %5595
  %5626 = fmul fast float %5625, %5606
  %5627 = fmul fast float %5623, %5595
  %5628 = fmul fast float %5627, %5606
  %5629 = fmul fast float %5624, %5595
  %5630 = fmul fast float %5629, %5606
  %5631 = fadd fast float %5626, %5198
  %5632 = fadd fast float %5628, %5199
  %5633 = fadd fast float %5630, %5200
  %5634 = fmul fast float %5112, %5112
  %5635 = fmul fast float %5634, %5634
  %5636 = fadd fast float %5591, 1.000000e+00
  %5637 = fsub fast float %5636, %5606
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fsub fast float 1.000000e+00, %5635
  %5642 = call float @dx.op.binary.f32(i32 36, float %5638, float %5641)  ; FMin(a,b)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5642, float %5643)  ; FMax(a,b)
  %5645 = fadd fast float %5640, 0xBFE4CCCCC0000000
  %5646 = fmul fast float %5645, 0x4006DB6DA0000000
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %5647, 2.000000e+00
  %5649 = fsub fast float 3.000000e+00, %5648
  %5650 = bitcast float %5158 to i32
  %5651 = ashr i32 %5650, 1
  %5652 = add nsw i32 %5651, 532487669
  %5653 = bitcast i32 %5652 to float
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = bitcast float %5654 to i32
  %5656 = sub nsw i32 2129859010, %5655
  %5657 = bitcast i32 %5656 to float
  %5658 = fmul fast float %5657, 2.000000e+00
  %5659 = bitcast float %5159 to i32
  %5660 = ashr i32 %5659, 1
  %5661 = add nsw i32 %5660, 532487669
  %5662 = bitcast i32 %5661 to float
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = bitcast float %5663 to i32
  %5665 = sub nsw i32 2129859010, %5664
  %5666 = bitcast i32 %5665 to float
  %5667 = fmul fast float %5666, 2.000000e+00
  %5668 = bitcast float %5160 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = add nsw i32 %5669, 532487669
  %5671 = bitcast i32 %5670 to float
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = fmul fast float %5675, 2.000000e+00
  %5677 = fsub fast float 0x4002A9FBE0000000, %5658
  %5678 = fadd fast float %5658, 0x3FD54FDF00000000
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = fmul fast float %5681, %5677
  %5683 = fmul fast float %5682, %5682
  %5684 = fsub fast float 0x4002A9FBE0000000, %5667
  %5685 = fadd fast float %5667, 0x3FD54FDF00000000
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fmul fast float %5688, %5684
  %5690 = fmul fast float %5689, %5689
  %5691 = fsub fast float 0x4002A9FBE0000000, %5676
  %5692 = fadd fast float %5676, 0x3FD54FDF00000000
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %5696, %5696
  %5698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5683)  ; FMax(a,b)
  %5699 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5690)  ; FMax(a,b)
  %5700 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5697)  ; FMax(a,b)
  %5701 = fsub fast float 1.000000e+00, %5586
  %5702 = fadd fast float %5701, %5602
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fsub fast float 1.000000e+00, %5578
  %5705 = fmul fast float %5644, %5704
  %5706 = fmul fast float %5647, %5647
  %5707 = fmul fast float %5706, %5705
  %5708 = fmul fast float %5707, %5649
  %5709 = fmul fast float %5704, 0xBFE99999A0000000
  %5710 = fmul fast float %5709, %5595
  %5711 = fmul fast float %5710, %5606
  %5712 = fadd fast float %5711, 1.000000e+00
  %5713 = fadd fast float %5161, -1.000000e+00
  %5714 = fmul fast float %5712, %5713
  %5715 = fadd fast float %5714, 1.000000e+00
  %5716 = fsub fast float %5698, %5158
  %5717 = fsub fast float %5699, %5159
  %5718 = fsub fast float %5700, %5160
  %5719 = fmul fast float %5708, %5716
  %5720 = fmul fast float %5708, %5717
  %5721 = fmul fast float %5708, %5718
  %5722 = fadd fast float %5719, %5158
  %5723 = fadd fast float %5720, %5159
  %5724 = fadd fast float %5721, %5160
  %5725 = fsub fast float %107, %5094
  %5726 = fsub fast float %108, %5095
  %5727 = fsub fast float %109, %5096
  %5728 = fmul fast float %5708, %5725
  %5729 = fmul fast float %5708, %5726
  %5730 = fmul fast float %5708, %5727
  %5731 = fadd fast float %5728, %5094
  %5732 = fadd fast float %5729, %5095
  %5733 = fadd fast float %5730, %5096
  %5734 = fmul fast float %5708, %5703
  %5735 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = fmul fast float %5734, %5736
  %5738 = fadd fast float %5737, %5735
  %5739 = fsub fast float 1.000000e+00, %5112
  %5740 = fmul fast float %5708, %5739
  %5741 = fadd fast float %5740, %5112
  %5742 = call float @dx.op.dot3.f32(i32 55, float %5731, float %5732, float %5733, float %5731, float %5732, float %5733)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.unary.f32(i32 25, float %5742)  ; Rsqrt(value)
  %5744 = fmul fast float %5731, %5743
  %5745 = fmul fast float %5732, %5743
  %5746 = fmul fast float %5733, %5743
  br label %5747

; <label>:5747                                    ; preds = %5585, %5564
  %5748 = phi float [ %5631, %5585 ], [ %5198, %5564 ]
  %5749 = phi float [ %5632, %5585 ], [ %5199, %5564 ]
  %5750 = phi float [ %5633, %5585 ], [ %5200, %5564 ]
  %5751 = phi float [ %5722, %5585 ], [ %5158, %5564 ]
  %5752 = phi float [ %5723, %5585 ], [ %5159, %5564 ]
  %5753 = phi float [ %5724, %5585 ], [ %5160, %5564 ]
  %5754 = phi float [ %5744, %5585 ], [ %5094, %5564 ]
  %5755 = phi float [ %5745, %5585 ], [ %5095, %5564 ]
  %5756 = phi float [ %5746, %5585 ], [ %5096, %5564 ]
  %5757 = phi float [ %5738, %5585 ], [ %5161, %5564 ]
  %5758 = phi float [ %5741, %5585 ], [ %5112, %5564 ]
  %5759 = fsub fast float -0.000000e+00, %157
  %5760 = select i1 %249, float 0.000000e+00, float %5753
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5755, float %5756, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5763 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fmul fast float %5763, 2.000000e+00
  %5765 = fmul fast float %5764, %5754
  %5766 = fmul fast float %5764, %5755
  %5767 = fmul fast float %5764, %5756
  %5768 = fsub fast float %175, %5765
  %5769 = fsub fast float %176, %5766
  %5770 = fsub fast float %177, %5767
  %5771 = call float @dx.op.binary.f32(i32 36, float %5758, float 1.000000e+00)  ; FMin(a,b)
  %5772 = fsub fast float 1.000000e+00, %5758
  %5773 = bitcast float %5772 to i32
  %5774 = sub nsw i32 2129859010, %5773
  %5775 = bitcast i32 %5774 to float
  %5776 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5777 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = fcmp fast oeq float %5777, 0.000000e+00
  %5779 = fcmp fast oeq float %5776, 0.000000e+00
  %5780 = or i1 %5779, %5778
  br i1 %5780, label %5810, label %5781

; <label>:5781                                    ; preds = %5747
  %5782 = fsub fast float -0.000000e+00, %74
  %5783 = fsub fast float -0.000000e+00, %72
  %5784 = call float @dx.op.unary.f32(i32 24, float %5777)  ; Sqrt(value)
  %5785 = fdiv fast float %5784, %5776
  %5786 = fcmp fast ogt float %5785, 0x3FFB6F8900000000
  %5787 = select i1 %5786, float 0x3FFB6F8900000000, float %5785
  %5788 = fmul fast float %5787, 0x3FE8A23460000000
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = call float @dx.op.binary.f32(i32 35, float %5787, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5791 = fmul fast float %5789, %5776
  %5792 = fmul fast float %5790, 0x3FF279A740000000
  %5793 = fadd fast float %5792, -1.000000e+00
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %73, float %5782, float %5783, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = call float @dx.op.unary.f32(i32 25, float %5794)  ; Rsqrt(value)
  %5796 = fmul fast float %5795, %5782
  %5797 = fmul fast float %5795, %5783
  %5798 = fmul fast float %5795, %73
  %5799 = fmul fast float %5793, %5793
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = fmul fast float %5790, 0x40005F8BE0000000
  %5802 = fsub fast float 0x400C5BF8A0000000, %5801
  %5803 = fdiv fast float %5791, %5802
  %5804 = fmul fast float %5803, 0x3FEE31C3C0000000
  %5805 = fmul fast float %5804, %5800
  %5806 = fmul fast float %5790, 0x3FDACB7480000000
  %5807 = fadd fast float %5806, 0xBFD7347680000000
  %5808 = fmul fast float %5807, %5803
  %5809 = fmul fast float %5808, %5800
  br label %5810

; <label>:5810                                    ; preds = %5781, %5747
  %5811 = phi float [ %5796, %5781 ], [ 0.000000e+00, %5747 ]
  %5812 = phi float [ %5797, %5781 ], [ 0.000000e+00, %5747 ]
  %5813 = phi float [ %5798, %5781 ], [ 0.000000e+00, %5747 ]
  %5814 = phi float [ %5805, %5781 ], [ 0.000000e+00, %5747 ]
  %5815 = phi float [ %5809, %5781 ], [ 0.000000e+00, %5747 ]
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = fmul fast float %5816, 0x3FDF454380000000
  %5818 = fmul fast float %5816, %5816
  %5819 = fmul fast float %5818, 0x3FEE471020000000
  %5820 = fadd fast float %5819, 0xBFD42F6020000000
  %5821 = fmul fast float %5776, 0x3FD20DD760000000
  %5822 = fmul fast float %5820, %5815
  %5823 = fadd fast float %5822, %5821
  %5824 = fmul fast float %5817, %5814
  %5825 = fadd fast float %5823, %5824
  %5826 = fsub fast float %5823, %5824
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = fmul fast float %5827, 0x3FDF454380000000
  %5829 = fmul fast float %5827, %5827
  %5830 = fmul fast float %5829, 0x3FEE471020000000
  %5831 = fadd fast float %5830, 0xBFD42F6020000000
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5814, float %5815, float 0x3FD20DD760000000, float %5828, float %5831)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5834 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fcmp fast oeq float %5834, 0.000000e+00
  %5836 = fcmp fast oeq float %5833, 0.000000e+00
  %5837 = or i1 %5836, %5835
  br i1 %5837, label %5867, label %5838

; <label>:5838                                    ; preds = %5810
  %5839 = fsub fast float -0.000000e+00, %70
  %5840 = fsub fast float -0.000000e+00, %68
  %5841 = call float @dx.op.unary.f32(i32 24, float %5834)  ; Sqrt(value)
  %5842 = fdiv fast float %5841, %5833
  %5843 = fcmp fast ogt float %5842, 0x3FFB6F8900000000
  %5844 = select i1 %5843, float 0x3FFB6F8900000000, float %5842
  %5845 = fmul fast float %5844, 0x3FE8A23460000000
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = call float @dx.op.binary.f32(i32 35, float %5844, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5848 = fmul fast float %5846, %5833
  %5849 = fmul fast float %5847, 0x3FF279A740000000
  %5850 = fadd fast float %5849, -1.000000e+00
  %5851 = call float @dx.op.dot3.f32(i32 55, float %5839, float %5840, float %69, float %5839, float %5840, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.unary.f32(i32 25, float %5851)  ; Rsqrt(value)
  %5853 = fmul fast float %5852, %5839
  %5854 = fmul fast float %5852, %5840
  %5855 = fmul fast float %5852, %69
  %5856 = fmul fast float %5850, %5850
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = fmul fast float %5847, 0x40005F8BE0000000
  %5859 = fsub fast float 0x400C5BF8A0000000, %5858
  %5860 = fdiv fast float %5848, %5859
  %5861 = fmul fast float %5860, 0x3FEE31C3C0000000
  %5862 = fmul fast float %5861, %5857
  %5863 = fmul fast float %5847, 0x3FDACB7480000000
  %5864 = fadd fast float %5863, 0xBFD7347680000000
  %5865 = fmul fast float %5864, %5860
  %5866 = fmul fast float %5865, %5857
  br label %5867

; <label>:5867                                    ; preds = %5838, %5810
  %5868 = phi float [ %5853, %5838 ], [ 0.000000e+00, %5810 ]
  %5869 = phi float [ %5854, %5838 ], [ 0.000000e+00, %5810 ]
  %5870 = phi float [ %5855, %5838 ], [ 0.000000e+00, %5810 ]
  %5871 = phi float [ %5862, %5838 ], [ 0.000000e+00, %5810 ]
  %5872 = phi float [ %5866, %5838 ], [ 0.000000e+00, %5810 ]
  %5873 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = fmul fast float %5873, 0x3FDF454380000000
  %5875 = fmul fast float %5873, %5873
  %5876 = fmul fast float %5875, 0x3FEE471020000000
  %5877 = fadd fast float %5876, 0xBFD42F6020000000
  %5878 = fmul fast float %5833, 0x3FD20DD760000000
  %5879 = fmul fast float %5877, %5872
  %5880 = fadd fast float %5879, %5878
  %5881 = fmul fast float %5874, %5871
  %5882 = fadd fast float %5880, %5881
  %5883 = fsub fast float %5880, %5881
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5868, float %5869, float %5870, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = fmul fast float %5884, 0x3FDF454380000000
  %5886 = fmul fast float %5884, %5884
  %5887 = fmul fast float %5886, 0x3FEE471020000000
  %5888 = fadd fast float %5887, 0xBFD42F6020000000
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5871, float %5872, float 0x3FD20DD760000000, float %5885, float %5888)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5891 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fcmp fast oeq float %5891, 0.000000e+00
  %5893 = fcmp fast oeq float %5890, 0.000000e+00
  %5894 = or i1 %5893, %5892
  br i1 %5894, label %5924, label %5895

; <label>:5895                                    ; preds = %5867
  %5896 = fsub fast float -0.000000e+00, %66
  %5897 = fsub fast float -0.000000e+00, %64
  %5898 = call float @dx.op.unary.f32(i32 24, float %5891)  ; Sqrt(value)
  %5899 = fdiv fast float %5898, %5890
  %5900 = fcmp fast ogt float %5899, 0x3FFB6F8900000000
  %5901 = select i1 %5900, float 0x3FFB6F8900000000, float %5899
  %5902 = fmul fast float %5901, 0x3FE8A23460000000
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5901, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5905 = fmul fast float %5903, %5890
  %5906 = fmul fast float %5904, 0x3FF279A740000000
  %5907 = fadd fast float %5906, -1.000000e+00
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %65, float %5896, float %5897, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = call float @dx.op.unary.f32(i32 25, float %5908)  ; Rsqrt(value)
  %5910 = fmul fast float %5909, %5896
  %5911 = fmul fast float %5909, %5897
  %5912 = fmul fast float %5909, %65
  %5913 = fmul fast float %5907, %5907
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = fmul fast float %5904, 0x40005F8BE0000000
  %5916 = fsub fast float 0x400C5BF8A0000000, %5915
  %5917 = fdiv fast float %5905, %5916
  %5918 = fmul fast float %5917, 0x3FEE31C3C0000000
  %5919 = fmul fast float %5918, %5914
  %5920 = fmul fast float %5904, 0x3FDACB7480000000
  %5921 = fadd fast float %5920, 0xBFD7347680000000
  %5922 = fmul fast float %5921, %5917
  %5923 = fmul fast float %5922, %5914
  br label %5924

; <label>:5924                                    ; preds = %5895, %5867
  %5925 = phi float [ %5910, %5895 ], [ 0.000000e+00, %5867 ]
  %5926 = phi float [ %5911, %5895 ], [ 0.000000e+00, %5867 ]
  %5927 = phi float [ %5912, %5895 ], [ 0.000000e+00, %5867 ]
  %5928 = phi float [ %5919, %5895 ], [ 0.000000e+00, %5867 ]
  %5929 = phi float [ %5923, %5895 ], [ 0.000000e+00, %5867 ]
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5926, float %5927, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fmul fast float %5930, 0x3FDF454380000000
  %5932 = fmul fast float %5930, %5930
  %5933 = fmul fast float %5932, 0x3FEE471020000000
  %5934 = fadd fast float %5933, 0xBFD42F6020000000
  %5935 = fmul fast float %5890, 0x3FD20DD760000000
  %5936 = fmul fast float %5934, %5929
  %5937 = fadd fast float %5936, %5935
  %5938 = fmul fast float %5931, %5928
  %5939 = fadd fast float %5937, %5938
  %5940 = fsub fast float %5937, %5938
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5925, float %5926, float %5927, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = fmul fast float %5941, 0x3FDF454380000000
  %5943 = fmul fast float %5941, %5941
  %5944 = fmul fast float %5943, 0x3FEE471020000000
  %5945 = fadd fast float %5944, 0xBFD42F6020000000
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5928, float %5929, float 0x3FD20DD760000000, float %5942, float %5945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = call float @dx.op.binary.f32(i32 35, float %5825, float 0.000000e+00)  ; FMax(a,b)
  %5948 = call float @dx.op.binary.f32(i32 35, float %5882, float 0.000000e+00)  ; FMax(a,b)
  %5949 = call float @dx.op.binary.f32(i32 35, float %5939, float 0.000000e+00)  ; FMax(a,b)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5826, float 0.000000e+00)  ; FMax(a,b)
  %5951 = call float @dx.op.binary.f32(i32 35, float %5883, float 0.000000e+00)  ; FMax(a,b)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5940, float 0.000000e+00)  ; FMax(a,b)
  %5953 = call float @dx.op.binary.f32(i32 35, float %5832, float 0.000000e+00)  ; FMax(a,b)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5946, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = call float @dx.op.binary.f32(i32 36, float %5748, float %5957)  ; FMin(a,b)
  %5959 = fsub fast float 1.000000e+00, %5771
  %5960 = fmul fast float %5958, %5959
  %5961 = fsub fast float 1.000000e+00, %5960
  %5962 = bitcast float %5961 to i32
  %5963 = sub nsw i32 2129859010, %5962
  %5964 = bitcast i32 %5963 to float
  %5965 = call float @dx.op.binary.f32(i32 36, float %5749, float %5957)  ; FMin(a,b)
  %5966 = fmul fast float %5965, %5959
  %5967 = fsub fast float 1.000000e+00, %5966
  %5968 = bitcast float %5967 to i32
  %5969 = sub nsw i32 2129859010, %5968
  %5970 = bitcast i32 %5969 to float
  %5971 = call float @dx.op.binary.f32(i32 36, float %5750, float %5957)  ; FMin(a,b)
  %5972 = fmul fast float %5971, %5959
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = bitcast float %5973 to i32
  %5975 = sub nsw i32 2129859010, %5974
  %5976 = bitcast i32 %5975 to float
  %5977 = fmul fast float %5947, %5771
  %5978 = fmul fast float %5977, %5964
  %5979 = fmul fast float %5948, %5771
  %5980 = fmul fast float %5979, %5970
  %5981 = fmul fast float %5949, %5771
  %5982 = fmul fast float %5981, %5976
  %5983 = call float @dx.op.binary.f32(i32 36, float %5751, float %5957)  ; FMin(a,b)
  %5984 = fmul fast float %5983, %5959
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = bitcast float %5985 to i32
  %5987 = sub nsw i32 2129859010, %5986
  %5988 = bitcast i32 %5987 to float
  %5989 = call float @dx.op.binary.f32(i32 36, float %5752, float %5957)  ; FMin(a,b)
  %5990 = fmul fast float %5989, %5959
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = bitcast float %5991 to i32
  %5993 = sub nsw i32 2129859010, %5992
  %5994 = bitcast i32 %5993 to float
  %5995 = call float @dx.op.binary.f32(i32 36, float %5760, float %5957)  ; FMin(a,b)
  %5996 = fmul fast float %5995, %5959
  %5997 = fsub fast float 1.000000e+00, %5996
  %5998 = bitcast float %5997 to i32
  %5999 = sub nsw i32 2129859010, %5998
  %6000 = bitcast i32 %5999 to float
  %6001 = fmul fast float %5953, %5771
  %6002 = fmul fast float %6001, %5988
  %6003 = fmul fast float %5954, %5771
  %6004 = fmul fast float %6003, %5994
  %6005 = fmul fast float %5955, %5771
  %6006 = fmul fast float %6005, %6000
  %6007 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5980, float %5982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = select i1 %249, float 0.000000e+00, float %5978
  %6009 = select i1 %249, float %6007, float %5980
  %6010 = select i1 %249, float 0.000000e+00, float %5982
  %6011 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = select i1 %249, float 0.000000e+00, float %5950
  %6013 = select i1 %249, float %6011, float %5951
  %6014 = select i1 %249, float 0.000000e+00, float %5952
  %6015 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6004, float %6006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = select i1 %249, float 0.000000e+00, float %6002
  %6017 = select i1 %249, float %6015, float %6004
  %6018 = select i1 %249, float 0.000000e+00, float %6006
  %6019 = fmul fast float %4450, %4450
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = fmul fast float %5762, 9.843750e-01
  %6022 = fmul fast float %5757, 9.843750e-01
  %6023 = fadd fast float %6021, 7.812500e-03
  %6024 = fadd fast float %6022, 7.812500e-03
  %6025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6023, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6026 = extractvalue %dx.types.ResRet.f32 %6025, 0
  %6027 = extractvalue %dx.types.ResRet.f32 %6025, 1
  %6028 = extractvalue %dx.types.ResRet.f32 %6025, 2
  %6029 = extractvalue %dx.types.ResRet.f32 %6025, 3
  %6030 = fsub fast float 1.000000e+00, %6020
  %6031 = fsub fast float %6028, %6026
  %6032 = fsub fast float %6029, %6027
  %6033 = fmul fast float %6031, %6030
  %6034 = fmul fast float %6032, %6030
  %6035 = fadd fast float %6033, %6026
  %6036 = fadd fast float %6034, %6027
  %6037 = fmul fast float %6035, %5751
  %6038 = fmul fast float %6035, %5752
  %6039 = fmul fast float %6035, %5760
  %6040 = fadd fast float %6037, %6036
  %6041 = fadd fast float %6038, %6036
  %6042 = fadd fast float %6039, %6036
  %6043 = fcmp fast ogt float %5113, 0.000000e+00
  br i1 %6043, label %6044, label %6070

; <label>:6044                                    ; preds = %5924
  %6045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %5762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = fadd fast float %6046, -5.000000e-01
  %6050 = fadd fast float %6047, -5.000000e-01
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fsub fast float 1.000000e+00, %5751
  %6053 = fsub fast float 1.000000e+00, %5752
  %6054 = fsub fast float 1.000000e+00, %5760
  %6055 = fmul fast float %5751, 4.000000e+00
  %6056 = fmul fast float %6055, %6052
  %6057 = fmul fast float %6056, %6049
  %6058 = fmul fast float %5752, 4.000000e+00
  %6059 = fmul fast float %6058, %6053
  %6060 = fmul fast float %6059, %6050
  %6061 = fmul fast float %5760, 4.000000e+00
  %6062 = fmul fast float %6061, %6054
  %6063 = fmul fast float %6062, %6051
  %6064 = fadd fast float %6057, %6040
  %6065 = fadd fast float %6060, %6041
  %6066 = fadd fast float %6063, %6042
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  br label %6070

; <label>:6070                                    ; preds = %6044, %5924
  %6071 = phi float [ %6067, %6044 ], [ %6040, %5924 ]
  %6072 = phi float [ %6068, %6044 ], [ %6041, %5924 ]
  %6073 = phi float [ %6069, %6044 ], [ %6042, %5924 ]
  %6074 = call float @dx.op.binary.f32(i32 35, float %6072, float %6073)  ; FMax(a,b)
  %6075 = call float @dx.op.binary.f32(i32 35, float %6071, float %6074)  ; FMax(a,b)
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5749, float %5750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fcmp fast ogt float %6077, 0x3E7FF19E20000000
  %6079 = fdiv fast float 1.000000e+00, %6077
  %6080 = select i1 %6078, float %6079, float 0.000000e+00
  %6081 = fmul fast float %6080, %5748
  %6082 = fmul fast float %6080, %5749
  %6083 = fmul fast float %6080, %5750
  %6084 = fadd fast float %6081, -1.000000e+00
  %6085 = fadd fast float %6082, -1.000000e+00
  %6086 = fadd fast float %6083, -1.000000e+00
  %6087 = fmul fast float %6084, 5.000000e-01
  %6088 = fmul fast float %6085, 5.000000e-01
  %6089 = fmul fast float %6086, 5.000000e-01
  %6090 = fadd fast float %6087, 1.000000e+00
  %6091 = fadd fast float %6088, 1.000000e+00
  %6092 = fadd fast float %6089, 1.000000e+00
  %6093 = call float @dx.op.binary.f32(i32 35, float %5762, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6094 = fdiv fast float %4450, %6093
  %6095 = fcmp fast olt float %5184, 1.270000e+02
  %6096 = fcmp fast olt float %5185, 1.270000e+02
  %6097 = fcmp fast olt float %5186, 1.270000e+02
  %6098 = fmul fast float %5184, 0xBFF7154760000000
  %6099 = fmul fast float %6098, %6094
  %6100 = fmul fast float %5185, 0xBFF7154760000000
  %6101 = fmul fast float %6100, %6094
  %6102 = fmul fast float %5186, 0xBFF7154760000000
  %6103 = fmul fast float %6102, %6094
  %6104 = call float @dx.op.unary.f32(i32 21, float %6099)  ; Exp(value)
  %6105 = call float @dx.op.unary.f32(i32 21, float %6101)  ; Exp(value)
  %6106 = call float @dx.op.unary.f32(i32 21, float %6103)  ; Exp(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6109 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6110 = select i1 %6095, float %6107, float 0.000000e+00
  %6111 = select i1 %6096, float %6108, float 0.000000e+00
  %6112 = select i1 %6097, float %6109, float 0.000000e+00
  %6113 = fmul fast float %6110, %6076
  %6114 = fmul fast float %6111, %6076
  %6115 = fmul fast float %6112, %6076
  %6116 = fadd fast float %6113, -1.000000e+00
  %6117 = fadd fast float %6114, -1.000000e+00
  %6118 = fadd fast float %6115, -1.000000e+00
  %6119 = fmul fast float %6116, %5139
  %6120 = fmul fast float %6117, %5139
  %6121 = fmul fast float %6118, %5139
  %6122 = fmul fast float %6071, %6016
  %6123 = fmul fast float %6072, %6017
  %6124 = fmul fast float %6073, %6018
  %6125 = fsub fast float 1.000000e+00, %5762
  %6126 = bitcast float %6125 to i32
  %6127 = sitofp i32 %6126 to float
  %6128 = fmul fast float %6127, 5.000000e+00
  %6129 = fadd fast float %6128, 0xC1EFBF8940000000
  %6130 = fptosi float %6129 to i32
  %6131 = bitcast i32 %6130 to float
  %6132 = fmul fast float %6131, %5114
  %6133 = fmul fast float %6008, %6132
  %6134 = fmul fast float %6133, %6076
  %6135 = fmul fast float %6134, %6090
  %6136 = fmul fast float %6009, %6132
  %6137 = fmul fast float %6136, %6076
  %6138 = fmul fast float %6137, %6091
  %6139 = fmul fast float %6010, %6132
  %6140 = fmul fast float %6139, %6076
  %6141 = fmul fast float %6140, %6092
  %6142 = fadd fast float %6122, %5100
  %6143 = fadd fast float %6142, %6135
  %6144 = fmul fast float %6143, %5139
  %6145 = fadd fast float %6123, %5101
  %6146 = fadd fast float %6145, %6138
  %6147 = fmul fast float %6146, %5139
  %6148 = fadd fast float %6124, %5102
  %6149 = fadd fast float %6148, %6141
  %6150 = fmul fast float %6149, %5139
  %6151 = fmul fast float %5752, 0x4012D0A400000000
  %6152 = fadd fast float %6121, 1.000000e+00
  %6153 = fadd fast float %6120, 1.000000e+00
  %6154 = fadd fast float %6119, 1.000000e+00
  %6155 = fmul fast float %6076, %6010
  %6156 = fmul fast float %6076, %6009
  %6157 = fmul fast float %6076, %6008
  %6158 = fsub fast float 1.000000e+00, %5757
  %6159 = fmul fast float %6158, %5139
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6162 = fsub fast float 1.000000e+00, %6161
  %6163 = fadd fast float %6151, 0x3FDB6377A0000000
  %6164 = fmul fast float %6162, %6163
  %6165 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %5204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6166 = fadd fast float %6164, %6165
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = call float @dx.op.binary.f32(i32 35, float %6167, float 0x3F847AE140000000)  ; FMax(a,b)
  %6169 = fmul fast float %6168, %6168
  %6170 = fmul fast float %6169, %6169
  %6171 = fmul fast float %6170, 0xC00A935000000000
  %6172 = call float @dx.op.unary.f32(i32 21, float %6171)  ; Exp(value)
  %6173 = fsub fast float 1.000000e+00, %6172
  %6174 = fmul fast float %6154, %6012
  %6175 = fmul fast float %6174, %6173
  %6176 = fmul fast float %6153, %6013
  %6177 = fmul fast float %6176, %6173
  %6178 = fmul fast float %6152, %6014
  %6179 = fmul fast float %6178, %6173
  %6180 = fadd fast float %6175, %6157
  %6181 = fmul fast float %6180, %5139
  %6182 = fadd fast float %6177, %6156
  %6183 = fmul fast float %6182, %5139
  %6184 = fadd fast float %6179, %6155
  %6185 = fmul fast float %6184, %5139
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6188 = fcmp fast oeq float %6187, 0.000000e+00
  br i1 %6188, label %7393, label %6189

; <label>:6189                                    ; preds = %6070
  %6190 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6191 = extractvalue %dx.types.CBufRet.f32 %6186, 1
  %6192 = extractvalue %dx.types.CBufRet.f32 %6186, 2
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = call float @dx.op.dot3.f32(i32 55, float %6194, float %6195, float %6196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = select i1 %249, float %6198, float %6194
  %6202 = select i1 %249, float %6200, float %6195
  %6203 = select i1 %249, float %6199, float %6196
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6206 = fmul fast float %6205, %107
  %6207 = fmul fast float %6205, %108
  %6208 = fmul fast float %6205, %109
  %6209 = fadd fast float %6206, %155
  %6210 = fadd fast float %6207, %156
  %6211 = fadd fast float %6208, %157
  %6212 = fcmp fast olt float %6187, 0.000000e+00
  br i1 %6212, label %6837, label %6213

; <label>:6213                                    ; preds = %6189
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 0
  %6216 = extractvalue %dx.types.CBufRet.f32 %6214, 1
  %6217 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6218 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.CBufRet.f32 %6219, 2
  %6223 = extractvalue %dx.types.CBufRet.f32 %6219, 3
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = fmul fast float %6215, %6209
  %6230 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6216, float %6229)  ; FMad(a,b,c)
  %6231 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6217, float %6230)  ; FMad(a,b,c)
  %6232 = fadd fast float %6231, %6218
  %6233 = fmul fast float %6220, %6209
  %6234 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6221, float %6233)  ; FMad(a,b,c)
  %6235 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6222, float %6234)  ; FMad(a,b,c)
  %6236 = fadd fast float %6235, %6223
  %6237 = fmul fast float %6225, %6209
  %6238 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6226, float %6237)  ; FMad(a,b,c)
  %6239 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6227, float %6238)  ; FMad(a,b,c)
  %6240 = fadd fast float %6239, %6228
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6245 = fmul fast float %6244, %6232
  %6246 = fmul fast float %6244, %6236
  %6247 = fadd fast float %6245, %6242
  %6248 = fadd fast float %6246, %6243
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6249, 3
  %6253 = fmul fast float %6252, %6232
  %6254 = fmul fast float %6252, %6236
  %6255 = fadd fast float %6253, %6250
  %6256 = fadd fast float %6254, %6251
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6259 = fsub fast float %6258, %6240
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = fmul fast float %6259, %6260
  %6262 = fsub fast float 1.000000e+00, %6261
  %6263 = call float @dx.op.unary.f32(i32 7, float %6262)  ; Saturate(value)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6249, 2
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6267 = fadd fast float %6266, %6264
  %6268 = fcmp fast ogt float %6267, 0.000000e+00
  br i1 %6268, label %6269, label %6293

; <label>:6269                                    ; preds = %6213
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = fsub fast float %6255, %6271
  %6274 = fsub fast float %6256, %6272
  %6275 = fcmp fast olt float %6273, 0.000000e+00
  %6276 = fcmp fast olt float %6274, 0.000000e+00
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  %6279 = extractvalue %dx.types.CBufRet.f32 %6277, 1
  %6280 = extractvalue %dx.types.CBufRet.f32 %6277, 2
  %6281 = extractvalue %dx.types.CBufRet.f32 %6277, 3
  %6282 = select i1 %6275, float %6278, float %6280
  %6283 = select i1 %6276, float %6279, float %6281
  %6284 = fmul fast float %6282, %6273
  %6285 = fmul fast float %6283, %6274
  %6286 = call float @dx.op.unary.f32(i32 6, float %6284)  ; FAbs(value)
  %6287 = call float @dx.op.unary.f32(i32 6, float %6285)  ; FAbs(value)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6289 = call float @dx.op.binary.f32(i32 35, float %6286, float %6287)  ; FMax(a,b)
  %6290 = fsub fast float %6288, %6289
  %6291 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6292 = fmul fast float %6291, %6263
  br label %6293

; <label>:6293                                    ; preds = %6269, %6213
  %6294 = phi float [ %6292, %6269 ], [ 0.000000e+00, %6213 ]
  %6295 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6296 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6297 = fadd fast float %6296, %6295
  %6298 = fcmp fast ogt float %6297, 0.000000e+00
  %6299 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  br i1 %6298, label %6300, label %6323

; <label>:6300                                    ; preds = %6293
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = fsub fast float %6247, %6302
  %6305 = fsub fast float %6248, %6303
  %6306 = fcmp fast olt float %6304, 0.000000e+00
  %6307 = fcmp fast olt float %6305, 0.000000e+00
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6311 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6312 = extractvalue %dx.types.CBufRet.f32 %6308, 3
  %6313 = select i1 %6306, float %6309, float %6311
  %6314 = select i1 %6307, float %6310, float %6312
  %6315 = fmul fast float %6313, %6304
  %6316 = fmul fast float %6314, %6305
  %6317 = call float @dx.op.unary.f32(i32 6, float %6315)  ; FAbs(value)
  %6318 = call float @dx.op.unary.f32(i32 6, float %6316)  ; FAbs(value)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6317, float %6318)  ; FMax(a,b)
  %6320 = fsub fast float %6299, %6319
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fmul fast float %6321, %6263
  br label %6323

; <label>:6323                                    ; preds = %6300, %6293
  %6324 = phi float [ %6322, %6300 ], [ 0.000000e+00, %6293 ]
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6327 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = fsub fast float %6232, %6329
  %6332 = fsub fast float %6236, %6330
  %6333 = fcmp fast olt float %6331, 0.000000e+00
  %6334 = fcmp fast olt float %6332, 0.000000e+00
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6347 = fsub fast float %6299, %6346
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = call float @dx.op.binary.f32(i32 36, float %6348, float %6327)  ; FMin(a,b)
  %6350 = fmul fast float %6349, %6263
  %6351 = fsub fast float %6324, %6350
  %6352 = fsub fast float %6294, %6324
  %6353 = fsub fast float %6352, %6350
  %6354 = call float @dx.op.binary.f32(i32 35, float %6324, float %6294)  ; FMax(a,b)
  %6355 = call float @dx.op.binary.f32(i32 35, float %6350, float %6354)  ; FMax(a,b)
  %6356 = fcmp fast olt float %6355, 1.000000e+00
  br i1 %6356, label %6357, label %6755, !dx.controlflow.hints !94

; <label>:6357                                    ; preds = %6323
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = fcmp fast une float %6359, 0.000000e+00
  br i1 %6360, label %6361, label %6755, !dx.controlflow.hints !95

; <label>:6361                                    ; preds = %6357
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6377 = fmul fast float %6363, %6209
  %6378 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6364, float %6377)  ; FMad(a,b,c)
  %6379 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6365, float %6378)  ; FMad(a,b,c)
  %6380 = fadd fast float %6379, %6366
  %6381 = fmul fast float %6368, %6209
  %6382 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6369, float %6381)  ; FMad(a,b,c)
  %6383 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6370, float %6382)  ; FMad(a,b,c)
  %6384 = fadd fast float %6383, %6371
  %6385 = fmul fast float %6373, %6209
  %6386 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6374, float %6385)  ; FMad(a,b,c)
  %6387 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6375, float %6386)  ; FMad(a,b,c)
  %6388 = fadd fast float %6387, %6376
  %6389 = fcmp fast oge float %6380, 1.000000e+00
  %6390 = fcmp fast oge float %6384, 1.000000e+00
  %6391 = or i1 %6389, %6390
  %6392 = fcmp fast olt float %6380, 0.000000e+00
  %6393 = fcmp fast olt float %6384, 0.000000e+00
  %6394 = or i1 %6392, %6393
  %6395 = or i1 %6391, %6394
  br i1 %6395, label %6755, label %6396, !dx.controlflow.hints !96

; <label>:6396                                    ; preds = %6361
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.i32 %6401, 2
  %6403 = uitofp i32 %6402 to float
  %6404 = extractvalue %dx.types.CBufRet.i32 %6401, 3
  %6405 = uitofp i32 %6404 to float
  %6406 = extractvalue %dx.types.CBufRet.f32 %6397, 3
  %6407 = fmul fast float %6406, 2.000000e+00
  %6408 = fsub fast float %6380, %6398
  %6409 = fsub fast float %6384, %6399
  %6410 = fmul fast float %6407, %6408
  %6411 = fmul fast float %6407, %6409
  %6412 = fdiv fast float 1.000000e+00, %6192
  %6413 = fmul fast float %6411, %6412
  %6414 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6415 = fmul fast float %6400, %6211
  %6416 = fmul fast float %6415, %6407
  %6417 = call float @dx.op.unary.f32(i32 6, float %6416)  ; FAbs(value)
  %6418 = call float @dx.op.unary.f32(i32 6, float %6410)  ; FAbs(value)
  %6419 = call float @dx.op.binary.f32(i32 35, float %6417, float %6414)  ; FMax(a,b)
  %6420 = call float @dx.op.binary.f32(i32 35, float %6418, float %6419)  ; FMax(a,b)
  %6421 = fmul fast float %6420, 2.000000e+00
  %6422 = call float @dx.op.unary.f32(i32 23, float %6421)  ; Log(value)
  %6423 = call float @dx.op.binary.f32(i32 35, float %6422, float %6403)  ; FMax(a,b)
  %6424 = call float @dx.op.unary.f32(i32 22, float %6423)  ; Frc(value)
  %6425 = fadd fast float %6424, 0xBFEA666660000000
  %6426 = fmul fast float %6425, 8.000000e+00
  %6427 = call float @dx.op.unary.f32(i32 7, float %6426)  ; Saturate(value)
  %6428 = call float @dx.op.unary.f32(i32 27, float %6423)  ; Round_ni(value)
  %6429 = fadd fast float %6428, %6427
  %6430 = call float @dx.op.binary.f32(i32 36, float %6429, float %6405)  ; FMin(a,b)
  %6431 = call float @dx.op.unary.f32(i32 27, float %6430)  ; Round_ni(value)
  %6432 = fsub fast float -0.000000e+00, %6431
  %6433 = call float @dx.op.unary.f32(i32 21, float %6432)  ; Exp(value)
  %6434 = fmul fast float %6433, %6407
  %6435 = fmul fast float %6434, %6380
  %6436 = fmul fast float %6434, %6384
  %6437 = fmul fast float %6435, 2.500000e-01
  %6438 = fmul fast float %6436, 2.500000e-01
  %6439 = fadd fast float %6437, 5.000000e-01
  %6440 = fadd fast float %6438, 5.000000e-01
  %6441 = fsub fast float %6405, %6403
  %6442 = fptoui float %6441 to i32
  %6443 = add i32 %6442, 320
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6443)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6447 = fcmp fast une float %6430, %6405
  %6448 = fsub fast float %6380, %6445
  %6449 = fsub fast float %6384, %6446
  %6450 = call float @dx.op.unary.f32(i32 6, float %6448)  ; FAbs(value)
  %6451 = call float @dx.op.unary.f32(i32 6, float %6449)  ; FAbs(value)
  %6452 = fmul fast float %6450, %6434
  %6453 = fmul fast float %6451, %6434
  %6454 = fcmp fast olt float %6452, 1.000000e+00
  %6455 = fcmp fast olt float %6453, 1.000000e+00
  %6456 = and i1 %6454, %6455
  %6457 = or i1 %6447, %6456
  br i1 %6457, label %6458, label %6755, !dx.controlflow.hints !97

; <label>:6458                                    ; preds = %6396
  %6459 = fmul fast float %6436, 5.000000e-01
  %6460 = fmul fast float %6435, 5.000000e-01
  %6461 = fadd fast float %6459, 5.000000e-01
  %6462 = fadd fast float %6460, 5.000000e-01
  %6463 = sitofp i32 %6402 to float
  %6464 = fsub fast float %6430, %6463
  %6465 = call float @dx.op.unary.f32(i32 27, float %6464)  ; Round_ni(value)
  %6466 = call float @dx.op.unary.f32(i32 22, float %6430)  ; Frc(value)
  %6467 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6468 = call float @dx.op.unary.f32(i32 22, float %6461)  ; Frc(value)
  %6469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6467, float %6468, float %6465, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6470 = extractvalue %dx.types.ResRet.f32 %6469, 0
  %6471 = extractvalue %dx.types.ResRet.f32 %6469, 1
  %6472 = extractvalue %dx.types.ResRet.f32 %6469, 2
  %6473 = extractvalue %dx.types.ResRet.f32 %6469, 3
  %6474 = fcmp fast ogt float %6466, 0.000000e+00
  br i1 %6474, label %6475, label %6496, !dx.controlflow.hints !98

; <label>:6475                                    ; preds = %6458
  %6476 = fadd fast float %6465, 1.000000e+00
  %6477 = call float @dx.op.unary.f32(i32 22, float %6439)  ; Frc(value)
  %6478 = call float @dx.op.unary.f32(i32 22, float %6440)  ; Frc(value)
  %6479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6477, float %6478, float %6476, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6479, 3
  %6484 = fsub fast float %6480, %6470
  %6485 = fsub fast float %6481, %6471
  %6486 = fsub fast float %6482, %6472
  %6487 = fsub fast float %6483, %6473
  %6488 = fmul fast float %6484, %6466
  %6489 = fmul fast float %6485, %6466
  %6490 = fmul fast float %6486, %6466
  %6491 = fmul fast float %6487, %6466
  %6492 = fadd fast float %6488, %6470
  %6493 = fadd fast float %6489, %6471
  %6494 = fadd fast float %6490, %6472
  %6495 = fadd fast float %6491, %6473
  br label %6496

; <label>:6496                                    ; preds = %6475, %6458
  %6497 = phi float [ %6492, %6475 ], [ %6470, %6458 ]
  %6498 = phi float [ %6493, %6475 ], [ %6471, %6458 ]
  %6499 = phi float [ %6494, %6475 ], [ %6472, %6458 ]
  %6500 = phi float [ %6495, %6475 ], [ %6473, %6458 ]
  %6501 = fadd fast float %6497, -5.000000e-01
  %6502 = fadd fast float %6499, -5.000000e-01
  %6503 = fmul fast float %6501, 0xBFD5555560000000
  %6504 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6502, float %6503)  ; FMad(a,b,c)
  %6505 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6498, float 0.000000e+00)  ; FMad(a,b,c)
  %6506 = fadd fast float %6505, %6500
  %6507 = fmul fast float %6501, -7.500000e-01
  %6508 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6502, float %6507)  ; FMad(a,b,c)
  %6509 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6498, float 0.000000e+00)  ; FMad(a,b,c)
  %6510 = fadd fast float %6509, %6500
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6516 = extractvalue %dx.types.CBufRet.f32 %6513, 2
  %6517 = extractvalue %dx.types.CBufRet.f32 %6513, 3
  %6518 = fsub fast float %6514, %6504
  %6519 = fsub fast float %6515, %6506
  %6520 = fsub fast float %6516, %6508
  %6521 = fsub fast float %6517, %6510
  %6522 = fmul fast float %6518, %6512
  %6523 = fmul fast float %6519, %6512
  %6524 = fmul fast float %6520, %6512
  %6525 = fmul fast float %6521, %6512
  %6526 = fadd fast float %6522, %6504
  %6527 = fadd fast float %6523, %6506
  %6528 = fadd fast float %6524, %6508
  %6529 = fadd fast float %6525, %6510
  %6530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6531 = extractvalue %dx.types.ResRet.i32 %6530, 0
  %6532 = and i32 %6531, 536870911
  %6533 = uitofp i32 %6532 to float
  %6534 = fmul fast float %6533, %6380
  %6535 = fmul fast float %6533, %6384
  %6536 = fptoui float %6534 to i32
  %6537 = fptoui float %6535 to i32
  %6538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6539 = extractvalue %dx.types.ResRet.i32 %6538, 0
  %6540 = and i32 %6539, 31
  %6541 = lshr i32 %6536, %6540
  %6542 = lshr i32 %6537, %6540
  %6543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6544 = extractvalue %dx.types.ResRet.i32 %6543, 0
  %6545 = and i32 %6544, 31
  %6546 = shl i32 1, %6545
  %6547 = call i32 @dx.op.binary.i32(i32 40, i32 %6546, i32 4)  ; UMin(a,b)
  %6548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6549 = extractvalue %dx.types.ResRet.i32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.i32 %6548, 1
  %6551 = icmp eq i32 %6547, 0
  br i1 %6551, label %6593, label %6552

; <label>:6552                                    ; preds = %6496
  br label %6553

; <label>:6553                                    ; preds = %6581, %6552
  %6554 = phi i32 [ %6584, %6581 ], [ 0, %6552 ]
  %6555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6556 = extractvalue %dx.types.ResRet.i32 %6555, 0
  %6557 = lshr i32 %6556, 16
  %6558 = and i32 %6557, 31
  %6559 = shl i32 %6542, %6558
  %6560 = add i32 %6559, %6541
  %6561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6562 = extractvalue %dx.types.ResRet.i32 %6561, 0
  %6563 = and i32 %6562, 31
  %6564 = shl i32 %6560, %6563
  %6565 = add i32 %6564, %6554
  %6566 = shl i32 %6565, 2
  %6567 = add i32 %6566, 32
  %6568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6567, i32 undef)  ; BufferLoad(srv,index,wot)
  %6569 = extractvalue %dx.types.ResRet.i32 %6568, 0
  %6570 = icmp slt i32 %6569, 0
  %6571 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6554
  %6572 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6554
  %6573 = bitcast float* %6571 to i32*
  %6574 = bitcast float* %6572 to i32*
  br i1 %6570, label %6575, label %6581

; <label>:6575                                    ; preds = %6553
  %6576 = and i32 %6569, 1073741823
  %6577 = add nuw nsw i32 %6576, 20
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = extractvalue %dx.types.ResRet.i32 %6578, 1
  br label %6581

; <label>:6581                                    ; preds = %6575, %6553
  %6582 = phi i32 [ %6579, %6575 ], [ %6549, %6553 ]
  %6583 = phi i32 [ %6580, %6575 ], [ %6550, %6553 ]
  store i32 %6582, i32* %6573, align 4
  store i32 %6583, i32* %6574, align 4
  %6584 = add nuw i32 %6554, 1
  %6585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.i32 %6585, 2
  %6587 = icmp eq i32 %6586, 0
  %6588 = icmp ugt i32 %6569, -1073741825
  %6589 = and i1 %6588, %6587
  %6590 = icmp ult i32 %6584, %6547
  %6591 = and i1 %6589, %6590
  br i1 %6591, label %6553, label %6592

; <label>:6592                                    ; preds = %6581
  br label %6593

; <label>:6593                                    ; preds = %6592, %6496
  %6594 = phi i32 [ 0, %6496 ], [ %6584, %6592 ]
  %6595 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6596 = fptoui float %6595 to i32
  %6597 = icmp eq i32 %6596, 0
  br i1 %6597, label %6649, label %6598

; <label>:6598                                    ; preds = %6593
  br label %6599

; <label>:6599                                    ; preds = %6644, %6598
  %6600 = phi i32 [ %6645, %6644 ], [ %6594, %6598 ]
  %6601 = phi i32 [ %6646, %6644 ], [ 0, %6598 ]
  %6602 = lshr i32 %6601, 2
  %6603 = and i32 %6601, 3
  %6604 = add nuw nsw i32 %6602, 83
  %6605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6604)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.i32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.i32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.i32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.i32 %6605, 3
  %6610 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6606, i32* %6610, align 4
  %6611 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6607, i32* %6611, align 4
  %6612 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6608, i32* %6612, align 4
  %6613 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6609, i32* %6613, align 4
  %6614 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6603
  %6615 = load i32, i32* %6614, align 4, !tbaa !99, !noalias !103
  %6616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.i32 %6616, 0
  %6618 = lshr i32 %6617, 16
  %6619 = and i32 %6618, 31
  %6620 = shl i32 %6542, %6619
  %6621 = add i32 %6620, %6541
  %6622 = shl i32 %6621, 2
  %6623 = add i32 %6622, %6615
  %6624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6623, i32 undef)  ; BufferLoad(srv,index,wot)
  %6625 = extractvalue %dx.types.ResRet.i32 %6624, 0
  %6626 = icmp eq i32 %6625, 0
  br i1 %6626, label %6644, label %6627

; <label>:6627                                    ; preds = %6599
  %6628 = icmp slt i32 %6625, 0
  %6629 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6600
  %6630 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6600
  %6631 = bitcast float* %6629 to i32*
  %6632 = bitcast float* %6630 to i32*
  br i1 %6628, label %6633, label %6640

; <label>:6633                                    ; preds = %6627
  %6634 = and i32 %6625, 1073741823
  %6635 = add i32 %6615, 20
  %6636 = add i32 %6635, %6634
  %6637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.i32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.i32 %6637, 1
  br label %6640

; <label>:6640                                    ; preds = %6633, %6627
  %6641 = phi i32 [ %6638, %6633 ], [ %6549, %6627 ]
  %6642 = phi i32 [ %6639, %6633 ], [ %6550, %6627 ]
  store i32 %6641, i32* %6631, align 4
  store i32 %6642, i32* %6632, align 4
  %6643 = add i32 %6600, 1
  br label %6644

; <label>:6644                                    ; preds = %6640, %6599
  %6645 = phi i32 [ %6600, %6599 ], [ %6643, %6640 ]
  %6646 = add nuw i32 %6601, 1
  %6647 = icmp eq i32 %6646, %6596
  br i1 %6647, label %6648, label %6599

; <label>:6648                                    ; preds = %6644
  br label %6649

; <label>:6649                                    ; preds = %6648, %6593
  %6650 = phi i32 [ %6594, %6593 ], [ %6645, %6648 ]
  %6651 = icmp eq i32 %6650, 1
  %6652 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6653 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6651, label %6654, label %6657

; <label>:6654                                    ; preds = %6649
  %6655 = load float, float* %6652, align 4
  %6656 = load float, float* %6653, align 4
  br label %6684

; <label>:6657                                    ; preds = %6649
  %6658 = load float, float* %6652, align 4
  %6659 = load float, float* %6653, align 4
  %6660 = fdiv fast float 1.000000e+00, %6659
  %6661 = fsub fast float %6658, %6660
  %6662 = icmp ugt i32 %6650, 1
  br i1 %6662, label %6663, label %6679

; <label>:6663                                    ; preds = %6657
  br label %6664

; <label>:6664                                    ; preds = %6664, %6663
  %6665 = phi float [ %6674, %6664 ], [ %6661, %6663 ]
  %6666 = phi float [ %6675, %6664 ], [ %6658, %6663 ]
  %6667 = phi i32 [ %6676, %6664 ], [ 1, %6663 ]
  %6668 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6667
  %6669 = load float, float* %6668, align 4
  %6670 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6667
  %6671 = load float, float* %6670, align 4
  %6672 = fdiv fast float 1.000000e+00, %6671
  %6673 = fsub fast float %6669, %6672
  %6674 = call float @dx.op.binary.f32(i32 36, float %6665, float %6673)  ; FMin(a,b)
  %6675 = call float @dx.op.binary.f32(i32 35, float %6666, float %6669)  ; FMax(a,b)
  %6676 = add nuw i32 %6667, 1
  %6677 = icmp eq i32 %6676, %6650
  br i1 %6677, label %6678, label %6664

; <label>:6678                                    ; preds = %6664
  br label %6679

; <label>:6679                                    ; preds = %6678, %6657
  %6680 = phi float [ %6661, %6657 ], [ %6674, %6678 ]
  %6681 = phi float [ %6658, %6657 ], [ %6675, %6678 ]
  %6682 = fsub fast float %6681, %6680
  %6683 = fdiv fast float 1.000000e+00, %6682
  br label %6684

; <label>:6684                                    ; preds = %6679, %6654
  %6685 = phi float [ %6655, %6654 ], [ %6681, %6679 ]
  %6686 = phi float [ %6656, %6654 ], [ %6683, %6679 ]
  %6687 = fadd fast float %6388, %6685
  %6688 = fmul fast float %6687, %6686
  %6689 = call float @dx.op.unary.f32(i32 7, float %6688)  ; Saturate(value)
  %6690 = fmul fast float %6689, 2.000000e+00
  %6691 = fsub fast float 1.000000e+00, %6690
  %6692 = fmul fast float %6526, %6526
  %6693 = fsub fast float %6527, %6692
  %6694 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6693)  ; FMax(a,b)
  %6695 = fdiv fast float 1.000000e+00, %6694
  %6696 = fmul fast float %6527, %6526
  %6697 = fsub fast float %6528, %6696
  %6698 = fsub fast float %6691, %6526
  %6699 = fmul fast float %6691, %6691
  %6700 = fsub fast float %6699, %6527
  %6701 = fmul fast float %6695, %6697
  %6702 = fmul fast float %6701, %6698
  %6703 = fsub fast float %6700, %6702
  %6704 = fmul fast float %6527, %6527
  %6705 = fsub fast float %6529, %6704
  %6706 = fmul fast float %6697, %6697
  %6707 = fmul fast float %6706, %6695
  %6708 = fsub fast float %6705, %6707
  %6709 = fdiv fast float %6703, %6708
  %6710 = fmul fast float %6709, %6697
  %6711 = fsub fast float %6698, %6710
  %6712 = fmul fast float %6711, %6695
  %6713 = fmul fast float %6712, %6526
  %6714 = fsub fast float 1.000000e+00, %6713
  %6715 = fmul fast float %6709, %6527
  %6716 = fsub fast float %6714, %6715
  %6717 = fmul fast float %6712, %6712
  %6718 = fmul fast float %6709, 4.000000e+00
  %6719 = fmul fast float %6718, %6716
  %6720 = fsub fast float %6717, %6719
  %6721 = call float @dx.op.unary.f32(i32 24, float %6720)  ; Sqrt(value)
  %6722 = fcmp fast oge float %6712, 0.000000e+00
  %6723 = fsub fast float -0.000000e+00, %6721
  %6724 = select i1 %6722, float %6723, float %6721
  %6725 = fsub fast float %6724, %6712
  %6726 = fdiv fast float %6725, %6709
  %6727 = fdiv fast float %6716, %6725
  %6728 = fmul fast float %6726, 5.000000e-01
  %6729 = fmul fast float %6727, 2.000000e+00
  %6730 = select i1 %6722, float %6728, float %6729
  %6731 = select i1 %6722, float %6729, float %6728
  %6732 = call float @dx.op.binary.f32(i32 35, float %6730, float %6731)  ; FMax(a,b)
  %6733 = call float @dx.op.binary.f32(i32 36, float %6730, float %6731)  ; FMin(a,b)
  %6734 = fcmp fast ogt float %6691, %6732
  %6735 = fsub fast float %6691, %6733
  %6736 = fsub fast float %6691, %6732
  %6737 = fsub fast float %6732, %6733
  %6738 = select i1 %6734, float %6736, float %6737
  %6739 = fmul float %6735, %6738
  %6740 = select i1 %6734, float %6733, float %6691
  %6741 = fcmp fast ogt float %6691, %6733
  %6742 = fmul fast float %6740, %6732
  %6743 = fadd fast float %6740, %6732
  %6744 = fmul fast float %6743, %6526
  %6745 = fadd fast float %6742, %6527
  %6746 = fsub fast float %6745, %6744
  %6747 = fdiv fast float %6746, %6739
  %6748 = select i1 %6741, float %6747, float 0.000000e+00
  %6749 = fsub fast float 1.000000e+00, %6748
  %6750 = select i1 %6734, float %6749, float %6748
  %6751 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6511, 3
  %6753 = fmul fast float %6752, %6751
  %6754 = fsub fast float 1.000000e+00, %6753
  br label %6755

; <label>:6755                                    ; preds = %6684, %6396, %6361, %6357, %6323
  %6756 = phi float [ 1.000000e+00, %6323 ], [ %6754, %6684 ], [ 1.000000e+00, %6361 ], [ 1.000000e+00, %6396 ], [ 1.000000e+00, %6357 ]
  %6757 = fcmp fast ogt float %6353, 0.000000e+00
  br i1 %6757, label %6758, label %6764, !dx.controlflow.hints !112

; <label>:6758                                    ; preds = %6755
  %6759 = fadd fast float %6266, %6240
  %6760 = call float @dx.op.binary.f32(i32 35, float %6759, float 0.000000e+00)  ; FMax(a,b)
  %6761 = fadd fast float %6760, 0x3F10000000000000
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6255, float %6256, float undef, float undef, i32 0, i32 0, i32 undef, float %6761)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  br label %6764

; <label>:6764                                    ; preds = %6758, %6755
  %6765 = phi float [ %6763, %6758 ], [ 1.000000e+00, %6755 ]
  %6766 = fcmp fast ogt float %6351, 0.000000e+00
  br i1 %6766, label %6767, label %6773, !dx.controlflow.hints !113

; <label>:6767                                    ; preds = %6764
  %6768 = fadd fast float %6296, %6240
  %6769 = call float @dx.op.binary.f32(i32 35, float %6768, float 0.000000e+00)  ; FMax(a,b)
  %6770 = fadd fast float %6769, 0x3F10000000000000
  %6771 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6247, float %6248, float undef, float undef, i32 0, i32 0, i32 undef, float %6770)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  br label %6773

; <label>:6773                                    ; preds = %6767, %6764
  %6774 = phi float [ %6772, %6767 ], [ 1.000000e+00, %6764 ]
  %6775 = fcmp fast ogt float %6350, 0.000000e+00
  br i1 %6775, label %6776, label %6783, !dx.controlflow.hints !114

; <label>:6776                                    ; preds = %6773
  %6777 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6778 = fadd fast float %6777, %6240
  %6779 = call float @dx.op.binary.f32(i32 35, float %6778, float 0.000000e+00)  ; FMax(a,b)
  %6780 = fadd fast float %6779, 0x3F10000000000000
  %6781 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6232, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float %6780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  br label %6783

; <label>:6783                                    ; preds = %6776, %6773
  %6784 = phi float [ %6782, %6776 ], [ 1.000000e+00, %6773 ]
  %6785 = fsub fast float %6765, %6756
  %6786 = fmul fast float %6785, %6294
  %6787 = fadd fast float %6786, %6756
  %6788 = fsub fast float %6774, %6787
  %6789 = fmul fast float %6788, %6324
  %6790 = fadd fast float %6789, %6787
  %6791 = fsub fast float %6784, %6790
  %6792 = fmul fast float %6791, %6350
  %6793 = fadd fast float %6792, %6790
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 2
  %6796 = fcmp fast ogt float %6795, 0.000000e+00
  br i1 %6796, label %6797, label %6837, !dx.controlflow.hints !115

; <label>:6797                                    ; preds = %6783
  %6798 = fcmp fast ugt float %6795, 0.000000e+00
  br i1 %6798, label %6799, label %6834

; <label>:6799                                    ; preds = %6797
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = extractvalue %dx.types.CBufRet.f32 %6800, 3
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6805, 3
  %6810 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = fadd fast float %6813, %6209
  %6817 = fadd fast float %6814, %6210
  %6818 = fadd fast float %6815, %6211
  %6819 = fmul fast float %6816, %6801
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6802, float %6817, float %6819)  ; FMad(a,b,c)
  %6821 = call float @dx.op.tertiary.f32(i32 46, float %6803, float %6818, float %6820)  ; FMad(a,b,c)
  %6822 = fadd fast float %6821, %6804
  %6823 = fmul fast float %6816, %6806
  %6824 = call float @dx.op.tertiary.f32(i32 46, float %6807, float %6817, float %6823)  ; FMad(a,b,c)
  %6825 = call float @dx.op.tertiary.f32(i32 46, float %6808, float %6818, float %6824)  ; FMad(a,b,c)
  %6826 = fadd fast float %6825, %6809
  %6827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6822, float %6826, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6828 = extractvalue %dx.types.ResRet.f32 %6827, 0
  %6829 = fmul fast float %6828, %6811
  %6830 = fadd fast float %6829, %6810
  %6831 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6832 = fmul fast float %6831, %6795
  %6833 = fsub fast float 1.000000e+00, %6832
  br label %6834

; <label>:6834                                    ; preds = %6799, %6797
  %6835 = phi float [ %6833, %6799 ], [ 1.000000e+00, %6797 ]
  %6836 = fmul fast float %6835, %6793
  br label %6837

; <label>:6837                                    ; preds = %6834, %6783, %6189
  %6838 = phi float [ 1.000000e+00, %6189 ], [ %6836, %6834 ], [ %6793, %6783 ]
  %6839 = call float @dx.op.binary.f32(i32 36, float %6838, float %6838)  ; FMin(a,b)
  %6840 = call float @dx.op.binary.f32(i32 36, float %6838, float %6839)  ; FMin(a,b)
  %6841 = fcmp fast ogt float %6840, 0.000000e+00
  br i1 %6841, label %6842, label %7002, !dx.controlflow.hints !116

; <label>:6842                                    ; preds = %6837
  %6843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6844 = extractvalue %dx.types.CBufRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.CBufRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.CBufRet.f32 %6843, 2
  %6847 = extractvalue %dx.types.CBufRet.f32 %6843, 3
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6858 = fmul fast float %6844, %6209
  %6859 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6845, float %6858)  ; FMad(a,b,c)
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6846, float %6859)  ; FMad(a,b,c)
  %6861 = fadd fast float %6860, %6847
  %6862 = fmul fast float %6849, %6209
  %6863 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6850, float %6862)  ; FMad(a,b,c)
  %6864 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6851, float %6863)  ; FMad(a,b,c)
  %6865 = fadd fast float %6864, %6852
  %6866 = fmul fast float %6854, %6209
  %6867 = call float @dx.op.tertiary.f32(i32 46, float %6210, float %6855, float %6866)  ; FMad(a,b,c)
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %6211, float %6856, float %6867)  ; FMad(a,b,c)
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6873 = fmul fast float %6872, %6861
  %6874 = fmul fast float %6872, %6865
  %6875 = fadd fast float %6873, %6870
  %6876 = fadd fast float %6874, %6871
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = fsub fast float %6875, %6878
  %6881 = fsub fast float %6876, %6879
  %6882 = fcmp fast olt float %6880, 0.000000e+00
  %6883 = fcmp fast olt float %6881, 0.000000e+00
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.CBufRet.f32 %6884, 1
  %6887 = extractvalue %dx.types.CBufRet.f32 %6884, 2
  %6888 = extractvalue %dx.types.CBufRet.f32 %6884, 3
  %6889 = select i1 %6882, float %6885, float %6887
  %6890 = select i1 %6883, float %6886, float %6888
  %6891 = fmul fast float %6889, %6880
  %6892 = fmul fast float %6890, %6881
  %6893 = call float @dx.op.unary.f32(i32 6, float %6891)  ; FAbs(value)
  %6894 = call float @dx.op.unary.f32(i32 6, float %6892)  ; FAbs(value)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6896 = call float @dx.op.binary.f32(i32 35, float %6893, float %6894)  ; FMax(a,b)
  %6897 = fsub fast float %6895, %6896
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fcmp fast ogt float %6898, 0.000000e+00
  br i1 %6899, label %6900, label %6941, !dx.controlflow.hints !117

; <label>:6900                                    ; preds = %6842
  %6901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6875, float %6876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6902 = extractvalue %dx.types.ResRet.f32 %6901, 1
  %6903 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %6903, label %6904, label %6936

; <label>:6904                                    ; preds = %6900
  %6905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6875, float %6876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = extractvalue %dx.types.ResRet.f32 %6905, 3
  %6910 = fsub fast float 1.000000e+00, %6857
  %6911 = fsub fast float %6910, %6868
  %6912 = fmul fast float %6911, 0x400921FB60000000
  %6913 = fadd fast float %6912, 0x3FF921FB60000000
  %6914 = call float @dx.op.unary.f32(i32 13, float %6913)  ; Sin(value)
  %6915 = fadd fast float %6914, -1.000000e+00
  %6916 = fmul fast float %6915, 0x3FD45F3060000000
  %6917 = fmul fast float %6911, 0x401921FB60000000
  %6918 = fadd fast float %6917, 0x400921FB60000000
  %6919 = call float @dx.op.unary.f32(i32 13, float %6918)  ; Sin(value)
  %6920 = fadd fast float %6919, 0x3E7777A5C0000000
  %6921 = fmul fast float %6920, 0x3FC45F3060000000
  %6922 = fmul fast float %6911, 0x4022D97C80000000
  %6923 = fadd fast float %6922, 0x4012D97C80000000
  %6924 = call float @dx.op.unary.f32(i32 13, float %6923)  ; Sin(value)
  %6925 = fadd fast float %6924, 1.000000e+00
  %6926 = fmul fast float %6925, 0x3FBB2995E0000000
  %6927 = fmul fast float %6911, 0x402921FB60000000
  %6928 = fadd fast float %6927, 0x401921FB60000000
  %6929 = call float @dx.op.unary.f32(i32 13, float %6928)  ; Sin(value)
  %6930 = fadd fast float %6929, 0xBE8777A5C0000000
  %6931 = fmul fast float %6930, 0x3FB45F3060000000
  %6932 = call float @dx.op.dot4.f32(i32 56, float %6906, float %6907, float %6908, float %6909, float %6916, float %6921, float %6926, float %6931)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6933 = fmul fast float %6932, 0xBFF7154760000000
  %6934 = call float @dx.op.unary.f32(i32 21, float %6933)  ; Exp(value)
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  br label %6936

; <label>:6936                                    ; preds = %6904, %6900
  %6937 = phi float [ %6935, %6904 ], [ 1.000000e+00, %6900 ]
  %6938 = fadd fast float %6937, -1.000000e+00
  %6939 = fmul fast float %6938, %6898
  %6940 = fadd fast float %6939, 1.000000e+00
  br label %6941

; <label>:6941                                    ; preds = %6936, %6842
  %6942 = phi float [ %6940, %6936 ], [ 1.000000e+00, %6842 ]
  %6943 = fmul fast float %6942, %6838
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = fadd fast float %6945, %155
  %6949 = fadd fast float %6946, %156
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6952 = fsub fast float -0.000000e+00, %6948
  %6953 = fsub fast float -0.000000e+00, %6949
  %6954 = fsub fast float %5759, %6947
  %6955 = fadd fast float %6954, %6951
  %6956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6952, float %6953, float %6955)  ; Dot3(ax,ay,az,bx,by,bz)
  %6957 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6190, float %6191, float %6192)  ; Dot3(ax,ay,az,bx,by,bz)
  %6958 = fdiv fast float 1.000000e+00, %6957
  %6959 = fmul fast float %6958, %6956
  %6960 = fmul fast float %6190, %6959
  %6961 = fmul fast float %6191, %6959
  %6962 = fadd fast float %6960, %6948
  %6963 = fadd fast float %6961, %6949
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6967 = fsub fast float %6962, %6965
  %6968 = fsub fast float %6963, %6966
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6972 = fmul fast float %6967, %6970
  %6973 = fmul fast float %6968, %6971
  %6974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.i32 %6974, 3
  %6976 = icmp eq i32 %6975, 0
  br i1 %6976, label %6982, label %6977

; <label>:6977                                    ; preds = %6941
  %6978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6972, float %6973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6979 = extractvalue %dx.types.ResRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.ResRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.ResRet.f32 %6978, 2
  br label %6987

; <label>:6982                                    ; preds = %6941
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6972, float %6973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.ResRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.ResRet.f32 %6983, 2
  br label %6987

; <label>:6987                                    ; preds = %6982, %6977
  %6988 = phi float [ %6979, %6977 ], [ %6984, %6982 ]
  %6989 = phi float [ %6980, %6977 ], [ %6985, %6982 ]
  %6990 = phi float [ %6981, %6977 ], [ %6986, %6982 ]
  %6991 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6992 = fmul fast float %6991, %6988
  %6993 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6994 = fsub fast float %6959, %6993
  %6995 = fsub fast float %6994, %6992
  %6996 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6995)  ; FMax(a,b)
  %6997 = fmul fast float %6996, %6989
  %6998 = call float @dx.op.binary.f32(i32 36, float %6990, float %6997)  ; FMin(a,b)
  %6999 = fmul fast float %6998, 0xBFF7154760000000
  %7000 = call float @dx.op.unary.f32(i32 21, float %6999)  ; Exp(value)
  %7001 = fmul fast float %6943, %7000
  br label %7002

; <label>:7002                                    ; preds = %6987, %6837
  %7003 = phi float [ %7001, %6987 ], [ %6838, %6837 ]
  %7004 = call float @dx.op.binary.f32(i32 36, float %7003, float %7003)  ; FMin(a,b)
  %7005 = call float @dx.op.binary.f32(i32 36, float %7003, float %7004)  ; FMin(a,b)
  %7006 = fcmp fast ogt float %7005, 0.000000e+00
  br i1 %7006, label %7007, label %7393, !dx.controlflow.hints !118

; <label>:7007                                    ; preds = %7002
  %7008 = fmul fast float %7003, %6201
  %7009 = fmul fast float %7003, %6202
  %7010 = fmul fast float %7003, %6203
  %7011 = fsub fast float %157, %5565
  %7012 = fcmp fast ogt float %7011, 0.000000e+00
  %7013 = fmul fast float %6190, 5.120000e+02
  %7014 = fmul fast float %6191, 5.120000e+02
  %7015 = fmul fast float %6192, 5.120000e+02
  %7016 = fadd fast float %7015, %157
  %7017 = fsub fast float %5565, %7016
  %7018 = fmul fast float %7017, 2.000000e+00
  %7019 = fadd fast float %7018, %7016
  %7020 = select i1 %7012, float %7019, float %7016
  %7021 = fsub fast float %7020, %157
  %7022 = call float @dx.op.dot3.f32(i32 55, float %7013, float %7014, float %7021, float %7013, float %7014, float %7021)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = call float @dx.op.unary.f32(i32 25, float %7022)  ; Rsqrt(value)
  %7024 = fmul fast float %7023, %7013
  %7025 = fmul fast float %7023, %7014
  %7026 = fmul fast float %7023, %7021
  %7027 = fsub fast float %5565, %157
  %7028 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7027)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7024, float %7025, float %7026)  ; Dot3(ax,ay,az,bx,by,bz)
  %7030 = fdiv fast float 1.000000e+00, %7029
  %7031 = fmul fast float %7030, %7028
  %7032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7011, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7033 = fcmp fast ogt float %7032, 0.000000e+00
  %7034 = fcmp fast olt float %7032, 0.000000e+00
  %7035 = zext i1 %7033 to i32
  %7036 = zext i1 %7034 to i32
  %7037 = sub nsw i32 %7035, %7036
  %7038 = sitofp i32 %7037 to float
  %7039 = fsub fast float %7020, %5565
  %7040 = call float @dx.op.dot3.f32(i32 55, float %7013, float %7014, float %7039, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7041 = fcmp fast ogt float %7040, 0.000000e+00
  %7042 = fcmp fast olt float %7040, 0.000000e+00
  %7043 = zext i1 %7041 to i32
  %7044 = zext i1 %7042 to i32
  %7045 = sub nsw i32 %7043, %7044
  %7046 = sitofp i32 %7045 to float
  %7047 = fcmp fast une float %7038, %7046
  br i1 %7047, label %7048, label %7058

; <label>:7048                                    ; preds = %7007
  %7049 = fmul fast float %7031, %7026
  %7050 = fmul fast float %7031, %7025
  %7051 = fmul fast float %7031, %7024
  %7052 = fmul fast float %7051, %7051
  %7053 = fmul fast float %7050, %7050
  %7054 = fadd fast float %7052, %7053
  %7055 = fmul fast float %7049, %7049
  %7056 = fadd fast float %7054, %7055
  %7057 = call float @dx.op.unary.f32(i32 24, float %7056)  ; Sqrt(value)
  br label %7068

; <label>:7058                                    ; preds = %7007
  %7059 = icmp slt i32 %7037, 0
  br i1 %7059, label %7060, label %7068

; <label>:7060                                    ; preds = %7058
  %7061 = fsub fast float %157, %7020
  %7062 = fmul fast float %7013, %7013
  %7063 = fmul fast float %7014, %7014
  %7064 = fadd fast float %7062, %7063
  %7065 = fmul fast float %7061, %7061
  %7066 = fadd fast float %7064, %7065
  %7067 = call float @dx.op.unary.f32(i32 24, float %7066)  ; Sqrt(value)
  br label %7068

; <label>:7068                                    ; preds = %7060, %7058, %7048
  %7069 = phi float [ %7057, %7048 ], [ %7067, %7060 ], [ 0.000000e+00, %7058 ]
  %7070 = fsub fast float -0.000000e+00, %7069
  %7071 = select i1 %7012, float -0.000000e+00, float %7070
  %7072 = fmul fast float %5566, 0x3FF7154760000000
  %7073 = fmul fast float %7072, %7071
  %7074 = fmul fast float %5567, 0x3FF7154760000000
  %7075 = fmul fast float %7074, %7071
  %7076 = fmul fast float %5568, 0x3FF7154760000000
  %7077 = fmul fast float %7076, %7071
  %7078 = call float @dx.op.unary.f32(i32 21, float %7073)  ; Exp(value)
  %7079 = call float @dx.op.unary.f32(i32 21, float %7075)  ; Exp(value)
  %7080 = call float @dx.op.unary.f32(i32 21, float %7077)  ; Exp(value)
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7082 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7083 = call float @dx.op.unary.f32(i32 7, float %7080)  ; Saturate(value)
  %7084 = fmul fast float %7008, %7081
  %7085 = fmul fast float %7009, %7082
  %7086 = fmul fast float %7010, %7083
  %7087 = fsub fast float %6190, %175
  %7088 = fsub fast float %6191, %176
  %7089 = fsub fast float %6192, %177
  %7090 = call float @dx.op.dot3.f32(i32 55, float %7087, float %7088, float %7089, float %7087, float %7088, float %7089)  ; Dot3(ax,ay,az,bx,by,bz)
  %7091 = call float @dx.op.unary.f32(i32 25, float %7090)  ; Rsqrt(value)
  %7092 = fmul fast float %7091, %7087
  %7093 = fmul fast float %7091, %7088
  %7094 = fmul fast float %7091, %7089
  %7095 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6191, float %6192, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %7096 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %7092, float %7093, float %7094)  ; Dot3(ax,ay,az,bx,by,bz)
  %7097 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7098 = fmul fast float %7097, %7097
  %7099 = fmul fast float %7098, %5775
  %7100 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7101 = fmul fast float %7100, %7097
  %7102 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5755, float %5756, float %7092, float %7093, float %7094)  ; Dot3(ax,ay,az,bx,by,bz)
  %7103 = fmul fast float %7102, %7102
  %7104 = call float @dx.op.unary.f32(i32 6, float %7095)  ; FAbs(value)
  %7105 = call float @dx.op.binary.f32(i32 35, float %6158, float 0x3F847AE140000000)  ; FMax(a,b)
  %7106 = fmul fast float %7105, %7105
  %7107 = fmul fast float %7106, %7106
  %7108 = fsub fast float 1.000000e+00, %7107
  %7109 = fmul fast float %5762, %5762
  %7110 = fmul fast float %7109, %7108
  %7111 = fadd fast float %7110, %7107
  %7112 = bitcast float %7111 to i32
  %7113 = ashr i32 %7112, 1
  %7114 = add nsw i32 %7113, 532487669
  %7115 = bitcast i32 %7114 to float
  %7116 = fadd fast float %7115, %5762
  %7117 = fmul fast float %7107, %7103
  %7118 = fsub fast float 1.000000e+00, %7103
  %7119 = fadd fast float %7118, %7117
  %7120 = fmul fast float %7104, %7104
  %7121 = fmul fast float %7120, %7108
  %7122 = fadd fast float %7121, %7107
  %7123 = bitcast float %7122 to i32
  %7124 = ashr i32 %7123, 1
  %7125 = add nsw i32 %7124, 532487669
  %7126 = bitcast i32 %7125 to float
  %7127 = fadd fast float %7126, %7104
  %7128 = fmul fast float %7119, %7119
  %7129 = fmul fast float %7128, %7116
  %7130 = fmul fast float %7129, %7127
  %7131 = fdiv fast float 0x3FF0A00000000000, %7130
  %7132 = fmul fast float %7131, %7107
  %7133 = fmul fast float %6020, 0x3FF9999980000000
  %7134 = fsub fast float 5.000000e+00, %7133
  %7135 = call float @dx.op.unary.f32(i32 6, float %7096)  ; FAbs(value)
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = fmul fast float %6020, 0x41D9660740000000
  %7138 = fadd fast float %7137, 0xC1EFBF8940000000
  %7139 = bitcast float %7136 to i32
  %7140 = sitofp i32 %7139 to float
  %7141 = fmul fast float %7140, %7134
  %7142 = fadd fast float %7138, %7141
  %7143 = fptosi float %7142 to i32
  %7144 = bitcast i32 %7143 to float
  %7145 = fsub fast float 1.000000e+00, %5751
  %7146 = fsub fast float 1.000000e+00, %5752
  %7147 = fsub fast float 1.000000e+00, %5760
  %7148 = fmul fast float %7144, %7145
  %7149 = fmul fast float %7144, %7146
  %7150 = fmul fast float %7144, %7147
  %7151 = fadd fast float %7148, %5751
  %7152 = fadd fast float %7149, %5752
  %7153 = fadd fast float %7150, %5760
  br i1 %6043, label %7154, label %7177

; <label>:7154                                    ; preds = %7068
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %7135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.f32 %7155, 1
  %7158 = extractvalue %dx.types.ResRet.f32 %7155, 2
  %7159 = fadd fast float %7156, -5.000000e-01
  %7160 = fadd fast float %7157, -5.000000e-01
  %7161 = fadd fast float %7158, -5.000000e-01
  %7162 = fmul fast float %5751, 4.000000e+00
  %7163 = fmul fast float %7162, %7145
  %7164 = fmul fast float %7163, %7159
  %7165 = fmul fast float %5752, 4.000000e+00
  %7166 = fmul fast float %7165, %7146
  %7167 = fmul fast float %7166, %7160
  %7168 = fmul fast float %5760, 4.000000e+00
  %7169 = fmul fast float %7168, %7147
  %7170 = fmul fast float %7169, %7161
  %7171 = fadd fast float %7164, %7151
  %7172 = fadd fast float %7167, %7152
  %7173 = fadd fast float %7170, %7153
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7176 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  br label %7177

; <label>:7177                                    ; preds = %7154, %7068
  %7178 = phi float [ %7174, %7154 ], [ %7151, %7068 ]
  %7179 = phi float [ %7175, %7154 ], [ %7152, %7068 ]
  %7180 = phi float [ %7176, %7154 ], [ %7153, %7068 ]
  %7181 = fmul fast float %7095, 9.843750e-01
  %7182 = fadd fast float %7181, 7.812500e-03
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7182, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.ResRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.ResRet.f32 %7183, 2
  %7187 = extractvalue %dx.types.ResRet.f32 %7183, 3
  %7188 = fsub fast float %7186, %7184
  %7189 = fsub fast float %7187, %7185
  %7190 = fmul fast float %7188, %6030
  %7191 = fmul fast float %7189, %6030
  %7192 = fadd fast float %7190, %7184
  %7193 = fadd fast float %7191, %7185
  %7194 = fmul fast float %7192, %5751
  %7195 = fmul fast float %7192, %5752
  %7196 = fmul fast float %7192, %5760
  %7197 = fadd fast float %7194, %7193
  %7198 = fadd fast float %7195, %7193
  %7199 = fadd fast float %7196, %7193
  br i1 %6043, label %7200, label %7223

; <label>:7200                                    ; preds = %7177
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %7095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = extractvalue %dx.types.ResRet.f32 %7201, 2
  %7205 = fadd fast float %7202, -5.000000e-01
  %7206 = fadd fast float %7203, -5.000000e-01
  %7207 = fadd fast float %7204, -5.000000e-01
  %7208 = fmul fast float %5751, 4.000000e+00
  %7209 = fmul fast float %7208, %7145
  %7210 = fmul fast float %7209, %7205
  %7211 = fmul fast float %5752, 4.000000e+00
  %7212 = fmul fast float %7211, %7146
  %7213 = fmul fast float %7212, %7206
  %7214 = fmul fast float %5760, 4.000000e+00
  %7215 = fmul fast float %7214, %7147
  %7216 = fmul fast float %7215, %7207
  %7217 = fadd fast float %7210, %7197
  %7218 = fadd fast float %7213, %7198
  %7219 = fadd fast float %7216, %7199
  %7220 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  br label %7223

; <label>:7223                                    ; preds = %7200, %7177
  %7224 = phi float [ %7220, %7200 ], [ %7197, %7177 ]
  %7225 = phi float [ %7221, %7200 ], [ %7198, %7177 ]
  %7226 = phi float [ %7222, %7200 ], [ %7199, %7177 ]
  %7227 = call float @dx.op.binary.f32(i32 35, float %7225, float %7226)  ; FMax(a,b)
  %7228 = call float @dx.op.binary.f32(i32 35, float %7224, float %7227)  ; FMax(a,b)
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = call float @dx.op.binary.f32(i32 35, float %7104, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7231 = fdiv fast float %4450, %7230
  %7232 = fmul fast float %6098, %7231
  %7233 = fmul fast float %6100, %7231
  %7234 = fmul fast float %6102, %7231
  %7235 = call float @dx.op.unary.f32(i32 21, float %7232)  ; Exp(value)
  %7236 = call float @dx.op.unary.f32(i32 21, float %7233)  ; Exp(value)
  %7237 = call float @dx.op.unary.f32(i32 21, float %7234)  ; Exp(value)
  %7238 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7239 = call float @dx.op.unary.f32(i32 7, float %7236)  ; Saturate(value)
  %7240 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7241 = select i1 %6095, float %7238, float 0.000000e+00
  %7242 = select i1 %6096, float %7239, float 0.000000e+00
  %7243 = select i1 %6097, float %7240, float 0.000000e+00
  %7244 = fsub fast float -0.000000e+00, %5754
  %7245 = fsub fast float -0.000000e+00, %5755
  %7246 = fsub fast float -0.000000e+00, %5756
  %7247 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6191, float %6192, float %7244, float %7245, float %7246)  ; Dot3(ax,ay,az,bx,by,bz)
  %7248 = call float @dx.op.unary.f32(i32 7, float %7247)  ; Saturate(value)
  %7249 = fmul fast float %7248, 9.843750e-01
  %7250 = fadd fast float %7249, 7.812500e-03
  %7251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7250, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7252 = extractvalue %dx.types.ResRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.ResRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.ResRet.f32 %7251, 2
  %7255 = extractvalue %dx.types.ResRet.f32 %7251, 3
  %7256 = fsub fast float %7254, %7252
  %7257 = fsub fast float %7255, %7253
  %7258 = fmul fast float %7256, %6030
  %7259 = fmul fast float %7257, %6030
  %7260 = fadd fast float %7258, %7252
  %7261 = fadd fast float %7259, %7253
  %7262 = fmul fast float %7260, %5751
  %7263 = fmul fast float %7260, %5752
  %7264 = fmul fast float %7260, %5760
  %7265 = fadd fast float %7262, %7261
  %7266 = fadd fast float %7263, %7261
  %7267 = fadd fast float %7264, %7261
  br i1 %6043, label %7268, label %7291

; <label>:7268                                    ; preds = %7223
  %7269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %7248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = fadd fast float %7270, -5.000000e-01
  %7274 = fadd fast float %7271, -5.000000e-01
  %7275 = fadd fast float %7272, -5.000000e-01
  %7276 = fmul fast float %5751, 4.000000e+00
  %7277 = fmul fast float %7276, %7145
  %7278 = fmul fast float %7277, %7273
  %7279 = fmul fast float %5752, 4.000000e+00
  %7280 = fmul fast float %7279, %7146
  %7281 = fmul fast float %7280, %7274
  %7282 = fmul fast float %5760, 4.000000e+00
  %7283 = fmul fast float %7282, %7147
  %7284 = fmul fast float %7283, %7275
  %7285 = fadd fast float %7278, %7265
  %7286 = fadd fast float %7281, %7266
  %7287 = fadd fast float %7284, %7267
  %7288 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7289 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7290 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  br label %7291

; <label>:7291                                    ; preds = %7268, %7223
  %7292 = phi float [ %7288, %7268 ], [ %7265, %7223 ]
  %7293 = phi float [ %7289, %7268 ], [ %7266, %7223 ]
  %7294 = phi float [ %7290, %7268 ], [ %7267, %7223 ]
  %7295 = call float @dx.op.binary.f32(i32 35, float %7293, float %7294)  ; FMax(a,b)
  %7296 = call float @dx.op.binary.f32(i32 35, float %7292, float %7295)  ; FMax(a,b)
  %7297 = fsub fast float 1.000000e+00, %7296
  %7298 = fmul fast float %6158, %6163
  %7299 = fadd fast float %6165, %7298
  %7300 = call float @dx.op.unary.f32(i32 7, float %7299)  ; Saturate(value)
  %7301 = fsub fast float %6190, %5768
  %7302 = fsub fast float %6191, %5769
  %7303 = fsub fast float %6192, %5770
  %7304 = call float @dx.op.dot3.f32(i32 55, float %7301, float %7302, float %7303, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = call float @dx.op.unary.f32(i32 25, float %7304)  ; Rsqrt(value)
  %7306 = fmul fast float %7305, %7301
  %7307 = fmul fast float %7305, %7302
  %7308 = fmul fast float %7305, %7303
  %7309 = call float @dx.op.dot3.f32(i32 55, float %7244, float %7245, float %7246, float %7306, float %7307, float %7308)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = fmul fast float %7309, %7309
  %7311 = call float @dx.op.unary.f32(i32 6, float %7248)  ; FAbs(value)
  %7312 = call float @dx.op.binary.f32(i32 35, float %7300, float 0x3F847AE140000000)  ; FMax(a,b)
  %7313 = fmul fast float %7312, %7312
  %7314 = fmul fast float %7313, %7313
  %7315 = fsub fast float 1.000000e+00, %7314
  %7316 = fmul fast float %7109, %7315
  %7317 = fadd fast float %7316, %7314
  %7318 = bitcast float %7317 to i32
  %7319 = ashr i32 %7318, 1
  %7320 = add nsw i32 %7319, 532487669
  %7321 = bitcast i32 %7320 to float
  %7322 = fadd fast float %7321, %5762
  %7323 = fmul fast float %7314, %7310
  %7324 = fsub fast float 1.000000e+00, %7310
  %7325 = fadd fast float %7324, %7323
  %7326 = fmul fast float %7311, %7311
  %7327 = fmul fast float %7326, %7315
  %7328 = fadd fast float %7327, %7314
  %7329 = bitcast float %7328 to i32
  %7330 = ashr i32 %7329, 1
  %7331 = add nsw i32 %7330, 532487669
  %7332 = bitcast i32 %7331 to float
  %7333 = fadd fast float %7332, %7311
  %7334 = fmul fast float %7325, %7325
  %7335 = fmul fast float %7334, %7322
  %7336 = fmul fast float %7335, %7333
  %7337 = fdiv fast float 0x3FF0A00000000000, %7336
  %7338 = fmul fast float %7337, %7314
  %7339 = fmul fast float %7248, %7241
  %7340 = fmul fast float %7248, %7242
  %7341 = fmul fast float %7248, %7243
  %7342 = fmul fast float %7339, %7297
  %7343 = fmul fast float %7342, %7338
  %7344 = fmul fast float %7340, %7297
  %7345 = fmul fast float %7344, %7338
  %7346 = fmul fast float %7341, %7297
  %7347 = fmul fast float %7346, %7338
  %7348 = fmul fast float %7178, %7132
  %7349 = fmul fast float %7179, %7132
  %7350 = fmul fast float %7180, %7132
  %7351 = fsub fast float 1.000000e+00, %7096
  %7352 = bitcast float %7351 to i32
  %7353 = sitofp i32 %7352 to float
  %7354 = fmul fast float %7353, 5.000000e+00
  %7355 = fadd fast float %7354, 0xC1EFBF8940000000
  %7356 = fptosi float %7355 to i32
  %7357 = bitcast i32 %7356 to float
  %7358 = fmul fast float %7357, %5114
  %7359 = fmul fast float %7229, %7358
  %7360 = fmul fast float %7359, %6090
  %7361 = fmul fast float %7359, %6091
  %7362 = fmul fast float %7359, %6092
  %7363 = fadd fast float %7360, %7348
  %7364 = fadd fast float %7361, %7349
  %7365 = fadd fast float %7362, %7350
  %7366 = fmul fast float %7363, %7101
  %7367 = fmul fast float %7364, %7101
  %7368 = fmul fast float %7365, %7101
  %7369 = fmul fast float %7101, %7084
  %7370 = fmul fast float %7369, %7229
  %7371 = fmul fast float %7101, %7085
  %7372 = fmul fast float %7371, %7229
  %7373 = fmul fast float %7101, %7086
  %7374 = fmul fast float %7373, %7229
  %7375 = fadd fast float %7366, %7343
  %7376 = fadd fast float %7367, %7345
  %7377 = fadd fast float %7368, %7347
  %7378 = fmul fast float %7375, %7084
  %7379 = fmul fast float %7376, %7085
  %7380 = fmul fast float %7377, %7086
  %7381 = fadd fast float %7370, %6180
  %7382 = fmul fast float %7381, %5139
  %7383 = fadd fast float %7372, %6182
  %7384 = fmul fast float %7383, %5139
  %7385 = fadd fast float %7374, %6184
  %7386 = fmul fast float %7385, %5139
  %7387 = fadd fast float %7378, %6143
  %7388 = fmul fast float %7387, %5139
  %7389 = fadd fast float %7379, %6146
  %7390 = fmul fast float %7389, %5139
  %7391 = fadd fast float %7380, %6149
  %7392 = fmul fast float %7391, %5139
  br label %7393

; <label>:7393                                    ; preds = %7291, %7002, %6070
  %7394 = phi float [ %6144, %6070 ], [ %6144, %7002 ], [ %7388, %7291 ]
  %7395 = phi float [ %6147, %6070 ], [ %6147, %7002 ], [ %7390, %7291 ]
  %7396 = phi float [ %6150, %6070 ], [ %6150, %7002 ], [ %7392, %7291 ]
  %7397 = phi float [ %6181, %6070 ], [ %6181, %7002 ], [ %7382, %7291 ]
  %7398 = phi float [ %6183, %6070 ], [ %6183, %7002 ], [ %7384, %7291 ]
  %7399 = phi float [ %6185, %6070 ], [ %6185, %7002 ], [ %7386, %7291 ]
  %7400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.i32 %7400, 0
  %7402 = icmp eq i32 %7401, 0
  br i1 %7402, label %8177, label %7403

; <label>:7403                                    ; preds = %7393
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7407 = fmul fast float %7405, %100
  %7408 = fmul fast float %7406, %101
  %7409 = fptoui float %7407 to i32
  %7410 = fptoui float %7408 to i32
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7415 = fadd fast float %91, -4.000000e+00
  %7416 = call float @dx.op.binary.f32(i32 35, float %7415, float 0.000000e+00)  ; FMax(a,b)
  %7417 = fadd fast float %7416, %7412
  %7418 = fmul fast float %7417, %7413
  %7419 = call float @dx.op.unary.f32(i32 23, float %7418)  ; Log(value)
  %7420 = fmul fast float %7419, %7414
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7423 = fmul fast float %7420, %7422
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.i32 %7425, 1
  %7427 = add i32 %7426, -1
  %7428 = uitofp i32 %7426 to float
  %7429 = fmul fast float %7428, %7424
  %7430 = fptoui float %7429 to i32
  %7431 = call i32 @dx.op.binary.i32(i32 40, i32 %7430, i32 %7427)  ; UMin(a,b)
  %7432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.i32 %7432, 2
  %7434 = extractvalue %dx.types.CBufRet.i32 %7432, 3
  %7435 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7410, i32 %7433, i32 %7409)  ; UMad(a,b,c)
  %7436 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7431, i32 %7434, i32 %7435)  ; UMad(a,b,c)
  %7437 = add nsw i32 %7401, -1
  %7438 = call i32 @dx.op.binary.i32(i32 37, i32 %7437, i32 0)  ; IMax(a,b)
  %7439 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %7440 = fptoui float %7439 to i32
  %7441 = lshr i32 %7440, 5
  %7442 = call i32 @dx.op.binary.i32(i32 40, i32 %7441, i32 8191)  ; UMin(a,b)
  %7443 = shl i32 %7442, 2
  %7444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.i32 %7444, 0
  %7446 = lshr i32 %7445, 16
  %7447 = and i32 %7445, 65535
  %7448 = lshr i32 %7445, 21
  %7449 = lshr i32 %7447, 5
  %7450 = call i32 @dx.op.binary.i32(i32 40, i32 %7449, i32 %7438)  ; UMin(a,b)
  %7451 = icmp ugt i32 %7448, %7450
  br i1 %7451, label %8177, label %7452

; <label>:7452                                    ; preds = %7403
  br label %7453

; <label>:7453                                    ; preds = %8167, %7452
  %7454 = phi i32 [ %8174, %8167 ], [ %7448, %7452 ]
  %7455 = phi float [ %8168, %8167 ], [ %7394, %7452 ]
  %7456 = phi float [ %8169, %8167 ], [ %7395, %7452 ]
  %7457 = phi float [ %8170, %8167 ], [ %7396, %7452 ]
  %7458 = phi float [ %8171, %8167 ], [ %7397, %7452 ]
  %7459 = phi float [ %8172, %8167 ], [ %7398, %7452 ]
  %7460 = phi float [ %8173, %8167 ], [ %7399, %7452 ]
  %7461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.i32 %7461, 0
  %7463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7436, i32 %7462, i32 %7454)  ; UMad(a,b,c)
  %7464 = shl i32 %7463, 2
  %7465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.i32 %7465, 0
  %7467 = shl i32 %7454, 5
  %7468 = sub nsw i32 %7446, %7467
  %7469 = call i32 @dx.op.binary.i32(i32 37, i32 %7468, i32 0)  ; IMax(a,b)
  %7470 = call i32 @dx.op.binary.i32(i32 38, i32 %7469, i32 31)  ; IMin(a,b)
  %7471 = sub nsw i32 1, %7446
  %7472 = add nsw i32 %7471, %7447
  %7473 = call i32 @dx.op.binary.i32(i32 37, i32 %7472, i32 0)  ; IMax(a,b)
  %7474 = call i32 @dx.op.binary.i32(i32 38, i32 %7473, i32 32)  ; IMin(a,b)
  %7475 = and i32 %7474, 31
  %7476 = shl i32 -1, %7475
  %7477 = xor i32 %7476, -1
  %7478 = and i32 %7470, 31
  %7479 = shl i32 %7477, %7478
  %7480 = icmp eq i32 %7474, 32
  %7481 = select i1 %7480, i32 -1, i32 %7479
  %7482 = and i32 %7481, %7466
  %7483 = icmp eq i32 %7482, 0
  br i1 %7483, label %8167, label %7484

; <label>:7484                                    ; preds = %7453
  br label %7485

; <label>:7485                                    ; preds = %7620, %7484
  %7486 = phi i32 [ %7497, %7620 ], [ %7482, %7484 ]
  %7487 = phi float [ %7621, %7620 ], [ %7455, %7484 ]
  %7488 = phi float [ %7622, %7620 ], [ %7456, %7484 ]
  %7489 = phi float [ %7623, %7620 ], [ %7457, %7484 ]
  %7490 = phi float [ %7624, %7620 ], [ %7458, %7484 ]
  %7491 = phi float [ %7625, %7620 ], [ %7459, %7484 ]
  %7492 = phi float [ %7626, %7620 ], [ %7460, %7484 ]
  %7493 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7486)  ; FirstbitLo(value)
  %7494 = add i32 %7493, %7467
  %7495 = and i32 %7493, 31
  %7496 = shl i32 1, %7495
  %7497 = xor i32 %7496, %7486
  %7498 = mul i32 %7494, 112
  %7499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = or i32 %7498, 12
  %7504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7503, i32 undef)  ; BufferLoad(srv,index,wot)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = add i32 %7498, 16
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = add i32 %7498, 28
  %7512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7511, i32 undef)  ; BufferLoad(srv,index,wot)
  %7513 = extractvalue %dx.types.ResRet.i32 %7512, 0
  %7514 = add i32 %7498, 44
  %7515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7514, i32 undef)  ; BufferLoad(srv,index,wot)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = add i32 %7498, 48
  %7518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7517, i32 undef)  ; BufferLoad(srv,index,wot)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.ResRet.f32 %7518, 3
  %7523 = add i32 %7498, 64
  %7524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7523, i32 undef)  ; BufferLoad(srv,index,wot)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.ResRet.f32 %7524, 1
  %7527 = extractvalue %dx.types.ResRet.f32 %7524, 2
  %7528 = extractvalue %dx.types.ResRet.f32 %7524, 3
  %7529 = add i32 %7498, 80
  %7530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7529, i32 undef)  ; BufferLoad(srv,index,wot)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 2
  %7533 = add i32 %7498, 92
  %7534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7533, i32 undef)  ; BufferLoad(srv,index,wot)
  %7535 = extractvalue %dx.types.ResRet.i32 %7534, 0
  %7536 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7537 = select i1 %249, float %7531, float %7500
  %7538 = select i1 %249, float %7536, float %7501
  %7539 = select i1 %249, float %7532, float %7502
  %7540 = and i32 %7535, 65535
  %7541 = uitofp i32 %7540 to float
  %7542 = lshr i32 %7535, 16
  %7543 = uitofp i32 %7542 to float
  %7544 = and i32 %7513, 65535
  %7545 = and i32 %7513, 50331648
  %7546 = icmp slt i32 %7513, 0
  %7547 = icmp eq i32 %7545, 33554432
  %7548 = fsub fast float %7519, %155
  %7549 = fsub fast float %7520, %156
  %7550 = fsub fast float %7521, %157
  %7551 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7550, float %7548, float %7549, float %7550)  ; Dot3(ax,ay,az,bx,by,bz)
  %7552 = call float @dx.op.unary.f32(i32 24, float %7551)  ; Sqrt(value)
  %7553 = fdiv fast float 1.000000e+00, %7552
  %7554 = fmul fast float %7553, %7548
  %7555 = fmul fast float %7553, %7549
  %7556 = fmul fast float %7553, %7550
  %7557 = fadd fast float %7552, %7505
  %7558 = fdiv fast float 1.000000e+00, %7557
  %7559 = fmul float %7516, %7558
  %7560 = fmul float %7559, %7559
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  br i1 %7547, label %7562, label %7583

; <label>:7562                                    ; preds = %7485
  %7563 = fmul fast float %7527, %7508
  %7564 = fmul fast float %7527, %7509
  %7565 = fmul fast float %7527, %7510
  %7566 = fadd fast float %7548, %7563
  %7567 = fadd fast float %7549, %7564
  %7568 = fadd fast float %7550, %7565
  %7569 = call float @dx.op.dot3.f32(i32 55, float %7566, float %7567, float %7568, float %7566, float %7567, float %7568)  ; Dot3(ax,ay,az,bx,by,bz)
  %7570 = call float @dx.op.unary.f32(i32 25, float %7569)  ; Rsqrt(value)
  %7571 = fmul fast float %7570, %7566
  %7572 = fmul fast float %7570, %7567
  %7573 = fmul fast float %7570, %7568
  %7574 = fsub fast float %155, %7519
  %7575 = fsub fast float %156, %7520
  %7576 = fsub fast float %157, %7521
  %7577 = fsub fast float -0.000000e+00, %7574
  %7578 = fsub fast float -0.000000e+00, %7575
  %7579 = fsub fast float -0.000000e+00, %7576
  %7580 = call float @dx.op.dot3.f32(i32 55, float %7577, float %7578, float %7579, float %7508, float %7509, float %7510)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = fcmp fast ogt float %7580, 0.000000e+00
  %7582 = uitofp i1 %7581 to float
  br label %7583

; <label>:7583                                    ; preds = %7562, %7485
  %7584 = phi float [ %7582, %7562 ], [ 1.000000e+00, %7485 ]
  %7585 = phi float [ %7571, %7562 ], [ %7554, %7485 ]
  %7586 = phi float [ %7572, %7562 ], [ %7555, %7485 ]
  %7587 = phi float [ %7573, %7562 ], [ %7556, %7485 ]
  %7588 = call float @dx.op.dot3.f32(i32 55, float %7508, float %7509, float %7510, float %7585, float %7586, float %7587)  ; Dot3(ax,ay,az,bx,by,bz)
  %7589 = fmul fast float %7588, %7588
  %7590 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7591 = fsub fast float 1.000000e+00, %7590
  %7592 = fmul fast float %7591, 5.000000e-01
  %7593 = fcmp fast ogt float %7588, 0.000000e+00
  %7594 = fsub fast float 1.000000e+00, %7592
  %7595 = select i1 %7593, float %7592, float %7594
  %7596 = fmul fast float %7595, %7543
  %7597 = fadd fast float %7596, %7541
  %7598 = fmul fast float %7597, 0x3EF0001000000000
  %7599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7598, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = fmul fast float %7588, %7525
  %7602 = fadd fast float %7601, %7526
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = select i1 %7547, float 1.000000e+00, float %7603
  %7605 = select i1 %7547, float %7603, float 1.000000e+00
  %7606 = fmul fast float %7552, %7522
  %7607 = fsub fast float 1.000000e+00, %7606
  %7608 = fmul fast float %7607, %7528
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7610 = fmul fast float %7609, %7605
  %7611 = fmul fast float %7610, 2.000000e+00
  %7612 = fsub fast float 3.000000e+00, %7611
  %7613 = fmul fast float %7600, %7584
  %7614 = fmul fast float %7610, %7610
  %7615 = fmul fast float %7614, %7613
  %7616 = fmul fast float %7615, %7612
  %7617 = call float @dx.op.binary.f32(i32 36, float %7616, float %7616)  ; FMin(a,b)
  %7618 = call float @dx.op.binary.f32(i32 36, float %7616, float %7617)  ; FMin(a,b)
  %7619 = fcmp fast ogt float %7618, 0.000000e+00
  br i1 %7619, label %7628, label %7620, !dx.controlflow.hints !119

; <label>:7620                                    ; preds = %8120, %7728, %7583
  %7621 = phi float [ %7487, %7728 ], [ %7487, %7583 ], [ %8163, %8120 ]
  %7622 = phi float [ %7488, %7728 ], [ %7488, %7583 ], [ %8164, %8120 ]
  %7623 = phi float [ %7489, %7728 ], [ %7489, %7583 ], [ %8165, %8120 ]
  %7624 = phi float [ %7490, %7728 ], [ %7490, %7583 ], [ %8157, %8120 ]
  %7625 = phi float [ %7491, %7728 ], [ %7491, %7583 ], [ %8158, %8120 ]
  %7626 = phi float [ %7492, %7728 ], [ %7492, %7583 ], [ %8159, %8120 ]
  %7627 = icmp eq i32 %7486, %7496
  br i1 %7627, label %8166, label %7485

; <label>:7628                                    ; preds = %7583
  %7629 = icmp eq i32 %7544, 255
  br i1 %7629, label %7728, label %7630, !dx.controlflow.hints !120

; <label>:7630                                    ; preds = %7628
  %7631 = mul nuw nsw i32 %7544, 176
  %7632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7631, i32 undef)  ; BufferLoad(srv,index,wot)
  %7633 = extractvalue %dx.types.ResRet.f32 %7632, 0
  %7634 = extractvalue %dx.types.ResRet.f32 %7632, 1
  %7635 = extractvalue %dx.types.ResRet.f32 %7632, 2
  %7636 = extractvalue %dx.types.ResRet.f32 %7632, 3
  %7637 = add nuw nsw i32 %7631, 16
  %7638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7637, i32 undef)  ; BufferLoad(srv,index,wot)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = extractvalue %dx.types.ResRet.f32 %7638, 1
  %7641 = add nuw nsw i32 %7631, 32
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = extractvalue %dx.types.ResRet.f32 %7642, 1
  %7645 = extractvalue %dx.types.ResRet.f32 %7642, 2
  %7646 = add nuw nsw i32 %7631, 48
  %7647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7646, i32 undef)  ; BufferLoad(srv,index,wot)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.ResRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.ResRet.f32 %7647, 2
  %7651 = extractvalue %dx.types.ResRet.f32 %7647, 3
  %7652 = add nuw nsw i32 %7631, 64
  %7653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = extractvalue %dx.types.ResRet.f32 %7653, 1
  %7656 = extractvalue %dx.types.ResRet.f32 %7653, 2
  %7657 = extractvalue %dx.types.ResRet.f32 %7653, 3
  %7658 = add nuw nsw i32 %7631, 80
  %7659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7658, i32 undef)  ; BufferLoad(srv,index,wot)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.ResRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.ResRet.f32 %7659, 3
  %7664 = add nuw nsw i32 %7631, 96
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.ResRet.f32 %7665, 3
  %7670 = bitcast float %7640 to i32
  %7671 = fmul fast float %7645, %107
  %7672 = fmul fast float %7645, %108
  %7673 = fmul fast float %7645, %109
  %7674 = fadd fast float %7671, %155
  %7675 = fadd fast float %7672, %156
  %7676 = fadd fast float %7673, %157
  %7677 = fmul fast float %7674, %7648
  %7678 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7654, float %7677)  ; FMad(a,b,c)
  %7679 = call float @dx.op.tertiary.f32(i32 46, float %7676, float %7660, float %7678)  ; FMad(a,b,c)
  %7680 = fadd fast float %7679, %7666
  %7681 = fmul fast float %7674, %7649
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7655, float %7681)  ; FMad(a,b,c)
  %7683 = call float @dx.op.tertiary.f32(i32 46, float %7676, float %7661, float %7682)  ; FMad(a,b,c)
  %7684 = fadd fast float %7683, %7667
  %7685 = fmul fast float %7674, %7650
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7656, float %7685)  ; FMad(a,b,c)
  %7687 = call float @dx.op.tertiary.f32(i32 46, float %7676, float %7662, float %7686)  ; FMad(a,b,c)
  %7688 = fadd fast float %7687, %7668
  %7689 = fmul fast float %7674, %7651
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7657, float %7689)  ; FMad(a,b,c)
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %7676, float %7663, float %7690)  ; FMad(a,b,c)
  %7692 = fadd fast float %7691, %7669
  %7693 = fdiv fast float %7680, %7692
  %7694 = fdiv fast float %7684, %7692
  %7695 = fdiv fast float %7688, %7692
  %7696 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7695)  ; FMax(a,b)
  %7697 = fmul fast float %260, 0x401921FB60000000
  %7698 = call float @dx.op.unary.f32(i32 13, float %7697)  ; Sin(value)
  %7699 = call float @dx.op.unary.f32(i32 12, float %7697)  ; Cos(value)
  %7700 = fsub fast float -0.000000e+00, %7698
  %7701 = fmul fast float %7635, 5.000000e-01
  %7702 = call float @dx.op.dot2.f32(i32 54, float %260, float %260, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7703 = call float @dx.op.unary.f32(i32 22, float %7702)  ; Frc(value)
  %7704 = fmul fast float %7703, 0x404A7DD040000000
  %7705 = call float @dx.op.unary.f32(i32 22, float %7704)  ; Frc(value)
  %7706 = fmul fast float %7705, %7644
  %7707 = fadd fast float %7706, %7701
  %7708 = call float @dx.op.tertiary.f32(i32 46, float %7707, float %7700, float 0.000000e+00)  ; FMad(a,b,c)
  %7709 = call float @dx.op.tertiary.f32(i32 46, float %7707, float %7699, float 0.000000e+00)  ; FMad(a,b,c)
  %7710 = fadd fast float %7708, %7693
  %7711 = fadd fast float %7709, %7694
  %7712 = fmul fast float %7710, %7639
  %7713 = fmul fast float %7711, %7639
  %7714 = call float @dx.op.binary.f32(i32 35, float %7712, float %7635)  ; FMax(a,b)
  %7715 = call float @dx.op.binary.f32(i32 35, float %7713, float %7635)  ; FMax(a,b)
  %7716 = call float @dx.op.binary.f32(i32 36, float %7714, float %7636)  ; FMin(a,b)
  %7717 = call float @dx.op.binary.f32(i32 36, float %7715, float %7636)  ; FMin(a,b)
  %7718 = fadd fast float %7716, %7633
  %7719 = fadd fast float %7717, %7634
  %7720 = uitofp i32 %7670 to float
  %7721 = fadd fast float %7696, %7643
  %7722 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7718, float %7719, float %7720, float undef, i32 0, i32 0, i32 undef, float %7721)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 0
  %7724 = fadd fast float %7723, -1.000000e+00
  %7725 = fmul fast float %7724, %7604
  %7726 = fadd fast float %7725, 1.000000e+00
  %7727 = fmul fast float %7726, %7616
  br label %7728

; <label>:7728                                    ; preds = %7630, %7628
  %7729 = phi float [ %7727, %7630 ], [ %7616, %7628 ]
  %7730 = call float @dx.op.binary.f32(i32 36, float %7729, float %7729)  ; FMin(a,b)
  %7731 = call float @dx.op.binary.f32(i32 36, float %7729, float %7730)  ; FMin(a,b)
  %7732 = fcmp fast ogt float %7731, 0.000000e+00
  br i1 %7732, label %7733, label %7620, !dx.controlflow.hints !121

; <label>:7733                                    ; preds = %7728
  %7734 = fmul fast float %7729, %7537
  %7735 = fmul fast float %7729, %7538
  %7736 = fmul fast float %7729, %7539
  %7737 = fsub fast float %7521, %5565
  %7738 = fcmp fast ogt float %7737, 0.000000e+00
  %7739 = fsub fast float %157, %5565
  %7740 = fcmp fast ogt float %7739, 0.000000e+00
  %7741 = xor i1 %7740, %7738
  %7742 = fsub fast float %5565, %7521
  %7743 = fmul fast float %7742, 2.000000e+00
  %7744 = fadd fast float %7743, %7521
  %7745 = select i1 %7741, float %7521, float %7744
  %7746 = fsub fast float %7745, %157
  %7747 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7746, float %7548, float %7549, float %7746)  ; Dot3(ax,ay,az,bx,by,bz)
  %7748 = call float @dx.op.unary.f32(i32 25, float %7747)  ; Rsqrt(value)
  %7749 = fmul fast float %7748, %7548
  %7750 = fmul fast float %7748, %7549
  %7751 = fmul fast float %7748, %7746
  %7752 = fsub fast float %5565, %157
  %7753 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7752)  ; Dot3(ax,ay,az,bx,by,bz)
  %7754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7749, float %7750, float %7751)  ; Dot3(ax,ay,az,bx,by,bz)
  %7755 = fdiv fast float 1.000000e+00, %7754
  %7756 = fmul fast float %7755, %7753
  %7757 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7739, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7758 = fcmp fast ogt float %7757, 0.000000e+00
  %7759 = fcmp fast olt float %7757, 0.000000e+00
  %7760 = zext i1 %7758 to i32
  %7761 = zext i1 %7759 to i32
  %7762 = sub nsw i32 %7760, %7761
  %7763 = sitofp i32 %7762 to float
  %7764 = fsub fast float %7745, %5565
  %7765 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7764, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7766 = fcmp fast ogt float %7765, 0.000000e+00
  %7767 = fcmp fast olt float %7765, 0.000000e+00
  %7768 = zext i1 %7766 to i32
  %7769 = zext i1 %7767 to i32
  %7770 = sub nsw i32 %7768, %7769
  %7771 = sitofp i32 %7770 to float
  %7772 = fcmp fast une float %7763, %7771
  br i1 %7772, label %7773, label %7783

; <label>:7773                                    ; preds = %7733
  %7774 = fmul fast float %7756, %7751
  %7775 = fmul fast float %7756, %7750
  %7776 = fmul fast float %7756, %7749
  %7777 = fmul fast float %7776, %7776
  %7778 = fmul fast float %7775, %7775
  %7779 = fadd fast float %7777, %7778
  %7780 = fmul fast float %7774, %7774
  %7781 = fadd fast float %7779, %7780
  %7782 = call float @dx.op.unary.f32(i32 24, float %7781)  ; Sqrt(value)
  br label %7795

; <label>:7783                                    ; preds = %7733
  %7784 = icmp slt i32 %7762, 0
  br i1 %7784, label %7785, label %7795

; <label>:7785                                    ; preds = %7783
  %7786 = fsub fast float %155, %7519
  %7787 = fsub fast float %156, %7520
  %7788 = fsub fast float %157, %7745
  %7789 = fmul fast float %7786, %7786
  %7790 = fmul fast float %7787, %7787
  %7791 = fadd fast float %7789, %7790
  %7792 = fmul fast float %7788, %7788
  %7793 = fadd fast float %7791, %7792
  %7794 = call float @dx.op.unary.f32(i32 24, float %7793)  ; Sqrt(value)
  br label %7795

; <label>:7795                                    ; preds = %7785, %7783, %7773
  %7796 = phi float [ %7782, %7773 ], [ %7794, %7785 ], [ 0.000000e+00, %7783 ]
  %7797 = and i1 %7740, %7738
  %7798 = fsub fast float -0.000000e+00, %7796
  %7799 = select i1 %7797, float -0.000000e+00, float %7798
  %7800 = fmul fast float %5566, 0x3FF7154760000000
  %7801 = fmul fast float %7800, %7799
  %7802 = fmul fast float %5567, 0x3FF7154760000000
  %7803 = fmul fast float %7802, %7799
  %7804 = fmul fast float %5568, 0x3FF7154760000000
  %7805 = fmul fast float %7804, %7799
  %7806 = call float @dx.op.unary.f32(i32 21, float %7801)  ; Exp(value)
  %7807 = call float @dx.op.unary.f32(i32 21, float %7803)  ; Exp(value)
  %7808 = call float @dx.op.unary.f32(i32 21, float %7805)  ; Exp(value)
  %7809 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7810 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7811 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7812 = fmul fast float %7734, %7809
  %7813 = fmul fast float %7735, %7810
  %7814 = fmul fast float %7736, %7811
  %7815 = fsub fast float %7554, %175
  %7816 = fsub fast float %7555, %176
  %7817 = fsub fast float %7556, %177
  %7818 = call float @dx.op.dot3.f32(i32 55, float %7815, float %7816, float %7817, float %7815, float %7816, float %7817)  ; Dot3(ax,ay,az,bx,by,bz)
  %7819 = call float @dx.op.unary.f32(i32 25, float %7818)  ; Rsqrt(value)
  %7820 = fmul fast float %7819, %7815
  %7821 = fmul fast float %7819, %7816
  %7822 = fmul fast float %7819, %7817
  %7823 = call float @dx.op.dot3.f32(i32 55, float %7554, float %7555, float %7556, float %5754, float %5755, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %7824 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %7820, float %7821, float %7822)  ; Dot3(ax,ay,az,bx,by,bz)
  %7825 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7826 = fmul fast float %7825, %7561
  %7827 = fmul fast float %7825, %7825
  %7828 = fmul fast float %7827, %5775
  %7829 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  %7830 = fmul fast float %7826, %7829
  %7831 = bitcast float %7551 to i32
  %7832 = ashr i32 %7831, 1
  %7833 = sub nsw i32 1597463007, %7832
  %7834 = bitcast i32 %7833 to float
  %7835 = fmul fast float %7834, %7548
  %7836 = fmul fast float %7834, %7549
  %7837 = fmul fast float %7834, %7550
  %7838 = fsub fast float %7835, %175
  %7839 = fsub fast float %7836, %176
  %7840 = fsub fast float %7837, %177
  %7841 = call float @dx.op.dot3.f32(i32 55, float %7838, float %7839, float %7840, float %7838, float %7839, float %7840)  ; Dot3(ax,ay,az,bx,by,bz)
  %7842 = call float @dx.op.unary.f32(i32 25, float %7841)  ; Rsqrt(value)
  %7843 = fmul fast float %7838, %7842
  %7844 = fmul fast float %7839, %7842
  %7845 = fmul fast float %7840, %7842
  %7846 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5755, float %5756, float %7843, float %7844, float %7845)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = fmul fast float %7846, %7846
  %7848 = call float @dx.op.unary.f32(i32 6, float %7823)  ; FAbs(value)
  %7849 = call float @dx.op.binary.f32(i32 35, float %6158, float 0x3F847AE140000000)  ; FMax(a,b)
  %7850 = fmul fast float %7849, %7849
  %7851 = fmul fast float %7850, %7850
  %7852 = fsub fast float 1.000000e+00, %7851
  %7853 = fmul fast float %5762, %5762
  %7854 = fmul fast float %7853, %7852
  %7855 = fadd fast float %7854, %7851
  %7856 = bitcast float %7855 to i32
  %7857 = ashr i32 %7856, 1
  %7858 = add nsw i32 %7857, 532487669
  %7859 = bitcast i32 %7858 to float
  %7860 = fadd fast float %7859, %5762
  %7861 = fmul fast float %7851, %7847
  %7862 = fsub fast float 1.000000e+00, %7847
  %7863 = fadd fast float %7862, %7861
  %7864 = fmul fast float %7848, %7848
  %7865 = fmul fast float %7864, %7852
  %7866 = fadd fast float %7865, %7851
  %7867 = bitcast float %7866 to i32
  %7868 = ashr i32 %7867, 1
  %7869 = add nsw i32 %7868, 532487669
  %7870 = bitcast i32 %7869 to float
  %7871 = fadd fast float %7870, %7848
  %7872 = fmul fast float %7863, %7863
  %7873 = fmul fast float %7872, %7860
  %7874 = fmul fast float %7873, %7871
  %7875 = fdiv fast float 1.000000e+00, %7874
  %7876 = bitcast float %7851 to i32
  %7877 = sitofp i32 %7876 to float
  %7878 = fmul fast float %7877, 0x3FE7F73180000000
  %7879 = fadd fast float %7878, 0x41AFE27C40000000
  %7880 = fptosi float %7879 to i32
  %7881 = bitcast i32 %7880 to float
  %7882 = fmul fast float %7516, 0x3FD80E9D60000000
  %7883 = fmul fast float %7882, %7834
  %7884 = fadd fast float %7881, %7883
  %7885 = bitcast float %7884 to i32
  %7886 = sub nsw i32 2129859010, %7885
  %7887 = bitcast i32 %7886 to float
  %7888 = fmul fast float %7851, %7875
  %7889 = fmul fast float %7888, %7881
  %7890 = fmul fast float %7889, %7887
  %7891 = fmul fast float %6020, 0x3FF9999980000000
  %7892 = fsub fast float 5.000000e+00, %7891
  %7893 = call float @dx.op.unary.f32(i32 6, float %7824)  ; FAbs(value)
  %7894 = fsub fast float 1.000000e+00, %7893
  %7895 = fmul fast float %6020, 0x41D9660740000000
  %7896 = fadd fast float %7895, 0xC1EFBF8940000000
  %7897 = bitcast float %7894 to i32
  %7898 = sitofp i32 %7897 to float
  %7899 = fmul fast float %7898, %7892
  %7900 = fadd fast float %7896, %7899
  %7901 = fptosi float %7900 to i32
  %7902 = bitcast i32 %7901 to float
  %7903 = fsub fast float 1.000000e+00, %5751
  %7904 = fsub fast float 1.000000e+00, %5752
  %7905 = fsub fast float 1.000000e+00, %5760
  %7906 = fmul fast float %7902, %7903
  %7907 = fmul fast float %7902, %7904
  %7908 = fmul fast float %7902, %7905
  %7909 = fadd fast float %7906, %5751
  %7910 = fadd fast float %7907, %5752
  %7911 = fadd fast float %7908, %5760
  br i1 %6043, label %7912, label %7935

; <label>:7912                                    ; preds = %7795
  %7913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %7893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7914 = extractvalue %dx.types.ResRet.f32 %7913, 0
  %7915 = extractvalue %dx.types.ResRet.f32 %7913, 1
  %7916 = extractvalue %dx.types.ResRet.f32 %7913, 2
  %7917 = fadd fast float %7914, -5.000000e-01
  %7918 = fadd fast float %7915, -5.000000e-01
  %7919 = fadd fast float %7916, -5.000000e-01
  %7920 = fmul fast float %5751, 4.000000e+00
  %7921 = fmul fast float %7920, %7903
  %7922 = fmul fast float %7921, %7917
  %7923 = fmul fast float %5752, 4.000000e+00
  %7924 = fmul fast float %7923, %7904
  %7925 = fmul fast float %7924, %7918
  %7926 = fmul fast float %5760, 4.000000e+00
  %7927 = fmul fast float %7926, %7905
  %7928 = fmul fast float %7927, %7919
  %7929 = fadd fast float %7922, %7909
  %7930 = fadd fast float %7925, %7910
  %7931 = fadd fast float %7928, %7911
  %7932 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7933 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7934 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  br label %7935

; <label>:7935                                    ; preds = %7912, %7795
  %7936 = phi float [ %7932, %7912 ], [ %7909, %7795 ]
  %7937 = phi float [ %7933, %7912 ], [ %7910, %7795 ]
  %7938 = phi float [ %7934, %7912 ], [ %7911, %7795 ]
  %7939 = fmul fast float %7823, 9.843750e-01
  %7940 = fadd fast float %7939, 7.812500e-03
  %7941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7940, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7942 = extractvalue %dx.types.ResRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.ResRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.ResRet.f32 %7941, 2
  %7945 = extractvalue %dx.types.ResRet.f32 %7941, 3
  %7946 = fsub fast float %7944, %7942
  %7947 = fsub fast float %7945, %7943
  %7948 = fmul fast float %7946, %6030
  %7949 = fmul fast float %7947, %6030
  %7950 = fadd fast float %7948, %7942
  %7951 = fadd fast float %7949, %7943
  %7952 = fmul fast float %7950, %5751
  %7953 = fmul fast float %7950, %5752
  %7954 = fmul fast float %7950, %5760
  %7955 = fadd fast float %7952, %7951
  %7956 = fadd fast float %7953, %7951
  %7957 = fadd fast float %7954, %7951
  br i1 %6043, label %7958, label %7981

; <label>:7958                                    ; preds = %7935
  %7959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %7823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.ResRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7959, 2
  %7963 = fadd fast float %7960, -5.000000e-01
  %7964 = fadd fast float %7961, -5.000000e-01
  %7965 = fadd fast float %7962, -5.000000e-01
  %7966 = fmul fast float %5751, 4.000000e+00
  %7967 = fmul fast float %7966, %7903
  %7968 = fmul fast float %7967, %7963
  %7969 = fmul fast float %5752, 4.000000e+00
  %7970 = fmul fast float %7969, %7904
  %7971 = fmul fast float %7970, %7964
  %7972 = fmul fast float %5760, 4.000000e+00
  %7973 = fmul fast float %7972, %7905
  %7974 = fmul fast float %7973, %7965
  %7975 = fadd fast float %7968, %7955
  %7976 = fadd fast float %7971, %7956
  %7977 = fadd fast float %7974, %7957
  %7978 = call float @dx.op.unary.f32(i32 7, float %7975)  ; Saturate(value)
  %7979 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  br label %7981

; <label>:7981                                    ; preds = %7958, %7935
  %7982 = phi float [ %7978, %7958 ], [ %7955, %7935 ]
  %7983 = phi float [ %7979, %7958 ], [ %7956, %7935 ]
  %7984 = phi float [ %7980, %7958 ], [ %7957, %7935 ]
  %7985 = call float @dx.op.binary.f32(i32 35, float %7983, float %7984)  ; FMax(a,b)
  %7986 = call float @dx.op.binary.f32(i32 35, float %7982, float %7985)  ; FMax(a,b)
  %7987 = fsub fast float 1.000000e+00, %7986
  %7988 = call float @dx.op.binary.f32(i32 35, float %7848, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7989 = fdiv fast float %4450, %7988
  %7990 = fmul fast float %6098, %7989
  %7991 = fmul fast float %6100, %7989
  %7992 = fmul fast float %6102, %7989
  %7993 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7994 = call float @dx.op.unary.f32(i32 21, float %7991)  ; Exp(value)
  %7995 = call float @dx.op.unary.f32(i32 21, float %7992)  ; Exp(value)
  %7996 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7997 = call float @dx.op.unary.f32(i32 7, float %7994)  ; Saturate(value)
  %7998 = call float @dx.op.unary.f32(i32 7, float %7995)  ; Saturate(value)
  %7999 = select i1 %6095, float %7996, float 0.000000e+00
  %8000 = select i1 %6096, float %7997, float 0.000000e+00
  %8001 = select i1 %6097, float %7998, float 0.000000e+00
  %8002 = fsub fast float -0.000000e+00, %5754
  %8003 = fsub fast float -0.000000e+00, %5755
  %8004 = fsub fast float -0.000000e+00, %5756
  %8005 = call float @dx.op.dot3.f32(i32 55, float %7554, float %7555, float %7556, float %8002, float %8003, float %8004)  ; Dot3(ax,ay,az,bx,by,bz)
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8007 = fmul fast float %8006, %7561
  %8008 = fmul fast float %8006, 9.843750e-01
  %8009 = fadd fast float %8008, 7.812500e-03
  %8010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8009, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.ResRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.ResRet.f32 %8010, 2
  %8014 = extractvalue %dx.types.ResRet.f32 %8010, 3
  %8015 = fsub fast float %8013, %8011
  %8016 = fsub fast float %8014, %8012
  %8017 = fmul fast float %8015, %6030
  %8018 = fmul fast float %8016, %6030
  %8019 = fadd fast float %8017, %8011
  %8020 = fadd fast float %8018, %8012
  %8021 = fmul fast float %8019, %5751
  %8022 = fmul fast float %8019, %5752
  %8023 = fmul fast float %8019, %5760
  %8024 = fadd fast float %8021, %8020
  %8025 = fadd fast float %8022, %8020
  %8026 = fadd fast float %8023, %8020
  br i1 %6043, label %8027, label %8050

; <label>:8027                                    ; preds = %7981
  %8028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5113, float %8006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8029 = extractvalue %dx.types.ResRet.f32 %8028, 0
  %8030 = extractvalue %dx.types.ResRet.f32 %8028, 1
  %8031 = extractvalue %dx.types.ResRet.f32 %8028, 2
  %8032 = fadd fast float %8029, -5.000000e-01
  %8033 = fadd fast float %8030, -5.000000e-01
  %8034 = fadd fast float %8031, -5.000000e-01
  %8035 = fmul fast float %5751, 4.000000e+00
  %8036 = fmul fast float %8035, %7903
  %8037 = fmul fast float %8036, %8032
  %8038 = fmul fast float %5752, 4.000000e+00
  %8039 = fmul fast float %8038, %7904
  %8040 = fmul fast float %8039, %8033
  %8041 = fmul fast float %5760, 4.000000e+00
  %8042 = fmul fast float %8041, %7905
  %8043 = fmul fast float %8042, %8034
  %8044 = fadd fast float %8037, %8024
  %8045 = fadd fast float %8040, %8025
  %8046 = fadd fast float %8043, %8026
  %8047 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8048 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8049 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  br label %8050

; <label>:8050                                    ; preds = %8027, %7981
  %8051 = phi float [ %8047, %8027 ], [ %8024, %7981 ]
  %8052 = phi float [ %8048, %8027 ], [ %8025, %7981 ]
  %8053 = phi float [ %8049, %8027 ], [ %8026, %7981 ]
  %8054 = call float @dx.op.binary.f32(i32 35, float %8052, float %8053)  ; FMax(a,b)
  %8055 = call float @dx.op.binary.f32(i32 35, float %8051, float %8054)  ; FMax(a,b)
  %8056 = fsub fast float 1.000000e+00, %8055
  %8057 = fmul fast float %6158, %6163
  %8058 = fadd fast float %6165, %8057
  %8059 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  %8060 = fsub fast float %7835, %5768
  %8061 = fsub fast float %7836, %5769
  %8062 = fsub fast float %7837, %5770
  %8063 = call float @dx.op.dot3.f32(i32 55, float %8060, float %8061, float %8062, float %8060, float %8061, float %8062)  ; Dot3(ax,ay,az,bx,by,bz)
  %8064 = call float @dx.op.unary.f32(i32 25, float %8063)  ; Rsqrt(value)
  %8065 = fmul fast float %8060, %8064
  %8066 = fmul fast float %8061, %8064
  %8067 = fmul fast float %8062, %8064
  %8068 = call float @dx.op.dot3.f32(i32 55, float %8002, float %8003, float %8004, float %8065, float %8066, float %8067)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = fmul fast float %8068, %8068
  %8070 = call float @dx.op.unary.f32(i32 6, float %8006)  ; FAbs(value)
  %8071 = call float @dx.op.binary.f32(i32 35, float %8059, float 0x3F847AE140000000)  ; FMax(a,b)
  %8072 = fmul fast float %8071, %8071
  %8073 = fmul fast float %8072, %8072
  %8074 = fsub fast float 1.000000e+00, %8073
  %8075 = fmul fast float %7853, %8074
  %8076 = fadd fast float %8075, %8073
  %8077 = bitcast float %8076 to i32
  %8078 = ashr i32 %8077, 1
  %8079 = add nsw i32 %8078, 532487669
  %8080 = bitcast i32 %8079 to float
  %8081 = fadd fast float %8080, %5762
  %8082 = fmul fast float %8073, %8069
  %8083 = fsub fast float 1.000000e+00, %8069
  %8084 = fadd fast float %8083, %8082
  %8085 = fmul fast float %8070, %8070
  %8086 = fmul fast float %8085, %8074
  %8087 = fadd fast float %8086, %8073
  %8088 = bitcast float %8087 to i32
  %8089 = ashr i32 %8088, 1
  %8090 = add nsw i32 %8089, 532487669
  %8091 = bitcast i32 %8090 to float
  %8092 = fadd fast float %8091, %8070
  %8093 = fmul fast float %8084, %8084
  %8094 = fmul fast float %8093, %8081
  %8095 = fmul fast float %8094, %8092
  %8096 = fdiv fast float 1.000000e+00, %8095
  %8097 = bitcast float %8073 to i32
  %8098 = sitofp i32 %8097 to float
  %8099 = fmul fast float %8098, 0x3FE7F73180000000
  %8100 = fadd fast float %8099, 0x41AFE27C40000000
  %8101 = fptosi float %8100 to i32
  %8102 = bitcast i32 %8101 to float
  %8103 = fadd fast float %8102, %7883
  %8104 = bitcast float %8103 to i32
  %8105 = sub nsw i32 2129859010, %8104
  %8106 = bitcast i32 %8105 to float
  %8107 = fmul fast float %8073, %8096
  %8108 = fmul fast float %8107, %8102
  %8109 = fmul fast float %8108, %8106
  br i1 %7546, label %8110, label %8120

; <label>:8110                                    ; preds = %8050
  %8111 = fmul fast float %8007, %7999
  %8112 = fmul fast float %8007, %8000
  %8113 = fmul fast float %8007, %8001
  %8114 = fmul fast float %8111, %8056
  %8115 = fmul fast float %8114, %8109
  %8116 = fmul fast float %8112, %8056
  %8117 = fmul fast float %8116, %8109
  %8118 = fmul fast float %8113, %8056
  %8119 = fmul fast float %8118, %8109
  br label %8120

; <label>:8120                                    ; preds = %8110, %8050
  %8121 = phi float [ %8115, %8110 ], [ 0.000000e+00, %8050 ]
  %8122 = phi float [ %8117, %8110 ], [ 0.000000e+00, %8050 ]
  %8123 = phi float [ %8119, %8110 ], [ 0.000000e+00, %8050 ]
  %8124 = fmul fast float %7936, %7890
  %8125 = fmul fast float %7937, %7890
  %8126 = fmul fast float %7938, %7890
  %8127 = fsub fast float 1.000000e+00, %7824
  %8128 = bitcast float %8127 to i32
  %8129 = sitofp i32 %8128 to float
  %8130 = fmul fast float %8129, 5.000000e+00
  %8131 = fadd fast float %8130, 0xC1EFBF8940000000
  %8132 = fptosi float %8131 to i32
  %8133 = bitcast i32 %8132 to float
  %8134 = fmul fast float %8133, %5114
  %8135 = fmul fast float %7987, %8134
  %8136 = fmul fast float %8135, %6090
  %8137 = fmul fast float %8135, %6091
  %8138 = fmul fast float %8135, %6092
  %8139 = fadd fast float %8136, %8124
  %8140 = fadd fast float %8137, %8125
  %8141 = fadd fast float %8138, %8126
  %8142 = fmul fast float %8139, %7830
  %8143 = fmul fast float %8140, %7830
  %8144 = fmul fast float %8141, %7830
  %8145 = fadd fast float %8142, %8121
  %8146 = fadd fast float %8143, %8122
  %8147 = fadd fast float %8144, %8123
  %8148 = fmul fast float %7812, %5139
  %8149 = fmul fast float %8148, %7830
  %8150 = fmul fast float %8149, %7987
  %8151 = fmul fast float %7813, %5139
  %8152 = fmul fast float %8151, %7830
  %8153 = fmul fast float %8152, %7987
  %8154 = fmul fast float %7814, %5139
  %8155 = fmul fast float %8154, %7830
  %8156 = fmul fast float %8155, %7987
  %8157 = fadd fast float %8150, %7490
  %8158 = fadd fast float %8153, %7491
  %8159 = fadd fast float %8156, %7492
  %8160 = fmul fast float %8148, %8145
  %8161 = fmul fast float %8151, %8146
  %8162 = fmul fast float %8154, %8147
  %8163 = fadd fast float %8160, %7487
  %8164 = fadd fast float %8161, %7488
  %8165 = fadd fast float %8162, %7489
  br label %7620

; <label>:8166                                    ; preds = %7620
  br label %8167

; <label>:8167                                    ; preds = %8166, %7453
  %8168 = phi float [ %7455, %7453 ], [ %7621, %8166 ]
  %8169 = phi float [ %7456, %7453 ], [ %7622, %8166 ]
  %8170 = phi float [ %7457, %7453 ], [ %7623, %8166 ]
  %8171 = phi float [ %7458, %7453 ], [ %7624, %8166 ]
  %8172 = phi float [ %7459, %7453 ], [ %7625, %8166 ]
  %8173 = phi float [ %7460, %7453 ], [ %7626, %8166 ]
  %8174 = add i32 %7454, 1
  %8175 = icmp ugt i32 %8174, %7450
  br i1 %8175, label %8176, label %7453

; <label>:8176                                    ; preds = %8167
  br label %8177

; <label>:8177                                    ; preds = %8176, %7403, %7393
  %8178 = phi float [ %7394, %7393 ], [ %7394, %7403 ], [ %8168, %8176 ]
  %8179 = phi float [ %7395, %7393 ], [ %7395, %7403 ], [ %8169, %8176 ]
  %8180 = phi float [ %7396, %7393 ], [ %7396, %7403 ], [ %8170, %8176 ]
  %8181 = phi float [ %7397, %7393 ], [ %7397, %7403 ], [ %8171, %8176 ]
  %8182 = phi float [ %7398, %7393 ], [ %7398, %7403 ], [ %8172, %8176 ]
  %8183 = phi float [ %7399, %7393 ], [ %7399, %7403 ], [ %8173, %8176 ]
  %8184 = fmul fast float %5139, %6119
  %8185 = fsub fast float -0.000000e+00, %8184
  %8186 = fmul fast float %5139, %6120
  %8187 = fsub fast float -0.000000e+00, %8186
  %8188 = fmul fast float %5139, %6121
  %8189 = fsub fast float -0.000000e+00, %8188
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = fmul fast float %8191, %6125
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 3
  %8195 = fsub fast float 1.000000e+00, %5117
  %8196 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  %8197 = fadd fast float %8183, %5116
  %8198 = fmul fast float %8197, %5117
  %8199 = fmul fast float %8196, %8194
  %8200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %8201 = extractvalue %dx.types.ResRet.i32 %8200, 3
  %8202 = bitcast i32 %8201 to float
  %8203 = fsub fast float %8185, %8202
  %8204 = fsub fast float %8187, %8202
  %8205 = fsub fast float %8189, %8202
  %8206 = fmul fast float %8203, %189
  %8207 = fmul fast float %8204, %189
  %8208 = fmul fast float %8205, %189
  %8209 = fadd fast float %8206, %8202
  %8210 = fadd fast float %8207, %8202
  %8211 = fadd fast float %8208, %8202
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 3
  %8214 = fmul fast float %8181, %5748
  %8215 = fmul fast float %8182, %5749
  %8216 = fmul fast float %8183, %5750
  %8217 = fcmp fast ogt float %91, %209
  %8218 = and i1 %8217, %5571
  %8219 = or i1 %5577, %8218
  %8220 = icmp eq i32 %5570, 2
  %8221 = fcmp fast ole float %91, %209
  %8222 = and i1 %8221, %8220
  %8223 = or i1 %8222, %8219
  br i1 %8218, label %8224, label %8481

; <label>:8224                                    ; preds = %8177
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 3
  %8228 = fmul fast float %8226, %100
  %8229 = fmul fast float %8227, %101
  %8230 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8231 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8232 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8230, float %8231, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8233 = extractvalue %dx.types.ResRet.f32 %8232, 0
  %8234 = extractvalue %dx.types.ResRet.f32 %8232, 1
  %8235 = extractvalue %dx.types.ResRet.f32 %8232, 2
  %8236 = extractvalue %dx.types.ResRet.f32 %8232, 3
  %8237 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8230, float %8231, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8238 = extractvalue %dx.types.ResRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.ResRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.ResRet.f32 %8237, 2
  %8241 = extractvalue %dx.types.ResRet.f32 %8237, 3
  %8242 = call float @dx.op.binary.f32(i32 35, float %8234, float %8235)  ; FMax(a,b)
  %8243 = call float @dx.op.binary.f32(i32 35, float %8233, float %8242)  ; FMax(a,b)
  %8244 = call float @dx.op.binary.f32(i32 35, float %8243, float %8236)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8239, float %8240)  ; FMin(a,b)
  %8246 = call float @dx.op.binary.f32(i32 36, float %8238, float %8245)  ; FMin(a,b)
  %8247 = call float @dx.op.binary.f32(i32 36, float %8246, float %8241)  ; FMin(a,b)
  %8248 = fmul fast float %8244, 2.550000e+02
  %8249 = fadd fast float %8248, 0x3F70101020000000
  %8250 = fptoui float %8249 to i32
  %8251 = fmul fast float %8247, 2.550000e+02
  %8252 = fadd fast float %8251, 0x3F70101020000000
  %8253 = fptoui float %8252 to i32
  %8254 = icmp ult i32 %8250, %8253
  br i1 %8254, label %8255, label %8423

; <label>:8255                                    ; preds = %8224
  %8256 = fcmp fast ogt float %90, 9.843750e-01
  %8257 = fadd fast float %91, -4.000000e+00
  %8258 = select i1 %8256, float -4.000000e+00, float %8257
  %8259 = call float @dx.op.binary.f32(i32 35, float %8258, float 0.000000e+00)  ; FMax(a,b)
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = fadd fast float %8261, %8259
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = fmul fast float %8262, %8263
  %8265 = call float @dx.op.unary.f32(i32 23, float %8264)  ; Log(value)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8267 = fmul fast float %8266, %8265
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8270 = fmul fast float %8267, %8269
  %8271 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8272 = uitofp i32 %8250 to float
  %8273 = uitofp i32 %8253 to float
  %8274 = fadd fast float %8272, 5.000000e-01
  %8275 = fadd fast float %8273, 5.000000e-01
  %8276 = fmul fast float %8269, %8274
  %8277 = fmul fast float %8269, %8275
  %8278 = fadd fast float %8276, 0x3F0FFB4800000000
  %8279 = fadd fast float %8277, 0xBF0FFB4800000000
  %8280 = call float @dx.op.binary.f32(i32 35, float %8271, float %8278)  ; FMax(a,b)
  %8281 = call float @dx.op.binary.f32(i32 36, float %8280, float %8279)  ; FMin(a,b)
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8286 = fmul fast float %8283, %8281
  %8287 = fadd fast float %8285, %8286
  %8288 = fadd fast float %8285, %8284
  %8289 = fsub fast float %8283, %8284
  %8290 = fadd fast float %8289, %8285
  %8291 = call float @dx.op.binary.f32(i32 35, float %8287, float %8288)  ; FMax(a,b)
  %8292 = call float @dx.op.binary.f32(i32 36, float %8291, float %8290)  ; FMin(a,b)
  %8293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8230, float %8231, float %8292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8294 = extractvalue %dx.types.ResRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.ResRet.f32 %8293, 1
  %8296 = extractvalue %dx.types.ResRet.f32 %8293, 2
  %8297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.i32 %8297, 0
  %8299 = extractvalue %dx.types.CBufRet.i32 %8297, 1
  %8300 = uitofp i32 %8298 to float
  %8301 = uitofp i32 %8299 to float
  %8302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.CBufRet.f32 %8302, 1
  %8305 = fmul fast float %8300, %8230
  %8306 = fmul fast float %8301, %8231
  %8307 = fadd fast float %8305, -5.000000e-01
  %8308 = fadd fast float %8306, -5.000000e-01
  %8309 = call float @dx.op.unary.f32(i32 22, float %8307)  ; Frc(value)
  %8310 = call float @dx.op.unary.f32(i32 22, float %8308)  ; Frc(value)
  %8311 = fmul fast float %8309, %8309
  %8312 = fmul fast float %8311, %8309
  %8313 = fsub fast float 3.000000e+00, %8309
  %8314 = fmul fast float %8311, %8313
  %8315 = fmul fast float %8309, 3.000000e+00
  %8316 = fmul fast float %8312, 3.000000e+00
  %8317 = fmul fast float %8311, 6.000000e+00
  %8318 = fsub fast float %8316, %8317
  %8319 = fadd fast float %8318, 4.000000e+00
  %8320 = fmul fast float %8319, 0x3FC5555560000000
  %8321 = fmul fast float %8312, -3.000000e+00
  %8322 = fadd fast float %8311, %8309
  %8323 = fmul fast float %8322, 3.000000e+00
  %8324 = fadd fast float %8321, 1.000000e+00
  %8325 = fadd fast float %8324, %8323
  %8326 = fmul fast float %8312, 0x3FC5555560000000
  %8327 = fmul fast float %8310, %8310
  %8328 = fmul fast float %8327, %8310
  %8329 = fsub fast float 3.000000e+00, %8310
  %8330 = fmul fast float %8327, %8329
  %8331 = fmul fast float %8310, 3.000000e+00
  %8332 = fmul fast float %8328, 3.000000e+00
  %8333 = fmul fast float %8327, 6.000000e+00
  %8334 = fsub fast float %8332, %8333
  %8335 = fadd fast float %8334, 4.000000e+00
  %8336 = fmul fast float %8335, 0x3FC5555560000000
  %8337 = fmul fast float %8328, -3.000000e+00
  %8338 = fadd fast float %8327, %8310
  %8339 = fmul fast float %8338, 3.000000e+00
  %8340 = fadd fast float %8337, 1.000000e+00
  %8341 = fadd fast float %8340, %8339
  %8342 = fmul fast float %8328, 0x3FC5555560000000
  %8343 = fadd fast float %8309, 1.000000e+00
  %8344 = fsub fast float 1.000000e+00, %8315
  %8345 = fadd fast float %8344, %8314
  %8346 = fadd fast float %8345, %8319
  %8347 = fmul fast float %8346, 0x3FC5555560000000
  %8348 = fdiv fast float %8320, %8347
  %8349 = fsub fast float %8343, %8348
  %8350 = fsub fast float 1.000000e+00, %8309
  %8351 = fadd fast float %8325, %8312
  %8352 = fmul fast float %8351, 0x3FC5555560000000
  %8353 = fdiv fast float %8326, %8352
  %8354 = fadd fast float %8350, %8353
  %8355 = fadd fast float %8310, 1.000000e+00
  %8356 = fsub fast float 1.000000e+00, %8331
  %8357 = fadd fast float %8356, %8330
  %8358 = fadd fast float %8357, %8335
  %8359 = fmul fast float %8358, 0x3FC5555560000000
  %8360 = fdiv fast float %8336, %8359
  %8361 = fsub fast float %8355, %8360
  %8362 = fsub fast float 1.000000e+00, %8310
  %8363 = fadd fast float %8341, %8328
  %8364 = fmul fast float %8363, 0x3FC5555560000000
  %8365 = fdiv fast float %8342, %8364
  %8366 = fadd fast float %8365, %8362
  %8367 = fmul fast float %8349, %8303
  %8368 = fsub fast float %8230, %8367
  %8369 = fmul fast float %8354, %8303
  %8370 = fadd fast float %8369, %8230
  %8371 = fmul fast float %8366, %8304
  %8372 = fadd fast float %8371, %8231
  %8373 = fmul fast float %8361, %8304
  %8374 = fsub fast float %8231, %8373
  %8375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8368, float %8374, float %8292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8376 = extractvalue %dx.types.ResRet.f32 %8375, 0
  %8377 = extractvalue %dx.types.ResRet.f32 %8375, 1
  %8378 = extractvalue %dx.types.ResRet.f32 %8375, 2
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8370, float %8374, float %8292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = extractvalue %dx.types.ResRet.f32 %8379, 1
  %8382 = extractvalue %dx.types.ResRet.f32 %8379, 2
  %8383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8368, float %8372, float %8292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8384 = extractvalue %dx.types.ResRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.ResRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.ResRet.f32 %8383, 2
  %8387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8370, float %8372, float %8292, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8388 = extractvalue %dx.types.ResRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.ResRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.ResRet.f32 %8387, 2
  %8391 = fsub fast float %8384, %8376
  %8392 = fsub fast float %8385, %8377
  %8393 = fsub fast float %8386, %8378
  %8394 = fmul fast float %8391, %8364
  %8395 = fmul fast float %8392, %8364
  %8396 = fmul fast float %8393, %8364
  %8397 = fadd fast float %8394, %8376
  %8398 = fadd fast float %8395, %8377
  %8399 = fadd fast float %8396, %8378
  %8400 = fsub fast float %8388, %8380
  %8401 = fsub fast float %8389, %8381
  %8402 = fsub fast float %8390, %8382
  %8403 = fmul fast float %8400, %8364
  %8404 = fmul fast float %8401, %8364
  %8405 = fmul fast float %8402, %8364
  %8406 = fsub fast float %8380, %8397
  %8407 = fadd fast float %8406, %8403
  %8408 = fsub fast float %8381, %8398
  %8409 = fadd fast float %8408, %8404
  %8410 = fsub fast float %8382, %8399
  %8411 = fadd fast float %8410, %8405
  %8412 = fmul fast float %8407, %8352
  %8413 = fmul fast float %8409, %8352
  %8414 = fmul fast float %8411, %8352
  %8415 = fadd fast float %8412, %8397
  %8416 = fadd fast float %8413, %8398
  %8417 = fadd fast float %8414, %8399
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 1
  %8420 = fmul fast float %8415, %8419
  %8421 = fmul fast float %8416, %8419
  %8422 = fmul fast float %8417, %8419
  br label %8423

; <label>:8423                                    ; preds = %8255, %8224
  %8424 = phi float [ %8294, %8255 ], [ 1.000000e+00, %8224 ]
  %8425 = phi float [ %8295, %8255 ], [ 1.000000e+00, %8224 ]
  %8426 = phi float [ %8296, %8255 ], [ 1.000000e+00, %8224 ]
  %8427 = phi float [ %8420, %8255 ], [ 0.000000e+00, %8224 ]
  %8428 = phi float [ %8421, %8255 ], [ 0.000000e+00, %8224 ]
  %8429 = phi float [ %8422, %8255 ], [ 0.000000e+00, %8224 ]
  %8430 = fmul fast float %8427, %8209
  %8431 = fmul fast float %8428, %8210
  %8432 = fmul fast float %8429, %8211
  %8433 = call float @dx.op.dot3.f32(i32 55, float %8424, float %8425, float %8426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8434 = call float @dx.op.dot3.f32(i32 55, float %8430, float %8431, float %8432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8435 = select i1 %249, float %8433, float %8424
  %8436 = select i1 %249, float %8433, float %8425
  %8437 = select i1 %249, float 1.000000e+00, float %8426
  %8438 = select i1 %249, float %8434, float %8430
  %8439 = select i1 %249, float 0.000000e+00, float %8431
  %8440 = select i1 %249, float 0.000000e+00, float %8432
  %8441 = fmul fast float %8435, %8214
  %8442 = fmul fast float %8436, %8215
  %8443 = fmul fast float %8437, %8216
  %8444 = fadd fast float %8441, %8438
  %8445 = fadd fast float %8442, %8439
  %8446 = fadd fast float %8440, %8443
  %8447 = fmul fast float %8435, %8178
  %8448 = fmul fast float %8436, %8179
  %8449 = fmul fast float %8437, %8180
  %8450 = fmul fast float %125, %8226
  %8451 = fmul fast float %127, %8227
  %8452 = fsub fast float 1.000000e+00, %8450
  %8453 = fsub fast float 1.000000e+00, %8451
  %8454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.CBufRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.CBufRet.f32 %8454, 2
  %8458 = fmul fast float %8452, %8455
  %8459 = fmul fast float %8452, %8456
  %8460 = fmul fast float %8452, %8457
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.CBufRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.CBufRet.f32 %8461, 2
  %8465 = fmul fast float %8453, %8462
  %8466 = fmul fast float %8453, %8463
  %8467 = fmul fast float %8453, %8464
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8472 = fadd fast float %8465, %8469
  %8473 = fadd fast float %8472, %8458
  %8474 = fadd fast float %8466, %8470
  %8475 = fadd fast float %8474, %8459
  %8476 = fadd fast float %8467, %8471
  %8477 = fadd fast float %8476, %8460
  %8478 = fmul fast float %8473, %209
  %8479 = fmul fast float %8475, %209
  %8480 = fmul fast float %8477, %209
  br label %8481

; <label>:8481                                    ; preds = %8423, %8177
  %8482 = phi float [ %8478, %8423 ], [ %155, %8177 ]
  %8483 = phi float [ %8479, %8423 ], [ %156, %8177 ]
  %8484 = phi float [ %8480, %8423 ], [ %157, %8177 ]
  %8485 = phi float [ %209, %8423 ], [ %91, %8177 ]
  %8486 = phi float [ %8444, %8423 ], [ %8214, %8177 ]
  %8487 = phi float [ %8445, %8423 ], [ %8215, %8177 ]
  %8488 = phi float [ %8446, %8423 ], [ %8216, %8177 ]
  %8489 = phi float [ %8447, %8423 ], [ %8178, %8177 ]
  %8490 = phi float [ %8448, %8423 ], [ %8179, %8177 ]
  %8491 = phi float [ %8449, %8423 ], [ %8180, %8177 ]
  %8492 = phi float [ %8424, %8423 ], [ 1.000000e+00, %8177 ]
  br i1 %8223, label %9647, label %8493

; <label>:8493                                    ; preds = %8481
  %8494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8495 = extractvalue %dx.types.CBufRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.CBufRet.f32 %8494, 2
  %8498 = extractvalue %dx.types.CBufRet.f32 %8494, 3
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8503 = extractvalue %dx.types.CBufRet.f32 %8499, 3
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8508 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8513 = extractvalue %dx.types.CBufRet.f32 %8509, 3
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 3
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8521 = fcmp fast olt float %8520, -5.000000e-01
  %8522 = call float @dx.op.dot3.f32(i32 55, float %8482, float %8483, float %8484, float %8482, float %8483, float %8484)  ; Dot3(ax,ay,az,bx,by,bz)
  %8523 = call float @dx.op.unary.f32(i32 25, float %8522)  ; Rsqrt(value)
  %8524 = fmul fast float %8523, %8522
  %8525 = fmul fast float %8523, %8482
  %8526 = fmul fast float %8523, %8483
  %8527 = fmul fast float %8523, %8484
  %8528 = fadd fast float %8524, %8498
  %8529 = call float @dx.op.dot3.f32(i32 55, float %8525, float %8526, float %8527, float %8495, float %8496, float %8497)  ; Dot3(ax,ay,az,bx,by,bz)
  %8530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.i32 %8530, 1
  %8532 = and i32 %8531, 1
  %8533 = icmp ne i32 %8532, 0
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8536 = fcmp fast ogt float %8535, 0.000000e+00
  %8537 = and i1 %8533, %8536
  br i1 %8537, label %8538, label %8944, !dx.controlflow.hints !122

; <label>:8538                                    ; preds = %8493
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8545 = fsub fast float %8542, %8544
  %8546 = and i32 %8531, 2
  %8547 = extractvalue %dx.types.CBufRet.i32 %8530, 0
  %8548 = call i32 @dx.op.binary.i32(i32 40, i32 %8547, i32 3)  ; UMin(a,b)
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 0
  %8551 = extractvalue %dx.types.CBufRet.f32 %8549, 1
  %8552 = extractvalue %dx.types.CBufRet.f32 %8543, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8543, 1
  %8554 = fsub fast float %8550, %8552
  %8555 = fsub fast float %8551, %8553
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 0
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  %8559 = fsub fast float -0.000000e+00, %8554
  %8560 = fsub fast float -0.000000e+00, %8555
  %8561 = call float @dx.op.dot2.f32(i32 54, float %8525, float %8526, float %8525, float %8526)  ; Dot2(ax,ay,bx,by)
  %8562 = call float @dx.op.dot2.f32(i32 54, float %8525, float %8526, float %8559, float %8560)  ; Dot2(ax,ay,bx,by)
  %8563 = fmul fast float %8562, 2.000000e+00
  %8564 = call float @dx.op.dot2.f32(i32 54, float %8559, float %8560, float %8559, float %8560)  ; Dot2(ax,ay,bx,by)
  %8565 = fmul fast float %8557, %8557
  %8566 = fsub fast float %8564, %8565
  %8567 = fmul fast float %8563, %8563
  %8568 = fmul fast float %8561, 4.000000e+00
  %8569 = fmul fast float %8568, %8566
  %8570 = fsub fast float %8567, %8569
  %8571 = fcmp fast ogt float %8570, 0.000000e+00
  br i1 %8571, label %8572, label %8587

; <label>:8572                                    ; preds = %8538
  %8573 = fcmp fast ogt float %8563, 0.000000e+00
  %8574 = call float @dx.op.unary.f32(i32 24, float %8570)  ; Sqrt(value)
  %8575 = fsub fast float -0.000000e+00, %8574
  %8576 = select i1 %8573, float %8574, float %8575
  %8577 = fadd fast float %8576, %8563
  %8578 = fmul float %8577, -5.000000e-01
  %8579 = fdiv fast float %8578, %8561
  %8580 = call float @dx.op.binary.f32(i32 35, float %8579, float 0.000000e+00)  ; FMax(a,b)
  %8581 = call float @dx.op.binary.f32(i32 36, float %8524, float %8580)  ; FMin(a,b)
  %8582 = fdiv fast float %8566, %8578
  %8583 = call float @dx.op.binary.f32(i32 35, float %8582, float 0.000000e+00)  ; FMax(a,b)
  %8584 = call float @dx.op.binary.f32(i32 36, float %8524, float %8583)  ; FMin(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8581, float %8584)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 35, float %8581, float %8584)  ; FMax(a,b)
  br label %8587

; <label>:8587                                    ; preds = %8572, %8538
  %8588 = phi float [ %8586, %8572 ], [ -1.000000e+00, %8538 ]
  %8589 = phi float [ %8585, %8572 ], [ -1.000000e+00, %8538 ]
  %8590 = phi i1 [ true, %8572 ], [ false, %8538 ]
  %8591 = and i1 %8558, %8590
  br i1 %8591, label %8592, label %8594

; <label>:8592                                    ; preds = %8587
  %8593 = fcmp fast oeq float %8589, %8588
  br i1 %8593, label %8897, label %8595

; <label>:8594                                    ; preds = %8587
  br i1 %8558, label %8897, label %8595

; <label>:8595                                    ; preds = %8594, %8592
  %8596 = phi float [ %8524, %8594 ], [ %8588, %8592 ]
  %8597 = phi float [ 0.000000e+00, %8594 ], [ %8589, %8592 ]
  %8598 = icmp ne i32 %8546, 0
  %8599 = fmul fast float %8596, %8527
  %8600 = fadd fast float %8599, %8540
  %8601 = fmul fast float %8600, %8596
  %8602 = select i1 %8598, float 0.000000e+00, float %8601
  %8603 = fcmp fast oeq float %8527, 0.000000e+00
  %8604 = fdiv fast float %8545, %8527
  %8605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8604)  ; FMax(a,b)
  %8606 = select i1 %8603, float %8596, float %8605
  %8607 = call float @dx.op.binary.f32(i32 36, float %8596, float %8606)  ; FMin(a,b)
  %8608 = fcmp fast ogt float %8527, 0.000000e+00
  %8609 = fcmp fast olt float %8545, 0.000000e+00
  br i1 %8608, label %8610, label %8667

; <label>:8610                                    ; preds = %8595
  %8611 = icmp eq i32 %8546, 0
  br i1 %8609, label %8612, label %8656

; <label>:8612                                    ; preds = %8610
  %8613 = select i1 %8611, float %8596, float 0.000000e+00
  %8614 = fsub fast float -0.000000e+00, %8613
  %8615 = call float @dx.op.unary.f32(i32 6, float %8614)  ; FAbs(value)
  %8616 = fmul fast float %8613, %8527
  %8617 = fadd fast float %8616, %8540
  %8618 = fmul fast float %8615, %8617
  %8619 = fsub fast float %8602, %8618
  %8620 = fsub fast float %8596, %8615
  %8621 = select i1 %8611, float %8620, float 0.000000e+00
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %8628 = extractvalue %dx.types.CBufRet.f32 %8626, 1
  %8629 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8630 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 3
  %8633 = call float @dx.op.binary.f32(i32 36, float %8619, float %8632)  ; FMin(a,b)
  %8634 = fmul fast float %8630, %8621
  %8635 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8636 = fsub fast float %8627, %8623
  %8637 = fsub fast float %8628, %8624
  %8638 = fsub fast float %8629, %8625
  %8639 = fmul fast float %8635, %8636
  %8640 = fmul fast float %8635, %8637
  %8641 = fmul fast float %8635, %8638
  %8642 = fadd fast float %8639, %8623
  %8643 = fadd fast float %8640, %8624
  %8644 = fadd fast float %8641, %8625
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8648 = fadd fast float %8647, %8646
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8645, 3
  %8652 = fadd fast float %8651, %8650
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fmul fast float %8649, %8633
  %8655 = fmul fast float %8654, %8653
  br label %8897

; <label>:8656                                    ; preds = %8610
  br i1 %8611, label %8657, label %8678

; <label>:8657                                    ; preds = %8656
  %8658 = call float @dx.op.binary.f32(i32 36, float %8607, float %8597)  ; FMin(a,b)
  %8659 = fsub fast float %8607, %8658
  %8660 = fsub fast float %8659, %8596
  %8661 = call float @dx.op.unary.f32(i32 6, float %8660)  ; FAbs(value)
  %8662 = fadd fast float %8659, %8596
  %8663 = fmul fast float %8662, %8527
  %8664 = fadd fast float %8663, %8540
  %8665 = fmul fast float %8664, %8661
  %8666 = fsub fast float %8602, %8665
  br label %8678

; <label>:8667                                    ; preds = %8595
  br i1 %8609, label %8668, label %8678

; <label>:8668                                    ; preds = %8667
  %8669 = call float @dx.op.binary.f32(i32 35, float %8597, float %8607)  ; FMax(a,b)
  %8670 = icmp eq i32 %8546, 0
  %8671 = select i1 %8670, float %8607, float 0.000000e+00
  %8672 = fsub fast float -0.000000e+00, %8671
  %8673 = call float @dx.op.unary.f32(i32 6, float %8672)  ; FAbs(value)
  %8674 = fmul fast float %8671, %8527
  %8675 = fadd fast float %8674, %8540
  %8676 = fmul fast float %8673, %8675
  %8677 = fsub fast float %8602, %8676
  br label %8678

; <label>:8678                                    ; preds = %8668, %8667, %8657, %8656
  %8679 = phi float [ %8597, %8656 ], [ %8597, %8657 ], [ %8669, %8668 ], [ %8597, %8667 ]
  %8680 = phi float [ 0.000000e+00, %8656 ], [ %8661, %8657 ], [ %8673, %8668 ], [ 0.000000e+00, %8667 ]
  %8681 = phi float [ %8602, %8656 ], [ %8666, %8657 ], [ %8677, %8668 ], [ %8602, %8667 ]
  %8682 = phi float [ %8607, %8656 ], [ %8607, %8657 ], [ %8596, %8668 ], [ %8596, %8667 ]
  %8683 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8683, align 4, !tbaa !123, !noalias !125
  %8684 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8684, align 4, !tbaa !123, !noalias !125
  %8685 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8685, align 4, !tbaa !123, !noalias !125
  %8686 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  store float -1.000000e+00, float* %8686, align 4, !tbaa !123, !noalias !125
  %8687 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 1
  store float -1.000000e+00, float* %8687, align 4, !tbaa !123, !noalias !125
  %8688 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 2
  store float -1.000000e+00, float* %8688, align 4, !tbaa !123, !noalias !125
  %8689 = icmp sgt i32 %8548, 0
  br i1 %8689, label %8690, label %8751

; <label>:8690                                    ; preds = %8678
  br label %8691

; <label>:8691                                    ; preds = %8740, %8690
  %8692 = phi i32 [ %8741, %8740 ], [ 0, %8690 ]
  %8693 = phi i32 [ %8742, %8740 ], [ 0, %8690 ]
  %8694 = add nuw i32 %8693, 171
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8694)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.CBufRet.f32 %8698, 1
  %8701 = fsub fast float %8696, %8699
  %8702 = fsub fast float %8697, %8700
  %8703 = extractvalue %dx.types.CBufRet.f32 %8695, 2
  %8704 = fsub fast float -0.000000e+00, %8701
  %8705 = fsub fast float -0.000000e+00, %8702
  %8706 = call float @dx.op.dot2.f32(i32 54, float %8525, float %8526, float %8704, float %8705)  ; Dot2(ax,ay,bx,by)
  %8707 = fmul fast float %8706, 2.000000e+00
  %8708 = call float @dx.op.dot2.f32(i32 54, float %8704, float %8705, float %8704, float %8705)  ; Dot2(ax,ay,bx,by)
  %8709 = fmul fast float %8703, %8703
  %8710 = fsub fast float %8708, %8709
  %8711 = fmul fast float %8707, %8707
  %8712 = fmul fast float %8568, %8710
  %8713 = fsub fast float %8711, %8712
  %8714 = fcmp fast ogt float %8713, 0.000000e+00
  br i1 %8714, label %8715, label %8730

; <label>:8715                                    ; preds = %8691
  %8716 = fcmp fast ogt float %8707, 0.000000e+00
  %8717 = call float @dx.op.unary.f32(i32 24, float %8713)  ; Sqrt(value)
  %8718 = fsub fast float -0.000000e+00, %8717
  %8719 = select i1 %8716, float %8717, float %8718
  %8720 = fadd fast float %8719, %8707
  %8721 = fmul float %8720, -5.000000e-01
  %8722 = fdiv fast float %8721, %8561
  %8723 = call float @dx.op.binary.f32(i32 35, float %8722, float 0.000000e+00)  ; FMax(a,b)
  %8724 = call float @dx.op.binary.f32(i32 36, float %8596, float %8723)  ; FMin(a,b)
  %8725 = fdiv fast float %8710, %8721
  %8726 = call float @dx.op.binary.f32(i32 35, float %8725, float 0.000000e+00)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8596, float %8726)  ; FMin(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8724, float %8727)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float %8724, float %8727)  ; FMax(a,b)
  br label %8730

; <label>:8730                                    ; preds = %8715, %8691
  %8731 = phi float [ %8729, %8715 ], [ -1.000000e+00, %8691 ]
  %8732 = phi float [ %8728, %8715 ], [ -1.000000e+00, %8691 ]
  %8733 = phi i1 [ true, %8715 ], [ false, %8691 ]
  br i1 %8733, label %8734, label %8740

; <label>:8734                                    ; preds = %8730
  %8735 = call float @dx.op.binary.f32(i32 35, float %8679, float %8732)  ; FMax(a,b)
  %8736 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8693
  store float %8735, float* %8736, align 4, !tbaa !123, !noalias !125
  %8737 = call float @dx.op.binary.f32(i32 35, float %8679, float %8731)  ; FMax(a,b)
  %8738 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8693
  store float %8737, float* %8738, align 4, !tbaa !123, !noalias !125
  %8739 = add nsw i32 %8692, 1
  br label %8740

; <label>:8740                                    ; preds = %8734, %8730
  %8741 = phi i32 [ %8739, %8734 ], [ %8692, %8730 ]
  %8742 = add nuw nsw i32 %8693, 1
  %8743 = icmp eq i32 %8742, %8548
  br i1 %8743, label %8744, label %8691

; <label>:8744                                    ; preds = %8740
  %8745 = load float, float* %8685, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8746 = load float, float* %8684, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8747 = load float, float* %8683, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8748 = load float, float* %8688, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8749 = load float, float* %8687, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8750 = load float, float* %8686, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8751

; <label>:8751                                    ; preds = %8744, %8678
  %8752 = phi float [ -1.000000e+00, %8678 ], [ %8750, %8744 ]
  %8753 = phi float [ -1.000000e+00, %8678 ], [ %8749, %8744 ]
  %8754 = phi float [ -1.000000e+00, %8678 ], [ %8748, %8744 ]
  %8755 = phi float [ -1.000000e+00, %8678 ], [ %8747, %8744 ]
  %8756 = phi float [ -1.000000e+00, %8678 ], [ %8746, %8744 ]
  %8757 = phi float [ -1.000000e+00, %8678 ], [ %8745, %8744 ]
  %8758 = phi i32 [ 0, %8678 ], [ %8741, %8744 ]
  %8759 = call float @dx.op.binary.f32(i32 36, float %8756, float %8757)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 36, float %8755, float %8759)  ; FMin(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8755, float %8756)  ; FMax(a,b)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8761, float %8757)  ; FMin(a,b)
  %8763 = call float @dx.op.binary.f32(i32 36, float %8755, float %8756)  ; FMin(a,b)
  %8764 = call float @dx.op.binary.f32(i32 35, float %8763, float %8762)  ; FMax(a,b)
  %8765 = call float @dx.op.binary.f32(i32 35, float %8756, float %8757)  ; FMax(a,b)
  %8766 = call float @dx.op.binary.f32(i32 35, float %8755, float %8765)  ; FMax(a,b)
  store float %8760, float* %8683, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8764, float* %8684, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8766, float* %8685, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8767 = call float @dx.op.binary.f32(i32 36, float %8753, float %8754)  ; FMin(a,b)
  %8768 = call float @dx.op.binary.f32(i32 36, float %8752, float %8767)  ; FMin(a,b)
  %8769 = call float @dx.op.binary.f32(i32 35, float %8752, float %8753)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8769, float %8754)  ; FMin(a,b)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8752, float %8753)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 35, float %8771, float %8770)  ; FMax(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8753, float %8754)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 35, float %8752, float %8773)  ; FMax(a,b)
  store float %8768, float* %8686, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8772, float* %8687, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8774, float* %8688, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8775 = sub nsw i32 3, %8758
  %8776 = icmp sgt i32 %8775, 2
  br i1 %8776, label %8777, label %8815

; <label>:8777                                    ; preds = %8751
  %8778 = icmp eq i32 %8546, 0
  %8779 = fsub fast float %8596, %8680
  %8780 = select i1 %8778, float %8779, float %8680
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8783 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8784 = extractvalue %dx.types.CBufRet.f32 %8781, 2
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 0
  %8787 = extractvalue %dx.types.CBufRet.f32 %8785, 1
  %8788 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8789 = extractvalue %dx.types.CBufRet.f32 %8785, 3
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 3
  %8792 = call float @dx.op.binary.f32(i32 36, float %8681, float %8791)  ; FMin(a,b)
  %8793 = fmul fast float %8789, %8780
  %8794 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8795 = fsub fast float %8786, %8782
  %8796 = fsub fast float %8787, %8783
  %8797 = fsub fast float %8788, %8784
  %8798 = fmul fast float %8794, %8795
  %8799 = fmul fast float %8794, %8796
  %8800 = fmul fast float %8794, %8797
  %8801 = fadd fast float %8798, %8782
  %8802 = fadd fast float %8799, %8783
  %8803 = fadd fast float %8800, %8784
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 0
  %8806 = extractvalue %dx.types.CBufRet.f32 %8804, 1
  %8807 = fadd fast float %8806, %8805
  %8808 = call float @dx.op.unary.f32(i32 7, float %8807)  ; Saturate(value)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8804, 2
  %8810 = extractvalue %dx.types.CBufRet.f32 %8804, 3
  %8811 = fadd fast float %8810, %8809
  %8812 = call float @dx.op.unary.f32(i32 7, float %8811)  ; Saturate(value)
  %8813 = fmul fast float %8808, %8792
  %8814 = fmul fast float %8813, %8812
  br label %8897

; <label>:8815                                    ; preds = %8751
  %8816 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8775
  %8817 = load float, float* %8816, align 4, !tbaa !123, !noalias !125
  %8818 = fcmp fast olt float %8817, %8682
  %8819 = icmp sgt i32 %8758, 0
  %8820 = and i1 %8819, %8818
  br i1 %8820, label %8821, label %8858

; <label>:8821                                    ; preds = %8815
  br label %8822

; <label>:8822                                    ; preds = %8851, %8821
  %8823 = phi float [ %8852, %8851 ], [ %8680, %8821 ]
  %8824 = phi float [ %8853, %8851 ], [ %8681, %8821 ]
  %8825 = phi float [ %8833, %8851 ], [ %8817, %8821 ]
  %8826 = phi i32 [ %8830, %8851 ], [ %8775, %8821 ]
  %8827 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 %8826
  %8828 = load float, float* %8827, align 4, !tbaa !123, !noalias !125
  %8829 = icmp slt i32 %8826, 2
  %8830 = add nsw i32 %8826, 1
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8830
  %8832 = load float, float* %8831, align 4, !tbaa !123, !noalias !125
  %8833 = select i1 %8829, float %8832, float %8596
  %8834 = call float @dx.op.binary.f32(i32 36, float %8833, float %8828)  ; FMin(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8682, float %8834)  ; FMin(a,b)
  %8836 = icmp eq i32 %8546, 0
  %8837 = fadd fast float %8835, %8825
  %8838 = fmul fast float %8837, %8527
  %8839 = fadd fast float %8838, %8540
  br i1 %8836, label %8845, label %8840

; <label>:8840                                    ; preds = %8822
  %8841 = fsub fast float %8835, %8825
  %8842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8841)  ; FMax(a,b)
  %8843 = fmul fast float %8842, %8839
  %8844 = fadd fast float %8843, %8824
  br label %8851

; <label>:8845                                    ; preds = %8822
  %8846 = fsub fast float %8825, %8835
  %8847 = call float @dx.op.unary.f32(i32 6, float %8846)  ; FAbs(value)
  %8848 = fadd fast float %8847, %8823
  %8849 = fmul fast float %8847, %8839
  %8850 = fsub fast float %8824, %8849
  br label %8851

; <label>:8851                                    ; preds = %8845, %8840
  %8852 = phi float [ %8842, %8840 ], [ %8848, %8845 ]
  %8853 = phi float [ %8844, %8840 ], [ %8850, %8845 ]
  %8854 = fcmp fast olt float %8833, %8682
  %8855 = icmp slt i32 %8830, 3
  %8856 = and i1 %8855, %8854
  br i1 %8856, label %8822, label %8857

; <label>:8857                                    ; preds = %8851
  br label %8858

; <label>:8858                                    ; preds = %8857, %8815
  %8859 = phi float [ %8680, %8815 ], [ %8852, %8857 ]
  %8860 = phi float [ %8681, %8815 ], [ %8853, %8857 ]
  %8861 = fsub fast float %8596, %8859
  %8862 = select i1 %8598, float %8859, float %8861
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8866 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.CBufRet.f32 %8867, 2
  %8871 = extractvalue %dx.types.CBufRet.f32 %8867, 3
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 3
  %8874 = call float @dx.op.binary.f32(i32 36, float %8860, float %8873)  ; FMin(a,b)
  %8875 = fmul fast float %8871, %8862
  %8876 = call float @dx.op.unary.f32(i32 7, float %8875)  ; Saturate(value)
  %8877 = fsub fast float %8868, %8864
  %8878 = fsub fast float %8869, %8865
  %8879 = fsub fast float %8870, %8866
  %8880 = fmul fast float %8876, %8877
  %8881 = fmul fast float %8876, %8878
  %8882 = fmul fast float %8876, %8879
  %8883 = fadd fast float %8880, %8864
  %8884 = fadd fast float %8881, %8865
  %8885 = fadd fast float %8882, %8866
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.f32 %8886, 1
  %8889 = fadd fast float %8888, %8887
  %8890 = call float @dx.op.unary.f32(i32 7, float %8889)  ; Saturate(value)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8892 = extractvalue %dx.types.CBufRet.f32 %8886, 3
  %8893 = fadd fast float %8892, %8891
  %8894 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8895 = fmul fast float %8890, %8874
  %8896 = fmul fast float %8895, %8894
  br label %8897

; <label>:8897                                    ; preds = %8858, %8777, %8612, %8594, %8592
  %8898 = phi float [ %8621, %8612 ], [ %8780, %8777 ], [ %8862, %8858 ], [ 0.000000e+00, %8592 ], [ 0.000000e+00, %8594 ]
  %8899 = phi float [ %8655, %8612 ], [ %8814, %8777 ], [ %8896, %8858 ], [ 0.000000e+00, %8592 ], [ 0.000000e+00, %8594 ]
  %8900 = phi float [ %8642, %8612 ], [ %8801, %8777 ], [ %8883, %8858 ], [ 0.000000e+00, %8592 ], [ 0.000000e+00, %8594 ]
  %8901 = phi float [ %8643, %8612 ], [ %8802, %8777 ], [ %8884, %8858 ], [ 0.000000e+00, %8592 ], [ 0.000000e+00, %8594 ]
  %8902 = phi float [ %8644, %8612 ], [ %8803, %8777 ], [ %8885, %8858 ], [ 0.000000e+00, %8592 ], [ 0.000000e+00, %8594 ]
  %8903 = fmul fast float %8535, %8899
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 2
  %8906 = fsub fast float %8542, %8905
  %8907 = fcmp fast olt float %8903, -2.000000e+01
  %8908 = call float @dx.op.unary.f32(i32 21, float %8903)  ; Exp(value)
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8911 = extractvalue %dx.types.CBufRet.f32 %8909, 3
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 2
  %8914 = fmul fast float %8911, %8906
  %8915 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8916 = fsub fast float 1.000000e+00, %8915
  %8917 = fmul fast float %8527, 5.000000e-01
  %8918 = fadd fast float %8917, 5.000000e-01
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fsub fast float 1.000000e+00, %8919
  %8921 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8916)  ; FMax(a,b)
  %8922 = fdiv fast float %8920, %8921
  %8923 = fsub fast float %8906, %8484
  %8924 = call float @dx.op.unary.f32(i32 6, float %8923)  ; FAbs(value)
  %8925 = fmul fast float %8924, %8910
  %8926 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8927 = fsub fast float 1.000000e+00, %8925
  %8928 = fmul fast float %8927, %8926
  %8929 = fadd fast float %8928, %8925
  %8930 = fmul fast float %8913, %8906
  %8931 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8932 = fsub fast float 1.000000e+00, %8929
  %8933 = fmul fast float %8932, %8931
  %8934 = fadd fast float %8933, %8929
  %8935 = call float @dx.op.unary.f32(i32 7, float %8934)  ; Saturate(value)
  %8936 = fadd fast float %8908, -1.000000e+00
  %8937 = select i1 %8907, float -1.000000e+00, float %8936
  %8938 = fmul fast float %8935, %8937
  %8939 = fadd fast float %8938, 1.000000e+00
  %8940 = fsub fast float -0.000000e+00, %8938
  %8941 = fmul fast float %8900, %8940
  %8942 = fmul fast float %8901, %8940
  %8943 = fmul fast float %8902, %8940
  br label %8944

; <label>:8944                                    ; preds = %8897, %8493
  %8945 = phi float [ %8898, %8897 ], [ 0.000000e+00, %8493 ]
  %8946 = phi float [ %8939, %8897 ], [ 1.000000e+00, %8493 ]
  %8947 = phi float [ %8941, %8897 ], [ 0.000000e+00, %8493 ]
  %8948 = phi float [ %8942, %8897 ], [ 0.000000e+00, %8493 ]
  %8949 = phi float [ %8943, %8897 ], [ 0.000000e+00, %8493 ]
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8952 = fsub fast float 1.000000e+00, %8946
  %8953 = fmul fast float %8952, %8528
  %8954 = fmul fast float %8953, %8951
  %8955 = fsub fast float %8528, %8954
  br i1 %8521, label %8956, label %8985, !dx.controlflow.hints !161

; <label>:8956                                    ; preds = %8944
  %8957 = fmul fast float %8529, %8518
  %8958 = fadd fast float %8957, %8519
  %8959 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  %8960 = fmul fast float %8500, %8955
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = fmul fast float %8501, %8955
  %8963 = fsub fast float -0.000000e+00, %8962
  %8964 = call float @dx.op.unary.f32(i32 21, float %8961)  ; Exp(value)
  %8965 = call float @dx.op.unary.f32(i32 21, float %8963)  ; Exp(value)
  %8966 = call float @dx.op.binary.f32(i32 35, float %8508, float %8964)  ; FMax(a,b)
  %8967 = call float @dx.op.binary.f32(i32 35, float %8508, float %8965)  ; FMax(a,b)
  %8968 = fsub fast float %8967, %8966
  %8969 = fmul fast float %8968, %8959
  %8970 = fadd fast float %8969, %8966
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fsub fast float %8505, %8510
  %8973 = fsub fast float %8506, %8511
  %8974 = fsub fast float %8507, %8512
  %8975 = fmul fast float %8959, %8972
  %8976 = fmul fast float %8959, %8973
  %8977 = fmul fast float %8959, %8974
  %8978 = fadd fast float %8975, %8510
  %8979 = fadd fast float %8976, %8511
  %8980 = fadd fast float %8977, %8512
  %8981 = fsub fast float 1.000000e+00, %8971
  %8982 = fmul fast float %8981, %8978
  %8983 = fmul fast float %8981, %8979
  %8984 = fmul fast float %8981, %8980
  br label %9044

; <label>:8985                                    ; preds = %8944
  %8986 = fmul fast float %8955, %8517
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = fsub fast float 2.000000e+00, %8987
  %8989 = fmul fast float %8987, 9.921875e-01
  %8990 = fmul fast float %8989, %8988
  %8991 = fadd fast float %8990, 3.906250e-03
  %8992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8991, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8993 = extractvalue %dx.types.ResRet.f32 %8992, 0
  %8994 = fsub fast float %8987, %8993
  %8995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8994)  ; FMax(a,b)
  %8996 = fmul fast float %8503, %8484
  %8997 = call float @dx.op.unary.f32(i32 6, float %8996)  ; FAbs(value)
  %8998 = fcmp fast ogt float %8997, 0x3EB0C6F7A0000000
  br i1 %8998, label %8999, label %9005, !dx.controlflow.hints !162

; <label>:8999                                    ; preds = %8985
  %9000 = fmul fast float %8996, 0xBFF7154760000000
  %9001 = call float @dx.op.unary.f32(i32 21, float %9000)  ; Exp(value)
  %9002 = fsub fast float 1.000000e+00, %9001
  %9003 = fdiv fast float %9002, %8996
  %9004 = fmul fast float %9003, %8513
  br label %9005

; <label>:9005                                    ; preds = %8999, %8985
  %9006 = phi float [ %9004, %8999 ], [ %8513, %8985 ]
  %9007 = fadd fast float %9006, %8515
  %9008 = fmul fast float %9007, %8995
  %9009 = fmul fast float %8500, %9008
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = fmul fast float %8501, %9008
  %9012 = fsub fast float -0.000000e+00, %9011
  %9013 = fmul fast float %8502, %9008
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9016 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9017 = call float @dx.op.unary.f32(i32 21, float %9014)  ; Exp(value)
  %9018 = fmul fast float %8529, %8529
  %9019 = fadd fast float %9018, 1.000000e+00
  %9020 = fmul fast float %9019, 0x3FAE8EC8A0000000
  %9021 = fmul fast float %9020, %8510
  %9022 = fmul fast float %9020, %8511
  %9023 = fmul fast float %9020, %8512
  %9024 = fmul fast float %8529, %8508
  %9025 = fsub fast float 1.000000e+00, %9024
  %9026 = fmul fast float %8508, %8508
  %9027 = fsub fast float 1.000000e+00, %9026
  %9028 = fmul fast float %9027, 0x3FB45F3060000000
  %9029 = fmul fast float %9025, %9025
  %9030 = fdiv fast float 1.000000e+00, %9029
  %9031 = fmul fast float %9028, %9030
  %9032 = fmul fast float %9031, %8505
  %9033 = fmul fast float %9031, %8506
  %9034 = fmul fast float %9031, %8507
  %9035 = fadd fast float %9032, %9021
  %9036 = fadd fast float %9033, %9022
  %9037 = fadd fast float %9034, %9023
  %9038 = fsub fast float 1.000000e+00, %9015
  %9039 = fsub fast float 1.000000e+00, %9016
  %9040 = fsub fast float 1.000000e+00, %9017
  %9041 = fmul fast float %9035, %9038
  %9042 = fmul fast float %9036, %9039
  %9043 = fmul fast float %9037, %9040
  br label %9044

; <label>:9044                                    ; preds = %9005, %8956
  %9045 = phi float [ %8982, %8956 ], [ %9041, %9005 ]
  %9046 = phi float [ %8983, %8956 ], [ %9042, %9005 ]
  %9047 = phi float [ %8984, %8956 ], [ %9043, %9005 ]
  %9048 = phi float [ %8971, %8956 ], [ %9015, %9005 ]
  %9049 = phi float [ %8971, %8956 ], [ %9016, %9005 ]
  %9050 = phi float [ %8971, %8956 ], [ %9017, %9005 ]
  br i1 %8537, label %9051, label %9249, !dx.controlflow.hints !163

; <label>:9051                                    ; preds = %9044
  %9052 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %9053 = fmul fast float %9052, %8952
  %9054 = fsub fast float %8947, %9045
  %9055 = fsub fast float %8948, %9046
  %9056 = fsub fast float %8949, %9047
  %9057 = fmul fast float %9053, %9054
  %9058 = fmul fast float %9053, %9055
  %9059 = fmul fast float %9053, %9056
  %9060 = fadd fast float %9057, %9045
  %9061 = fadd fast float %9058, %9046
  %9062 = fadd fast float %9059, %9047
  %9063 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9048)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9049)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9050)  ; FMax(a,b)
  %9066 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8946)  ; FMax(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %8945, float %8955)  ; FMax(a,b)
  %9068 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9067)  ; FMax(a,b)
  %9069 = fdiv fast float %8945, %9068
  %9070 = call float @dx.op.unary.f32(i32 7, float %9069)  ; Saturate(value)
  %9071 = fdiv fast float %8955, %9068
  %9072 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9073 = fcmp fast une float %9066, 1.000000e+00
  br i1 %9073, label %9074, label %9087, !dx.controlflow.hints !164

; <label>:9074                                    ; preds = %9051
  %9075 = call float @dx.op.unary.f32(i32 23, float %9066)  ; Log(value)
  %9076 = fmul fast float %9075, 0x3FE62E4300000000
  %9077 = fmul fast float %8947, %9076
  %9078 = fsub fast float -0.000000e+00, %9077
  %9079 = fmul fast float %8948, %9076
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fmul fast float %8949, %9076
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fsub fast float 1.000000e+00, %9066
  %9084 = fdiv fast float %9078, %9083
  %9085 = fdiv fast float %9080, %9083
  %9086 = fdiv fast float %9082, %9083
  br label %9087

; <label>:9087                                    ; preds = %9074, %9051
  %9088 = phi float [ %9084, %9074 ], [ %8947, %9051 ]
  %9089 = phi float [ %9085, %9074 ], [ %8948, %9051 ]
  %9090 = phi float [ %9086, %9074 ], [ %8949, %9051 ]
  %9091 = phi float [ %9076, %9074 ], [ 0.000000e+00, %9051 ]
  %9092 = fcmp fast une float %9063, 1.000000e+00
  br i1 %9092, label %9093, label %9100, !dx.controlflow.hints !165

; <label>:9093                                    ; preds = %9087
  %9094 = call float @dx.op.unary.f32(i32 23, float %9063)  ; Log(value)
  %9095 = fmul fast float %9094, 0x3FE62E4300000000
  %9096 = fmul fast float %9060, %9095
  %9097 = fsub fast float -0.000000e+00, %9096
  %9098 = fsub fast float 1.000000e+00, %9063
  %9099 = fdiv fast float %9097, %9098
  br label %9100

; <label>:9100                                    ; preds = %9093, %9087
  %9101 = phi float [ %9099, %9093 ], [ %9060, %9087 ]
  %9102 = phi float [ %9095, %9093 ], [ 0.000000e+00, %9087 ]
  %9103 = fcmp fast une float %9064, 1.000000e+00
  br i1 %9103, label %9104, label %9111, !dx.controlflow.hints !165

; <label>:9104                                    ; preds = %9100
  %9105 = call float @dx.op.unary.f32(i32 23, float %9064)  ; Log(value)
  %9106 = fmul fast float %9105, 0x3FE62E4300000000
  %9107 = fmul fast float %9061, %9106
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = fsub fast float 1.000000e+00, %9064
  %9110 = fdiv fast float %9108, %9109
  br label %9111

; <label>:9111                                    ; preds = %9104, %9100
  %9112 = phi float [ %9110, %9104 ], [ %9061, %9100 ]
  %9113 = phi float [ %9106, %9104 ], [ 0.000000e+00, %9100 ]
  %9114 = fcmp fast une float %9065, 1.000000e+00
  br i1 %9114, label %9115, label %9122, !dx.controlflow.hints !165

; <label>:9115                                    ; preds = %9111
  %9116 = call float @dx.op.unary.f32(i32 23, float %9065)  ; Log(value)
  %9117 = fmul fast float %9116, 0x3FE62E4300000000
  %9118 = fmul fast float %9062, %9117
  %9119 = fsub fast float -0.000000e+00, %9118
  %9120 = fsub fast float 1.000000e+00, %9065
  %9121 = fdiv fast float %9119, %9120
  br label %9122

; <label>:9122                                    ; preds = %9115, %9111
  %9123 = phi float [ %9121, %9115 ], [ %9062, %9111 ]
  %9124 = phi float [ %9117, %9115 ], [ 0.000000e+00, %9111 ]
  %9125 = fmul fast float %9088, %9072
  %9126 = fmul fast float %9089, %9072
  %9127 = fmul fast float %9090, %9072
  %9128 = fmul fast float %9091, %9072
  %9129 = fmul fast float %9101, %9070
  %9130 = fmul fast float %9112, %9070
  %9131 = fmul fast float %9123, %9070
  %9132 = fmul fast float %9102, %9070
  %9133 = fmul fast float %9113, %9070
  %9134 = fmul fast float %9124, %9070
  %9135 = fadd fast float %9129, %9125
  %9136 = fadd fast float %9130, %9126
  %9137 = fadd fast float %9131, %9127
  %9138 = fadd fast float %9132, %9128
  %9139 = fadd fast float %9133, %9128
  %9140 = fadd fast float %9134, %9128
  %9141 = fcmp fast une float %9138, 0.000000e+00
  br i1 %9141, label %9142, label %9149, !dx.controlflow.hints !166

; <label>:9142                                    ; preds = %9122
  %9143 = fmul fast float %9138, 0x3FF7154760000000
  %9144 = call float @dx.op.unary.f32(i32 21, float %9143)  ; Exp(value)
  %9145 = fsub fast float 1.000000e+00, %9144
  %9146 = fmul fast float %9135, %9145
  %9147 = fsub fast float -0.000000e+00, %9146
  %9148 = fdiv fast float %9147, %9138
  br label %9149

; <label>:9149                                    ; preds = %9142, %9122
  %9150 = phi float [ %9144, %9142 ], [ 1.000000e+00, %9122 ]
  %9151 = phi float [ %9148, %9142 ], [ %9135, %9122 ]
  %9152 = fcmp fast une float %9139, 0.000000e+00
  br i1 %9152, label %9153, label %9160, !dx.controlflow.hints !166

; <label>:9153                                    ; preds = %9149
  %9154 = fmul fast float %9139, 0x3FF7154760000000
  %9155 = call float @dx.op.unary.f32(i32 21, float %9154)  ; Exp(value)
  %9156 = fsub fast float 1.000000e+00, %9155
  %9157 = fmul fast float %9136, %9156
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = fdiv fast float %9158, %9139
  br label %9160

; <label>:9160                                    ; preds = %9153, %9149
  %9161 = phi float [ %9155, %9153 ], [ 1.000000e+00, %9149 ]
  %9162 = phi float [ %9159, %9153 ], [ %9136, %9149 ]
  %9163 = fcmp fast une float %9140, 0.000000e+00
  br i1 %9163, label %9164, label %9171, !dx.controlflow.hints !166

; <label>:9164                                    ; preds = %9160
  %9165 = fmul fast float %9140, 0x3FF7154760000000
  %9166 = call float @dx.op.unary.f32(i32 21, float %9165)  ; Exp(value)
  %9167 = fsub fast float 1.000000e+00, %9166
  %9168 = fmul fast float %9137, %9167
  %9169 = fsub fast float -0.000000e+00, %9168
  %9170 = fdiv fast float %9169, %9140
  br label %9171

; <label>:9171                                    ; preds = %9164, %9160
  %9172 = phi float [ %9166, %9164 ], [ 1.000000e+00, %9160 ]
  %9173 = phi float [ %9170, %9164 ], [ %9137, %9160 ]
  %9174 = fcmp fast ogt float %9070, %9072
  br i1 %9174, label %9175, label %9195

; <label>:9175                                    ; preds = %9171
  %9176 = fsub fast float 1.000000e+00, %9072
  %9177 = fmul fast float %9088, %9176
  %9178 = fmul fast float %9089, %9176
  %9179 = fmul fast float %9090, %9176
  %9180 = fmul fast float %9091, %9176
  %9181 = fcmp fast une float %9180, 0.000000e+00
  br i1 %9181, label %9182, label %9233, !dx.controlflow.hints !167

; <label>:9182                                    ; preds = %9175
  %9183 = fmul fast float %9180, 0x3FF7154760000000
  %9184 = call float @dx.op.unary.f32(i32 21, float %9183)  ; Exp(value)
  %9185 = fsub fast float 1.000000e+00, %9184
  %9186 = fmul fast float %9177, %9185
  %9187 = fsub fast float -0.000000e+00, %9186
  %9188 = fmul fast float %9178, %9185
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fmul fast float %9179, %9185
  %9191 = fsub fast float -0.000000e+00, %9190
  %9192 = fdiv fast float %9187, %9180
  %9193 = fdiv fast float %9189, %9180
  %9194 = fdiv fast float %9191, %9180
  br label %9233

; <label>:9195                                    ; preds = %9171
  %9196 = fsub fast float 1.000000e+00, %9070
  %9197 = fmul fast float %9101, %9196
  %9198 = fmul fast float %9112, %9196
  %9199 = fmul fast float %9123, %9196
  %9200 = fmul fast float %9102, %9196
  %9201 = fmul fast float %9113, %9196
  %9202 = fmul fast float %9124, %9196
  %9203 = fcmp fast une float %9200, 0.000000e+00
  br i1 %9203, label %9204, label %9211, !dx.controlflow.hints !166

; <label>:9204                                    ; preds = %9195
  %9205 = fmul fast float %9200, 0x3FF7154760000000
  %9206 = call float @dx.op.unary.f32(i32 21, float %9205)  ; Exp(value)
  %9207 = fsub fast float 1.000000e+00, %9206
  %9208 = fmul fast float %9197, %9207
  %9209 = fsub fast float -0.000000e+00, %9208
  %9210 = fdiv fast float %9209, %9200
  br label %9211

; <label>:9211                                    ; preds = %9204, %9195
  %9212 = phi float [ %9210, %9204 ], [ %9197, %9195 ]
  %9213 = phi float [ %9206, %9204 ], [ 1.000000e+00, %9195 ]
  %9214 = fcmp fast une float %9201, 0.000000e+00
  br i1 %9214, label %9215, label %9222, !dx.controlflow.hints !166

; <label>:9215                                    ; preds = %9211
  %9216 = fmul fast float %9201, 0x3FF7154760000000
  %9217 = call float @dx.op.unary.f32(i32 21, float %9216)  ; Exp(value)
  %9218 = fsub fast float 1.000000e+00, %9217
  %9219 = fmul fast float %9198, %9218
  %9220 = fsub fast float -0.000000e+00, %9219
  %9221 = fdiv fast float %9220, %9201
  br label %9222

; <label>:9222                                    ; preds = %9215, %9211
  %9223 = phi float [ %9221, %9215 ], [ %9198, %9211 ]
  %9224 = phi float [ %9217, %9215 ], [ 1.000000e+00, %9211 ]
  %9225 = fcmp fast une float %9202, 0.000000e+00
  br i1 %9225, label %9226, label %9233, !dx.controlflow.hints !166

; <label>:9226                                    ; preds = %9222
  %9227 = fmul fast float %9202, 0x3FF7154760000000
  %9228 = call float @dx.op.unary.f32(i32 21, float %9227)  ; Exp(value)
  %9229 = fsub fast float 1.000000e+00, %9228
  %9230 = fmul fast float %9199, %9229
  %9231 = fsub fast float -0.000000e+00, %9230
  %9232 = fdiv fast float %9231, %9202
  br label %9233

; <label>:9233                                    ; preds = %9226, %9222, %9182, %9175
  %9234 = phi float [ %9232, %9226 ], [ %9194, %9182 ], [ %9179, %9175 ], [ %9199, %9222 ]
  %9235 = phi float [ %9223, %9226 ], [ %9193, %9182 ], [ %9178, %9175 ], [ %9223, %9222 ]
  %9236 = phi float [ %9212, %9226 ], [ %9192, %9182 ], [ %9177, %9175 ], [ %9212, %9222 ]
  %9237 = phi float [ %9228, %9226 ], [ %9184, %9182 ], [ 1.000000e+00, %9175 ], [ 1.000000e+00, %9222 ]
  %9238 = phi float [ %9224, %9226 ], [ %9184, %9182 ], [ 1.000000e+00, %9175 ], [ %9224, %9222 ]
  %9239 = phi float [ %9213, %9226 ], [ %9184, %9182 ], [ 1.000000e+00, %9175 ], [ %9213, %9222 ]
  %9240 = fmul fast float %9239, %9151
  %9241 = fmul fast float %9238, %9162
  %9242 = fmul fast float %9237, %9173
  %9243 = fadd fast float %9240, %9236
  %9244 = fadd fast float %9241, %9235
  %9245 = fadd fast float %9242, %9234
  %9246 = fmul fast float %9239, %9150
  %9247 = fmul fast float %9238, %9161
  %9248 = fmul fast float %9237, %9172
  br label %9249

; <label>:9249                                    ; preds = %9233, %9044
  %9250 = phi float [ %9248, %9233 ], [ %9050, %9044 ]
  %9251 = phi float [ %9247, %9233 ], [ %9049, %9044 ]
  %9252 = phi float [ %9246, %9233 ], [ %9048, %9044 ]
  %9253 = phi float [ %9245, %9233 ], [ %9047, %9044 ]
  %9254 = phi float [ %9244, %9233 ], [ %9046, %9044 ]
  %9255 = phi float [ %9243, %9233 ], [ %9045, %9044 ]
  %9256 = fmul fast float %9255, %8209
  %9257 = fmul fast float %9254, %8210
  %9258 = fmul fast float %9253, %8211
  %9259 = fmul fast float %9252, %8492
  %9260 = call float @dx.op.dot3.f32(i32 55, float %9252, float %9251, float %9250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9261 = call float @dx.op.dot3.f32(i32 55, float %9256, float %9257, float %9258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9262 = select i1 %249, float %9260, float %9252
  %9263 = select i1 %249, float %9260, float %9251
  %9264 = select i1 %249, float 1.000000e+00, float %9250
  %9265 = select i1 %249, float %9261, float %9256
  %9266 = select i1 %249, float 0.000000e+00, float %9257
  %9267 = select i1 %249, float 0.000000e+00, float %9258
  %9268 = fmul fast float %9262, %8486
  %9269 = fmul fast float %9263, %8487
  %9270 = fmul fast float %9264, %8488
  %9271 = fadd fast float %9268, %9265
  %9272 = fadd fast float %9269, %9266
  %9273 = fadd fast float %9267, %9270
  %9274 = fmul fast float %9262, %8489
  %9275 = fmul fast float %9263, %8490
  %9276 = fmul fast float %9264, %8491
  %9277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9278 = extractvalue %dx.types.CBufRet.i32 %9277, 0
  %9279 = icmp eq i32 %9278, 0
  br i1 %9279, label %9647, label %9280, !dx.controlflow.hints !168

; <label>:9280                                    ; preds = %9249
  %9281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9282 = extractvalue %dx.types.CBufRet.f32 %9281, 2
  %9283 = extractvalue %dx.types.CBufRet.f32 %9281, 3
  %9284 = fmul fast float %9282, %100
  %9285 = fmul fast float %9283, %101
  %9286 = fmul fast float %9284, 2.000000e+00
  %9287 = fmul fast float %9285, 2.000000e+00
  %9288 = fsub fast float 1.000000e+00, %9286
  %9289 = fsub fast float 1.000000e+00, %9287
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 0
  %9292 = extractvalue %dx.types.CBufRet.f32 %9290, 1
  %9293 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9294 = fmul fast float %9288, %9291
  %9295 = fmul fast float %9288, %9292
  %9296 = fmul fast float %9288, %9293
  %9297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9298 = extractvalue %dx.types.CBufRet.f32 %9297, 0
  %9299 = extractvalue %dx.types.CBufRet.f32 %9297, 1
  %9300 = extractvalue %dx.types.CBufRet.f32 %9297, 2
  %9301 = fmul fast float %9289, %9298
  %9302 = fmul fast float %9289, %9299
  %9303 = fmul fast float %9289, %9300
  %9304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9304, 0
  %9306 = extractvalue %dx.types.CBufRet.f32 %9304, 1
  %9307 = extractvalue %dx.types.CBufRet.f32 %9304, 2
  %9308 = fadd fast float %9301, %9305
  %9309 = fadd fast float %9308, %9294
  %9310 = fadd fast float %9302, %9306
  %9311 = fadd fast float %9310, %9295
  %9312 = fadd fast float %9303, %9307
  %9313 = fadd fast float %9312, %9296
  %9314 = fmul fast float %9309, %8485
  %9315 = fmul fast float %9311, %8485
  %9316 = fmul fast float %9313, %8485
  %9317 = fmul fast float %9314, %9314
  %9318 = fmul fast float %9315, %9315
  %9319 = fadd fast float %9317, %9318
  %9320 = fmul fast float %9316, %9316
  %9321 = fadd fast float %9319, %9320
  %9322 = call float @dx.op.unary.f32(i32 24, float %9321)  ; Sqrt(value)
  %9323 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %9324 = fsub fast float %9322, %9323
  %9325 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %9326 = fmul fast float %9324, %9325
  %9327 = call float @dx.op.unary.f32(i32 7, float %9326)  ; Saturate(value)
  %9328 = fadd fast float %9327, -5.000000e-01
  %9329 = fmul fast float %9328, 2.000000e+00
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 2
  %9332 = call float @dx.op.binary.f32(i32 36, float %9331, float %9329)  ; FMin(a,b)
  %9333 = fsub fast float -0.000000e+00, %9331
  %9334 = fcmp fast ogt float %9332, %9333
  br i1 %9334, label %9335, label %9647, !dx.controlflow.hints !169

; <label>:9335                                    ; preds = %9280
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 3
  %9338 = fcmp fast ogt float %9337, 0.000000e+00
  br i1 %9338, label %9339, label %9414, !dx.controlflow.hints !170

; <label>:9339                                    ; preds = %9335
  %9340 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9341 = extractvalue %dx.types.Dimensions %9340, 0
  %9342 = sitofp i32 %9341 to float
  %9343 = extractvalue %dx.types.Dimensions %9340, 1
  %9344 = sitofp i32 %9343 to float
  %9345 = fmul fast float %9284, %9342
  %9346 = fmul fast float %9285, %9344
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9349 = fsub fast float -0.000000e+00, %9348
  %9350 = fptoui float %9349 to i32
  %9351 = fptoui float %9345 to i32
  %9352 = fptoui float %9346 to i32
  %9353 = and i32 %9350, 31
  %9354 = lshr i32 %9351, %9353
  %9355 = lshr i32 %9352, %9353
  %9356 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9350, i32 %9354, i32 %9355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9357 = extractvalue %dx.types.ResRet.f32 %9356, 0
  %9358 = fcmp fast olt float %9357, -1.000000e+00
  %9359 = fcmp fast ogt float %9357, -1.000000e+00
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 1
  %9362 = select i1 %9359, float %9361, float 1.000000e+00
  %9363 = fadd fast float %9357, 1.000000e+00
  %9364 = fmul fast float %9362, %9363
  %9365 = call float @dx.op.unary.f32(i32 6, float %9364)  ; FAbs(value)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9360, 3
  %9367 = fcmp fast oge float %9365, %9366
  %9368 = select i1 %9367, float 0x4197782600000000, float %9365
  %9369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9369, 0
  %9371 = extractvalue %dx.types.CBufRet.f32 %9369, 1
  %9372 = extractvalue %dx.types.CBufRet.f32 %9369, 2
  %9373 = select i1 %9358, float %9370, float %9291
  %9374 = select i1 %9358, float %9371, float %9292
  %9375 = select i1 %9358, float %9372, float %9293
  %9376 = fmul fast float %9373, %9288
  %9377 = fmul fast float %9374, %9288
  %9378 = fmul fast float %9375, %9288
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 0
  %9381 = extractvalue %dx.types.CBufRet.f32 %9379, 1
  %9382 = extractvalue %dx.types.CBufRet.f32 %9379, 2
  %9383 = select i1 %9358, float %9380, float %9298
  %9384 = select i1 %9358, float %9381, float %9299
  %9385 = select i1 %9358, float %9382, float %9300
  %9386 = fmul fast float %9383, %9289
  %9387 = fmul fast float %9384, %9289
  %9388 = fmul fast float %9385, %9289
  %9389 = fadd fast float %9386, %9376
  %9390 = fadd fast float %9387, %9377
  %9391 = fadd fast float %9388, %9378
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.CBufRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9396 = select i1 %9358, float %9393, float %9305
  %9397 = select i1 %9358, float %9394, float %9306
  %9398 = select i1 %9358, float %9395, float %9307
  %9399 = fadd fast float %9389, %9396
  %9400 = fadd fast float %9390, %9397
  %9401 = fadd fast float %9391, %9398
  %9402 = fmul fast float %9399, %9368
  %9403 = fmul fast float %9400, %9368
  %9404 = fmul fast float %9401, %9368
  %9405 = fmul fast float %9402, %9402
  %9406 = fmul fast float %9403, %9403
  %9407 = fadd fast float %9405, %9406
  %9408 = fmul fast float %9404, %9404
  %9409 = fadd fast float %9407, %9408
  %9410 = call float @dx.op.unary.f32(i32 24, float %9409)  ; Sqrt(value)
  %9411 = fsub fast float %9410, %9323
  %9412 = fmul fast float %9411, %9325
  %9413 = call float @dx.op.unary.f32(i32 7, float %9412)  ; Saturate(value)
  br label %9414

; <label>:9414                                    ; preds = %9339, %9335
  %9415 = phi float [ %9413, %9339 ], [ 1.000000e+00, %9335 ]
  %9416 = fmul fast float %9332, 5.000000e-01
  %9417 = fadd fast float %9416, 5.000000e-01
  %9418 = call float @dx.op.unary.f32(i32 22, float %9417)  ; Frc(value)
  %9419 = call float @dx.op.unary.f32(i32 27, float %9418)  ; Round_ni(value)
  %9420 = call float @dx.op.unary.f32(i32 22, float %9418)  ; Frc(value)
  %9421 = fmul fast float %9420, 2.000000e+00
  %9422 = fadd fast float %9421, -1.000000e+00
  %9423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9284, float %9285, float %9419, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9424 = extractvalue %dx.types.ResRet.f32 %9423, 0
  %9425 = extractvalue %dx.types.ResRet.f32 %9423, 1
  %9426 = extractvalue %dx.types.ResRet.f32 %9423, 2
  %9427 = extractvalue %dx.types.ResRet.f32 %9423, 3
  %9428 = fadd fast float %9424, -5.000000e-01
  %9429 = fadd fast float %9426, -5.000000e-01
  %9430 = fmul fast float %9428, 0xBFD5555560000000
  %9431 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9429, float %9430)  ; FMad(a,b,c)
  %9432 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9425, float 0.000000e+00)  ; FMad(a,b,c)
  %9433 = fadd fast float %9432, %9427
  %9434 = fmul fast float %9428, -7.500000e-01
  %9435 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9429, float %9434)  ; FMad(a,b,c)
  %9436 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9425, float 0.000000e+00)  ; FMad(a,b,c)
  %9437 = fadd fast float %9436, %9427
  %9438 = call float @dx.op.binary.f32(i32 35, float %9431, float -1.000000e+00)  ; FMax(a,b)
  %9439 = call float @dx.op.binary.f32(i32 35, float %9433, float -1.000000e+00)  ; FMax(a,b)
  %9440 = call float @dx.op.binary.f32(i32 35, float %9435, float -1.000000e+00)  ; FMax(a,b)
  %9441 = call float @dx.op.binary.f32(i32 35, float %9437, float -1.000000e+00)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 36, float %9438, float 1.000000e+00)  ; FMin(a,b)
  %9443 = call float @dx.op.binary.f32(i32 36, float %9439, float 1.000000e+00)  ; FMin(a,b)
  %9444 = call float @dx.op.binary.f32(i32 36, float %9440, float 1.000000e+00)  ; FMin(a,b)
  %9445 = call float @dx.op.binary.f32(i32 36, float %9441, float 1.000000e+00)  ; FMin(a,b)
  %9446 = fcmp fast olt float %9442, 0x3FEFFF8020000000
  br i1 %9446, label %9447, label %9562, !dx.controlflow.hints !171

; <label>:9447                                    ; preds = %9414
  %9448 = extractvalue %dx.types.CBufRet.f32 %9330, 3
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.CBufRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.CBufRet.f32 %9449, 2
  %9453 = extractvalue %dx.types.CBufRet.f32 %9449, 3
  %9454 = fsub fast float %9450, %9442
  %9455 = fsub fast float %9451, %9443
  %9456 = fsub fast float %9452, %9444
  %9457 = fsub fast float %9453, %9445
  %9458 = fmul fast float %9454, %9448
  %9459 = fmul fast float %9455, %9448
  %9460 = fmul fast float %9456, %9448
  %9461 = fmul fast float %9457, %9448
  %9462 = fadd fast float %9458, %9442
  %9463 = fadd fast float %9459, %9443
  %9464 = fsub fast float -0.000000e+00, %9463
  %9465 = fadd fast float %9460, %9444
  %9466 = fadd fast float %9461, %9445
  %9467 = fmul fast float %9462, %9462
  %9468 = fsub fast float %9463, %9467
  %9469 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9468)  ; FMax(a,b)
  %9470 = fdiv fast float 1.000000e+00, %9469
  %9471 = fmul fast float %9463, %9462
  %9472 = fsub fast float %9465, %9471
  %9473 = fsub fast float %9422, %9462
  %9474 = fmul fast float %9422, %9422
  %9475 = fsub fast float %9474, %9463
  %9476 = fmul fast float %9473, %9470
  %9477 = fmul fast float %9476, %9472
  %9478 = fsub fast float %9475, %9477
  %9479 = fmul fast float %9463, %9463
  %9480 = fsub fast float %9466, %9479
  %9481 = fmul fast float %9472, %9472
  %9482 = fmul fast float %9481, %9470
  %9483 = fsub fast float %9480, %9482
  %9484 = fdiv fast float %9478, %9483
  %9485 = fmul fast float %9472, %9484
  %9486 = fsub fast float %9473, %9485
  %9487 = fmul fast float %9486, %9470
  %9488 = fmul fast float %9487, %9462
  %9489 = fsub fast float 1.000000e+00, %9488
  %9490 = fmul fast float %9463, %9484
  %9491 = fsub fast float %9489, %9490
  %9492 = fmul fast float %9487, %9487
  %9493 = fmul fast float %9484, 4.000000e+00
  %9494 = fmul fast float %9493, %9491
  %9495 = fsub fast float %9492, %9494
  %9496 = call float @dx.op.unary.f32(i32 24, float %9495)  ; Sqrt(value)
  %9497 = fcmp fast oge float %9487, 0.000000e+00
  %9498 = fsub fast float -0.000000e+00, %9496
  %9499 = select i1 %9497, float %9498, float %9496
  %9500 = fsub fast float %9499, %9487
  %9501 = fdiv fast float %9500, %9484
  %9502 = fdiv fast float %9491, %9500
  %9503 = fmul fast float %9501, 5.000000e-01
  %9504 = fmul fast float %9502, 2.000000e+00
  %9505 = select i1 %9497, float %9503, float %9504
  %9506 = select i1 %9497, float %9504, float %9503
  %9507 = call float @dx.op.binary.f32(i32 35, float %9505, float %9506)  ; FMax(a,b)
  %9508 = call float @dx.op.binary.f32(i32 36, float %9505, float %9506)  ; FMin(a,b)
  %9509 = fcmp fast ogt float %9422, %9508
  br i1 %9509, label %9510, label %9520

; <label>:9510                                    ; preds = %9447
  %9511 = fsub fast float %9422, %9508
  %9512 = fsub fast float %9507, %9508
  %9513 = fmul fast float %9511, %9512
  %9514 = fmul fast float %9507, %9422
  %9515 = fadd fast float %9507, %9422
  %9516 = fmul fast float %9515, %9462
  %9517 = fadd fast float %9514, %9463
  %9518 = fsub fast float %9517, %9516
  %9519 = fdiv fast float %9518, %9513
  br label %9520

; <label>:9520                                    ; preds = %9510, %9447
  %9521 = phi float [ %9519, %9510 ], [ 0.000000e+00, %9447 ]
  %9522 = fcmp fast ogt float %9422, %9507
  %9523 = fsub fast float %9422, %9507
  br i1 %9522, label %9524, label %9534

; <label>:9524                                    ; preds = %9520
  %9525 = fsub fast float %9507, %9508
  %9526 = fmul fast float %9525, %9523
  %9527 = fmul fast float %9508, %9422
  %9528 = fadd fast float %9508, %9422
  %9529 = fmul fast float %9528, %9462
  %9530 = fsub fast float %9464, %9527
  %9531 = fadd fast float %9530, %9529
  %9532 = fdiv fast float %9531, %9526
  %9533 = fadd fast float %9532, %9521
  br label %9534

; <label>:9534                                    ; preds = %9524, %9520
  %9535 = phi float [ %9533, %9524 ], [ %9521, %9520 ]
  %9536 = fsub fast float %9422, %9508
  %9537 = fmul fast float %9536, %9523
  %9538 = fmul fast float %9508, %9507
  %9539 = fadd fast float %9508, %9507
  %9540 = fmul fast float %9539, %9462
  %9541 = fadd fast float %9538, %9463
  %9542 = fsub fast float %9541, %9540
  %9543 = fdiv fast float %9542, %9537
  %9544 = call float @dx.op.unary.f32(i32 7, float %9535)  ; Saturate(value)
  %9545 = fcmp fast oeq float %8213, 0.000000e+00
  %9546 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9547 = fcmp fast oeq float %9546, 0.000000e+00
  %9548 = or i1 %9545, %9547
  %9549 = fmul fast float %9546, 2.000000e+00
  %9550 = fadd fast float %9331, %9332
  %9551 = fdiv fast float %9550, %9549
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fmul fast float %9552, 2.000000e+00
  %9554 = fsub fast float 3.000000e+00, %9553
  %9555 = fmul fast float %9552, %9552
  %9556 = fmul fast float %9555, %9554
  %9557 = select i1 %9548, float 1.000000e+00, float %9556
  %9558 = fmul fast float %9543, %8213
  %9559 = fadd fast float %9544, %9558
  %9560 = call float @dx.op.unary.f32(i32 7, float %9559)  ; Saturate(value)
  %9561 = fmul fast float %9557, %9560
  br label %9562

; <label>:9562                                    ; preds = %9534, %9414
  %9563 = phi float [ %9561, %9534 ], [ 0.000000e+00, %9414 ]
  %9564 = fsub fast float 1.000000e+00, %9563
  %9565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9284, float %9285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9566 = extractvalue %dx.types.ResRet.f32 %9565, 0
  %9567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9568 = extractvalue %dx.types.CBufRet.i32 %9567, 2
  %9569 = icmp eq i32 %9568, 0
  br i1 %9569, label %9575, label %9570

; <label>:9570                                    ; preds = %9562
  %9571 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9572 = fadd fast float %9566, -1.000000e+00
  %9573 = fmul fast float %9571, %9572
  %9574 = fadd fast float %9573, 1.000000e+00
  br label %9575

; <label>:9575                                    ; preds = %9570, %9562
  %9576 = phi float [ %9574, %9570 ], [ %9564, %9562 ]
  br i1 %9338, label %9577, label %9595

; <label>:9577                                    ; preds = %9575
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9580 = fsub fast float %9415, %9579
  %9581 = call float @dx.op.unary.f32(i32 7, float %9580)  ; Saturate(value)
  %9582 = fsub fast float %9415, %9337
  %9583 = call float @dx.op.unary.f32(i32 7, float %9582)  ; Saturate(value)
  %9584 = fsub fast float %9581, %9583
  %9585 = fsub fast float %9417, %9583
  %9586 = fdiv fast float %9585, %9584
  %9587 = call float @dx.op.unary.f32(i32 7, float %9586)  ; Saturate(value)
  %9588 = fmul fast float %9587, 2.000000e+00
  %9589 = fsub fast float 3.000000e+00, %9588
  %9590 = fsub fast float %9566, %9576
  %9591 = fmul fast float %9587, %9587
  %9592 = fmul fast float %9591, %9590
  %9593 = fmul fast float %9592, %9589
  %9594 = fadd fast float %9593, %9576
  br label %9595

; <label>:9595                                    ; preds = %9577, %9575
  %9596 = phi float [ %9594, %9577 ], [ %9576, %9575 ]
  %9597 = call float @dx.op.binary.f32(i32 35, float %9566, float %9596)  ; FMax(a,b)
  %9598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9599 = extractvalue %dx.types.CBufRet.i32 %9598, 2
  %9600 = and i32 %9599, 1
  %9601 = icmp eq i32 %9600, 0
  %9602 = fcmp fast une float %9597, 1.000000e+00
  %9603 = and i1 %9602, %9601
  br i1 %9603, label %9604, label %9623

; <label>:9604                                    ; preds = %9595
  %9605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9284, float %9285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9606 = extractvalue %dx.types.ResRet.f32 %9605, 0
  %9607 = extractvalue %dx.types.ResRet.f32 %9605, 1
  %9608 = extractvalue %dx.types.ResRet.f32 %9605, 2
  %9609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.f32 %9609, 1
  %9611 = fmul fast float %9610, %9606
  %9612 = fmul fast float %9610, %9607
  %9613 = fmul fast float %9610, %9608
  %9614 = fcmp fast ogt float %9566, 0x3FEFFF2E40000000
  %9615 = fsub fast float 1.000000e+00, %9597
  %9616 = fsub fast float 1.000000e+00, %9566
  %9617 = fdiv fast float %9615, %9616
  %9618 = call float @dx.op.unary.f32(i32 7, float %9617)  ; Saturate(value)
  %9619 = select i1 %9614, float 0.000000e+00, float %9618
  %9620 = fmul fast float %9611, %9619
  %9621 = fmul fast float %9612, %9619
  %9622 = fmul fast float %9613, %9619
  br label %9623

; <label>:9623                                    ; preds = %9604, %9595
  %9624 = phi float [ 0.000000e+00, %9595 ], [ %9620, %9604 ]
  %9625 = phi float [ 0.000000e+00, %9595 ], [ %9621, %9604 ]
  %9626 = phi float [ 0.000000e+00, %9595 ], [ %9622, %9604 ]
  %9627 = fmul fast float %9624, %8209
  %9628 = fmul fast float %9625, %8210
  %9629 = fmul fast float %9626, %8211
  %9630 = fmul fast float %9597, %9259
  %9631 = call float @dx.op.dot3.f32(i32 55, float %9597, float %9597, float %9597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9632 = call float @dx.op.dot3.f32(i32 55, float %9627, float %9628, float %9629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9633 = select i1 %249, float %9631, float %9597
  %9634 = select i1 %249, float 1.000000e+00, float %9597
  %9635 = select i1 %249, float %9632, float %9627
  %9636 = select i1 %249, float 0.000000e+00, float %9628
  %9637 = select i1 %249, float 0.000000e+00, float %9629
  %9638 = fmul fast float %9633, %9271
  %9639 = fmul fast float %9633, %9272
  %9640 = fmul fast float %9634, %9273
  %9641 = fadd fast float %9638, %9635
  %9642 = fadd fast float %9639, %9636
  %9643 = fadd fast float %9637, %9640
  %9644 = fmul fast float %9633, %9274
  %9645 = fmul fast float %9633, %9275
  %9646 = fmul fast float %9634, %9276
  br label %9647

; <label>:9647                                    ; preds = %9623, %9280, %9249, %8481
  %9648 = phi float [ %8486, %8481 ], [ %9271, %9249 ], [ %9641, %9623 ], [ %9271, %9280 ]
  %9649 = phi float [ %8487, %8481 ], [ %9272, %9249 ], [ %9642, %9623 ], [ %9272, %9280 ]
  %9650 = phi float [ %8488, %8481 ], [ %9273, %9249 ], [ %9643, %9623 ], [ %9273, %9280 ]
  %9651 = phi float [ %8489, %8481 ], [ %9274, %9249 ], [ %9644, %9623 ], [ %9274, %9280 ]
  %9652 = phi float [ %8490, %8481 ], [ %9275, %9249 ], [ %9645, %9623 ], [ %9275, %9280 ]
  %9653 = phi float [ %8491, %8481 ], [ %9276, %9249 ], [ %9646, %9623 ], [ %9276, %9280 ]
  %9654 = phi float [ %8492, %8481 ], [ %9259, %9249 ], [ %9630, %9623 ], [ %9259, %9280 ]
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 2
  %9657 = extractvalue %dx.types.CBufRet.f32 %9655, 3
  %9658 = fmul fast float %9656, %100
  %9659 = fmul fast float %9657, %101
  %9660 = call float @dx.op.unary.f32(i32 7, float %9658)  ; Saturate(value)
  %9661 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9662 = select i1 %8223, i32 2, i32 0
  %9663 = or i32 %9662, 1
  %9664 = uitofp i32 %9663 to float
  %9665 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9660, float %9661, float %9664, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9666 = extractvalue %dx.types.ResRet.f32 %9665, 0
  %9667 = extractvalue %dx.types.ResRet.f32 %9665, 1
  %9668 = extractvalue %dx.types.ResRet.f32 %9665, 2
  %9669 = extractvalue %dx.types.ResRet.f32 %9665, 3
  %9670 = add nuw nsw i32 %9662, 2
  %9671 = uitofp i32 %9670 to float
  %9672 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9660, float %9661, float %9671, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9673 = extractvalue %dx.types.ResRet.f32 %9672, 0
  %9674 = extractvalue %dx.types.ResRet.f32 %9672, 1
  %9675 = extractvalue %dx.types.ResRet.f32 %9672, 2
  %9676 = extractvalue %dx.types.ResRet.f32 %9672, 3
  %9677 = call float @dx.op.binary.f32(i32 35, float %9667, float %9668)  ; FMax(a,b)
  %9678 = call float @dx.op.binary.f32(i32 35, float %9666, float %9677)  ; FMax(a,b)
  %9679 = call float @dx.op.binary.f32(i32 35, float %9678, float %9669)  ; FMax(a,b)
  %9680 = call float @dx.op.binary.f32(i32 36, float %9674, float %9675)  ; FMin(a,b)
  %9681 = call float @dx.op.binary.f32(i32 36, float %9673, float %9680)  ; FMin(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9681, float %9676)  ; FMin(a,b)
  %9683 = fmul fast float %9679, 2.550000e+02
  %9684 = fadd fast float %9683, 0x3F70101020000000
  %9685 = fptoui float %9684 to i32
  %9686 = fmul fast float %9682, 2.550000e+02
  %9687 = fadd fast float %9686, 0x3F70101020000000
  %9688 = fptoui float %9687 to i32
  %9689 = icmp ult i32 %9685, %9688
  br i1 %9689, label %9690, label %9859

; <label>:9690                                    ; preds = %9647
  %9691 = fcmp fast ogt float %90, 9.843750e-01
  %9692 = fadd fast float %8485, -4.000000e+00
  %9693 = select i1 %9691, float -4.000000e+00, float %9692
  %9694 = call float @dx.op.binary.f32(i32 35, float %9693, float 0.000000e+00)  ; FMax(a,b)
  %9695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9695, 0
  %9697 = fadd fast float %9696, %9694
  %9698 = extractvalue %dx.types.CBufRet.f32 %9695, 2
  %9699 = fmul fast float %9697, %9698
  %9700 = call float @dx.op.unary.f32(i32 23, float %9699)  ; Log(value)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9695, 3
  %9702 = fmul fast float %9701, %9700
  %9703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9704 = extractvalue %dx.types.CBufRet.f32 %9703, 2
  %9705 = fmul fast float %9702, %9704
  %9706 = call float @dx.op.unary.f32(i32 7, float %9705)  ; Saturate(value)
  %9707 = uitofp i32 %9685 to float
  %9708 = uitofp i32 %9688 to float
  %9709 = fadd fast float %9707, 5.000000e-01
  %9710 = fadd fast float %9708, 5.000000e-01
  %9711 = fmul fast float %9704, %9709
  %9712 = fmul fast float %9704, %9710
  %9713 = fadd fast float %9711, 0x3F0FFB4800000000
  %9714 = fadd fast float %9712, 0xBF0FFB4800000000
  %9715 = call float @dx.op.binary.f32(i32 35, float %9706, float %9713)  ; FMax(a,b)
  %9716 = call float @dx.op.binary.f32(i32 36, float %9715, float %9714)  ; FMin(a,b)
  %9717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9718 = extractvalue %dx.types.CBufRet.f32 %9717, 1
  %9719 = extractvalue %dx.types.CBufRet.f32 %9717, 2
  %9720 = extractvalue %dx.types.CBufRet.f32 %9717, 0
  %9721 = select i1 %8223, float %9720, float 0.000000e+00
  %9722 = fmul fast float %9718, %9716
  %9723 = fadd fast float %9721, %9722
  %9724 = fadd fast float %9721, %9719
  %9725 = fsub fast float %9718, %9719
  %9726 = fadd fast float %9725, %9721
  %9727 = call float @dx.op.binary.f32(i32 35, float %9723, float %9724)  ; FMax(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9727, float %9726)  ; FMin(a,b)
  %9729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9660, float %9661, float %9728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9730 = extractvalue %dx.types.ResRet.f32 %9729, 0
  %9731 = extractvalue %dx.types.ResRet.f32 %9729, 1
  %9732 = extractvalue %dx.types.ResRet.f32 %9729, 2
  %9733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.i32 %9733, 0
  %9735 = extractvalue %dx.types.CBufRet.i32 %9733, 1
  %9736 = uitofp i32 %9734 to float
  %9737 = uitofp i32 %9735 to float
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 0
  %9740 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9741 = fmul fast float %9736, %9660
  %9742 = fmul fast float %9737, %9661
  %9743 = fadd fast float %9741, -5.000000e-01
  %9744 = fadd fast float %9742, -5.000000e-01
  %9745 = call float @dx.op.unary.f32(i32 22, float %9743)  ; Frc(value)
  %9746 = call float @dx.op.unary.f32(i32 22, float %9744)  ; Frc(value)
  %9747 = fmul fast float %9745, %9745
  %9748 = fmul fast float %9747, %9745
  %9749 = fsub fast float 3.000000e+00, %9745
  %9750 = fmul fast float %9747, %9749
  %9751 = fmul fast float %9745, 3.000000e+00
  %9752 = fmul fast float %9748, 3.000000e+00
  %9753 = fmul fast float %9747, 6.000000e+00
  %9754 = fsub fast float %9752, %9753
  %9755 = fadd fast float %9754, 4.000000e+00
  %9756 = fmul fast float %9755, 0x3FC5555560000000
  %9757 = fmul fast float %9748, -3.000000e+00
  %9758 = fadd fast float %9747, %9745
  %9759 = fmul fast float %9758, 3.000000e+00
  %9760 = fadd fast float %9757, 1.000000e+00
  %9761 = fadd fast float %9760, %9759
  %9762 = fmul fast float %9748, 0x3FC5555560000000
  %9763 = fmul fast float %9746, %9746
  %9764 = fmul fast float %9763, %9746
  %9765 = fsub fast float 3.000000e+00, %9746
  %9766 = fmul fast float %9763, %9765
  %9767 = fmul fast float %9746, 3.000000e+00
  %9768 = fmul fast float %9764, 3.000000e+00
  %9769 = fmul fast float %9763, 6.000000e+00
  %9770 = fsub fast float %9768, %9769
  %9771 = fadd fast float %9770, 4.000000e+00
  %9772 = fmul fast float %9771, 0x3FC5555560000000
  %9773 = fmul fast float %9764, -3.000000e+00
  %9774 = fadd fast float %9763, %9746
  %9775 = fmul fast float %9774, 3.000000e+00
  %9776 = fadd fast float %9773, 1.000000e+00
  %9777 = fadd fast float %9776, %9775
  %9778 = fmul fast float %9764, 0x3FC5555560000000
  %9779 = fadd fast float %9745, 1.000000e+00
  %9780 = fsub fast float 1.000000e+00, %9751
  %9781 = fadd fast float %9780, %9750
  %9782 = fadd fast float %9781, %9755
  %9783 = fmul fast float %9782, 0x3FC5555560000000
  %9784 = fdiv fast float %9756, %9783
  %9785 = fsub fast float %9779, %9784
  %9786 = fsub fast float 1.000000e+00, %9745
  %9787 = fadd fast float %9761, %9748
  %9788 = fmul fast float %9787, 0x3FC5555560000000
  %9789 = fdiv fast float %9762, %9788
  %9790 = fadd fast float %9786, %9789
  %9791 = fadd fast float %9746, 1.000000e+00
  %9792 = fsub fast float 1.000000e+00, %9767
  %9793 = fadd fast float %9792, %9766
  %9794 = fadd fast float %9793, %9771
  %9795 = fmul fast float %9794, 0x3FC5555560000000
  %9796 = fdiv fast float %9772, %9795
  %9797 = fsub fast float %9791, %9796
  %9798 = fsub fast float 1.000000e+00, %9746
  %9799 = fadd fast float %9777, %9764
  %9800 = fmul fast float %9799, 0x3FC5555560000000
  %9801 = fdiv fast float %9778, %9800
  %9802 = fadd fast float %9801, %9798
  %9803 = fmul fast float %9785, %9739
  %9804 = fsub fast float %9660, %9803
  %9805 = fmul fast float %9790, %9739
  %9806 = fadd fast float %9805, %9660
  %9807 = fmul fast float %9802, %9740
  %9808 = fadd fast float %9807, %9661
  %9809 = fmul fast float %9797, %9740
  %9810 = fsub fast float %9661, %9809
  %9811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9804, float %9810, float %9728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9812 = extractvalue %dx.types.ResRet.f32 %9811, 0
  %9813 = extractvalue %dx.types.ResRet.f32 %9811, 1
  %9814 = extractvalue %dx.types.ResRet.f32 %9811, 2
  %9815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9806, float %9810, float %9728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9816 = extractvalue %dx.types.ResRet.f32 %9815, 0
  %9817 = extractvalue %dx.types.ResRet.f32 %9815, 1
  %9818 = extractvalue %dx.types.ResRet.f32 %9815, 2
  %9819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9804, float %9808, float %9728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9820 = extractvalue %dx.types.ResRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.ResRet.f32 %9819, 1
  %9822 = extractvalue %dx.types.ResRet.f32 %9819, 2
  %9823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9806, float %9808, float %9728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9824 = extractvalue %dx.types.ResRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.ResRet.f32 %9823, 1
  %9826 = extractvalue %dx.types.ResRet.f32 %9823, 2
  %9827 = fsub fast float %9820, %9812
  %9828 = fsub fast float %9821, %9813
  %9829 = fsub fast float %9822, %9814
  %9830 = fmul fast float %9827, %9800
  %9831 = fmul fast float %9828, %9800
  %9832 = fmul fast float %9829, %9800
  %9833 = fadd fast float %9830, %9812
  %9834 = fadd fast float %9831, %9813
  %9835 = fadd fast float %9832, %9814
  %9836 = fsub fast float %9824, %9816
  %9837 = fsub fast float %9825, %9817
  %9838 = fsub fast float %9826, %9818
  %9839 = fmul fast float %9836, %9800
  %9840 = fmul fast float %9837, %9800
  %9841 = fmul fast float %9838, %9800
  %9842 = fsub fast float %9816, %9833
  %9843 = fadd fast float %9842, %9839
  %9844 = fsub fast float %9817, %9834
  %9845 = fadd fast float %9844, %9840
  %9846 = fsub fast float %9818, %9835
  %9847 = fadd fast float %9846, %9841
  %9848 = fmul fast float %9843, %9788
  %9849 = fmul fast float %9845, %9788
  %9850 = fmul fast float %9847, %9788
  %9851 = fadd fast float %9848, %9833
  %9852 = fadd fast float %9849, %9834
  %9853 = fadd fast float %9850, %9835
  %9854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9855 = extractvalue %dx.types.CBufRet.f32 %9854, 1
  %9856 = fmul fast float %9851, %9855
  %9857 = fmul fast float %9852, %9855
  %9858 = fmul fast float %9853, %9855
  br label %9859

; <label>:9859                                    ; preds = %9690, %9647
  %9860 = phi float [ %9730, %9690 ], [ 1.000000e+00, %9647 ]
  %9861 = phi float [ %9731, %9690 ], [ 1.000000e+00, %9647 ]
  %9862 = phi float [ %9732, %9690 ], [ 1.000000e+00, %9647 ]
  %9863 = phi float [ %9856, %9690 ], [ 0.000000e+00, %9647 ]
  %9864 = phi float [ %9857, %9690 ], [ 0.000000e+00, %9647 ]
  %9865 = phi float [ %9858, %9690 ], [ 0.000000e+00, %9647 ]
  %9866 = fmul fast float %9863, %8209
  %9867 = fmul fast float %9864, %8210
  %9868 = fmul fast float %9865, %8211
  %9869 = fmul fast float %9860, %9654
  %9870 = call float @dx.op.dot3.f32(i32 55, float %9860, float %9861, float %9862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9871 = call float @dx.op.dot3.f32(i32 55, float %9866, float %9867, float %9868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9872 = select i1 %249, float %9870, float %9860
  %9873 = select i1 %249, float %9870, float %9861
  %9874 = select i1 %249, float 1.000000e+00, float %9862
  %9875 = select i1 %249, float %9871, float %9866
  %9876 = select i1 %249, float 0.000000e+00, float %9867
  %9877 = select i1 %249, float 0.000000e+00, float %9868
  %9878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9879 = extractvalue %dx.types.CBufRet.i32 %9878, 3
  %9880 = and i32 %9879, 3
  %9881 = icmp ne i32 %9880, 0
  %9882 = and i32 %9879, 4
  %9883 = icmp ne i32 %9882, 0
  %9884 = and i1 %9881, %9883
  %9885 = and i1 %249, %9884
  br i1 %9885, label %9886, label %9892

; <label>:9886                                    ; preds = %9859
  %9887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.f32 %9887, 1
  %9889 = fadd fast float %9869, -1.000000e+00
  %9890 = fmul fast float %9888, %9889
  %9891 = fadd fast float %9890, 1.000000e+00
  br label %9892

; <label>:9892                                    ; preds = %9886, %9859
  %9893 = phi float [ %9891, %9886 ], [ %9869, %9859 ]
  %9894 = fadd fast float %9651, %9648
  %9895 = fmul fast float %9872, %9894
  %9896 = fadd fast float %9895, %9875
  %9897 = fadd fast float %9652, %9649
  %9898 = fmul fast float %9873, %9897
  %9899 = fadd fast float %9898, %9876
  %9900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9901 = extractvalue %dx.types.CBufRet.f32 %9900, 0
  br i1 %249, label %9902, label %9917

; <label>:9902                                    ; preds = %9892
  %9903 = fadd fast float %9896, %9899
  %9904 = fmul fast float %9901, %9903
  %9905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9906 = extractvalue %dx.types.CBufRet.f32 %9905, 3
  %9907 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %9908 = fsub fast float %8198, %8192
  %9909 = fadd fast float %9908, %8199
  %9910 = fsub fast float %9909, %9907
  %9911 = extractvalue %dx.types.CBufRet.f32 %8193, 2
  %9912 = fmul fast float %9910, %9911
  %9913 = call float @dx.op.unary.f32(i32 7, float %9912)  ; Saturate(value)
  %9914 = fsub fast float %9913, %9906
  %9915 = fmul fast float %9914, %9893
  %9916 = fadd fast float %9915, %9906
  br label %9943

; <label>:9917                                    ; preds = %9892
  %9918 = fadd fast float %9653, %9650
  %9919 = fmul fast float %9874, %9918
  %9920 = fadd fast float %9919, %9877
  %9921 = fmul fast float %9901, %9896
  %9922 = fmul fast float %9901, %9899
  %9923 = fmul fast float %9901, %9920
  %9924 = call float @dx.op.binary.f32(i32 35, float %9922, float %9923)  ; FMax(a,b)
  %9925 = call float @dx.op.binary.f32(i32 35, float %9921, float %9924)  ; FMax(a,b)
  %9926 = call float @dx.op.binary.f32(i32 35, float %8210, float %8211)  ; FMax(a,b)
  %9927 = call float @dx.op.binary.f32(i32 35, float %8209, float %9926)  ; FMax(a,b)
  %9928 = call float @dx.op.binary.f32(i32 35, float %9925, float %9927)  ; FMax(a,b)
  %9929 = fcmp fast ugt float %9928, 0x3F10000000000000
  br i1 %9929, label %9931, label %9930

; <label>:9930                                    ; preds = %9917
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9931

; <label>:9931                                    ; preds = %9930, %9917
  %9932 = add i32 %54, 356
  %9933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9932, i32 undef)  ; BufferLoad(srv,index,wot)
  %9934 = extractvalue %dx.types.ResRet.i32 %9933, 0
  %9935 = and i32 %9934, 32
  %9936 = icmp eq i32 %9935, 0
  br i1 %9936, label %9943, label %9937

; <label>:9937                                    ; preds = %9931
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 0
  %9940 = fmul fast float %9939, 0x3FE99999A0000000
  %9941 = fadd fast float %9939, %9921
  %9942 = fadd fast float %9940, %9923
  br label %9943

; <label>:9943                                    ; preds = %9937, %9931, %9902
  %9944 = phi float [ 1.000000e+00, %9902 ], [ %8210, %9937 ], [ %8210, %9931 ]
  %9945 = phi float [ 1.000000e+00, %9902 ], [ %8211, %9937 ], [ %8211, %9931 ]
  %9946 = phi float [ %9904, %9902 ], [ %9941, %9937 ], [ %9921, %9931 ]
  %9947 = phi float [ %9916, %9902 ], [ %9922, %9937 ], [ %9922, %9931 ]
  %9948 = phi float [ 1.000000e+00, %9902 ], [ %9942, %9937 ], [ %9923, %9931 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9949 = call float @dx.op.binary.f32(i32 36, float %9946, float 3.225500e+04)  ; FMin(a,b)
  %9950 = call float @dx.op.binary.f32(i32 36, float %9947, float 3.225500e+04)  ; FMin(a,b)
  %9951 = call float @dx.op.binary.f32(i32 36, float %9948, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9949)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9950)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9951)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9952 = call float @dx.op.binary.f32(i32 36, float %8209, float 3.225500e+04)  ; FMin(a,b)
  %9953 = call float @dx.op.binary.f32(i32 36, float %9944, float 3.225500e+04)  ; FMin(a,b)
  %9954 = call float @dx.op.binary.f32(i32 36, float %9945, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9952)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9953)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9954)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

