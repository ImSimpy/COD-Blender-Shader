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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
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
; shader hash: c5f0fcd9be32e7db50dda4832b9cebca
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = alloca [12 x float], align 4
  %88 = alloca [12 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %83
  %96 = fmul fast float %94, %84
  %97 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = bitcast float %97 to i32
  %99 = ashr i32 %98, 1
  %100 = sub nsw i32 1597250115, %99
  %101 = bitcast i32 %100 to float
  %102 = fmul fast float %101, %74
  %103 = fmul fast float %101, %75
  %104 = fmul fast float %101, %76
  %105 = fmul fast float %75, %72
  %106 = fmul fast float %76, %71
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %76, %70
  %109 = fmul fast float %74, %72
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %74, %71
  %112 = fmul fast float %75, %70
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %107, %73
  %115 = fmul fast float %110, %73
  %116 = fmul fast float %113, %73
  %117 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %63
  %123 = fmul fast float %121, %64
  %124 = fmul fast float %121, %65
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %95, 2.000000e+00
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %96, 2.000000e+00
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 1.000000e+00, %129
  %133 = fsub fast float 1.000000e+00, %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %132, %135
  %139 = fmul fast float %132, %136
  %140 = fmul fast float %132, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %133, %142
  %146 = fmul fast float %133, %143
  %147 = fmul fast float %133, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %152, %138
  %154 = fadd fast float %146, %150
  %155 = fadd fast float %154, %139
  %156 = fadd fast float %147, %151
  %157 = fadd fast float %156, %140
  %158 = fmul fast float %153, %86
  %159 = fmul fast float %155, %86
  %160 = fmul fast float %157, %86
  %161 = fmul fast float %95, 5.000000e-01
  %162 = fmul fast float %96, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %95
  %185 = fmul fast float %183, %96
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp ne i32 %202, 0
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %216

; <label>:205                                     ; preds = %0
  %206 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %207 = fmul fast float %206, %96
  %208 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %209 = fmul fast float %208, %95
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %209, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast olt float %212, %214
  br label %219

; <label>:216                                     ; preds = %0
  %217 = icmp eq i32 %202, 0
  %218 = and i1 %201, %217
  br label %219

; <label>:219                                     ; preds = %216, %205
  %220 = phi i1 [ %215, %205 ], [ %218, %216 ]
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fmul fast float %222, 0x3FE3C6EF40000000
  %224 = frem fast float %95, 2.560000e+02
  %225 = frem fast float %96, 2.560000e+02
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fadd fast float %229, %223
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = add i32 %54, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %54, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %54, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %54, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %54, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %54, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %54, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %54, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %54, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %54, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %54, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %54, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %54, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %54, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %54, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %54, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %54, 348
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %219
  %414 = add i32 %54, 472
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = fmul fast float %423, %79
  %425 = fmul fast float %420, %80
  %426 = fmul fast float %421, %81
  %427 = fmul fast float %422, %82
  br label %428

; <label>:428                                     ; preds = %413, %219
  %429 = phi float [ %82, %219 ], [ %427, %413 ]
  %430 = phi float [ %81, %219 ], [ %426, %413 ]
  %431 = phi float [ %80, %219 ], [ %425, %413 ]
  %432 = phi float [ %79, %219 ], [ %424, %413 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

; <label>:437                                     ; preds = %428
  %438 = add i32 %54, 44
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %431, float 1.000000e+00
  %444 = add i32 %54, 60
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %430, float 1.000000e+00
  %450 = add i32 %54, 76
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %429, float 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %437, %428
  %457 = phi float [ %429, %428 ], [ %455, %437 ]
  %458 = phi float [ %430, %428 ], [ %449, %437 ]
  %459 = phi float [ %431, %428 ], [ %443, %437 ]
  %460 = lshr i32 %434, 20
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 1
  %463 = add i32 %54, 24
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %54, 28
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = or i32 %468, %465
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1120, label %471

; <label>:471                                     ; preds = %456
  %472 = and i32 %465, 262144
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %57, float 1.000000e+00
  %475 = select i1 %473, float %58, float 0.000000e+00
  %476 = select i1 %473, float %59, float 0.000000e+00
  %477 = select i1 %473, float %60, float 1.000000e+00
  %478 = select i1 %473, float %61, float %77
  %479 = select i1 %473, float %62, float %78
  %480 = add i32 %54, 284
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %484, 0x3F50624DE0000000
  %486 = add i32 %54, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = and i32 %489, 255
  %491 = lshr i32 %488, 24
  %492 = add i32 %54, 292
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = add i32 %54, 32
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = shl i32 %501, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fmul fast float %512, 1.000000e+03
  %514 = fmul fast float %272, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %262
  %517 = fmul fast float %273, %513
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %264
  %520 = fmul fast float %485, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x401921FB60000000
  %523 = fadd fast float %522, %504
  %524 = call float @dx.op.unary.f32(i32 13, float %523)  ; Sin(value)
  %525 = call float @dx.op.unary.f32(i32 12, float %523)  ; Cos(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fadd fast float %478, -5.000000e-01
  %528 = fadd fast float %479, -5.000000e-01
  %529 = fmul fast float %496, %527
  %530 = fmul fast float %498, %528
  %531 = fadd fast float %529, 5.000000e-01
  %532 = fadd fast float %530, 5.000000e-01
  %533 = fmul fast float %507, %531
  %534 = fmul fast float %510, %532
  %535 = fmul fast float %525, %533
  %536 = call float @dx.op.tertiary.f32(i32 46, float %526, float %534, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %524, %533
  %538 = call float @dx.op.tertiary.f32(i32 46, float %525, float %534, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %516, %536
  %540 = fadd fast float %519, %538
  %541 = icmp ugt i32 %490, 1
  %542 = icmp ugt i32 %488, 33554431
  %543 = or i1 %542, %541
  br i1 %543, label %544, label %569

; <label>:544                                     ; preds = %471
  %545 = add i32 %54, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fmul fast float %512, %549
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = mul nuw nsw i32 %490, %491
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %551, %553
  %555 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %556 = fptoui float %555 to i32
  %557 = urem i32 %556, %490
  %558 = udiv i32 %556, %491
  %559 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %560 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %561 = uitofp i32 %557 to float
  %562 = uitofp i32 %558 to float
  %563 = fadd fast float %559, %561
  %564 = fadd fast float %560, %562
  %565 = uitofp i32 %490 to float
  %566 = uitofp i32 %491 to float
  %567 = fdiv fast float %563, %565
  %568 = fdiv fast float %564, %566
  br label %569

; <label>:569                                     ; preds = %544, %471
  %570 = phi float [ %567, %544 ], [ %539, %471 ]
  %571 = phi float [ %568, %544 ], [ %540, %471 ]
  %572 = and i32 %465, 16777216
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = fadd fast float %576, %158
  %580 = fadd fast float %577, %159
  %581 = fadd fast float %578, %160
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = icmp eq i32 %55, 65535
  br i1 %585, label %680, label %586

; <label>:586                                     ; preds = %574
  %587 = lshr i32 %55, 1
  %588 = shl i32 %587, 2
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %55, 1
  %592 = icmp ne i32 %591, 0
  %593 = lshr i32 %590, 16
  %594 = and i32 %590, 65535
  %595 = select i1 %592, i32 %593, i32 %594
  %596 = icmp eq i32 %595, 65535
  br i1 %596, label %676, label %597

; <label>:597                                     ; preds = %586
  %598 = mul nuw nsw i32 %595, 40
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add nuw nsw i32 %598, 12
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %598, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %598, 36
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fsub fast float %579, %600
  %617 = fsub fast float %580, %601
  %618 = fsub fast float %581, %602
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fmul fast float %625, %605
  %629 = fmul fast float %626, %606
  %630 = fmul fast float %627, %607
  %631 = shl i32 %55, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %49, float %636, float %637, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fmul fast float %641, 1.023000e+03
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = fsub fast float %619, %622
  %653 = fsub fast float %620, %623
  %654 = fsub fast float %621, %624
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fmul fast float %653, 7.500000e-01
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fadd fast float %622, 1.250000e-01
  %659 = fadd fast float %658, %655
  %660 = fadd fast float %659, %649
  %661 = fadd fast float %623, 1.250000e-01
  %662 = fadd fast float %661, %656
  %663 = fadd fast float %662, %650
  %664 = fadd fast float %624, 1.250000e-01
  %665 = fadd fast float %664, %657
  %666 = fadd fast float %665, %651
  %667 = fmul fast float %660, %610
  %668 = fmul fast float %663, %611
  %669 = fmul fast float %666, %612
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %47, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  br label %676

; <label>:676                                     ; preds = %597, %586
  %677 = phi float [ %675, %597 ], [ -1.000000e+00, %586 ]
  %678 = fadd fast float %677, %584
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %676, %574
  %681 = phi float [ %679, %676 ], [ %584, %574 ]
  %682 = fmul fast float %681, %432
  br label %683

; <label>:683                                     ; preds = %680, %569
  %684 = phi float [ %682, %680 ], [ %432, %569 ]
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 256
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %735, label %689

; <label>:689                                     ; preds = %683
  %690 = add i32 %54, 424
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = add i32 %54, 100
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float 1.000000e+00, %684
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %708 = bitcast float %684 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %705, %710
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = bitcast float %707 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %714, %702
  %723 = fmul fast float %721, %702
  %724 = fsub fast float %707, %722
  %725 = fadd fast float %723, %707
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fsub fast float %696, %726
  %729 = fsub fast float %727, %726
  %730 = bitcast float %729 to i32
  %731 = sub nsw i32 2129859010, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %689, %683
  %736 = phi float [ %734, %689 ], [ %684, %683 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 128
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %735
  %742 = add i32 %54, 408
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 524288
  %752 = icmp ne i32 %751, 0
  %753 = fcmp fast ogt float %748, 0x3FE0101020000000
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %755 = select i1 %752, float %754, float %748
  %756 = fmul fast float %755, %736
  br label %757

; <label>:757                                     ; preds = %741, %735
  %758 = phi float [ %756, %741 ], [ %736, %735 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %961, label %763

; <label>:763                                     ; preds = %757
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %54, 360
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 512
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

; <label>:788                                     ; preds = %763
  %789 = add i32 %54, 440
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  br label %796

; <label>:796                                     ; preds = %788, %763
  %797 = phi float [ %795, %788 ], [ 1.000000e+00, %763 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 33554432
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %908, label %802

; <label>:802                                     ; preds = %796
  %803 = add i32 %54, 224
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %54, 228
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 24
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = and i32 %816, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %816, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %816, 16
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = add i32 %54, 220
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = and i32 %833, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %833, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %833, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = bitcast float %772 to i32
  %849 = ashr i32 %848, 1
  %850 = sub nsw i32 1597463174, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %772, 5.000000e-01
  %853 = fmul fast float %851, %851
  %854 = fmul fast float %853, %852
  %855 = fsub fast float 1.500000e+00, %854
  %856 = fmul fast float %851, %772
  %857 = fmul fast float %856, %855
  %858 = bitcast float %773 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %773, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %773
  %867 = fmul fast float %866, %865
  %868 = bitcast float %774 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %774, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %774
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %857, %839
  %879 = fsub fast float %867, %843
  %880 = fsub fast float %877, %847
  %881 = fmul fast float %878, %807
  %882 = fmul fast float %879, %809
  %883 = fmul fast float %880, %814
  %884 = fadd fast float %881, %822
  %885 = fadd fast float %882, %826
  %886 = fadd fast float %883, %830
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fsub fast float %890, %772
  %894 = fsub fast float %891, %773
  %895 = fsub fast float %892, %774
  %896 = fmul fast float %893, %797
  %897 = fmul fast float %894, %797
  %898 = fmul fast float %895, %797
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %897, %773
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %819, %783
  %903 = fsub fast float %902, %836
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float %904, %783
  %906 = fmul fast float %905, %797
  %907 = fadd fast float %906, %783
  br label %961

; <label>:908                                     ; preds = %796
  %909 = and i32 %799, 134217728
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %945, label %911

; <label>:911                                     ; preds = %908
  %912 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %913 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fmul fast float %915, %797
  %919 = fmul fast float %916, %797
  %920 = fmul fast float %917, %797
  %921 = fadd fast float %918, 5.000000e-01
  %922 = fadd fast float %919, 5.000000e-01
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = fmul fast float %921, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %928, %924
  %930 = fadd fast float %929, %927
  %931 = fmul fast float %930, %924
  %932 = fmul fast float %922, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %925
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %923, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %926
  %942 = fmul fast float %931, %931
  %943 = fmul fast float %936, %936
  %944 = fmul fast float %941, %941
  br label %961

; <label>:945                                     ; preds = %908
  %946 = fmul fast float %249, %249
  %947 = fmul fast float %253, %253
  %948 = fmul fast float %257, %257
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fadd fast float %947, -1.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fmul fast float %797, %949
  %953 = fmul fast float %797, %950
  %954 = fmul fast float %797, %951
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fadd fast float %953, 1.000000e+00
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fmul fast float %955, %772
  %959 = fmul fast float %956, %773
  %960 = fmul fast float %957, %774
  br label %961

; <label>:961                                     ; preds = %945, %911, %802, %757
  %962 = phi float [ %907, %802 ], [ %783, %911 ], [ %783, %945 ], [ 0x3FA23C0BE0000000, %757 ]
  %963 = phi float [ %899, %802 ], [ %942, %911 ], [ %958, %945 ], [ 1.000000e+00, %757 ]
  %964 = phi float [ %900, %802 ], [ %943, %911 ], [ %959, %945 ], [ 1.000000e+00, %757 ]
  %965 = phi float [ %901, %802 ], [ %944, %911 ], [ %960, %945 ], [ 1.000000e+00, %757 ]
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 1
  %969 = icmp ne i32 %968, 0
  %970 = add i32 %54, 356
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 32
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %969, %974
  %976 = select i1 %975, float 1.000000e+00, float %963
  %977 = select i1 %975, float 0x3FD3333340000000, float %964
  %978 = select i1 %975, float 0x3FD3333340000000, float %965
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1055, label %983

; <label>:983                                     ; preds = %961
  %984 = add i32 %54, 92
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %54, 376
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = and i32 %986, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %986, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %986, 16
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fmul fast float %993, %998
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fadd fast float %996, -5.000000e-01
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1010, %1005
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 67108864
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %983
  %1036 = add i32 %54, 280
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1038, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fsub fast float %1008, %1046
  %1048 = fmul fast float %1047, %1040
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  br label %1051

; <label>:1051                                    ; preds = %1035, %983
  %1052 = phi float [ %1050, %1035 ], [ %1008, %983 ]
  %1053 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %1054 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  br label %1055

; <label>:1055                                    ; preds = %1051, %961
  %1056 = phi float [ %1052, %1051 ], [ 0x3FD6666660000000, %961 ]
  %1057 = phi float [ %1053, %1051 ], [ 0.000000e+00, %961 ]
  %1058 = phi float [ %1054, %1051 ], [ 0.000000e+00, %961 ]
  %1059 = phi float [ %995, %1051 ], [ 1.000000e+00, %961 ]
  %1060 = add i32 %54, 160
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 22
  %1064 = shl nuw nsw i32 %1063, 5
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 64
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1103, label %1070

; <label>:1070                                    ; preds = %1055
  %1071 = add i32 %54, 392
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 131072
  %1079 = icmp eq i32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, %237
  %1085 = fmul fast float %1082, %240
  %1086 = fmul fast float %1083, %243
  br i1 %1079, label %1093, label %1087

; <label>:1087                                    ; preds = %1070
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1089, %1085
  %1092 = fmul fast float %1089, %1086
  br label %1093

; <label>:1093                                    ; preds = %1087, %1070
  %1094 = phi float [ %1090, %1087 ], [ %1084, %1070 ]
  %1095 = phi float [ %1091, %1087 ], [ %1085, %1070 ]
  %1096 = phi float [ %1092, %1087 ], [ %1086, %1070 ]
  %1097 = fmul fast float %1094, %1065
  %1098 = select i1 %220, float %1097, float %1094
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %220, float 0.000000e+00, float %1094
  %1101 = select i1 %220, float %1099, float %1095
  %1102 = select i1 %220, float 0.000000e+00, float %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1055
  %1104 = phi float [ %1100, %1093 ], [ 0.000000e+00, %1055 ]
  %1105 = phi float [ %1101, %1093 ], [ 0.000000e+00, %1055 ]
  %1106 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1055 ]
  %1107 = add i32 %54, 96
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1109, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = fmul fast float %1114, %1115
  %1117 = fadd fast float %1116, %1111
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  br label %1120

; <label>:1120                                    ; preds = %1103, %456
  %1121 = phi float [ 0.000000e+00, %456 ], [ %1057, %1103 ]
  %1122 = phi float [ 0.000000e+00, %456 ], [ %1058, %1103 ]
  %1123 = phi float [ 0.000000e+00, %456 ], [ %976, %1103 ]
  %1124 = phi float [ 0.000000e+00, %456 ], [ %977, %1103 ]
  %1125 = phi float [ 0.000000e+00, %456 ], [ %978, %1103 ]
  %1126 = phi float [ 0.000000e+00, %456 ], [ %1104, %1103 ]
  %1127 = phi float [ 0.000000e+00, %456 ], [ %1105, %1103 ]
  %1128 = phi float [ 0.000000e+00, %456 ], [ %1106, %1103 ]
  %1129 = phi float [ 0.000000e+00, %456 ], [ %962, %1103 ]
  %1130 = phi float [ 0.000000e+00, %456 ], [ %758, %1103 ]
  %1131 = phi float [ 0.000000e+00, %456 ], [ %1056, %1103 ]
  %1132 = phi float [ 0.000000e+00, %456 ], [ %1059, %1103 ]
  %1133 = phi float [ 0.000000e+00, %456 ], [ %1119, %1103 ]
  br i1 %404, label %1975, label %1134

; <label>:1134                                    ; preds = %1120
  %1135 = icmp ult i32 %462, 2
  %1136 = add i32 %54, 40
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %54, 44
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = or i32 %1141, %1138
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1975, label %1144

; <label>:1144                                    ; preds = %1134
  %1145 = and i32 %1138, 262144
  %1146 = icmp ne i32 %1145, 0
  %1147 = select i1 %1146, float %57, float 1.000000e+00
  %1148 = select i1 %1146, float %58, float 0.000000e+00
  %1149 = select i1 %1146, float %59, float 0.000000e+00
  %1150 = select i1 %1146, float %60, float 1.000000e+00
  %1151 = select i1 %1146, float %61, float %77
  %1152 = select i1 %1146, float %62, float %78
  %1153 = add i32 %54, 300
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1157, 0x3F50624DE0000000
  %1159 = add i32 %54, 104
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 16
  %1163 = and i32 %1162, 255
  %1164 = lshr i32 %1161, 24
  %1165 = add i32 %54, 308
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1167, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = add i32 %54, 48
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 22
  %1176 = shl nuw nsw i32 %1175, 5
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = shl i32 %1174, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = fmul fast float %1185, 1.000000e+03
  %1187 = fmul fast float %314, %1186
  %1188 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1189 = fadd fast float %1188, %304
  %1190 = fmul fast float %315, %1186
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %306
  %1193 = fmul fast float %1158, %1186
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fmul fast float %1194, 0x401921FB60000000
  %1196 = fadd fast float %1195, %1177
  %1197 = call float @dx.op.unary.f32(i32 13, float %1196)  ; Sin(value)
  %1198 = call float @dx.op.unary.f32(i32 12, float %1196)  ; Cos(value)
  %1199 = fsub fast float -0.000000e+00, %1197
  %1200 = fadd fast float %1151, -5.000000e-01
  %1201 = fadd fast float %1152, -5.000000e-01
  %1202 = fmul fast float %1169, %1200
  %1203 = fmul fast float %1171, %1201
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = fadd fast float %1203, 5.000000e-01
  %1206 = fmul fast float %1180, %1204
  %1207 = fmul fast float %1183, %1205
  %1208 = fmul fast float %1198, %1206
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %1207, float %1208)  ; FMad(a,b,c)
  %1210 = fmul fast float %1197, %1206
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1207, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1189, %1209
  %1213 = fadd fast float %1192, %1211
  %1214 = icmp ugt i32 %1163, 1
  %1215 = icmp ugt i32 %1161, 33554431
  %1216 = or i1 %1215, %1214
  br i1 %1216, label %1217, label %1242

; <label>:1217                                    ; preds = %1144
  %1218 = add i32 %54, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = lshr i32 %1220, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fmul fast float %1185, %1222
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = mul nuw nsw i32 %1163, %1164
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1224, %1226
  %1228 = call float @dx.op.unary.f32(i32 27, float %1227)  ; Round_ni(value)
  %1229 = fptoui float %1228 to i32
  %1230 = urem i32 %1229, %1163
  %1231 = udiv i32 %1229, %1164
  %1232 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1233 = call float @dx.op.unary.f32(i32 22, float %1213)  ; Frc(value)
  %1234 = uitofp i32 %1230 to float
  %1235 = uitofp i32 %1231 to float
  %1236 = fadd fast float %1232, %1234
  %1237 = fadd fast float %1233, %1235
  %1238 = uitofp i32 %1163 to float
  %1239 = uitofp i32 %1164 to float
  %1240 = fdiv fast float %1236, %1238
  %1241 = fdiv fast float %1237, %1239
  br label %1242

; <label>:1242                                    ; preds = %1217, %1144
  %1243 = phi float [ %1240, %1217 ], [ %1212, %1144 ]
  %1244 = phi float [ %1241, %1217 ], [ %1213, %1144 ]
  %1245 = and i32 %1138, 16777216
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1356, label %1247

; <label>:1247                                    ; preds = %1242
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = fadd fast float %1249, %158
  %1253 = fadd fast float %1250, %159
  %1254 = fadd fast float %1251, %160
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = icmp eq i32 %55, 65535
  br i1 %1258, label %1353, label %1259

; <label>:1259                                    ; preds = %1247
  %1260 = lshr i32 %55, 1
  %1261 = shl i32 %1260, 2
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %55, 1
  %1265 = icmp ne i32 %1264, 0
  %1266 = lshr i32 %1263, 16
  %1267 = and i32 %1263, 65535
  %1268 = select i1 %1265, i32 %1266, i32 %1267
  %1269 = icmp eq i32 %1268, 65535
  br i1 %1269, label %1349, label %1270

; <label>:1270                                    ; preds = %1259
  %1271 = mul nuw nsw i32 %1268, 40
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = add nuw nsw i32 %1271, 12
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = add nuw nsw i32 %1271, 24
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = add nuw nsw i32 %1271, 36
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = fsub fast float %1252, %1273
  %1290 = fsub fast float %1253, %1274
  %1291 = fsub fast float %1254, %1275
  %1292 = fmul fast float %1288, %1289
  %1293 = fmul fast float %1288, %1290
  %1294 = fmul fast float %1288, %1291
  %1295 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 27, float %1293)  ; Round_ni(value)
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = fadd fast float %1295, 5.000000e-01
  %1299 = fadd fast float %1296, 5.000000e-01
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fmul fast float %1298, %1278
  %1302 = fmul fast float %1299, %1279
  %1303 = fmul fast float %1300, %1280
  %1304 = shl i32 %55, 2
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1308, %dx.types.Handle %49, float %1309, float %1310, float %1311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = fmul fast float %1313, 1.023000e+03
  %1317 = fmul fast float %1314, 1.023000e+03
  %1318 = fmul fast float %1315, 1.023000e+03
  %1319 = fadd fast float %1316, 5.000000e-01
  %1320 = fadd fast float %1317, 5.000000e-01
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = call float @dx.op.unary.f32(i32 27, float %1319)  ; Round_ni(value)
  %1323 = call float @dx.op.unary.f32(i32 27, float %1320)  ; Round_ni(value)
  %1324 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1325 = fsub fast float %1292, %1295
  %1326 = fsub fast float %1293, %1296
  %1327 = fsub fast float %1294, %1297
  %1328 = fmul fast float %1325, 7.500000e-01
  %1329 = fmul fast float %1326, 7.500000e-01
  %1330 = fmul fast float %1327, 7.500000e-01
  %1331 = fadd fast float %1295, 1.250000e-01
  %1332 = fadd fast float %1331, %1328
  %1333 = fadd fast float %1332, %1322
  %1334 = fadd fast float %1296, 1.250000e-01
  %1335 = fadd fast float %1334, %1329
  %1336 = fadd fast float %1335, %1323
  %1337 = fadd fast float %1297, 1.250000e-01
  %1338 = fadd fast float %1337, %1330
  %1339 = fadd fast float %1338, %1324
  %1340 = fmul fast float %1333, %1283
  %1341 = fmul fast float %1336, %1284
  %1342 = fmul fast float %1339, %1285
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1346, %dx.types.Handle %47, float %1340, float %1341, float %1342, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1270, %1259
  %1350 = phi float [ %1348, %1270 ], [ -1.000000e+00, %1259 ]
  %1351 = fadd fast float %1350, %1257
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br label %1353

; <label>:1353                                    ; preds = %1349, %1247
  %1354 = phi float [ %1352, %1349 ], [ %1257, %1247 ]
  %1355 = fmul fast float %1354, %459
  br label %1356

; <label>:1356                                    ; preds = %1353, %1242
  %1357 = phi float [ %1355, %1353 ], [ %459, %1242 ]
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 256
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1408, label %1362

; <label>:1362                                    ; preds = %1356
  %1363 = add i32 %54, 428
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = add i32 %1365, 0
  %1367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1367, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = add i32 %54, 116
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = shl i32 %1372, 4
  %1374 = and i32 %1373, 32752
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = lshr i32 %1372, 7
  %1377 = and i32 %1376, 32752
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = fsub fast float 1.000000e+00, %1357
  %1380 = call float @dx.op.binary.f32(i32 35, float %1379, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1381 = bitcast float %1357 to i32
  %1382 = sitofp i32 %1381 to float
  %1383 = fadd fast float %1382, 0xC1CFBF8940000000
  %1384 = fmul fast float %1378, %1383
  %1385 = fadd fast float %1384, 0x41CFBF8940000000
  %1386 = fptosi float %1385 to i32
  %1387 = bitcast i32 %1386 to float
  %1388 = bitcast float %1380 to i32
  %1389 = sitofp i32 %1388 to float
  %1390 = fadd fast float %1389, 0xC1CFBF8940000000
  %1391 = fmul fast float %1390, %1378
  %1392 = fadd fast float %1391, 0x41CFBF8940000000
  %1393 = fptosi float %1392 to i32
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1387, %1375
  %1396 = fmul fast float %1394, %1375
  %1397 = fsub fast float %1380, %1395
  %1398 = fadd fast float %1396, %1380
  %1399 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1400 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1401 = fsub fast float %1369, %1399
  %1402 = fsub fast float %1400, %1399
  %1403 = bitcast float %1402 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1405, %1401
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1362, %1356
  %1409 = phi float [ %1407, %1362 ], [ %1357, %1356 ]
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 128
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1430, label %1414

; <label>:1414                                    ; preds = %1408
  %1415 = add i32 %54, 412
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = add i32 %1417, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1419, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 524288
  %1425 = icmp ne i32 %1424, 0
  %1426 = fcmp fast ogt float %1421, 0x3FE0101020000000
  %1427 = select i1 %1426, float 1.000000e+00, float 0.000000e+00
  %1428 = select i1 %1425, float %1427, float %1421
  %1429 = fmul fast float %1428, %1409
  br label %1430

; <label>:1430                                    ; preds = %1414, %1408
  %1431 = phi float [ %1429, %1414 ], [ %1409, %1408 ]
  %1432 = fcmp fast ult float %1431, 0x3F70101020000000
  br i1 %1432, label %1975, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 16
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1636, label %1438

; <label>:1438                                    ; preds = %1433
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %54, 364
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = and i32 %1440, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = lshr i32 %1440, 8
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1450, %1452
  %1457 = fadd fast float %1456, %1455
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 512
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1471, label %1463

; <label>:1463                                    ; preds = %1438
  %1464 = add i32 %54, 444
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  br label %1471

; <label>:1471                                    ; preds = %1463, %1438
  %1472 = phi float [ %1470, %1463 ], [ 1.000000e+00, %1438 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 33554432
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1583, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %54, 240
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1480, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = add i32 %54, 244
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = lshr i32 %1491, 24
  %1493 = uitofp i32 %1492 to float
  %1494 = fmul fast float %1493, 0x3F70101020000000
  %1495 = and i32 %1491, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = lshr i32 %1491, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = lshr i32 %1491, 16
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = add i32 %54, 236
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 24
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = and i32 %1508, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1508, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1508, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = bitcast float %1447 to i32
  %1524 = ashr i32 %1523, 1
  %1525 = sub nsw i32 1597463174, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1447, 5.000000e-01
  %1528 = fmul fast float %1526, %1526
  %1529 = fmul fast float %1528, %1527
  %1530 = fsub fast float 1.500000e+00, %1529
  %1531 = fmul fast float %1526, %1447
  %1532 = fmul fast float %1531, %1530
  %1533 = bitcast float %1448 to i32
  %1534 = ashr i32 %1533, 1
  %1535 = sub nsw i32 1597463174, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1448, 5.000000e-01
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1538, %1537
  %1540 = fsub fast float 1.500000e+00, %1539
  %1541 = fmul fast float %1536, %1448
  %1542 = fmul fast float %1541, %1540
  %1543 = bitcast float %1449 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = sub nsw i32 1597463174, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1449, 5.000000e-01
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1548, %1547
  %1550 = fsub fast float 1.500000e+00, %1549
  %1551 = fmul fast float %1546, %1449
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float %1532, %1514
  %1554 = fsub fast float %1542, %1518
  %1555 = fsub fast float %1552, %1522
  %1556 = fmul fast float %1553, %1482
  %1557 = fmul fast float %1554, %1484
  %1558 = fmul fast float %1555, %1489
  %1559 = fadd fast float %1556, %1497
  %1560 = fadd fast float %1557, %1501
  %1561 = fadd fast float %1558, %1505
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1564 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1565 = fmul fast float %1562, %1562
  %1566 = fmul fast float %1563, %1563
  %1567 = fmul fast float %1564, %1564
  %1568 = fsub fast float %1565, %1447
  %1569 = fsub fast float %1566, %1448
  %1570 = fsub fast float %1567, %1449
  %1571 = fmul fast float %1568, %1472
  %1572 = fmul fast float %1569, %1472
  %1573 = fmul fast float %1570, %1472
  %1574 = fadd fast float %1571, %1447
  %1575 = fadd fast float %1572, %1448
  %1576 = fadd fast float %1573, %1449
  %1577 = fadd fast float %1494, %1458
  %1578 = fsub fast float %1577, %1511
  %1579 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1580 = fsub fast float %1579, %1458
  %1581 = fmul fast float %1580, %1472
  %1582 = fadd fast float %1581, %1458
  br label %1636

; <label>:1583                                    ; preds = %1471
  %1584 = and i32 %1474, 134217728
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1620, label %1586

; <label>:1586                                    ; preds = %1583
  %1587 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1588 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1589 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fmul fast float %1590, %1472
  %1594 = fmul fast float %1591, %1472
  %1595 = fmul fast float %1592, %1472
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %1448)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1602 = fmul fast float %1596, 2.000000e+00
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, %1599
  %1605 = fadd fast float %1604, %1602
  %1606 = fmul fast float %1605, %1599
  %1607 = fmul fast float %1597, 2.000000e+00
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fmul fast float %1608, %1600
  %1610 = fadd fast float %1609, %1607
  %1611 = fmul fast float %1610, %1600
  %1612 = fmul fast float %1598, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1601
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1601
  %1617 = fmul fast float %1606, %1606
  %1618 = fmul fast float %1611, %1611
  %1619 = fmul fast float %1616, %1616
  br label %1636

; <label>:1620                                    ; preds = %1583
  %1621 = fmul fast float %291, %291
  %1622 = fmul fast float %295, %295
  %1623 = fmul fast float %299, %299
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fadd fast float %1622, -1.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fmul fast float %1472, %1624
  %1628 = fmul fast float %1472, %1625
  %1629 = fmul fast float %1472, %1626
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fmul fast float %1630, %1447
  %1634 = fmul fast float %1631, %1448
  %1635 = fmul fast float %1632, %1449
  br label %1636

; <label>:1636                                    ; preds = %1620, %1586, %1477, %1433
  %1637 = phi float [ %1582, %1477 ], [ %1458, %1586 ], [ %1458, %1620 ], [ 0x3FA23C0BE0000000, %1433 ]
  %1638 = phi float [ %1574, %1477 ], [ %1617, %1586 ], [ %1633, %1620 ], [ 1.000000e+00, %1433 ]
  %1639 = phi float [ %1575, %1477 ], [ %1618, %1586 ], [ %1634, %1620 ], [ 1.000000e+00, %1433 ]
  %1640 = phi float [ %1576, %1477 ], [ %1619, %1586 ], [ %1635, %1620 ], [ 1.000000e+00, %1433 ]
  %1641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.i32 %1641, 1
  %1643 = and i32 %1642, 1
  %1644 = icmp ne i32 %1643, 0
  %1645 = add i32 %54, 356
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 32
  %1649 = icmp ne i32 %1648, 0
  %1650 = and i1 %1644, %1649
  %1651 = select i1 %1650, float 1.000000e+00, float %1638
  %1652 = select i1 %1650, float 0x3FD3333340000000, float %1639
  %1653 = select i1 %1650, float 0x3FD3333340000000, float %1640
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1730, label %1658

; <label>:1658                                    ; preds = %1636
  %1659 = add i32 %54, 108
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = add i32 %54, 380
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %1664, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1666, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1667, 3
  %1672 = and i32 %1661, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = lshr i32 %1661, 8
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1661, 16
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101000000000
  %1681 = fmul fast float %1668, %1673
  %1682 = fadd fast float %1681, %1676
  %1683 = fmul fast float %1682, 0x3F70101000000000
  %1684 = fadd fast float %1669, -5.000000e-01
  %1685 = fadd fast float %1671, -5.000000e-01
  %1686 = fmul fast float %1684, %1680
  %1687 = fmul fast float %1685, %1680
  %1688 = fadd fast float %1686, 5.000000e-01
  %1689 = fadd fast float %1687, 5.000000e-01
  %1690 = fmul fast float %1688, 2.000000e+00
  %1691 = fadd fast float %1690, -1.000000e+00
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fadd fast float %1691, %1693
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = fsub fast float %1691, %1693
  %1697 = fmul fast float %1696, 5.000000e-01
  %1698 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1701 = fsub fast float %1699, %1700
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1697, float %1701, float %1695, float %1697, float %1701)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 25, float %1702)  ; Rsqrt(value)
  %1704 = fmul fast float %1695, %1703
  %1705 = fmul fast float %1697, %1703
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 67108864
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1726, label %1710

; <label>:1710                                    ; preds = %1658
  %1711 = add i32 %54, 296
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 65535
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = lshr i32 %1713, 16
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = fsub fast float %1683, %1721
  %1723 = fmul fast float %1722, %1715
  %1724 = fadd fast float %1723, %1719
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  br label %1726

; <label>:1726                                    ; preds = %1710, %1658
  %1727 = phi float [ %1725, %1710 ], [ %1683, %1658 ]
  %1728 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1147, float %1148)  ; Dot2(ax,ay,bx,by)
  %1729 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  br label %1730

; <label>:1730                                    ; preds = %1726, %1636
  %1731 = phi float [ %1727, %1726 ], [ 0x3FD6666660000000, %1636 ]
  %1732 = phi float [ %1728, %1726 ], [ 0.000000e+00, %1636 ]
  %1733 = phi float [ %1729, %1726 ], [ 0.000000e+00, %1636 ]
  %1734 = phi float [ %1670, %1726 ], [ 1.000000e+00, %1636 ]
  %1735 = add i32 %54, 176
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = lshr i32 %1737, 22
  %1739 = shl nuw nsw i32 %1738, 5
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = and i32 %1742, 64
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1778, label %1745

; <label>:1745                                    ; preds = %1730
  %1746 = add i32 %54, 396
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = add i32 %1748, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 131072
  %1754 = icmp eq i32 %1753, 0
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1750, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = fmul fast float %1756, %279
  %1760 = fmul fast float %1757, %282
  %1761 = fmul fast float %1758, %285
  br i1 %1754, label %1768, label %1762

; <label>:1762                                    ; preds = %1745
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = fmul fast float %1764, %1759
  %1766 = fmul fast float %1764, %1760
  %1767 = fmul fast float %1764, %1761
  br label %1768

; <label>:1768                                    ; preds = %1762, %1745
  %1769 = phi float [ %1765, %1762 ], [ %1759, %1745 ]
  %1770 = phi float [ %1766, %1762 ], [ %1760, %1745 ]
  %1771 = phi float [ %1767, %1762 ], [ %1761, %1745 ]
  %1772 = fmul fast float %1769, %1740
  %1773 = select i1 %220, float %1772, float %1769
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1770, float %1771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = select i1 %220, float 0.000000e+00, float %1769
  %1776 = select i1 %220, float %1774, float %1770
  %1777 = select i1 %220, float 0.000000e+00, float %1771
  br label %1778

; <label>:1778                                    ; preds = %1768, %1730
  %1779 = phi float [ %1775, %1768 ], [ 0.000000e+00, %1730 ]
  %1780 = phi float [ %1776, %1768 ], [ 0.000000e+00, %1730 ]
  %1781 = phi float [ %1777, %1768 ], [ 0.000000e+00, %1730 ]
  %1782 = add i32 %54, 112
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1784, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = fmul fast float %1789, %1790
  %1792 = fadd fast float %1791, %1786
  %1793 = fmul fast float %1792, 0x3F70101020000000
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br i1 %1135, label %1795, label %1803

; <label>:1795                                    ; preds = %1778
  %1796 = fsub fast float 1.000000e+00, %1431
  %1797 = fmul fast float %1796, %1123
  %1798 = fmul fast float %1796, %1124
  %1799 = fmul fast float %1796, %1125
  %1800 = fmul fast float %1796, %1126
  %1801 = fmul fast float %1796, %1127
  %1802 = fmul fast float %1796, %1128
  br label %1803

; <label>:1803                                    ; preds = %1795, %1778
  %1804 = phi float [ %1797, %1795 ], [ %1123, %1778 ]
  %1805 = phi float [ %1798, %1795 ], [ %1124, %1778 ]
  %1806 = phi float [ %1799, %1795 ], [ %1125, %1778 ]
  %1807 = phi float [ %1800, %1795 ], [ %1126, %1778 ]
  %1808 = phi float [ %1801, %1795 ], [ %1127, %1778 ]
  %1809 = phi float [ %1802, %1795 ], [ %1128, %1778 ]
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 3
  %1813 = icmp eq i32 %1812, 3
  br i1 %1813, label %1892, label %1814

; <label>:1814                                    ; preds = %1803
  %1815 = and i32 %1811, 16
  %1816 = icmp ne i32 %1815, 0
  %1817 = select i1 %1816, float %1431, float 0.000000e+00
  %1818 = icmp eq i32 %1812, 0
  br i1 %1818, label %1819, label %1847

; <label>:1819                                    ; preds = %1814
  %1820 = and i32 %1811, 64
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %1431, float 0.000000e+00
  %1823 = fsub fast float %1651, %1804
  %1824 = fsub fast float %1652, %1805
  %1825 = fsub fast float %1653, %1806
  %1826 = fmul fast float %1817, %1823
  %1827 = fmul fast float %1817, %1824
  %1828 = fmul fast float %1817, %1825
  %1829 = fadd fast float %1826, %1804
  %1830 = fadd fast float %1827, %1805
  %1831 = fadd fast float %1828, %1806
  %1832 = fsub fast float %1637, %1129
  %1833 = fmul fast float %1817, %1832
  %1834 = fadd fast float %1833, %1129
  %1835 = fsub fast float %1779, %1807
  %1836 = fsub fast float %1780, %1808
  %1837 = fsub fast float %1781, %1809
  %1838 = fmul fast float %1822, %1835
  %1839 = fmul fast float %1822, %1836
  %1840 = fmul fast float %1822, %1837
  %1841 = fadd fast float %1838, %1807
  %1842 = fadd fast float %1839, %1808
  %1843 = fadd fast float %1840, %1809
  %1844 = fsub fast float %1794, %1133
  %1845 = fmul fast float %1817, %1844
  %1846 = fadd fast float %1845, %1133
  br label %1892

; <label>:1847                                    ; preds = %1814
  %1848 = icmp eq i32 %1812, 1
  br i1 %1848, label %1849, label %1862

; <label>:1849                                    ; preds = %1847
  %1850 = fadd fast float %1651, -1.000000e+00
  %1851 = fadd fast float %1652, -1.000000e+00
  %1852 = fadd fast float %1653, -1.000000e+00
  %1853 = fmul fast float %1817, %1850
  %1854 = fmul fast float %1817, %1851
  %1855 = fmul fast float %1817, %1852
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fmul fast float %1856, %1804
  %1860 = fmul fast float %1857, %1805
  %1861 = fmul fast float %1858, %1806
  br label %1892

; <label>:1862                                    ; preds = %1847
  %1863 = icmp eq i32 %1812, 2
  br i1 %1863, label %1864, label %1892

; <label>:1864                                    ; preds = %1862
  %1865 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1866 = call float @dx.op.unary.f32(i32 24, float %1652)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fmul fast float %1868, %1817
  %1872 = fmul fast float %1869, %1817
  %1873 = fmul fast float %1870, %1817
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fmul fast float %1874, 2.000000e+00
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1878, %1804
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1804
  %1882 = fmul fast float %1875, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1805
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1805
  %1887 = fmul fast float %1876, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1806
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1806
  br label %1892

; <label>:1892                                    ; preds = %1864, %1862, %1849, %1819, %1803
  %1893 = phi float [ %1804, %1803 ], [ %1881, %1864 ], [ %1804, %1862 ], [ %1859, %1849 ], [ %1829, %1819 ]
  %1894 = phi float [ %1805, %1803 ], [ %1886, %1864 ], [ %1805, %1862 ], [ %1860, %1849 ], [ %1830, %1819 ]
  %1895 = phi float [ %1806, %1803 ], [ %1891, %1864 ], [ %1806, %1862 ], [ %1861, %1849 ], [ %1831, %1819 ]
  %1896 = phi float [ %1807, %1803 ], [ %1807, %1864 ], [ %1807, %1862 ], [ %1807, %1849 ], [ %1841, %1819 ]
  %1897 = phi float [ %1808, %1803 ], [ %1808, %1864 ], [ %1808, %1862 ], [ %1808, %1849 ], [ %1842, %1819 ]
  %1898 = phi float [ %1809, %1803 ], [ %1809, %1864 ], [ %1809, %1862 ], [ %1809, %1849 ], [ %1843, %1819 ]
  %1899 = phi float [ %1129, %1803 ], [ %1129, %1864 ], [ %1129, %1862 ], [ %1129, %1849 ], [ %1834, %1819 ]
  %1900 = phi float [ %1133, %1803 ], [ %1133, %1864 ], [ %1133, %1862 ], [ %1133, %1849 ], [ %1846, %1819 ]
  %1901 = and i32 %1811, 12
  %1902 = icmp eq i32 %1901, 12
  br i1 %1902, label %1975, label %1903

; <label>:1903                                    ; preds = %1892
  %1904 = and i32 %1811, 2097184
  %1905 = icmp eq i32 %1904, 2097184
  %1906 = select i1 %1905, float %1431, float 0.000000e+00
  %1907 = and i32 %1811, 4194336
  %1908 = icmp eq i32 %1907, 4194336
  %1909 = select i1 %1908, float %1431, float 0.000000e+00
  %1910 = and i32 %1811, 8388640
  %1911 = icmp eq i32 %1910, 8388640
  %1912 = select i1 %1911, float %1431, float 0.000000e+00
  %1913 = icmp eq i32 %1901, 0
  br i1 %1913, label %1914, label %1927

; <label>:1914                                    ; preds = %1903
  %1915 = fsub fast float %1732, %1121
  %1916 = fsub fast float %1733, %1122
  %1917 = fmul fast float %1906, %1915
  %1918 = fmul fast float %1906, %1916
  %1919 = fadd fast float %1917, %1121
  %1920 = fadd fast float %1918, %1122
  %1921 = fsub fast float %1734, %1132
  %1922 = fmul fast float %1909, %1921
  %1923 = fadd fast float %1922, %1132
  %1924 = fsub fast float %1731, %1131
  %1925 = fmul fast float %1912, %1924
  %1926 = fadd fast float %1925, %1131
  br label %1975

; <label>:1927                                    ; preds = %1903
  %1928 = icmp eq i32 %1901, 4
  br i1 %1928, label %1929, label %1961

; <label>:1929                                    ; preds = %1927
  %1930 = fmul fast float %1906, %1732
  %1931 = fmul fast float %1906, %1733
  %1932 = fadd fast float %1930, %1121
  %1933 = fadd fast float %1931, %1122
  %1934 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1935 = fsub fast float %1934, %1132
  %1936 = fmul fast float %1935, %1909
  %1937 = fadd fast float %1936, %1132
  %1938 = fadd fast float %1731, %1131
  %1939 = fmul fast float %1938, 0x3FF337FAE0000000
  %1940 = fmul fast float %1131, %1131
  %1941 = fmul fast float %1731, %1731
  %1942 = fadd fast float %1941, %1940
  %1943 = fmul fast float %1942, 0x3FE5152B00000000
  %1944 = fmul fast float %1131, 0xBFCC1F85E0000000
  %1945 = fmul fast float %1944, %1731
  %1946 = fadd fast float %1945, 0xBFE1363700000000
  %1947 = fadd fast float %1946, %1939
  %1948 = fsub fast float %1947, %1943
  %1949 = fmul fast float %1938, 0x3FBA6F0D00000000
  %1950 = fmul fast float %1942, 0x3FD0432880000000
  %1951 = fmul fast float %1131, 0xBFEF110800000000
  %1952 = fmul fast float %1951, %1731
  %1953 = fadd fast float %1952, 1.000000e+00
  %1954 = fsub fast float %1953, %1949
  %1955 = fadd fast float %1954, %1950
  %1956 = fdiv fast float %1948, %1955
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float %1957, %1131
  %1959 = fmul fast float %1958, %1912
  %1960 = fadd fast float %1959, %1131
  br label %1975

; <label>:1961                                    ; preds = %1927
  %1962 = icmp eq i32 %1901, 8
  br i1 %1962, label %1963, label %1975

; <label>:1963                                    ; preds = %1961
  %1964 = fmul fast float %1906, %1732
  %1965 = fmul fast float %1906, %1733
  %1966 = fadd fast float %1964, %1121
  %1967 = fadd fast float %1965, %1122
  %1968 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1969 = fsub fast float %1968, %1132
  %1970 = fmul fast float %1969, %1909
  %1971 = fadd fast float %1970, %1132
  %1972 = fsub fast float %1731, %1131
  %1973 = fmul fast float %1912, %1972
  %1974 = fadd fast float %1973, %1131
  br label %1975

; <label>:1975                                    ; preds = %1963, %1961, %1929, %1914, %1892, %1430, %1134, %1120
  %1976 = phi float [ %1121, %1892 ], [ %1121, %1430 ], [ %1121, %1120 ], [ %1966, %1963 ], [ %1121, %1961 ], [ %1932, %1929 ], [ %1919, %1914 ], [ %1121, %1134 ]
  %1977 = phi float [ %1122, %1892 ], [ %1122, %1430 ], [ %1122, %1120 ], [ %1967, %1963 ], [ %1122, %1961 ], [ %1933, %1929 ], [ %1920, %1914 ], [ %1122, %1134 ]
  %1978 = phi float [ %1893, %1892 ], [ %1123, %1430 ], [ %1123, %1120 ], [ %1893, %1963 ], [ %1893, %1961 ], [ %1893, %1929 ], [ %1893, %1914 ], [ %1123, %1134 ]
  %1979 = phi float [ %1894, %1892 ], [ %1124, %1430 ], [ %1124, %1120 ], [ %1894, %1963 ], [ %1894, %1961 ], [ %1894, %1929 ], [ %1894, %1914 ], [ %1124, %1134 ]
  %1980 = phi float [ %1895, %1892 ], [ %1125, %1430 ], [ %1125, %1120 ], [ %1895, %1963 ], [ %1895, %1961 ], [ %1895, %1929 ], [ %1895, %1914 ], [ %1125, %1134 ]
  %1981 = phi float [ %1896, %1892 ], [ %1126, %1430 ], [ %1126, %1120 ], [ %1896, %1963 ], [ %1896, %1961 ], [ %1896, %1929 ], [ %1896, %1914 ], [ %1126, %1134 ]
  %1982 = phi float [ %1897, %1892 ], [ %1127, %1430 ], [ %1127, %1120 ], [ %1897, %1963 ], [ %1897, %1961 ], [ %1897, %1929 ], [ %1897, %1914 ], [ %1127, %1134 ]
  %1983 = phi float [ %1898, %1892 ], [ %1128, %1430 ], [ %1128, %1120 ], [ %1898, %1963 ], [ %1898, %1961 ], [ %1898, %1929 ], [ %1898, %1914 ], [ %1128, %1134 ]
  %1984 = phi float [ %1899, %1892 ], [ %1129, %1430 ], [ %1129, %1120 ], [ %1899, %1963 ], [ %1899, %1961 ], [ %1899, %1929 ], [ %1899, %1914 ], [ %1129, %1134 ]
  %1985 = phi float [ %1131, %1892 ], [ %1131, %1430 ], [ %1131, %1120 ], [ %1974, %1963 ], [ %1131, %1961 ], [ %1960, %1929 ], [ %1926, %1914 ], [ %1131, %1134 ]
  %1986 = phi float [ %1132, %1892 ], [ %1132, %1430 ], [ %1132, %1120 ], [ %1971, %1963 ], [ %1132, %1961 ], [ %1937, %1929 ], [ %1923, %1914 ], [ %1132, %1134 ]
  %1987 = phi float [ %1900, %1892 ], [ %1133, %1430 ], [ %1133, %1120 ], [ %1900, %1963 ], [ %1900, %1961 ], [ %1900, %1929 ], [ %1900, %1914 ], [ %1133, %1134 ]
  br i1 %406, label %2829, label %1988

; <label>:1988                                    ; preds = %1975
  %1989 = icmp ult i32 %462, 3
  %1990 = add i32 %54, 56
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %54, 60
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = or i32 %1995, %1992
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2829, label %1998

; <label>:1998                                    ; preds = %1988
  %1999 = and i32 %1992, 262144
  %2000 = icmp ne i32 %1999, 0
  %2001 = select i1 %2000, float %57, float 1.000000e+00
  %2002 = select i1 %2000, float %58, float 0.000000e+00
  %2003 = select i1 %2000, float %59, float 0.000000e+00
  %2004 = select i1 %2000, float %60, float 1.000000e+00
  %2005 = select i1 %2000, float %61, float %77
  %2006 = select i1 %2000, float %62, float %78
  %2007 = add i32 %54, 316
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 16
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = fmul fast float %2011, 0x3F50624DE0000000
  %2013 = add i32 %54, 120
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 16
  %2017 = and i32 %2016, 255
  %2018 = lshr i32 %2015, 24
  %2019 = add i32 %54, 324
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = and i32 %2021, 65535
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = lshr i32 %2021, 16
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = add i32 %54, 64
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 22
  %2030 = shl nuw nsw i32 %2029, 5
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = shl i32 %2028, 4
  %2033 = and i32 %2032, 32752
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2028, 7
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2040 = fmul fast float %2039, 1.000000e+03
  %2041 = fmul fast float %356, %2040
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = fadd fast float %2042, %346
  %2044 = fmul fast float %357, %2040
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = fadd fast float %2045, %348
  %2047 = fmul fast float %2012, %2040
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = fmul fast float %2048, 0x401921FB60000000
  %2050 = fadd fast float %2049, %2031
  %2051 = call float @dx.op.unary.f32(i32 13, float %2050)  ; Sin(value)
  %2052 = call float @dx.op.unary.f32(i32 12, float %2050)  ; Cos(value)
  %2053 = fsub fast float -0.000000e+00, %2051
  %2054 = fadd fast float %2005, -5.000000e-01
  %2055 = fadd fast float %2006, -5.000000e-01
  %2056 = fmul fast float %2023, %2054
  %2057 = fmul fast float %2025, %2055
  %2058 = fadd fast float %2056, 5.000000e-01
  %2059 = fadd fast float %2057, 5.000000e-01
  %2060 = fmul fast float %2034, %2058
  %2061 = fmul fast float %2037, %2059
  %2062 = fmul fast float %2052, %2060
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2053, float %2061, float %2062)  ; FMad(a,b,c)
  %2064 = fmul fast float %2051, %2060
  %2065 = call float @dx.op.tertiary.f32(i32 46, float %2052, float %2061, float %2064)  ; FMad(a,b,c)
  %2066 = fadd fast float %2043, %2063
  %2067 = fadd fast float %2046, %2065
  %2068 = icmp ugt i32 %2017, 1
  %2069 = icmp ugt i32 %2015, 33554431
  %2070 = or i1 %2069, %2068
  br i1 %2070, label %2071, label %2096

; <label>:2071                                    ; preds = %1998
  %2072 = add i32 %54, 260
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = lshr i32 %2074, 16
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fmul fast float %2039, %2076
  %2078 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2079 = mul nuw nsw i32 %2017, %2018
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2078, %2080
  %2082 = call float @dx.op.unary.f32(i32 27, float %2081)  ; Round_ni(value)
  %2083 = fptoui float %2082 to i32
  %2084 = urem i32 %2083, %2017
  %2085 = udiv i32 %2083, %2018
  %2086 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2087 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2088 = uitofp i32 %2084 to float
  %2089 = uitofp i32 %2085 to float
  %2090 = fadd fast float %2086, %2088
  %2091 = fadd fast float %2087, %2089
  %2092 = uitofp i32 %2017 to float
  %2093 = uitofp i32 %2018 to float
  %2094 = fdiv fast float %2090, %2092
  %2095 = fdiv fast float %2091, %2093
  br label %2096

; <label>:2096                                    ; preds = %2071, %1998
  %2097 = phi float [ %2094, %2071 ], [ %2066, %1998 ]
  %2098 = phi float [ %2095, %2071 ], [ %2067, %1998 ]
  %2099 = and i32 %1992, 16777216
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2210, label %2101

; <label>:2101                                    ; preds = %2096
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2106 = fadd fast float %2103, %158
  %2107 = fadd fast float %2104, %159
  %2108 = fadd fast float %2105, %160
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2112 = icmp eq i32 %55, 65535
  br i1 %2112, label %2207, label %2113

; <label>:2113                                    ; preds = %2101
  %2114 = lshr i32 %55, 1
  %2115 = shl i32 %2114, 2
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %55, 1
  %2119 = icmp ne i32 %2118, 0
  %2120 = lshr i32 %2117, 16
  %2121 = and i32 %2117, 65535
  %2122 = select i1 %2119, i32 %2120, i32 %2121
  %2123 = icmp eq i32 %2122, 65535
  br i1 %2123, label %2203, label %2124

; <label>:2124                                    ; preds = %2113
  %2125 = mul nuw nsw i32 %2122, 40
  %2126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.ResRet.f32 %2126, 2
  %2130 = add nuw nsw i32 %2125, 12
  %2131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = add nuw nsw i32 %2125, 24
  %2136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.ResRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.ResRet.f32 %2136, 2
  %2140 = add nuw nsw i32 %2125, 36
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = fsub fast float %2106, %2127
  %2144 = fsub fast float %2107, %2128
  %2145 = fsub fast float %2108, %2129
  %2146 = fmul fast float %2142, %2143
  %2147 = fmul fast float %2142, %2144
  %2148 = fmul fast float %2142, %2145
  %2149 = call float @dx.op.unary.f32(i32 27, float %2146)  ; Round_ni(value)
  %2150 = call float @dx.op.unary.f32(i32 27, float %2147)  ; Round_ni(value)
  %2151 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fmul fast float %2152, %2132
  %2156 = fmul fast float %2153, %2133
  %2157 = fmul fast float %2154, %2134
  %2158 = shl i32 %55, 2
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2164 = call float @dx.op.unary.f32(i32 22, float %2156)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2157)  ; Frc(value)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2162, %dx.types.Handle %49, float %2163, float %2164, float %2165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = fmul fast float %2167, 1.023000e+03
  %2171 = fmul fast float %2168, 1.023000e+03
  %2172 = fmul fast float %2169, 1.023000e+03
  %2173 = fadd fast float %2170, 5.000000e-01
  %2174 = fadd fast float %2171, 5.000000e-01
  %2175 = fadd fast float %2172, 5.000000e-01
  %2176 = call float @dx.op.unary.f32(i32 27, float %2173)  ; Round_ni(value)
  %2177 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2178 = call float @dx.op.unary.f32(i32 27, float %2175)  ; Round_ni(value)
  %2179 = fsub fast float %2146, %2149
  %2180 = fsub fast float %2147, %2150
  %2181 = fsub fast float %2148, %2151
  %2182 = fmul fast float %2179, 7.500000e-01
  %2183 = fmul fast float %2180, 7.500000e-01
  %2184 = fmul fast float %2181, 7.500000e-01
  %2185 = fadd fast float %2149, 1.250000e-01
  %2186 = fadd fast float %2185, %2182
  %2187 = fadd fast float %2186, %2176
  %2188 = fadd fast float %2150, 1.250000e-01
  %2189 = fadd fast float %2188, %2183
  %2190 = fadd fast float %2189, %2177
  %2191 = fadd fast float %2151, 1.250000e-01
  %2192 = fadd fast float %2191, %2184
  %2193 = fadd fast float %2192, %2178
  %2194 = fmul fast float %2187, %2137
  %2195 = fmul fast float %2190, %2138
  %2196 = fmul fast float %2193, %2139
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = add i32 %2198, 0
  %2200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2200, %dx.types.Handle %47, float %2194, float %2195, float %2196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  br label %2203

; <label>:2203                                    ; preds = %2124, %2113
  %2204 = phi float [ %2202, %2124 ], [ -1.000000e+00, %2113 ]
  %2205 = fadd fast float %2204, %2111
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br label %2207

; <label>:2207                                    ; preds = %2203, %2101
  %2208 = phi float [ %2206, %2203 ], [ %2111, %2101 ]
  %2209 = fmul fast float %2208, %458
  br label %2210

; <label>:2210                                    ; preds = %2207, %2096
  %2211 = phi float [ %2209, %2207 ], [ %458, %2096 ]
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 256
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2262, label %2216

; <label>:2216                                    ; preds = %2210
  %2217 = add i32 %54, 432
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = add i32 %54, 132
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = shl i32 %2226, 4
  %2228 = and i32 %2227, 32752
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2226, 7
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = fsub fast float 1.000000e+00, %2211
  %2234 = call float @dx.op.binary.f32(i32 35, float %2233, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2235 = bitcast float %2211 to i32
  %2236 = sitofp i32 %2235 to float
  %2237 = fadd fast float %2236, 0xC1CFBF8940000000
  %2238 = fmul fast float %2232, %2237
  %2239 = fadd fast float %2238, 0x41CFBF8940000000
  %2240 = fptosi float %2239 to i32
  %2241 = bitcast i32 %2240 to float
  %2242 = bitcast float %2234 to i32
  %2243 = sitofp i32 %2242 to float
  %2244 = fadd fast float %2243, 0xC1CFBF8940000000
  %2245 = fmul fast float %2244, %2232
  %2246 = fadd fast float %2245, 0x41CFBF8940000000
  %2247 = fptosi float %2246 to i32
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2241, %2229
  %2250 = fmul fast float %2248, %2229
  %2251 = fsub fast float %2234, %2249
  %2252 = fadd fast float %2250, %2234
  %2253 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2254 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2255 = fsub fast float %2223, %2253
  %2256 = fsub fast float %2254, %2253
  %2257 = bitcast float %2256 to i32
  %2258 = sub nsw i32 2129859010, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2259, %2255
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  br label %2262

; <label>:2262                                    ; preds = %2216, %2210
  %2263 = phi float [ %2261, %2216 ], [ %2211, %2210 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 128
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2284, label %2268

; <label>:2268                                    ; preds = %2262
  %2269 = add i32 %54, 416
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 524288
  %2279 = icmp ne i32 %2278, 0
  %2280 = fcmp fast ogt float %2275, 0x3FE0101020000000
  %2281 = select i1 %2280, float 1.000000e+00, float 0.000000e+00
  %2282 = select i1 %2279, float %2281, float %2275
  %2283 = fmul fast float %2282, %2263
  br label %2284

; <label>:2284                                    ; preds = %2268, %2262
  %2285 = phi float [ %2283, %2268 ], [ %2263, %2262 ]
  %2286 = fcmp fast ult float %2285, 0x3F70101020000000
  br i1 %2286, label %2829, label %2287

; <label>:2287                                    ; preds = %2284
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 16
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2490, label %2292

; <label>:2292                                    ; preds = %2287
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %54, 368
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = and i32 %2294, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = lshr i32 %2294, 8
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2304, %2306
  %2311 = fadd fast float %2310, %2309
  %2312 = fmul fast float %2311, 0x3F70101000000000
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 512
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2325, label %2317

; <label>:2317                                    ; preds = %2292
  %2318 = add i32 %54, 448
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  br label %2325

; <label>:2325                                    ; preds = %2317, %2292
  %2326 = phi float [ %2324, %2317 ], [ 1.000000e+00, %2292 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 33554432
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2437, label %2331

; <label>:2331                                    ; preds = %2325
  %2332 = add i32 %54, 256
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2334, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = add i32 %54, 260
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 24
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = and i32 %2345, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2345, 8
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2345, 16
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = add i32 %54, 252
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = lshr i32 %2362, 24
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = and i32 %2362, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2362, 8
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = lshr i32 %2362, 16
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = bitcast float %2301 to i32
  %2378 = ashr i32 %2377, 1
  %2379 = sub nsw i32 1597463174, %2378
  %2380 = bitcast i32 %2379 to float
  %2381 = fmul fast float %2301, 5.000000e-01
  %2382 = fmul fast float %2380, %2380
  %2383 = fmul fast float %2382, %2381
  %2384 = fsub fast float 1.500000e+00, %2383
  %2385 = fmul fast float %2380, %2301
  %2386 = fmul fast float %2385, %2384
  %2387 = bitcast float %2302 to i32
  %2388 = ashr i32 %2387, 1
  %2389 = sub nsw i32 1597463174, %2388
  %2390 = bitcast i32 %2389 to float
  %2391 = fmul fast float %2302, 5.000000e-01
  %2392 = fmul fast float %2390, %2390
  %2393 = fmul fast float %2392, %2391
  %2394 = fsub fast float 1.500000e+00, %2393
  %2395 = fmul fast float %2390, %2302
  %2396 = fmul fast float %2395, %2394
  %2397 = bitcast float %2303 to i32
  %2398 = ashr i32 %2397, 1
  %2399 = sub nsw i32 1597463174, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2303, 5.000000e-01
  %2402 = fmul fast float %2400, %2400
  %2403 = fmul fast float %2402, %2401
  %2404 = fsub fast float 1.500000e+00, %2403
  %2405 = fmul fast float %2400, %2303
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float %2386, %2368
  %2408 = fsub fast float %2396, %2372
  %2409 = fsub fast float %2406, %2376
  %2410 = fmul fast float %2407, %2336
  %2411 = fmul fast float %2408, %2338
  %2412 = fmul fast float %2409, %2343
  %2413 = fadd fast float %2410, %2351
  %2414 = fadd fast float %2411, %2355
  %2415 = fadd fast float %2412, %2359
  %2416 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2417 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = fmul fast float %2416, %2416
  %2420 = fmul fast float %2417, %2417
  %2421 = fmul fast float %2418, %2418
  %2422 = fsub fast float %2419, %2301
  %2423 = fsub fast float %2420, %2302
  %2424 = fsub fast float %2421, %2303
  %2425 = fmul fast float %2422, %2326
  %2426 = fmul fast float %2423, %2326
  %2427 = fmul fast float %2424, %2326
  %2428 = fadd fast float %2425, %2301
  %2429 = fadd fast float %2426, %2302
  %2430 = fadd fast float %2427, %2303
  %2431 = fadd fast float %2348, %2312
  %2432 = fsub fast float %2431, %2365
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fsub fast float %2433, %2312
  %2435 = fmul fast float %2434, %2326
  %2436 = fadd fast float %2435, %2312
  br label %2490

; <label>:2437                                    ; preds = %2325
  %2438 = and i32 %2328, 134217728
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2474, label %2440

; <label>:2440                                    ; preds = %2437
  %2441 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2442 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2444 = fadd fast float %2441, -5.000000e-01
  %2445 = fadd fast float %2442, -5.000000e-01
  %2446 = fadd fast float %2443, -5.000000e-01
  %2447 = fmul fast float %2444, %2326
  %2448 = fmul fast float %2445, %2326
  %2449 = fmul fast float %2446, %2326
  %2450 = fadd fast float %2447, 5.000000e-01
  %2451 = fadd fast float %2448, 5.000000e-01
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %2302)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2456 = fmul fast float %2450, 2.000000e+00
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2457, %2453
  %2459 = fadd fast float %2458, %2456
  %2460 = fmul fast float %2459, %2453
  %2461 = fmul fast float %2451, 2.000000e+00
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2462, %2454
  %2464 = fadd fast float %2463, %2461
  %2465 = fmul fast float %2464, %2454
  %2466 = fmul fast float %2452, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2455
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2455
  %2471 = fmul fast float %2460, %2460
  %2472 = fmul fast float %2465, %2465
  %2473 = fmul fast float %2470, %2470
  br label %2490

; <label>:2474                                    ; preds = %2437
  %2475 = fmul fast float %333, %333
  %2476 = fmul fast float %337, %337
  %2477 = fmul fast float %341, %341
  %2478 = fadd fast float %2475, -1.000000e+00
  %2479 = fadd fast float %2476, -1.000000e+00
  %2480 = fadd fast float %2477, -1.000000e+00
  %2481 = fmul fast float %2326, %2478
  %2482 = fmul fast float %2326, %2479
  %2483 = fmul fast float %2326, %2480
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fmul fast float %2484, %2301
  %2488 = fmul fast float %2485, %2302
  %2489 = fmul fast float %2486, %2303
  br label %2490

; <label>:2490                                    ; preds = %2474, %2440, %2331, %2287
  %2491 = phi float [ %2436, %2331 ], [ %2312, %2440 ], [ %2312, %2474 ], [ 0x3FA23C0BE0000000, %2287 ]
  %2492 = phi float [ %2428, %2331 ], [ %2471, %2440 ], [ %2487, %2474 ], [ 1.000000e+00, %2287 ]
  %2493 = phi float [ %2429, %2331 ], [ %2472, %2440 ], [ %2488, %2474 ], [ 1.000000e+00, %2287 ]
  %2494 = phi float [ %2430, %2331 ], [ %2473, %2440 ], [ %2489, %2474 ], [ 1.000000e+00, %2287 ]
  %2495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.i32 %2495, 1
  %2497 = and i32 %2496, 1
  %2498 = icmp ne i32 %2497, 0
  %2499 = add i32 %54, 356
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 32
  %2503 = icmp ne i32 %2502, 0
  %2504 = and i1 %2498, %2503
  %2505 = select i1 %2504, float 1.000000e+00, float %2492
  %2506 = select i1 %2504, float 0x3FD3333340000000, float %2493
  %2507 = select i1 %2504, float 0x3FD3333340000000, float %2494
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2584, label %2512

; <label>:2512                                    ; preds = %2490
  %2513 = add i32 %54, 124
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %54, 384
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %2518, 0
  %2520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2520, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = extractvalue %dx.types.ResRet.f32 %2521, 3
  %2526 = and i32 %2515, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = lshr i32 %2515, 8
  %2529 = and i32 %2528, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2515, 16
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = fmul fast float %2533, 0x3F70101000000000
  %2535 = fmul fast float %2522, %2527
  %2536 = fadd fast float %2535, %2530
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fadd fast float %2523, -5.000000e-01
  %2539 = fadd fast float %2525, -5.000000e-01
  %2540 = fmul fast float %2538, %2534
  %2541 = fmul fast float %2539, %2534
  %2542 = fadd fast float %2540, 5.000000e-01
  %2543 = fadd fast float %2541, 5.000000e-01
  %2544 = fmul fast float %2542, 2.000000e+00
  %2545 = fadd fast float %2544, -1.000000e+00
  %2546 = fmul fast float %2543, 2.000000e+00
  %2547 = fadd fast float %2546, -1.000000e+00
  %2548 = fadd fast float %2545, %2547
  %2549 = fmul fast float %2548, 5.000000e-01
  %2550 = fsub fast float %2545, %2547
  %2551 = fmul fast float %2550, 5.000000e-01
  %2552 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = call float @dx.op.unary.f32(i32 6, float %2551)  ; FAbs(value)
  %2555 = fsub fast float %2553, %2554
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2551, float %2555, float %2549, float %2551, float %2555)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = call float @dx.op.unary.f32(i32 25, float %2556)  ; Rsqrt(value)
  %2558 = fmul fast float %2549, %2557
  %2559 = fmul fast float %2551, %2557
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 67108864
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2580, label %2564

; <label>:2564                                    ; preds = %2512
  %2565 = add i32 %54, 312
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2567, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fsub fast float %2537, %2575
  %2577 = fmul fast float %2576, %2569
  %2578 = fadd fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2564, %2512
  %2581 = phi float [ %2579, %2564 ], [ %2537, %2512 ]
  %2582 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2001, float %2002)  ; Dot2(ax,ay,bx,by)
  %2583 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2003, float %2004)  ; Dot2(ax,ay,bx,by)
  br label %2584

; <label>:2584                                    ; preds = %2580, %2490
  %2585 = phi float [ %2581, %2580 ], [ 0x3FD6666660000000, %2490 ]
  %2586 = phi float [ %2582, %2580 ], [ 0.000000e+00, %2490 ]
  %2587 = phi float [ %2583, %2580 ], [ 0.000000e+00, %2490 ]
  %2588 = phi float [ %2524, %2580 ], [ 1.000000e+00, %2490 ]
  %2589 = add i32 %54, 192
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 22
  %2593 = shl nuw nsw i32 %2592, 5
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 64
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2632, label %2599

; <label>:2599                                    ; preds = %2584
  %2600 = add i32 %54, 400
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2602, 0
  %2604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 131072
  %2608 = icmp eq i32 %2607, 0
  %2609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2604, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = fmul fast float %2610, %321
  %2614 = fmul fast float %2611, %324
  %2615 = fmul fast float %2612, %327
  br i1 %2608, label %2622, label %2616

; <label>:2616                                    ; preds = %2599
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = fmul fast float %2618, %2613
  %2620 = fmul fast float %2618, %2614
  %2621 = fmul fast float %2618, %2615
  br label %2622

; <label>:2622                                    ; preds = %2616, %2599
  %2623 = phi float [ %2619, %2616 ], [ %2613, %2599 ]
  %2624 = phi float [ %2620, %2616 ], [ %2614, %2599 ]
  %2625 = phi float [ %2621, %2616 ], [ %2615, %2599 ]
  %2626 = fmul fast float %2623, %2594
  %2627 = select i1 %220, float %2626, float %2623
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2627, float %2624, float %2625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = select i1 %220, float 0.000000e+00, float %2623
  %2630 = select i1 %220, float %2628, float %2624
  %2631 = select i1 %220, float 0.000000e+00, float %2625
  br label %2632

; <label>:2632                                    ; preds = %2622, %2584
  %2633 = phi float [ %2629, %2622 ], [ 0.000000e+00, %2584 ]
  %2634 = phi float [ %2630, %2622 ], [ 0.000000e+00, %2584 ]
  %2635 = phi float [ %2631, %2622 ], [ 0.000000e+00, %2584 ]
  %2636 = add i32 %54, 128
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = lshr i32 %2638, 8
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = fmul fast float %2643, %2644
  %2646 = fadd fast float %2645, %2640
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  br i1 %1989, label %2649, label %2657

; <label>:2649                                    ; preds = %2632
  %2650 = fsub fast float 1.000000e+00, %2285
  %2651 = fmul fast float %2650, %1978
  %2652 = fmul fast float %2650, %1979
  %2653 = fmul fast float %2650, %1980
  %2654 = fmul fast float %2650, %1981
  %2655 = fmul fast float %2650, %1982
  %2656 = fmul fast float %2650, %1983
  br label %2657

; <label>:2657                                    ; preds = %2649, %2632
  %2658 = phi float [ %2651, %2649 ], [ %1978, %2632 ]
  %2659 = phi float [ %2652, %2649 ], [ %1979, %2632 ]
  %2660 = phi float [ %2653, %2649 ], [ %1980, %2632 ]
  %2661 = phi float [ %2654, %2649 ], [ %1981, %2632 ]
  %2662 = phi float [ %2655, %2649 ], [ %1982, %2632 ]
  %2663 = phi float [ %2656, %2649 ], [ %1983, %2632 ]
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 3
  %2667 = icmp eq i32 %2666, 3
  br i1 %2667, label %2746, label %2668

; <label>:2668                                    ; preds = %2657
  %2669 = and i32 %2665, 16
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %2285, float 0.000000e+00
  %2672 = icmp eq i32 %2666, 0
  br i1 %2672, label %2673, label %2701

; <label>:2673                                    ; preds = %2668
  %2674 = and i32 %2665, 64
  %2675 = icmp ne i32 %2674, 0
  %2676 = select i1 %2675, float %2285, float 0.000000e+00
  %2677 = fsub fast float %2505, %2658
  %2678 = fsub fast float %2506, %2659
  %2679 = fsub fast float %2507, %2660
  %2680 = fmul fast float %2671, %2677
  %2681 = fmul fast float %2671, %2678
  %2682 = fmul fast float %2671, %2679
  %2683 = fadd fast float %2680, %2658
  %2684 = fadd fast float %2681, %2659
  %2685 = fadd fast float %2682, %2660
  %2686 = fsub fast float %2491, %1984
  %2687 = fmul fast float %2671, %2686
  %2688 = fadd fast float %2687, %1984
  %2689 = fsub fast float %2633, %2661
  %2690 = fsub fast float %2634, %2662
  %2691 = fsub fast float %2635, %2663
  %2692 = fmul fast float %2676, %2689
  %2693 = fmul fast float %2676, %2690
  %2694 = fmul fast float %2676, %2691
  %2695 = fadd fast float %2692, %2661
  %2696 = fadd fast float %2693, %2662
  %2697 = fadd fast float %2694, %2663
  %2698 = fsub fast float %2648, %1987
  %2699 = fmul fast float %2671, %2698
  %2700 = fadd fast float %2699, %1987
  br label %2746

; <label>:2701                                    ; preds = %2668
  %2702 = icmp eq i32 %2666, 1
  br i1 %2702, label %2703, label %2716

; <label>:2703                                    ; preds = %2701
  %2704 = fadd fast float %2505, -1.000000e+00
  %2705 = fadd fast float %2506, -1.000000e+00
  %2706 = fadd fast float %2507, -1.000000e+00
  %2707 = fmul fast float %2671, %2704
  %2708 = fmul fast float %2671, %2705
  %2709 = fmul fast float %2671, %2706
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fmul fast float %2710, %2658
  %2714 = fmul fast float %2711, %2659
  %2715 = fmul fast float %2712, %2660
  br label %2746

; <label>:2716                                    ; preds = %2701
  %2717 = icmp eq i32 %2666, 2
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2716
  %2719 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %2506)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %2507)  ; Sqrt(value)
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fmul fast float %2722, %2671
  %2726 = fmul fast float %2723, %2671
  %2727 = fmul fast float %2724, %2671
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fsub fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2732, %2658
  %2734 = fadd fast float %2733, %2731
  %2735 = fmul fast float %2734, %2658
  %2736 = fmul fast float %2729, 2.000000e+00
  %2737 = fsub fast float 1.000000e+00, %2736
  %2738 = fmul fast float %2737, %2659
  %2739 = fadd fast float %2738, %2736
  %2740 = fmul fast float %2739, %2659
  %2741 = fmul fast float %2730, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2660
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2660
  br label %2746

; <label>:2746                                    ; preds = %2718, %2716, %2703, %2673, %2657
  %2747 = phi float [ %2658, %2657 ], [ %2735, %2718 ], [ %2658, %2716 ], [ %2713, %2703 ], [ %2683, %2673 ]
  %2748 = phi float [ %2659, %2657 ], [ %2740, %2718 ], [ %2659, %2716 ], [ %2714, %2703 ], [ %2684, %2673 ]
  %2749 = phi float [ %2660, %2657 ], [ %2745, %2718 ], [ %2660, %2716 ], [ %2715, %2703 ], [ %2685, %2673 ]
  %2750 = phi float [ %2661, %2657 ], [ %2661, %2718 ], [ %2661, %2716 ], [ %2661, %2703 ], [ %2695, %2673 ]
  %2751 = phi float [ %2662, %2657 ], [ %2662, %2718 ], [ %2662, %2716 ], [ %2662, %2703 ], [ %2696, %2673 ]
  %2752 = phi float [ %2663, %2657 ], [ %2663, %2718 ], [ %2663, %2716 ], [ %2663, %2703 ], [ %2697, %2673 ]
  %2753 = phi float [ %1984, %2657 ], [ %1984, %2718 ], [ %1984, %2716 ], [ %1984, %2703 ], [ %2688, %2673 ]
  %2754 = phi float [ %1987, %2657 ], [ %1987, %2718 ], [ %1987, %2716 ], [ %1987, %2703 ], [ %2700, %2673 ]
  %2755 = and i32 %2665, 12
  %2756 = icmp eq i32 %2755, 12
  br i1 %2756, label %2829, label %2757

; <label>:2757                                    ; preds = %2746
  %2758 = and i32 %2665, 2097184
  %2759 = icmp eq i32 %2758, 2097184
  %2760 = select i1 %2759, float %2285, float 0.000000e+00
  %2761 = and i32 %2665, 4194336
  %2762 = icmp eq i32 %2761, 4194336
  %2763 = select i1 %2762, float %2285, float 0.000000e+00
  %2764 = and i32 %2665, 8388640
  %2765 = icmp eq i32 %2764, 8388640
  %2766 = select i1 %2765, float %2285, float 0.000000e+00
  %2767 = icmp eq i32 %2755, 0
  br i1 %2767, label %2768, label %2781

; <label>:2768                                    ; preds = %2757
  %2769 = fsub fast float %2586, %1976
  %2770 = fsub fast float %2587, %1977
  %2771 = fmul fast float %2760, %2769
  %2772 = fmul fast float %2760, %2770
  %2773 = fadd fast float %2771, %1976
  %2774 = fadd fast float %2772, %1977
  %2775 = fsub fast float %2588, %1986
  %2776 = fmul fast float %2763, %2775
  %2777 = fadd fast float %2776, %1986
  %2778 = fsub fast float %2585, %1985
  %2779 = fmul fast float %2766, %2778
  %2780 = fadd fast float %2779, %1985
  br label %2829

; <label>:2781                                    ; preds = %2757
  %2782 = icmp eq i32 %2755, 4
  br i1 %2782, label %2783, label %2815

; <label>:2783                                    ; preds = %2781
  %2784 = fmul fast float %2760, %2586
  %2785 = fmul fast float %2760, %2587
  %2786 = fadd fast float %2784, %1976
  %2787 = fadd fast float %2785, %1977
  %2788 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2789 = fsub fast float %2788, %1986
  %2790 = fmul fast float %2789, %2763
  %2791 = fadd fast float %2790, %1986
  %2792 = fadd fast float %2585, %1985
  %2793 = fmul fast float %2792, 0x3FF337FAE0000000
  %2794 = fmul fast float %1985, %1985
  %2795 = fmul fast float %2585, %2585
  %2796 = fadd fast float %2795, %2794
  %2797 = fmul fast float %2796, 0x3FE5152B00000000
  %2798 = fmul fast float %1985, 0xBFCC1F85E0000000
  %2799 = fmul fast float %2798, %2585
  %2800 = fadd fast float %2799, 0xBFE1363700000000
  %2801 = fadd fast float %2800, %2793
  %2802 = fsub fast float %2801, %2797
  %2803 = fmul fast float %2792, 0x3FBA6F0D00000000
  %2804 = fmul fast float %2796, 0x3FD0432880000000
  %2805 = fmul fast float %1985, 0xBFEF110800000000
  %2806 = fmul fast float %2805, %2585
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fsub fast float %2807, %2803
  %2809 = fadd fast float %2808, %2804
  %2810 = fdiv fast float %2802, %2809
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2812 = fsub fast float %2811, %1985
  %2813 = fmul fast float %2812, %2766
  %2814 = fadd fast float %2813, %1985
  br label %2829

; <label>:2815                                    ; preds = %2781
  %2816 = icmp eq i32 %2755, 8
  br i1 %2816, label %2817, label %2829

; <label>:2817                                    ; preds = %2815
  %2818 = fmul fast float %2760, %2586
  %2819 = fmul fast float %2760, %2587
  %2820 = fadd fast float %2818, %1976
  %2821 = fadd fast float %2819, %1977
  %2822 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2823 = fsub fast float %2822, %1986
  %2824 = fmul fast float %2823, %2763
  %2825 = fadd fast float %2824, %1986
  %2826 = fsub fast float %2585, %1985
  %2827 = fmul fast float %2766, %2826
  %2828 = fadd fast float %2827, %1985
  br label %2829

; <label>:2829                                    ; preds = %2817, %2815, %2783, %2768, %2746, %2284, %1988, %1975
  %2830 = phi float [ %1976, %2746 ], [ %1976, %2284 ], [ %1976, %1975 ], [ %2820, %2817 ], [ %1976, %2815 ], [ %2786, %2783 ], [ %2773, %2768 ], [ %1976, %1988 ]
  %2831 = phi float [ %1977, %2746 ], [ %1977, %2284 ], [ %1977, %1975 ], [ %2821, %2817 ], [ %1977, %2815 ], [ %2787, %2783 ], [ %2774, %2768 ], [ %1977, %1988 ]
  %2832 = phi float [ %2747, %2746 ], [ %1978, %2284 ], [ %1978, %1975 ], [ %2747, %2817 ], [ %2747, %2815 ], [ %2747, %2783 ], [ %2747, %2768 ], [ %1978, %1988 ]
  %2833 = phi float [ %2748, %2746 ], [ %1979, %2284 ], [ %1979, %1975 ], [ %2748, %2817 ], [ %2748, %2815 ], [ %2748, %2783 ], [ %2748, %2768 ], [ %1979, %1988 ]
  %2834 = phi float [ %2749, %2746 ], [ %1980, %2284 ], [ %1980, %1975 ], [ %2749, %2817 ], [ %2749, %2815 ], [ %2749, %2783 ], [ %2749, %2768 ], [ %1980, %1988 ]
  %2835 = phi float [ %2750, %2746 ], [ %1981, %2284 ], [ %1981, %1975 ], [ %2750, %2817 ], [ %2750, %2815 ], [ %2750, %2783 ], [ %2750, %2768 ], [ %1981, %1988 ]
  %2836 = phi float [ %2751, %2746 ], [ %1982, %2284 ], [ %1982, %1975 ], [ %2751, %2817 ], [ %2751, %2815 ], [ %2751, %2783 ], [ %2751, %2768 ], [ %1982, %1988 ]
  %2837 = phi float [ %2752, %2746 ], [ %1983, %2284 ], [ %1983, %1975 ], [ %2752, %2817 ], [ %2752, %2815 ], [ %2752, %2783 ], [ %2752, %2768 ], [ %1983, %1988 ]
  %2838 = phi float [ %2753, %2746 ], [ %1984, %2284 ], [ %1984, %1975 ], [ %2753, %2817 ], [ %2753, %2815 ], [ %2753, %2783 ], [ %2753, %2768 ], [ %1984, %1988 ]
  %2839 = phi float [ %1985, %2746 ], [ %1985, %2284 ], [ %1985, %1975 ], [ %2828, %2817 ], [ %1985, %2815 ], [ %2814, %2783 ], [ %2780, %2768 ], [ %1985, %1988 ]
  %2840 = phi float [ %1986, %2746 ], [ %1986, %2284 ], [ %1986, %1975 ], [ %2825, %2817 ], [ %1986, %2815 ], [ %2791, %2783 ], [ %2777, %2768 ], [ %1986, %1988 ]
  %2841 = phi float [ %2754, %2746 ], [ %1987, %2284 ], [ %1987, %1975 ], [ %2754, %2817 ], [ %2754, %2815 ], [ %2754, %2783 ], [ %2754, %2768 ], [ %1987, %1988 ]
  br i1 %408, label %3683, label %2842

; <label>:2842                                    ; preds = %2829
  %2843 = icmp ult i32 %462, 4
  %2844 = add i32 %54, 72
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %54, 76
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = or i32 %2849, %2846
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %3683, label %2852

; <label>:2852                                    ; preds = %2842
  %2853 = and i32 %2846, 262144
  %2854 = icmp ne i32 %2853, 0
  %2855 = select i1 %2854, float %57, float 1.000000e+00
  %2856 = select i1 %2854, float %58, float 0.000000e+00
  %2857 = select i1 %2854, float %59, float 0.000000e+00
  %2858 = select i1 %2854, float %60, float 1.000000e+00
  %2859 = select i1 %2854, float %61, float %77
  %2860 = select i1 %2854, float %62, float %78
  %2861 = add i32 %54, 332
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 16
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = fmul fast float %2865, 0x3F50624DE0000000
  %2867 = add i32 %54, 136
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 16
  %2871 = and i32 %2870, 255
  %2872 = lshr i32 %2869, 24
  %2873 = add i32 %54, 340
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 65535
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = lshr i32 %2875, 16
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = add i32 %54, 80
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 22
  %2884 = shl nuw nsw i32 %2883, 5
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = shl i32 %2882, 4
  %2887 = and i32 %2886, 32752
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2882, 7
  %2890 = and i32 %2889, 32752
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2894 = fmul fast float %2893, 1.000000e+03
  %2895 = fmul fast float %398, %2894
  %2896 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2897 = fadd fast float %2896, %388
  %2898 = fmul fast float %399, %2894
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = fadd fast float %2899, %390
  %2901 = fmul fast float %2866, %2894
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = fmul fast float %2902, 0x401921FB60000000
  %2904 = fadd fast float %2903, %2885
  %2905 = call float @dx.op.unary.f32(i32 13, float %2904)  ; Sin(value)
  %2906 = call float @dx.op.unary.f32(i32 12, float %2904)  ; Cos(value)
  %2907 = fsub fast float -0.000000e+00, %2905
  %2908 = fadd fast float %2859, -5.000000e-01
  %2909 = fadd fast float %2860, -5.000000e-01
  %2910 = fmul fast float %2877, %2908
  %2911 = fmul fast float %2879, %2909
  %2912 = fadd fast float %2910, 5.000000e-01
  %2913 = fadd fast float %2911, 5.000000e-01
  %2914 = fmul fast float %2888, %2912
  %2915 = fmul fast float %2891, %2913
  %2916 = fmul fast float %2906, %2914
  %2917 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2915, float %2916)  ; FMad(a,b,c)
  %2918 = fmul fast float %2905, %2914
  %2919 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2915, float %2918)  ; FMad(a,b,c)
  %2920 = fadd fast float %2897, %2917
  %2921 = fadd fast float %2900, %2919
  %2922 = icmp ugt i32 %2871, 1
  %2923 = icmp ugt i32 %2869, 33554431
  %2924 = or i1 %2923, %2922
  br i1 %2924, label %2925, label %2950

; <label>:2925                                    ; preds = %2852
  %2926 = add i32 %54, 276
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = lshr i32 %2928, 16
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = fmul fast float %2893, %2930
  %2932 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2933 = mul nuw nsw i32 %2871, %2872
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2932, %2934
  %2936 = call float @dx.op.unary.f32(i32 27, float %2935)  ; Round_ni(value)
  %2937 = fptoui float %2936 to i32
  %2938 = urem i32 %2937, %2871
  %2939 = udiv i32 %2937, %2872
  %2940 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2941 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2942 = uitofp i32 %2938 to float
  %2943 = uitofp i32 %2939 to float
  %2944 = fadd fast float %2940, %2942
  %2945 = fadd fast float %2941, %2943
  %2946 = uitofp i32 %2871 to float
  %2947 = uitofp i32 %2872 to float
  %2948 = fdiv fast float %2944, %2946
  %2949 = fdiv fast float %2945, %2947
  br label %2950

; <label>:2950                                    ; preds = %2925, %2852
  %2951 = phi float [ %2948, %2925 ], [ %2920, %2852 ]
  %2952 = phi float [ %2949, %2925 ], [ %2921, %2852 ]
  %2953 = and i32 %2846, 16777216
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3064, label %2955

; <label>:2955                                    ; preds = %2950
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2960 = fadd fast float %2957, %158
  %2961 = fadd fast float %2958, %159
  %2962 = fadd fast float %2959, %160
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = icmp eq i32 %55, 65535
  br i1 %2966, label %3061, label %2967

; <label>:2967                                    ; preds = %2955
  %2968 = lshr i32 %55, 1
  %2969 = shl i32 %2968, 2
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %55, 1
  %2973 = icmp ne i32 %2972, 0
  %2974 = lshr i32 %2971, 16
  %2975 = and i32 %2971, 65535
  %2976 = select i1 %2973, i32 %2974, i32 %2975
  %2977 = icmp eq i32 %2976, 65535
  br i1 %2977, label %3057, label %2978

; <label>:2978                                    ; preds = %2967
  %2979 = mul nuw nsw i32 %2976, 40
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = add nuw nsw i32 %2979, 12
  %2985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = add nuw nsw i32 %2979, 24
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = add nuw nsw i32 %2979, 36
  %2995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = fsub fast float %2960, %2981
  %2998 = fsub fast float %2961, %2982
  %2999 = fsub fast float %2962, %2983
  %3000 = fmul fast float %2996, %2997
  %3001 = fmul fast float %2996, %2998
  %3002 = fmul fast float %2996, %2999
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = fadd fast float %3004, 5.000000e-01
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fmul fast float %3006, %2986
  %3010 = fmul fast float %3007, %2987
  %3011 = fmul fast float %3008, %2988
  %3012 = shl i32 %55, 2
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3014, 0
  %3016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3017 = call float @dx.op.unary.f32(i32 22, float %3009)  ; Frc(value)
  %3018 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3019 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3016, %dx.types.Handle %49, float %3017, float %3018, float %3019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3020, 2
  %3024 = fmul fast float %3021, 1.023000e+03
  %3025 = fmul fast float %3022, 1.023000e+03
  %3026 = fmul fast float %3023, 1.023000e+03
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = call float @dx.op.unary.f32(i32 27, float %3027)  ; Round_ni(value)
  %3031 = call float @dx.op.unary.f32(i32 27, float %3028)  ; Round_ni(value)
  %3032 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3033 = fsub fast float %3000, %3003
  %3034 = fsub fast float %3001, %3004
  %3035 = fsub fast float %3002, %3005
  %3036 = fmul fast float %3033, 7.500000e-01
  %3037 = fmul fast float %3034, 7.500000e-01
  %3038 = fmul fast float %3035, 7.500000e-01
  %3039 = fadd fast float %3003, 1.250000e-01
  %3040 = fadd fast float %3039, %3036
  %3041 = fadd fast float %3040, %3030
  %3042 = fadd fast float %3004, 1.250000e-01
  %3043 = fadd fast float %3042, %3037
  %3044 = fadd fast float %3043, %3031
  %3045 = fadd fast float %3005, 1.250000e-01
  %3046 = fadd fast float %3045, %3038
  %3047 = fadd fast float %3046, %3032
  %3048 = fmul fast float %3041, %2991
  %3049 = fmul fast float %3044, %2992
  %3050 = fmul fast float %3047, %2993
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = add i32 %3052, 0
  %3054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3054, %dx.types.Handle %47, float %3048, float %3049, float %3050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  br label %3057

; <label>:3057                                    ; preds = %2978, %2967
  %3058 = phi float [ %3056, %2978 ], [ -1.000000e+00, %2967 ]
  %3059 = fadd fast float %3058, %2965
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  br label %3061

; <label>:3061                                    ; preds = %3057, %2955
  %3062 = phi float [ %3060, %3057 ], [ %2965, %2955 ]
  %3063 = fmul fast float %3062, %457
  br label %3064

; <label>:3064                                    ; preds = %3061, %2950
  %3065 = phi float [ %3063, %3061 ], [ %457, %2950 ]
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 256
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3116, label %3070

; <label>:3070                                    ; preds = %3064
  %3071 = add i32 %54, 436
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = add i32 %54, 148
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = shl i32 %3080, 4
  %3082 = and i32 %3081, 32752
  %3083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3082)  ; LegacyF16ToF32(value)
  %3084 = lshr i32 %3080, 7
  %3085 = and i32 %3084, 32752
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = fsub fast float 1.000000e+00, %3065
  %3088 = call float @dx.op.binary.f32(i32 35, float %3087, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3089 = bitcast float %3065 to i32
  %3090 = sitofp i32 %3089 to float
  %3091 = fadd fast float %3090, 0xC1CFBF8940000000
  %3092 = fmul fast float %3086, %3091
  %3093 = fadd fast float %3092, 0x41CFBF8940000000
  %3094 = fptosi float %3093 to i32
  %3095 = bitcast i32 %3094 to float
  %3096 = bitcast float %3088 to i32
  %3097 = sitofp i32 %3096 to float
  %3098 = fadd fast float %3097, 0xC1CFBF8940000000
  %3099 = fmul fast float %3098, %3086
  %3100 = fadd fast float %3099, 0x41CFBF8940000000
  %3101 = fptosi float %3100 to i32
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3095, %3083
  %3104 = fmul fast float %3102, %3083
  %3105 = fsub fast float %3088, %3103
  %3106 = fadd fast float %3104, %3088
  %3107 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3109 = fsub fast float %3077, %3107
  %3110 = fsub fast float %3108, %3107
  %3111 = bitcast float %3110 to i32
  %3112 = sub nsw i32 2129859010, %3111
  %3113 = bitcast i32 %3112 to float
  %3114 = fmul fast float %3113, %3109
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  br label %3116

; <label>:3116                                    ; preds = %3070, %3064
  %3117 = phi float [ %3115, %3070 ], [ %3065, %3064 ]
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 128
  %3121 = icmp eq i32 %3120, 0
  br i1 %3121, label %3138, label %3122

; <label>:3122                                    ; preds = %3116
  %3123 = add i32 %54, 420
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = add i32 %3125, 0
  %3127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3127, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 524288
  %3133 = icmp ne i32 %3132, 0
  %3134 = fcmp fast ogt float %3129, 0x3FE0101020000000
  %3135 = select i1 %3134, float 1.000000e+00, float 0.000000e+00
  %3136 = select i1 %3133, float %3135, float %3129
  %3137 = fmul fast float %3136, %3117
  br label %3138

; <label>:3138                                    ; preds = %3122, %3116
  %3139 = phi float [ %3137, %3122 ], [ %3117, %3116 ]
  %3140 = fcmp fast ult float %3139, 0x3F70101020000000
  br i1 %3140, label %3683, label %3141

; <label>:3141                                    ; preds = %3138
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 16
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3344, label %3146

; <label>:3146                                    ; preds = %3141
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %54, 372
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.ResRet.f32 %3154, 2
  %3158 = extractvalue %dx.types.ResRet.f32 %3154, 3
  %3159 = and i32 %3148, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3148, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3158, %3160
  %3165 = fadd fast float %3164, %3163
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 512
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3179, label %3171

; <label>:3171                                    ; preds = %3146
  %3172 = add i32 %54, 452
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %3174, 0
  %3176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3176, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  br label %3179

; <label>:3179                                    ; preds = %3171, %3146
  %3180 = phi float [ %3178, %3171 ], [ 1.000000e+00, %3146 ]
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 33554432
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3291, label %3185

; <label>:3185                                    ; preds = %3179
  %3186 = add i32 %54, 272
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 65535
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = lshr i32 %3188, 16
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = add i32 %54, 276
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 24
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = and i32 %3199, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3199, 8
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3199, 16
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = add i32 %54, 268
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 24
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = and i32 %3216, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3216, 8
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = lshr i32 %3216, 16
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = bitcast float %3155 to i32
  %3232 = ashr i32 %3231, 1
  %3233 = sub nsw i32 1597463174, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3155, 5.000000e-01
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, %3235
  %3238 = fsub fast float 1.500000e+00, %3237
  %3239 = fmul fast float %3234, %3155
  %3240 = fmul fast float %3239, %3238
  %3241 = bitcast float %3156 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = sub nsw i32 1597463174, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3156, 5.000000e-01
  %3246 = fmul fast float %3244, %3244
  %3247 = fmul fast float %3246, %3245
  %3248 = fsub fast float 1.500000e+00, %3247
  %3249 = fmul fast float %3244, %3156
  %3250 = fmul fast float %3249, %3248
  %3251 = bitcast float %3157 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = sub nsw i32 1597463174, %3252
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3157, 5.000000e-01
  %3256 = fmul fast float %3254, %3254
  %3257 = fmul fast float %3256, %3255
  %3258 = fsub fast float 1.500000e+00, %3257
  %3259 = fmul fast float %3254, %3157
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float %3240, %3222
  %3262 = fsub fast float %3250, %3226
  %3263 = fsub fast float %3260, %3230
  %3264 = fmul fast float %3261, %3190
  %3265 = fmul fast float %3262, %3192
  %3266 = fmul fast float %3263, %3197
  %3267 = fadd fast float %3264, %3205
  %3268 = fadd fast float %3265, %3209
  %3269 = fadd fast float %3266, %3213
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3272 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3273 = fmul fast float %3270, %3270
  %3274 = fmul fast float %3271, %3271
  %3275 = fmul fast float %3272, %3272
  %3276 = fsub fast float %3273, %3155
  %3277 = fsub fast float %3274, %3156
  %3278 = fsub fast float %3275, %3157
  %3279 = fmul fast float %3276, %3180
  %3280 = fmul fast float %3277, %3180
  %3281 = fmul fast float %3278, %3180
  %3282 = fadd fast float %3279, %3155
  %3283 = fadd fast float %3280, %3156
  %3284 = fadd fast float %3281, %3157
  %3285 = fadd fast float %3202, %3166
  %3286 = fsub fast float %3285, %3219
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3288 = fsub fast float %3287, %3166
  %3289 = fmul fast float %3288, %3180
  %3290 = fadd fast float %3289, %3166
  br label %3344

; <label>:3291                                    ; preds = %3179
  %3292 = and i32 %3182, 134217728
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3328, label %3294

; <label>:3294                                    ; preds = %3291
  %3295 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3296 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3297 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3298 = fadd fast float %3295, -5.000000e-01
  %3299 = fadd fast float %3296, -5.000000e-01
  %3300 = fadd fast float %3297, -5.000000e-01
  %3301 = fmul fast float %3298, %3180
  %3302 = fmul fast float %3299, %3180
  %3303 = fmul fast float %3300, %3180
  %3304 = fadd fast float %3301, 5.000000e-01
  %3305 = fadd fast float %3302, 5.000000e-01
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = call float @dx.op.unary.f32(i32 24, float %3155)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3310 = fmul fast float %3304, 2.000000e+00
  %3311 = fsub fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3311, %3307
  %3313 = fadd fast float %3312, %3310
  %3314 = fmul fast float %3313, %3307
  %3315 = fmul fast float %3305, 2.000000e+00
  %3316 = fsub fast float 1.000000e+00, %3315
  %3317 = fmul fast float %3316, %3308
  %3318 = fadd fast float %3317, %3315
  %3319 = fmul fast float %3318, %3308
  %3320 = fmul fast float %3306, 2.000000e+00
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %3321, %3309
  %3323 = fadd fast float %3322, %3320
  %3324 = fmul fast float %3323, %3309
  %3325 = fmul fast float %3314, %3314
  %3326 = fmul fast float %3319, %3319
  %3327 = fmul fast float %3324, %3324
  br label %3344

; <label>:3328                                    ; preds = %3291
  %3329 = fmul fast float %375, %375
  %3330 = fmul fast float %379, %379
  %3331 = fmul fast float %383, %383
  %3332 = fadd fast float %3329, -1.000000e+00
  %3333 = fadd fast float %3330, -1.000000e+00
  %3334 = fadd fast float %3331, -1.000000e+00
  %3335 = fmul fast float %3180, %3332
  %3336 = fmul fast float %3180, %3333
  %3337 = fmul fast float %3180, %3334
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fmul fast float %3338, %3155
  %3342 = fmul fast float %3339, %3156
  %3343 = fmul fast float %3340, %3157
  br label %3344

; <label>:3344                                    ; preds = %3328, %3294, %3185, %3141
  %3345 = phi float [ %3290, %3185 ], [ %3166, %3294 ], [ %3166, %3328 ], [ 0x3FA23C0BE0000000, %3141 ]
  %3346 = phi float [ %3282, %3185 ], [ %3325, %3294 ], [ %3341, %3328 ], [ 1.000000e+00, %3141 ]
  %3347 = phi float [ %3283, %3185 ], [ %3326, %3294 ], [ %3342, %3328 ], [ 1.000000e+00, %3141 ]
  %3348 = phi float [ %3284, %3185 ], [ %3327, %3294 ], [ %3343, %3328 ], [ 1.000000e+00, %3141 ]
  %3349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.i32 %3349, 1
  %3351 = and i32 %3350, 1
  %3352 = icmp ne i32 %3351, 0
  %3353 = add i32 %54, 356
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 32
  %3357 = icmp ne i32 %3356, 0
  %3358 = and i1 %3352, %3357
  %3359 = select i1 %3358, float 1.000000e+00, float %3346
  %3360 = select i1 %3358, float 0x3FD3333340000000, float %3347
  %3361 = select i1 %3358, float 0x3FD3333340000000, float %3348
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 32
  %3365 = icmp eq i32 %3364, 0
  br i1 %3365, label %3438, label %3366

; <label>:3366                                    ; preds = %3344
  %3367 = add i32 %54, 140
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = add i32 %54, 388
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %3372, 0
  %3374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3374, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = and i32 %3369, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = lshr i32 %3369, 8
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = lshr i32 %3369, 16
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F70101000000000
  %3389 = fmul fast float %3376, %3381
  %3390 = fadd fast float %3389, %3384
  %3391 = fmul fast float %3390, 0x3F70101000000000
  %3392 = fadd fast float %3377, -5.000000e-01
  %3393 = fadd fast float %3379, -5.000000e-01
  %3394 = fmul fast float %3392, %3388
  %3395 = fmul fast float %3393, %3388
  %3396 = fadd fast float %3394, 5.000000e-01
  %3397 = fadd fast float %3395, 5.000000e-01
  %3398 = fmul fast float %3396, 2.000000e+00
  %3399 = fadd fast float %3398, -1.000000e+00
  %3400 = fmul fast float %3397, 2.000000e+00
  %3401 = fadd fast float %3400, -1.000000e+00
  %3402 = fadd fast float %3399, %3401
  %3403 = fmul fast float %3402, 5.000000e-01
  %3404 = fsub fast float %3399, %3401
  %3405 = fmul fast float %3404, 5.000000e-01
  %3406 = call float @dx.op.unary.f32(i32 6, float %3403)  ; FAbs(value)
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3409 = fsub fast float %3407, %3408
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3405, float %3409, float %3403, float %3405, float %3409)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = call float @dx.op.unary.f32(i32 25, float %3410)  ; Rsqrt(value)
  %3412 = fmul fast float %3403, %3411
  %3413 = fmul fast float %3405, %3411
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 67108864
  %3417 = icmp eq i32 %3416, 0
  br i1 %3417, label %3434, label %3418

; <label>:3418                                    ; preds = %3366
  %3419 = add i32 %54, 328
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = lshr i32 %3421, 16
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = fsub fast float %3391, %3429
  %3431 = fmul fast float %3430, %3423
  %3432 = fadd fast float %3431, %3427
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  br label %3434

; <label>:3434                                    ; preds = %3418, %3366
  %3435 = phi float [ %3433, %3418 ], [ %3391, %3366 ]
  %3436 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2855, float %2856)  ; Dot2(ax,ay,bx,by)
  %3437 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2857, float %2858)  ; Dot2(ax,ay,bx,by)
  br label %3438

; <label>:3438                                    ; preds = %3434, %3344
  %3439 = phi float [ %3435, %3434 ], [ 0x3FD6666660000000, %3344 ]
  %3440 = phi float [ %3436, %3434 ], [ 0.000000e+00, %3344 ]
  %3441 = phi float [ %3437, %3434 ], [ 0.000000e+00, %3344 ]
  %3442 = phi float [ %3378, %3434 ], [ 1.000000e+00, %3344 ]
  %3443 = add i32 %54, 208
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 22
  %3447 = shl nuw nsw i32 %3446, 5
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 64
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %3486, label %3453

; <label>:3453                                    ; preds = %3438
  %3454 = add i32 %54, 404
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = add i32 %3456, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 131072
  %3462 = icmp eq i32 %3461, 0
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3458, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = fmul fast float %3464, %363
  %3468 = fmul fast float %3465, %366
  %3469 = fmul fast float %3466, %369
  br i1 %3462, label %3476, label %3470

; <label>:3470                                    ; preds = %3453
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = fmul fast float %3472, %3467
  %3474 = fmul fast float %3472, %3468
  %3475 = fmul fast float %3472, %3469
  br label %3476

; <label>:3476                                    ; preds = %3470, %3453
  %3477 = phi float [ %3473, %3470 ], [ %3467, %3453 ]
  %3478 = phi float [ %3474, %3470 ], [ %3468, %3453 ]
  %3479 = phi float [ %3475, %3470 ], [ %3469, %3453 ]
  %3480 = fmul fast float %3477, %3448
  %3481 = select i1 %220, float %3480, float %3477
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3478, float %3479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = select i1 %220, float 0.000000e+00, float %3477
  %3484 = select i1 %220, float %3482, float %3478
  %3485 = select i1 %220, float 0.000000e+00, float %3479
  br label %3486

; <label>:3486                                    ; preds = %3476, %3438
  %3487 = phi float [ %3483, %3476 ], [ 0.000000e+00, %3438 ]
  %3488 = phi float [ %3484, %3476 ], [ 0.000000e+00, %3438 ]
  %3489 = phi float [ %3485, %3476 ], [ 0.000000e+00, %3438 ]
  %3490 = add i32 %54, 144
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3492, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3360, float %3361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = fmul fast float %3497, %3498
  %3500 = fadd fast float %3499, %3494
  %3501 = fmul fast float %3500, 0x3F70101020000000
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  br i1 %2843, label %3503, label %3511

; <label>:3503                                    ; preds = %3486
  %3504 = fsub fast float 1.000000e+00, %3139
  %3505 = fmul fast float %3504, %2832
  %3506 = fmul fast float %3504, %2833
  %3507 = fmul fast float %3504, %2834
  %3508 = fmul fast float %3504, %2835
  %3509 = fmul fast float %3504, %2836
  %3510 = fmul fast float %3504, %2837
  br label %3511

; <label>:3511                                    ; preds = %3503, %3486
  %3512 = phi float [ %3505, %3503 ], [ %2832, %3486 ]
  %3513 = phi float [ %3506, %3503 ], [ %2833, %3486 ]
  %3514 = phi float [ %3507, %3503 ], [ %2834, %3486 ]
  %3515 = phi float [ %3508, %3503 ], [ %2835, %3486 ]
  %3516 = phi float [ %3509, %3503 ], [ %2836, %3486 ]
  %3517 = phi float [ %3510, %3503 ], [ %2837, %3486 ]
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 3
  %3521 = icmp eq i32 %3520, 3
  br i1 %3521, label %3600, label %3522

; <label>:3522                                    ; preds = %3511
  %3523 = and i32 %3519, 16
  %3524 = icmp ne i32 %3523, 0
  %3525 = select i1 %3524, float %3139, float 0.000000e+00
  %3526 = icmp eq i32 %3520, 0
  br i1 %3526, label %3527, label %3555

; <label>:3527                                    ; preds = %3522
  %3528 = and i32 %3519, 64
  %3529 = icmp ne i32 %3528, 0
  %3530 = select i1 %3529, float %3139, float 0.000000e+00
  %3531 = fsub fast float %3359, %3512
  %3532 = fsub fast float %3360, %3513
  %3533 = fsub fast float %3361, %3514
  %3534 = fmul fast float %3525, %3531
  %3535 = fmul fast float %3525, %3532
  %3536 = fmul fast float %3525, %3533
  %3537 = fadd fast float %3534, %3512
  %3538 = fadd fast float %3535, %3513
  %3539 = fadd fast float %3536, %3514
  %3540 = fsub fast float %3345, %2838
  %3541 = fmul fast float %3525, %3540
  %3542 = fadd fast float %3541, %2838
  %3543 = fsub fast float %3487, %3515
  %3544 = fsub fast float %3488, %3516
  %3545 = fsub fast float %3489, %3517
  %3546 = fmul fast float %3530, %3543
  %3547 = fmul fast float %3530, %3544
  %3548 = fmul fast float %3530, %3545
  %3549 = fadd fast float %3546, %3515
  %3550 = fadd fast float %3547, %3516
  %3551 = fadd fast float %3548, %3517
  %3552 = fsub fast float %3502, %2841
  %3553 = fmul fast float %3525, %3552
  %3554 = fadd fast float %3553, %2841
  br label %3600

; <label>:3555                                    ; preds = %3522
  %3556 = icmp eq i32 %3520, 1
  br i1 %3556, label %3557, label %3570

; <label>:3557                                    ; preds = %3555
  %3558 = fadd fast float %3359, -1.000000e+00
  %3559 = fadd fast float %3360, -1.000000e+00
  %3560 = fadd fast float %3361, -1.000000e+00
  %3561 = fmul fast float %3525, %3558
  %3562 = fmul fast float %3525, %3559
  %3563 = fmul fast float %3525, %3560
  %3564 = fadd fast float %3561, 1.000000e+00
  %3565 = fadd fast float %3562, 1.000000e+00
  %3566 = fadd fast float %3563, 1.000000e+00
  %3567 = fmul fast float %3564, %3512
  %3568 = fmul fast float %3565, %3513
  %3569 = fmul fast float %3566, %3514
  br label %3600

; <label>:3570                                    ; preds = %3555
  %3571 = icmp eq i32 %3520, 2
  br i1 %3571, label %3572, label %3600

; <label>:3572                                    ; preds = %3570
  %3573 = call float @dx.op.unary.f32(i32 24, float %3359)  ; Sqrt(value)
  %3574 = call float @dx.op.unary.f32(i32 24, float %3360)  ; Sqrt(value)
  %3575 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3576 = fadd fast float %3573, -5.000000e-01
  %3577 = fadd fast float %3574, -5.000000e-01
  %3578 = fadd fast float %3575, -5.000000e-01
  %3579 = fmul fast float %3576, %3525
  %3580 = fmul fast float %3577, %3525
  %3581 = fmul fast float %3578, %3525
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = fadd fast float %3581, 5.000000e-01
  %3585 = fmul fast float %3582, 2.000000e+00
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3512
  %3588 = fadd fast float %3587, %3585
  %3589 = fmul fast float %3588, %3512
  %3590 = fmul fast float %3583, 2.000000e+00
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3591, %3513
  %3593 = fadd fast float %3592, %3590
  %3594 = fmul fast float %3593, %3513
  %3595 = fmul fast float %3584, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3514
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3514
  br label %3600

; <label>:3600                                    ; preds = %3572, %3570, %3557, %3527, %3511
  %3601 = phi float [ %3512, %3511 ], [ %3589, %3572 ], [ %3512, %3570 ], [ %3567, %3557 ], [ %3537, %3527 ]
  %3602 = phi float [ %3513, %3511 ], [ %3594, %3572 ], [ %3513, %3570 ], [ %3568, %3557 ], [ %3538, %3527 ]
  %3603 = phi float [ %3514, %3511 ], [ %3599, %3572 ], [ %3514, %3570 ], [ %3569, %3557 ], [ %3539, %3527 ]
  %3604 = phi float [ %3515, %3511 ], [ %3515, %3572 ], [ %3515, %3570 ], [ %3515, %3557 ], [ %3549, %3527 ]
  %3605 = phi float [ %3516, %3511 ], [ %3516, %3572 ], [ %3516, %3570 ], [ %3516, %3557 ], [ %3550, %3527 ]
  %3606 = phi float [ %3517, %3511 ], [ %3517, %3572 ], [ %3517, %3570 ], [ %3517, %3557 ], [ %3551, %3527 ]
  %3607 = phi float [ %2838, %3511 ], [ %2838, %3572 ], [ %2838, %3570 ], [ %2838, %3557 ], [ %3542, %3527 ]
  %3608 = phi float [ %2841, %3511 ], [ %2841, %3572 ], [ %2841, %3570 ], [ %2841, %3557 ], [ %3554, %3527 ]
  %3609 = and i32 %3519, 12
  %3610 = icmp eq i32 %3609, 12
  br i1 %3610, label %3683, label %3611

; <label>:3611                                    ; preds = %3600
  %3612 = and i32 %3519, 2097184
  %3613 = icmp eq i32 %3612, 2097184
  %3614 = select i1 %3613, float %3139, float 0.000000e+00
  %3615 = and i32 %3519, 4194336
  %3616 = icmp eq i32 %3615, 4194336
  %3617 = select i1 %3616, float %3139, float 0.000000e+00
  %3618 = and i32 %3519, 8388640
  %3619 = icmp eq i32 %3618, 8388640
  %3620 = select i1 %3619, float %3139, float 0.000000e+00
  %3621 = icmp eq i32 %3609, 0
  br i1 %3621, label %3622, label %3635

; <label>:3622                                    ; preds = %3611
  %3623 = fsub fast float %3440, %2830
  %3624 = fsub fast float %3441, %2831
  %3625 = fmul fast float %3614, %3623
  %3626 = fmul fast float %3614, %3624
  %3627 = fadd fast float %3625, %2830
  %3628 = fadd fast float %3626, %2831
  %3629 = fsub fast float %3442, %2840
  %3630 = fmul fast float %3617, %3629
  %3631 = fadd fast float %3630, %2840
  %3632 = fsub fast float %3439, %2839
  %3633 = fmul fast float %3620, %3632
  %3634 = fadd fast float %3633, %2839
  br label %3683

; <label>:3635                                    ; preds = %3611
  %3636 = icmp eq i32 %3609, 4
  br i1 %3636, label %3637, label %3669

; <label>:3637                                    ; preds = %3635
  %3638 = fmul fast float %3614, %3440
  %3639 = fmul fast float %3614, %3441
  %3640 = fadd fast float %3638, %2830
  %3641 = fadd fast float %3639, %2831
  %3642 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3643 = fsub fast float %3642, %2840
  %3644 = fmul fast float %3643, %3617
  %3645 = fadd fast float %3644, %2840
  %3646 = fadd fast float %3439, %2839
  %3647 = fmul fast float %3646, 0x3FF337FAE0000000
  %3648 = fmul fast float %2839, %2839
  %3649 = fmul fast float %3439, %3439
  %3650 = fadd fast float %3649, %3648
  %3651 = fmul fast float %3650, 0x3FE5152B00000000
  %3652 = fmul fast float %2839, 0xBFCC1F85E0000000
  %3653 = fmul fast float %3652, %3439
  %3654 = fadd fast float %3653, 0xBFE1363700000000
  %3655 = fadd fast float %3654, %3647
  %3656 = fsub fast float %3655, %3651
  %3657 = fmul fast float %3646, 0x3FBA6F0D00000000
  %3658 = fmul fast float %3650, 0x3FD0432880000000
  %3659 = fmul fast float %2839, 0xBFEF110800000000
  %3660 = fmul fast float %3659, %3439
  %3661 = fadd fast float %3660, 1.000000e+00
  %3662 = fsub fast float %3661, %3657
  %3663 = fadd fast float %3662, %3658
  %3664 = fdiv fast float %3656, %3663
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = fsub fast float %3665, %2839
  %3667 = fmul fast float %3666, %3620
  %3668 = fadd fast float %3667, %2839
  br label %3683

; <label>:3669                                    ; preds = %3635
  %3670 = icmp eq i32 %3609, 8
  br i1 %3670, label %3671, label %3683

; <label>:3671                                    ; preds = %3669
  %3672 = fmul fast float %3614, %3440
  %3673 = fmul fast float %3614, %3441
  %3674 = fadd fast float %3672, %2830
  %3675 = fadd fast float %3673, %2831
  %3676 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3677 = fsub fast float %3676, %2840
  %3678 = fmul fast float %3677, %3617
  %3679 = fadd fast float %3678, %2840
  %3680 = fsub fast float %3439, %2839
  %3681 = fmul fast float %3620, %3680
  %3682 = fadd fast float %3681, %2839
  br label %3683

; <label>:3683                                    ; preds = %3671, %3669, %3637, %3622, %3600, %3138, %2842, %2829
  %3684 = phi float [ %2830, %3600 ], [ %2830, %3138 ], [ %2830, %2829 ], [ %2830, %2842 ], [ %3627, %3622 ], [ %3640, %3637 ], [ %2830, %3669 ], [ %3674, %3671 ]
  %3685 = phi float [ %2831, %3600 ], [ %2831, %3138 ], [ %2831, %2829 ], [ %2831, %2842 ], [ %3628, %3622 ], [ %3641, %3637 ], [ %2831, %3669 ], [ %3675, %3671 ]
  %3686 = phi float [ %3601, %3600 ], [ %2832, %3138 ], [ %2832, %2829 ], [ %2832, %2842 ], [ %3601, %3622 ], [ %3601, %3637 ], [ %3601, %3669 ], [ %3601, %3671 ]
  %3687 = phi float [ %3602, %3600 ], [ %2833, %3138 ], [ %2833, %2829 ], [ %2833, %2842 ], [ %3602, %3622 ], [ %3602, %3637 ], [ %3602, %3669 ], [ %3602, %3671 ]
  %3688 = phi float [ %3603, %3600 ], [ %2834, %3138 ], [ %2834, %2829 ], [ %2834, %2842 ], [ %3603, %3622 ], [ %3603, %3637 ], [ %3603, %3669 ], [ %3603, %3671 ]
  %3689 = phi float [ %3604, %3600 ], [ %2835, %3138 ], [ %2835, %2829 ], [ %2835, %2842 ], [ %3604, %3622 ], [ %3604, %3637 ], [ %3604, %3669 ], [ %3604, %3671 ]
  %3690 = phi float [ %3605, %3600 ], [ %2836, %3138 ], [ %2836, %2829 ], [ %2836, %2842 ], [ %3605, %3622 ], [ %3605, %3637 ], [ %3605, %3669 ], [ %3605, %3671 ]
  %3691 = phi float [ %3606, %3600 ], [ %2837, %3138 ], [ %2837, %2829 ], [ %2837, %2842 ], [ %3606, %3622 ], [ %3606, %3637 ], [ %3606, %3669 ], [ %3606, %3671 ]
  %3692 = phi float [ %3607, %3600 ], [ %2838, %3138 ], [ %2838, %2829 ], [ %2838, %2842 ], [ %3607, %3622 ], [ %3607, %3637 ], [ %3607, %3669 ], [ %3607, %3671 ]
  %3693 = phi float [ %2839, %3600 ], [ %2839, %3138 ], [ %2839, %2829 ], [ %2839, %2842 ], [ %3634, %3622 ], [ %3668, %3637 ], [ %2839, %3669 ], [ %3682, %3671 ]
  %3694 = phi float [ %2840, %3600 ], [ %2840, %3138 ], [ %2840, %2829 ], [ %2840, %2842 ], [ %3631, %3622 ], [ %3645, %3637 ], [ %2840, %3669 ], [ %3679, %3671 ]
  %3695 = phi float [ %3608, %3600 ], [ %2841, %3138 ], [ %2841, %2829 ], [ %2841, %2842 ], [ %3608, %3622 ], [ %3608, %3637 ], [ %3608, %3669 ], [ %3608, %3671 ]
  %3696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3697 = extractvalue %dx.types.CBufRet.f32 %3696, 0
  %3698 = call float @dx.op.dot2.f32(i32 54, float %3684, float %3685, float %3684, float %3685)  ; Dot2(ax,ay,bx,by)
  %3699 = fmul fast float %3698, 0x3FE3333340000000
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3700, float %3684, float %3685, float %3700)  ; Dot3(ax,ay,az,bx,by,bz)
  %3702 = call float @dx.op.unary.f32(i32 25, float %3701)  ; Rsqrt(value)
  %3703 = fmul fast float %3702, %3684
  %3704 = fmul fast float %3702, %3685
  %3705 = fmul fast float %3700, %3702
  %3706 = fmul fast float %3705, %102
  %3707 = fmul fast float %3705, %103
  %3708 = fmul fast float %3705, %104
  %3709 = fmul fast float %3703, %70
  %3710 = fmul fast float %3703, %71
  %3711 = fmul fast float %3703, %72
  %3712 = fadd fast float %3706, %3709
  %3713 = fadd fast float %3707, %3710
  %3714 = fadd fast float %3708, %3711
  %3715 = fmul fast float %114, %3704
  %3716 = fmul fast float %115, %3704
  %3717 = fmul fast float %116, %3704
  %3718 = fadd fast float %3712, %3715
  %3719 = fadd fast float %3713, %3716
  %3720 = fadd fast float %3714, %3717
  %3721 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3719, float %3720, float %3718, float %3719, float %3720)  ; Dot3(ax,ay,az,bx,by,bz)
  %3722 = call float @dx.op.unary.f32(i32 25, float %3721)  ; Rsqrt(value)
  %3723 = fmul fast float %3718, %3722
  %3724 = fmul fast float %3719, %3722
  %3725 = fmul fast float %3720, %3722
  %3726 = and i32 %56, 1
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3728, label %4236

; <label>:3728                                    ; preds = %3683
  %3729 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3730 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3731 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3732 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3733 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3734 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3735 = fadd fast float %3729, %158
  %3736 = fadd fast float %3730, %159
  %3737 = fadd fast float %3731, %160
  %3738 = fadd fast float %3732, %158
  %3739 = fadd fast float %3733, %159
  %3740 = fadd fast float %3734, %160
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.CBufRet.f32 %3741, 2
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3748 = fmul fast float %3742, %95
  %3749 = fmul fast float %3748, %3746
  %3750 = fmul fast float %3743, %96
  %3751 = fmul fast float %3750, %3747
  %3752 = fptoui float %3749 to i32
  %3753 = fptoui float %3751 to i32
  %3754 = fadd fast float %3742, -1.000000e+00
  %3755 = fadd fast float %3743, -1.000000e+00
  %3756 = fptoui float %3754 to i32
  %3757 = fptoui float %3755 to i32
  %3758 = call i32 @dx.op.binary.i32(i32 40, i32 %3752, i32 %3756)  ; UMin(a,b)
  %3759 = call i32 @dx.op.binary.i32(i32 40, i32 %3753, i32 %3757)  ; UMin(a,b)
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 3
  %3763 = fmul fast float %3761, %86
  %3764 = fsub fast float %3763, %3762
  %3765 = fadd fast float %3744, -1.000000e+00
  %3766 = call float @dx.op.binary.f32(i32 36, float %3764, float %3765)  ; FMin(a,b)
  %3767 = fptoui float %3766 to i32
  %3768 = fptoui float %3742 to i32
  %3769 = fptoui float %3743 to i32
  %3770 = mul i32 %3767, %3769
  %3771 = add i32 %3770, %3759
  %3772 = mul i32 %3771, %3768
  %3773 = add i32 %3772, %3758
  %3774 = shl i32 %3773, 2
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = and i32 %3776, 1023
  %3778 = lshr i32 %3776, 10
  %3779 = icmp eq i32 %3777, 0
  br i1 %3779, label %4205, label %3780

; <label>:3780                                    ; preds = %3728
  %3781 = and i32 %3776, 1023
  br label %3782

; <label>:3782                                    ; preds = %3908, %3780
  %3783 = phi i32 [ %3858, %3908 ], [ 0, %3780 ]
  %3784 = phi float [ %3909, %3908 ], [ 0.000000e+00, %3780 ]
  %3785 = phi float [ %3910, %3908 ], [ %3697, %3780 ]
  %3786 = phi float [ %3911, %3908 ], [ %3695, %3780 ]
  %3787 = phi float [ %3912, %3908 ], [ 0.000000e+00, %3780 ]
  %3788 = phi float [ %3913, %3908 ], [ 0.000000e+00, %3780 ]
  %3789 = phi float [ %3914, %3908 ], [ %3689, %3780 ]
  %3790 = phi float [ %3915, %3908 ], [ %3690, %3780 ]
  %3791 = phi float [ %3916, %3908 ], [ %3691, %3780 ]
  %3792 = phi float [ %3917, %3908 ], [ %3723, %3780 ]
  %3793 = phi float [ %3918, %3908 ], [ %3724, %3780 ]
  %3794 = phi float [ %3919, %3908 ], [ %3725, %3780 ]
  %3795 = phi float [ %3920, %3908 ], [ %3694, %3780 ]
  %3796 = phi float [ %3921, %3908 ], [ %3693, %3780 ]
  %3797 = phi float [ %3922, %3908 ], [ 0.000000e+00, %3780 ]
  %3798 = phi float [ %3923, %3908 ], [ %3692, %3780 ]
  %3799 = phi float [ %3924, %3908 ], [ %3686, %3780 ]
  %3800 = phi float [ %3925, %3908 ], [ %3687, %3780 ]
  %3801 = phi float [ %3926, %3908 ], [ %3688, %3780 ]
  %3802 = add nuw nsw i32 %3783, %3778
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
  %3858 = add nuw nsw i32 %3783, 1
  %3859 = bitcast float %3812 to i32
  %3860 = and i32 %3859, 512
  %3861 = icmp eq i32 %3860, 0
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3867 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3868 = or i32 %3806, 16
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3874 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3875 = or i32 %3806, 32
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = call float @dx.op.dot4.f32(i32 56, float %3877, float %3878, float %3879, float %3880, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3882 = call float @dx.op.unary.f32(i32 27, float %3867)  ; Round_ni(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3874)  ; Round_ni(value)
  %3885 = call float @dx.op.unary.f32(i32 6, float %3884)  ; FAbs(value)
  %3886 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3887 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3888 = fadd fast float %3885, %3883
  %3889 = fadd fast float %3888, %3887
  %3890 = fcmp fast oeq float %3889, 0.000000e+00
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3735, float %3736, float %3737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3735, float %3736, float %3737, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3893 = call float @dx.op.dot4.f32(i32 56, float %3863, float %3864, float %3865, float %3866, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3894 = call float @dx.op.dot4.f32(i32 56, float %3870, float %3871, float %3872, float %3873, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3895 = fsub fast float %3891, %3867
  %3896 = fsub fast float %3893, %3867
  %3897 = fsub fast float %3892, %3874
  %3898 = fsub fast float %3894, %3874
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3809, float %3810, float %3811, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3902 = fadd fast float %3901, %3899
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3905 = fcmp fast ogt float %3903, %3904
  %3906 = and i1 %3890, %3905
  %3907 = and i1 %3861, %3906
  br i1 %3907, label %3928, label %3908

; <label>:3908                                    ; preds = %4191, %4009, %3928, %3782
  %3909 = phi float [ %3784, %3928 ], [ %4012, %4009 ], [ %4012, %4191 ], [ %3784, %3782 ]
  %3910 = phi float [ %3785, %3928 ], [ %3785, %4009 ], [ %4166, %4191 ], [ %3785, %3782 ]
  %3911 = phi float [ %3786, %3928 ], [ %3786, %4009 ], [ %4164, %4191 ], [ %3786, %3782 ]
  %3912 = phi float [ %3787, %3928 ], [ %3787, %4009 ], [ %4136, %4191 ], [ %3787, %3782 ]
  %3913 = phi float [ %3788, %3928 ], [ %3788, %4009 ], [ %4134, %4191 ], [ %3788, %3782 ]
  %3914 = phi float [ %3789, %3928 ], [ %3789, %4009 ], [ %4201, %4191 ], [ %3789, %3782 ]
  %3915 = phi float [ %3790, %3928 ], [ %3790, %4009 ], [ %4202, %4191 ], [ %3790, %3782 ]
  %3916 = phi float [ %3791, %3928 ], [ %3791, %4009 ], [ %4203, %4191 ], [ %3791, %3782 ]
  %3917 = phi float [ %3792, %3928 ], [ %3792, %4009 ], [ %4115, %4191 ], [ %3792, %3782 ]
  %3918 = phi float [ %3793, %3928 ], [ %3793, %4009 ], [ %4116, %4191 ], [ %3793, %3782 ]
  %3919 = phi float [ %3794, %3928 ], [ %3794, %4009 ], [ %4117, %4191 ], [ %3794, %3782 ]
  %3920 = phi float [ %3795, %3928 ], [ %3795, %4009 ], [ %4144, %4191 ], [ %3795, %3782 ]
  %3921 = phi float [ %3796, %3928 ], [ %3796, %4009 ], [ %4141, %4191 ], [ %3796, %3782 ]
  %3922 = phi float [ %3797, %3928 ], [ %3797, %4009 ], [ %4138, %4191 ], [ %3797, %3782 ]
  %3923 = phi float [ %3798, %3928 ], [ %3798, %4009 ], [ %4132, %4191 ], [ %3798, %3782 ]
  %3924 = phi float [ %3799, %3928 ], [ %3799, %4009 ], [ %4127, %4191 ], [ %3799, %3782 ]
  %3925 = phi float [ %3800, %3928 ], [ %3800, %4009 ], [ %4128, %4191 ], [ %3800, %3782 ]
  %3926 = phi float [ %3801, %3928 ], [ %3801, %4009 ], [ %4129, %4191 ], [ %3801, %3782 ]
  %3927 = icmp eq i32 %3858, %3781
  br i1 %3927, label %4204, label %3782

; <label>:3928                                    ; preds = %3782
  %3929 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3930 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3932 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3933 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3934 = extractvalue %dx.types.ResRet.i32 %3814, 3
  %3935 = extractvalue %dx.types.ResRet.i32 %3814, 2
  %3936 = add i32 %3934, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3939 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3937, %dx.types.Handle %3938, float %3867, float %3874, float undef, float undef, i32 0, i32 0, i32 undef, float %3895, float %3897, float undef, float %3896, float %3898, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = fmul fast float %3940, %3933
  %3942 = fadd fast float %3941, %3932
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fmul fast float %3867, %3823
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3874, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3931
  %3947 = fmul fast float %3867, %3825
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3874, float %3947)  ; FMad(a,b,c)
  %3949 = fadd fast float %3948, %3930
  %3950 = fmul fast float %3895, %3823
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3897, float %3950)  ; FMad(a,b,c)
  %3952 = fmul fast float %3895, %3825
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3897, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3896, %3823
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3898, float %3954)  ; FMad(a,b,c)
  %3956 = fmul fast float %3896, %3825
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3898, float %3956)  ; FMad(a,b,c)
  %3958 = add i32 %3935, 0
  %3959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3958, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3959, %dx.types.Handle %3938, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = and i32 %3859, 1024
  %3963 = icmp ne i32 %3962, 0
  %3964 = fcmp fast ogt float %3961, 0x3FE0101020000000
  %3965 = uitofp i1 %3964 to float
  %3966 = select i1 %3963, float %3965, float %3961
  %3967 = and i32 %3859, 8192
  %3968 = icmp ne i32 %3967, 0
  %3969 = select i1 %3968, float %3929, float 1.000000e+00
  %3970 = fmul fast float %3867, 2.000000e+00
  %3971 = fadd fast float %3970, -1.000000e+00
  %3972 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3973 = fmul fast float %3972, %3856
  %3974 = fsub fast float %3973, %3856
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = fmul fast float %3874, 2.000000e+00
  %3977 = fadd fast float %3976, -1.000000e+00
  %3978 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3979 = fmul fast float %3978, %3857
  %3980 = fsub fast float %3979, %3857
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3886, %3819
  %3983 = fsub fast float %3982, %3819
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3943, %3969
  %3986 = fmul fast float %3985, %3940
  %3987 = fmul fast float %3986, %3975
  %3988 = fmul fast float %3987, %3966
  %3989 = fmul fast float %3988, %3981
  %3990 = fmul fast float %3989, %3984
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3994 = fsub fast float %3903, %3993
  %3995 = fmul fast float %3994, %3992
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = fmul fast float %3990, %3820
  %3998 = fadd fast float %3990, %3820
  %3999 = fmul fast float %3998, %3829
  %4000 = fsub fast float %3999, %3829
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = and i32 %3859, 128
  %4003 = icmp ne i32 %4002, 0
  %4004 = select i1 %4003, float %4001, float %3997
  %4005 = fmul fast float %4004, %3996
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = fcmp fast ugt float %4005, %4007
  br i1 %4008, label %4009, label %3908

; <label>:4009                                    ; preds = %3928
  %4010 = select i1 %3968, float %4005, float 0.000000e+00
  %4011 = fadd fast float %4010, %3784
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  br i1 %3968, label %3908, label %4013

; <label>:4013                                    ; preds = %4009
  %4014 = and i32 %3859, 4
  %4015 = and i32 %3859, 8
  %4016 = add i32 %3815, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4019, 3
  %4024 = bitcast float %3841 to i32
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = lshr i32 %4024, 8
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4023, %4026
  %4031 = fadd fast float %4030, %4029
  %4032 = fmul fast float %4031, 0x3F70101000000000
  %4033 = add i32 %3816, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4033, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4034, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = bitcast float %3835 to i32
  %4041 = and i32 %4040, 255
  %4042 = uitofp i32 %4041 to float
  %4043 = lshr i32 %4040, 8
  %4044 = and i32 %4043, 255
  %4045 = uitofp i32 %4044 to float
  %4046 = lshr i32 %4040, 16
  %4047 = and i32 %4046, 255
  %4048 = uitofp i32 %4047 to float
  %4049 = fmul fast float %4048, 0x3F70101000000000
  %4050 = fmul fast float %4036, %4042
  %4051 = fadd fast float %4050, %4045
  %4052 = fmul fast float %4051, 0x3F70101000000000
  %4053 = fadd fast float %4037, -5.000000e-01
  %4054 = fadd fast float %4039, -5.000000e-01
  %4055 = fmul fast float %4053, %4049
  %4056 = fmul fast float %4054, %4049
  %4057 = fadd fast float %4055, 5.000000e-01
  %4058 = fadd fast float %4056, 5.000000e-01
  %4059 = fmul fast float %4020, %3844
  %4060 = fmul fast float %4021, %3845
  %4061 = fmul fast float %4022, %3846
  %4062 = fmul fast float %4057, 2.000000e+00
  %4063 = fadd fast float %4062, -1.000000e+00
  %4064 = fmul fast float %4058, 2.000000e+00
  %4065 = fadd fast float %4064, -1.000000e+00
  %4066 = fadd fast float %4063, %4065
  %4067 = fmul fast float %4066, 5.000000e-01
  %4068 = fsub fast float %4063, %4065
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4073 = fsub fast float %4071, %4072
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4069, float %4073, float %4067, float %4069, float %4073)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = call float @dx.op.unary.f32(i32 25, float %4074)  ; Rsqrt(value)
  %4076 = fmul fast float %4067, %4075
  %4077 = fmul fast float %4069, %4075
  %4078 = fmul fast float %4075, %4073
  %4079 = fmul fast float %4078, %3809
  %4080 = fmul fast float %4078, %3810
  %4081 = fmul fast float %4078, %3811
  %4082 = fmul fast float %4076, %3832
  %4083 = fmul fast float %4076, %3833
  %4084 = fmul fast float %4076, %3834
  %4085 = fadd fast float %4082, %4079
  %4086 = fadd fast float %4083, %4080
  %4087 = fadd fast float %4084, %4081
  %4088 = fmul fast float %4077, %3838
  %4089 = fmul fast float %4077, %3839
  %4090 = fmul fast float %4077, %3840
  %4091 = fadd fast float %4085, %4088
  %4092 = fadd fast float %4086, %4089
  %4093 = fadd fast float %4087, %4090
  %4094 = call float @dx.op.dot3.f32(i32 55, float %4091, float %4092, float %4093, float %4091, float %4092, float %4093)  ; Dot3(ax,ay,az,bx,by,bz)
  %4095 = call float @dx.op.unary.f32(i32 25, float %4094)  ; Rsqrt(value)
  %4096 = fmul fast float %4091, %4095
  %4097 = fmul fast float %4092, %4095
  %4098 = fmul fast float %4093, %4095
  %4099 = icmp ne i32 %4015, 0
  %4100 = select i1 %4099, float 1.000000e+00, float 0.000000e+00
  %4101 = fmul fast float %4005, %4100
  %4102 = and i32 %3859, 1
  %4103 = icmp eq i32 %4102, 0
  br i1 %4103, label %4104, label %4108

; <label>:4104                                    ; preds = %4013
  %4105 = fsub fast float %4096, %3792
  %4106 = fsub fast float %4097, %3793
  %4107 = fsub fast float %4098, %3794
  br label %4108

; <label>:4108                                    ; preds = %4104, %4013
  %4109 = phi float [ %4105, %4104 ], [ %4096, %4013 ]
  %4110 = phi float [ %4106, %4104 ], [ %4097, %4013 ]
  %4111 = phi float [ %4107, %4104 ], [ %4098, %4013 ]
  %4112 = fmul float %4111, %4101
  %4113 = fmul float %4110, %4101
  %4114 = fmul float %4109, %4101
  %4115 = fadd fast float %4114, %3792
  %4116 = fadd fast float %4113, %3793
  %4117 = fadd fast float %4112, %3794
  %4118 = icmp ne i32 %4014, 0
  %4119 = select i1 %4118, float 1.000000e+00, float 0.000000e+00
  %4120 = fmul fast float %4005, %4119
  %4121 = fsub fast float %4059, %3799
  %4122 = fsub fast float %4060, %3800
  %4123 = fsub fast float %4061, %3801
  %4124 = fmul fast float %4121, %4120
  %4125 = fmul fast float %4122, %4120
  %4126 = fmul fast float %4123, %4120
  %4127 = fadd fast float %4124, %3799
  %4128 = fadd fast float %4125, %3800
  %4129 = fadd fast float %4126, %3801
  %4130 = fsub fast float %4032, %3798
  %4131 = fmul fast float %4130, %4120
  %4132 = fadd fast float %4131, %3798
  %4133 = fmul fast float %4120, %3788
  %4134 = fsub fast float %3788, %4133
  %4135 = fmul fast float %4120, %3787
  %4136 = fsub fast float %3787, %4135
  %4137 = fadd fast float %4005, %3797
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = fsub fast float %4052, %3796
  %4140 = fmul fast float %4139, %4101
  %4141 = fadd fast float %4140, %3796
  %4142 = fsub fast float %4038, %3795
  %4143 = fmul fast float %4142, %4101
  %4144 = fadd fast float %4143, %3795
  %4145 = call float @dx.op.dot3.f32(i32 55, float %4059, float %4060, float %4061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4149 = fmul fast float %4148, %4145
  %4150 = fadd fast float %4149, %4147
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = bitcast float %3847 to i32
  %4153 = and i32 %4152, 65535
  %4154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4153)  ; LegacyF16ToF32(value)
  %4155 = lshr i32 %4152, 16
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = fcmp fast oge float %4154, 0.000000e+00
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = select i1 %4157, float %4154, float %4159
  %4161 = fadd fast float %4160, %4156
  %4162 = fsub fast float %4151, %3786
  %4163 = fmul fast float %4162, %4005
  %4164 = fadd fast float %4163, %3786
  %4165 = fmul fast float %4161, %4005
  %4166 = call float @dx.op.binary.f32(i32 35, float %3785, float %4165)  ; FMax(a,b)
  %4167 = and i32 %3859, 16
  %4168 = icmp eq i32 %4167, 0
  br i1 %4168, label %4191, label %4169

; <label>:4169                                    ; preds = %4108
  %4170 = bitcast float %3853 to i32
  %4171 = add i32 %3850, 0
  %4172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4171, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4172, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = and i32 %4170, 65535
  %4178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4177)  ; LegacyF16ToF32(value)
  %4179 = fmul fast float %4174, %3844
  %4180 = fmul fast float %4175, %3845
  %4181 = fmul fast float %4176, %3846
  %4182 = and i32 %3859, 16384
  %4183 = icmp ne i32 %4182, 0
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = select i1 %4183, float %4185, float 1.000000e+00
  %4187 = fmul fast float %4186, %4178
  %4188 = fmul fast float %4179, %4187
  %4189 = fmul fast float %4180, %4187
  %4190 = fmul fast float %4181, %4187
  br label %4191

; <label>:4191                                    ; preds = %4169, %4108
  %4192 = phi float [ %4188, %4169 ], [ 0.000000e+00, %4108 ]
  %4193 = phi float [ %4189, %4169 ], [ 0.000000e+00, %4108 ]
  %4194 = phi float [ %4190, %4169 ], [ 0.000000e+00, %4108 ]
  %4195 = fsub fast float %4192, %3789
  %4196 = fsub fast float %4193, %3790
  %4197 = fsub fast float %4194, %3791
  %4198 = fmul fast float %4195, %4005
  %4199 = fmul fast float %4196, %4005
  %4200 = fmul fast float %4197, %4005
  %4201 = fadd fast float %4198, %3789
  %4202 = fadd fast float %4199, %3790
  %4203 = fadd fast float %4200, %3791
  br label %3908

; <label>:4204                                    ; preds = %3908
  br label %4205

; <label>:4205                                    ; preds = %4204, %3728
  %4206 = phi float [ 0.000000e+00, %3728 ], [ %3909, %4204 ]
  %4207 = phi float [ %3697, %3728 ], [ %3910, %4204 ]
  %4208 = phi float [ %3695, %3728 ], [ %3911, %4204 ]
  %4209 = phi float [ 0.000000e+00, %3728 ], [ %3912, %4204 ]
  %4210 = phi float [ 0.000000e+00, %3728 ], [ %3913, %4204 ]
  %4211 = phi float [ %3689, %3728 ], [ %3914, %4204 ]
  %4212 = phi float [ %3690, %3728 ], [ %3915, %4204 ]
  %4213 = phi float [ %3691, %3728 ], [ %3916, %4204 ]
  %4214 = phi float [ %3723, %3728 ], [ %3917, %4204 ]
  %4215 = phi float [ %3724, %3728 ], [ %3918, %4204 ]
  %4216 = phi float [ %3725, %3728 ], [ %3919, %4204 ]
  %4217 = phi float [ %3694, %3728 ], [ %3920, %4204 ]
  %4218 = phi float [ %3693, %3728 ], [ %3921, %4204 ]
  %4219 = phi float [ 0.000000e+00, %3728 ], [ %3922, %4204 ]
  %4220 = phi float [ %3692, %3728 ], [ %3923, %4204 ]
  %4221 = phi float [ %3686, %3728 ], [ %3924, %4204 ]
  %4222 = phi float [ %3687, %3728 ], [ %3925, %4204 ]
  %4223 = phi float [ %3688, %3728 ], [ %3926, %4204 ]
  %4224 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %4214, float %4215, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = call float @dx.op.unary.f32(i32 25, float %4224)  ; Rsqrt(value)
  %4226 = fmul fast float %4225, %4214
  %4227 = fmul fast float %4225, %4215
  %4228 = fmul fast float %4225, %4216
  %4229 = fadd fast float %4219, %1130
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4232, %4226
  %4234 = fmul fast float %4232, %4227
  %4235 = fmul fast float %4232, %4228
  br label %4236

; <label>:4236                                    ; preds = %4205, %3683
  %4237 = phi float [ %4233, %4205 ], [ %3723, %3683 ]
  %4238 = phi float [ %4234, %4205 ], [ %3724, %3683 ]
  %4239 = phi float [ %4235, %4205 ], [ %3725, %3683 ]
  %4240 = phi float [ %4221, %4205 ], [ %3686, %3683 ]
  %4241 = phi float [ %4222, %4205 ], [ %3687, %3683 ]
  %4242 = phi float [ %4223, %4205 ], [ %3688, %3683 ]
  %4243 = phi float [ %4211, %4205 ], [ %3689, %3683 ]
  %4244 = phi float [ %4212, %4205 ], [ %3690, %3683 ]
  %4245 = phi float [ %4213, %4205 ], [ %3691, %3683 ]
  %4246 = phi float [ %4220, %4205 ], [ %3692, %3683 ]
  %4247 = phi float [ %4230, %4205 ], [ %1130, %3683 ]
  %4248 = phi float [ %4218, %4205 ], [ %3693, %3683 ]
  %4249 = phi float [ %4217, %4205 ], [ %3694, %3683 ]
  %4250 = phi float [ %4210, %4205 ], [ 0.000000e+00, %3683 ]
  %4251 = phi float [ %4209, %4205 ], [ 0.000000e+00, %3683 ]
  %4252 = phi float [ %4206, %4205 ], [ 0.000000e+00, %3683 ]
  %4253 = phi float [ %4207, %4205 ], [ %3697, %3683 ]
  %4254 = phi float [ %4208, %4205 ], [ %3695, %3683 ]
  %4255 = fadd fast float %4246, 0xBFB99999A0000000
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, 0x3FF1C71C80000000
  %4258 = call float @dx.op.binary.f32(i32 36, float %4246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4259 = fsub fast float 1.000000e+00, %4257
  %4260 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4261 = fmul fast float %4260, %4240
  %4262 = fmul fast float %4260, %4241
  %4263 = fmul fast float %4260, %4242
  %4264 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = fmul fast float %4257, %4240
  %4268 = fmul fast float %4257, %4241
  %4269 = fmul fast float %4257, %4242
  %4270 = fadd fast float %4267, %4258
  %4271 = fadd fast float %4268, %4258
  %4272 = fadd fast float %4269, %4258
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.i32 %4277, 3
  %4279 = and i32 %4278, 8
  %4280 = icmp ne i32 %4279, 0
  %4281 = call float @dx.op.binary.f32(i32 35, float %4264, float %4240)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float %4265, float %4240)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float %4266, float %4240)  ; FMax(a,b)
  %4284 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4265, float %4266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4285 = select i1 %220, float %4240, float %4264
  %4286 = select i1 %220, float %4284, float %4265
  %4287 = select i1 %220, float 1.000000e+00, float %4266
  %4288 = select i1 %4280, float %4281, float %4285
  %4289 = select i1 %4280, float %4282, float %4286
  %4290 = select i1 %4280, float %4283, float %4287
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4295 = fadd fast float %4292, %158
  %4296 = fadd fast float %4293, %159
  %4297 = fadd fast float %4294, %160
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = fsub fast float %4295, %4299
  %4302 = fsub fast float %4296, %4300
  %4303 = fmul fast float %4301, %4301
  %4304 = fmul fast float %4302, %4302
  %4305 = fadd fast float %4303, %4304
  %4306 = call float @dx.op.unary.f32(i32 24, float %4305)  ; Sqrt(value)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4308 = fcmp fast olt float %4306, %4307
  br i1 %4308, label %4309, label %4376

; <label>:4309                                    ; preds = %4236
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4320 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4322 = fadd fast float %4319, %4295
  %4323 = fadd fast float %4320, %4296
  %4324 = fadd fast float %4321, %4297
  %4325 = fmul fast float %4322, %4311
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4313, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4322, %4316
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4317, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4318, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4327, %4319
  %4332 = fsub fast float %4330, %4320
  %4333 = fsub fast float %4331, %4299
  %4334 = fadd fast float %4333, %4307
  %4335 = fsub fast float %4332, %4300
  %4336 = fadd fast float %4335, %4307
  %4337 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4338 = fmul fast float %4334, %4337
  %4339 = fmul fast float %4336, %4337
  %4340 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4342 = fsub fast float 1.000000e+00, %4340
  %4343 = fsub fast float 1.000000e+00, %4341
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fcmp fast ugt float %4345, 0.000000e+00
  br i1 %4346, label %4347, label %4650

; <label>:4347                                    ; preds = %4309
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fmul fast float %4349, %4345
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4352 = fadd fast float %4351, %4350
  %4353 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4354 = fadd fast float %4352, %4321
  %4355 = fmul fast float %4327, %4315
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4318, float %4355)  ; FMad(a,b,c)
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4353, float %4356)  ; FMad(a,b,c)
  %4358 = fsub fast float %4357, %4321
  %4359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.f32 %4359, 2
  %4361 = fsub fast float %4358, %4360
  %4362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = fadd fast float %4367, %4363
  %4371 = fmul fast float %4370, 0x3F847AE140000000
  %4372 = fadd fast float %4368, %4364
  %4373 = fmul fast float %4372, 0x3F847AE140000000
  %4374 = fadd fast float %4369, %4365
  %4375 = fmul fast float %4374, 0x3F847AE140000000
  br label %4650

; <label>:4376                                    ; preds = %4236
  %4377 = and i32 %196, 1
  %4378 = icmp eq i32 %4377, 0
  br i1 %4378, label %4650, label %4379

; <label>:4379                                    ; preds = %4376
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4388 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4390 = extractvalue %dx.types.CBufRet.f32 %4382, 3
  %4391 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4392 = fadd fast float %4389, %4295
  %4393 = fadd fast float %4390, %4296
  %4394 = fadd fast float %4391, %4297
  %4395 = fmul fast float %4392, %4381
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4383, float %4395)  ; FMad(a,b,c)
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4385, float %4396)  ; FMad(a,b,c)
  %4398 = fmul fast float %4392, %4386
  %4399 = call float @dx.op.tertiary.f32(i32 46, float %4393, float %4387, float %4398)  ; FMad(a,b,c)
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4388, float %4399)  ; FMad(a,b,c)
  %4401 = fsub fast float %4397, %4389
  %4402 = fsub fast float %4400, %4390
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.i32 %4410, 1
  %4413 = udiv i32 %4412, %4411
  %4414 = fsub fast float %4401, %4404
  %4415 = fsub fast float %4402, %4405
  %4416 = call float @dx.op.binary.f32(i32 35, float %4414, float 0.000000e+00)  ; FMax(a,b)
  %4417 = call float @dx.op.binary.f32(i32 35, float %4415, float 0.000000e+00)  ; FMax(a,b)
  %4418 = call float @dx.op.binary.f32(i32 36, float %4416, float %4406)  ; FMin(a,b)
  %4419 = call float @dx.op.binary.f32(i32 36, float %4417, float %4407)  ; FMin(a,b)
  %4420 = add i32 %4411, -1
  %4421 = add i32 %4413, -1
  %4422 = fmul fast float %4418, %4409
  %4423 = fmul fast float %4419, %4409
  %4424 = fptoui float %4422 to i32
  %4425 = fptoui float %4423 to i32
  %4426 = call i32 @dx.op.binary.i32(i32 40, i32 %4424, i32 %4420)  ; UMin(a,b)
  %4427 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 %4421)  ; UMin(a,b)
  %4428 = mul i32 %4427, %4411
  %4429 = add i32 %4428, %4426
  %4430 = shl i32 %4429, 2
  %4431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.i32 %4431, 0
  %4433 = icmp eq i32 %4432, -1
  br i1 %4433, label %4650, label %4434

; <label>:4434                                    ; preds = %4379
  %4435 = mul i32 %4432, 148
  %4436 = add i32 %4435, 4
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = add i32 %4435, 8
  %4440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = add i32 %4435, 36
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = add i32 %4435, 60
  %4446 = add i32 %4435, 92
  %4447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4446, i32 undef)  ; BufferLoad(srv,index,wot)
  %4448 = extractvalue %dx.types.ResRet.i32 %4447, 0
  %4449 = add i32 %4435, 116
  %4450 = fsub fast float %4401, %4438
  %4451 = fsub fast float %4402, %4441
  %4452 = fmul fast float %4409, %4450
  %4453 = fmul fast float %4409, %4451
  %4454 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4456 = fsub fast float 1.000000e+00, %4455
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4459 = call float @dx.op.unary.f32(i32 83, float %4454)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %4456)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 84, float %4454)  ; DerivCoarseY(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %4456)  ; DerivCoarseY(value)
  %4463 = fmul fast float %4459, %4458
  %4464 = fmul fast float %4460, %4458
  %4465 = fmul fast float %4461, %4458
  %4466 = fmul fast float %4462, %4458
  %4467 = call float @dx.op.dot2.f32(i32 54, float %4465, float %4466, float %4465, float %4466)  ; Dot2(ax,ay,bx,by)
  %4468 = call float @dx.op.dot2.f32(i32 54, float %4463, float %4464, float %4463, float %4464)  ; Dot2(ax,ay,bx,by)
  %4469 = call float @dx.op.binary.f32(i32 35, float %4468, float %4467)  ; FMax(a,b)
  %4470 = call float @dx.op.unary.f32(i32 23, float %4469)  ; Log(value)
  %4471 = fmul fast float %4470, 5.000000e-01
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4474 = fadd fast float %4473, %4471
  %4475 = call float @dx.op.binary.f32(i32 35, float %4474, float 0.000000e+00)  ; FMax(a,b)
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4478 = fadd fast float %4477, %4475
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4481 = fadd fast float %4478, %4480
  %4482 = add i32 %4448, 0
  %4483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4482, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4484 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4483, i32 0)  ; GetDimensions(handle,mipLevel)
  %4485 = extractvalue %dx.types.Dimensions %4484, 0
  %4486 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4485)  ; FirstbitLo(value)
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 1
  %4489 = sub nsw i32 %4488, %4486
  %4490 = sitofp i32 %4489 to float
  %4491 = fsub fast float %4481, %4490
  %4492 = call float @dx.op.binary.f32(i32 35, float %4491, float 0.000000e+00)  ; FMax(a,b)
  %4493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4483, %dx.types.Handle %46, float %4454, float %4456, float %4444, float undef, i32 0, i32 0, i32 undef, float %4492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = fcmp ule float %4494, 0x3FE0101020000000
  %4496 = extractvalue %dx.types.CBufRet.i32 %4487, 0
  %4497 = and i32 %4496, 128
  %4498 = icmp ne i32 %4497, 0
  %4499 = and i1 %4495, %4498
  br i1 %4499, label %4650, label %4500

; <label>:4500                                    ; preds = %4434
  %4501 = add i32 %4435, 20
  %4502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = add i32 %4435, 24
  %4505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.f32 %4505, 0
  %4507 = add i32 %4435, 40
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4435, 96
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4515 = fmul fast float %4514, %4454
  %4516 = fmul fast float %4514, %4456
  %4517 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4518 = fadd fast float %4515, %4517
  %4519 = fadd fast float %4516, %4517
  %4520 = add i32 %4512, 0
  %4521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4520, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4522 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4521, i32 0)  ; GetDimensions(handle,mipLevel)
  %4523 = extractvalue %dx.types.Dimensions %4522, 0
  %4524 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4523)  ; FirstbitLo(value)
  %4525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.i32 %4525, 1
  %4527 = sub nsw i32 %4526, %4524
  %4528 = sitofp i32 %4527 to float
  %4529 = fsub fast float %4478, %4528
  %4530 = call float @dx.op.binary.f32(i32 35, float %4529, float 0.000000e+00)  ; FMax(a,b)
  %4531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4521, %dx.types.Handle %46, float %4518, float %4519, float %4509, float undef, i32 0, i32 0, i32 undef, float %4530)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4532 = extractvalue %dx.types.ResRet.f32 %4531, 0
  %4533 = fmul fast float %4532, %4503
  %4534 = fadd fast float %4533, %4506
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4543 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4544 = fadd fast float %4540, %4401
  %4545 = fadd fast float %4542, %4402
  %4546 = fadd fast float %4534, %4543
  %4547 = fmul fast float %4544, %4536
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4537, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4538, float %4548)  ; FMad(a,b,c)
  %4550 = fsub fast float %4549, %4543
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4553 = fsub fast float %4550, %4552
  %4554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.i32 %4554, 0
  %4556 = call i32 @dx.op.binary.i32(i32 40, i32 %4432, i32 %4555)  ; UMin(a,b)
  %4557 = mul i32 %4556, 36
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = add i32 %4557, 4
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = fmul fast float %4562, %4454
  %4564 = fmul fast float %4562, %4456
  %4565 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4566 = fadd fast float %4563, %4565
  %4567 = fadd fast float %4564, %4565
  %4568 = icmp eq i32 %4559, 0
  br i1 %4568, label %4637, label %4569

; <label>:4569                                    ; preds = %4500
  br label %4570

; <label>:4570                                    ; preds = %4627, %4569
  %4571 = phi float [ %4628, %4627 ], [ 0.000000e+00, %4569 ]
  %4572 = phi float [ %4629, %4627 ], [ 0.000000e+00, %4569 ]
  %4573 = phi float [ %4630, %4627 ], [ 0.000000e+00, %4569 ]
  %4574 = phi float [ %4631, %4627 ], [ 0.000000e+00, %4569 ]
  %4575 = phi float [ %4632, %4627 ], [ 0.000000e+00, %4569 ]
  %4576 = phi float [ %4633, %4627 ], [ 0.000000e+00, %4569 ]
  %4577 = phi i32 [ %4634, %4627 ], [ 0, %4569 ]
  %4578 = shl i32 %4577, 2
  %4579 = add i32 %4445, %4578
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = add i32 %4449, %4578
  %4583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.i32 %4583, 0
  %4585 = add i32 %4584, 0
  %4586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4585, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4587 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4586, i32 0)  ; GetDimensions(handle,mipLevel)
  %4588 = extractvalue %dx.types.Dimensions %4587, 0
  %4589 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4588)  ; FirstbitLo(value)
  %4590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.i32 %4590, 1
  %4592 = sub nsw i32 %4591, %4589
  %4593 = sitofp i32 %4592 to float
  %4594 = fsub fast float %4478, %4593
  %4595 = call float @dx.op.binary.f32(i32 35, float %4594, float 0.000000e+00)  ; FMax(a,b)
  %4596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4586, %dx.types.Handle %46, float %4566, float %4567, float %4581, float undef, i32 0, i32 0, i32 undef, float %4595)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = fcmp fast ogt float %4597, 0.000000e+00
  br i1 %4598, label %4599, label %4627

; <label>:4599                                    ; preds = %4570
  %4600 = add i32 %4560, %4578
  %4601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.i32 %4601, 0
  %4603 = and i32 %4602, 32767
  %4604 = mul nuw nsw i32 %4603, 928
  %4605 = add nuw nsw i32 %4604, 48
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = add nuw nsw i32 %4604, 60
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = fmul fast float %4607, %4597
  %4616 = fmul fast float %4608, %4597
  %4617 = fmul fast float %4609, %4597
  %4618 = fadd fast float %4615, %4571
  %4619 = fadd fast float %4616, %4572
  %4620 = fadd fast float %4617, %4573
  %4621 = fmul fast float %4612, %4597
  %4622 = fmul fast float %4613, %4597
  %4623 = fmul fast float %4614, %4597
  %4624 = fadd fast float %4621, %4574
  %4625 = fadd fast float %4622, %4575
  %4626 = fadd fast float %4623, %4576
  br label %4627

; <label>:4627                                    ; preds = %4599, %4570
  %4628 = phi float [ %4618, %4599 ], [ %4571, %4570 ]
  %4629 = phi float [ %4619, %4599 ], [ %4572, %4570 ]
  %4630 = phi float [ %4620, %4599 ], [ %4573, %4570 ]
  %4631 = phi float [ %4624, %4599 ], [ %4574, %4570 ]
  %4632 = phi float [ %4625, %4599 ], [ %4575, %4570 ]
  %4633 = phi float [ %4626, %4599 ], [ %4576, %4570 ]
  %4634 = add nuw i32 %4577, 1
  %4635 = icmp eq i32 %4634, %4559
  br i1 %4635, label %4636, label %4570

; <label>:4636                                    ; preds = %4627
  br label %4637

; <label>:4637                                    ; preds = %4636, %4500
  %4638 = phi float [ 0.000000e+00, %4500 ], [ %4628, %4636 ]
  %4639 = phi float [ 0.000000e+00, %4500 ], [ %4629, %4636 ]
  %4640 = phi float [ 0.000000e+00, %4500 ], [ %4630, %4636 ]
  %4641 = phi float [ 0.000000e+00, %4500 ], [ %4631, %4636 ]
  %4642 = phi float [ 0.000000e+00, %4500 ], [ %4632, %4636 ]
  %4643 = phi float [ 0.000000e+00, %4500 ], [ %4633, %4636 ]
  %4644 = fadd fast float %4641, %4638
  %4645 = fmul fast float %4644, 0x3F847AE140000000
  %4646 = fadd fast float %4642, %4639
  %4647 = fmul fast float %4646, 0x3F847AE140000000
  %4648 = fadd fast float %4643, %4640
  %4649 = fmul fast float %4648, 0x3F847AE140000000
  br label %4650

; <label>:4650                                    ; preds = %4637, %4434, %4379, %4376, %4347, %4309
  %4651 = phi float [ %4361, %4347 ], [ -1.310720e+05, %4309 ], [ %4553, %4637 ], [ -1.310720e+05, %4379 ], [ -1.310720e+05, %4434 ], [ -1.310720e+05, %4376 ]
  %4652 = phi float [ %4371, %4347 ], [ 0.000000e+00, %4309 ], [ %4645, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4653 = phi float [ %4373, %4347 ], [ 0.000000e+00, %4309 ], [ %4647, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4654 = phi float [ %4375, %4347 ], [ 0.000000e+00, %4309 ], [ %4649, %4637 ], [ 0.000000e+00, %4379 ], [ 0.000000e+00, %4434 ], [ 0.000000e+00, %4376 ]
  %4655 = phi i1 [ true, %4347 ], [ false, %4309 ], [ true, %4637 ], [ false, %4379 ], [ false, %4434 ], [ false, %4376 ]
  %4656 = and i32 %196, 3
  %4657 = icmp eq i32 %4656, 1
  %4658 = select i1 %4657, float 1.000000e+00, float 0.000000e+00
  %4659 = fsub fast float %4651, %160
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = select i1 %4655, float %4660, float 1.000000e+00
  %4662 = fmul fast float %4661, %4658
  %4663 = icmp eq i32 %4656, 3
  %4664 = select i1 %4663, float 1.000000e+00, float %4662
  %4665 = call float @dx.op.binary.f32(i32 35, float %4252, float %4664)  ; FMax(a,b)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = fcmp fast une float %4666, 0.000000e+00
  %4668 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 25, float %4668)  ; Rsqrt(value)
  br i1 %4667, label %4677, label %4670

; <label>:4670                                    ; preds = %4650
  %4671 = fmul fast float %4669, %158
  %4672 = fmul fast float %4669, %159
  %4673 = fmul fast float %4669, %160
  %4674 = fsub fast float -0.000000e+00, %4671
  %4675 = fsub fast float -0.000000e+00, %4672
  %4676 = fsub fast float -0.000000e+00, %4673
  br label %4845

; <label>:4677                                    ; preds = %4650
  %4678 = fmul fast float %158, %4669
  %4679 = fsub fast float -0.000000e+00, %4678
  %4680 = fmul fast float %159, %4669
  %4681 = fsub fast float -0.000000e+00, %4680
  %4682 = fmul fast float %160, %4669
  %4683 = fsub fast float -0.000000e+00, %4682
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4681, float %4683, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = fmul fast float %4666, 2.500000e+00
  %4686 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4687 = fmul fast float %4666, 0x4013FFFFE0000000
  %4688 = fadd fast float %4687, 0xBFFFFFFFE0000000
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4666, 0x4004000020000000
  %4691 = fadd fast float %4690, 0xBFF8000040000000
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4694 = fmul fast float %4255, 1.000000e+01
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = fmul fast float %4695, 2.000000e+00
  %4697 = fsub fast float 3.000000e+00, %4696
  %4698 = fmul fast float %4695, %4695
  %4699 = fmul fast float %4698, %4697
  %4700 = fsub fast float 1.000000e+00, %4699
  %4701 = fsub fast float 0x3FE3333340000000, %4276
  %4702 = fmul fast float %4701, 0x400AAAAAA0000000
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = fmul fast float %4700, %4703
  %4705 = fmul fast float %4288, 0x3FEA2B8620000000
  %4706 = fmul fast float %4289, 0x3FEA2B8620000000
  %4707 = fmul fast float %4290, 0x3FEA2B8620000000
  %4708 = fadd fast float %4705, 0x3FC81DFBA0000000
  %4709 = fmul fast float %4708, %4288
  %4710 = fadd fast float %4709, 0x3F910E6020000000
  %4711 = fadd fast float %4706, 0x3FC81DFBA0000000
  %4712 = fmul fast float %4711, %4289
  %4713 = fadd fast float %4712, 0x3F910E6020000000
  %4714 = fadd fast float %4707, 0x3FC81DFBA0000000
  %4715 = fmul fast float %4714, %4290
  %4716 = fadd fast float %4715, 0x3F910E6020000000
  %4717 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = fsub fast float %4717, %4288
  %4721 = fsub fast float %4718, %4289
  %4722 = fsub fast float %4719, %4290
  %4723 = fmul fast float %4720, %4693
  %4724 = fmul fast float %4723, %4704
  %4725 = fmul fast float %4721, %4693
  %4726 = fmul fast float %4725, %4704
  %4727 = fmul fast float %4722, %4693
  %4728 = fmul fast float %4727, %4704
  %4729 = fadd fast float %4724, %4288
  %4730 = fadd fast float %4726, %4289
  %4731 = fadd fast float %4728, %4290
  %4732 = fmul fast float %4249, %4249
  %4733 = fmul fast float %4732, %4732
  %4734 = fadd fast float %4689, 1.000000e+00
  %4735 = fsub fast float %4734, %4704
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fsub fast float 1.000000e+00, %4733
  %4740 = call float @dx.op.binary.f32(i32 36, float %4736, float %4739)  ; FMin(a,b)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4742 = call float @dx.op.binary.f32(i32 35, float %4740, float %4741)  ; FMax(a,b)
  %4743 = fadd fast float %4738, 0xBFE4CCCCC0000000
  %4744 = fmul fast float %4743, 0x4006DB6DA0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 2.000000e+00
  %4747 = fsub fast float 3.000000e+00, %4746
  %4748 = bitcast float %4273 to i32
  %4749 = ashr i32 %4748, 1
  %4750 = add nsw i32 %4749, 532487669
  %4751 = bitcast i32 %4750 to float
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4755, 2.000000e+00
  %4757 = bitcast float %4274 to i32
  %4758 = ashr i32 %4757, 1
  %4759 = add nsw i32 %4758, 532487669
  %4760 = bitcast i32 %4759 to float
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = bitcast float %4761 to i32
  %4763 = sub nsw i32 2129859010, %4762
  %4764 = bitcast i32 %4763 to float
  %4765 = fmul fast float %4764, 2.000000e+00
  %4766 = bitcast float %4275 to i32
  %4767 = ashr i32 %4766, 1
  %4768 = add nsw i32 %4767, 532487669
  %4769 = bitcast i32 %4768 to float
  %4770 = fsub fast float 1.000000e+00, %4769
  %4771 = bitcast float %4770 to i32
  %4772 = sub nsw i32 2129859010, %4771
  %4773 = bitcast i32 %4772 to float
  %4774 = fmul fast float %4773, 2.000000e+00
  %4775 = fsub fast float 0x4002A9FBE0000000, %4756
  %4776 = fadd fast float %4756, 0x3FD54FDF00000000
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = fmul fast float %4779, %4775
  %4781 = fmul fast float %4780, %4780
  %4782 = fsub fast float 0x4002A9FBE0000000, %4765
  %4783 = fadd fast float %4765, 0x3FD54FDF00000000
  %4784 = bitcast float %4783 to i32
  %4785 = sub nsw i32 2129859010, %4784
  %4786 = bitcast i32 %4785 to float
  %4787 = fmul fast float %4786, %4782
  %4788 = fmul fast float %4787, %4787
  %4789 = fsub fast float 0x4002A9FBE0000000, %4774
  %4790 = fadd fast float %4774, 0x3FD54FDF00000000
  %4791 = bitcast float %4790 to i32
  %4792 = sub nsw i32 2129859010, %4791
  %4793 = bitcast i32 %4792 to float
  %4794 = fmul fast float %4793, %4789
  %4795 = fmul fast float %4794, %4794
  %4796 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4781)  ; FMax(a,b)
  %4797 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4788)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4795)  ; FMax(a,b)
  %4799 = fsub fast float 1.000000e+00, %4684
  %4800 = fadd fast float %4799, %4700
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fsub fast float 1.000000e+00, %4664
  %4803 = fmul fast float %4742, %4802
  %4804 = fmul fast float %4745, %4745
  %4805 = fmul fast float %4804, %4803
  %4806 = fmul fast float %4805, %4747
  %4807 = fmul fast float %4802, 0xBFE99999A0000000
  %4808 = fmul fast float %4807, %4693
  %4809 = fmul fast float %4808, %4704
  %4810 = fadd fast float %4809, 1.000000e+00
  %4811 = fadd fast float %4276, -1.000000e+00
  %4812 = fmul fast float %4810, %4811
  %4813 = fadd fast float %4812, 1.000000e+00
  %4814 = fsub fast float %4796, %4273
  %4815 = fsub fast float %4797, %4274
  %4816 = fsub fast float %4798, %4275
  %4817 = fmul fast float %4806, %4814
  %4818 = fmul fast float %4806, %4815
  %4819 = fmul fast float %4806, %4816
  %4820 = fadd fast float %4817, %4273
  %4821 = fadd fast float %4818, %4274
  %4822 = fadd fast float %4819, %4275
  %4823 = fsub fast float %102, %4237
  %4824 = fsub fast float %103, %4238
  %4825 = fsub fast float %104, %4239
  %4826 = fmul fast float %4806, %4823
  %4827 = fmul fast float %4806, %4824
  %4828 = fmul fast float %4806, %4825
  %4829 = fadd fast float %4826, %4237
  %4830 = fadd fast float %4827, %4238
  %4831 = fadd fast float %4828, %4239
  %4832 = fmul fast float %4806, %4801
  %4833 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = fmul fast float %4832, %4834
  %4836 = fadd fast float %4835, %4833
  %4837 = fsub fast float 1.000000e+00, %4249
  %4838 = fmul fast float %4806, %4837
  %4839 = fadd fast float %4838, %4249
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4830, float %4831, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 25, float %4840)  ; Rsqrt(value)
  %4842 = fmul fast float %4829, %4841
  %4843 = fmul fast float %4830, %4841
  %4844 = fmul fast float %4831, %4841
  br label %4845

; <label>:4845                                    ; preds = %4677, %4670
  %4846 = phi float [ %4676, %4670 ], [ %4683, %4677 ]
  %4847 = phi float [ %4675, %4670 ], [ %4681, %4677 ]
  %4848 = phi float [ %4674, %4670 ], [ %4679, %4677 ]
  %4849 = phi float [ %4673, %4670 ], [ %4682, %4677 ]
  %4850 = phi float [ %4672, %4670 ], [ %4680, %4677 ]
  %4851 = phi float [ %4671, %4670 ], [ %4678, %4677 ]
  %4852 = phi float [ %4288, %4670 ], [ %4729, %4677 ]
  %4853 = phi float [ %4289, %4670 ], [ %4730, %4677 ]
  %4854 = phi float [ %4290, %4670 ], [ %4731, %4677 ]
  %4855 = phi float [ %4273, %4670 ], [ %4820, %4677 ]
  %4856 = phi float [ %4274, %4670 ], [ %4821, %4677 ]
  %4857 = phi float [ %4275, %4670 ], [ %4822, %4677 ]
  %4858 = phi float [ %4237, %4670 ], [ %4842, %4677 ]
  %4859 = phi float [ %4238, %4670 ], [ %4843, %4677 ]
  %4860 = phi float [ %4239, %4670 ], [ %4844, %4677 ]
  %4861 = phi float [ %4276, %4670 ], [ %4836, %4677 ]
  %4862 = phi float [ %4249, %4670 ], [ %4839, %4677 ]
  %4863 = fsub fast float -0.000000e+00, %160
  %4864 = select i1 %220, float 0.000000e+00, float %4857
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %4848, float %4847, float %4846)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4850, float %4849, float %4858, float %4859, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = fmul fast float %4867, 2.000000e+00
  %4869 = fmul fast float %4868, %4858
  %4870 = fmul fast float %4868, %4859
  %4871 = fmul fast float %4868, %4860
  %4872 = fsub fast float %4851, %4869
  %4873 = fsub fast float %4850, %4870
  %4874 = fsub fast float %4849, %4871
  %4875 = call float @dx.op.binary.f32(i32 36, float %4862, float 1.000000e+00)  ; FMin(a,b)
  %4876 = fsub fast float 1.000000e+00, %4862
  %4877 = bitcast float %4876 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fsub fast float 1.000000e+00, %66
  %4881 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = call float @dx.op.binary.f32(i32 35, float %4881, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4883 = fdiv fast float %4880, %4882
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 5.000000e-01
  %4887 = fadd fast float %4886, 5.000000e-01
  %4888 = fmul fast float %4887, %66
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, %4883
  %4892 = fadd fast float %4888, %4891
  %4893 = fsub fast float 5.000000e-01, %4886
  %4894 = fmul fast float %4893, %4852
  %4895 = fmul fast float %4893, %4853
  %4896 = fmul fast float %4893, %4854
  %4897 = fadd fast float %4892, %4894
  %4898 = fadd fast float %4892, %4895
  %4899 = fadd fast float %4892, %4896
  %4900 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fmul fast float %4901, 5.000000e-01
  %4903 = fadd fast float %4902, 5.000000e-01
  %4904 = fmul fast float %4903, %66
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4906, %4883
  %4908 = fadd fast float %4904, %4907
  %4909 = fsub fast float 5.000000e-01, %4902
  %4910 = fmul fast float %4909, %4852
  %4911 = fmul fast float %4909, %4853
  %4912 = fmul fast float %4909, %4854
  %4913 = fadd fast float %4908, %4910
  %4914 = fadd fast float %4908, %4911
  %4915 = fadd fast float %4908, %4912
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = call float @dx.op.binary.f32(i32 36, float %4852, float %4917)  ; FMin(a,b)
  %4919 = fsub fast float 1.000000e+00, %4875
  %4920 = fmul fast float %4918, %4919
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = bitcast float %4921 to i32
  %4923 = sub nsw i32 2129859010, %4922
  %4924 = bitcast i32 %4923 to float
  %4925 = call float @dx.op.binary.f32(i32 36, float %4853, float %4917)  ; FMin(a,b)
  %4926 = fmul fast float %4925, %4919
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = bitcast float %4927 to i32
  %4929 = sub nsw i32 2129859010, %4928
  %4930 = bitcast i32 %4929 to float
  %4931 = call float @dx.op.binary.f32(i32 36, float %4854, float %4917)  ; FMin(a,b)
  %4932 = fmul fast float %4931, %4919
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = fmul fast float %4875, %67
  %4938 = fmul fast float %4937, %4897
  %4939 = fmul fast float %4938, %4924
  %4940 = fmul fast float %4875, %68
  %4941 = fmul fast float %4940, %4898
  %4942 = fmul fast float %4941, %4930
  %4943 = fmul fast float %4875, %69
  %4944 = fmul fast float %4943, %4899
  %4945 = fmul fast float %4944, %4936
  %4946 = call float @dx.op.binary.f32(i32 36, float %4855, float %4917)  ; FMin(a,b)
  %4947 = fmul fast float %4946, %4919
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = call float @dx.op.binary.f32(i32 36, float %4856, float %4917)  ; FMin(a,b)
  %4953 = fmul fast float %4952, %4919
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = call float @dx.op.binary.f32(i32 36, float %4864, float %4917)  ; FMin(a,b)
  %4959 = fmul fast float %4958, %4919
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4937, %4913
  %4965 = fmul fast float %4964, %4951
  %4966 = fmul fast float %4940, %4914
  %4967 = fmul fast float %4966, %4957
  %4968 = fmul fast float %4943, %4915
  %4969 = fmul fast float %4968, %4963
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4942, float %4945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = select i1 %220, float 0.000000e+00, float %4939
  %4972 = select i1 %220, float %4970, float %4942
  %4973 = select i1 %220, float 0.000000e+00, float %4945
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4965, float %4967, float %4969, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = select i1 %220, float 0.000000e+00, float %4965
  %4976 = select i1 %220, float %4974, float %4967
  %4977 = select i1 %220, float 0.000000e+00, float %4969
  %4978 = fmul fast float %4866, 9.843750e-01
  %4979 = fmul fast float %4861, 9.843750e-01
  %4980 = fadd fast float %4978, 7.812500e-03
  %4981 = fadd fast float %4979, 7.812500e-03
  %4982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %4980, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4983 = extractvalue %dx.types.ResRet.f32 %4982, 2
  %4984 = extractvalue %dx.types.ResRet.f32 %4982, 3
  %4985 = fmul fast float %4983, %4855
  %4986 = fmul fast float %4983, %4856
  %4987 = fmul fast float %4983, %4864
  %4988 = fadd fast float %4985, %4984
  %4989 = fadd fast float %4986, %4984
  %4990 = fadd fast float %4987, %4984
  %4991 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %4991, label %4992, label %5018

; <label>:4992                                    ; preds = %4845
  %4993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4250, float %4866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.ResRet.f32 %4993, 1
  %4996 = extractvalue %dx.types.ResRet.f32 %4993, 2
  %4997 = fadd fast float %4994, -5.000000e-01
  %4998 = fadd fast float %4995, -5.000000e-01
  %4999 = fadd fast float %4996, -5.000000e-01
  %5000 = fsub fast float 1.000000e+00, %4855
  %5001 = fsub fast float 1.000000e+00, %4856
  %5002 = fsub fast float 1.000000e+00, %4864
  %5003 = fmul fast float %4855, 4.000000e+00
  %5004 = fmul fast float %5003, %5000
  %5005 = fmul fast float %5004, %4997
  %5006 = fmul fast float %4856, 4.000000e+00
  %5007 = fmul fast float %5006, %5001
  %5008 = fmul fast float %5007, %4998
  %5009 = fmul fast float %4864, 4.000000e+00
  %5010 = fmul fast float %5009, %5002
  %5011 = fmul fast float %5010, %4999
  %5012 = fadd fast float %5005, %4988
  %5013 = fadd fast float %5008, %4989
  %5014 = fadd fast float %5011, %4990
  %5015 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5016 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  br label %5018

; <label>:5018                                    ; preds = %4992, %4845
  %5019 = phi float [ %5015, %4992 ], [ %4988, %4845 ]
  %5020 = phi float [ %5016, %4992 ], [ %4989, %4845 ]
  %5021 = phi float [ %5017, %4992 ], [ %4990, %4845 ]
  %5022 = call float @dx.op.binary.f32(i32 35, float %5020, float %5021)  ; FMax(a,b)
  %5023 = call float @dx.op.binary.f32(i32 35, float %5019, float %5022)  ; FMax(a,b)
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = fmul fast float %5024, %4971
  %5026 = fmul fast float %5024, %4972
  %5027 = fmul fast float %5024, %4973
  %5028 = call float @dx.op.dot3.f32(i32 55, float %4852, float %4853, float %4854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = fcmp fast ogt float %5028, 0x3E7FF19E20000000
  %5030 = fdiv fast float 1.000000e+00, %5028
  %5031 = select i1 %5029, float %5030, float 0.000000e+00
  %5032 = fmul fast float %5031, %4852
  %5033 = fmul fast float %5031, %4853
  %5034 = fmul fast float %5031, %4854
  %5035 = fadd fast float %5032, -1.000000e+00
  %5036 = fadd fast float %5033, -1.000000e+00
  %5037 = fadd fast float %5034, -1.000000e+00
  %5038 = fmul fast float %5035, 5.000000e-01
  %5039 = fmul fast float %5036, 5.000000e-01
  %5040 = fmul fast float %5037, 5.000000e-01
  %5041 = fadd fast float %5038, 1.000000e+00
  %5042 = fadd fast float %5039, 1.000000e+00
  %5043 = fadd fast float %5040, 1.000000e+00
  %5044 = fmul fast float %5019, %4975
  %5045 = fmul fast float %5020, %4976
  %5046 = fmul fast float %5021, %4977
  %5047 = fsub fast float 1.000000e+00, %4866
  %5048 = bitcast float %5047 to i32
  %5049 = sitofp i32 %5048 to float
  %5050 = fmul fast float %5049, 5.000000e+00
  %5051 = fadd fast float %5050, 0xC1EFBF8940000000
  %5052 = fptosi float %5051 to i32
  %5053 = bitcast i32 %5052 to float
  %5054 = fmul fast float %5053, %4251
  %5055 = fmul fast float %4971, %5054
  %5056 = fmul fast float %5055, %5024
  %5057 = fmul fast float %5056, %5041
  %5058 = fmul fast float %4972, %5054
  %5059 = fmul fast float %5058, %5024
  %5060 = fmul fast float %5059, %5042
  %5061 = fmul fast float %4973, %5054
  %5062 = fmul fast float %5061, %5024
  %5063 = fmul fast float %5062, %5043
  %5064 = fmul fast float %5025, %4247
  %5065 = fmul fast float %5026, %4247
  %5066 = fmul fast float %5027, %4247
  %5067 = fadd fast float %5044, %4243
  %5068 = fadd fast float %5067, %5057
  %5069 = fmul fast float %5068, %4247
  %5070 = fadd fast float %5045, %4244
  %5071 = fadd fast float %5070, %5060
  %5072 = fmul fast float %5071, %4247
  %5073 = fadd fast float %5046, %4245
  %5074 = fadd fast float %5073, %5063
  %5075 = fmul fast float %5074, %4247
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5078 = fcmp fast oeq float %5077, 0.000000e+00
  br i1 %5078, label %6148, label %5079

; <label>:5079                                    ; preds = %5018
  %5080 = extractvalue %dx.types.CBufRet.f32 %5076, 0
  %5081 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5082 = extractvalue %dx.types.CBufRet.f32 %5076, 2
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.CBufRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5090 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = select i1 %220, float %5088, float %5084
  %5092 = select i1 %220, float %5090, float %5085
  %5093 = select i1 %220, float %5089, float %5086
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5096 = fmul fast float %5095, %102
  %5097 = fmul fast float %5095, %103
  %5098 = fmul fast float %5095, %104
  %5099 = fadd fast float %5096, %158
  %5100 = fadd fast float %5097, %159
  %5101 = fadd fast float %5098, %160
  %5102 = fcmp fast olt float %5077, 0.000000e+00
  br i1 %5102, label %5727, label %5103

; <label>:5103                                    ; preds = %5079
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5108 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.CBufRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.CBufRet.f32 %5109, 2
  %5113 = extractvalue %dx.types.CBufRet.f32 %5109, 3
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5118 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5119 = fmul fast float %5105, %5099
  %5120 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5106, float %5119)  ; FMad(a,b,c)
  %5121 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5107, float %5120)  ; FMad(a,b,c)
  %5122 = fadd fast float %5121, %5108
  %5123 = fmul fast float %5110, %5099
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5111, float %5123)  ; FMad(a,b,c)
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5112, float %5124)  ; FMad(a,b,c)
  %5126 = fadd fast float %5125, %5113
  %5127 = fmul fast float %5115, %5099
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5116, float %5127)  ; FMad(a,b,c)
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5117, float %5128)  ; FMad(a,b,c)
  %5130 = fadd fast float %5129, %5118
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5135 = fmul fast float %5134, %5122
  %5136 = fmul fast float %5134, %5126
  %5137 = fadd fast float %5135, %5132
  %5138 = fadd fast float %5136, %5133
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5143 = fmul fast float %5142, %5122
  %5144 = fmul fast float %5142, %5126
  %5145 = fadd fast float %5143, %5140
  %5146 = fadd fast float %5144, %5141
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5149 = fsub fast float %5148, %5130
  %5150 = extractvalue %dx.types.CBufRet.f32 %5147, 2
  %5151 = fmul fast float %5149, %5150
  %5152 = fsub fast float 1.000000e+00, %5151
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5157 = fadd fast float %5156, %5154
  %5158 = fcmp fast ogt float %5157, 0.000000e+00
  br i1 %5158, label %5159, label %5183

; <label>:5159                                    ; preds = %5103
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = fsub fast float %5145, %5161
  %5164 = fsub fast float %5146, %5162
  %5165 = fcmp fast olt float %5163, 0.000000e+00
  %5166 = fcmp fast olt float %5164, 0.000000e+00
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5171 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5172 = select i1 %5165, float %5168, float %5170
  %5173 = select i1 %5166, float %5169, float %5171
  %5174 = fmul fast float %5172, %5163
  %5175 = fmul fast float %5173, %5164
  %5176 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5177 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5179 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5180 = fsub fast float %5178, %5179
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5153
  br label %5183

; <label>:5183                                    ; preds = %5159, %5103
  %5184 = phi float [ %5182, %5159 ], [ 0.000000e+00, %5103 ]
  %5185 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5186 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5187 = fadd fast float %5186, %5185
  %5188 = fcmp fast ogt float %5187, 0.000000e+00
  %5189 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  br i1 %5188, label %5190, label %5213

; <label>:5190                                    ; preds = %5183
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.CBufRet.f32 %5191, 1
  %5194 = fsub fast float %5137, %5192
  %5195 = fsub fast float %5138, %5193
  %5196 = fcmp fast olt float %5194, 0.000000e+00
  %5197 = fcmp fast olt float %5195, 0.000000e+00
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5202 = extractvalue %dx.types.CBufRet.f32 %5198, 3
  %5203 = select i1 %5196, float %5199, float %5201
  %5204 = select i1 %5197, float %5200, float %5202
  %5205 = fmul fast float %5203, %5194
  %5206 = fmul fast float %5204, %5195
  %5207 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5208 = call float @dx.op.unary.f32(i32 6, float %5206)  ; FAbs(value)
  %5209 = call float @dx.op.binary.f32(i32 35, float %5207, float %5208)  ; FMax(a,b)
  %5210 = fsub fast float %5189, %5209
  %5211 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5212 = fmul fast float %5211, %5153
  br label %5213

; <label>:5213                                    ; preds = %5190, %5183
  %5214 = phi float [ %5212, %5190 ], [ 0.000000e+00, %5183 ]
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.CBufRet.f32 %5218, 1
  %5221 = fsub fast float %5122, %5219
  %5222 = fsub fast float %5126, %5220
  %5223 = fcmp fast olt float %5221, 0.000000e+00
  %5224 = fcmp fast olt float %5222, 0.000000e+00
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.CBufRet.f32 %5225, 2
  %5229 = extractvalue %dx.types.CBufRet.f32 %5225, 3
  %5230 = select i1 %5223, float %5226, float %5228
  %5231 = select i1 %5224, float %5227, float %5229
  %5232 = fmul fast float %5230, %5221
  %5233 = fmul fast float %5231, %5222
  %5234 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5235 = call float @dx.op.unary.f32(i32 6, float %5233)  ; FAbs(value)
  %5236 = call float @dx.op.binary.f32(i32 35, float %5234, float %5235)  ; FMax(a,b)
  %5237 = fsub fast float %5189, %5236
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = call float @dx.op.binary.f32(i32 36, float %5238, float %5217)  ; FMin(a,b)
  %5240 = fmul fast float %5239, %5153
  %5241 = fsub fast float %5214, %5240
  %5242 = fsub fast float %5184, %5214
  %5243 = fsub fast float %5242, %5240
  %5244 = call float @dx.op.binary.f32(i32 35, float %5214, float %5184)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5240, float %5244)  ; FMax(a,b)
  %5246 = fcmp fast olt float %5245, 1.000000e+00
  br i1 %5246, label %5247, label %5645, !dx.controlflow.hints !93

; <label>:5247                                    ; preds = %5213
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = fcmp fast une float %5249, 0.000000e+00
  br i1 %5250, label %5251, label %5645, !dx.controlflow.hints !94

; <label>:5251                                    ; preds = %5247
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5267 = fmul fast float %5253, %5099
  %5268 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5254, float %5267)  ; FMad(a,b,c)
  %5269 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5255, float %5268)  ; FMad(a,b,c)
  %5270 = fadd fast float %5269, %5256
  %5271 = fmul fast float %5258, %5099
  %5272 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5259, float %5271)  ; FMad(a,b,c)
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5260, float %5272)  ; FMad(a,b,c)
  %5274 = fadd fast float %5273, %5261
  %5275 = fmul fast float %5263, %5099
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5264, float %5275)  ; FMad(a,b,c)
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5265, float %5276)  ; FMad(a,b,c)
  %5278 = fadd fast float %5277, %5266
  %5279 = fcmp fast oge float %5270, 1.000000e+00
  %5280 = fcmp fast oge float %5274, 1.000000e+00
  %5281 = or i1 %5279, %5280
  %5282 = fcmp fast olt float %5270, 0.000000e+00
  %5283 = fcmp fast olt float %5274, 0.000000e+00
  %5284 = or i1 %5282, %5283
  %5285 = or i1 %5281, %5284
  br i1 %5285, label %5645, label %5286, !dx.controlflow.hints !95

; <label>:5286                                    ; preds = %5251
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.i32 %5291, 2
  %5293 = uitofp i32 %5292 to float
  %5294 = extractvalue %dx.types.CBufRet.i32 %5291, 3
  %5295 = uitofp i32 %5294 to float
  %5296 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5297 = fmul fast float %5296, 2.000000e+00
  %5298 = fsub fast float %5270, %5288
  %5299 = fsub fast float %5274, %5289
  %5300 = fmul fast float %5297, %5298
  %5301 = fmul fast float %5297, %5299
  %5302 = fdiv fast float 1.000000e+00, %5082
  %5303 = fmul fast float %5301, %5302
  %5304 = call float @dx.op.unary.f32(i32 6, float %5303)  ; FAbs(value)
  %5305 = fmul fast float %5290, %5101
  %5306 = fmul fast float %5305, %5297
  %5307 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5308 = call float @dx.op.unary.f32(i32 6, float %5300)  ; FAbs(value)
  %5309 = call float @dx.op.binary.f32(i32 35, float %5307, float %5304)  ; FMax(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5308, float %5309)  ; FMax(a,b)
  %5311 = fmul fast float %5310, 2.000000e+00
  %5312 = call float @dx.op.unary.f32(i32 23, float %5311)  ; Log(value)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5312, float %5293)  ; FMax(a,b)
  %5314 = call float @dx.op.unary.f32(i32 22, float %5313)  ; Frc(value)
  %5315 = fadd fast float %5314, 0xBFEA666660000000
  %5316 = fmul fast float %5315, 8.000000e+00
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 27, float %5313)  ; Round_ni(value)
  %5319 = fadd fast float %5318, %5317
  %5320 = call float @dx.op.binary.f32(i32 36, float %5319, float %5295)  ; FMin(a,b)
  %5321 = call float @dx.op.unary.f32(i32 27, float %5320)  ; Round_ni(value)
  %5322 = fsub fast float -0.000000e+00, %5321
  %5323 = call float @dx.op.unary.f32(i32 21, float %5322)  ; Exp(value)
  %5324 = fmul fast float %5323, %5297
  %5325 = fmul fast float %5324, %5270
  %5326 = fmul fast float %5324, %5274
  %5327 = fmul fast float %5325, 2.500000e-01
  %5328 = fmul fast float %5326, 2.500000e-01
  %5329 = fadd fast float %5327, 5.000000e-01
  %5330 = fadd fast float %5328, 5.000000e-01
  %5331 = fsub fast float %5295, %5293
  %5332 = fptoui float %5331 to i32
  %5333 = add i32 %5332, 320
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5333)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5337 = fcmp fast une float %5320, %5295
  %5338 = fsub fast float %5270, %5335
  %5339 = fsub fast float %5274, %5336
  %5340 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5341 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5342 = fmul fast float %5340, %5324
  %5343 = fmul fast float %5341, %5324
  %5344 = fcmp fast olt float %5342, 1.000000e+00
  %5345 = fcmp fast olt float %5343, 1.000000e+00
  %5346 = and i1 %5344, %5345
  %5347 = or i1 %5337, %5346
  br i1 %5347, label %5348, label %5645, !dx.controlflow.hints !96

; <label>:5348                                    ; preds = %5286
  %5349 = fmul fast float %5326, 5.000000e-01
  %5350 = fmul fast float %5325, 5.000000e-01
  %5351 = fadd fast float %5349, 5.000000e-01
  %5352 = fadd fast float %5350, 5.000000e-01
  %5353 = sitofp i32 %5292 to float
  %5354 = fsub fast float %5320, %5353
  %5355 = call float @dx.op.unary.f32(i32 27, float %5354)  ; Round_ni(value)
  %5356 = call float @dx.op.unary.f32(i32 22, float %5320)  ; Frc(value)
  %5357 = call float @dx.op.unary.f32(i32 22, float %5352)  ; Frc(value)
  %5358 = call float @dx.op.unary.f32(i32 22, float %5351)  ; Frc(value)
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5357, float %5358, float %5355, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = extractvalue %dx.types.ResRet.f32 %5359, 3
  %5364 = fcmp fast ogt float %5356, 0.000000e+00
  br i1 %5364, label %5365, label %5386, !dx.controlflow.hints !97

; <label>:5365                                    ; preds = %5348
  %5366 = fadd fast float %5355, 1.000000e+00
  %5367 = call float @dx.op.unary.f32(i32 22, float %5329)  ; Frc(value)
  %5368 = call float @dx.op.unary.f32(i32 22, float %5330)  ; Frc(value)
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5367, float %5368, float %5366, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = extractvalue %dx.types.ResRet.f32 %5369, 3
  %5374 = fsub fast float %5370, %5360
  %5375 = fsub fast float %5371, %5361
  %5376 = fsub fast float %5372, %5362
  %5377 = fsub fast float %5373, %5363
  %5378 = fmul fast float %5374, %5356
  %5379 = fmul fast float %5375, %5356
  %5380 = fmul fast float %5376, %5356
  %5381 = fmul fast float %5377, %5356
  %5382 = fadd fast float %5378, %5360
  %5383 = fadd fast float %5379, %5361
  %5384 = fadd fast float %5380, %5362
  %5385 = fadd fast float %5381, %5363
  br label %5386

; <label>:5386                                    ; preds = %5365, %5348
  %5387 = phi float [ %5382, %5365 ], [ %5360, %5348 ]
  %5388 = phi float [ %5383, %5365 ], [ %5361, %5348 ]
  %5389 = phi float [ %5384, %5365 ], [ %5362, %5348 ]
  %5390 = phi float [ %5385, %5365 ], [ %5363, %5348 ]
  %5391 = fadd fast float %5387, -5.000000e-01
  %5392 = fadd fast float %5389, -5.000000e-01
  %5393 = fmul fast float %5391, 0xBFD5555560000000
  %5394 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5392, float %5393)  ; FMad(a,b,c)
  %5395 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5388, float 0.000000e+00)  ; FMad(a,b,c)
  %5396 = fadd fast float %5395, %5390
  %5397 = fmul fast float %5391, -7.500000e-01
  %5398 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5392, float %5397)  ; FMad(a,b,c)
  %5399 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5388, float 0.000000e+00)  ; FMad(a,b,c)
  %5400 = fadd fast float %5399, %5390
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.CBufRet.f32 %5403, 2
  %5407 = extractvalue %dx.types.CBufRet.f32 %5403, 3
  %5408 = fsub fast float %5404, %5394
  %5409 = fsub fast float %5405, %5396
  %5410 = fsub fast float %5406, %5398
  %5411 = fsub fast float %5407, %5400
  %5412 = fmul fast float %5408, %5402
  %5413 = fmul fast float %5409, %5402
  %5414 = fmul fast float %5410, %5402
  %5415 = fmul fast float %5411, %5402
  %5416 = fadd fast float %5412, %5394
  %5417 = fadd fast float %5413, %5396
  %5418 = fadd fast float %5414, %5398
  %5419 = fadd fast float %5415, %5400
  %5420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.i32 %5420, 0
  %5422 = and i32 %5421, 536870911
  %5423 = uitofp i32 %5422 to float
  %5424 = fmul fast float %5423, %5270
  %5425 = fmul fast float %5423, %5274
  %5426 = fptoui float %5424 to i32
  %5427 = fptoui float %5425 to i32
  %5428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.i32 %5428, 0
  %5430 = and i32 %5429, 31
  %5431 = lshr i32 %5426, %5430
  %5432 = lshr i32 %5427, %5430
  %5433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5434 = extractvalue %dx.types.ResRet.i32 %5433, 0
  %5435 = and i32 %5434, 31
  %5436 = shl i32 1, %5435
  %5437 = call i32 @dx.op.binary.i32(i32 40, i32 %5436, i32 4)  ; UMin(a,b)
  %5438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.i32 %5438, 0
  %5440 = extractvalue %dx.types.ResRet.i32 %5438, 1
  %5441 = icmp eq i32 %5437, 0
  br i1 %5441, label %5483, label %5442

; <label>:5442                                    ; preds = %5386
  br label %5443

; <label>:5443                                    ; preds = %5471, %5442
  %5444 = phi i32 [ %5474, %5471 ], [ 0, %5442 ]
  %5445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.i32 %5445, 0
  %5447 = lshr i32 %5446, 16
  %5448 = and i32 %5447, 31
  %5449 = shl i32 %5432, %5448
  %5450 = add i32 %5449, %5431
  %5451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.i32 %5451, 0
  %5453 = and i32 %5452, 31
  %5454 = shl i32 %5450, %5453
  %5455 = add i32 %5454, %5444
  %5456 = shl i32 %5455, 2
  %5457 = add i32 %5456, 32
  %5458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.i32 %5458, 0
  %5460 = icmp slt i32 %5459, 0
  %5461 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5444
  %5462 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5444
  %5463 = bitcast float* %5461 to i32*
  %5464 = bitcast float* %5462 to i32*
  br i1 %5460, label %5465, label %5471

; <label>:5465                                    ; preds = %5443
  %5466 = and i32 %5459, 1073741823
  %5467 = add nuw nsw i32 %5466, 20
  %5468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.i32 %5468, 0
  %5470 = extractvalue %dx.types.ResRet.i32 %5468, 1
  br label %5471

; <label>:5471                                    ; preds = %5465, %5443
  %5472 = phi i32 [ %5469, %5465 ], [ %5439, %5443 ]
  %5473 = phi i32 [ %5470, %5465 ], [ %5440, %5443 ]
  store i32 %5472, i32* %5463, align 4
  store i32 %5473, i32* %5464, align 4
  %5474 = add nuw i32 %5444, 1
  %5475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.i32 %5475, 2
  %5477 = icmp eq i32 %5476, 0
  %5478 = icmp ugt i32 %5459, -1073741825
  %5479 = and i1 %5478, %5477
  %5480 = icmp ult i32 %5474, %5437
  %5481 = and i1 %5479, %5480
  br i1 %5481, label %5443, label %5482

; <label>:5482                                    ; preds = %5471
  br label %5483

; <label>:5483                                    ; preds = %5482, %5386
  %5484 = phi i32 [ 0, %5386 ], [ %5474, %5482 ]
  %5485 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5486 = fptoui float %5485 to i32
  %5487 = icmp eq i32 %5486, 0
  br i1 %5487, label %5539, label %5488

; <label>:5488                                    ; preds = %5483
  br label %5489

; <label>:5489                                    ; preds = %5534, %5488
  %5490 = phi i32 [ %5535, %5534 ], [ %5484, %5488 ]
  %5491 = phi i32 [ %5536, %5534 ], [ 0, %5488 ]
  %5492 = lshr i32 %5491, 2
  %5493 = and i32 %5491, 3
  %5494 = add nuw nsw i32 %5492, 83
  %5495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5494)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.i32 %5495, 0
  %5497 = extractvalue %dx.types.CBufRet.i32 %5495, 1
  %5498 = extractvalue %dx.types.CBufRet.i32 %5495, 2
  %5499 = extractvalue %dx.types.CBufRet.i32 %5495, 3
  %5500 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5496, i32* %5500, align 4
  %5501 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5497, i32* %5501, align 4
  %5502 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5498, i32* %5502, align 4
  %5503 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5499, i32* %5503, align 4
  %5504 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5493
  %5505 = load i32, i32* %5504, align 4, !tbaa !98, !noalias !102
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = lshr i32 %5507, 16
  %5509 = and i32 %5508, 31
  %5510 = shl i32 %5432, %5509
  %5511 = add i32 %5510, %5431
  %5512 = shl i32 %5511, 2
  %5513 = add i32 %5512, %5505
  %5514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.i32 %5514, 0
  %5516 = icmp eq i32 %5515, 0
  br i1 %5516, label %5534, label %5517

; <label>:5517                                    ; preds = %5489
  %5518 = icmp slt i32 %5515, 0
  %5519 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5490
  %5520 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5490
  %5521 = bitcast float* %5519 to i32*
  %5522 = bitcast float* %5520 to i32*
  br i1 %5518, label %5523, label %5530

; <label>:5523                                    ; preds = %5517
  %5524 = and i32 %5515, 1073741823
  %5525 = add i32 %5505, 20
  %5526 = add i32 %5525, %5524
  %5527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5526, i32 undef)  ; BufferLoad(srv,index,wot)
  %5528 = extractvalue %dx.types.ResRet.i32 %5527, 0
  %5529 = extractvalue %dx.types.ResRet.i32 %5527, 1
  br label %5530

; <label>:5530                                    ; preds = %5523, %5517
  %5531 = phi i32 [ %5528, %5523 ], [ %5439, %5517 ]
  %5532 = phi i32 [ %5529, %5523 ], [ %5440, %5517 ]
  store i32 %5531, i32* %5521, align 4
  store i32 %5532, i32* %5522, align 4
  %5533 = add i32 %5490, 1
  br label %5534

; <label>:5534                                    ; preds = %5530, %5489
  %5535 = phi i32 [ %5490, %5489 ], [ %5533, %5530 ]
  %5536 = add nuw i32 %5491, 1
  %5537 = icmp eq i32 %5536, %5486
  br i1 %5537, label %5538, label %5489

; <label>:5538                                    ; preds = %5534
  br label %5539

; <label>:5539                                    ; preds = %5538, %5483
  %5540 = phi i32 [ %5484, %5483 ], [ %5535, %5538 ]
  %5541 = icmp eq i32 %5540, 1
  %5542 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5543 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5541, label %5544, label %5547

; <label>:5544                                    ; preds = %5539
  %5545 = load float, float* %5542, align 4
  %5546 = load float, float* %5543, align 4
  br label %5574

; <label>:5547                                    ; preds = %5539
  %5548 = load float, float* %5542, align 4
  %5549 = load float, float* %5543, align 4
  %5550 = fdiv fast float 1.000000e+00, %5549
  %5551 = fsub fast float %5548, %5550
  %5552 = icmp ugt i32 %5540, 1
  br i1 %5552, label %5553, label %5569

; <label>:5553                                    ; preds = %5547
  br label %5554

; <label>:5554                                    ; preds = %5554, %5553
  %5555 = phi float [ %5564, %5554 ], [ %5551, %5553 ]
  %5556 = phi float [ %5565, %5554 ], [ %5548, %5553 ]
  %5557 = phi i32 [ %5566, %5554 ], [ 1, %5553 ]
  %5558 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5557
  %5559 = load float, float* %5558, align 4
  %5560 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5557
  %5561 = load float, float* %5560, align 4
  %5562 = fdiv fast float 1.000000e+00, %5561
  %5563 = fsub fast float %5559, %5562
  %5564 = call float @dx.op.binary.f32(i32 36, float %5555, float %5563)  ; FMin(a,b)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5556, float %5559)  ; FMax(a,b)
  %5566 = add nuw i32 %5557, 1
  %5567 = icmp eq i32 %5566, %5540
  br i1 %5567, label %5568, label %5554

; <label>:5568                                    ; preds = %5554
  br label %5569

; <label>:5569                                    ; preds = %5568, %5547
  %5570 = phi float [ %5551, %5547 ], [ %5564, %5568 ]
  %5571 = phi float [ %5548, %5547 ], [ %5565, %5568 ]
  %5572 = fsub fast float %5571, %5570
  %5573 = fdiv fast float 1.000000e+00, %5572
  br label %5574

; <label>:5574                                    ; preds = %5569, %5544
  %5575 = phi float [ %5545, %5544 ], [ %5571, %5569 ]
  %5576 = phi float [ %5546, %5544 ], [ %5573, %5569 ]
  %5577 = fadd fast float %5278, %5575
  %5578 = fmul fast float %5577, %5576
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fmul fast float %5579, 2.000000e+00
  %5581 = fsub fast float 1.000000e+00, %5580
  %5582 = fmul fast float %5416, %5416
  %5583 = fsub fast float %5417, %5582
  %5584 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5583)  ; FMax(a,b)
  %5585 = fdiv fast float 1.000000e+00, %5584
  %5586 = fmul fast float %5417, %5416
  %5587 = fsub fast float %5418, %5586
  %5588 = fsub fast float %5581, %5416
  %5589 = fmul fast float %5581, %5581
  %5590 = fsub fast float %5589, %5417
  %5591 = fmul fast float %5585, %5587
  %5592 = fmul fast float %5591, %5588
  %5593 = fsub fast float %5590, %5592
  %5594 = fmul fast float %5417, %5417
  %5595 = fsub fast float %5419, %5594
  %5596 = fmul fast float %5587, %5587
  %5597 = fmul fast float %5596, %5585
  %5598 = fsub fast float %5595, %5597
  %5599 = fdiv fast float %5593, %5598
  %5600 = fmul fast float %5599, %5587
  %5601 = fsub fast float %5588, %5600
  %5602 = fmul fast float %5601, %5585
  %5603 = fmul fast float %5602, %5416
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5599, %5417
  %5606 = fsub fast float %5604, %5605
  %5607 = fmul fast float %5602, %5602
  %5608 = fmul fast float %5599, 4.000000e+00
  %5609 = fmul fast float %5608, %5606
  %5610 = fsub fast float %5607, %5609
  %5611 = call float @dx.op.unary.f32(i32 24, float %5610)  ; Sqrt(value)
  %5612 = fcmp fast oge float %5602, 0.000000e+00
  %5613 = fsub fast float -0.000000e+00, %5611
  %5614 = select i1 %5612, float %5613, float %5611
  %5615 = fsub fast float %5614, %5602
  %5616 = fdiv fast float %5615, %5599
  %5617 = fdiv fast float %5606, %5615
  %5618 = fmul fast float %5616, 5.000000e-01
  %5619 = fmul fast float %5617, 2.000000e+00
  %5620 = select i1 %5612, float %5618, float %5619
  %5621 = select i1 %5612, float %5619, float %5618
  %5622 = call float @dx.op.binary.f32(i32 35, float %5620, float %5621)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 36, float %5620, float %5621)  ; FMin(a,b)
  %5624 = fcmp fast ogt float %5581, %5622
  %5625 = fsub fast float %5581, %5623
  %5626 = fsub fast float %5581, %5622
  %5627 = fsub fast float %5622, %5623
  %5628 = select i1 %5624, float %5626, float %5627
  %5629 = fmul float %5625, %5628
  %5630 = select i1 %5624, float %5623, float %5581
  %5631 = fcmp fast ogt float %5581, %5623
  %5632 = fmul fast float %5630, %5622
  %5633 = fadd fast float %5630, %5622
  %5634 = fmul fast float %5633, %5416
  %5635 = fadd fast float %5632, %5417
  %5636 = fsub fast float %5635, %5634
  %5637 = fdiv fast float %5636, %5629
  %5638 = select i1 %5631, float %5637, float 0.000000e+00
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = select i1 %5624, float %5639, float %5638
  %5641 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5643 = fmul fast float %5642, %5641
  %5644 = fsub fast float 1.000000e+00, %5643
  br label %5645

; <label>:5645                                    ; preds = %5574, %5286, %5251, %5247, %5213
  %5646 = phi float [ 1.000000e+00, %5213 ], [ %5644, %5574 ], [ 1.000000e+00, %5251 ], [ 1.000000e+00, %5286 ], [ 1.000000e+00, %5247 ]
  %5647 = fcmp fast ogt float %5243, 0.000000e+00
  br i1 %5647, label %5648, label %5654, !dx.controlflow.hints !111

; <label>:5648                                    ; preds = %5645
  %5649 = fadd fast float %5156, %5130
  %5650 = call float @dx.op.binary.f32(i32 35, float %5649, float 0.000000e+00)  ; FMax(a,b)
  %5651 = fadd fast float %5650, 0x3F10000000000000
  %5652 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5145, float %5146, float undef, float undef, i32 0, i32 0, i32 undef, float %5651)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  br label %5654

; <label>:5654                                    ; preds = %5648, %5645
  %5655 = phi float [ %5653, %5648 ], [ 1.000000e+00, %5645 ]
  %5656 = fcmp fast ogt float %5241, 0.000000e+00
  br i1 %5656, label %5657, label %5663, !dx.controlflow.hints !112

; <label>:5657                                    ; preds = %5654
  %5658 = fadd fast float %5186, %5130
  %5659 = call float @dx.op.binary.f32(i32 35, float %5658, float 0.000000e+00)  ; FMax(a,b)
  %5660 = fadd fast float %5659, 0x3F10000000000000
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5137, float %5138, float undef, float undef, i32 0, i32 0, i32 undef, float %5660)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  br label %5663

; <label>:5663                                    ; preds = %5657, %5654
  %5664 = phi float [ %5662, %5657 ], [ 1.000000e+00, %5654 ]
  %5665 = fcmp fast ogt float %5240, 0.000000e+00
  br i1 %5665, label %5666, label %5673, !dx.controlflow.hints !113

; <label>:5666                                    ; preds = %5663
  %5667 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5668 = fadd fast float %5667, %5130
  %5669 = call float @dx.op.binary.f32(i32 35, float %5668, float 0.000000e+00)  ; FMax(a,b)
  %5670 = fadd fast float %5669, 0x3F10000000000000
  %5671 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5122, float %5126, float undef, float undef, i32 0, i32 0, i32 undef, float %5670)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  br label %5673

; <label>:5673                                    ; preds = %5666, %5663
  %5674 = phi float [ %5672, %5666 ], [ 1.000000e+00, %5663 ]
  %5675 = fsub fast float %5655, %5646
  %5676 = fmul fast float %5675, %5184
  %5677 = fadd fast float %5676, %5646
  %5678 = fsub fast float %5664, %5677
  %5679 = fmul fast float %5678, %5214
  %5680 = fadd fast float %5679, %5677
  %5681 = fsub fast float %5674, %5680
  %5682 = fmul fast float %5681, %5240
  %5683 = fadd fast float %5682, %5680
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5686 = fcmp fast ogt float %5685, 0.000000e+00
  br i1 %5686, label %5687, label %5727, !dx.controlflow.hints !114

; <label>:5687                                    ; preds = %5673
  %5688 = fcmp fast ugt float %5685, 0.000000e+00
  br i1 %5688, label %5689, label %5724

; <label>:5689                                    ; preds = %5687
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5694 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = extractvalue %dx.types.CBufRet.f32 %5695, 1
  %5698 = extractvalue %dx.types.CBufRet.f32 %5695, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5700 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  %5701 = extractvalue %dx.types.CBufRet.f32 %5684, 1
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5706 = fadd fast float %5703, %5099
  %5707 = fadd fast float %5704, %5100
  %5708 = fadd fast float %5705, %5101
  %5709 = fmul fast float %5706, %5691
  %5710 = call float @dx.op.tertiary.f32(i32 46, float %5692, float %5707, float %5709)  ; FMad(a,b,c)
  %5711 = call float @dx.op.tertiary.f32(i32 46, float %5693, float %5708, float %5710)  ; FMad(a,b,c)
  %5712 = fadd fast float %5711, %5694
  %5713 = fmul fast float %5706, %5696
  %5714 = call float @dx.op.tertiary.f32(i32 46, float %5697, float %5707, float %5713)  ; FMad(a,b,c)
  %5715 = call float @dx.op.tertiary.f32(i32 46, float %5698, float %5708, float %5714)  ; FMad(a,b,c)
  %5716 = fadd fast float %5715, %5699
  %5717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5712, float %5716, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = fmul fast float %5718, %5701
  %5720 = fadd fast float %5719, %5700
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = fmul fast float %5721, %5685
  %5723 = fsub fast float 1.000000e+00, %5722
  br label %5724

; <label>:5724                                    ; preds = %5689, %5687
  %5725 = phi float [ %5723, %5689 ], [ 1.000000e+00, %5687 ]
  %5726 = fmul fast float %5725, %5683
  br label %5727

; <label>:5727                                    ; preds = %5724, %5673, %5079
  %5728 = phi float [ 1.000000e+00, %5079 ], [ %5726, %5724 ], [ %5683, %5673 ]
  %5729 = call float @dx.op.binary.f32(i32 36, float %5728, float %5728)  ; FMin(a,b)
  %5730 = call float @dx.op.binary.f32(i32 36, float %5728, float %5729)  ; FMin(a,b)
  %5731 = fcmp fast ogt float %5730, 0.000000e+00
  br i1 %5731, label %5732, label %5892, !dx.controlflow.hints !115

; <label>:5732                                    ; preds = %5727
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5737 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = extractvalue %dx.types.CBufRet.f32 %5738, 3
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = fmul fast float %5734, %5099
  %5749 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5735, float %5748)  ; FMad(a,b,c)
  %5750 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5736, float %5749)  ; FMad(a,b,c)
  %5751 = fadd fast float %5750, %5737
  %5752 = fmul fast float %5739, %5099
  %5753 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5740, float %5752)  ; FMad(a,b,c)
  %5754 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5741, float %5753)  ; FMad(a,b,c)
  %5755 = fadd fast float %5754, %5742
  %5756 = fmul fast float %5744, %5099
  %5757 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5745, float %5756)  ; FMad(a,b,c)
  %5758 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5746, float %5757)  ; FMad(a,b,c)
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5763 = fmul fast float %5762, %5751
  %5764 = fmul fast float %5762, %5755
  %5765 = fadd fast float %5763, %5760
  %5766 = fadd fast float %5764, %5761
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = fsub fast float %5765, %5768
  %5771 = fsub fast float %5766, %5769
  %5772 = fcmp fast olt float %5770, 0.000000e+00
  %5773 = fcmp fast olt float %5771, 0.000000e+00
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = select i1 %5772, float %5775, float %5777
  %5780 = select i1 %5773, float %5776, float %5778
  %5781 = fmul fast float %5779, %5770
  %5782 = fmul fast float %5780, %5771
  %5783 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5784 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5786 = call float @dx.op.binary.f32(i32 35, float %5783, float %5784)  ; FMax(a,b)
  %5787 = fsub fast float %5785, %5786
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fcmp fast ogt float %5788, 0.000000e+00
  br i1 %5789, label %5790, label %5831, !dx.controlflow.hints !116

; <label>:5790                                    ; preds = %5732
  %5791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5765, float %5766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5793 = fcmp fast ogt float %5792, 0.000000e+00
  br i1 %5793, label %5794, label %5826

; <label>:5794                                    ; preds = %5790
  %5795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5765, float %5766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5796 = extractvalue %dx.types.ResRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.ResRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.ResRet.f32 %5795, 2
  %5799 = extractvalue %dx.types.ResRet.f32 %5795, 3
  %5800 = fsub fast float 1.000000e+00, %5747
  %5801 = fsub fast float %5800, %5758
  %5802 = fmul fast float %5801, 0x400921FB60000000
  %5803 = fadd fast float %5802, 0x3FF921FB60000000
  %5804 = call float @dx.op.unary.f32(i32 13, float %5803)  ; Sin(value)
  %5805 = fadd fast float %5804, -1.000000e+00
  %5806 = fmul fast float %5805, 0x3FD45F3060000000
  %5807 = fmul fast float %5801, 0x401921FB60000000
  %5808 = fadd fast float %5807, 0x400921FB60000000
  %5809 = call float @dx.op.unary.f32(i32 13, float %5808)  ; Sin(value)
  %5810 = fadd fast float %5809, 0x3E7777A5C0000000
  %5811 = fmul fast float %5810, 0x3FC45F3060000000
  %5812 = fmul fast float %5801, 0x4022D97C80000000
  %5813 = fadd fast float %5812, 0x4012D97C80000000
  %5814 = call float @dx.op.unary.f32(i32 13, float %5813)  ; Sin(value)
  %5815 = fadd fast float %5814, 1.000000e+00
  %5816 = fmul fast float %5815, 0x3FBB2995E0000000
  %5817 = fmul fast float %5801, 0x402921FB60000000
  %5818 = fadd fast float %5817, 0x401921FB60000000
  %5819 = call float @dx.op.unary.f32(i32 13, float %5818)  ; Sin(value)
  %5820 = fadd fast float %5819, 0xBE8777A5C0000000
  %5821 = fmul fast float %5820, 0x3FB45F3060000000
  %5822 = call float @dx.op.dot4.f32(i32 56, float %5796, float %5797, float %5798, float %5799, float %5806, float %5811, float %5816, float %5821)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5823 = fmul fast float %5822, 0xBFF7154760000000
  %5824 = call float @dx.op.unary.f32(i32 21, float %5823)  ; Exp(value)
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  br label %5826

; <label>:5826                                    ; preds = %5794, %5790
  %5827 = phi float [ %5825, %5794 ], [ 1.000000e+00, %5790 ]
  %5828 = fadd fast float %5827, -1.000000e+00
  %5829 = fmul fast float %5828, %5788
  %5830 = fadd fast float %5829, 1.000000e+00
  br label %5831

; <label>:5831                                    ; preds = %5826, %5732
  %5832 = phi float [ %5830, %5826 ], [ 1.000000e+00, %5732 ]
  %5833 = fmul fast float %5832, %5728
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.CBufRet.f32 %5834, 1
  %5837 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5838 = fadd fast float %5835, %158
  %5839 = fadd fast float %5836, %159
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5842 = fsub fast float -0.000000e+00, %5838
  %5843 = fsub fast float -0.000000e+00, %5839
  %5844 = fsub fast float %4863, %5837
  %5845 = fadd fast float %5844, %5841
  %5846 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5842, float %5843, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5080, float %5081, float %5082)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fdiv fast float 1.000000e+00, %5847
  %5849 = fmul fast float %5848, %5846
  %5850 = fmul fast float %5080, %5849
  %5851 = fmul fast float %5081, %5849
  %5852 = fadd fast float %5850, %5838
  %5853 = fadd fast float %5851, %5839
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = fsub fast float %5852, %5855
  %5858 = fsub fast float %5853, %5856
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5862 = fmul fast float %5857, %5860
  %5863 = fmul fast float %5858, %5861
  %5864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.i32 %5864, 3
  %5866 = icmp eq i32 %5865, 0
  br i1 %5866, label %5872, label %5867

; <label>:5867                                    ; preds = %5831
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5862, float %5863, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  br label %5877

; <label>:5872                                    ; preds = %5831
  %5873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5862, float %5863, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.ResRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.ResRet.f32 %5873, 2
  br label %5877

; <label>:5877                                    ; preds = %5872, %5867
  %5878 = phi float [ %5869, %5867 ], [ %5874, %5872 ]
  %5879 = phi float [ %5870, %5867 ], [ %5875, %5872 ]
  %5880 = phi float [ %5871, %5867 ], [ %5876, %5872 ]
  %5881 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5882 = fmul fast float %5881, %5878
  %5883 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5884 = fsub fast float %5849, %5883
  %5885 = fsub fast float %5884, %5882
  %5886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5885)  ; FMax(a,b)
  %5887 = fmul fast float %5886, %5879
  %5888 = call float @dx.op.binary.f32(i32 36, float %5880, float %5887)  ; FMin(a,b)
  %5889 = fmul fast float %5888, 0xBFF7154760000000
  %5890 = call float @dx.op.unary.f32(i32 21, float %5889)  ; Exp(value)
  %5891 = fmul fast float %5833, %5890
  br label %5892

; <label>:5892                                    ; preds = %5877, %5727
  %5893 = phi float [ %5891, %5877 ], [ %5728, %5727 ]
  %5894 = call float @dx.op.binary.f32(i32 36, float %5893, float %5893)  ; FMin(a,b)
  %5895 = call float @dx.op.binary.f32(i32 36, float %5893, float %5894)  ; FMin(a,b)
  %5896 = fcmp fast ogt float %5895, 0.000000e+00
  br i1 %5896, label %5897, label %6148, !dx.controlflow.hints !117

; <label>:5897                                    ; preds = %5892
  %5898 = fmul fast float %5893, %5091
  %5899 = fmul fast float %5893, %5092
  %5900 = fmul fast float %5893, %5093
  %5901 = fsub fast float %160, %4651
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  %5903 = fmul fast float %5080, 5.120000e+02
  %5904 = fmul fast float %5081, 5.120000e+02
  %5905 = fmul fast float %5082, 5.120000e+02
  %5906 = fadd fast float %5905, %160
  %5907 = fsub fast float %4651, %5906
  %5908 = fmul fast float %5907, 2.000000e+00
  %5909 = fadd fast float %5908, %5906
  %5910 = select i1 %5902, float %5909, float %5906
  %5911 = fsub fast float %5910, %160
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5911, float %5903, float %5904, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.unary.f32(i32 25, float %5912)  ; Rsqrt(value)
  %5914 = fmul fast float %5913, %5903
  %5915 = fmul fast float %5913, %5904
  %5916 = fmul fast float %5913, %5911
  %5917 = fsub fast float %4651, %160
  %5918 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5917)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5914, float %5915, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = fdiv fast float 1.000000e+00, %5919
  %5921 = fmul fast float %5920, %5918
  %5922 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5901, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = fcmp fast ogt float %5922, 0.000000e+00
  %5924 = fcmp fast olt float %5922, 0.000000e+00
  %5925 = zext i1 %5923 to i32
  %5926 = zext i1 %5924 to i32
  %5927 = sub nsw i32 %5925, %5926
  %5928 = sitofp i32 %5927 to float
  %5929 = fsub fast float %5910, %4651
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5929, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fcmp fast ogt float %5930, 0.000000e+00
  %5932 = fcmp fast olt float %5930, 0.000000e+00
  %5933 = zext i1 %5931 to i32
  %5934 = zext i1 %5932 to i32
  %5935 = sub nsw i32 %5933, %5934
  %5936 = sitofp i32 %5935 to float
  %5937 = fcmp fast une float %5928, %5936
  br i1 %5937, label %5938, label %5948

; <label>:5938                                    ; preds = %5897
  %5939 = fmul fast float %5921, %5916
  %5940 = fmul fast float %5921, %5915
  %5941 = fmul fast float %5921, %5914
  %5942 = fmul fast float %5941, %5941
  %5943 = fmul fast float %5940, %5940
  %5944 = fadd fast float %5942, %5943
  %5945 = fmul fast float %5939, %5939
  %5946 = fadd fast float %5944, %5945
  %5947 = call float @dx.op.unary.f32(i32 24, float %5946)  ; Sqrt(value)
  br label %5958

; <label>:5948                                    ; preds = %5897
  %5949 = icmp slt i32 %5927, 0
  br i1 %5949, label %5950, label %5958

; <label>:5950                                    ; preds = %5948
  %5951 = fsub fast float %160, %5910
  %5952 = fmul fast float %5903, %5903
  %5953 = fmul fast float %5904, %5904
  %5954 = fadd fast float %5952, %5953
  %5955 = fmul fast float %5951, %5951
  %5956 = fadd fast float %5954, %5955
  %5957 = call float @dx.op.unary.f32(i32 24, float %5956)  ; Sqrt(value)
  br label %5958

; <label>:5958                                    ; preds = %5950, %5948, %5938
  %5959 = phi float [ %5947, %5938 ], [ %5957, %5950 ], [ 0.000000e+00, %5948 ]
  %5960 = fsub fast float -0.000000e+00, %5959
  %5961 = select i1 %5902, float -0.000000e+00, float %5960
  %5962 = fmul fast float %4652, 0x3FF7154760000000
  %5963 = fmul fast float %5962, %5961
  %5964 = fmul fast float %4653, 0x3FF7154760000000
  %5965 = fmul fast float %5964, %5961
  %5966 = fmul fast float %4654, 0x3FF7154760000000
  %5967 = fmul fast float %5966, %5961
  %5968 = call float @dx.op.unary.f32(i32 21, float %5963)  ; Exp(value)
  %5969 = call float @dx.op.unary.f32(i32 21, float %5965)  ; Exp(value)
  %5970 = call float @dx.op.unary.f32(i32 21, float %5967)  ; Exp(value)
  %5971 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5972 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5973 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5974 = fmul fast float %5898, %5971
  %5975 = fmul fast float %5899, %5972
  %5976 = fmul fast float %5900, %5973
  %5977 = fsub fast float %5080, %4851
  %5978 = fsub fast float %5081, %4850
  %5979 = fsub fast float %5082, %4849
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5978, float %5979, float %5977, float %5978, float %5979)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = call float @dx.op.unary.f32(i32 25, float %5980)  ; Rsqrt(value)
  %5982 = fmul fast float %5981, %5977
  %5983 = fmul fast float %5981, %5978
  %5984 = fmul fast float %5981, %5979
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %4858, float %4859, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4847, float %4846, float %5982, float %5983, float %5984)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5988 = fmul fast float %5987, %5987
  %5989 = fmul fast float %5988, %4879
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = fmul fast float %5990, %5987
  %5992 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %5982, float %5983, float %5984)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fmul fast float %5992, %5992
  %5994 = call float @dx.op.unary.f32(i32 6, float %5985)  ; FAbs(value)
  %5995 = fsub fast float 1.000000e+00, %4861
  %5996 = call float @dx.op.binary.f32(i32 35, float %5995, float 0x3F847AE140000000)  ; FMax(a,b)
  %5997 = fmul fast float %5996, %5996
  %5998 = fmul fast float %5997, %5997
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = fmul fast float %4866, %4866
  %6001 = fmul fast float %6000, %5999
  %6002 = fadd fast float %6001, %5998
  %6003 = bitcast float %6002 to i32
  %6004 = ashr i32 %6003, 1
  %6005 = add nsw i32 %6004, 532487669
  %6006 = bitcast i32 %6005 to float
  %6007 = fadd fast float %6006, %4866
  %6008 = fmul fast float %5998, %5993
  %6009 = fsub fast float 1.000000e+00, %5993
  %6010 = fadd fast float %6009, %6008
  %6011 = fmul fast float %5994, %5994
  %6012 = fmul fast float %6011, %5999
  %6013 = fadd fast float %6012, %5998
  %6014 = bitcast float %6013 to i32
  %6015 = ashr i32 %6014, 1
  %6016 = add nsw i32 %6015, 532487669
  %6017 = bitcast i32 %6016 to float
  %6018 = fadd fast float %6017, %5994
  %6019 = fmul fast float %6010, %6010
  %6020 = fmul fast float %6019, %6007
  %6021 = fmul fast float %6020, %6018
  %6022 = fdiv fast float 0x3FF0A00000000000, %6021
  %6023 = fmul fast float %6022, %5998
  %6024 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = bitcast float %6025 to i32
  %6027 = sitofp i32 %6026 to float
  %6028 = fmul fast float %6027, 5.000000e+00
  %6029 = fadd fast float %6028, 0xC1EFBF8940000000
  %6030 = fptosi float %6029 to i32
  %6031 = bitcast i32 %6030 to float
  %6032 = fsub fast float 1.000000e+00, %4855
  %6033 = fsub fast float 1.000000e+00, %4856
  %6034 = fsub fast float 1.000000e+00, %4864
  %6035 = fmul fast float %6031, %6032
  %6036 = fmul fast float %6031, %6033
  %6037 = fmul fast float %6031, %6034
  %6038 = fadd fast float %6035, %4855
  %6039 = fadd fast float %6036, %4856
  %6040 = fadd fast float %6037, %4864
  br i1 %4991, label %6041, label %6064

; <label>:6041                                    ; preds = %5958
  %6042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4250, float %6024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6043 = extractvalue %dx.types.ResRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.ResRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.ResRet.f32 %6042, 2
  %6046 = fadd fast float %6043, -5.000000e-01
  %6047 = fadd fast float %6044, -5.000000e-01
  %6048 = fadd fast float %6045, -5.000000e-01
  %6049 = fmul fast float %4855, 4.000000e+00
  %6050 = fmul fast float %6049, %6032
  %6051 = fmul fast float %6050, %6046
  %6052 = fmul fast float %4856, 4.000000e+00
  %6053 = fmul fast float %6052, %6033
  %6054 = fmul fast float %6053, %6047
  %6055 = fmul fast float %4864, 4.000000e+00
  %6056 = fmul fast float %6055, %6034
  %6057 = fmul fast float %6056, %6048
  %6058 = fadd fast float %6051, %6038
  %6059 = fadd fast float %6054, %6039
  %6060 = fadd fast float %6057, %6040
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  br label %6064

; <label>:6064                                    ; preds = %6041, %5958
  %6065 = phi float [ %6061, %6041 ], [ %6038, %5958 ]
  %6066 = phi float [ %6062, %6041 ], [ %6039, %5958 ]
  %6067 = phi float [ %6063, %6041 ], [ %6040, %5958 ]
  %6068 = fmul fast float %5985, 9.843750e-01
  %6069 = fadd fast float %6068, 7.812500e-03
  %6070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6069, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6071 = extractvalue %dx.types.ResRet.f32 %6070, 2
  %6072 = extractvalue %dx.types.ResRet.f32 %6070, 3
  %6073 = fmul fast float %6071, %4855
  %6074 = fmul fast float %6071, %4856
  %6075 = fmul fast float %6071, %4864
  %6076 = fadd fast float %6073, %6072
  %6077 = fadd fast float %6074, %6072
  %6078 = fadd fast float %6075, %6072
  br i1 %4991, label %6079, label %6102

; <label>:6079                                    ; preds = %6064
  %6080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4250, float %5985, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6081 = extractvalue %dx.types.ResRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.ResRet.f32 %6080, 1
  %6083 = extractvalue %dx.types.ResRet.f32 %6080, 2
  %6084 = fadd fast float %6081, -5.000000e-01
  %6085 = fadd fast float %6082, -5.000000e-01
  %6086 = fadd fast float %6083, -5.000000e-01
  %6087 = fmul fast float %4855, 4.000000e+00
  %6088 = fmul fast float %6087, %6032
  %6089 = fmul fast float %6088, %6084
  %6090 = fmul fast float %4856, 4.000000e+00
  %6091 = fmul fast float %6090, %6033
  %6092 = fmul fast float %6091, %6085
  %6093 = fmul fast float %4864, 4.000000e+00
  %6094 = fmul fast float %6093, %6034
  %6095 = fmul fast float %6094, %6086
  %6096 = fadd fast float %6089, %6076
  %6097 = fadd fast float %6092, %6077
  %6098 = fadd fast float %6095, %6078
  %6099 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6100 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6101 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  br label %6102

; <label>:6102                                    ; preds = %6079, %6064
  %6103 = phi float [ %6099, %6079 ], [ %6076, %6064 ]
  %6104 = phi float [ %6100, %6079 ], [ %6077, %6064 ]
  %6105 = phi float [ %6101, %6079 ], [ %6078, %6064 ]
  %6106 = call float @dx.op.binary.f32(i32 35, float %6104, float %6105)  ; FMax(a,b)
  %6107 = call float @dx.op.binary.f32(i32 35, float %6103, float %6106)  ; FMax(a,b)
  %6108 = fsub fast float 1.000000e+00, %6107
  %6109 = fmul fast float %6065, %6023
  %6110 = fmul fast float %6066, %6023
  %6111 = fmul fast float %6067, %6023
  %6112 = fsub fast float 1.000000e+00, %5986
  %6113 = bitcast float %6112 to i32
  %6114 = sitofp i32 %6113 to float
  %6115 = fmul fast float %6114, 5.000000e+00
  %6116 = fadd fast float %6115, 0xC1EFBF8940000000
  %6117 = fptosi float %6116 to i32
  %6118 = bitcast i32 %6117 to float
  %6119 = fmul fast float %6118, %4251
  %6120 = fmul fast float %6108, %6119
  %6121 = fmul fast float %6120, %5041
  %6122 = fmul fast float %6120, %5042
  %6123 = fmul fast float %6120, %5043
  %6124 = fadd fast float %6121, %6109
  %6125 = fadd fast float %6122, %6110
  %6126 = fadd fast float %6123, %6111
  %6127 = fmul fast float %5991, %5974
  %6128 = fmul fast float %6127, %6108
  %6129 = fmul fast float %5991, %5975
  %6130 = fmul fast float %6129, %6108
  %6131 = fmul fast float %5991, %5976
  %6132 = fmul fast float %6131, %6108
  %6133 = fmul fast float %6127, %6124
  %6134 = fmul fast float %6129, %6125
  %6135 = fmul fast float %6131, %6126
  %6136 = fadd fast float %6128, %5025
  %6137 = fmul fast float %6136, %4247
  %6138 = fadd fast float %6130, %5026
  %6139 = fmul fast float %6138, %4247
  %6140 = fadd fast float %6132, %5027
  %6141 = fmul fast float %6140, %4247
  %6142 = fadd fast float %6133, %5068
  %6143 = fmul fast float %6142, %4247
  %6144 = fadd fast float %6134, %5071
  %6145 = fmul fast float %6144, %4247
  %6146 = fadd fast float %6135, %5074
  %6147 = fmul fast float %6146, %4247
  br label %6148

; <label>:6148                                    ; preds = %6102, %5892, %5018
  %6149 = phi float [ %5069, %5018 ], [ %5069, %5892 ], [ %6143, %6102 ]
  %6150 = phi float [ %5072, %5018 ], [ %5072, %5892 ], [ %6145, %6102 ]
  %6151 = phi float [ %5075, %5018 ], [ %5075, %5892 ], [ %6147, %6102 ]
  %6152 = phi float [ %5064, %5018 ], [ %5064, %5892 ], [ %6137, %6102 ]
  %6153 = phi float [ %5065, %5018 ], [ %5065, %5892 ], [ %6139, %6102 ]
  %6154 = phi float [ %5066, %5018 ], [ %5066, %5892 ], [ %6141, %6102 ]
  %6155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.i32 %6155, 0
  %6157 = icmp eq i32 %6156, 0
  br i1 %6157, label %6778, label %6158

; <label>:6158                                    ; preds = %6148
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6162 = fmul fast float %6160, %95
  %6163 = fmul fast float %6161, %96
  %6164 = fptoui float %6162 to i32
  %6165 = fptoui float %6163 to i32
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6170 = fadd fast float %86, -4.000000e+00
  %6171 = call float @dx.op.binary.f32(i32 35, float %6170, float 0.000000e+00)  ; FMax(a,b)
  %6172 = fadd fast float %6171, %6167
  %6173 = fmul fast float %6172, %6168
  %6174 = call float @dx.op.unary.f32(i32 23, float %6173)  ; Log(value)
  %6175 = fmul fast float %6174, %6169
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6178 = fmul fast float %6175, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.i32 %6180, 1
  %6182 = add i32 %6181, -1
  %6183 = uitofp i32 %6181 to float
  %6184 = fmul fast float %6183, %6179
  %6185 = fptoui float %6184 to i32
  %6186 = call i32 @dx.op.binary.i32(i32 40, i32 %6185, i32 %6182)  ; UMin(a,b)
  %6187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.i32 %6187, 2
  %6189 = extractvalue %dx.types.CBufRet.i32 %6187, 3
  %6190 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6165, i32 %6188, i32 %6164)  ; UMad(a,b,c)
  %6191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6186, i32 %6189, i32 %6190)  ; UMad(a,b,c)
  %6192 = add nsw i32 %6156, -1
  %6193 = call i32 @dx.op.binary.i32(i32 37, i32 %6192, i32 0)  ; IMax(a,b)
  %6194 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6195 = fptoui float %6194 to i32
  %6196 = lshr i32 %6195, 5
  %6197 = call i32 @dx.op.binary.i32(i32 40, i32 %6196, i32 8191)  ; UMin(a,b)
  %6198 = shl i32 %6197, 2
  %6199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6198, i32 undef)  ; BufferLoad(srv,index,wot)
  %6200 = extractvalue %dx.types.ResRet.i32 %6199, 0
  %6201 = lshr i32 %6200, 16
  %6202 = and i32 %6200, 65535
  %6203 = lshr i32 %6200, 21
  %6204 = lshr i32 %6202, 5
  %6205 = call i32 @dx.op.binary.i32(i32 40, i32 %6204, i32 %6193)  ; UMin(a,b)
  %6206 = icmp ugt i32 %6203, %6205
  br i1 %6206, label %6778, label %6207

; <label>:6207                                    ; preds = %6158
  br label %6208

; <label>:6208                                    ; preds = %6768, %6207
  %6209 = phi i32 [ %6775, %6768 ], [ %6203, %6207 ]
  %6210 = phi float [ %6769, %6768 ], [ %6149, %6207 ]
  %6211 = phi float [ %6770, %6768 ], [ %6150, %6207 ]
  %6212 = phi float [ %6771, %6768 ], [ %6151, %6207 ]
  %6213 = phi float [ %6772, %6768 ], [ %6152, %6207 ]
  %6214 = phi float [ %6773, %6768 ], [ %6153, %6207 ]
  %6215 = phi float [ %6774, %6768 ], [ %6154, %6207 ]
  %6216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.i32 %6216, 0
  %6218 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6191, i32 %6217, i32 %6209)  ; UMad(a,b,c)
  %6219 = shl i32 %6218, 2
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6219, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = shl i32 %6209, 5
  %6223 = sub nsw i32 %6201, %6222
  %6224 = call i32 @dx.op.binary.i32(i32 37, i32 %6223, i32 0)  ; IMax(a,b)
  %6225 = call i32 @dx.op.binary.i32(i32 38, i32 %6224, i32 31)  ; IMin(a,b)
  %6226 = sub nsw i32 1, %6201
  %6227 = add nsw i32 %6226, %6202
  %6228 = call i32 @dx.op.binary.i32(i32 37, i32 %6227, i32 0)  ; IMax(a,b)
  %6229 = call i32 @dx.op.binary.i32(i32 38, i32 %6228, i32 32)  ; IMin(a,b)
  %6230 = and i32 %6229, 31
  %6231 = shl i32 -1, %6230
  %6232 = xor i32 %6231, -1
  %6233 = and i32 %6225, 31
  %6234 = shl i32 %6232, %6233
  %6235 = icmp eq i32 %6229, 32
  %6236 = select i1 %6235, i32 -1, i32 %6234
  %6237 = and i32 %6236, %6221
  %6238 = icmp eq i32 %6237, 0
  br i1 %6238, label %6768, label %6239

; <label>:6239                                    ; preds = %6208
  br label %6240

; <label>:6240                                    ; preds = %6374, %6239
  %6241 = phi i32 [ %6252, %6374 ], [ %6237, %6239 ]
  %6242 = phi float [ %6375, %6374 ], [ %6210, %6239 ]
  %6243 = phi float [ %6376, %6374 ], [ %6211, %6239 ]
  %6244 = phi float [ %6377, %6374 ], [ %6212, %6239 ]
  %6245 = phi float [ %6378, %6374 ], [ %6213, %6239 ]
  %6246 = phi float [ %6379, %6374 ], [ %6214, %6239 ]
  %6247 = phi float [ %6380, %6374 ], [ %6215, %6239 ]
  %6248 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6241)  ; FirstbitLo(value)
  %6249 = add i32 %6248, %6222
  %6250 = and i32 %6248, 31
  %6251 = shl i32 1, %6250
  %6252 = xor i32 %6251, %6241
  %6253 = mul i32 %6249, 112
  %6254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = or i32 %6253, 12
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = add i32 %6253, 16
  %6262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6261, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = add i32 %6253, 28
  %6267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.i32 %6267, 0
  %6269 = add i32 %6253, 44
  %6270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6269, i32 undef)  ; BufferLoad(srv,index,wot)
  %6271 = extractvalue %dx.types.ResRet.f32 %6270, 0
  %6272 = add i32 %6253, 48
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = extractvalue %dx.types.ResRet.f32 %6273, 3
  %6278 = add i32 %6253, 64
  %6279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6278, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  %6283 = extractvalue %dx.types.ResRet.f32 %6279, 3
  %6284 = add i32 %6253, 80
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6284, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6288 = add i32 %6253, 92
  %6289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6288, i32 undef)  ; BufferLoad(srv,index,wot)
  %6290 = extractvalue %dx.types.ResRet.i32 %6289, 0
  %6291 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6292 = select i1 %220, float %6286, float %6255
  %6293 = select i1 %220, float %6291, float %6256
  %6294 = select i1 %220, float %6287, float %6257
  %6295 = and i32 %6290, 65535
  %6296 = uitofp i32 %6295 to float
  %6297 = lshr i32 %6290, 16
  %6298 = uitofp i32 %6297 to float
  %6299 = and i32 %6268, 65535
  %6300 = and i32 %6268, 50331648
  %6301 = icmp eq i32 %6300, 33554432
  %6302 = fsub fast float %6274, %158
  %6303 = fsub fast float %6275, %159
  %6304 = fsub fast float %6276, %160
  %6305 = call float @dx.op.dot3.f32(i32 55, float %6302, float %6303, float %6304, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = call float @dx.op.unary.f32(i32 24, float %6305)  ; Sqrt(value)
  %6307 = fdiv fast float 1.000000e+00, %6306
  %6308 = fmul fast float %6307, %6302
  %6309 = fmul fast float %6307, %6303
  %6310 = fmul fast float %6307, %6304
  %6311 = fadd fast float %6306, %6260
  %6312 = fdiv fast float 1.000000e+00, %6311
  %6313 = fmul float %6271, %6312
  %6314 = fmul float %6313, %6313
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  br i1 %6301, label %6316, label %6337

; <label>:6316                                    ; preds = %6240
  %6317 = fmul fast float %6282, %6263
  %6318 = fmul fast float %6282, %6264
  %6319 = fmul fast float %6282, %6265
  %6320 = fadd fast float %6302, %6317
  %6321 = fadd fast float %6303, %6318
  %6322 = fadd fast float %6304, %6319
  %6323 = call float @dx.op.dot3.f32(i32 55, float %6320, float %6321, float %6322, float %6320, float %6321, float %6322)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = call float @dx.op.unary.f32(i32 25, float %6323)  ; Rsqrt(value)
  %6325 = fmul fast float %6324, %6320
  %6326 = fmul fast float %6324, %6321
  %6327 = fmul fast float %6324, %6322
  %6328 = fsub fast float %158, %6274
  %6329 = fsub fast float %159, %6275
  %6330 = fsub fast float %160, %6276
  %6331 = fsub fast float -0.000000e+00, %6328
  %6332 = fsub fast float -0.000000e+00, %6329
  %6333 = fsub fast float -0.000000e+00, %6330
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6331, float %6332, float %6333, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fcmp fast ogt float %6334, 0.000000e+00
  %6336 = uitofp i1 %6335 to float
  br label %6337

; <label>:6337                                    ; preds = %6316, %6240
  %6338 = phi float [ %6336, %6316 ], [ 1.000000e+00, %6240 ]
  %6339 = phi float [ %6325, %6316 ], [ %6308, %6240 ]
  %6340 = phi float [ %6326, %6316 ], [ %6309, %6240 ]
  %6341 = phi float [ %6327, %6316 ], [ %6310, %6240 ]
  %6342 = call float @dx.op.dot3.f32(i32 55, float %6263, float %6264, float %6265, float %6339, float %6340, float %6341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = fmul fast float %6342, %6342
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6345 = fsub fast float 1.000000e+00, %6344
  %6346 = fmul fast float %6345, 5.000000e-01
  %6347 = fcmp fast ogt float %6342, 0.000000e+00
  %6348 = fsub fast float 1.000000e+00, %6346
  %6349 = select i1 %6347, float %6346, float %6348
  %6350 = fmul fast float %6349, %6298
  %6351 = fadd fast float %6350, %6296
  %6352 = fmul fast float %6351, 0x3EF0001000000000
  %6353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6352, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6354 = extractvalue %dx.types.ResRet.f32 %6353, 0
  %6355 = fmul fast float %6342, %6280
  %6356 = fadd fast float %6355, %6281
  %6357 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6358 = select i1 %6301, float 1.000000e+00, float %6357
  %6359 = select i1 %6301, float %6357, float 1.000000e+00
  %6360 = fmul fast float %6306, %6277
  %6361 = fsub fast float 1.000000e+00, %6360
  %6362 = fmul fast float %6361, %6283
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = fmul fast float %6363, %6359
  %6365 = fmul fast float %6364, 2.000000e+00
  %6366 = fsub fast float 3.000000e+00, %6365
  %6367 = fmul fast float %6354, %6338
  %6368 = fmul fast float %6364, %6364
  %6369 = fmul fast float %6368, %6367
  %6370 = fmul fast float %6369, %6366
  %6371 = call float @dx.op.binary.f32(i32 36, float %6370, float %6370)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6370, float %6371)  ; FMin(a,b)
  %6373 = fcmp fast ogt float %6372, 0.000000e+00
  br i1 %6373, label %6382, label %6374, !dx.controlflow.hints !118

; <label>:6374                                    ; preds = %6724, %6482, %6337
  %6375 = phi float [ %6242, %6482 ], [ %6242, %6337 ], [ %6764, %6724 ]
  %6376 = phi float [ %6243, %6482 ], [ %6243, %6337 ], [ %6765, %6724 ]
  %6377 = phi float [ %6244, %6482 ], [ %6244, %6337 ], [ %6766, %6724 ]
  %6378 = phi float [ %6245, %6482 ], [ %6245, %6337 ], [ %6758, %6724 ]
  %6379 = phi float [ %6246, %6482 ], [ %6246, %6337 ], [ %6759, %6724 ]
  %6380 = phi float [ %6247, %6482 ], [ %6247, %6337 ], [ %6760, %6724 ]
  %6381 = icmp eq i32 %6241, %6251
  br i1 %6381, label %6767, label %6240

; <label>:6382                                    ; preds = %6337
  %6383 = icmp eq i32 %6299, 255
  br i1 %6383, label %6482, label %6384, !dx.controlflow.hints !119

; <label>:6384                                    ; preds = %6382
  %6385 = mul nuw nsw i32 %6299, 176
  %6386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6385, i32 undef)  ; BufferLoad(srv,index,wot)
  %6387 = extractvalue %dx.types.ResRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.ResRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.ResRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.ResRet.f32 %6386, 3
  %6391 = add nuw nsw i32 %6385, 16
  %6392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6391, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = add nuw nsw i32 %6385, 32
  %6396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6395, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.ResRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.ResRet.f32 %6396, 2
  %6400 = add nuw nsw i32 %6385, 48
  %6401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6400, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  %6405 = extractvalue %dx.types.ResRet.f32 %6401, 3
  %6406 = add nuw nsw i32 %6385, 64
  %6407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = add nuw nsw i32 %6385, 80
  %6413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6412, i32 undef)  ; BufferLoad(srv,index,wot)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.ResRet.f32 %6413, 2
  %6417 = extractvalue %dx.types.ResRet.f32 %6413, 3
  %6418 = add nuw nsw i32 %6385, 96
  %6419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6418, i32 undef)  ; BufferLoad(srv,index,wot)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.ResRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.ResRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.ResRet.f32 %6419, 3
  %6424 = bitcast float %6394 to i32
  %6425 = fmul fast float %6399, %102
  %6426 = fmul fast float %6399, %103
  %6427 = fmul fast float %6399, %104
  %6428 = fadd fast float %6425, %158
  %6429 = fadd fast float %6426, %159
  %6430 = fadd fast float %6427, %160
  %6431 = fmul fast float %6428, %6402
  %6432 = call float @dx.op.tertiary.f32(i32 46, float %6429, float %6408, float %6431)  ; FMad(a,b,c)
  %6433 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6414, float %6432)  ; FMad(a,b,c)
  %6434 = fadd fast float %6433, %6420
  %6435 = fmul fast float %6428, %6403
  %6436 = call float @dx.op.tertiary.f32(i32 46, float %6429, float %6409, float %6435)  ; FMad(a,b,c)
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6415, float %6436)  ; FMad(a,b,c)
  %6438 = fadd fast float %6437, %6421
  %6439 = fmul fast float %6428, %6404
  %6440 = call float @dx.op.tertiary.f32(i32 46, float %6429, float %6410, float %6439)  ; FMad(a,b,c)
  %6441 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6416, float %6440)  ; FMad(a,b,c)
  %6442 = fadd fast float %6441, %6422
  %6443 = fmul fast float %6428, %6405
  %6444 = call float @dx.op.tertiary.f32(i32 46, float %6429, float %6411, float %6443)  ; FMad(a,b,c)
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6417, float %6444)  ; FMad(a,b,c)
  %6446 = fadd fast float %6445, %6423
  %6447 = fdiv fast float %6434, %6446
  %6448 = fdiv fast float %6438, %6446
  %6449 = fdiv fast float %6442, %6446
  %6450 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6449)  ; FMax(a,b)
  %6451 = fmul fast float %231, 0x401921FB60000000
  %6452 = call float @dx.op.unary.f32(i32 13, float %6451)  ; Sin(value)
  %6453 = call float @dx.op.unary.f32(i32 12, float %6451)  ; Cos(value)
  %6454 = fsub fast float -0.000000e+00, %6452
  %6455 = fmul fast float %6389, 5.000000e-01
  %6456 = call float @dx.op.dot2.f32(i32 54, float %231, float %231, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6457 = call float @dx.op.unary.f32(i32 22, float %6456)  ; Frc(value)
  %6458 = fmul fast float %6457, 0x404A7DD040000000
  %6459 = call float @dx.op.unary.f32(i32 22, float %6458)  ; Frc(value)
  %6460 = fmul fast float %6459, %6398
  %6461 = fadd fast float %6460, %6455
  %6462 = call float @dx.op.tertiary.f32(i32 46, float %6461, float %6454, float 0.000000e+00)  ; FMad(a,b,c)
  %6463 = call float @dx.op.tertiary.f32(i32 46, float %6461, float %6453, float 0.000000e+00)  ; FMad(a,b,c)
  %6464 = fadd fast float %6462, %6447
  %6465 = fadd fast float %6463, %6448
  %6466 = fmul fast float %6464, %6393
  %6467 = fmul fast float %6465, %6393
  %6468 = call float @dx.op.binary.f32(i32 35, float %6466, float %6389)  ; FMax(a,b)
  %6469 = call float @dx.op.binary.f32(i32 35, float %6467, float %6389)  ; FMax(a,b)
  %6470 = call float @dx.op.binary.f32(i32 36, float %6468, float %6390)  ; FMin(a,b)
  %6471 = call float @dx.op.binary.f32(i32 36, float %6469, float %6390)  ; FMin(a,b)
  %6472 = fadd fast float %6470, %6387
  %6473 = fadd fast float %6471, %6388
  %6474 = uitofp i32 %6424 to float
  %6475 = fadd fast float %6450, %6397
  %6476 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6472, float %6473, float %6474, float undef, i32 0, i32 0, i32 undef, float %6475)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6477 = extractvalue %dx.types.ResRet.f32 %6476, 0
  %6478 = fadd fast float %6477, -1.000000e+00
  %6479 = fmul fast float %6478, %6358
  %6480 = fadd fast float %6479, 1.000000e+00
  %6481 = fmul fast float %6480, %6370
  br label %6482

; <label>:6482                                    ; preds = %6384, %6382
  %6483 = phi float [ %6481, %6384 ], [ %6370, %6382 ]
  %6484 = call float @dx.op.binary.f32(i32 36, float %6483, float %6483)  ; FMin(a,b)
  %6485 = call float @dx.op.binary.f32(i32 36, float %6483, float %6484)  ; FMin(a,b)
  %6486 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6486, label %6487, label %6374, !dx.controlflow.hints !120

; <label>:6487                                    ; preds = %6482
  %6488 = fmul fast float %6483, %6292
  %6489 = fmul fast float %6483, %6293
  %6490 = fmul fast float %6483, %6294
  %6491 = fsub fast float %6276, %4651
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  %6493 = fsub fast float %160, %4651
  %6494 = fcmp fast ogt float %6493, 0.000000e+00
  %6495 = xor i1 %6494, %6492
  %6496 = fsub fast float %4651, %6276
  %6497 = fmul fast float %6496, 2.000000e+00
  %6498 = fadd fast float %6497, %6276
  %6499 = select i1 %6495, float %6276, float %6498
  %6500 = fsub fast float %6499, %160
  %6501 = call float @dx.op.dot3.f32(i32 55, float %6302, float %6303, float %6500, float %6302, float %6303, float %6500)  ; Dot3(ax,ay,az,bx,by,bz)
  %6502 = call float @dx.op.unary.f32(i32 25, float %6501)  ; Rsqrt(value)
  %6503 = fmul fast float %6502, %6302
  %6504 = fmul fast float %6502, %6303
  %6505 = fmul fast float %6502, %6500
  %6506 = fsub fast float %4651, %160
  %6507 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6506)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6503, float %6504, float %6505)  ; Dot3(ax,ay,az,bx,by,bz)
  %6509 = fdiv fast float 1.000000e+00, %6508
  %6510 = fmul fast float %6509, %6507
  %6511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6493, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6512 = fcmp fast ogt float %6511, 0.000000e+00
  %6513 = fcmp fast olt float %6511, 0.000000e+00
  %6514 = zext i1 %6512 to i32
  %6515 = zext i1 %6513 to i32
  %6516 = sub nsw i32 %6514, %6515
  %6517 = sitofp i32 %6516 to float
  %6518 = fsub fast float %6499, %4651
  %6519 = call float @dx.op.dot3.f32(i32 55, float %6302, float %6303, float %6518, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = fcmp fast ogt float %6519, 0.000000e+00
  %6521 = fcmp fast olt float %6519, 0.000000e+00
  %6522 = zext i1 %6520 to i32
  %6523 = zext i1 %6521 to i32
  %6524 = sub nsw i32 %6522, %6523
  %6525 = sitofp i32 %6524 to float
  %6526 = fcmp fast une float %6517, %6525
  br i1 %6526, label %6527, label %6537

; <label>:6527                                    ; preds = %6487
  %6528 = fmul fast float %6510, %6505
  %6529 = fmul fast float %6510, %6504
  %6530 = fmul fast float %6510, %6503
  %6531 = fmul fast float %6530, %6530
  %6532 = fmul fast float %6529, %6529
  %6533 = fadd fast float %6531, %6532
  %6534 = fmul fast float %6528, %6528
  %6535 = fadd fast float %6533, %6534
  %6536 = call float @dx.op.unary.f32(i32 24, float %6535)  ; Sqrt(value)
  br label %6549

; <label>:6537                                    ; preds = %6487
  %6538 = icmp slt i32 %6516, 0
  br i1 %6538, label %6539, label %6549

; <label>:6539                                    ; preds = %6537
  %6540 = fsub fast float %158, %6274
  %6541 = fsub fast float %159, %6275
  %6542 = fsub fast float %160, %6499
  %6543 = fmul fast float %6540, %6540
  %6544 = fmul fast float %6541, %6541
  %6545 = fadd fast float %6543, %6544
  %6546 = fmul fast float %6542, %6542
  %6547 = fadd fast float %6545, %6546
  %6548 = call float @dx.op.unary.f32(i32 24, float %6547)  ; Sqrt(value)
  br label %6549

; <label>:6549                                    ; preds = %6539, %6537, %6527
  %6550 = phi float [ %6536, %6527 ], [ %6548, %6539 ], [ 0.000000e+00, %6537 ]
  %6551 = and i1 %6494, %6492
  %6552 = fsub fast float -0.000000e+00, %6550
  %6553 = select i1 %6551, float -0.000000e+00, float %6552
  %6554 = fmul fast float %4652, 0x3FF7154760000000
  %6555 = fmul fast float %6554, %6553
  %6556 = fmul fast float %4653, 0x3FF7154760000000
  %6557 = fmul fast float %6556, %6553
  %6558 = fmul fast float %4654, 0x3FF7154760000000
  %6559 = fmul fast float %6558, %6553
  %6560 = call float @dx.op.unary.f32(i32 21, float %6555)  ; Exp(value)
  %6561 = call float @dx.op.unary.f32(i32 21, float %6557)  ; Exp(value)
  %6562 = call float @dx.op.unary.f32(i32 21, float %6559)  ; Exp(value)
  %6563 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6564 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6565 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6566 = fmul fast float %6488, %6563
  %6567 = fmul fast float %6489, %6564
  %6568 = fmul fast float %6490, %6565
  %6569 = fsub fast float %6308, %4851
  %6570 = fsub fast float %6309, %4850
  %6571 = fsub fast float %6310, %4849
  %6572 = call float @dx.op.dot3.f32(i32 55, float %6569, float %6570, float %6571, float %6569, float %6570, float %6571)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = call float @dx.op.unary.f32(i32 25, float %6572)  ; Rsqrt(value)
  %6574 = fmul fast float %6573, %6569
  %6575 = fmul fast float %6573, %6570
  %6576 = fmul fast float %6573, %6571
  %6577 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %4858, float %4859, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4847, float %4846, float %6574, float %6575, float %6576)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6580 = fmul fast float %6579, %6315
  %6581 = fmul fast float %6579, %6579
  %6582 = fmul fast float %6581, %4879
  %6583 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6584 = fmul fast float %6580, %6583
  %6585 = bitcast float %6305 to i32
  %6586 = ashr i32 %6585, 1
  %6587 = sub nsw i32 1597463007, %6586
  %6588 = bitcast i32 %6587 to float
  %6589 = fmul fast float %6588, %6302
  %6590 = fmul fast float %6588, %6303
  %6591 = fmul fast float %6588, %6304
  %6592 = fsub fast float %6589, %4851
  %6593 = fsub fast float %6590, %4850
  %6594 = fsub fast float %6591, %4849
  %6595 = call float @dx.op.dot3.f32(i32 55, float %6592, float %6593, float %6594, float %6592, float %6593, float %6594)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.unary.f32(i32 25, float %6595)  ; Rsqrt(value)
  %6597 = fmul fast float %6592, %6596
  %6598 = fmul fast float %6593, %6596
  %6599 = fmul fast float %6594, %6596
  %6600 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %6597, float %6598, float %6599)  ; Dot3(ax,ay,az,bx,by,bz)
  %6601 = fmul fast float %6600, %6600
  %6602 = call float @dx.op.unary.f32(i32 6, float %6577)  ; FAbs(value)
  %6603 = fsub fast float 1.000000e+00, %4861
  %6604 = call float @dx.op.binary.f32(i32 35, float %6603, float 0x3F847AE140000000)  ; FMax(a,b)
  %6605 = fmul fast float %6604, %6604
  %6606 = fmul fast float %6605, %6605
  %6607 = fsub fast float 1.000000e+00, %6606
  %6608 = fmul fast float %4866, %4866
  %6609 = fmul fast float %6608, %6607
  %6610 = fadd fast float %6609, %6606
  %6611 = bitcast float %6610 to i32
  %6612 = ashr i32 %6611, 1
  %6613 = add nsw i32 %6612, 532487669
  %6614 = bitcast i32 %6613 to float
  %6615 = fadd fast float %6614, %4866
  %6616 = fmul fast float %6606, %6601
  %6617 = fsub fast float 1.000000e+00, %6601
  %6618 = fadd fast float %6617, %6616
  %6619 = fmul fast float %6602, %6602
  %6620 = fmul fast float %6619, %6607
  %6621 = fadd fast float %6620, %6606
  %6622 = bitcast float %6621 to i32
  %6623 = ashr i32 %6622, 1
  %6624 = add nsw i32 %6623, 532487669
  %6625 = bitcast i32 %6624 to float
  %6626 = fadd fast float %6625, %6602
  %6627 = fmul fast float %6618, %6618
  %6628 = fmul fast float %6627, %6615
  %6629 = fmul fast float %6628, %6626
  %6630 = fdiv fast float 1.000000e+00, %6629
  %6631 = bitcast float %6606 to i32
  %6632 = sitofp i32 %6631 to float
  %6633 = fmul fast float %6632, 0x3FE7F73180000000
  %6634 = fadd fast float %6633, 0x41AFE27C40000000
  %6635 = fptosi float %6634 to i32
  %6636 = bitcast i32 %6635 to float
  %6637 = fmul fast float %6271, 0x3FD80E9D60000000
  %6638 = fmul fast float %6637, %6588
  %6639 = fadd fast float %6636, %6638
  %6640 = bitcast float %6639 to i32
  %6641 = sub nsw i32 2129859010, %6640
  %6642 = bitcast i32 %6641 to float
  %6643 = fmul fast float %6606, %6630
  %6644 = fmul fast float %6643, %6636
  %6645 = fmul fast float %6644, %6642
  %6646 = call float @dx.op.unary.f32(i32 6, float %6578)  ; FAbs(value)
  %6647 = fsub fast float 1.000000e+00, %6646
  %6648 = bitcast float %6647 to i32
  %6649 = sitofp i32 %6648 to float
  %6650 = fmul fast float %6649, 5.000000e+00
  %6651 = fadd fast float %6650, 0xC1EFBF8940000000
  %6652 = fptosi float %6651 to i32
  %6653 = bitcast i32 %6652 to float
  %6654 = fsub fast float 1.000000e+00, %4855
  %6655 = fsub fast float 1.000000e+00, %4856
  %6656 = fsub fast float 1.000000e+00, %4864
  %6657 = fmul fast float %6653, %6654
  %6658 = fmul fast float %6653, %6655
  %6659 = fmul fast float %6653, %6656
  %6660 = fadd fast float %6657, %4855
  %6661 = fadd fast float %6658, %4856
  %6662 = fadd fast float %6659, %4864
  br i1 %4991, label %6663, label %6686

; <label>:6663                                    ; preds = %6549
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4250, float %6646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = fadd fast float %6665, -5.000000e-01
  %6669 = fadd fast float %6666, -5.000000e-01
  %6670 = fadd fast float %6667, -5.000000e-01
  %6671 = fmul fast float %4855, 4.000000e+00
  %6672 = fmul fast float %6671, %6654
  %6673 = fmul fast float %6672, %6668
  %6674 = fmul fast float %4856, 4.000000e+00
  %6675 = fmul fast float %6674, %6655
  %6676 = fmul fast float %6675, %6669
  %6677 = fmul fast float %4864, 4.000000e+00
  %6678 = fmul fast float %6677, %6656
  %6679 = fmul fast float %6678, %6670
  %6680 = fadd fast float %6673, %6660
  %6681 = fadd fast float %6676, %6661
  %6682 = fadd fast float %6679, %6662
  %6683 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6684 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6685 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  br label %6686

; <label>:6686                                    ; preds = %6663, %6549
  %6687 = phi float [ %6683, %6663 ], [ %6660, %6549 ]
  %6688 = phi float [ %6684, %6663 ], [ %6661, %6549 ]
  %6689 = phi float [ %6685, %6663 ], [ %6662, %6549 ]
  %6690 = fmul fast float %6577, 9.843750e-01
  %6691 = fadd fast float %6690, 7.812500e-03
  %6692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6691, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 2
  %6694 = extractvalue %dx.types.ResRet.f32 %6692, 3
  %6695 = fmul fast float %6693, %4855
  %6696 = fmul fast float %6693, %4856
  %6697 = fmul fast float %6693, %4864
  %6698 = fadd fast float %6695, %6694
  %6699 = fadd fast float %6696, %6694
  %6700 = fadd fast float %6697, %6694
  br i1 %4991, label %6701, label %6724

; <label>:6701                                    ; preds = %6686
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4250, float %6577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  %6706 = fadd fast float %6703, -5.000000e-01
  %6707 = fadd fast float %6704, -5.000000e-01
  %6708 = fadd fast float %6705, -5.000000e-01
  %6709 = fmul fast float %4855, 4.000000e+00
  %6710 = fmul fast float %6709, %6654
  %6711 = fmul fast float %6710, %6706
  %6712 = fmul fast float %4856, 4.000000e+00
  %6713 = fmul fast float %6712, %6655
  %6714 = fmul fast float %6713, %6707
  %6715 = fmul fast float %4864, 4.000000e+00
  %6716 = fmul fast float %6715, %6656
  %6717 = fmul fast float %6716, %6708
  %6718 = fadd fast float %6711, %6698
  %6719 = fadd fast float %6714, %6699
  %6720 = fadd fast float %6717, %6700
  %6721 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6722 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  %6723 = call float @dx.op.unary.f32(i32 7, float %6720)  ; Saturate(value)
  br label %6724

; <label>:6724                                    ; preds = %6701, %6686
  %6725 = phi float [ %6721, %6701 ], [ %6698, %6686 ]
  %6726 = phi float [ %6722, %6701 ], [ %6699, %6686 ]
  %6727 = phi float [ %6723, %6701 ], [ %6700, %6686 ]
  %6728 = call float @dx.op.binary.f32(i32 35, float %6726, float %6727)  ; FMax(a,b)
  %6729 = call float @dx.op.binary.f32(i32 35, float %6725, float %6728)  ; FMax(a,b)
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = fmul fast float %6687, %6645
  %6732 = fmul fast float %6688, %6645
  %6733 = fmul fast float %6689, %6645
  %6734 = fsub fast float 1.000000e+00, %6578
  %6735 = bitcast float %6734 to i32
  %6736 = sitofp i32 %6735 to float
  %6737 = fmul fast float %6736, 5.000000e+00
  %6738 = fadd fast float %6737, 0xC1EFBF8940000000
  %6739 = fptosi float %6738 to i32
  %6740 = bitcast i32 %6739 to float
  %6741 = fmul fast float %6740, %4251
  %6742 = fmul fast float %6730, %6741
  %6743 = fmul fast float %6742, %5041
  %6744 = fmul fast float %6742, %5042
  %6745 = fmul fast float %6742, %5043
  %6746 = fadd fast float %6743, %6731
  %6747 = fadd fast float %6744, %6732
  %6748 = fadd fast float %6745, %6733
  %6749 = fmul fast float %6566, %4247
  %6750 = fmul fast float %6749, %6584
  %6751 = fmul fast float %6750, %6730
  %6752 = fmul fast float %6567, %4247
  %6753 = fmul fast float %6752, %6584
  %6754 = fmul fast float %6753, %6730
  %6755 = fmul fast float %6568, %4247
  %6756 = fmul fast float %6755, %6584
  %6757 = fmul fast float %6756, %6730
  %6758 = fadd fast float %6751, %6245
  %6759 = fadd fast float %6754, %6246
  %6760 = fadd fast float %6757, %6247
  %6761 = fmul fast float %6750, %6746
  %6762 = fmul fast float %6753, %6747
  %6763 = fmul fast float %6756, %6748
  %6764 = fadd fast float %6761, %6242
  %6765 = fadd fast float %6762, %6243
  %6766 = fadd fast float %6763, %6244
  br label %6374

; <label>:6767                                    ; preds = %6374
  br label %6768

; <label>:6768                                    ; preds = %6767, %6208
  %6769 = phi float [ %6210, %6208 ], [ %6375, %6767 ]
  %6770 = phi float [ %6211, %6208 ], [ %6376, %6767 ]
  %6771 = phi float [ %6212, %6208 ], [ %6377, %6767 ]
  %6772 = phi float [ %6213, %6208 ], [ %6378, %6767 ]
  %6773 = phi float [ %6214, %6208 ], [ %6379, %6767 ]
  %6774 = phi float [ %6215, %6208 ], [ %6380, %6767 ]
  %6775 = add i32 %6209, 1
  %6776 = icmp ugt i32 %6775, %6205
  br i1 %6776, label %6777, label %6208

; <label>:6777                                    ; preds = %6768
  br label %6778

; <label>:6778                                    ; preds = %6777, %6158, %6148
  %6779 = phi float [ %6149, %6148 ], [ %6149, %6158 ], [ %6769, %6777 ]
  %6780 = phi float [ %6150, %6148 ], [ %6150, %6158 ], [ %6770, %6777 ]
  %6781 = phi float [ %6151, %6148 ], [ %6151, %6158 ], [ %6771, %6777 ]
  %6782 = phi float [ %6152, %6148 ], [ %6152, %6158 ], [ %6772, %6777 ]
  %6783 = phi float [ %6153, %6148 ], [ %6153, %6158 ], [ %6773, %6777 ]
  %6784 = phi float [ %6154, %6148 ], [ %6154, %6158 ], [ %6774, %6777 ]
  %6785 = fmul fast float %4247, %4247
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = fmul fast float %6787, %5047
  %6789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6789, 3
  %6791 = fsub fast float 1.000000e+00, %4254
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = fadd fast float %6784, %4253
  %6794 = fmul fast float %6793, %4254
  %6795 = fmul fast float %6792, %6790
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 3
  %6798 = fmul fast float %6782, %4852
  %6799 = fmul fast float %6783, %4853
  %6800 = fmul fast float %6784, %4854
  %6801 = fcmp fast ogt float %86, %180
  %6802 = and i1 %6801, %4657
  %6803 = or i1 %4663, %6802
  %6804 = icmp eq i32 %4656, 2
  %6805 = fcmp fast ole float %86, %180
  %6806 = and i1 %6805, %6804
  %6807 = or i1 %6806, %6803
  br i1 %6802, label %6808, label %7065

; <label>:6808                                    ; preds = %6778
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6812 = fmul fast float %6810, %95
  %6813 = fmul fast float %6811, %96
  %6814 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6815 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6816 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6814, float %6815, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = extractvalue %dx.types.ResRet.f32 %6816, 3
  %6821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6814, float %6815, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.ResRet.f32 %6821, 3
  %6826 = call float @dx.op.binary.f32(i32 35, float %6818, float %6819)  ; FMax(a,b)
  %6827 = call float @dx.op.binary.f32(i32 35, float %6817, float %6826)  ; FMax(a,b)
  %6828 = call float @dx.op.binary.f32(i32 35, float %6827, float %6820)  ; FMax(a,b)
  %6829 = call float @dx.op.binary.f32(i32 36, float %6823, float %6824)  ; FMin(a,b)
  %6830 = call float @dx.op.binary.f32(i32 36, float %6822, float %6829)  ; FMin(a,b)
  %6831 = call float @dx.op.binary.f32(i32 36, float %6830, float %6825)  ; FMin(a,b)
  %6832 = fmul fast float %6828, 2.550000e+02
  %6833 = fadd fast float %6832, 0x3F70101020000000
  %6834 = fptoui float %6833 to i32
  %6835 = fmul fast float %6831, 2.550000e+02
  %6836 = fadd fast float %6835, 0x3F70101020000000
  %6837 = fptoui float %6836 to i32
  %6838 = icmp ult i32 %6834, %6837
  br i1 %6838, label %6839, label %7007

; <label>:6839                                    ; preds = %6808
  %6840 = fcmp fast ogt float %85, 9.843750e-01
  %6841 = fadd fast float %86, -4.000000e+00
  %6842 = select i1 %6840, float -4.000000e+00, float %6841
  %6843 = call float @dx.op.binary.f32(i32 35, float %6842, float 0.000000e+00)  ; FMax(a,b)
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = fadd fast float %6845, %6843
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = fmul fast float %6846, %6847
  %6849 = call float @dx.op.unary.f32(i32 23, float %6848)  ; Log(value)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6844, 3
  %6851 = fmul fast float %6850, %6849
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = fmul fast float %6851, %6853
  %6855 = call float @dx.op.unary.f32(i32 7, float %6854)  ; Saturate(value)
  %6856 = uitofp i32 %6834 to float
  %6857 = uitofp i32 %6837 to float
  %6858 = fadd fast float %6856, 5.000000e-01
  %6859 = fadd fast float %6857, 5.000000e-01
  %6860 = fmul fast float %6853, %6858
  %6861 = fmul fast float %6853, %6859
  %6862 = fadd fast float %6860, 0x3F0FFB4800000000
  %6863 = fadd fast float %6861, 0xBF0FFB4800000000
  %6864 = call float @dx.op.binary.f32(i32 35, float %6855, float %6862)  ; FMax(a,b)
  %6865 = call float @dx.op.binary.f32(i32 36, float %6864, float %6863)  ; FMin(a,b)
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 1
  %6868 = extractvalue %dx.types.CBufRet.f32 %6866, 2
  %6869 = extractvalue %dx.types.CBufRet.f32 %6866, 0
  %6870 = fmul fast float %6867, %6865
  %6871 = fadd fast float %6869, %6870
  %6872 = fadd fast float %6869, %6868
  %6873 = fsub fast float %6867, %6868
  %6874 = fadd fast float %6873, %6869
  %6875 = call float @dx.op.binary.f32(i32 35, float %6871, float %6872)  ; FMax(a,b)
  %6876 = call float @dx.op.binary.f32(i32 36, float %6875, float %6874)  ; FMin(a,b)
  %6877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6814, float %6815, float %6876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6878 = extractvalue %dx.types.ResRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.ResRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.ResRet.f32 %6877, 2
  %6881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.i32 %6881, 0
  %6883 = extractvalue %dx.types.CBufRet.i32 %6881, 1
  %6884 = uitofp i32 %6882 to float
  %6885 = uitofp i32 %6883 to float
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = fmul fast float %6884, %6814
  %6890 = fmul fast float %6885, %6815
  %6891 = fadd fast float %6889, -5.000000e-01
  %6892 = fadd fast float %6890, -5.000000e-01
  %6893 = call float @dx.op.unary.f32(i32 22, float %6891)  ; Frc(value)
  %6894 = call float @dx.op.unary.f32(i32 22, float %6892)  ; Frc(value)
  %6895 = fmul fast float %6893, %6893
  %6896 = fmul fast float %6895, %6893
  %6897 = fsub fast float 3.000000e+00, %6893
  %6898 = fmul fast float %6895, %6897
  %6899 = fmul fast float %6893, 3.000000e+00
  %6900 = fmul fast float %6896, 3.000000e+00
  %6901 = fmul fast float %6895, 6.000000e+00
  %6902 = fsub fast float %6900, %6901
  %6903 = fadd fast float %6902, 4.000000e+00
  %6904 = fmul fast float %6903, 0x3FC5555560000000
  %6905 = fmul fast float %6896, -3.000000e+00
  %6906 = fadd fast float %6895, %6893
  %6907 = fmul fast float %6906, 3.000000e+00
  %6908 = fadd fast float %6905, 1.000000e+00
  %6909 = fadd fast float %6908, %6907
  %6910 = fmul fast float %6896, 0x3FC5555560000000
  %6911 = fmul fast float %6894, %6894
  %6912 = fmul fast float %6911, %6894
  %6913 = fsub fast float 3.000000e+00, %6894
  %6914 = fmul fast float %6911, %6913
  %6915 = fmul fast float %6894, 3.000000e+00
  %6916 = fmul fast float %6912, 3.000000e+00
  %6917 = fmul fast float %6911, 6.000000e+00
  %6918 = fsub fast float %6916, %6917
  %6919 = fadd fast float %6918, 4.000000e+00
  %6920 = fmul fast float %6919, 0x3FC5555560000000
  %6921 = fmul fast float %6912, -3.000000e+00
  %6922 = fadd fast float %6911, %6894
  %6923 = fmul fast float %6922, 3.000000e+00
  %6924 = fadd fast float %6921, 1.000000e+00
  %6925 = fadd fast float %6924, %6923
  %6926 = fmul fast float %6912, 0x3FC5555560000000
  %6927 = fadd fast float %6893, 1.000000e+00
  %6928 = fsub fast float 1.000000e+00, %6899
  %6929 = fadd fast float %6928, %6898
  %6930 = fadd fast float %6929, %6903
  %6931 = fmul fast float %6930, 0x3FC5555560000000
  %6932 = fdiv fast float %6904, %6931
  %6933 = fsub fast float %6927, %6932
  %6934 = fsub fast float 1.000000e+00, %6893
  %6935 = fadd fast float %6909, %6896
  %6936 = fmul fast float %6935, 0x3FC5555560000000
  %6937 = fdiv fast float %6910, %6936
  %6938 = fadd fast float %6934, %6937
  %6939 = fadd fast float %6894, 1.000000e+00
  %6940 = fsub fast float 1.000000e+00, %6915
  %6941 = fadd fast float %6940, %6914
  %6942 = fadd fast float %6941, %6919
  %6943 = fmul fast float %6942, 0x3FC5555560000000
  %6944 = fdiv fast float %6920, %6943
  %6945 = fsub fast float %6939, %6944
  %6946 = fsub fast float 1.000000e+00, %6894
  %6947 = fadd fast float %6925, %6912
  %6948 = fmul fast float %6947, 0x3FC5555560000000
  %6949 = fdiv fast float %6926, %6948
  %6950 = fadd fast float %6949, %6946
  %6951 = fmul fast float %6933, %6887
  %6952 = fsub fast float %6814, %6951
  %6953 = fmul fast float %6938, %6887
  %6954 = fadd fast float %6953, %6814
  %6955 = fmul fast float %6950, %6888
  %6956 = fadd fast float %6955, %6815
  %6957 = fmul fast float %6945, %6888
  %6958 = fsub fast float %6815, %6957
  %6959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6952, float %6958, float %6876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6960 = extractvalue %dx.types.ResRet.f32 %6959, 0
  %6961 = extractvalue %dx.types.ResRet.f32 %6959, 1
  %6962 = extractvalue %dx.types.ResRet.f32 %6959, 2
  %6963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6954, float %6958, float %6876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6952, float %6956, float %6876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6954, float %6956, float %6876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = fsub fast float %6968, %6960
  %6976 = fsub fast float %6969, %6961
  %6977 = fsub fast float %6970, %6962
  %6978 = fmul fast float %6975, %6948
  %6979 = fmul fast float %6976, %6948
  %6980 = fmul fast float %6977, %6948
  %6981 = fadd fast float %6978, %6960
  %6982 = fadd fast float %6979, %6961
  %6983 = fadd fast float %6980, %6962
  %6984 = fsub fast float %6972, %6964
  %6985 = fsub fast float %6973, %6965
  %6986 = fsub fast float %6974, %6966
  %6987 = fmul fast float %6984, %6948
  %6988 = fmul fast float %6985, %6948
  %6989 = fmul fast float %6986, %6948
  %6990 = fsub fast float %6964, %6981
  %6991 = fadd fast float %6990, %6987
  %6992 = fsub fast float %6965, %6982
  %6993 = fadd fast float %6992, %6988
  %6994 = fsub fast float %6966, %6983
  %6995 = fadd fast float %6994, %6989
  %6996 = fmul fast float %6991, %6936
  %6997 = fmul fast float %6993, %6936
  %6998 = fmul fast float %6995, %6936
  %6999 = fadd fast float %6996, %6981
  %7000 = fadd fast float %6997, %6982
  %7001 = fadd fast float %6998, %6983
  %7002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7003 = extractvalue %dx.types.CBufRet.f32 %7002, 1
  %7004 = fmul fast float %6999, %7003
  %7005 = fmul fast float %7000, %7003
  %7006 = fmul fast float %7001, %7003
  br label %7007

; <label>:7007                                    ; preds = %6839, %6808
  %7008 = phi float [ %6878, %6839 ], [ 1.000000e+00, %6808 ]
  %7009 = phi float [ %6879, %6839 ], [ 1.000000e+00, %6808 ]
  %7010 = phi float [ %6880, %6839 ], [ 1.000000e+00, %6808 ]
  %7011 = phi float [ %7004, %6839 ], [ 0.000000e+00, %6808 ]
  %7012 = phi float [ %7005, %6839 ], [ 0.000000e+00, %6808 ]
  %7013 = phi float [ %7006, %6839 ], [ 0.000000e+00, %6808 ]
  %7014 = fmul fast float %7011, %6785
  %7015 = fmul fast float %7012, %6785
  %7016 = fmul fast float %7013, %6785
  %7017 = call float @dx.op.dot3.f32(i32 55, float %7008, float %7009, float %7010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = call float @dx.op.dot3.f32(i32 55, float %7014, float %7015, float %7016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7019 = select i1 %220, float %7017, float %7008
  %7020 = select i1 %220, float %7017, float %7009
  %7021 = select i1 %220, float 1.000000e+00, float %7010
  %7022 = select i1 %220, float %7018, float %7014
  %7023 = select i1 %220, float 0.000000e+00, float %7015
  %7024 = select i1 %220, float 0.000000e+00, float %7016
  %7025 = fmul fast float %7019, %6798
  %7026 = fmul fast float %7020, %6799
  %7027 = fmul fast float %7021, %6800
  %7028 = fadd fast float %7025, %7022
  %7029 = fadd fast float %7026, %7023
  %7030 = fadd fast float %7024, %7027
  %7031 = fmul fast float %7019, %6779
  %7032 = fmul fast float %7020, %6780
  %7033 = fmul fast float %7021, %6781
  %7034 = fmul fast float %128, %6810
  %7035 = fmul fast float %130, %6811
  %7036 = fsub fast float 1.000000e+00, %7034
  %7037 = fsub fast float 1.000000e+00, %7035
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = fmul fast float %7036, %7039
  %7043 = fmul fast float %7036, %7040
  %7044 = fmul fast float %7036, %7041
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = fmul fast float %7037, %7046
  %7050 = fmul fast float %7037, %7047
  %7051 = fmul fast float %7037, %7048
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7056 = fadd fast float %7049, %7053
  %7057 = fadd fast float %7056, %7042
  %7058 = fadd fast float %7050, %7054
  %7059 = fadd fast float %7058, %7043
  %7060 = fadd fast float %7051, %7055
  %7061 = fadd fast float %7060, %7044
  %7062 = fmul fast float %7057, %180
  %7063 = fmul fast float %7059, %180
  %7064 = fmul fast float %7061, %180
  br label %7065

; <label>:7065                                    ; preds = %7007, %6778
  %7066 = phi float [ %7062, %7007 ], [ %158, %6778 ]
  %7067 = phi float [ %7063, %7007 ], [ %159, %6778 ]
  %7068 = phi float [ %7064, %7007 ], [ %160, %6778 ]
  %7069 = phi float [ %180, %7007 ], [ %86, %6778 ]
  %7070 = phi float [ %7028, %7007 ], [ %6798, %6778 ]
  %7071 = phi float [ %7029, %7007 ], [ %6799, %6778 ]
  %7072 = phi float [ %7030, %7007 ], [ %6800, %6778 ]
  %7073 = phi float [ %7031, %7007 ], [ %6779, %6778 ]
  %7074 = phi float [ %7032, %7007 ], [ %6780, %6778 ]
  %7075 = phi float [ %7033, %7007 ], [ %6781, %6778 ]
  %7076 = phi float [ %7008, %7007 ], [ 1.000000e+00, %6778 ]
  br i1 %6807, label %8231, label %7077

; <label>:7077                                    ; preds = %7065
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7086 = extractvalue %dx.types.CBufRet.f32 %7083, 2
  %7087 = extractvalue %dx.types.CBufRet.f32 %7083, 3
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7097 = extractvalue %dx.types.CBufRet.f32 %7093, 3
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 3
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 3
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7103 = extractvalue %dx.types.CBufRet.f32 %7100, 1
  %7104 = extractvalue %dx.types.CBufRet.f32 %7100, 2
  %7105 = fcmp fast olt float %7104, -5.000000e-01
  %7106 = call float @dx.op.dot3.f32(i32 55, float %7066, float %7067, float %7068, float %7066, float %7067, float %7068)  ; Dot3(ax,ay,az,bx,by,bz)
  %7107 = call float @dx.op.unary.f32(i32 25, float %7106)  ; Rsqrt(value)
  %7108 = fmul fast float %7107, %7106
  %7109 = fmul fast float %7107, %7066
  %7110 = fmul fast float %7107, %7067
  %7111 = fmul fast float %7107, %7068
  %7112 = fadd fast float %7108, %7082
  %7113 = call float @dx.op.dot3.f32(i32 55, float %7109, float %7110, float %7111, float %7079, float %7080, float %7081)  ; Dot3(ax,ay,az,bx,by,bz)
  %7114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.i32 %7114, 1
  %7116 = and i32 %7115, 1
  %7117 = icmp ne i32 %7116, 0
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 2
  %7120 = fcmp fast ogt float %7119, 0.000000e+00
  %7121 = and i1 %7117, %7120
  br i1 %7121, label %7122, label %7528, !dx.controlflow.hints !121

; <label>:7122                                    ; preds = %7077
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 3
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7129 = fsub fast float %7126, %7128
  %7130 = and i32 %7115, 2
  %7131 = extractvalue %dx.types.CBufRet.i32 %7114, 0
  %7132 = call i32 @dx.op.binary.i32(i32 40, i32 %7131, i32 3)  ; UMin(a,b)
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7127, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7138 = fsub fast float %7134, %7136
  %7139 = fsub fast float %7135, %7137
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  %7142 = fcmp fast ogt float %7141, 0.000000e+00
  %7143 = fsub fast float -0.000000e+00, %7138
  %7144 = fsub fast float -0.000000e+00, %7139
  %7145 = call float @dx.op.dot2.f32(i32 54, float %7109, float %7110, float %7109, float %7110)  ; Dot2(ax,ay,bx,by)
  %7146 = call float @dx.op.dot2.f32(i32 54, float %7109, float %7110, float %7143, float %7144)  ; Dot2(ax,ay,bx,by)
  %7147 = fmul fast float %7146, 2.000000e+00
  %7148 = call float @dx.op.dot2.f32(i32 54, float %7143, float %7144, float %7143, float %7144)  ; Dot2(ax,ay,bx,by)
  %7149 = fmul fast float %7141, %7141
  %7150 = fsub fast float %7148, %7149
  %7151 = fmul fast float %7147, %7147
  %7152 = fmul fast float %7145, 4.000000e+00
  %7153 = fmul fast float %7152, %7150
  %7154 = fsub fast float %7151, %7153
  %7155 = fcmp fast ogt float %7154, 0.000000e+00
  br i1 %7155, label %7156, label %7171

; <label>:7156                                    ; preds = %7122
  %7157 = fcmp fast ogt float %7147, 0.000000e+00
  %7158 = call float @dx.op.unary.f32(i32 24, float %7154)  ; Sqrt(value)
  %7159 = fsub fast float -0.000000e+00, %7158
  %7160 = select i1 %7157, float %7158, float %7159
  %7161 = fadd fast float %7160, %7147
  %7162 = fmul float %7161, -5.000000e-01
  %7163 = fdiv fast float %7162, %7145
  %7164 = call float @dx.op.binary.f32(i32 35, float %7163, float 0.000000e+00)  ; FMax(a,b)
  %7165 = call float @dx.op.binary.f32(i32 36, float %7108, float %7164)  ; FMin(a,b)
  %7166 = fdiv fast float %7150, %7162
  %7167 = call float @dx.op.binary.f32(i32 35, float %7166, float 0.000000e+00)  ; FMax(a,b)
  %7168 = call float @dx.op.binary.f32(i32 36, float %7108, float %7167)  ; FMin(a,b)
  %7169 = call float @dx.op.binary.f32(i32 36, float %7165, float %7168)  ; FMin(a,b)
  %7170 = call float @dx.op.binary.f32(i32 35, float %7165, float %7168)  ; FMax(a,b)
  br label %7171

; <label>:7171                                    ; preds = %7156, %7122
  %7172 = phi float [ %7170, %7156 ], [ -1.000000e+00, %7122 ]
  %7173 = phi float [ %7169, %7156 ], [ -1.000000e+00, %7122 ]
  %7174 = phi i1 [ true, %7156 ], [ false, %7122 ]
  %7175 = and i1 %7142, %7174
  br i1 %7175, label %7176, label %7178

; <label>:7176                                    ; preds = %7171
  %7177 = fcmp fast oeq float %7173, %7172
  br i1 %7177, label %7481, label %7179

; <label>:7178                                    ; preds = %7171
  br i1 %7142, label %7481, label %7179

; <label>:7179                                    ; preds = %7178, %7176
  %7180 = phi float [ %7108, %7178 ], [ %7172, %7176 ]
  %7181 = phi float [ 0.000000e+00, %7178 ], [ %7173, %7176 ]
  %7182 = icmp ne i32 %7130, 0
  %7183 = fmul fast float %7180, %7111
  %7184 = fadd fast float %7183, %7124
  %7185 = fmul fast float %7184, %7180
  %7186 = select i1 %7182, float 0.000000e+00, float %7185
  %7187 = fcmp fast oeq float %7111, 0.000000e+00
  %7188 = fdiv fast float %7129, %7111
  %7189 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7188)  ; FMax(a,b)
  %7190 = select i1 %7187, float %7180, float %7189
  %7191 = call float @dx.op.binary.f32(i32 36, float %7180, float %7190)  ; FMin(a,b)
  %7192 = fcmp fast ogt float %7111, 0.000000e+00
  %7193 = fcmp fast olt float %7129, 0.000000e+00
  br i1 %7192, label %7194, label %7251

; <label>:7194                                    ; preds = %7179
  %7195 = icmp eq i32 %7130, 0
  br i1 %7193, label %7196, label %7240

; <label>:7196                                    ; preds = %7194
  %7197 = select i1 %7195, float %7180, float 0.000000e+00
  %7198 = fsub fast float -0.000000e+00, %7197
  %7199 = call float @dx.op.unary.f32(i32 6, float %7198)  ; FAbs(value)
  %7200 = fmul fast float %7197, %7111
  %7201 = fadd fast float %7200, %7124
  %7202 = fmul fast float %7199, %7201
  %7203 = fsub fast float %7186, %7202
  %7204 = fsub fast float %7180, %7199
  %7205 = select i1 %7195, float %7204, float 0.000000e+00
  %7206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7207 = extractvalue %dx.types.CBufRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.CBufRet.f32 %7206, 1
  %7209 = extractvalue %dx.types.CBufRet.f32 %7206, 2
  %7210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7211 = extractvalue %dx.types.CBufRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.CBufRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.CBufRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.CBufRet.f32 %7210, 3
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 3
  %7217 = call float @dx.op.binary.f32(i32 36, float %7203, float %7216)  ; FMin(a,b)
  %7218 = fmul fast float %7214, %7205
  %7219 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7220 = fsub fast float %7211, %7207
  %7221 = fsub fast float %7212, %7208
  %7222 = fsub fast float %7213, %7209
  %7223 = fmul fast float %7219, %7220
  %7224 = fmul fast float %7219, %7221
  %7225 = fmul fast float %7219, %7222
  %7226 = fadd fast float %7223, %7207
  %7227 = fadd fast float %7224, %7208
  %7228 = fadd fast float %7225, %7209
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = fadd fast float %7231, %7230
  %7233 = call float @dx.op.unary.f32(i32 7, float %7232)  ; Saturate(value)
  %7234 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7235 = extractvalue %dx.types.CBufRet.f32 %7229, 3
  %7236 = fadd fast float %7235, %7234
  %7237 = call float @dx.op.unary.f32(i32 7, float %7236)  ; Saturate(value)
  %7238 = fmul fast float %7233, %7217
  %7239 = fmul fast float %7238, %7237
  br label %7481

; <label>:7240                                    ; preds = %7194
  br i1 %7195, label %7241, label %7262

; <label>:7241                                    ; preds = %7240
  %7242 = call float @dx.op.binary.f32(i32 36, float %7191, float %7181)  ; FMin(a,b)
  %7243 = fsub fast float %7191, %7242
  %7244 = fsub fast float %7243, %7180
  %7245 = call float @dx.op.unary.f32(i32 6, float %7244)  ; FAbs(value)
  %7246 = fadd fast float %7243, %7180
  %7247 = fmul fast float %7246, %7111
  %7248 = fadd fast float %7247, %7124
  %7249 = fmul fast float %7248, %7245
  %7250 = fsub fast float %7186, %7249
  br label %7262

; <label>:7251                                    ; preds = %7179
  br i1 %7193, label %7252, label %7262

; <label>:7252                                    ; preds = %7251
  %7253 = call float @dx.op.binary.f32(i32 35, float %7181, float %7191)  ; FMax(a,b)
  %7254 = icmp eq i32 %7130, 0
  %7255 = select i1 %7254, float %7191, float 0.000000e+00
  %7256 = fsub fast float -0.000000e+00, %7255
  %7257 = call float @dx.op.unary.f32(i32 6, float %7256)  ; FAbs(value)
  %7258 = fmul fast float %7255, %7111
  %7259 = fadd fast float %7258, %7124
  %7260 = fmul fast float %7257, %7259
  %7261 = fsub fast float %7186, %7260
  br label %7262

; <label>:7262                                    ; preds = %7252, %7251, %7241, %7240
  %7263 = phi float [ %7181, %7240 ], [ %7181, %7241 ], [ %7253, %7252 ], [ %7181, %7251 ]
  %7264 = phi float [ 0.000000e+00, %7240 ], [ %7245, %7241 ], [ %7257, %7252 ], [ 0.000000e+00, %7251 ]
  %7265 = phi float [ %7186, %7240 ], [ %7250, %7241 ], [ %7261, %7252 ], [ %7186, %7251 ]
  %7266 = phi float [ %7191, %7240 ], [ %7191, %7241 ], [ %7180, %7252 ], [ %7180, %7251 ]
  %7267 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7267, align 4, !tbaa !122, !noalias !124
  %7268 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7268, align 4, !tbaa !122, !noalias !124
  %7269 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7269, align 4, !tbaa !122, !noalias !124
  %7270 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7270, align 4, !tbaa !122, !noalias !124
  %7271 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7271, align 4, !tbaa !122, !noalias !124
  %7272 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7272, align 4, !tbaa !122, !noalias !124
  %7273 = icmp sgt i32 %7132, 0
  br i1 %7273, label %7274, label %7335

; <label>:7274                                    ; preds = %7262
  br label %7275

; <label>:7275                                    ; preds = %7324, %7274
  %7276 = phi i32 [ %7325, %7324 ], [ 0, %7274 ]
  %7277 = phi i32 [ %7326, %7324 ], [ 0, %7274 ]
  %7278 = add nuw i32 %7277, 171
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7278)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7285 = fsub fast float %7280, %7283
  %7286 = fsub fast float %7281, %7284
  %7287 = extractvalue %dx.types.CBufRet.f32 %7279, 2
  %7288 = fsub fast float -0.000000e+00, %7285
  %7289 = fsub fast float -0.000000e+00, %7286
  %7290 = call float @dx.op.dot2.f32(i32 54, float %7109, float %7110, float %7288, float %7289)  ; Dot2(ax,ay,bx,by)
  %7291 = fmul fast float %7290, 2.000000e+00
  %7292 = call float @dx.op.dot2.f32(i32 54, float %7288, float %7289, float %7288, float %7289)  ; Dot2(ax,ay,bx,by)
  %7293 = fmul fast float %7287, %7287
  %7294 = fsub fast float %7292, %7293
  %7295 = fmul fast float %7291, %7291
  %7296 = fmul fast float %7152, %7294
  %7297 = fsub fast float %7295, %7296
  %7298 = fcmp fast ogt float %7297, 0.000000e+00
  br i1 %7298, label %7299, label %7314

; <label>:7299                                    ; preds = %7275
  %7300 = fcmp fast ogt float %7291, 0.000000e+00
  %7301 = call float @dx.op.unary.f32(i32 24, float %7297)  ; Sqrt(value)
  %7302 = fsub fast float -0.000000e+00, %7301
  %7303 = select i1 %7300, float %7301, float %7302
  %7304 = fadd fast float %7303, %7291
  %7305 = fmul float %7304, -5.000000e-01
  %7306 = fdiv fast float %7305, %7145
  %7307 = call float @dx.op.binary.f32(i32 35, float %7306, float 0.000000e+00)  ; FMax(a,b)
  %7308 = call float @dx.op.binary.f32(i32 36, float %7180, float %7307)  ; FMin(a,b)
  %7309 = fdiv fast float %7294, %7305
  %7310 = call float @dx.op.binary.f32(i32 35, float %7309, float 0.000000e+00)  ; FMax(a,b)
  %7311 = call float @dx.op.binary.f32(i32 36, float %7180, float %7310)  ; FMin(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7308, float %7311)  ; FMin(a,b)
  %7313 = call float @dx.op.binary.f32(i32 35, float %7308, float %7311)  ; FMax(a,b)
  br label %7314

; <label>:7314                                    ; preds = %7299, %7275
  %7315 = phi float [ %7313, %7299 ], [ -1.000000e+00, %7275 ]
  %7316 = phi float [ %7312, %7299 ], [ -1.000000e+00, %7275 ]
  %7317 = phi i1 [ true, %7299 ], [ false, %7275 ]
  br i1 %7317, label %7318, label %7324

; <label>:7318                                    ; preds = %7314
  %7319 = call float @dx.op.binary.f32(i32 35, float %7263, float %7316)  ; FMax(a,b)
  %7320 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7277
  store float %7319, float* %7320, align 4, !tbaa !122, !noalias !124
  %7321 = call float @dx.op.binary.f32(i32 35, float %7263, float %7315)  ; FMax(a,b)
  %7322 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7277
  store float %7321, float* %7322, align 4, !tbaa !122, !noalias !124
  %7323 = add nsw i32 %7276, 1
  br label %7324

; <label>:7324                                    ; preds = %7318, %7314
  %7325 = phi i32 [ %7323, %7318 ], [ %7276, %7314 ]
  %7326 = add nuw nsw i32 %7277, 1
  %7327 = icmp eq i32 %7326, %7132
  br i1 %7327, label %7328, label %7275

; <label>:7328                                    ; preds = %7324
  %7329 = load float, float* %7269, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %7330 = load float, float* %7268, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  %7331 = load float, float* %7267, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  %7332 = load float, float* %7272, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %7333 = load float, float* %7271, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  %7334 = load float, float* %7270, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  br label %7335

; <label>:7335                                    ; preds = %7328, %7262
  %7336 = phi float [ -1.000000e+00, %7262 ], [ %7334, %7328 ]
  %7337 = phi float [ -1.000000e+00, %7262 ], [ %7333, %7328 ]
  %7338 = phi float [ -1.000000e+00, %7262 ], [ %7332, %7328 ]
  %7339 = phi float [ -1.000000e+00, %7262 ], [ %7331, %7328 ]
  %7340 = phi float [ -1.000000e+00, %7262 ], [ %7330, %7328 ]
  %7341 = phi float [ -1.000000e+00, %7262 ], [ %7329, %7328 ]
  %7342 = phi i32 [ 0, %7262 ], [ %7325, %7328 ]
  %7343 = call float @dx.op.binary.f32(i32 36, float %7340, float %7341)  ; FMin(a,b)
  %7344 = call float @dx.op.binary.f32(i32 36, float %7339, float %7343)  ; FMin(a,b)
  %7345 = call float @dx.op.binary.f32(i32 35, float %7339, float %7340)  ; FMax(a,b)
  %7346 = call float @dx.op.binary.f32(i32 36, float %7345, float %7341)  ; FMin(a,b)
  %7347 = call float @dx.op.binary.f32(i32 36, float %7339, float %7340)  ; FMin(a,b)
  %7348 = call float @dx.op.binary.f32(i32 35, float %7347, float %7346)  ; FMax(a,b)
  %7349 = call float @dx.op.binary.f32(i32 35, float %7340, float %7341)  ; FMax(a,b)
  %7350 = call float @dx.op.binary.f32(i32 35, float %7339, float %7349)  ; FMax(a,b)
  store float %7344, float* %7267, align 4, !tbaa !122, !alias.scope !148, !noalias !149
  store float %7348, float* %7268, align 4, !tbaa !122, !alias.scope !146, !noalias !147
  store float %7350, float* %7269, align 4, !tbaa !122, !alias.scope !140, !noalias !143
  %7351 = call float @dx.op.binary.f32(i32 36, float %7337, float %7338)  ; FMin(a,b)
  %7352 = call float @dx.op.binary.f32(i32 36, float %7336, float %7351)  ; FMin(a,b)
  %7353 = call float @dx.op.binary.f32(i32 35, float %7336, float %7337)  ; FMax(a,b)
  %7354 = call float @dx.op.binary.f32(i32 36, float %7353, float %7338)  ; FMin(a,b)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7336, float %7337)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 35, float %7355, float %7354)  ; FMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7337, float %7338)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7336, float %7357)  ; FMax(a,b)
  store float %7352, float* %7270, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %7356, float* %7271, align 4, !tbaa !122, !alias.scope !156, !noalias !157
  store float %7358, float* %7272, align 4, !tbaa !122, !alias.scope !150, !noalias !153
  %7359 = sub nsw i32 3, %7342
  %7360 = icmp sgt i32 %7359, 2
  br i1 %7360, label %7361, label %7399

; <label>:7361                                    ; preds = %7335
  %7362 = icmp eq i32 %7130, 0
  %7363 = fsub fast float %7180, %7264
  %7364 = select i1 %7362, float %7363, float %7264
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7372 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7373 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 3
  %7376 = call float @dx.op.binary.f32(i32 36, float %7265, float %7375)  ; FMin(a,b)
  %7377 = fmul fast float %7373, %7364
  %7378 = call float @dx.op.unary.f32(i32 7, float %7377)  ; Saturate(value)
  %7379 = fsub fast float %7370, %7366
  %7380 = fsub fast float %7371, %7367
  %7381 = fsub fast float %7372, %7368
  %7382 = fmul fast float %7378, %7379
  %7383 = fmul fast float %7378, %7380
  %7384 = fmul fast float %7378, %7381
  %7385 = fadd fast float %7382, %7366
  %7386 = fadd fast float %7383, %7367
  %7387 = fadd fast float %7384, %7368
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 1
  %7391 = fadd fast float %7390, %7389
  %7392 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7388, 2
  %7394 = extractvalue %dx.types.CBufRet.f32 %7388, 3
  %7395 = fadd fast float %7394, %7393
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = fmul fast float %7392, %7376
  %7398 = fmul fast float %7397, %7396
  br label %7481

; <label>:7399                                    ; preds = %7335
  %7400 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7359
  %7401 = load float, float* %7400, align 4, !tbaa !122, !noalias !124
  %7402 = fcmp fast olt float %7401, %7266
  %7403 = icmp sgt i32 %7342, 0
  %7404 = and i1 %7403, %7402
  br i1 %7404, label %7405, label %7442

; <label>:7405                                    ; preds = %7399
  br label %7406

; <label>:7406                                    ; preds = %7435, %7405
  %7407 = phi float [ %7436, %7435 ], [ %7264, %7405 ]
  %7408 = phi float [ %7437, %7435 ], [ %7265, %7405 ]
  %7409 = phi float [ %7417, %7435 ], [ %7401, %7405 ]
  %7410 = phi i32 [ %7414, %7435 ], [ %7359, %7405 ]
  %7411 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7410
  %7412 = load float, float* %7411, align 4, !tbaa !122, !noalias !124
  %7413 = icmp slt i32 %7410, 2
  %7414 = add nsw i32 %7410, 1
  %7415 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7414
  %7416 = load float, float* %7415, align 4, !tbaa !122, !noalias !124
  %7417 = select i1 %7413, float %7416, float %7180
  %7418 = call float @dx.op.binary.f32(i32 36, float %7417, float %7412)  ; FMin(a,b)
  %7419 = call float @dx.op.binary.f32(i32 36, float %7266, float %7418)  ; FMin(a,b)
  %7420 = icmp eq i32 %7130, 0
  %7421 = fadd fast float %7419, %7409
  %7422 = fmul fast float %7421, %7111
  %7423 = fadd fast float %7422, %7124
  br i1 %7420, label %7429, label %7424

; <label>:7424                                    ; preds = %7406
  %7425 = fsub fast float %7419, %7409
  %7426 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7425)  ; FMax(a,b)
  %7427 = fmul fast float %7426, %7423
  %7428 = fadd fast float %7427, %7408
  br label %7435

; <label>:7429                                    ; preds = %7406
  %7430 = fsub fast float %7409, %7419
  %7431 = call float @dx.op.unary.f32(i32 6, float %7430)  ; FAbs(value)
  %7432 = fadd fast float %7431, %7407
  %7433 = fmul fast float %7431, %7423
  %7434 = fsub fast float %7408, %7433
  br label %7435

; <label>:7435                                    ; preds = %7429, %7424
  %7436 = phi float [ %7426, %7424 ], [ %7432, %7429 ]
  %7437 = phi float [ %7428, %7424 ], [ %7434, %7429 ]
  %7438 = fcmp fast olt float %7417, %7266
  %7439 = icmp slt i32 %7414, 3
  %7440 = and i1 %7439, %7438
  br i1 %7440, label %7406, label %7441

; <label>:7441                                    ; preds = %7435
  br label %7442

; <label>:7442                                    ; preds = %7441, %7399
  %7443 = phi float [ %7264, %7399 ], [ %7436, %7441 ]
  %7444 = phi float [ %7265, %7399 ], [ %7437, %7441 ]
  %7445 = fsub fast float %7180, %7443
  %7446 = select i1 %7182, float %7443, float %7445
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.CBufRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.CBufRet.f32 %7447, 2
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7455 = extractvalue %dx.types.CBufRet.f32 %7451, 3
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 3
  %7458 = call float @dx.op.binary.f32(i32 36, float %7444, float %7457)  ; FMin(a,b)
  %7459 = fmul fast float %7455, %7446
  %7460 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7461 = fsub fast float %7452, %7448
  %7462 = fsub fast float %7453, %7449
  %7463 = fsub fast float %7454, %7450
  %7464 = fmul fast float %7460, %7461
  %7465 = fmul fast float %7460, %7462
  %7466 = fmul fast float %7460, %7463
  %7467 = fadd fast float %7464, %7448
  %7468 = fadd fast float %7465, %7449
  %7469 = fadd fast float %7466, %7450
  %7470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.CBufRet.f32 %7470, 1
  %7473 = fadd fast float %7472, %7471
  %7474 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7470, 2
  %7476 = extractvalue %dx.types.CBufRet.f32 %7470, 3
  %7477 = fadd fast float %7476, %7475
  %7478 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  %7479 = fmul fast float %7474, %7458
  %7480 = fmul fast float %7479, %7478
  br label %7481

; <label>:7481                                    ; preds = %7442, %7361, %7196, %7178, %7176
  %7482 = phi float [ %7205, %7196 ], [ %7364, %7361 ], [ %7446, %7442 ], [ 0.000000e+00, %7176 ], [ 0.000000e+00, %7178 ]
  %7483 = phi float [ %7239, %7196 ], [ %7398, %7361 ], [ %7480, %7442 ], [ 0.000000e+00, %7176 ], [ 0.000000e+00, %7178 ]
  %7484 = phi float [ %7226, %7196 ], [ %7385, %7361 ], [ %7467, %7442 ], [ 0.000000e+00, %7176 ], [ 0.000000e+00, %7178 ]
  %7485 = phi float [ %7227, %7196 ], [ %7386, %7361 ], [ %7468, %7442 ], [ 0.000000e+00, %7176 ], [ 0.000000e+00, %7178 ]
  %7486 = phi float [ %7228, %7196 ], [ %7387, %7361 ], [ %7469, %7442 ], [ 0.000000e+00, %7176 ], [ 0.000000e+00, %7178 ]
  %7487 = fmul fast float %7119, %7483
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %7490 = fsub fast float %7126, %7489
  %7491 = fcmp fast olt float %7487, -2.000000e+01
  %7492 = call float @dx.op.unary.f32(i32 21, float %7487)  ; Exp(value)
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7498 = fmul fast float %7495, %7490
  %7499 = call float @dx.op.unary.f32(i32 7, float %7498)  ; Saturate(value)
  %7500 = fsub fast float 1.000000e+00, %7499
  %7501 = fmul fast float %7111, 5.000000e-01
  %7502 = fadd fast float %7501, 5.000000e-01
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  %7504 = fsub fast float 1.000000e+00, %7503
  %7505 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7500)  ; FMax(a,b)
  %7506 = fdiv fast float %7504, %7505
  %7507 = fsub fast float %7490, %7068
  %7508 = call float @dx.op.unary.f32(i32 6, float %7507)  ; FAbs(value)
  %7509 = fmul fast float %7508, %7494
  %7510 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7511 = fsub fast float 1.000000e+00, %7509
  %7512 = fmul fast float %7511, %7510
  %7513 = fadd fast float %7512, %7509
  %7514 = fmul fast float %7497, %7490
  %7515 = call float @dx.op.unary.f32(i32 7, float %7514)  ; Saturate(value)
  %7516 = fsub fast float 1.000000e+00, %7513
  %7517 = fmul fast float %7516, %7515
  %7518 = fadd fast float %7517, %7513
  %7519 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7520 = fadd fast float %7492, -1.000000e+00
  %7521 = select i1 %7491, float -1.000000e+00, float %7520
  %7522 = fmul fast float %7519, %7521
  %7523 = fadd fast float %7522, 1.000000e+00
  %7524 = fsub fast float -0.000000e+00, %7522
  %7525 = fmul fast float %7484, %7524
  %7526 = fmul fast float %7485, %7524
  %7527 = fmul fast float %7486, %7524
  br label %7528

; <label>:7528                                    ; preds = %7481, %7077
  %7529 = phi float [ %7482, %7481 ], [ 0.000000e+00, %7077 ]
  %7530 = phi float [ %7523, %7481 ], [ 1.000000e+00, %7077 ]
  %7531 = phi float [ %7525, %7481 ], [ 0.000000e+00, %7077 ]
  %7532 = phi float [ %7526, %7481 ], [ 0.000000e+00, %7077 ]
  %7533 = phi float [ %7527, %7481 ], [ 0.000000e+00, %7077 ]
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7536 = fsub fast float 1.000000e+00, %7530
  %7537 = fmul fast float %7536, %7112
  %7538 = fmul fast float %7537, %7535
  %7539 = fsub fast float %7112, %7538
  br i1 %7105, label %7540, label %7569, !dx.controlflow.hints !160

; <label>:7540                                    ; preds = %7528
  %7541 = fmul fast float %7113, %7102
  %7542 = fadd fast float %7541, %7103
  %7543 = call float @dx.op.unary.f32(i32 7, float %7542)  ; Saturate(value)
  %7544 = fmul fast float %7084, %7539
  %7545 = fsub fast float -0.000000e+00, %7544
  %7546 = fmul fast float %7085, %7539
  %7547 = fsub fast float -0.000000e+00, %7546
  %7548 = call float @dx.op.unary.f32(i32 21, float %7545)  ; Exp(value)
  %7549 = call float @dx.op.unary.f32(i32 21, float %7547)  ; Exp(value)
  %7550 = call float @dx.op.binary.f32(i32 35, float %7092, float %7548)  ; FMax(a,b)
  %7551 = call float @dx.op.binary.f32(i32 35, float %7092, float %7549)  ; FMax(a,b)
  %7552 = fsub fast float %7551, %7550
  %7553 = fmul fast float %7552, %7543
  %7554 = fadd fast float %7553, %7550
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = fsub fast float %7089, %7094
  %7557 = fsub fast float %7090, %7095
  %7558 = fsub fast float %7091, %7096
  %7559 = fmul fast float %7543, %7556
  %7560 = fmul fast float %7543, %7557
  %7561 = fmul fast float %7543, %7558
  %7562 = fadd fast float %7559, %7094
  %7563 = fadd fast float %7560, %7095
  %7564 = fadd fast float %7561, %7096
  %7565 = fsub fast float 1.000000e+00, %7555
  %7566 = fmul fast float %7565, %7562
  %7567 = fmul fast float %7565, %7563
  %7568 = fmul fast float %7565, %7564
  br label %7628

; <label>:7569                                    ; preds = %7528
  %7570 = fmul fast float %7539, %7101
  %7571 = call float @dx.op.unary.f32(i32 7, float %7570)  ; Saturate(value)
  %7572 = fsub fast float 2.000000e+00, %7571
  %7573 = fmul fast float %7571, 9.921875e-01
  %7574 = fmul fast float %7573, %7572
  %7575 = fadd fast float %7574, 3.906250e-03
  %7576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7575, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7577 = extractvalue %dx.types.ResRet.f32 %7576, 0
  %7578 = fsub fast float %7571, %7577
  %7579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7578)  ; FMax(a,b)
  %7580 = fmul fast float %7087, %7068
  %7581 = call float @dx.op.unary.f32(i32 6, float %7580)  ; FAbs(value)
  %7582 = fcmp fast ogt float %7581, 0x3EB0C6F7A0000000
  br i1 %7582, label %7583, label %7589, !dx.controlflow.hints !161

; <label>:7583                                    ; preds = %7569
  %7584 = fmul fast float %7580, 0xBFF7154760000000
  %7585 = call float @dx.op.unary.f32(i32 21, float %7584)  ; Exp(value)
  %7586 = fsub fast float 1.000000e+00, %7585
  %7587 = fdiv fast float %7586, %7580
  %7588 = fmul fast float %7587, %7097
  br label %7589

; <label>:7589                                    ; preds = %7583, %7569
  %7590 = phi float [ %7588, %7583 ], [ %7097, %7569 ]
  %7591 = fadd fast float %7590, %7099
  %7592 = fmul fast float %7591, %7579
  %7593 = fmul fast float %7084, %7592
  %7594 = fsub fast float -0.000000e+00, %7593
  %7595 = fmul fast float %7085, %7592
  %7596 = fsub fast float -0.000000e+00, %7595
  %7597 = fmul fast float %7086, %7592
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = call float @dx.op.unary.f32(i32 21, float %7594)  ; Exp(value)
  %7600 = call float @dx.op.unary.f32(i32 21, float %7596)  ; Exp(value)
  %7601 = call float @dx.op.unary.f32(i32 21, float %7598)  ; Exp(value)
  %7602 = fmul fast float %7113, %7113
  %7603 = fadd fast float %7602, 1.000000e+00
  %7604 = fmul fast float %7603, 0x3FAE8EC8A0000000
  %7605 = fmul fast float %7604, %7094
  %7606 = fmul fast float %7604, %7095
  %7607 = fmul fast float %7604, %7096
  %7608 = fmul fast float %7113, %7092
  %7609 = fsub fast float 1.000000e+00, %7608
  %7610 = fmul fast float %7092, %7092
  %7611 = fsub fast float 1.000000e+00, %7610
  %7612 = fmul fast float %7611, 0x3FB45F3060000000
  %7613 = fmul fast float %7609, %7609
  %7614 = fdiv fast float 1.000000e+00, %7613
  %7615 = fmul fast float %7612, %7614
  %7616 = fmul fast float %7615, %7089
  %7617 = fmul fast float %7615, %7090
  %7618 = fmul fast float %7615, %7091
  %7619 = fadd fast float %7616, %7605
  %7620 = fadd fast float %7617, %7606
  %7621 = fadd fast float %7618, %7607
  %7622 = fsub fast float 1.000000e+00, %7599
  %7623 = fsub fast float 1.000000e+00, %7600
  %7624 = fsub fast float 1.000000e+00, %7601
  %7625 = fmul fast float %7619, %7622
  %7626 = fmul fast float %7620, %7623
  %7627 = fmul fast float %7621, %7624
  br label %7628

; <label>:7628                                    ; preds = %7589, %7540
  %7629 = phi float [ %7566, %7540 ], [ %7625, %7589 ]
  %7630 = phi float [ %7567, %7540 ], [ %7626, %7589 ]
  %7631 = phi float [ %7568, %7540 ], [ %7627, %7589 ]
  %7632 = phi float [ %7555, %7540 ], [ %7599, %7589 ]
  %7633 = phi float [ %7555, %7540 ], [ %7600, %7589 ]
  %7634 = phi float [ %7555, %7540 ], [ %7601, %7589 ]
  br i1 %7121, label %7635, label %7833, !dx.controlflow.hints !162

; <label>:7635                                    ; preds = %7628
  %7636 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7637 = fmul fast float %7636, %7536
  %7638 = fsub fast float %7531, %7629
  %7639 = fsub fast float %7532, %7630
  %7640 = fsub fast float %7533, %7631
  %7641 = fmul fast float %7637, %7638
  %7642 = fmul fast float %7637, %7639
  %7643 = fmul fast float %7637, %7640
  %7644 = fadd fast float %7641, %7629
  %7645 = fadd fast float %7642, %7630
  %7646 = fadd fast float %7643, %7631
  %7647 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7632)  ; FMax(a,b)
  %7648 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7633)  ; FMax(a,b)
  %7649 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7634)  ; FMax(a,b)
  %7650 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7530)  ; FMax(a,b)
  %7651 = call float @dx.op.binary.f32(i32 35, float %7529, float %7539)  ; FMax(a,b)
  %7652 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7651)  ; FMax(a,b)
  %7653 = fdiv fast float %7529, %7652
  %7654 = call float @dx.op.unary.f32(i32 7, float %7653)  ; Saturate(value)
  %7655 = fdiv fast float %7539, %7652
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = fcmp fast une float %7650, 1.000000e+00
  br i1 %7657, label %7658, label %7671, !dx.controlflow.hints !163

; <label>:7658                                    ; preds = %7635
  %7659 = call float @dx.op.unary.f32(i32 23, float %7650)  ; Log(value)
  %7660 = fmul fast float %7659, 0x3FE62E4300000000
  %7661 = fmul fast float %7531, %7660
  %7662 = fsub fast float -0.000000e+00, %7661
  %7663 = fmul fast float %7532, %7660
  %7664 = fsub fast float -0.000000e+00, %7663
  %7665 = fmul fast float %7533, %7660
  %7666 = fsub fast float -0.000000e+00, %7665
  %7667 = fsub fast float 1.000000e+00, %7650
  %7668 = fdiv fast float %7662, %7667
  %7669 = fdiv fast float %7664, %7667
  %7670 = fdiv fast float %7666, %7667
  br label %7671

; <label>:7671                                    ; preds = %7658, %7635
  %7672 = phi float [ %7668, %7658 ], [ %7531, %7635 ]
  %7673 = phi float [ %7669, %7658 ], [ %7532, %7635 ]
  %7674 = phi float [ %7670, %7658 ], [ %7533, %7635 ]
  %7675 = phi float [ %7660, %7658 ], [ 0.000000e+00, %7635 ]
  %7676 = fcmp fast une float %7647, 1.000000e+00
  br i1 %7676, label %7677, label %7684, !dx.controlflow.hints !164

; <label>:7677                                    ; preds = %7671
  %7678 = call float @dx.op.unary.f32(i32 23, float %7647)  ; Log(value)
  %7679 = fmul fast float %7678, 0x3FE62E4300000000
  %7680 = fmul fast float %7644, %7679
  %7681 = fsub fast float -0.000000e+00, %7680
  %7682 = fsub fast float 1.000000e+00, %7647
  %7683 = fdiv fast float %7681, %7682
  br label %7684

; <label>:7684                                    ; preds = %7677, %7671
  %7685 = phi float [ %7683, %7677 ], [ %7644, %7671 ]
  %7686 = phi float [ %7679, %7677 ], [ 0.000000e+00, %7671 ]
  %7687 = fcmp fast une float %7648, 1.000000e+00
  br i1 %7687, label %7688, label %7695, !dx.controlflow.hints !164

; <label>:7688                                    ; preds = %7684
  %7689 = call float @dx.op.unary.f32(i32 23, float %7648)  ; Log(value)
  %7690 = fmul fast float %7689, 0x3FE62E4300000000
  %7691 = fmul fast float %7645, %7690
  %7692 = fsub fast float -0.000000e+00, %7691
  %7693 = fsub fast float 1.000000e+00, %7648
  %7694 = fdiv fast float %7692, %7693
  br label %7695

; <label>:7695                                    ; preds = %7688, %7684
  %7696 = phi float [ %7694, %7688 ], [ %7645, %7684 ]
  %7697 = phi float [ %7690, %7688 ], [ 0.000000e+00, %7684 ]
  %7698 = fcmp fast une float %7649, 1.000000e+00
  br i1 %7698, label %7699, label %7706, !dx.controlflow.hints !164

; <label>:7699                                    ; preds = %7695
  %7700 = call float @dx.op.unary.f32(i32 23, float %7649)  ; Log(value)
  %7701 = fmul fast float %7700, 0x3FE62E4300000000
  %7702 = fmul fast float %7646, %7701
  %7703 = fsub fast float -0.000000e+00, %7702
  %7704 = fsub fast float 1.000000e+00, %7649
  %7705 = fdiv fast float %7703, %7704
  br label %7706

; <label>:7706                                    ; preds = %7699, %7695
  %7707 = phi float [ %7705, %7699 ], [ %7646, %7695 ]
  %7708 = phi float [ %7701, %7699 ], [ 0.000000e+00, %7695 ]
  %7709 = fmul fast float %7672, %7656
  %7710 = fmul fast float %7673, %7656
  %7711 = fmul fast float %7674, %7656
  %7712 = fmul fast float %7675, %7656
  %7713 = fmul fast float %7685, %7654
  %7714 = fmul fast float %7696, %7654
  %7715 = fmul fast float %7707, %7654
  %7716 = fmul fast float %7686, %7654
  %7717 = fmul fast float %7697, %7654
  %7718 = fmul fast float %7708, %7654
  %7719 = fadd fast float %7713, %7709
  %7720 = fadd fast float %7714, %7710
  %7721 = fadd fast float %7715, %7711
  %7722 = fadd fast float %7716, %7712
  %7723 = fadd fast float %7717, %7712
  %7724 = fadd fast float %7718, %7712
  %7725 = fcmp fast une float %7722, 0.000000e+00
  br i1 %7725, label %7726, label %7733, !dx.controlflow.hints !165

; <label>:7726                                    ; preds = %7706
  %7727 = fmul fast float %7722, 0x3FF7154760000000
  %7728 = call float @dx.op.unary.f32(i32 21, float %7727)  ; Exp(value)
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = fmul fast float %7719, %7729
  %7731 = fsub fast float -0.000000e+00, %7730
  %7732 = fdiv fast float %7731, %7722
  br label %7733

; <label>:7733                                    ; preds = %7726, %7706
  %7734 = phi float [ %7728, %7726 ], [ 1.000000e+00, %7706 ]
  %7735 = phi float [ %7732, %7726 ], [ %7719, %7706 ]
  %7736 = fcmp fast une float %7723, 0.000000e+00
  br i1 %7736, label %7737, label %7744, !dx.controlflow.hints !165

; <label>:7737                                    ; preds = %7733
  %7738 = fmul fast float %7723, 0x3FF7154760000000
  %7739 = call float @dx.op.unary.f32(i32 21, float %7738)  ; Exp(value)
  %7740 = fsub fast float 1.000000e+00, %7739
  %7741 = fmul fast float %7720, %7740
  %7742 = fsub fast float -0.000000e+00, %7741
  %7743 = fdiv fast float %7742, %7723
  br label %7744

; <label>:7744                                    ; preds = %7737, %7733
  %7745 = phi float [ %7739, %7737 ], [ 1.000000e+00, %7733 ]
  %7746 = phi float [ %7743, %7737 ], [ %7720, %7733 ]
  %7747 = fcmp fast une float %7724, 0.000000e+00
  br i1 %7747, label %7748, label %7755, !dx.controlflow.hints !165

; <label>:7748                                    ; preds = %7744
  %7749 = fmul fast float %7724, 0x3FF7154760000000
  %7750 = call float @dx.op.unary.f32(i32 21, float %7749)  ; Exp(value)
  %7751 = fsub fast float 1.000000e+00, %7750
  %7752 = fmul fast float %7721, %7751
  %7753 = fsub fast float -0.000000e+00, %7752
  %7754 = fdiv fast float %7753, %7724
  br label %7755

; <label>:7755                                    ; preds = %7748, %7744
  %7756 = phi float [ %7750, %7748 ], [ 1.000000e+00, %7744 ]
  %7757 = phi float [ %7754, %7748 ], [ %7721, %7744 ]
  %7758 = fcmp fast ogt float %7654, %7656
  br i1 %7758, label %7759, label %7779

; <label>:7759                                    ; preds = %7755
  %7760 = fsub fast float 1.000000e+00, %7656
  %7761 = fmul fast float %7672, %7760
  %7762 = fmul fast float %7673, %7760
  %7763 = fmul fast float %7674, %7760
  %7764 = fmul fast float %7675, %7760
  %7765 = fcmp fast une float %7764, 0.000000e+00
  br i1 %7765, label %7766, label %7817, !dx.controlflow.hints !166

; <label>:7766                                    ; preds = %7759
  %7767 = fmul fast float %7764, 0x3FF7154760000000
  %7768 = call float @dx.op.unary.f32(i32 21, float %7767)  ; Exp(value)
  %7769 = fsub fast float 1.000000e+00, %7768
  %7770 = fmul fast float %7761, %7769
  %7771 = fsub fast float -0.000000e+00, %7770
  %7772 = fmul fast float %7762, %7769
  %7773 = fsub fast float -0.000000e+00, %7772
  %7774 = fmul fast float %7763, %7769
  %7775 = fsub fast float -0.000000e+00, %7774
  %7776 = fdiv fast float %7771, %7764
  %7777 = fdiv fast float %7773, %7764
  %7778 = fdiv fast float %7775, %7764
  br label %7817

; <label>:7779                                    ; preds = %7755
  %7780 = fsub fast float 1.000000e+00, %7654
  %7781 = fmul fast float %7685, %7780
  %7782 = fmul fast float %7696, %7780
  %7783 = fmul fast float %7707, %7780
  %7784 = fmul fast float %7686, %7780
  %7785 = fmul fast float %7697, %7780
  %7786 = fmul fast float %7708, %7780
  %7787 = fcmp fast une float %7784, 0.000000e+00
  br i1 %7787, label %7788, label %7795, !dx.controlflow.hints !165

; <label>:7788                                    ; preds = %7779
  %7789 = fmul fast float %7784, 0x3FF7154760000000
  %7790 = call float @dx.op.unary.f32(i32 21, float %7789)  ; Exp(value)
  %7791 = fsub fast float 1.000000e+00, %7790
  %7792 = fmul fast float %7781, %7791
  %7793 = fsub fast float -0.000000e+00, %7792
  %7794 = fdiv fast float %7793, %7784
  br label %7795

; <label>:7795                                    ; preds = %7788, %7779
  %7796 = phi float [ %7794, %7788 ], [ %7781, %7779 ]
  %7797 = phi float [ %7790, %7788 ], [ 1.000000e+00, %7779 ]
  %7798 = fcmp fast une float %7785, 0.000000e+00
  br i1 %7798, label %7799, label %7806, !dx.controlflow.hints !165

; <label>:7799                                    ; preds = %7795
  %7800 = fmul fast float %7785, 0x3FF7154760000000
  %7801 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7802 = fsub fast float 1.000000e+00, %7801
  %7803 = fmul fast float %7782, %7802
  %7804 = fsub fast float -0.000000e+00, %7803
  %7805 = fdiv fast float %7804, %7785
  br label %7806

; <label>:7806                                    ; preds = %7799, %7795
  %7807 = phi float [ %7805, %7799 ], [ %7782, %7795 ]
  %7808 = phi float [ %7801, %7799 ], [ 1.000000e+00, %7795 ]
  %7809 = fcmp fast une float %7786, 0.000000e+00
  br i1 %7809, label %7810, label %7817, !dx.controlflow.hints !165

; <label>:7810                                    ; preds = %7806
  %7811 = fmul fast float %7786, 0x3FF7154760000000
  %7812 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7813 = fsub fast float 1.000000e+00, %7812
  %7814 = fmul fast float %7783, %7813
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = fdiv fast float %7815, %7786
  br label %7817

; <label>:7817                                    ; preds = %7810, %7806, %7766, %7759
  %7818 = phi float [ %7816, %7810 ], [ %7778, %7766 ], [ %7763, %7759 ], [ %7783, %7806 ]
  %7819 = phi float [ %7807, %7810 ], [ %7777, %7766 ], [ %7762, %7759 ], [ %7807, %7806 ]
  %7820 = phi float [ %7796, %7810 ], [ %7776, %7766 ], [ %7761, %7759 ], [ %7796, %7806 ]
  %7821 = phi float [ %7812, %7810 ], [ %7768, %7766 ], [ 1.000000e+00, %7759 ], [ 1.000000e+00, %7806 ]
  %7822 = phi float [ %7808, %7810 ], [ %7768, %7766 ], [ 1.000000e+00, %7759 ], [ %7808, %7806 ]
  %7823 = phi float [ %7797, %7810 ], [ %7768, %7766 ], [ 1.000000e+00, %7759 ], [ %7797, %7806 ]
  %7824 = fmul fast float %7823, %7735
  %7825 = fmul fast float %7822, %7746
  %7826 = fmul fast float %7821, %7757
  %7827 = fadd fast float %7824, %7820
  %7828 = fadd fast float %7825, %7819
  %7829 = fadd fast float %7826, %7818
  %7830 = fmul fast float %7823, %7734
  %7831 = fmul fast float %7822, %7745
  %7832 = fmul fast float %7821, %7756
  br label %7833

; <label>:7833                                    ; preds = %7817, %7628
  %7834 = phi float [ %7832, %7817 ], [ %7634, %7628 ]
  %7835 = phi float [ %7831, %7817 ], [ %7633, %7628 ]
  %7836 = phi float [ %7830, %7817 ], [ %7632, %7628 ]
  %7837 = phi float [ %7829, %7817 ], [ %7631, %7628 ]
  %7838 = phi float [ %7828, %7817 ], [ %7630, %7628 ]
  %7839 = phi float [ %7827, %7817 ], [ %7629, %7628 ]
  %7840 = fmul fast float %7839, %6785
  %7841 = fmul fast float %7838, %6785
  %7842 = fmul fast float %7837, %6785
  %7843 = fmul fast float %7836, %7076
  %7844 = call float @dx.op.dot3.f32(i32 55, float %7836, float %7835, float %7834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = call float @dx.op.dot3.f32(i32 55, float %7840, float %7841, float %7842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = select i1 %220, float %7844, float %7836
  %7847 = select i1 %220, float %7844, float %7835
  %7848 = select i1 %220, float 1.000000e+00, float %7834
  %7849 = select i1 %220, float %7845, float %7840
  %7850 = select i1 %220, float 0.000000e+00, float %7841
  %7851 = select i1 %220, float 0.000000e+00, float %7842
  %7852 = fmul fast float %7846, %7070
  %7853 = fmul fast float %7847, %7071
  %7854 = fmul fast float %7848, %7072
  %7855 = fadd fast float %7852, %7849
  %7856 = fadd fast float %7853, %7850
  %7857 = fadd fast float %7851, %7854
  %7858 = fmul fast float %7846, %7073
  %7859 = fmul fast float %7847, %7074
  %7860 = fmul fast float %7848, %7075
  %7861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.i32 %7861, 0
  %7863 = icmp eq i32 %7862, 0
  br i1 %7863, label %8231, label %7864, !dx.controlflow.hints !167

; <label>:7864                                    ; preds = %7833
  %7865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7866 = extractvalue %dx.types.CBufRet.f32 %7865, 2
  %7867 = extractvalue %dx.types.CBufRet.f32 %7865, 3
  %7868 = fmul fast float %7866, %95
  %7869 = fmul fast float %7867, %96
  %7870 = fmul fast float %7868, 2.000000e+00
  %7871 = fmul fast float %7869, 2.000000e+00
  %7872 = fsub fast float 1.000000e+00, %7870
  %7873 = fsub fast float 1.000000e+00, %7871
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = fmul fast float %7872, %7875
  %7879 = fmul fast float %7872, %7876
  %7880 = fmul fast float %7872, %7877
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7885 = fmul fast float %7873, %7882
  %7886 = fmul fast float %7873, %7883
  %7887 = fmul fast float %7873, %7884
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.CBufRet.f32 %7888, 2
  %7892 = fadd fast float %7885, %7889
  %7893 = fadd fast float %7892, %7878
  %7894 = fadd fast float %7886, %7890
  %7895 = fadd fast float %7894, %7879
  %7896 = fadd fast float %7887, %7891
  %7897 = fadd fast float %7896, %7880
  %7898 = fmul fast float %7893, %7069
  %7899 = fmul fast float %7895, %7069
  %7900 = fmul fast float %7897, %7069
  %7901 = fmul fast float %7898, %7898
  %7902 = fmul fast float %7899, %7899
  %7903 = fadd fast float %7901, %7902
  %7904 = fmul fast float %7900, %7900
  %7905 = fadd fast float %7903, %7904
  %7906 = call float @dx.op.unary.f32(i32 24, float %7905)  ; Sqrt(value)
  %7907 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %7908 = fsub fast float %7906, %7907
  %7909 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %7910 = fmul fast float %7908, %7909
  %7911 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7912 = fadd fast float %7911, -5.000000e-01
  %7913 = fmul fast float %7912, 2.000000e+00
  %7914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7915 = extractvalue %dx.types.CBufRet.f32 %7914, 2
  %7916 = call float @dx.op.binary.f32(i32 36, float %7915, float %7913)  ; FMin(a,b)
  %7917 = fsub fast float -0.000000e+00, %7915
  %7918 = fcmp fast ogt float %7916, %7917
  br i1 %7918, label %7919, label %8231, !dx.controlflow.hints !168

; <label>:7919                                    ; preds = %7864
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 3
  %7922 = fcmp fast ogt float %7921, 0.000000e+00
  br i1 %7922, label %7923, label %7998, !dx.controlflow.hints !169

; <label>:7923                                    ; preds = %7919
  %7924 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7925 = extractvalue %dx.types.Dimensions %7924, 0
  %7926 = sitofp i32 %7925 to float
  %7927 = extractvalue %dx.types.Dimensions %7924, 1
  %7928 = sitofp i32 %7927 to float
  %7929 = fmul fast float %7868, %7926
  %7930 = fmul fast float %7869, %7928
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %7933 = fsub fast float -0.000000e+00, %7932
  %7934 = fptoui float %7933 to i32
  %7935 = fptoui float %7929 to i32
  %7936 = fptoui float %7930 to i32
  %7937 = and i32 %7934, 31
  %7938 = lshr i32 %7935, %7937
  %7939 = lshr i32 %7936, %7937
  %7940 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7934, i32 %7938, i32 %7939, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7941 = extractvalue %dx.types.ResRet.f32 %7940, 0
  %7942 = fcmp fast olt float %7941, -1.000000e+00
  %7943 = fcmp fast ogt float %7941, -1.000000e+00
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 1
  %7946 = select i1 %7943, float %7945, float 1.000000e+00
  %7947 = fadd fast float %7941, 1.000000e+00
  %7948 = fmul fast float %7946, %7947
  %7949 = call float @dx.op.unary.f32(i32 6, float %7948)  ; FAbs(value)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7944, 3
  %7951 = fcmp fast oge float %7949, %7950
  %7952 = select i1 %7951, float 0x4197782600000000, float %7949
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 0
  %7955 = extractvalue %dx.types.CBufRet.f32 %7953, 1
  %7956 = extractvalue %dx.types.CBufRet.f32 %7953, 2
  %7957 = select i1 %7942, float %7954, float %7875
  %7958 = select i1 %7942, float %7955, float %7876
  %7959 = select i1 %7942, float %7956, float %7877
  %7960 = fmul fast float %7957, %7872
  %7961 = fmul fast float %7958, %7872
  %7962 = fmul fast float %7959, %7872
  %7963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7964 = extractvalue %dx.types.CBufRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.CBufRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.CBufRet.f32 %7963, 2
  %7967 = select i1 %7942, float %7964, float %7882
  %7968 = select i1 %7942, float %7965, float %7883
  %7969 = select i1 %7942, float %7966, float %7884
  %7970 = fmul fast float %7967, %7873
  %7971 = fmul fast float %7968, %7873
  %7972 = fmul fast float %7969, %7873
  %7973 = fadd fast float %7970, %7960
  %7974 = fadd fast float %7971, %7961
  %7975 = fadd fast float %7972, %7962
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = select i1 %7942, float %7977, float %7889
  %7981 = select i1 %7942, float %7978, float %7890
  %7982 = select i1 %7942, float %7979, float %7891
  %7983 = fadd fast float %7973, %7980
  %7984 = fadd fast float %7974, %7981
  %7985 = fadd fast float %7975, %7982
  %7986 = fmul fast float %7983, %7952
  %7987 = fmul fast float %7984, %7952
  %7988 = fmul fast float %7985, %7952
  %7989 = fmul fast float %7986, %7986
  %7990 = fmul fast float %7987, %7987
  %7991 = fadd fast float %7989, %7990
  %7992 = fmul fast float %7988, %7988
  %7993 = fadd fast float %7991, %7992
  %7994 = call float @dx.op.unary.f32(i32 24, float %7993)  ; Sqrt(value)
  %7995 = fsub fast float %7994, %7907
  %7996 = fmul fast float %7995, %7909
  %7997 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  br label %7998

; <label>:7998                                    ; preds = %7923, %7919
  %7999 = phi float [ %7997, %7923 ], [ 1.000000e+00, %7919 ]
  %8000 = fmul fast float %7916, 5.000000e-01
  %8001 = fadd fast float %8000, 5.000000e-01
  %8002 = call float @dx.op.unary.f32(i32 22, float %8001)  ; Frc(value)
  %8003 = call float @dx.op.unary.f32(i32 27, float %8002)  ; Round_ni(value)
  %8004 = call float @dx.op.unary.f32(i32 22, float %8002)  ; Frc(value)
  %8005 = fmul fast float %8004, 2.000000e+00
  %8006 = fadd fast float %8005, -1.000000e+00
  %8007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7868, float %7869, float %8003, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8008 = extractvalue %dx.types.ResRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.ResRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.ResRet.f32 %8007, 2
  %8011 = extractvalue %dx.types.ResRet.f32 %8007, 3
  %8012 = fadd fast float %8008, -5.000000e-01
  %8013 = fadd fast float %8010, -5.000000e-01
  %8014 = fmul fast float %8012, 0xBFD5555560000000
  %8015 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8013, float %8014)  ; FMad(a,b,c)
  %8016 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8009, float 0.000000e+00)  ; FMad(a,b,c)
  %8017 = fadd fast float %8016, %8011
  %8018 = fmul fast float %8012, -7.500000e-01
  %8019 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8013, float %8018)  ; FMad(a,b,c)
  %8020 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8009, float 0.000000e+00)  ; FMad(a,b,c)
  %8021 = fadd fast float %8020, %8011
  %8022 = call float @dx.op.binary.f32(i32 35, float %8015, float -1.000000e+00)  ; FMax(a,b)
  %8023 = call float @dx.op.binary.f32(i32 35, float %8017, float -1.000000e+00)  ; FMax(a,b)
  %8024 = call float @dx.op.binary.f32(i32 35, float %8019, float -1.000000e+00)  ; FMax(a,b)
  %8025 = call float @dx.op.binary.f32(i32 35, float %8021, float -1.000000e+00)  ; FMax(a,b)
  %8026 = call float @dx.op.binary.f32(i32 36, float %8022, float 1.000000e+00)  ; FMin(a,b)
  %8027 = call float @dx.op.binary.f32(i32 36, float %8023, float 1.000000e+00)  ; FMin(a,b)
  %8028 = call float @dx.op.binary.f32(i32 36, float %8024, float 1.000000e+00)  ; FMin(a,b)
  %8029 = call float @dx.op.binary.f32(i32 36, float %8025, float 1.000000e+00)  ; FMin(a,b)
  %8030 = fcmp fast olt float %8026, 0x3FEFFF8020000000
  br i1 %8030, label %8031, label %8146, !dx.controlflow.hints !170

; <label>:8031                                    ; preds = %7998
  %8032 = extractvalue %dx.types.CBufRet.f32 %7914, 3
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.CBufRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.CBufRet.f32 %8033, 2
  %8037 = extractvalue %dx.types.CBufRet.f32 %8033, 3
  %8038 = fsub fast float %8034, %8026
  %8039 = fsub fast float %8035, %8027
  %8040 = fsub fast float %8036, %8028
  %8041 = fsub fast float %8037, %8029
  %8042 = fmul fast float %8038, %8032
  %8043 = fmul fast float %8039, %8032
  %8044 = fmul fast float %8040, %8032
  %8045 = fmul fast float %8041, %8032
  %8046 = fadd fast float %8042, %8026
  %8047 = fadd fast float %8043, %8027
  %8048 = fsub fast float -0.000000e+00, %8047
  %8049 = fadd fast float %8044, %8028
  %8050 = fadd fast float %8045, %8029
  %8051 = fmul fast float %8046, %8046
  %8052 = fsub fast float %8047, %8051
  %8053 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8052)  ; FMax(a,b)
  %8054 = fdiv fast float 1.000000e+00, %8053
  %8055 = fmul fast float %8047, %8046
  %8056 = fsub fast float %8049, %8055
  %8057 = fsub fast float %8006, %8046
  %8058 = fmul fast float %8006, %8006
  %8059 = fsub fast float %8058, %8047
  %8060 = fmul fast float %8057, %8054
  %8061 = fmul fast float %8060, %8056
  %8062 = fsub fast float %8059, %8061
  %8063 = fmul fast float %8047, %8047
  %8064 = fsub fast float %8050, %8063
  %8065 = fmul fast float %8056, %8056
  %8066 = fmul fast float %8065, %8054
  %8067 = fsub fast float %8064, %8066
  %8068 = fdiv fast float %8062, %8067
  %8069 = fmul fast float %8056, %8068
  %8070 = fsub fast float %8057, %8069
  %8071 = fmul fast float %8070, %8054
  %8072 = fmul fast float %8071, %8046
  %8073 = fsub fast float 1.000000e+00, %8072
  %8074 = fmul fast float %8047, %8068
  %8075 = fsub fast float %8073, %8074
  %8076 = fmul fast float %8071, %8071
  %8077 = fmul fast float %8068, 4.000000e+00
  %8078 = fmul fast float %8077, %8075
  %8079 = fsub fast float %8076, %8078
  %8080 = call float @dx.op.unary.f32(i32 24, float %8079)  ; Sqrt(value)
  %8081 = fcmp fast oge float %8071, 0.000000e+00
  %8082 = fsub fast float -0.000000e+00, %8080
  %8083 = select i1 %8081, float %8082, float %8080
  %8084 = fsub fast float %8083, %8071
  %8085 = fdiv fast float %8084, %8068
  %8086 = fdiv fast float %8075, %8084
  %8087 = fmul fast float %8085, 5.000000e-01
  %8088 = fmul fast float %8086, 2.000000e+00
  %8089 = select i1 %8081, float %8087, float %8088
  %8090 = select i1 %8081, float %8088, float %8087
  %8091 = call float @dx.op.binary.f32(i32 35, float %8089, float %8090)  ; FMax(a,b)
  %8092 = call float @dx.op.binary.f32(i32 36, float %8089, float %8090)  ; FMin(a,b)
  %8093 = fcmp fast ogt float %8006, %8092
  br i1 %8093, label %8094, label %8104

; <label>:8094                                    ; preds = %8031
  %8095 = fsub fast float %8006, %8092
  %8096 = fsub fast float %8091, %8092
  %8097 = fmul fast float %8095, %8096
  %8098 = fmul fast float %8091, %8006
  %8099 = fadd fast float %8091, %8006
  %8100 = fmul fast float %8099, %8046
  %8101 = fadd fast float %8098, %8047
  %8102 = fsub fast float %8101, %8100
  %8103 = fdiv fast float %8102, %8097
  br label %8104

; <label>:8104                                    ; preds = %8094, %8031
  %8105 = phi float [ %8103, %8094 ], [ 0.000000e+00, %8031 ]
  %8106 = fcmp fast ogt float %8006, %8091
  %8107 = fsub fast float %8006, %8091
  br i1 %8106, label %8108, label %8118

; <label>:8108                                    ; preds = %8104
  %8109 = fsub fast float %8091, %8092
  %8110 = fmul fast float %8109, %8107
  %8111 = fmul fast float %8092, %8006
  %8112 = fadd fast float %8092, %8006
  %8113 = fmul fast float %8112, %8046
  %8114 = fsub fast float %8048, %8111
  %8115 = fadd fast float %8114, %8113
  %8116 = fdiv fast float %8115, %8110
  %8117 = fadd fast float %8116, %8105
  br label %8118

; <label>:8118                                    ; preds = %8108, %8104
  %8119 = phi float [ %8117, %8108 ], [ %8105, %8104 ]
  %8120 = fsub fast float %8006, %8092
  %8121 = fmul fast float %8120, %8107
  %8122 = fmul fast float %8092, %8091
  %8123 = fadd fast float %8092, %8091
  %8124 = fmul fast float %8123, %8046
  %8125 = fadd fast float %8122, %8047
  %8126 = fsub fast float %8125, %8124
  %8127 = fdiv fast float %8126, %8121
  %8128 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8129 = fcmp fast oeq float %6797, 0.000000e+00
  %8130 = extractvalue %dx.types.CBufRet.f32 %7914, 0
  %8131 = fcmp fast oeq float %8130, 0.000000e+00
  %8132 = or i1 %8129, %8131
  %8133 = fmul fast float %8130, 2.000000e+00
  %8134 = fadd fast float %7915, %7916
  %8135 = fdiv fast float %8134, %8133
  %8136 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8137 = fmul fast float %8136, 2.000000e+00
  %8138 = fsub fast float 3.000000e+00, %8137
  %8139 = fmul fast float %8136, %8136
  %8140 = fmul fast float %8139, %8138
  %8141 = select i1 %8132, float 1.000000e+00, float %8140
  %8142 = fmul fast float %8127, %6797
  %8143 = fadd fast float %8128, %8142
  %8144 = call float @dx.op.unary.f32(i32 7, float %8143)  ; Saturate(value)
  %8145 = fmul fast float %8141, %8144
  br label %8146

; <label>:8146                                    ; preds = %8118, %7998
  %8147 = phi float [ %8145, %8118 ], [ 0.000000e+00, %7998 ]
  %8148 = fsub fast float 1.000000e+00, %8147
  %8149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7868, float %7869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8150 = extractvalue %dx.types.ResRet.f32 %8149, 0
  %8151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.i32 %8151, 2
  %8153 = icmp eq i32 %8152, 0
  br i1 %8153, label %8159, label %8154

; <label>:8154                                    ; preds = %8146
  %8155 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8156 = fadd fast float %8150, -1.000000e+00
  %8157 = fmul fast float %8155, %8156
  %8158 = fadd fast float %8157, 1.000000e+00
  br label %8159

; <label>:8159                                    ; preds = %8154, %8146
  %8160 = phi float [ %8158, %8154 ], [ %8148, %8146 ]
  br i1 %7922, label %8161, label %8179

; <label>:8161                                    ; preds = %8159
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 1
  %8164 = fsub fast float %7999, %8163
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = fsub fast float %7999, %7921
  %8167 = call float @dx.op.unary.f32(i32 7, float %8166)  ; Saturate(value)
  %8168 = fsub fast float %8165, %8167
  %8169 = fsub fast float %8001, %8167
  %8170 = fdiv fast float %8169, %8168
  %8171 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8172 = fmul fast float %8171, 2.000000e+00
  %8173 = fsub fast float 3.000000e+00, %8172
  %8174 = fsub fast float %8150, %8160
  %8175 = fmul fast float %8171, %8171
  %8176 = fmul fast float %8175, %8174
  %8177 = fmul fast float %8176, %8173
  %8178 = fadd fast float %8177, %8160
  br label %8179

; <label>:8179                                    ; preds = %8161, %8159
  %8180 = phi float [ %8178, %8161 ], [ %8160, %8159 ]
  %8181 = call float @dx.op.binary.f32(i32 35, float %8150, float %8180)  ; FMax(a,b)
  %8182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.i32 %8182, 2
  %8184 = and i32 %8183, 1
  %8185 = icmp eq i32 %8184, 0
  %8186 = fcmp fast une float %8181, 1.000000e+00
  %8187 = and i1 %8186, %8185
  br i1 %8187, label %8188, label %8207

; <label>:8188                                    ; preds = %8179
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7868, float %7869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8195 = fmul fast float %8194, %8190
  %8196 = fmul fast float %8194, %8191
  %8197 = fmul fast float %8194, %8192
  %8198 = fcmp fast ogt float %8150, 0x3FEFFF2E40000000
  %8199 = fsub fast float 1.000000e+00, %8181
  %8200 = fsub fast float 1.000000e+00, %8150
  %8201 = fdiv fast float %8199, %8200
  %8202 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8203 = select i1 %8198, float 0.000000e+00, float %8202
  %8204 = fmul fast float %8195, %8203
  %8205 = fmul fast float %8196, %8203
  %8206 = fmul fast float %8197, %8203
  br label %8207

; <label>:8207                                    ; preds = %8188, %8179
  %8208 = phi float [ 0.000000e+00, %8179 ], [ %8204, %8188 ]
  %8209 = phi float [ 0.000000e+00, %8179 ], [ %8205, %8188 ]
  %8210 = phi float [ 0.000000e+00, %8179 ], [ %8206, %8188 ]
  %8211 = fmul fast float %8208, %6785
  %8212 = fmul fast float %8209, %6785
  %8213 = fmul fast float %8210, %6785
  %8214 = fmul fast float %8181, %7843
  %8215 = call float @dx.op.dot3.f32(i32 55, float %8181, float %8181, float %8181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8216 = call float @dx.op.dot3.f32(i32 55, float %8211, float %8212, float %8213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8217 = select i1 %220, float %8215, float %8181
  %8218 = select i1 %220, float 1.000000e+00, float %8181
  %8219 = select i1 %220, float %8216, float %8211
  %8220 = select i1 %220, float 0.000000e+00, float %8212
  %8221 = select i1 %220, float 0.000000e+00, float %8213
  %8222 = fmul fast float %8217, %7855
  %8223 = fmul fast float %8217, %7856
  %8224 = fmul fast float %8218, %7857
  %8225 = fadd fast float %8222, %8219
  %8226 = fadd fast float %8223, %8220
  %8227 = fadd fast float %8221, %8224
  %8228 = fmul fast float %8217, %7858
  %8229 = fmul fast float %8217, %7859
  %8230 = fmul fast float %8218, %7860
  br label %8231

; <label>:8231                                    ; preds = %8207, %7864, %7833, %7065
  %8232 = phi float [ %7070, %7065 ], [ %7855, %7833 ], [ %8225, %8207 ], [ %7855, %7864 ]
  %8233 = phi float [ %7071, %7065 ], [ %7856, %7833 ], [ %8226, %8207 ], [ %7856, %7864 ]
  %8234 = phi float [ %7072, %7065 ], [ %7857, %7833 ], [ %8227, %8207 ], [ %7857, %7864 ]
  %8235 = phi float [ %7073, %7065 ], [ %7858, %7833 ], [ %8228, %8207 ], [ %7858, %7864 ]
  %8236 = phi float [ %7074, %7065 ], [ %7859, %7833 ], [ %8229, %8207 ], [ %7859, %7864 ]
  %8237 = phi float [ %7075, %7065 ], [ %7860, %7833 ], [ %8230, %8207 ], [ %7860, %7864 ]
  %8238 = phi float [ %7076, %7065 ], [ %7843, %7833 ], [ %8214, %8207 ], [ %7843, %7864 ]
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8241 = extractvalue %dx.types.CBufRet.f32 %8239, 3
  %8242 = fmul fast float %8240, %95
  %8243 = fmul fast float %8241, %96
  %8244 = call float @dx.op.unary.f32(i32 7, float %8242)  ; Saturate(value)
  %8245 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8246 = select i1 %6807, i32 2, i32 0
  %8247 = or i32 %8246, 1
  %8248 = uitofp i32 %8247 to float
  %8249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8244, float %8245, float %8248, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8250 = extractvalue %dx.types.ResRet.f32 %8249, 0
  %8251 = extractvalue %dx.types.ResRet.f32 %8249, 1
  %8252 = extractvalue %dx.types.ResRet.f32 %8249, 2
  %8253 = extractvalue %dx.types.ResRet.f32 %8249, 3
  %8254 = add nuw nsw i32 %8246, 2
  %8255 = uitofp i32 %8254 to float
  %8256 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8244, float %8245, float %8255, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8257 = extractvalue %dx.types.ResRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.ResRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.ResRet.f32 %8256, 2
  %8260 = extractvalue %dx.types.ResRet.f32 %8256, 3
  %8261 = call float @dx.op.binary.f32(i32 35, float %8251, float %8252)  ; FMax(a,b)
  %8262 = call float @dx.op.binary.f32(i32 35, float %8250, float %8261)  ; FMax(a,b)
  %8263 = call float @dx.op.binary.f32(i32 35, float %8262, float %8253)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 36, float %8258, float %8259)  ; FMin(a,b)
  %8265 = call float @dx.op.binary.f32(i32 36, float %8257, float %8264)  ; FMin(a,b)
  %8266 = call float @dx.op.binary.f32(i32 36, float %8265, float %8260)  ; FMin(a,b)
  %8267 = fmul fast float %8263, 2.550000e+02
  %8268 = fadd fast float %8267, 0x3F70101020000000
  %8269 = fptoui float %8268 to i32
  %8270 = fmul fast float %8266, 2.550000e+02
  %8271 = fadd fast float %8270, 0x3F70101020000000
  %8272 = fptoui float %8271 to i32
  %8273 = icmp ult i32 %8269, %8272
  br i1 %8273, label %8274, label %8443

; <label>:8274                                    ; preds = %8231
  %8275 = fcmp fast ogt float %85, 9.843750e-01
  %8276 = fadd fast float %7069, -4.000000e+00
  %8277 = select i1 %8275, float -4.000000e+00, float %8276
  %8278 = call float @dx.op.binary.f32(i32 35, float %8277, float 0.000000e+00)  ; FMax(a,b)
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8281 = fadd fast float %8280, %8278
  %8282 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8283 = fmul fast float %8281, %8282
  %8284 = call float @dx.op.unary.f32(i32 23, float %8283)  ; Log(value)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8279, 3
  %8286 = fmul fast float %8285, %8284
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8289 = fmul fast float %8286, %8288
  %8290 = call float @dx.op.unary.f32(i32 7, float %8289)  ; Saturate(value)
  %8291 = uitofp i32 %8269 to float
  %8292 = uitofp i32 %8272 to float
  %8293 = fadd fast float %8291, 5.000000e-01
  %8294 = fadd fast float %8292, 5.000000e-01
  %8295 = fmul fast float %8288, %8293
  %8296 = fmul fast float %8288, %8294
  %8297 = fadd fast float %8295, 0x3F0FFB4800000000
  %8298 = fadd fast float %8296, 0xBF0FFB4800000000
  %8299 = call float @dx.op.binary.f32(i32 35, float %8290, float %8297)  ; FMax(a,b)
  %8300 = call float @dx.op.binary.f32(i32 36, float %8299, float %8298)  ; FMin(a,b)
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8304 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8305 = select i1 %6807, float %8304, float 0.000000e+00
  %8306 = fmul fast float %8302, %8300
  %8307 = fadd fast float %8305, %8306
  %8308 = fadd fast float %8305, %8303
  %8309 = fsub fast float %8302, %8303
  %8310 = fadd fast float %8309, %8305
  %8311 = call float @dx.op.binary.f32(i32 35, float %8307, float %8308)  ; FMax(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8311, float %8310)  ; FMin(a,b)
  %8313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8244, float %8245, float %8312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8314 = extractvalue %dx.types.ResRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.ResRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.ResRet.f32 %8313, 2
  %8317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.i32 %8317, 0
  %8319 = extractvalue %dx.types.CBufRet.i32 %8317, 1
  %8320 = uitofp i32 %8318 to float
  %8321 = uitofp i32 %8319 to float
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.CBufRet.f32 %8322, 1
  %8325 = fmul fast float %8320, %8244
  %8326 = fmul fast float %8321, %8245
  %8327 = fadd fast float %8325, -5.000000e-01
  %8328 = fadd fast float %8326, -5.000000e-01
  %8329 = call float @dx.op.unary.f32(i32 22, float %8327)  ; Frc(value)
  %8330 = call float @dx.op.unary.f32(i32 22, float %8328)  ; Frc(value)
  %8331 = fmul fast float %8329, %8329
  %8332 = fmul fast float %8331, %8329
  %8333 = fsub fast float 3.000000e+00, %8329
  %8334 = fmul fast float %8331, %8333
  %8335 = fmul fast float %8329, 3.000000e+00
  %8336 = fmul fast float %8332, 3.000000e+00
  %8337 = fmul fast float %8331, 6.000000e+00
  %8338 = fsub fast float %8336, %8337
  %8339 = fadd fast float %8338, 4.000000e+00
  %8340 = fmul fast float %8339, 0x3FC5555560000000
  %8341 = fmul fast float %8332, -3.000000e+00
  %8342 = fadd fast float %8331, %8329
  %8343 = fmul fast float %8342, 3.000000e+00
  %8344 = fadd fast float %8341, 1.000000e+00
  %8345 = fadd fast float %8344, %8343
  %8346 = fmul fast float %8332, 0x3FC5555560000000
  %8347 = fmul fast float %8330, %8330
  %8348 = fmul fast float %8347, %8330
  %8349 = fsub fast float 3.000000e+00, %8330
  %8350 = fmul fast float %8347, %8349
  %8351 = fmul fast float %8330, 3.000000e+00
  %8352 = fmul fast float %8348, 3.000000e+00
  %8353 = fmul fast float %8347, 6.000000e+00
  %8354 = fsub fast float %8352, %8353
  %8355 = fadd fast float %8354, 4.000000e+00
  %8356 = fmul fast float %8355, 0x3FC5555560000000
  %8357 = fmul fast float %8348, -3.000000e+00
  %8358 = fadd fast float %8347, %8330
  %8359 = fmul fast float %8358, 3.000000e+00
  %8360 = fadd fast float %8357, 1.000000e+00
  %8361 = fadd fast float %8360, %8359
  %8362 = fmul fast float %8348, 0x3FC5555560000000
  %8363 = fadd fast float %8329, 1.000000e+00
  %8364 = fsub fast float 1.000000e+00, %8335
  %8365 = fadd fast float %8364, %8334
  %8366 = fadd fast float %8365, %8339
  %8367 = fmul fast float %8366, 0x3FC5555560000000
  %8368 = fdiv fast float %8340, %8367
  %8369 = fsub fast float %8363, %8368
  %8370 = fsub fast float 1.000000e+00, %8329
  %8371 = fadd fast float %8345, %8332
  %8372 = fmul fast float %8371, 0x3FC5555560000000
  %8373 = fdiv fast float %8346, %8372
  %8374 = fadd fast float %8370, %8373
  %8375 = fadd fast float %8330, 1.000000e+00
  %8376 = fsub fast float 1.000000e+00, %8351
  %8377 = fadd fast float %8376, %8350
  %8378 = fadd fast float %8377, %8355
  %8379 = fmul fast float %8378, 0x3FC5555560000000
  %8380 = fdiv fast float %8356, %8379
  %8381 = fsub fast float %8375, %8380
  %8382 = fsub fast float 1.000000e+00, %8330
  %8383 = fadd fast float %8361, %8348
  %8384 = fmul fast float %8383, 0x3FC5555560000000
  %8385 = fdiv fast float %8362, %8384
  %8386 = fadd fast float %8385, %8382
  %8387 = fmul fast float %8369, %8323
  %8388 = fsub fast float %8244, %8387
  %8389 = fmul fast float %8374, %8323
  %8390 = fadd fast float %8389, %8244
  %8391 = fmul fast float %8386, %8324
  %8392 = fadd fast float %8391, %8245
  %8393 = fmul fast float %8381, %8324
  %8394 = fsub fast float %8245, %8393
  %8395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8388, float %8394, float %8312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8390, float %8394, float %8312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8400 = extractvalue %dx.types.ResRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.ResRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.ResRet.f32 %8399, 2
  %8403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8388, float %8392, float %8312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8404 = extractvalue %dx.types.ResRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.ResRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.ResRet.f32 %8403, 2
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8390, float %8392, float %8312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = fsub fast float %8404, %8396
  %8412 = fsub fast float %8405, %8397
  %8413 = fsub fast float %8406, %8398
  %8414 = fmul fast float %8411, %8384
  %8415 = fmul fast float %8412, %8384
  %8416 = fmul fast float %8413, %8384
  %8417 = fadd fast float %8414, %8396
  %8418 = fadd fast float %8415, %8397
  %8419 = fadd fast float %8416, %8398
  %8420 = fsub fast float %8408, %8400
  %8421 = fsub fast float %8409, %8401
  %8422 = fsub fast float %8410, %8402
  %8423 = fmul fast float %8420, %8384
  %8424 = fmul fast float %8421, %8384
  %8425 = fmul fast float %8422, %8384
  %8426 = fsub fast float %8400, %8417
  %8427 = fadd fast float %8426, %8423
  %8428 = fsub fast float %8401, %8418
  %8429 = fadd fast float %8428, %8424
  %8430 = fsub fast float %8402, %8419
  %8431 = fadd fast float %8430, %8425
  %8432 = fmul fast float %8427, %8372
  %8433 = fmul fast float %8429, %8372
  %8434 = fmul fast float %8431, %8372
  %8435 = fadd fast float %8432, %8417
  %8436 = fadd fast float %8433, %8418
  %8437 = fadd fast float %8434, %8419
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8440 = fmul fast float %8435, %8439
  %8441 = fmul fast float %8436, %8439
  %8442 = fmul fast float %8437, %8439
  br label %8443

; <label>:8443                                    ; preds = %8274, %8231
  %8444 = phi float [ %8314, %8274 ], [ 1.000000e+00, %8231 ]
  %8445 = phi float [ %8315, %8274 ], [ 1.000000e+00, %8231 ]
  %8446 = phi float [ %8316, %8274 ], [ 1.000000e+00, %8231 ]
  %8447 = phi float [ %8440, %8274 ], [ 0.000000e+00, %8231 ]
  %8448 = phi float [ %8441, %8274 ], [ 0.000000e+00, %8231 ]
  %8449 = phi float [ %8442, %8274 ], [ 0.000000e+00, %8231 ]
  %8450 = fmul fast float %8447, %6785
  %8451 = fmul fast float %8448, %6785
  %8452 = fmul fast float %8449, %6785
  %8453 = fmul fast float %8444, %8238
  %8454 = call float @dx.op.dot3.f32(i32 55, float %8444, float %8445, float %8446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8455 = call float @dx.op.dot3.f32(i32 55, float %8450, float %8451, float %8452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8456 = select i1 %220, float %8454, float %8444
  %8457 = select i1 %220, float %8454, float %8445
  %8458 = select i1 %220, float 1.000000e+00, float %8446
  %8459 = select i1 %220, float %8455, float %8450
  %8460 = select i1 %220, float 0.000000e+00, float %8451
  %8461 = select i1 %220, float 0.000000e+00, float %8452
  %8462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.i32 %8462, 3
  %8464 = and i32 %8463, 3
  %8465 = icmp ne i32 %8464, 0
  %8466 = and i32 %8463, 4
  %8467 = icmp ne i32 %8466, 0
  %8468 = and i1 %8465, %8467
  %8469 = and i1 %220, %8468
  br i1 %8469, label %8470, label %8476

; <label>:8470                                    ; preds = %8443
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 1
  %8473 = fadd fast float %8453, -1.000000e+00
  %8474 = fmul fast float %8472, %8473
  %8475 = fadd fast float %8474, 1.000000e+00
  br label %8476

; <label>:8476                                    ; preds = %8470, %8443
  %8477 = phi float [ %8475, %8470 ], [ %8453, %8443 ]
  %8478 = fadd fast float %8235, %8232
  %8479 = fmul fast float %8456, %8478
  %8480 = fadd fast float %8479, %8459
  %8481 = fadd fast float %8236, %8233
  %8482 = fmul fast float %8457, %8481
  %8483 = fadd fast float %8482, %8460
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 0
  br i1 %220, label %8486, label %8501

; <label>:8486                                    ; preds = %8476
  %8487 = fadd fast float %8480, %8483
  %8488 = fmul fast float %8485, %8487
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 3
  %8491 = extractvalue %dx.types.CBufRet.f32 %6789, 1
  %8492 = fsub fast float %6794, %6788
  %8493 = fadd fast float %8492, %6795
  %8494 = fsub fast float %8493, %8491
  %8495 = extractvalue %dx.types.CBufRet.f32 %6789, 2
  %8496 = fmul fast float %8494, %8495
  %8497 = call float @dx.op.unary.f32(i32 7, float %8496)  ; Saturate(value)
  %8498 = fsub fast float %8497, %8490
  %8499 = fmul fast float %8498, %8477
  %8500 = fadd fast float %8499, %8490
  br label %8527

; <label>:8501                                    ; preds = %8476
  %8502 = fadd fast float %8237, %8234
  %8503 = fmul fast float %8458, %8502
  %8504 = fadd fast float %8503, %8461
  %8505 = fmul fast float %8485, %8480
  %8506 = fmul fast float %8485, %8483
  %8507 = fmul fast float %8485, %8504
  %8508 = call float @dx.op.binary.f32(i32 35, float %8506, float %8507)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 35, float %8505, float %8508)  ; FMax(a,b)
  %8510 = call float @dx.op.binary.f32(i32 35, float %6785, float %6785)  ; FMax(a,b)
  %8511 = call float @dx.op.binary.f32(i32 35, float %6785, float %8510)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 35, float %8509, float %8511)  ; FMax(a,b)
  %8513 = fcmp fast ugt float %8512, 0x3F10000000000000
  br i1 %8513, label %8515, label %8514

; <label>:8514                                    ; preds = %8501
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8515

; <label>:8515                                    ; preds = %8514, %8501
  %8516 = add i32 %54, 356
  %8517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8516, i32 undef)  ; BufferLoad(srv,index,wot)
  %8518 = extractvalue %dx.types.ResRet.i32 %8517, 0
  %8519 = and i32 %8518, 32
  %8520 = icmp eq i32 %8519, 0
  br i1 %8520, label %8527, label %8521

; <label>:8521                                    ; preds = %8515
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = fmul fast float %8523, 0x3FE99999A0000000
  %8525 = fadd fast float %8523, %8505
  %8526 = fadd fast float %8524, %8507
  br label %8527

; <label>:8527                                    ; preds = %8521, %8515, %8486
  %8528 = phi float [ 1.000000e+00, %8486 ], [ %6785, %8521 ], [ %6785, %8515 ]
  %8529 = phi float [ %8488, %8486 ], [ %8525, %8521 ], [ %8505, %8515 ]
  %8530 = phi float [ %8500, %8486 ], [ %8506, %8521 ], [ %8506, %8515 ]
  %8531 = phi float [ 1.000000e+00, %8486 ], [ %8526, %8521 ], [ %8507, %8515 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8532 = call float @dx.op.binary.f32(i32 36, float %8529, float 3.225500e+04)  ; FMin(a,b)
  %8533 = call float @dx.op.binary.f32(i32 36, float %8530, float 3.225500e+04)  ; FMin(a,b)
  %8534 = call float @dx.op.binary.f32(i32 36, float %8531, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8535 = call float @dx.op.binary.f32(i32 36, float %6785, float 3.225500e+04)  ; FMin(a,b)
  %8536 = call float @dx.op.binary.f32(i32 36, float %8528, float 3.225500e+04)  ; FMin(a,b)
  %8537 = call float @dx.op.binary.f32(i32 36, float %8528, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8535)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8537)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 0, i32 119, i32 119]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !92}
!70 = !{!71, !88, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !87}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 5, i8 0, !79}
!82 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 7, i8 0, !77}
!84 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 9, i8 0, !86}
!86 = !{i32 3, i32 13}
!87 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!91 = !{i32 1}
!92 = !{i32 0, i64 16}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
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
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !100, i64 0}
!124 = !{!125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!125 = distinct !{!125, !126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!126 = distinct !{!126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!127 = distinct !{!127, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!128 = distinct !{!128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!129 = distinct !{!129, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!139 = distinct !{!139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!148 = !{!144}
!149 = !{!145, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!158 = !{!154}
!159 = !{!155, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}

