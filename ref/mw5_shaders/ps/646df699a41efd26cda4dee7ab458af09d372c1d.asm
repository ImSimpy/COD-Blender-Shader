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
;
; shader hash: 80503de0ffaa5701d2aee6a8a0369997
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %161 = add i32 %54, 360
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = extractvalue %dx.types.ResRet.i32 %162, 1
  %165 = extractvalue %dx.types.ResRet.i32 %162, 2
  %166 = extractvalue %dx.types.ResRet.i32 %162, 3
  %167 = bitcast i32 %163 to float
  %168 = bitcast i32 %164 to float
  %169 = bitcast i32 %165 to float
  %170 = bitcast i32 %166 to float
  %171 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 25, float %171)  ; Rsqrt(value)
  %173 = fmul fast float %172, %102
  %174 = fmul fast float %172, %103
  %175 = fmul fast float %172, %104
  %176 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 25, float %176)  ; Rsqrt(value)
  %178 = fmul fast float %177, %158
  %179 = fmul fast float %177, %159
  %180 = fmul fast float %177, %160
  %181 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %173, float %174, float %175)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = fmul fast float %181, %181
  %183 = fmul fast float %182, %169
  %184 = fadd fast float %183, %170
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %187, %176
  %189 = fsub fast float %167, %188
  %190 = fmul fast float %189, %168
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %191, %185
  %193 = fmul fast float %95, 5.000000e-01
  %194 = fmul fast float %96, 5.000000e-01
  %195 = fptosi float %193 to i32
  %196 = fptosi float %194 to i32
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %216 = fmul fast float %214, %95
  %217 = fmul fast float %215, %96
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 114688
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %221, float %216, float 0.000000e+00
  %223 = select i1 %221, float %217, float 0.000000e+00
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %222, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fmul fast float %225, 2.550000e+02
  %227 = fptoui float %226 to i32
  %228 = select i1 %221, i32 %227, i32 0
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %248

; <label>:237                                     ; preds = %0
  %238 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %239 = fmul fast float %238, %96
  %240 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %241 = fmul fast float %240, %95
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %241, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %234, 0
  %250 = and i1 %233, %249
  br label %251

; <label>:251                                     ; preds = %248, %237
  %252 = phi i1 [ %247, %237 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %95, 2.560000e+02
  %257 = frem fast float %96, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %54, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %54, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %54, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %54, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = add i32 %54, 172
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %54, 232
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %320, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %320, 16
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = add i32 %54, 52
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %54, 304
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %54, 188
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %54, 248
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %362, 8
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %362, 16
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = add i32 %54, 68
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %54, 320
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %54, 204
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %54, 264
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %404, 8
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = lshr i32 %404, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = add i32 %54, 84
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %54, 336
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %54, 348
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %434, 64
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %434, 128
  %440 = icmp eq i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

; <label>:445                                     ; preds = %251
  %446 = add i32 %54, 520
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %450, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = fmul fast float %455, %79
  %457 = fmul fast float %452, %80
  %458 = fmul fast float %453, %81
  %459 = fmul fast float %454, %82
  br label %460

; <label>:460                                     ; preds = %445, %251
  %461 = phi float [ %82, %251 ], [ %459, %445 ]
  %462 = phi float [ %81, %251 ], [ %458, %445 ]
  %463 = phi float [ %80, %251 ], [ %457, %445 ]
  %464 = phi float [ %79, %251 ], [ %456, %445 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %488, label %469

; <label>:469                                     ; preds = %460
  %470 = add i32 %54, 44
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %463, float 1.000000e+00
  %476 = add i32 %54, 60
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %462, float 1.000000e+00
  %482 = add i32 %54, 76
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %461, float 1.000000e+00
  br label %488

; <label>:488                                     ; preds = %469, %460
  %489 = phi float [ %461, %460 ], [ %487, %469 ]
  %490 = phi float [ %462, %460 ], [ %481, %469 ]
  %491 = phi float [ %463, %460 ], [ %475, %469 ]
  %492 = lshr i32 %466, 20
  %493 = and i32 %492, 3
  %494 = add nuw nsw i32 %493, 1
  %495 = add i32 %54, 24
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %54, 28
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %500, %497
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1152, label %503

; <label>:503                                     ; preds = %488
  %504 = and i32 %497, 262144
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %57, float 1.000000e+00
  %507 = select i1 %505, float %58, float 0.000000e+00
  %508 = select i1 %505, float %59, float 0.000000e+00
  %509 = select i1 %505, float %60, float 1.000000e+00
  %510 = select i1 %505, float %61, float %77
  %511 = select i1 %505, float %62, float %78
  %512 = add i32 %54, 284
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %516, 0x3F50624DE0000000
  %518 = add i32 %54, 88
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = lshr i32 %520, 24
  %524 = add i32 %54, 292
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %54, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = shl i32 %533, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, 1.000000e+03
  %546 = fmul fast float %304, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %294
  %549 = fmul fast float %305, %545
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fadd fast float %550, %296
  %552 = fmul fast float %517, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fmul fast float %553, 0x401921FB60000000
  %555 = fadd fast float %554, %536
  %556 = call float @dx.op.unary.f32(i32 13, float %555)  ; Sin(value)
  %557 = call float @dx.op.unary.f32(i32 12, float %555)  ; Cos(value)
  %558 = fsub fast float -0.000000e+00, %556
  %559 = fadd fast float %510, -5.000000e-01
  %560 = fadd fast float %511, -5.000000e-01
  %561 = fmul fast float %528, %559
  %562 = fmul fast float %530, %560
  %563 = fadd fast float %561, 5.000000e-01
  %564 = fadd fast float %562, 5.000000e-01
  %565 = fmul fast float %539, %563
  %566 = fmul fast float %542, %564
  %567 = fmul fast float %557, %565
  %568 = call float @dx.op.tertiary.f32(i32 46, float %558, float %566, float %567)  ; FMad(a,b,c)
  %569 = fmul fast float %556, %565
  %570 = call float @dx.op.tertiary.f32(i32 46, float %557, float %566, float %569)  ; FMad(a,b,c)
  %571 = fadd fast float %548, %568
  %572 = fadd fast float %551, %570
  %573 = icmp ugt i32 %522, 1
  %574 = icmp ugt i32 %520, 33554431
  %575 = or i1 %574, %573
  br i1 %575, label %576, label %601

; <label>:576                                     ; preds = %503
  %577 = add i32 %54, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fmul fast float %544, %581
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = mul nuw nsw i32 %522, %523
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %583, %585
  %587 = call float @dx.op.unary.f32(i32 27, float %586)  ; Round_ni(value)
  %588 = fptoui float %587 to i32
  %589 = urem i32 %588, %522
  %590 = udiv i32 %588, %523
  %591 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %592 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %593 = uitofp i32 %589 to float
  %594 = uitofp i32 %590 to float
  %595 = fadd fast float %591, %593
  %596 = fadd fast float %592, %594
  %597 = uitofp i32 %522 to float
  %598 = uitofp i32 %523 to float
  %599 = fdiv fast float %595, %597
  %600 = fdiv fast float %596, %598
  br label %601

; <label>:601                                     ; preds = %576, %503
  %602 = phi float [ %599, %576 ], [ %571, %503 ]
  %603 = phi float [ %600, %576 ], [ %572, %503 ]
  %604 = and i32 %497, 16777216
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %715, label %606

; <label>:606                                     ; preds = %601
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = fadd fast float %608, %158
  %612 = fadd fast float %609, %159
  %613 = fadd fast float %610, %160
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %617 = icmp eq i32 %55, 65535
  br i1 %617, label %712, label %618

; <label>:618                                     ; preds = %606
  %619 = lshr i32 %55, 1
  %620 = shl i32 %619, 2
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %55, 1
  %624 = icmp ne i32 %623, 0
  %625 = lshr i32 %622, 16
  %626 = and i32 %622, 65535
  %627 = select i1 %624, i32 %625, i32 %626
  %628 = icmp eq i32 %627, 65535
  br i1 %628, label %708, label %629

; <label>:629                                     ; preds = %618
  %630 = mul nuw nsw i32 %627, 40
  %631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = add nuw nsw i32 %630, 12
  %636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = add nuw nsw i32 %630, 24
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = add nuw nsw i32 %630, 36
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = fsub fast float %611, %632
  %649 = fsub fast float %612, %633
  %650 = fsub fast float %613, %634
  %651 = fmul fast float %647, %648
  %652 = fmul fast float %647, %649
  %653 = fmul fast float %647, %650
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = call float @dx.op.unary.f32(i32 27, float %652)  ; Round_ni(value)
  %656 = call float @dx.op.unary.f32(i32 27, float %653)  ; Round_ni(value)
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fmul fast float %657, %637
  %661 = fmul fast float %658, %638
  %662 = fmul fast float %659, %639
  %663 = shl i32 %55, 2
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = add i32 %665, 0
  %667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %668 = call float @dx.op.unary.f32(i32 22, float %660)  ; Frc(value)
  %669 = call float @dx.op.unary.f32(i32 22, float %661)  ; Frc(value)
  %670 = call float @dx.op.unary.f32(i32 22, float %662)  ; Frc(value)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %667, %dx.types.Handle %49, float %668, float %669, float %670, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = extractvalue %dx.types.ResRet.f32 %671, 1
  %674 = extractvalue %dx.types.ResRet.f32 %671, 2
  %675 = fmul fast float %672, 1.023000e+03
  %676 = fmul fast float %673, 1.023000e+03
  %677 = fmul fast float %674, 1.023000e+03
  %678 = fadd fast float %675, 5.000000e-01
  %679 = fadd fast float %676, 5.000000e-01
  %680 = fadd fast float %677, 5.000000e-01
  %681 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %682 = call float @dx.op.unary.f32(i32 27, float %679)  ; Round_ni(value)
  %683 = call float @dx.op.unary.f32(i32 27, float %680)  ; Round_ni(value)
  %684 = fsub fast float %651, %654
  %685 = fsub fast float %652, %655
  %686 = fsub fast float %653, %656
  %687 = fmul fast float %684, 7.500000e-01
  %688 = fmul fast float %685, 7.500000e-01
  %689 = fmul fast float %686, 7.500000e-01
  %690 = fadd fast float %654, 1.250000e-01
  %691 = fadd fast float %690, %687
  %692 = fadd fast float %691, %681
  %693 = fadd fast float %655, 1.250000e-01
  %694 = fadd fast float %693, %688
  %695 = fadd fast float %694, %682
  %696 = fadd fast float %656, 1.250000e-01
  %697 = fadd fast float %696, %689
  %698 = fadd fast float %697, %683
  %699 = fmul fast float %692, %642
  %700 = fmul fast float %695, %643
  %701 = fmul fast float %698, %644
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %705, %dx.types.Handle %47, float %699, float %700, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  br label %708

; <label>:708                                     ; preds = %629, %618
  %709 = phi float [ %707, %629 ], [ -1.000000e+00, %618 ]
  %710 = fadd fast float %709, %616
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  br label %712

; <label>:712                                     ; preds = %708, %606
  %713 = phi float [ %711, %708 ], [ %616, %606 ]
  %714 = fmul fast float %713, %464
  br label %715

; <label>:715                                     ; preds = %712, %601
  %716 = phi float [ %714, %712 ], [ %464, %601 ]
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 256
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %767, label %721

; <label>:721                                     ; preds = %715
  %722 = add i32 %54, 472
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = add i32 %54, 100
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = shl i32 %731, 4
  %733 = and i32 %732, 32752
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %731, 7
  %736 = and i32 %735, 32752
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = fsub fast float 1.000000e+00, %716
  %739 = call float @dx.op.binary.f32(i32 35, float %738, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %740 = bitcast float %716 to i32
  %741 = sitofp i32 %740 to float
  %742 = fadd fast float %741, 0xC1CFBF8940000000
  %743 = fmul fast float %737, %742
  %744 = fadd fast float %743, 0x41CFBF8940000000
  %745 = fptosi float %744 to i32
  %746 = bitcast i32 %745 to float
  %747 = bitcast float %739 to i32
  %748 = sitofp i32 %747 to float
  %749 = fadd fast float %748, 0xC1CFBF8940000000
  %750 = fmul fast float %749, %737
  %751 = fadd fast float %750, 0x41CFBF8940000000
  %752 = fptosi float %751 to i32
  %753 = bitcast i32 %752 to float
  %754 = fmul fast float %746, %734
  %755 = fmul fast float %753, %734
  %756 = fsub fast float %739, %754
  %757 = fadd fast float %755, %739
  %758 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = fsub fast float %728, %758
  %761 = fsub fast float %759, %758
  %762 = bitcast float %761 to i32
  %763 = sub nsw i32 2129859010, %762
  %764 = bitcast i32 %763 to float
  %765 = fmul fast float %764, %760
  %766 = call float @dx.op.unary.f32(i32 7, float %765)  ; Saturate(value)
  br label %767

; <label>:767                                     ; preds = %721, %715
  %768 = phi float [ %766, %721 ], [ %716, %715 ]
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 128
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %789, label %773

; <label>:773                                     ; preds = %767
  %774 = add i32 %54, 456
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 524288
  %784 = icmp ne i32 %783, 0
  %785 = fcmp fast ogt float %780, 0x3FE0101020000000
  %786 = select i1 %785, float 1.000000e+00, float 0.000000e+00
  %787 = select i1 %784, float %786, float %780
  %788 = fmul fast float %787, %768
  br label %789

; <label>:789                                     ; preds = %773, %767
  %790 = phi float [ %788, %773 ], [ %768, %767 ]
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 16
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %993, label %795

; <label>:795                                     ; preds = %789
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %54, 408
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = add i32 %800, 0
  %802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %802, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %804 = extractvalue %dx.types.ResRet.f32 %803, 0
  %805 = extractvalue %dx.types.ResRet.f32 %803, 1
  %806 = extractvalue %dx.types.ResRet.f32 %803, 2
  %807 = extractvalue %dx.types.ResRet.f32 %803, 3
  %808 = and i32 %797, 255
  %809 = uitofp i32 %808 to float
  %810 = lshr i32 %797, 8
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %807, %809
  %814 = fadd fast float %813, %812
  %815 = fmul fast float %814, 0x3F70101000000000
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 512
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %828, label %820

; <label>:820                                     ; preds = %795
  %821 = add i32 %54, 488
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %92, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  br label %828

; <label>:828                                     ; preds = %820, %795
  %829 = phi float [ %827, %820 ], [ 1.000000e+00, %795 ]
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = and i32 %831, 33554432
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %940, label %834

; <label>:834                                     ; preds = %828
  %835 = add i32 %54, 224
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 65535
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = lshr i32 %837, 16
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = add i32 %54, 228
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = lshr i32 %848, 24
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = and i32 %848, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %848, 8
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = lshr i32 %848, 16
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F70101020000000
  %863 = add i32 %54, 220
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 24
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = and i32 %865, 255
  %870 = uitofp i32 %869 to float
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = lshr i32 %865, 8
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F70101020000000
  %876 = lshr i32 %865, 16
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F70101020000000
  %880 = bitcast float %804 to i32
  %881 = ashr i32 %880, 1
  %882 = sub nsw i32 1597463174, %881
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %804, 5.000000e-01
  %885 = fmul fast float %883, %883
  %886 = fmul fast float %885, %884
  %887 = fsub fast float 1.500000e+00, %886
  %888 = fmul fast float %883, %804
  %889 = fmul fast float %888, %887
  %890 = bitcast float %805 to i32
  %891 = ashr i32 %890, 1
  %892 = sub nsw i32 1597463174, %891
  %893 = bitcast i32 %892 to float
  %894 = fmul fast float %805, 5.000000e-01
  %895 = fmul fast float %893, %893
  %896 = fmul fast float %895, %894
  %897 = fsub fast float 1.500000e+00, %896
  %898 = fmul fast float %893, %805
  %899 = fmul fast float %898, %897
  %900 = bitcast float %806 to i32
  %901 = ashr i32 %900, 1
  %902 = sub nsw i32 1597463174, %901
  %903 = bitcast i32 %902 to float
  %904 = fmul fast float %806, 5.000000e-01
  %905 = fmul fast float %903, %903
  %906 = fmul fast float %905, %904
  %907 = fsub fast float 1.500000e+00, %906
  %908 = fmul fast float %903, %806
  %909 = fmul fast float %908, %907
  %910 = fsub fast float %889, %871
  %911 = fsub fast float %899, %875
  %912 = fsub fast float %909, %879
  %913 = fmul fast float %910, %839
  %914 = fmul fast float %911, %841
  %915 = fmul fast float %912, %846
  %916 = fadd fast float %913, %854
  %917 = fadd fast float %914, %858
  %918 = fadd fast float %915, %862
  %919 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %920 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %921 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %922 = fmul fast float %919, %919
  %923 = fmul fast float %920, %920
  %924 = fmul fast float %921, %921
  %925 = fsub fast float %922, %804
  %926 = fsub fast float %923, %805
  %927 = fsub fast float %924, %806
  %928 = fmul fast float %925, %829
  %929 = fmul fast float %926, %829
  %930 = fmul fast float %927, %829
  %931 = fadd fast float %928, %804
  %932 = fadd fast float %929, %805
  %933 = fadd fast float %930, %806
  %934 = fadd fast float %851, %815
  %935 = fsub fast float %934, %868
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fsub fast float %936, %815
  %938 = fmul fast float %937, %829
  %939 = fadd fast float %938, %815
  br label %993

; <label>:940                                     ; preds = %828
  %941 = and i32 %831, 134217728
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %977, label %943

; <label>:943                                     ; preds = %940
  %944 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %945 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %946 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %947 = fadd fast float %944, -5.000000e-01
  %948 = fadd fast float %945, -5.000000e-01
  %949 = fadd fast float %946, -5.000000e-01
  %950 = fmul fast float %947, %829
  %951 = fmul fast float %948, %829
  %952 = fmul fast float %949, %829
  %953 = fadd fast float %950, 5.000000e-01
  %954 = fadd fast float %951, 5.000000e-01
  %955 = fadd fast float %952, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %957 = call float @dx.op.unary.f32(i32 24, float %805)  ; Sqrt(value)
  %958 = call float @dx.op.unary.f32(i32 24, float %806)  ; Sqrt(value)
  %959 = fmul fast float %953, 2.000000e+00
  %960 = fsub fast float 1.000000e+00, %959
  %961 = fmul fast float %960, %956
  %962 = fadd fast float %961, %959
  %963 = fmul fast float %962, %956
  %964 = fmul fast float %954, 2.000000e+00
  %965 = fsub fast float 1.000000e+00, %964
  %966 = fmul fast float %965, %957
  %967 = fadd fast float %966, %964
  %968 = fmul fast float %967, %957
  %969 = fmul fast float %955, 2.000000e+00
  %970 = fsub fast float 1.000000e+00, %969
  %971 = fmul fast float %970, %958
  %972 = fadd fast float %971, %969
  %973 = fmul fast float %972, %958
  %974 = fmul fast float %963, %963
  %975 = fmul fast float %968, %968
  %976 = fmul fast float %973, %973
  br label %993

; <label>:977                                     ; preds = %940
  %978 = fmul fast float %281, %281
  %979 = fmul fast float %285, %285
  %980 = fmul fast float %289, %289
  %981 = fadd fast float %978, -1.000000e+00
  %982 = fadd fast float %979, -1.000000e+00
  %983 = fadd fast float %980, -1.000000e+00
  %984 = fmul fast float %829, %981
  %985 = fmul fast float %829, %982
  %986 = fmul fast float %829, %983
  %987 = fadd fast float %984, 1.000000e+00
  %988 = fadd fast float %985, 1.000000e+00
  %989 = fadd fast float %986, 1.000000e+00
  %990 = fmul fast float %987, %804
  %991 = fmul fast float %988, %805
  %992 = fmul fast float %989, %806
  br label %993

; <label>:993                                     ; preds = %977, %943, %834, %789
  %994 = phi float [ %939, %834 ], [ %815, %943 ], [ %815, %977 ], [ 0x3FA23C0BE0000000, %789 ]
  %995 = phi float [ %931, %834 ], [ %974, %943 ], [ %990, %977 ], [ 1.000000e+00, %789 ]
  %996 = phi float [ %932, %834 ], [ %975, %943 ], [ %991, %977 ], [ 1.000000e+00, %789 ]
  %997 = phi float [ %933, %834 ], [ %976, %943 ], [ %992, %977 ], [ 1.000000e+00, %789 ]
  %998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.i32 %998, 1
  %1000 = and i32 %999, 1
  %1001 = icmp ne i32 %1000, 0
  %1002 = add i32 %54, 356
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 32
  %1006 = icmp ne i32 %1005, 0
  %1007 = and i1 %1001, %1006
  %1008 = select i1 %1007, float 1.000000e+00, float %995
  %1009 = select i1 %1007, float 0x3FD3333340000000, float %996
  %1010 = select i1 %1007, float 0x3FD3333340000000, float %997
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 32
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1087, label %1015

; <label>:1015                                    ; preds = %993
  %1016 = add i32 %54, 92
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %54, 424
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = add i32 %1021, 0
  %1023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1023, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = and i32 %1018, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1018, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = lshr i32 %1018, 16
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F70101000000000
  %1038 = fmul fast float %1025, %1030
  %1039 = fadd fast float %1038, %1033
  %1040 = fmul fast float %1039, 0x3F70101000000000
  %1041 = fadd fast float %1026, -5.000000e-01
  %1042 = fadd fast float %1028, -5.000000e-01
  %1043 = fmul fast float %1041, %1037
  %1044 = fmul fast float %1042, %1037
  %1045 = fadd fast float %1043, 5.000000e-01
  %1046 = fadd fast float %1044, 5.000000e-01
  %1047 = fmul fast float %1045, 2.000000e+00
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = fmul fast float %1046, 2.000000e+00
  %1050 = fadd fast float %1049, -1.000000e+00
  %1051 = fadd fast float %1048, %1050
  %1052 = fmul fast float %1051, 5.000000e-01
  %1053 = fsub fast float %1048, %1050
  %1054 = fmul fast float %1053, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1056 = fsub fast float 1.000000e+00, %1055
  %1057 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1058 = fsub fast float %1056, %1057
  %1059 = call float @dx.op.dot3.f32(i32 55, float %1052, float %1054, float %1058, float %1052, float %1054, float %1058)  ; Dot3(ax,ay,az,bx,by,bz)
  %1060 = call float @dx.op.unary.f32(i32 25, float %1059)  ; Rsqrt(value)
  %1061 = fmul fast float %1052, %1060
  %1062 = fmul fast float %1054, %1060
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 67108864
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1083, label %1067

; <label>:1067                                    ; preds = %1015
  %1068 = add i32 %54, 280
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 65535
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 65535
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = lshr i32 %1070, 16
  %1078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1077)  ; LegacyF16ToF32(value)
  %1079 = fsub fast float %1040, %1078
  %1080 = fmul fast float %1079, %1072
  %1081 = fadd fast float %1080, %1076
  %1082 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  br label %1083

; <label>:1083                                    ; preds = %1067, %1015
  %1084 = phi float [ %1082, %1067 ], [ %1040, %1015 ]
  %1085 = call float @dx.op.dot2.f32(i32 54, float %1061, float %1062, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  %1086 = call float @dx.op.dot2.f32(i32 54, float %1061, float %1062, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  br label %1087

; <label>:1087                                    ; preds = %1083, %993
  %1088 = phi float [ %1084, %1083 ], [ 0x3FD6666660000000, %993 ]
  %1089 = phi float [ %1085, %1083 ], [ 0.000000e+00, %993 ]
  %1090 = phi float [ %1086, %1083 ], [ 0.000000e+00, %993 ]
  %1091 = phi float [ %1027, %1083 ], [ 1.000000e+00, %993 ]
  %1092 = add i32 %54, 160
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = lshr i32 %1094, 22
  %1096 = shl nuw nsw i32 %1095, 5
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 64
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1135, label %1102

; <label>:1102                                    ; preds = %1087
  %1103 = add i32 %54, 440
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 131072
  %1111 = icmp eq i32 %1110, 0
  %1112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1107, %dx.types.Handle %91, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = fmul fast float %1113, %269
  %1117 = fmul fast float %1114, %272
  %1118 = fmul fast float %1115, %275
  br i1 %1111, label %1125, label %1119

; <label>:1119                                    ; preds = %1102
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1122 = fmul fast float %1121, %1116
  %1123 = fmul fast float %1121, %1117
  %1124 = fmul fast float %1121, %1118
  br label %1125

; <label>:1125                                    ; preds = %1119, %1102
  %1126 = phi float [ %1122, %1119 ], [ %1116, %1102 ]
  %1127 = phi float [ %1123, %1119 ], [ %1117, %1102 ]
  %1128 = phi float [ %1124, %1119 ], [ %1118, %1102 ]
  %1129 = fmul fast float %1126, %1097
  %1130 = select i1 %252, float %1129, float %1126
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1127, float %1128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = select i1 %252, float 0.000000e+00, float %1126
  %1133 = select i1 %252, float %1131, float %1127
  %1134 = select i1 %252, float 0.000000e+00, float %1128
  br label %1135

; <label>:1135                                    ; preds = %1125, %1087
  %1136 = phi float [ %1132, %1125 ], [ 0.000000e+00, %1087 ]
  %1137 = phi float [ %1133, %1125 ], [ 0.000000e+00, %1087 ]
  %1138 = phi float [ %1134, %1125 ], [ 0.000000e+00, %1087 ]
  %1139 = add i32 %54, 96
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = lshr i32 %1141, 8
  %1145 = and i32 %1144, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = fmul fast float %1146, %1147
  %1149 = fadd fast float %1148, %1143
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  br label %1152

; <label>:1152                                    ; preds = %1135, %488
  %1153 = phi float [ 0.000000e+00, %488 ], [ %1089, %1135 ]
  %1154 = phi float [ 0.000000e+00, %488 ], [ %1090, %1135 ]
  %1155 = phi float [ 0.000000e+00, %488 ], [ %1008, %1135 ]
  %1156 = phi float [ 0.000000e+00, %488 ], [ %1009, %1135 ]
  %1157 = phi float [ 0.000000e+00, %488 ], [ %1010, %1135 ]
  %1158 = phi float [ 0.000000e+00, %488 ], [ %1136, %1135 ]
  %1159 = phi float [ 0.000000e+00, %488 ], [ %1137, %1135 ]
  %1160 = phi float [ 0.000000e+00, %488 ], [ %1138, %1135 ]
  %1161 = phi float [ 0.000000e+00, %488 ], [ %994, %1135 ]
  %1162 = phi float [ 0.000000e+00, %488 ], [ %790, %1135 ]
  %1163 = phi float [ 0.000000e+00, %488 ], [ %1088, %1135 ]
  %1164 = phi float [ 0.000000e+00, %488 ], [ %1091, %1135 ]
  %1165 = phi float [ 0.000000e+00, %488 ], [ %1151, %1135 ]
  br i1 %436, label %2007, label %1166

; <label>:1166                                    ; preds = %1152
  %1167 = icmp ult i32 %494, 2
  %1168 = add i32 %54, 40
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %54, 44
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = or i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %2007, label %1176

; <label>:1176                                    ; preds = %1166
  %1177 = and i32 %1170, 262144
  %1178 = icmp ne i32 %1177, 0
  %1179 = select i1 %1178, float %57, float 1.000000e+00
  %1180 = select i1 %1178, float %58, float 0.000000e+00
  %1181 = select i1 %1178, float %59, float 0.000000e+00
  %1182 = select i1 %1178, float %60, float 1.000000e+00
  %1183 = select i1 %1178, float %61, float %77
  %1184 = select i1 %1178, float %62, float %78
  %1185 = add i32 %54, 300
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1189, 0x3F50624DE0000000
  %1191 = add i32 %54, 104
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 16
  %1195 = and i32 %1194, 255
  %1196 = lshr i32 %1193, 24
  %1197 = add i32 %54, 308
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 65535
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1199, 16
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = add i32 %54, 48
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = lshr i32 %1206, 22
  %1208 = shl nuw nsw i32 %1207, 5
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = shl i32 %1206, 4
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1206, 7
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1218 = fmul fast float %1217, 1.000000e+03
  %1219 = fmul fast float %346, %1218
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = fadd fast float %1220, %336
  %1222 = fmul fast float %347, %1218
  %1223 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1224 = fadd fast float %1223, %338
  %1225 = fmul fast float %1190, %1218
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = fmul fast float %1226, 0x401921FB60000000
  %1228 = fadd fast float %1227, %1209
  %1229 = call float @dx.op.unary.f32(i32 13, float %1228)  ; Sin(value)
  %1230 = call float @dx.op.unary.f32(i32 12, float %1228)  ; Cos(value)
  %1231 = fsub fast float -0.000000e+00, %1229
  %1232 = fadd fast float %1183, -5.000000e-01
  %1233 = fadd fast float %1184, -5.000000e-01
  %1234 = fmul fast float %1201, %1232
  %1235 = fmul fast float %1203, %1233
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1212, %1236
  %1239 = fmul fast float %1215, %1237
  %1240 = fmul fast float %1230, %1238
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1231, float %1239, float %1240)  ; FMad(a,b,c)
  %1242 = fmul fast float %1229, %1238
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1230, float %1239, float %1242)  ; FMad(a,b,c)
  %1244 = fadd fast float %1221, %1241
  %1245 = fadd fast float %1224, %1243
  %1246 = icmp ugt i32 %1195, 1
  %1247 = icmp ugt i32 %1193, 33554431
  %1248 = or i1 %1247, %1246
  br i1 %1248, label %1249, label %1274

; <label>:1249                                    ; preds = %1176
  %1250 = add i32 %54, 244
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = lshr i32 %1252, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = fmul fast float %1217, %1254
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = mul nuw nsw i32 %1195, %1196
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1256, %1258
  %1260 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1261 = fptoui float %1260 to i32
  %1262 = urem i32 %1261, %1195
  %1263 = udiv i32 %1261, %1196
  %1264 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1265 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1266 = uitofp i32 %1262 to float
  %1267 = uitofp i32 %1263 to float
  %1268 = fadd fast float %1264, %1266
  %1269 = fadd fast float %1265, %1267
  %1270 = uitofp i32 %1195 to float
  %1271 = uitofp i32 %1196 to float
  %1272 = fdiv fast float %1268, %1270
  %1273 = fdiv fast float %1269, %1271
  br label %1274

; <label>:1274                                    ; preds = %1249, %1176
  %1275 = phi float [ %1272, %1249 ], [ %1244, %1176 ]
  %1276 = phi float [ %1273, %1249 ], [ %1245, %1176 ]
  %1277 = and i32 %1170, 16777216
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1388, label %1279

; <label>:1279                                    ; preds = %1274
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1284 = fadd fast float %1281, %158
  %1285 = fadd fast float %1282, %159
  %1286 = fadd fast float %1283, %160
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = icmp eq i32 %55, 65535
  br i1 %1290, label %1385, label %1291

; <label>:1291                                    ; preds = %1279
  %1292 = lshr i32 %55, 1
  %1293 = shl i32 %1292, 2
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %55, 1
  %1297 = icmp ne i32 %1296, 0
  %1298 = lshr i32 %1295, 16
  %1299 = and i32 %1295, 65535
  %1300 = select i1 %1297, i32 %1298, i32 %1299
  %1301 = icmp eq i32 %1300, 65535
  br i1 %1301, label %1381, label %1302

; <label>:1302                                    ; preds = %1291
  %1303 = mul nuw nsw i32 %1300, 40
  %1304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = add nuw nsw i32 %1303, 12
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1313 = add nuw nsw i32 %1303, 24
  %1314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = add nuw nsw i32 %1303, 36
  %1319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = fsub fast float %1284, %1305
  %1322 = fsub fast float %1285, %1306
  %1323 = fsub fast float %1286, %1307
  %1324 = fmul fast float %1320, %1321
  %1325 = fmul fast float %1320, %1322
  %1326 = fmul fast float %1320, %1323
  %1327 = call float @dx.op.unary.f32(i32 27, float %1324)  ; Round_ni(value)
  %1328 = call float @dx.op.unary.f32(i32 27, float %1325)  ; Round_ni(value)
  %1329 = call float @dx.op.unary.f32(i32 27, float %1326)  ; Round_ni(value)
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fmul fast float %1330, %1310
  %1334 = fmul fast float %1331, %1311
  %1335 = fmul fast float %1332, %1312
  %1336 = shl i32 %55, 2
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %1338, 0
  %1340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1341 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1342 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1343 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1340, %dx.types.Handle %49, float %1341, float %1342, float %1343, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = fmul fast float %1345, 1.023000e+03
  %1349 = fmul fast float %1346, 1.023000e+03
  %1350 = fmul fast float %1347, 1.023000e+03
  %1351 = fadd fast float %1348, 5.000000e-01
  %1352 = fadd fast float %1349, 5.000000e-01
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = call float @dx.op.unary.f32(i32 27, float %1351)  ; Round_ni(value)
  %1355 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1356 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1357 = fsub fast float %1324, %1327
  %1358 = fsub fast float %1325, %1328
  %1359 = fsub fast float %1326, %1329
  %1360 = fmul fast float %1357, 7.500000e-01
  %1361 = fmul fast float %1358, 7.500000e-01
  %1362 = fmul fast float %1359, 7.500000e-01
  %1363 = fadd fast float %1327, 1.250000e-01
  %1364 = fadd fast float %1363, %1360
  %1365 = fadd fast float %1364, %1354
  %1366 = fadd fast float %1328, 1.250000e-01
  %1367 = fadd fast float %1366, %1361
  %1368 = fadd fast float %1367, %1355
  %1369 = fadd fast float %1329, 1.250000e-01
  %1370 = fadd fast float %1369, %1362
  %1371 = fadd fast float %1370, %1356
  %1372 = fmul fast float %1365, %1315
  %1373 = fmul fast float %1368, %1316
  %1374 = fmul fast float %1371, %1317
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1378, %dx.types.Handle %47, float %1372, float %1373, float %1374, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  br label %1381

; <label>:1381                                    ; preds = %1302, %1291
  %1382 = phi float [ %1380, %1302 ], [ -1.000000e+00, %1291 ]
  %1383 = fadd fast float %1382, %1289
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  br label %1385

; <label>:1385                                    ; preds = %1381, %1279
  %1386 = phi float [ %1384, %1381 ], [ %1289, %1279 ]
  %1387 = fmul fast float %1386, %491
  br label %1388

; <label>:1388                                    ; preds = %1385, %1274
  %1389 = phi float [ %1387, %1385 ], [ %491, %1274 ]
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 256
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1440, label %1394

; <label>:1394                                    ; preds = %1388
  %1395 = add i32 %54, 476
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = add i32 %54, 116
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = shl i32 %1404, 4
  %1406 = and i32 %1405, 32752
  %1407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1406)  ; LegacyF16ToF32(value)
  %1408 = lshr i32 %1404, 7
  %1409 = and i32 %1408, 32752
  %1410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1409)  ; LegacyF16ToF32(value)
  %1411 = fsub fast float 1.000000e+00, %1389
  %1412 = call float @dx.op.binary.f32(i32 35, float %1411, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1413 = bitcast float %1389 to i32
  %1414 = sitofp i32 %1413 to float
  %1415 = fadd fast float %1414, 0xC1CFBF8940000000
  %1416 = fmul fast float %1410, %1415
  %1417 = fadd fast float %1416, 0x41CFBF8940000000
  %1418 = fptosi float %1417 to i32
  %1419 = bitcast i32 %1418 to float
  %1420 = bitcast float %1412 to i32
  %1421 = sitofp i32 %1420 to float
  %1422 = fadd fast float %1421, 0xC1CFBF8940000000
  %1423 = fmul fast float %1422, %1410
  %1424 = fadd fast float %1423, 0x41CFBF8940000000
  %1425 = fptosi float %1424 to i32
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1419, %1407
  %1428 = fmul fast float %1426, %1407
  %1429 = fsub fast float %1412, %1427
  %1430 = fadd fast float %1428, %1412
  %1431 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = fsub fast float %1401, %1431
  %1434 = fsub fast float %1432, %1431
  %1435 = bitcast float %1434 to i32
  %1436 = sub nsw i32 2129859010, %1435
  %1437 = bitcast i32 %1436 to float
  %1438 = fmul fast float %1437, %1433
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  br label %1440

; <label>:1440                                    ; preds = %1394, %1388
  %1441 = phi float [ %1439, %1394 ], [ %1389, %1388 ]
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 128
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1440
  %1447 = add i32 %54, 460
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 524288
  %1457 = icmp ne i32 %1456, 0
  %1458 = fcmp fast ogt float %1453, 0x3FE0101020000000
  %1459 = select i1 %1458, float 1.000000e+00, float 0.000000e+00
  %1460 = select i1 %1457, float %1459, float %1453
  %1461 = fmul fast float %1460, %1441
  br label %1462

; <label>:1462                                    ; preds = %1446, %1440
  %1463 = phi float [ %1461, %1446 ], [ %1441, %1440 ]
  %1464 = fcmp fast ult float %1463, 0x3F70101020000000
  br i1 %1464, label %2007, label %1465

; <label>:1465                                    ; preds = %1462
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 16
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1668, label %1470

; <label>:1470                                    ; preds = %1465
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %54, 412
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = add i32 %1475, 0
  %1477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1477, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.ResRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.ResRet.f32 %1478, 2
  %1482 = extractvalue %dx.types.ResRet.f32 %1478, 3
  %1483 = and i32 %1472, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = lshr i32 %1472, 8
  %1486 = and i32 %1485, 255
  %1487 = uitofp i32 %1486 to float
  %1488 = fmul fast float %1482, %1484
  %1489 = fadd fast float %1488, %1487
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 512
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1503, label %1495

; <label>:1495                                    ; preds = %1470
  %1496 = add i32 %54, 492
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %92, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  br label %1503

; <label>:1503                                    ; preds = %1495, %1470
  %1504 = phi float [ %1502, %1495 ], [ 1.000000e+00, %1470 ]
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 33554432
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1615, label %1509

; <label>:1509                                    ; preds = %1503
  %1510 = add i32 %54, 240
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = lshr i32 %1512, 16
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = add i32 %54, 244
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = lshr i32 %1523, 24
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = and i32 %1523, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1523, 8
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = lshr i32 %1523, 16
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = add i32 %54, 236
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 24
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = and i32 %1540, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = lshr i32 %1540, 8
  %1548 = and i32 %1547, 255
  %1549 = uitofp i32 %1548 to float
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = lshr i32 %1540, 16
  %1552 = and i32 %1551, 255
  %1553 = uitofp i32 %1552 to float
  %1554 = fmul fast float %1553, 0x3F70101020000000
  %1555 = bitcast float %1479 to i32
  %1556 = ashr i32 %1555, 1
  %1557 = sub nsw i32 1597463174, %1556
  %1558 = bitcast i32 %1557 to float
  %1559 = fmul fast float %1479, 5.000000e-01
  %1560 = fmul fast float %1558, %1558
  %1561 = fmul fast float %1560, %1559
  %1562 = fsub fast float 1.500000e+00, %1561
  %1563 = fmul fast float %1558, %1479
  %1564 = fmul fast float %1563, %1562
  %1565 = bitcast float %1480 to i32
  %1566 = ashr i32 %1565, 1
  %1567 = sub nsw i32 1597463174, %1566
  %1568 = bitcast i32 %1567 to float
  %1569 = fmul fast float %1480, 5.000000e-01
  %1570 = fmul fast float %1568, %1568
  %1571 = fmul fast float %1570, %1569
  %1572 = fsub fast float 1.500000e+00, %1571
  %1573 = fmul fast float %1568, %1480
  %1574 = fmul fast float %1573, %1572
  %1575 = bitcast float %1481 to i32
  %1576 = ashr i32 %1575, 1
  %1577 = sub nsw i32 1597463174, %1576
  %1578 = bitcast i32 %1577 to float
  %1579 = fmul fast float %1481, 5.000000e-01
  %1580 = fmul fast float %1578, %1578
  %1581 = fmul fast float %1580, %1579
  %1582 = fsub fast float 1.500000e+00, %1581
  %1583 = fmul fast float %1578, %1481
  %1584 = fmul fast float %1583, %1582
  %1585 = fsub fast float %1564, %1546
  %1586 = fsub fast float %1574, %1550
  %1587 = fsub fast float %1584, %1554
  %1588 = fmul fast float %1585, %1514
  %1589 = fmul fast float %1586, %1516
  %1590 = fmul fast float %1587, %1521
  %1591 = fadd fast float %1588, %1529
  %1592 = fadd fast float %1589, %1533
  %1593 = fadd fast float %1590, %1537
  %1594 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1595 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = fmul fast float %1594, %1594
  %1598 = fmul fast float %1595, %1595
  %1599 = fmul fast float %1596, %1596
  %1600 = fsub fast float %1597, %1479
  %1601 = fsub fast float %1598, %1480
  %1602 = fsub fast float %1599, %1481
  %1603 = fmul fast float %1600, %1504
  %1604 = fmul fast float %1601, %1504
  %1605 = fmul fast float %1602, %1504
  %1606 = fadd fast float %1603, %1479
  %1607 = fadd fast float %1604, %1480
  %1608 = fadd fast float %1605, %1481
  %1609 = fadd fast float %1526, %1490
  %1610 = fsub fast float %1609, %1543
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fsub fast float %1611, %1490
  %1613 = fmul fast float %1612, %1504
  %1614 = fadd fast float %1613, %1490
  br label %1668

; <label>:1615                                    ; preds = %1503
  %1616 = and i32 %1506, 134217728
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1652, label %1618

; <label>:1618                                    ; preds = %1615
  %1619 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1620 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1622 = fadd fast float %1619, -5.000000e-01
  %1623 = fadd fast float %1620, -5.000000e-01
  %1624 = fadd fast float %1621, -5.000000e-01
  %1625 = fmul fast float %1622, %1504
  %1626 = fmul fast float %1623, %1504
  %1627 = fmul fast float %1624, %1504
  %1628 = fadd fast float %1625, 5.000000e-01
  %1629 = fadd fast float %1626, 5.000000e-01
  %1630 = fadd fast float %1627, 5.000000e-01
  %1631 = call float @dx.op.unary.f32(i32 24, float %1479)  ; Sqrt(value)
  %1632 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1634 = fmul fast float %1628, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1631
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1631
  %1639 = fmul fast float %1629, 2.000000e+00
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fmul fast float %1640, %1632
  %1642 = fadd fast float %1641, %1639
  %1643 = fmul fast float %1642, %1632
  %1644 = fmul fast float %1630, 2.000000e+00
  %1645 = fsub fast float 1.000000e+00, %1644
  %1646 = fmul fast float %1645, %1633
  %1647 = fadd fast float %1646, %1644
  %1648 = fmul fast float %1647, %1633
  %1649 = fmul fast float %1638, %1638
  %1650 = fmul fast float %1643, %1643
  %1651 = fmul fast float %1648, %1648
  br label %1668

; <label>:1652                                    ; preds = %1615
  %1653 = fmul fast float %323, %323
  %1654 = fmul fast float %327, %327
  %1655 = fmul fast float %331, %331
  %1656 = fadd fast float %1653, -1.000000e+00
  %1657 = fadd fast float %1654, -1.000000e+00
  %1658 = fadd fast float %1655, -1.000000e+00
  %1659 = fmul fast float %1504, %1656
  %1660 = fmul fast float %1504, %1657
  %1661 = fmul fast float %1504, %1658
  %1662 = fadd fast float %1659, 1.000000e+00
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fmul fast float %1662, %1479
  %1666 = fmul fast float %1663, %1480
  %1667 = fmul fast float %1664, %1481
  br label %1668

; <label>:1668                                    ; preds = %1652, %1618, %1509, %1465
  %1669 = phi float [ %1614, %1509 ], [ %1490, %1618 ], [ %1490, %1652 ], [ 0x3FA23C0BE0000000, %1465 ]
  %1670 = phi float [ %1606, %1509 ], [ %1649, %1618 ], [ %1665, %1652 ], [ 1.000000e+00, %1465 ]
  %1671 = phi float [ %1607, %1509 ], [ %1650, %1618 ], [ %1666, %1652 ], [ 1.000000e+00, %1465 ]
  %1672 = phi float [ %1608, %1509 ], [ %1651, %1618 ], [ %1667, %1652 ], [ 1.000000e+00, %1465 ]
  %1673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.i32 %1673, 1
  %1675 = and i32 %1674, 1
  %1676 = icmp ne i32 %1675, 0
  %1677 = add i32 %54, 356
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 32
  %1681 = icmp ne i32 %1680, 0
  %1682 = and i1 %1676, %1681
  %1683 = select i1 %1682, float 1.000000e+00, float %1670
  %1684 = select i1 %1682, float 0x3FD3333340000000, float %1671
  %1685 = select i1 %1682, float 0x3FD3333340000000, float %1672
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 32
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1762, label %1690

; <label>:1690                                    ; preds = %1668
  %1691 = add i32 %54, 108
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1691, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = add i32 %54, 428
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = add i32 %1696, 0
  %1698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1698, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = extractvalue %dx.types.ResRet.f32 %1699, 3
  %1704 = and i32 %1693, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = lshr i32 %1693, 8
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = lshr i32 %1693, 16
  %1710 = and i32 %1709, 255
  %1711 = uitofp i32 %1710 to float
  %1712 = fmul fast float %1711, 0x3F70101000000000
  %1713 = fmul fast float %1700, %1705
  %1714 = fadd fast float %1713, %1708
  %1715 = fmul fast float %1714, 0x3F70101000000000
  %1716 = fadd fast float %1701, -5.000000e-01
  %1717 = fadd fast float %1703, -5.000000e-01
  %1718 = fmul fast float %1716, %1712
  %1719 = fmul fast float %1717, %1712
  %1720 = fadd fast float %1718, 5.000000e-01
  %1721 = fadd fast float %1719, 5.000000e-01
  %1722 = fmul fast float %1720, 2.000000e+00
  %1723 = fadd fast float %1722, -1.000000e+00
  %1724 = fmul fast float %1721, 2.000000e+00
  %1725 = fadd fast float %1724, -1.000000e+00
  %1726 = fadd fast float %1723, %1725
  %1727 = fmul fast float %1726, 5.000000e-01
  %1728 = fsub fast float %1723, %1725
  %1729 = fmul fast float %1728, 5.000000e-01
  %1730 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = call float @dx.op.unary.f32(i32 6, float %1729)  ; FAbs(value)
  %1733 = fsub fast float %1731, %1732
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1727, float %1729, float %1733, float %1727, float %1729, float %1733)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = call float @dx.op.unary.f32(i32 25, float %1734)  ; Rsqrt(value)
  %1736 = fmul fast float %1727, %1735
  %1737 = fmul fast float %1729, %1735
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 67108864
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1758, label %1742

; <label>:1742                                    ; preds = %1690
  %1743 = add i32 %54, 296
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 65535
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 65535
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = lshr i32 %1745, 16
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = fsub fast float %1715, %1753
  %1755 = fmul fast float %1754, %1747
  %1756 = fadd fast float %1755, %1751
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  br label %1758

; <label>:1758                                    ; preds = %1742, %1690
  %1759 = phi float [ %1757, %1742 ], [ %1715, %1690 ]
  %1760 = call float @dx.op.dot2.f32(i32 54, float %1736, float %1737, float %1179, float %1180)  ; Dot2(ax,ay,bx,by)
  %1761 = call float @dx.op.dot2.f32(i32 54, float %1736, float %1737, float %1181, float %1182)  ; Dot2(ax,ay,bx,by)
  br label %1762

; <label>:1762                                    ; preds = %1758, %1668
  %1763 = phi float [ %1759, %1758 ], [ 0x3FD6666660000000, %1668 ]
  %1764 = phi float [ %1760, %1758 ], [ 0.000000e+00, %1668 ]
  %1765 = phi float [ %1761, %1758 ], [ 0.000000e+00, %1668 ]
  %1766 = phi float [ %1702, %1758 ], [ 1.000000e+00, %1668 ]
  %1767 = add i32 %54, 176
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = lshr i32 %1769, 22
  %1771 = shl nuw nsw i32 %1770, 5
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 64
  %1776 = icmp eq i32 %1775, 0
  br i1 %1776, label %1810, label %1777

; <label>:1777                                    ; preds = %1762
  %1778 = add i32 %54, 444
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 131072
  %1786 = icmp eq i32 %1785, 0
  %1787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %91, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = fmul fast float %1788, %311
  %1792 = fmul fast float %1789, %314
  %1793 = fmul fast float %1790, %317
  br i1 %1786, label %1800, label %1794

; <label>:1794                                    ; preds = %1777
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = fmul fast float %1796, %1791
  %1798 = fmul fast float %1796, %1792
  %1799 = fmul fast float %1796, %1793
  br label %1800

; <label>:1800                                    ; preds = %1794, %1777
  %1801 = phi float [ %1797, %1794 ], [ %1791, %1777 ]
  %1802 = phi float [ %1798, %1794 ], [ %1792, %1777 ]
  %1803 = phi float [ %1799, %1794 ], [ %1793, %1777 ]
  %1804 = fmul fast float %1801, %1772
  %1805 = select i1 %252, float %1804, float %1801
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1802, float %1803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = select i1 %252, float 0.000000e+00, float %1801
  %1808 = select i1 %252, float %1806, float %1802
  %1809 = select i1 %252, float 0.000000e+00, float %1803
  br label %1810

; <label>:1810                                    ; preds = %1800, %1762
  %1811 = phi float [ %1807, %1800 ], [ 0.000000e+00, %1762 ]
  %1812 = phi float [ %1808, %1800 ], [ 0.000000e+00, %1762 ]
  %1813 = phi float [ %1809, %1800 ], [ 0.000000e+00, %1762 ]
  %1814 = add i32 %54, 112
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 255
  %1818 = uitofp i32 %1817 to float
  %1819 = lshr i32 %1816, 8
  %1820 = and i32 %1819, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1684, float %1685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = fmul fast float %1821, %1822
  %1824 = fadd fast float %1823, %1818
  %1825 = fmul fast float %1824, 0x3F70101020000000
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  br i1 %1167, label %1827, label %1835

; <label>:1827                                    ; preds = %1810
  %1828 = fsub fast float 1.000000e+00, %1463
  %1829 = fmul fast float %1828, %1155
  %1830 = fmul fast float %1828, %1156
  %1831 = fmul fast float %1828, %1157
  %1832 = fmul fast float %1828, %1158
  %1833 = fmul fast float %1828, %1159
  %1834 = fmul fast float %1828, %1160
  br label %1835

; <label>:1835                                    ; preds = %1827, %1810
  %1836 = phi float [ %1829, %1827 ], [ %1155, %1810 ]
  %1837 = phi float [ %1830, %1827 ], [ %1156, %1810 ]
  %1838 = phi float [ %1831, %1827 ], [ %1157, %1810 ]
  %1839 = phi float [ %1832, %1827 ], [ %1158, %1810 ]
  %1840 = phi float [ %1833, %1827 ], [ %1159, %1810 ]
  %1841 = phi float [ %1834, %1827 ], [ %1160, %1810 ]
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 3
  %1845 = icmp eq i32 %1844, 3
  br i1 %1845, label %1924, label %1846

; <label>:1846                                    ; preds = %1835
  %1847 = and i32 %1843, 16
  %1848 = icmp ne i32 %1847, 0
  %1849 = select i1 %1848, float %1463, float 0.000000e+00
  %1850 = icmp eq i32 %1844, 0
  br i1 %1850, label %1851, label %1879

; <label>:1851                                    ; preds = %1846
  %1852 = and i32 %1843, 64
  %1853 = icmp ne i32 %1852, 0
  %1854 = select i1 %1853, float %1463, float 0.000000e+00
  %1855 = fsub fast float %1683, %1836
  %1856 = fsub fast float %1684, %1837
  %1857 = fsub fast float %1685, %1838
  %1858 = fmul fast float %1849, %1855
  %1859 = fmul fast float %1849, %1856
  %1860 = fmul fast float %1849, %1857
  %1861 = fadd fast float %1858, %1836
  %1862 = fadd fast float %1859, %1837
  %1863 = fadd fast float %1860, %1838
  %1864 = fsub fast float %1669, %1161
  %1865 = fmul fast float %1849, %1864
  %1866 = fadd fast float %1865, %1161
  %1867 = fsub fast float %1811, %1839
  %1868 = fsub fast float %1812, %1840
  %1869 = fsub fast float %1813, %1841
  %1870 = fmul fast float %1854, %1867
  %1871 = fmul fast float %1854, %1868
  %1872 = fmul fast float %1854, %1869
  %1873 = fadd fast float %1870, %1839
  %1874 = fadd fast float %1871, %1840
  %1875 = fadd fast float %1872, %1841
  %1876 = fsub fast float %1826, %1165
  %1877 = fmul fast float %1849, %1876
  %1878 = fadd fast float %1877, %1165
  br label %1924

; <label>:1879                                    ; preds = %1846
  %1880 = icmp eq i32 %1844, 1
  br i1 %1880, label %1881, label %1894

; <label>:1881                                    ; preds = %1879
  %1882 = fadd fast float %1683, -1.000000e+00
  %1883 = fadd fast float %1684, -1.000000e+00
  %1884 = fadd fast float %1685, -1.000000e+00
  %1885 = fmul fast float %1849, %1882
  %1886 = fmul fast float %1849, %1883
  %1887 = fmul fast float %1849, %1884
  %1888 = fadd fast float %1885, 1.000000e+00
  %1889 = fadd fast float %1886, 1.000000e+00
  %1890 = fadd fast float %1887, 1.000000e+00
  %1891 = fmul fast float %1888, %1836
  %1892 = fmul fast float %1889, %1837
  %1893 = fmul fast float %1890, %1838
  br label %1924

; <label>:1894                                    ; preds = %1879
  %1895 = icmp eq i32 %1844, 2
  br i1 %1895, label %1896, label %1924

; <label>:1896                                    ; preds = %1894
  %1897 = call float @dx.op.unary.f32(i32 24, float %1683)  ; Sqrt(value)
  %1898 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1899 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1900 = fadd fast float %1897, -5.000000e-01
  %1901 = fadd fast float %1898, -5.000000e-01
  %1902 = fadd fast float %1899, -5.000000e-01
  %1903 = fmul fast float %1900, %1849
  %1904 = fmul fast float %1901, %1849
  %1905 = fmul fast float %1902, %1849
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fadd fast float %1904, 5.000000e-01
  %1908 = fadd fast float %1905, 5.000000e-01
  %1909 = fmul fast float %1906, 2.000000e+00
  %1910 = fsub fast float 1.000000e+00, %1909
  %1911 = fmul fast float %1910, %1836
  %1912 = fadd fast float %1911, %1909
  %1913 = fmul fast float %1912, %1836
  %1914 = fmul fast float %1907, 2.000000e+00
  %1915 = fsub fast float 1.000000e+00, %1914
  %1916 = fmul fast float %1915, %1837
  %1917 = fadd fast float %1916, %1914
  %1918 = fmul fast float %1917, %1837
  %1919 = fmul fast float %1908, 2.000000e+00
  %1920 = fsub fast float 1.000000e+00, %1919
  %1921 = fmul fast float %1920, %1838
  %1922 = fadd fast float %1921, %1919
  %1923 = fmul fast float %1922, %1838
  br label %1924

; <label>:1924                                    ; preds = %1896, %1894, %1881, %1851, %1835
  %1925 = phi float [ %1836, %1835 ], [ %1913, %1896 ], [ %1836, %1894 ], [ %1891, %1881 ], [ %1861, %1851 ]
  %1926 = phi float [ %1837, %1835 ], [ %1918, %1896 ], [ %1837, %1894 ], [ %1892, %1881 ], [ %1862, %1851 ]
  %1927 = phi float [ %1838, %1835 ], [ %1923, %1896 ], [ %1838, %1894 ], [ %1893, %1881 ], [ %1863, %1851 ]
  %1928 = phi float [ %1839, %1835 ], [ %1839, %1896 ], [ %1839, %1894 ], [ %1839, %1881 ], [ %1873, %1851 ]
  %1929 = phi float [ %1840, %1835 ], [ %1840, %1896 ], [ %1840, %1894 ], [ %1840, %1881 ], [ %1874, %1851 ]
  %1930 = phi float [ %1841, %1835 ], [ %1841, %1896 ], [ %1841, %1894 ], [ %1841, %1881 ], [ %1875, %1851 ]
  %1931 = phi float [ %1161, %1835 ], [ %1161, %1896 ], [ %1161, %1894 ], [ %1161, %1881 ], [ %1866, %1851 ]
  %1932 = phi float [ %1165, %1835 ], [ %1165, %1896 ], [ %1165, %1894 ], [ %1165, %1881 ], [ %1878, %1851 ]
  %1933 = and i32 %1843, 12
  %1934 = icmp eq i32 %1933, 12
  br i1 %1934, label %2007, label %1935

; <label>:1935                                    ; preds = %1924
  %1936 = and i32 %1843, 2097184
  %1937 = icmp eq i32 %1936, 2097184
  %1938 = select i1 %1937, float %1463, float 0.000000e+00
  %1939 = and i32 %1843, 4194336
  %1940 = icmp eq i32 %1939, 4194336
  %1941 = select i1 %1940, float %1463, float 0.000000e+00
  %1942 = and i32 %1843, 8388640
  %1943 = icmp eq i32 %1942, 8388640
  %1944 = select i1 %1943, float %1463, float 0.000000e+00
  %1945 = icmp eq i32 %1933, 0
  br i1 %1945, label %1946, label %1959

; <label>:1946                                    ; preds = %1935
  %1947 = fsub fast float %1764, %1153
  %1948 = fsub fast float %1765, %1154
  %1949 = fmul fast float %1938, %1947
  %1950 = fmul fast float %1938, %1948
  %1951 = fadd fast float %1949, %1153
  %1952 = fadd fast float %1950, %1154
  %1953 = fsub fast float %1766, %1164
  %1954 = fmul fast float %1941, %1953
  %1955 = fadd fast float %1954, %1164
  %1956 = fsub fast float %1763, %1163
  %1957 = fmul fast float %1944, %1956
  %1958 = fadd fast float %1957, %1163
  br label %2007

; <label>:1959                                    ; preds = %1935
  %1960 = icmp eq i32 %1933, 4
  br i1 %1960, label %1961, label %1993

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1938, %1764
  %1963 = fmul fast float %1938, %1765
  %1964 = fadd fast float %1962, %1153
  %1965 = fadd fast float %1963, %1154
  %1966 = call float @dx.op.binary.f32(i32 36, float %1164, float %1766)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1164
  %1968 = fmul fast float %1967, %1941
  %1969 = fadd fast float %1968, %1164
  %1970 = fadd fast float %1763, %1163
  %1971 = fmul fast float %1970, 0x3FF337FAE0000000
  %1972 = fmul fast float %1163, %1163
  %1973 = fmul fast float %1763, %1763
  %1974 = fadd fast float %1973, %1972
  %1975 = fmul fast float %1974, 0x3FE5152B00000000
  %1976 = fmul fast float %1163, 0xBFCC1F85E0000000
  %1977 = fmul fast float %1976, %1763
  %1978 = fadd fast float %1977, 0xBFE1363700000000
  %1979 = fadd fast float %1978, %1971
  %1980 = fsub fast float %1979, %1975
  %1981 = fmul fast float %1970, 0x3FBA6F0D00000000
  %1982 = fmul fast float %1974, 0x3FD0432880000000
  %1983 = fmul fast float %1163, 0xBFEF110800000000
  %1984 = fmul fast float %1983, %1763
  %1985 = fadd fast float %1984, 1.000000e+00
  %1986 = fsub fast float %1985, %1981
  %1987 = fadd fast float %1986, %1982
  %1988 = fdiv fast float %1980, %1987
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float %1989, %1163
  %1991 = fmul fast float %1990, %1944
  %1992 = fadd fast float %1991, %1163
  br label %2007

; <label>:1993                                    ; preds = %1959
  %1994 = icmp eq i32 %1933, 8
  br i1 %1994, label %1995, label %2007

; <label>:1995                                    ; preds = %1993
  %1996 = fmul fast float %1938, %1764
  %1997 = fmul fast float %1938, %1765
  %1998 = fadd fast float %1996, %1153
  %1999 = fadd fast float %1997, %1154
  %2000 = call float @dx.op.binary.f32(i32 36, float %1164, float %1766)  ; FMin(a,b)
  %2001 = fsub fast float %2000, %1164
  %2002 = fmul fast float %2001, %1941
  %2003 = fadd fast float %2002, %1164
  %2004 = fsub fast float %1763, %1163
  %2005 = fmul fast float %1944, %2004
  %2006 = fadd fast float %2005, %1163
  br label %2007

; <label>:2007                                    ; preds = %1995, %1993, %1961, %1946, %1924, %1462, %1166, %1152
  %2008 = phi float [ %1153, %1924 ], [ %1153, %1462 ], [ %1153, %1152 ], [ %1998, %1995 ], [ %1153, %1993 ], [ %1964, %1961 ], [ %1951, %1946 ], [ %1153, %1166 ]
  %2009 = phi float [ %1154, %1924 ], [ %1154, %1462 ], [ %1154, %1152 ], [ %1999, %1995 ], [ %1154, %1993 ], [ %1965, %1961 ], [ %1952, %1946 ], [ %1154, %1166 ]
  %2010 = phi float [ %1925, %1924 ], [ %1155, %1462 ], [ %1155, %1152 ], [ %1925, %1995 ], [ %1925, %1993 ], [ %1925, %1961 ], [ %1925, %1946 ], [ %1155, %1166 ]
  %2011 = phi float [ %1926, %1924 ], [ %1156, %1462 ], [ %1156, %1152 ], [ %1926, %1995 ], [ %1926, %1993 ], [ %1926, %1961 ], [ %1926, %1946 ], [ %1156, %1166 ]
  %2012 = phi float [ %1927, %1924 ], [ %1157, %1462 ], [ %1157, %1152 ], [ %1927, %1995 ], [ %1927, %1993 ], [ %1927, %1961 ], [ %1927, %1946 ], [ %1157, %1166 ]
  %2013 = phi float [ %1928, %1924 ], [ %1158, %1462 ], [ %1158, %1152 ], [ %1928, %1995 ], [ %1928, %1993 ], [ %1928, %1961 ], [ %1928, %1946 ], [ %1158, %1166 ]
  %2014 = phi float [ %1929, %1924 ], [ %1159, %1462 ], [ %1159, %1152 ], [ %1929, %1995 ], [ %1929, %1993 ], [ %1929, %1961 ], [ %1929, %1946 ], [ %1159, %1166 ]
  %2015 = phi float [ %1930, %1924 ], [ %1160, %1462 ], [ %1160, %1152 ], [ %1930, %1995 ], [ %1930, %1993 ], [ %1930, %1961 ], [ %1930, %1946 ], [ %1160, %1166 ]
  %2016 = phi float [ %1931, %1924 ], [ %1161, %1462 ], [ %1161, %1152 ], [ %1931, %1995 ], [ %1931, %1993 ], [ %1931, %1961 ], [ %1931, %1946 ], [ %1161, %1166 ]
  %2017 = phi float [ %1163, %1924 ], [ %1163, %1462 ], [ %1163, %1152 ], [ %2006, %1995 ], [ %1163, %1993 ], [ %1992, %1961 ], [ %1958, %1946 ], [ %1163, %1166 ]
  %2018 = phi float [ %1164, %1924 ], [ %1164, %1462 ], [ %1164, %1152 ], [ %2003, %1995 ], [ %1164, %1993 ], [ %1969, %1961 ], [ %1955, %1946 ], [ %1164, %1166 ]
  %2019 = phi float [ %1932, %1924 ], [ %1165, %1462 ], [ %1165, %1152 ], [ %1932, %1995 ], [ %1932, %1993 ], [ %1932, %1961 ], [ %1932, %1946 ], [ %1165, %1166 ]
  br i1 %438, label %2861, label %2020

; <label>:2020                                    ; preds = %2007
  %2021 = icmp ult i32 %494, 3
  %2022 = add i32 %54, 56
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %54, 60
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = or i32 %2027, %2024
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2861, label %2030

; <label>:2030                                    ; preds = %2020
  %2031 = and i32 %2024, 262144
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %57, float 1.000000e+00
  %2034 = select i1 %2032, float %58, float 0.000000e+00
  %2035 = select i1 %2032, float %59, float 0.000000e+00
  %2036 = select i1 %2032, float %60, float 1.000000e+00
  %2037 = select i1 %2032, float %61, float %77
  %2038 = select i1 %2032, float %62, float %78
  %2039 = add i32 %54, 316
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = lshr i32 %2041, 16
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = fmul fast float %2043, 0x3F50624DE0000000
  %2045 = add i32 %54, 120
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 16
  %2049 = and i32 %2048, 255
  %2050 = lshr i32 %2047, 24
  %2051 = add i32 %54, 324
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 65535
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = lshr i32 %2053, 16
  %2057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2056)  ; LegacyF16ToF32(value)
  %2058 = add i32 %54, 64
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = lshr i32 %2060, 22
  %2062 = shl nuw nsw i32 %2061, 5
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = shl i32 %2060, 4
  %2065 = and i32 %2064, 32752
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = lshr i32 %2060, 7
  %2068 = and i32 %2067, 32752
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2072 = fmul fast float %2071, 1.000000e+03
  %2073 = fmul fast float %388, %2072
  %2074 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2075 = fadd fast float %2074, %378
  %2076 = fmul fast float %389, %2072
  %2077 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2078 = fadd fast float %2077, %380
  %2079 = fmul fast float %2044, %2072
  %2080 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2081 = fmul fast float %2080, 0x401921FB60000000
  %2082 = fadd fast float %2081, %2063
  %2083 = call float @dx.op.unary.f32(i32 13, float %2082)  ; Sin(value)
  %2084 = call float @dx.op.unary.f32(i32 12, float %2082)  ; Cos(value)
  %2085 = fsub fast float -0.000000e+00, %2083
  %2086 = fadd fast float %2037, -5.000000e-01
  %2087 = fadd fast float %2038, -5.000000e-01
  %2088 = fmul fast float %2055, %2086
  %2089 = fmul fast float %2057, %2087
  %2090 = fadd fast float %2088, 5.000000e-01
  %2091 = fadd fast float %2089, 5.000000e-01
  %2092 = fmul fast float %2066, %2090
  %2093 = fmul fast float %2069, %2091
  %2094 = fmul fast float %2084, %2092
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %2085, float %2093, float %2094)  ; FMad(a,b,c)
  %2096 = fmul fast float %2083, %2092
  %2097 = call float @dx.op.tertiary.f32(i32 46, float %2084, float %2093, float %2096)  ; FMad(a,b,c)
  %2098 = fadd fast float %2075, %2095
  %2099 = fadd fast float %2078, %2097
  %2100 = icmp ugt i32 %2049, 1
  %2101 = icmp ugt i32 %2047, 33554431
  %2102 = or i1 %2101, %2100
  br i1 %2102, label %2103, label %2128

; <label>:2103                                    ; preds = %2030
  %2104 = add i32 %54, 260
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = lshr i32 %2106, 16
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = fmul fast float %2071, %2108
  %2110 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2111 = mul nuw nsw i32 %2049, %2050
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2110, %2112
  %2114 = call float @dx.op.unary.f32(i32 27, float %2113)  ; Round_ni(value)
  %2115 = fptoui float %2114 to i32
  %2116 = urem i32 %2115, %2049
  %2117 = udiv i32 %2115, %2050
  %2118 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2119 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2120 = uitofp i32 %2116 to float
  %2121 = uitofp i32 %2117 to float
  %2122 = fadd fast float %2118, %2120
  %2123 = fadd fast float %2119, %2121
  %2124 = uitofp i32 %2049 to float
  %2125 = uitofp i32 %2050 to float
  %2126 = fdiv fast float %2122, %2124
  %2127 = fdiv fast float %2123, %2125
  br label %2128

; <label>:2128                                    ; preds = %2103, %2030
  %2129 = phi float [ %2126, %2103 ], [ %2098, %2030 ]
  %2130 = phi float [ %2127, %2103 ], [ %2099, %2030 ]
  %2131 = and i32 %2024, 16777216
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2242, label %2133

; <label>:2133                                    ; preds = %2128
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.CBufRet.f32 %2134, 2
  %2138 = fadd fast float %2135, %158
  %2139 = fadd fast float %2136, %159
  %2140 = fadd fast float %2137, %160
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 0
  %2143 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2144 = icmp eq i32 %55, 65535
  br i1 %2144, label %2239, label %2145

; <label>:2145                                    ; preds = %2133
  %2146 = lshr i32 %55, 1
  %2147 = shl i32 %2146, 2
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %55, 1
  %2151 = icmp ne i32 %2150, 0
  %2152 = lshr i32 %2149, 16
  %2153 = and i32 %2149, 65535
  %2154 = select i1 %2151, i32 %2152, i32 %2153
  %2155 = icmp eq i32 %2154, 65535
  br i1 %2155, label %2235, label %2156

; <label>:2156                                    ; preds = %2145
  %2157 = mul nuw nsw i32 %2154, 40
  %2158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = add nuw nsw i32 %2157, 12
  %2163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2166 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2167 = add nuw nsw i32 %2157, 24
  %2168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = add nuw nsw i32 %2157, 36
  %2173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = fsub fast float %2138, %2159
  %2176 = fsub fast float %2139, %2160
  %2177 = fsub fast float %2140, %2161
  %2178 = fmul fast float %2174, %2175
  %2179 = fmul fast float %2174, %2176
  %2180 = fmul fast float %2174, %2177
  %2181 = call float @dx.op.unary.f32(i32 27, float %2178)  ; Round_ni(value)
  %2182 = call float @dx.op.unary.f32(i32 27, float %2179)  ; Round_ni(value)
  %2183 = call float @dx.op.unary.f32(i32 27, float %2180)  ; Round_ni(value)
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fmul fast float %2184, %2164
  %2188 = fmul fast float %2185, %2165
  %2189 = fmul fast float %2186, %2166
  %2190 = shl i32 %55, 2
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %2192, 0
  %2194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2195 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2196 = call float @dx.op.unary.f32(i32 22, float %2188)  ; Frc(value)
  %2197 = call float @dx.op.unary.f32(i32 22, float %2189)  ; Frc(value)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2194, %dx.types.Handle %49, float %2195, float %2196, float %2197, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = fmul fast float %2199, 1.023000e+03
  %2203 = fmul fast float %2200, 1.023000e+03
  %2204 = fmul fast float %2201, 1.023000e+03
  %2205 = fadd fast float %2202, 5.000000e-01
  %2206 = fadd fast float %2203, 5.000000e-01
  %2207 = fadd fast float %2204, 5.000000e-01
  %2208 = call float @dx.op.unary.f32(i32 27, float %2205)  ; Round_ni(value)
  %2209 = call float @dx.op.unary.f32(i32 27, float %2206)  ; Round_ni(value)
  %2210 = call float @dx.op.unary.f32(i32 27, float %2207)  ; Round_ni(value)
  %2211 = fsub fast float %2178, %2181
  %2212 = fsub fast float %2179, %2182
  %2213 = fsub fast float %2180, %2183
  %2214 = fmul fast float %2211, 7.500000e-01
  %2215 = fmul fast float %2212, 7.500000e-01
  %2216 = fmul fast float %2213, 7.500000e-01
  %2217 = fadd fast float %2181, 1.250000e-01
  %2218 = fadd fast float %2217, %2214
  %2219 = fadd fast float %2218, %2208
  %2220 = fadd fast float %2182, 1.250000e-01
  %2221 = fadd fast float %2220, %2215
  %2222 = fadd fast float %2221, %2209
  %2223 = fadd fast float %2183, 1.250000e-01
  %2224 = fadd fast float %2223, %2216
  %2225 = fadd fast float %2224, %2210
  %2226 = fmul fast float %2219, %2169
  %2227 = fmul fast float %2222, %2170
  %2228 = fmul fast float %2225, %2171
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2232, %dx.types.Handle %47, float %2226, float %2227, float %2228, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  br label %2235

; <label>:2235                                    ; preds = %2156, %2145
  %2236 = phi float [ %2234, %2156 ], [ -1.000000e+00, %2145 ]
  %2237 = fadd fast float %2236, %2143
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  br label %2239

; <label>:2239                                    ; preds = %2235, %2133
  %2240 = phi float [ %2238, %2235 ], [ %2143, %2133 ]
  %2241 = fmul fast float %2240, %490
  br label %2242

; <label>:2242                                    ; preds = %2239, %2128
  %2243 = phi float [ %2241, %2239 ], [ %490, %2128 ]
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 256
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2294, label %2248

; <label>:2248                                    ; preds = %2242
  %2249 = add i32 %54, 480
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %2251, 0
  %2253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2253, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2255 = extractvalue %dx.types.ResRet.f32 %2254, 0
  %2256 = add i32 %54, 132
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = shl i32 %2258, 4
  %2260 = and i32 %2259, 32752
  %2261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2260)  ; LegacyF16ToF32(value)
  %2262 = lshr i32 %2258, 7
  %2263 = and i32 %2262, 32752
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = fsub fast float 1.000000e+00, %2243
  %2266 = call float @dx.op.binary.f32(i32 35, float %2265, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2267 = bitcast float %2243 to i32
  %2268 = sitofp i32 %2267 to float
  %2269 = fadd fast float %2268, 0xC1CFBF8940000000
  %2270 = fmul fast float %2264, %2269
  %2271 = fadd fast float %2270, 0x41CFBF8940000000
  %2272 = fptosi float %2271 to i32
  %2273 = bitcast i32 %2272 to float
  %2274 = bitcast float %2266 to i32
  %2275 = sitofp i32 %2274 to float
  %2276 = fadd fast float %2275, 0xC1CFBF8940000000
  %2277 = fmul fast float %2276, %2264
  %2278 = fadd fast float %2277, 0x41CFBF8940000000
  %2279 = fptosi float %2278 to i32
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2273, %2261
  %2282 = fmul fast float %2280, %2261
  %2283 = fsub fast float %2266, %2281
  %2284 = fadd fast float %2282, %2266
  %2285 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2286 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2287 = fsub fast float %2255, %2285
  %2288 = fsub fast float %2286, %2285
  %2289 = bitcast float %2288 to i32
  %2290 = sub nsw i32 2129859010, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2291, %2287
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  br label %2294

; <label>:2294                                    ; preds = %2248, %2242
  %2295 = phi float [ %2293, %2248 ], [ %2243, %2242 ]
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 128
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2316, label %2300

; <label>:2300                                    ; preds = %2294
  %2301 = add i32 %54, 464
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = add i32 %2303, 0
  %2305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2306 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2305, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 524288
  %2311 = icmp ne i32 %2310, 0
  %2312 = fcmp fast ogt float %2307, 0x3FE0101020000000
  %2313 = select i1 %2312, float 1.000000e+00, float 0.000000e+00
  %2314 = select i1 %2311, float %2313, float %2307
  %2315 = fmul fast float %2314, %2295
  br label %2316

; <label>:2316                                    ; preds = %2300, %2294
  %2317 = phi float [ %2315, %2300 ], [ %2295, %2294 ]
  %2318 = fcmp fast ult float %2317, 0x3F70101020000000
  br i1 %2318, label %2861, label %2319

; <label>:2319                                    ; preds = %2316
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 16
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2522, label %2324

; <label>:2324                                    ; preds = %2319
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = add i32 %54, 416
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2335 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2336 = extractvalue %dx.types.ResRet.f32 %2332, 3
  %2337 = and i32 %2326, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = lshr i32 %2326, 8
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = fmul fast float %2336, %2338
  %2343 = fadd fast float %2342, %2341
  %2344 = fmul fast float %2343, 0x3F70101000000000
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 512
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2357, label %2349

; <label>:2349                                    ; preds = %2324
  %2350 = add i32 %54, 496
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %2352, 0
  %2354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2354, %dx.types.Handle %92, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  br label %2357

; <label>:2357                                    ; preds = %2349, %2324
  %2358 = phi float [ %2356, %2349 ], [ 1.000000e+00, %2324 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 33554432
  %2362 = icmp eq i32 %2361, 0
  br i1 %2362, label %2469, label %2363

; <label>:2363                                    ; preds = %2357
  %2364 = add i32 %54, 256
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 65535
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = lshr i32 %2366, 16
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = add i32 %54, 260
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 65535
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = lshr i32 %2377, 24
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101020000000
  %2381 = and i32 %2377, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = lshr i32 %2377, 8
  %2385 = and i32 %2384, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = fmul fast float %2386, 0x3F70101020000000
  %2388 = lshr i32 %2377, 16
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = fmul fast float %2390, 0x3F70101020000000
  %2392 = add i32 %54, 252
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = lshr i32 %2394, 24
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = and i32 %2394, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = lshr i32 %2394, 8
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2403, 0x3F70101020000000
  %2405 = lshr i32 %2394, 16
  %2406 = and i32 %2405, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = fmul fast float %2407, 0x3F70101020000000
  %2409 = bitcast float %2333 to i32
  %2410 = ashr i32 %2409, 1
  %2411 = sub nsw i32 1597463174, %2410
  %2412 = bitcast i32 %2411 to float
  %2413 = fmul fast float %2333, 5.000000e-01
  %2414 = fmul fast float %2412, %2412
  %2415 = fmul fast float %2414, %2413
  %2416 = fsub fast float 1.500000e+00, %2415
  %2417 = fmul fast float %2412, %2333
  %2418 = fmul fast float %2417, %2416
  %2419 = bitcast float %2334 to i32
  %2420 = ashr i32 %2419, 1
  %2421 = sub nsw i32 1597463174, %2420
  %2422 = bitcast i32 %2421 to float
  %2423 = fmul fast float %2334, 5.000000e-01
  %2424 = fmul fast float %2422, %2422
  %2425 = fmul fast float %2424, %2423
  %2426 = fsub fast float 1.500000e+00, %2425
  %2427 = fmul fast float %2422, %2334
  %2428 = fmul fast float %2427, %2426
  %2429 = bitcast float %2335 to i32
  %2430 = ashr i32 %2429, 1
  %2431 = sub nsw i32 1597463174, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = fmul fast float %2335, 5.000000e-01
  %2434 = fmul fast float %2432, %2432
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float 1.500000e+00, %2435
  %2437 = fmul fast float %2432, %2335
  %2438 = fmul fast float %2437, %2436
  %2439 = fsub fast float %2418, %2400
  %2440 = fsub fast float %2428, %2404
  %2441 = fsub fast float %2438, %2408
  %2442 = fmul fast float %2439, %2368
  %2443 = fmul fast float %2440, %2370
  %2444 = fmul fast float %2441, %2375
  %2445 = fadd fast float %2442, %2383
  %2446 = fadd fast float %2443, %2387
  %2447 = fadd fast float %2444, %2391
  %2448 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2449 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2450 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2451 = fmul fast float %2448, %2448
  %2452 = fmul fast float %2449, %2449
  %2453 = fmul fast float %2450, %2450
  %2454 = fsub fast float %2451, %2333
  %2455 = fsub fast float %2452, %2334
  %2456 = fsub fast float %2453, %2335
  %2457 = fmul fast float %2454, %2358
  %2458 = fmul fast float %2455, %2358
  %2459 = fmul fast float %2456, %2358
  %2460 = fadd fast float %2457, %2333
  %2461 = fadd fast float %2458, %2334
  %2462 = fadd fast float %2459, %2335
  %2463 = fadd fast float %2380, %2344
  %2464 = fsub fast float %2463, %2397
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fsub fast float %2465, %2344
  %2467 = fmul fast float %2466, %2358
  %2468 = fadd fast float %2467, %2344
  br label %2522

; <label>:2469                                    ; preds = %2357
  %2470 = and i32 %2360, 134217728
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2506, label %2472

; <label>:2472                                    ; preds = %2469
  %2473 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2474 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2475 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2476 = fadd fast float %2473, -5.000000e-01
  %2477 = fadd fast float %2474, -5.000000e-01
  %2478 = fadd fast float %2475, -5.000000e-01
  %2479 = fmul fast float %2476, %2358
  %2480 = fmul fast float %2477, %2358
  %2481 = fmul fast float %2478, %2358
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fadd fast float %2480, 5.000000e-01
  %2484 = fadd fast float %2481, 5.000000e-01
  %2485 = call float @dx.op.unary.f32(i32 24, float %2333)  ; Sqrt(value)
  %2486 = call float @dx.op.unary.f32(i32 24, float %2334)  ; Sqrt(value)
  %2487 = call float @dx.op.unary.f32(i32 24, float %2335)  ; Sqrt(value)
  %2488 = fmul fast float %2482, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2485
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2485
  %2493 = fmul fast float %2483, 2.000000e+00
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2486
  %2496 = fadd fast float %2495, %2493
  %2497 = fmul fast float %2496, %2486
  %2498 = fmul fast float %2484, 2.000000e+00
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2499, %2487
  %2501 = fadd fast float %2500, %2498
  %2502 = fmul fast float %2501, %2487
  %2503 = fmul fast float %2492, %2492
  %2504 = fmul fast float %2497, %2497
  %2505 = fmul fast float %2502, %2502
  br label %2522

; <label>:2506                                    ; preds = %2469
  %2507 = fmul fast float %365, %365
  %2508 = fmul fast float %369, %369
  %2509 = fmul fast float %373, %373
  %2510 = fadd fast float %2507, -1.000000e+00
  %2511 = fadd fast float %2508, -1.000000e+00
  %2512 = fadd fast float %2509, -1.000000e+00
  %2513 = fmul fast float %2358, %2510
  %2514 = fmul fast float %2358, %2511
  %2515 = fmul fast float %2358, %2512
  %2516 = fadd fast float %2513, 1.000000e+00
  %2517 = fadd fast float %2514, 1.000000e+00
  %2518 = fadd fast float %2515, 1.000000e+00
  %2519 = fmul fast float %2516, %2333
  %2520 = fmul fast float %2517, %2334
  %2521 = fmul fast float %2518, %2335
  br label %2522

; <label>:2522                                    ; preds = %2506, %2472, %2363, %2319
  %2523 = phi float [ %2468, %2363 ], [ %2344, %2472 ], [ %2344, %2506 ], [ 0x3FA23C0BE0000000, %2319 ]
  %2524 = phi float [ %2460, %2363 ], [ %2503, %2472 ], [ %2519, %2506 ], [ 1.000000e+00, %2319 ]
  %2525 = phi float [ %2461, %2363 ], [ %2504, %2472 ], [ %2520, %2506 ], [ 1.000000e+00, %2319 ]
  %2526 = phi float [ %2462, %2363 ], [ %2505, %2472 ], [ %2521, %2506 ], [ 1.000000e+00, %2319 ]
  %2527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.i32 %2527, 1
  %2529 = and i32 %2528, 1
  %2530 = icmp ne i32 %2529, 0
  %2531 = add i32 %54, 356
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 32
  %2535 = icmp ne i32 %2534, 0
  %2536 = and i1 %2530, %2535
  %2537 = select i1 %2536, float 1.000000e+00, float %2524
  %2538 = select i1 %2536, float 0x3FD3333340000000, float %2525
  %2539 = select i1 %2536, float 0x3FD3333340000000, float %2526
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 32
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2616, label %2544

; <label>:2544                                    ; preds = %2522
  %2545 = add i32 %54, 124
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = add i32 %54, 432
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = add i32 %2550, 0
  %2552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2552, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = extractvalue %dx.types.ResRet.f32 %2553, 3
  %2558 = and i32 %2547, 255
  %2559 = uitofp i32 %2558 to float
  %2560 = lshr i32 %2547, 8
  %2561 = and i32 %2560, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = lshr i32 %2547, 16
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = fmul fast float %2565, 0x3F70101000000000
  %2567 = fmul fast float %2554, %2559
  %2568 = fadd fast float %2567, %2562
  %2569 = fmul fast float %2568, 0x3F70101000000000
  %2570 = fadd fast float %2555, -5.000000e-01
  %2571 = fadd fast float %2557, -5.000000e-01
  %2572 = fmul fast float %2570, %2566
  %2573 = fmul fast float %2571, %2566
  %2574 = fadd fast float %2572, 5.000000e-01
  %2575 = fadd fast float %2573, 5.000000e-01
  %2576 = fmul fast float %2574, 2.000000e+00
  %2577 = fadd fast float %2576, -1.000000e+00
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fadd fast float %2578, -1.000000e+00
  %2580 = fadd fast float %2577, %2579
  %2581 = fmul fast float %2580, 5.000000e-01
  %2582 = fsub fast float %2577, %2579
  %2583 = fmul fast float %2582, 5.000000e-01
  %2584 = call float @dx.op.unary.f32(i32 6, float %2581)  ; FAbs(value)
  %2585 = fsub fast float 1.000000e+00, %2584
  %2586 = call float @dx.op.unary.f32(i32 6, float %2583)  ; FAbs(value)
  %2587 = fsub fast float %2585, %2586
  %2588 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2583, float %2587, float %2581, float %2583, float %2587)  ; Dot3(ax,ay,az,bx,by,bz)
  %2589 = call float @dx.op.unary.f32(i32 25, float %2588)  ; Rsqrt(value)
  %2590 = fmul fast float %2581, %2589
  %2591 = fmul fast float %2583, %2589
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 67108864
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2612, label %2596

; <label>:2596                                    ; preds = %2544
  %2597 = add i32 %54, 312
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 65535
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 65535
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = lshr i32 %2599, 16
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = fsub fast float %2569, %2607
  %2609 = fmul fast float %2608, %2601
  %2610 = fadd fast float %2609, %2605
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  br label %2612

; <label>:2612                                    ; preds = %2596, %2544
  %2613 = phi float [ %2611, %2596 ], [ %2569, %2544 ]
  %2614 = call float @dx.op.dot2.f32(i32 54, float %2590, float %2591, float %2033, float %2034)  ; Dot2(ax,ay,bx,by)
  %2615 = call float @dx.op.dot2.f32(i32 54, float %2590, float %2591, float %2035, float %2036)  ; Dot2(ax,ay,bx,by)
  br label %2616

; <label>:2616                                    ; preds = %2612, %2522
  %2617 = phi float [ %2613, %2612 ], [ 0x3FD6666660000000, %2522 ]
  %2618 = phi float [ %2614, %2612 ], [ 0.000000e+00, %2522 ]
  %2619 = phi float [ %2615, %2612 ], [ 0.000000e+00, %2522 ]
  %2620 = phi float [ %2556, %2612 ], [ 1.000000e+00, %2522 ]
  %2621 = add i32 %54, 192
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 22
  %2625 = shl nuw nsw i32 %2624, 5
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 64
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2664, label %2631

; <label>:2631                                    ; preds = %2616
  %2632 = add i32 %54, 448
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = add i32 %2634, 0
  %2636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 131072
  %2640 = icmp eq i32 %2639, 0
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2636, %dx.types.Handle %91, float %2129, float %2130, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  %2643 = extractvalue %dx.types.ResRet.f32 %2641, 1
  %2644 = extractvalue %dx.types.ResRet.f32 %2641, 2
  %2645 = fmul fast float %2642, %353
  %2646 = fmul fast float %2643, %356
  %2647 = fmul fast float %2644, %359
  br i1 %2640, label %2654, label %2648

; <label>:2648                                    ; preds = %2631
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = fmul fast float %2650, %2645
  %2652 = fmul fast float %2650, %2646
  %2653 = fmul fast float %2650, %2647
  br label %2654

; <label>:2654                                    ; preds = %2648, %2631
  %2655 = phi float [ %2651, %2648 ], [ %2645, %2631 ]
  %2656 = phi float [ %2652, %2648 ], [ %2646, %2631 ]
  %2657 = phi float [ %2653, %2648 ], [ %2647, %2631 ]
  %2658 = fmul fast float %2655, %2626
  %2659 = select i1 %252, float %2658, float %2655
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2659, float %2656, float %2657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = select i1 %252, float 0.000000e+00, float %2655
  %2662 = select i1 %252, float %2660, float %2656
  %2663 = select i1 %252, float 0.000000e+00, float %2657
  br label %2664

; <label>:2664                                    ; preds = %2654, %2616
  %2665 = phi float [ %2661, %2654 ], [ 0.000000e+00, %2616 ]
  %2666 = phi float [ %2662, %2654 ], [ 0.000000e+00, %2616 ]
  %2667 = phi float [ %2663, %2654 ], [ 0.000000e+00, %2616 ]
  %2668 = add i32 %54, 128
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = lshr i32 %2670, 8
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2537, float %2538, float %2539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = fmul fast float %2675, %2676
  %2678 = fadd fast float %2677, %2672
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  br i1 %2021, label %2681, label %2689

; <label>:2681                                    ; preds = %2664
  %2682 = fsub fast float 1.000000e+00, %2317
  %2683 = fmul fast float %2682, %2010
  %2684 = fmul fast float %2682, %2011
  %2685 = fmul fast float %2682, %2012
  %2686 = fmul fast float %2682, %2013
  %2687 = fmul fast float %2682, %2014
  %2688 = fmul fast float %2682, %2015
  br label %2689

; <label>:2689                                    ; preds = %2681, %2664
  %2690 = phi float [ %2683, %2681 ], [ %2010, %2664 ]
  %2691 = phi float [ %2684, %2681 ], [ %2011, %2664 ]
  %2692 = phi float [ %2685, %2681 ], [ %2012, %2664 ]
  %2693 = phi float [ %2686, %2681 ], [ %2013, %2664 ]
  %2694 = phi float [ %2687, %2681 ], [ %2014, %2664 ]
  %2695 = phi float [ %2688, %2681 ], [ %2015, %2664 ]
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = and i32 %2697, 3
  %2699 = icmp eq i32 %2698, 3
  br i1 %2699, label %2778, label %2700

; <label>:2700                                    ; preds = %2689
  %2701 = and i32 %2697, 16
  %2702 = icmp ne i32 %2701, 0
  %2703 = select i1 %2702, float %2317, float 0.000000e+00
  %2704 = icmp eq i32 %2698, 0
  br i1 %2704, label %2705, label %2733

; <label>:2705                                    ; preds = %2700
  %2706 = and i32 %2697, 64
  %2707 = icmp ne i32 %2706, 0
  %2708 = select i1 %2707, float %2317, float 0.000000e+00
  %2709 = fsub fast float %2537, %2690
  %2710 = fsub fast float %2538, %2691
  %2711 = fsub fast float %2539, %2692
  %2712 = fmul fast float %2703, %2709
  %2713 = fmul fast float %2703, %2710
  %2714 = fmul fast float %2703, %2711
  %2715 = fadd fast float %2712, %2690
  %2716 = fadd fast float %2713, %2691
  %2717 = fadd fast float %2714, %2692
  %2718 = fsub fast float %2523, %2016
  %2719 = fmul fast float %2703, %2718
  %2720 = fadd fast float %2719, %2016
  %2721 = fsub fast float %2665, %2693
  %2722 = fsub fast float %2666, %2694
  %2723 = fsub fast float %2667, %2695
  %2724 = fmul fast float %2708, %2721
  %2725 = fmul fast float %2708, %2722
  %2726 = fmul fast float %2708, %2723
  %2727 = fadd fast float %2724, %2693
  %2728 = fadd fast float %2725, %2694
  %2729 = fadd fast float %2726, %2695
  %2730 = fsub fast float %2680, %2019
  %2731 = fmul fast float %2703, %2730
  %2732 = fadd fast float %2731, %2019
  br label %2778

; <label>:2733                                    ; preds = %2700
  %2734 = icmp eq i32 %2698, 1
  br i1 %2734, label %2735, label %2748

; <label>:2735                                    ; preds = %2733
  %2736 = fadd fast float %2537, -1.000000e+00
  %2737 = fadd fast float %2538, -1.000000e+00
  %2738 = fadd fast float %2539, -1.000000e+00
  %2739 = fmul fast float %2703, %2736
  %2740 = fmul fast float %2703, %2737
  %2741 = fmul fast float %2703, %2738
  %2742 = fadd fast float %2739, 1.000000e+00
  %2743 = fadd fast float %2740, 1.000000e+00
  %2744 = fadd fast float %2741, 1.000000e+00
  %2745 = fmul fast float %2742, %2690
  %2746 = fmul fast float %2743, %2691
  %2747 = fmul fast float %2744, %2692
  br label %2778

; <label>:2748                                    ; preds = %2733
  %2749 = icmp eq i32 %2698, 2
  br i1 %2749, label %2750, label %2778

; <label>:2750                                    ; preds = %2748
  %2751 = call float @dx.op.unary.f32(i32 24, float %2537)  ; Sqrt(value)
  %2752 = call float @dx.op.unary.f32(i32 24, float %2538)  ; Sqrt(value)
  %2753 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fadd fast float %2752, -5.000000e-01
  %2756 = fadd fast float %2753, -5.000000e-01
  %2757 = fmul fast float %2754, %2703
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2703
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fadd fast float %2758, 5.000000e-01
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fmul fast float %2760, 2.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2763
  %2765 = fmul fast float %2764, %2690
  %2766 = fadd fast float %2765, %2763
  %2767 = fmul fast float %2766, %2690
  %2768 = fmul fast float %2761, 2.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = fmul fast float %2769, %2691
  %2771 = fadd fast float %2770, %2768
  %2772 = fmul fast float %2771, %2691
  %2773 = fmul fast float %2762, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2692
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2692
  br label %2778

; <label>:2778                                    ; preds = %2750, %2748, %2735, %2705, %2689
  %2779 = phi float [ %2690, %2689 ], [ %2767, %2750 ], [ %2690, %2748 ], [ %2745, %2735 ], [ %2715, %2705 ]
  %2780 = phi float [ %2691, %2689 ], [ %2772, %2750 ], [ %2691, %2748 ], [ %2746, %2735 ], [ %2716, %2705 ]
  %2781 = phi float [ %2692, %2689 ], [ %2777, %2750 ], [ %2692, %2748 ], [ %2747, %2735 ], [ %2717, %2705 ]
  %2782 = phi float [ %2693, %2689 ], [ %2693, %2750 ], [ %2693, %2748 ], [ %2693, %2735 ], [ %2727, %2705 ]
  %2783 = phi float [ %2694, %2689 ], [ %2694, %2750 ], [ %2694, %2748 ], [ %2694, %2735 ], [ %2728, %2705 ]
  %2784 = phi float [ %2695, %2689 ], [ %2695, %2750 ], [ %2695, %2748 ], [ %2695, %2735 ], [ %2729, %2705 ]
  %2785 = phi float [ %2016, %2689 ], [ %2016, %2750 ], [ %2016, %2748 ], [ %2016, %2735 ], [ %2720, %2705 ]
  %2786 = phi float [ %2019, %2689 ], [ %2019, %2750 ], [ %2019, %2748 ], [ %2019, %2735 ], [ %2732, %2705 ]
  %2787 = and i32 %2697, 12
  %2788 = icmp eq i32 %2787, 12
  br i1 %2788, label %2861, label %2789

; <label>:2789                                    ; preds = %2778
  %2790 = and i32 %2697, 2097184
  %2791 = icmp eq i32 %2790, 2097184
  %2792 = select i1 %2791, float %2317, float 0.000000e+00
  %2793 = and i32 %2697, 4194336
  %2794 = icmp eq i32 %2793, 4194336
  %2795 = select i1 %2794, float %2317, float 0.000000e+00
  %2796 = and i32 %2697, 8388640
  %2797 = icmp eq i32 %2796, 8388640
  %2798 = select i1 %2797, float %2317, float 0.000000e+00
  %2799 = icmp eq i32 %2787, 0
  br i1 %2799, label %2800, label %2813

; <label>:2800                                    ; preds = %2789
  %2801 = fsub fast float %2618, %2008
  %2802 = fsub fast float %2619, %2009
  %2803 = fmul fast float %2792, %2801
  %2804 = fmul fast float %2792, %2802
  %2805 = fadd fast float %2803, %2008
  %2806 = fadd fast float %2804, %2009
  %2807 = fsub fast float %2620, %2018
  %2808 = fmul fast float %2795, %2807
  %2809 = fadd fast float %2808, %2018
  %2810 = fsub fast float %2617, %2017
  %2811 = fmul fast float %2798, %2810
  %2812 = fadd fast float %2811, %2017
  br label %2861

; <label>:2813                                    ; preds = %2789
  %2814 = icmp eq i32 %2787, 4
  br i1 %2814, label %2815, label %2847

; <label>:2815                                    ; preds = %2813
  %2816 = fmul fast float %2792, %2618
  %2817 = fmul fast float %2792, %2619
  %2818 = fadd fast float %2816, %2008
  %2819 = fadd fast float %2817, %2009
  %2820 = call float @dx.op.binary.f32(i32 36, float %2018, float %2620)  ; FMin(a,b)
  %2821 = fsub fast float %2820, %2018
  %2822 = fmul fast float %2821, %2795
  %2823 = fadd fast float %2822, %2018
  %2824 = fadd fast float %2617, %2017
  %2825 = fmul fast float %2824, 0x3FF337FAE0000000
  %2826 = fmul fast float %2017, %2017
  %2827 = fmul fast float %2617, %2617
  %2828 = fadd fast float %2827, %2826
  %2829 = fmul fast float %2828, 0x3FE5152B00000000
  %2830 = fmul fast float %2017, 0xBFCC1F85E0000000
  %2831 = fmul fast float %2830, %2617
  %2832 = fadd fast float %2831, 0xBFE1363700000000
  %2833 = fadd fast float %2832, %2825
  %2834 = fsub fast float %2833, %2829
  %2835 = fmul fast float %2824, 0x3FBA6F0D00000000
  %2836 = fmul fast float %2828, 0x3FD0432880000000
  %2837 = fmul fast float %2017, 0xBFEF110800000000
  %2838 = fmul fast float %2837, %2617
  %2839 = fadd fast float %2838, 1.000000e+00
  %2840 = fsub fast float %2839, %2835
  %2841 = fadd fast float %2840, %2836
  %2842 = fdiv fast float %2834, %2841
  %2843 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2844 = fsub fast float %2843, %2017
  %2845 = fmul fast float %2844, %2798
  %2846 = fadd fast float %2845, %2017
  br label %2861

; <label>:2847                                    ; preds = %2813
  %2848 = icmp eq i32 %2787, 8
  br i1 %2848, label %2849, label %2861

; <label>:2849                                    ; preds = %2847
  %2850 = fmul fast float %2792, %2618
  %2851 = fmul fast float %2792, %2619
  %2852 = fadd fast float %2850, %2008
  %2853 = fadd fast float %2851, %2009
  %2854 = call float @dx.op.binary.f32(i32 36, float %2018, float %2620)  ; FMin(a,b)
  %2855 = fsub fast float %2854, %2018
  %2856 = fmul fast float %2855, %2795
  %2857 = fadd fast float %2856, %2018
  %2858 = fsub fast float %2617, %2017
  %2859 = fmul fast float %2798, %2858
  %2860 = fadd fast float %2859, %2017
  br label %2861

; <label>:2861                                    ; preds = %2849, %2847, %2815, %2800, %2778, %2316, %2020, %2007
  %2862 = phi float [ %2008, %2778 ], [ %2008, %2316 ], [ %2008, %2007 ], [ %2852, %2849 ], [ %2008, %2847 ], [ %2818, %2815 ], [ %2805, %2800 ], [ %2008, %2020 ]
  %2863 = phi float [ %2009, %2778 ], [ %2009, %2316 ], [ %2009, %2007 ], [ %2853, %2849 ], [ %2009, %2847 ], [ %2819, %2815 ], [ %2806, %2800 ], [ %2009, %2020 ]
  %2864 = phi float [ %2779, %2778 ], [ %2010, %2316 ], [ %2010, %2007 ], [ %2779, %2849 ], [ %2779, %2847 ], [ %2779, %2815 ], [ %2779, %2800 ], [ %2010, %2020 ]
  %2865 = phi float [ %2780, %2778 ], [ %2011, %2316 ], [ %2011, %2007 ], [ %2780, %2849 ], [ %2780, %2847 ], [ %2780, %2815 ], [ %2780, %2800 ], [ %2011, %2020 ]
  %2866 = phi float [ %2781, %2778 ], [ %2012, %2316 ], [ %2012, %2007 ], [ %2781, %2849 ], [ %2781, %2847 ], [ %2781, %2815 ], [ %2781, %2800 ], [ %2012, %2020 ]
  %2867 = phi float [ %2782, %2778 ], [ %2013, %2316 ], [ %2013, %2007 ], [ %2782, %2849 ], [ %2782, %2847 ], [ %2782, %2815 ], [ %2782, %2800 ], [ %2013, %2020 ]
  %2868 = phi float [ %2783, %2778 ], [ %2014, %2316 ], [ %2014, %2007 ], [ %2783, %2849 ], [ %2783, %2847 ], [ %2783, %2815 ], [ %2783, %2800 ], [ %2014, %2020 ]
  %2869 = phi float [ %2784, %2778 ], [ %2015, %2316 ], [ %2015, %2007 ], [ %2784, %2849 ], [ %2784, %2847 ], [ %2784, %2815 ], [ %2784, %2800 ], [ %2015, %2020 ]
  %2870 = phi float [ %2785, %2778 ], [ %2016, %2316 ], [ %2016, %2007 ], [ %2785, %2849 ], [ %2785, %2847 ], [ %2785, %2815 ], [ %2785, %2800 ], [ %2016, %2020 ]
  %2871 = phi float [ %2017, %2778 ], [ %2017, %2316 ], [ %2017, %2007 ], [ %2860, %2849 ], [ %2017, %2847 ], [ %2846, %2815 ], [ %2812, %2800 ], [ %2017, %2020 ]
  %2872 = phi float [ %2018, %2778 ], [ %2018, %2316 ], [ %2018, %2007 ], [ %2857, %2849 ], [ %2018, %2847 ], [ %2823, %2815 ], [ %2809, %2800 ], [ %2018, %2020 ]
  %2873 = phi float [ %2786, %2778 ], [ %2019, %2316 ], [ %2019, %2007 ], [ %2786, %2849 ], [ %2786, %2847 ], [ %2786, %2815 ], [ %2786, %2800 ], [ %2019, %2020 ]
  br i1 %440, label %3715, label %2874

; <label>:2874                                    ; preds = %2861
  %2875 = icmp ult i32 %494, 4
  %2876 = add i32 %54, 72
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = add i32 %54, 76
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = or i32 %2881, %2878
  %2883 = icmp eq i32 %2882, 0
  br i1 %2883, label %3715, label %2884

; <label>:2884                                    ; preds = %2874
  %2885 = and i32 %2878, 262144
  %2886 = icmp ne i32 %2885, 0
  %2887 = select i1 %2886, float %57, float 1.000000e+00
  %2888 = select i1 %2886, float %58, float 0.000000e+00
  %2889 = select i1 %2886, float %59, float 0.000000e+00
  %2890 = select i1 %2886, float %60, float 1.000000e+00
  %2891 = select i1 %2886, float %61, float %77
  %2892 = select i1 %2886, float %62, float %78
  %2893 = add i32 %54, 332
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 16
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = fmul fast float %2897, 0x3F50624DE0000000
  %2899 = add i32 %54, 136
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = lshr i32 %2901, 16
  %2903 = and i32 %2902, 255
  %2904 = lshr i32 %2901, 24
  %2905 = add i32 %54, 340
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 65535
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = lshr i32 %2907, 16
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = add i32 %54, 80
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 22
  %2916 = shl nuw nsw i32 %2915, 5
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = shl i32 %2914, 4
  %2919 = and i32 %2918, 32752
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = lshr i32 %2914, 7
  %2922 = and i32 %2921, 32752
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 3
  %2926 = fmul fast float %2925, 1.000000e+03
  %2927 = fmul fast float %430, %2926
  %2928 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2929 = fadd fast float %2928, %420
  %2930 = fmul fast float %431, %2926
  %2931 = call float @dx.op.unary.f32(i32 22, float %2930)  ; Frc(value)
  %2932 = fadd fast float %2931, %422
  %2933 = fmul fast float %2898, %2926
  %2934 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2935 = fmul fast float %2934, 0x401921FB60000000
  %2936 = fadd fast float %2935, %2917
  %2937 = call float @dx.op.unary.f32(i32 13, float %2936)  ; Sin(value)
  %2938 = call float @dx.op.unary.f32(i32 12, float %2936)  ; Cos(value)
  %2939 = fsub fast float -0.000000e+00, %2937
  %2940 = fadd fast float %2891, -5.000000e-01
  %2941 = fadd fast float %2892, -5.000000e-01
  %2942 = fmul fast float %2909, %2940
  %2943 = fmul fast float %2911, %2941
  %2944 = fadd fast float %2942, 5.000000e-01
  %2945 = fadd fast float %2943, 5.000000e-01
  %2946 = fmul fast float %2920, %2944
  %2947 = fmul fast float %2923, %2945
  %2948 = fmul fast float %2938, %2946
  %2949 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2947, float %2948)  ; FMad(a,b,c)
  %2950 = fmul fast float %2937, %2946
  %2951 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2947, float %2950)  ; FMad(a,b,c)
  %2952 = fadd fast float %2929, %2949
  %2953 = fadd fast float %2932, %2951
  %2954 = icmp ugt i32 %2903, 1
  %2955 = icmp ugt i32 %2901, 33554431
  %2956 = or i1 %2955, %2954
  br i1 %2956, label %2957, label %2982

; <label>:2957                                    ; preds = %2884
  %2958 = add i32 %54, 276
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = lshr i32 %2960, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = fmul fast float %2925, %2962
  %2964 = call float @dx.op.unary.f32(i32 22, float %2963)  ; Frc(value)
  %2965 = mul nuw nsw i32 %2903, %2904
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2964, %2966
  %2968 = call float @dx.op.unary.f32(i32 27, float %2967)  ; Round_ni(value)
  %2969 = fptoui float %2968 to i32
  %2970 = urem i32 %2969, %2903
  %2971 = udiv i32 %2969, %2904
  %2972 = call float @dx.op.unary.f32(i32 22, float %2952)  ; Frc(value)
  %2973 = call float @dx.op.unary.f32(i32 22, float %2953)  ; Frc(value)
  %2974 = uitofp i32 %2970 to float
  %2975 = uitofp i32 %2971 to float
  %2976 = fadd fast float %2972, %2974
  %2977 = fadd fast float %2973, %2975
  %2978 = uitofp i32 %2903 to float
  %2979 = uitofp i32 %2904 to float
  %2980 = fdiv fast float %2976, %2978
  %2981 = fdiv fast float %2977, %2979
  br label %2982

; <label>:2982                                    ; preds = %2957, %2884
  %2983 = phi float [ %2980, %2957 ], [ %2952, %2884 ]
  %2984 = phi float [ %2981, %2957 ], [ %2953, %2884 ]
  %2985 = and i32 %2878, 16777216
  %2986 = icmp eq i32 %2985, 0
  br i1 %2986, label %3096, label %2987

; <label>:2987                                    ; preds = %2982
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2992 = fadd fast float %2989, %158
  %2993 = fadd fast float %2990, %159
  %2994 = fadd fast float %2991, %160
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 0
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = icmp eq i32 %55, 65535
  br i1 %2998, label %3093, label %2999

; <label>:2999                                    ; preds = %2987
  %3000 = lshr i32 %55, 1
  %3001 = shl i32 %3000, 2
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %55, 1
  %3005 = icmp ne i32 %3004, 0
  %3006 = lshr i32 %3003, 16
  %3007 = and i32 %3003, 65535
  %3008 = select i1 %3005, i32 %3006, i32 %3007
  %3009 = icmp eq i32 %3008, 65535
  br i1 %3009, label %3089, label %3010

; <label>:3010                                    ; preds = %2999
  %3011 = mul nuw nsw i32 %3008, 40
  %3012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3011, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = add nuw nsw i32 %3011, 12
  %3017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.f32 %3017, 0
  %3019 = extractvalue %dx.types.ResRet.f32 %3017, 1
  %3020 = extractvalue %dx.types.ResRet.f32 %3017, 2
  %3021 = add nuw nsw i32 %3011, 24
  %3022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = add nuw nsw i32 %3011, 36
  %3027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = fsub fast float %2992, %3013
  %3030 = fsub fast float %2993, %3014
  %3031 = fsub fast float %2994, %3015
  %3032 = fmul fast float %3028, %3029
  %3033 = fmul fast float %3028, %3030
  %3034 = fmul fast float %3028, %3031
  %3035 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3036 = call float @dx.op.unary.f32(i32 27, float %3033)  ; Round_ni(value)
  %3037 = call float @dx.op.unary.f32(i32 27, float %3034)  ; Round_ni(value)
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fmul fast float %3038, %3018
  %3042 = fmul fast float %3039, %3019
  %3043 = fmul fast float %3040, %3020
  %3044 = shl i32 %55, 2
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call float @dx.op.unary.f32(i32 22, float %3041)  ; Frc(value)
  %3050 = call float @dx.op.unary.f32(i32 22, float %3042)  ; Frc(value)
  %3051 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3048, %dx.types.Handle %49, float %3049, float %3050, float %3051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3053 = extractvalue %dx.types.ResRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.ResRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.ResRet.f32 %3052, 2
  %3056 = fmul fast float %3053, 1.023000e+03
  %3057 = fmul fast float %3054, 1.023000e+03
  %3058 = fmul fast float %3055, 1.023000e+03
  %3059 = fadd fast float %3056, 5.000000e-01
  %3060 = fadd fast float %3057, 5.000000e-01
  %3061 = fadd fast float %3058, 5.000000e-01
  %3062 = call float @dx.op.unary.f32(i32 27, float %3059)  ; Round_ni(value)
  %3063 = call float @dx.op.unary.f32(i32 27, float %3060)  ; Round_ni(value)
  %3064 = call float @dx.op.unary.f32(i32 27, float %3061)  ; Round_ni(value)
  %3065 = fsub fast float %3032, %3035
  %3066 = fsub fast float %3033, %3036
  %3067 = fsub fast float %3034, %3037
  %3068 = fmul fast float %3065, 7.500000e-01
  %3069 = fmul fast float %3066, 7.500000e-01
  %3070 = fmul fast float %3067, 7.500000e-01
  %3071 = fadd fast float %3035, 1.250000e-01
  %3072 = fadd fast float %3071, %3068
  %3073 = fadd fast float %3072, %3062
  %3074 = fadd fast float %3036, 1.250000e-01
  %3075 = fadd fast float %3074, %3069
  %3076 = fadd fast float %3075, %3063
  %3077 = fadd fast float %3037, 1.250000e-01
  %3078 = fadd fast float %3077, %3070
  %3079 = fadd fast float %3078, %3064
  %3080 = fmul fast float %3073, %3023
  %3081 = fmul fast float %3076, %3024
  %3082 = fmul fast float %3079, %3025
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = add i32 %3084, 0
  %3086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3086, %dx.types.Handle %47, float %3080, float %3081, float %3082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  br label %3089

; <label>:3089                                    ; preds = %3010, %2999
  %3090 = phi float [ %3088, %3010 ], [ -1.000000e+00, %2999 ]
  %3091 = fadd fast float %3090, %2997
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  br label %3093

; <label>:3093                                    ; preds = %3089, %2987
  %3094 = phi float [ %3092, %3089 ], [ %2997, %2987 ]
  %3095 = fmul fast float %3094, %489
  br label %3096

; <label>:3096                                    ; preds = %3093, %2982
  %3097 = phi float [ %3095, %3093 ], [ %489, %2982 ]
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 256
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3148, label %3102

; <label>:3102                                    ; preds = %3096
  %3103 = add i32 %54, 484
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %3105, 0
  %3107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3107, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = add i32 %54, 148
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = shl i32 %3112, 4
  %3114 = and i32 %3113, 32752
  %3115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3114)  ; LegacyF16ToF32(value)
  %3116 = lshr i32 %3112, 7
  %3117 = and i32 %3116, 32752
  %3118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3117)  ; LegacyF16ToF32(value)
  %3119 = fsub fast float 1.000000e+00, %3097
  %3120 = call float @dx.op.binary.f32(i32 35, float %3119, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3121 = bitcast float %3097 to i32
  %3122 = sitofp i32 %3121 to float
  %3123 = fadd fast float %3122, 0xC1CFBF8940000000
  %3124 = fmul fast float %3118, %3123
  %3125 = fadd fast float %3124, 0x41CFBF8940000000
  %3126 = fptosi float %3125 to i32
  %3127 = bitcast i32 %3126 to float
  %3128 = bitcast float %3120 to i32
  %3129 = sitofp i32 %3128 to float
  %3130 = fadd fast float %3129, 0xC1CFBF8940000000
  %3131 = fmul fast float %3130, %3118
  %3132 = fadd fast float %3131, 0x41CFBF8940000000
  %3133 = fptosi float %3132 to i32
  %3134 = bitcast i32 %3133 to float
  %3135 = fmul fast float %3127, %3115
  %3136 = fmul fast float %3134, %3115
  %3137 = fsub fast float %3120, %3135
  %3138 = fadd fast float %3136, %3120
  %3139 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3141 = fsub fast float %3109, %3139
  %3142 = fsub fast float %3140, %3139
  %3143 = bitcast float %3142 to i32
  %3144 = sub nsw i32 2129859010, %3143
  %3145 = bitcast i32 %3144 to float
  %3146 = fmul fast float %3145, %3141
  %3147 = call float @dx.op.unary.f32(i32 7, float %3146)  ; Saturate(value)
  br label %3148

; <label>:3148                                    ; preds = %3102, %3096
  %3149 = phi float [ %3147, %3102 ], [ %3097, %3096 ]
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 128
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3170, label %3154

; <label>:3154                                    ; preds = %3148
  %3155 = add i32 %54, 468
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 524288
  %3165 = icmp ne i32 %3164, 0
  %3166 = fcmp fast ogt float %3161, 0x3FE0101020000000
  %3167 = select i1 %3166, float 1.000000e+00, float 0.000000e+00
  %3168 = select i1 %3165, float %3167, float %3161
  %3169 = fmul fast float %3168, %3149
  br label %3170

; <label>:3170                                    ; preds = %3154, %3148
  %3171 = phi float [ %3169, %3154 ], [ %3149, %3148 ]
  %3172 = fcmp fast ult float %3171, 0x3F70101020000000
  br i1 %3172, label %3715, label %3173

; <label>:3173                                    ; preds = %3170
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 16
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3376, label %3178

; <label>:3178                                    ; preds = %3173
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %54, 420
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = extractvalue %dx.types.ResRet.f32 %3186, 3
  %3191 = and i32 %3180, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = lshr i32 %3180, 8
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3190, %3192
  %3197 = fadd fast float %3196, %3195
  %3198 = fmul fast float %3197, 0x3F70101000000000
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 512
  %3202 = icmp eq i32 %3201, 0
  br i1 %3202, label %3211, label %3203

; <label>:3203                                    ; preds = %3178
  %3204 = add i32 %54, 500
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %92, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  br label %3211

; <label>:3211                                    ; preds = %3203, %3178
  %3212 = phi float [ %3210, %3203 ], [ 1.000000e+00, %3178 ]
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 33554432
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3323, label %3217

; <label>:3217                                    ; preds = %3211
  %3218 = add i32 %54, 272
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 65535
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = lshr i32 %3220, 16
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = add i32 %54, 276
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 65535
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = lshr i32 %3231, 24
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = and i32 %3231, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = lshr i32 %3231, 8
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101020000000
  %3242 = lshr i32 %3231, 16
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = fmul fast float %3244, 0x3F70101020000000
  %3246 = add i32 %54, 268
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = lshr i32 %3248, 24
  %3250 = uitofp i32 %3249 to float
  %3251 = fmul fast float %3250, 0x3F70101020000000
  %3252 = and i32 %3248, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = lshr i32 %3248, 8
  %3256 = and i32 %3255, 255
  %3257 = uitofp i32 %3256 to float
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = lshr i32 %3248, 16
  %3260 = and i32 %3259, 255
  %3261 = uitofp i32 %3260 to float
  %3262 = fmul fast float %3261, 0x3F70101020000000
  %3263 = bitcast float %3187 to i32
  %3264 = ashr i32 %3263, 1
  %3265 = sub nsw i32 1597463174, %3264
  %3266 = bitcast i32 %3265 to float
  %3267 = fmul fast float %3187, 5.000000e-01
  %3268 = fmul fast float %3266, %3266
  %3269 = fmul fast float %3268, %3267
  %3270 = fsub fast float 1.500000e+00, %3269
  %3271 = fmul fast float %3266, %3187
  %3272 = fmul fast float %3271, %3270
  %3273 = bitcast float %3188 to i32
  %3274 = ashr i32 %3273, 1
  %3275 = sub nsw i32 1597463174, %3274
  %3276 = bitcast i32 %3275 to float
  %3277 = fmul fast float %3188, 5.000000e-01
  %3278 = fmul fast float %3276, %3276
  %3279 = fmul fast float %3278, %3277
  %3280 = fsub fast float 1.500000e+00, %3279
  %3281 = fmul fast float %3276, %3188
  %3282 = fmul fast float %3281, %3280
  %3283 = bitcast float %3189 to i32
  %3284 = ashr i32 %3283, 1
  %3285 = sub nsw i32 1597463174, %3284
  %3286 = bitcast i32 %3285 to float
  %3287 = fmul fast float %3189, 5.000000e-01
  %3288 = fmul fast float %3286, %3286
  %3289 = fmul fast float %3288, %3287
  %3290 = fsub fast float 1.500000e+00, %3289
  %3291 = fmul fast float %3286, %3189
  %3292 = fmul fast float %3291, %3290
  %3293 = fsub fast float %3272, %3254
  %3294 = fsub fast float %3282, %3258
  %3295 = fsub fast float %3292, %3262
  %3296 = fmul fast float %3293, %3222
  %3297 = fmul fast float %3294, %3224
  %3298 = fmul fast float %3295, %3229
  %3299 = fadd fast float %3296, %3237
  %3300 = fadd fast float %3297, %3241
  %3301 = fadd fast float %3298, %3245
  %3302 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3303 = call float @dx.op.unary.f32(i32 7, float %3300)  ; Saturate(value)
  %3304 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3305 = fmul fast float %3302, %3302
  %3306 = fmul fast float %3303, %3303
  %3307 = fmul fast float %3304, %3304
  %3308 = fsub fast float %3305, %3187
  %3309 = fsub fast float %3306, %3188
  %3310 = fsub fast float %3307, %3189
  %3311 = fmul fast float %3308, %3212
  %3312 = fmul fast float %3309, %3212
  %3313 = fmul fast float %3310, %3212
  %3314 = fadd fast float %3311, %3187
  %3315 = fadd fast float %3312, %3188
  %3316 = fadd fast float %3313, %3189
  %3317 = fadd fast float %3234, %3198
  %3318 = fsub fast float %3317, %3251
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fsub fast float %3319, %3198
  %3321 = fmul fast float %3320, %3212
  %3322 = fadd fast float %3321, %3198
  br label %3376

; <label>:3323                                    ; preds = %3211
  %3324 = and i32 %3214, 134217728
  %3325 = icmp eq i32 %3324, 0
  br i1 %3325, label %3360, label %3326

; <label>:3326                                    ; preds = %3323
  %3327 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3328 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3329 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3330 = fadd fast float %3327, -5.000000e-01
  %3331 = fadd fast float %3328, -5.000000e-01
  %3332 = fadd fast float %3329, -5.000000e-01
  %3333 = fmul fast float %3330, %3212
  %3334 = fmul fast float %3331, %3212
  %3335 = fmul fast float %3332, %3212
  %3336 = fadd fast float %3333, 5.000000e-01
  %3337 = fadd fast float %3334, 5.000000e-01
  %3338 = fadd fast float %3335, 5.000000e-01
  %3339 = call float @dx.op.unary.f32(i32 24, float %3187)  ; Sqrt(value)
  %3340 = call float @dx.op.unary.f32(i32 24, float %3188)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %3189)  ; Sqrt(value)
  %3342 = fmul fast float %3336, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3339
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3339
  %3347 = fmul fast float %3337, 2.000000e+00
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = fmul fast float %3348, %3340
  %3350 = fadd fast float %3349, %3347
  %3351 = fmul fast float %3350, %3340
  %3352 = fmul fast float %3338, 2.000000e+00
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3353, %3341
  %3355 = fadd fast float %3354, %3352
  %3356 = fmul fast float %3355, %3341
  %3357 = fmul fast float %3346, %3346
  %3358 = fmul fast float %3351, %3351
  %3359 = fmul fast float %3356, %3356
  br label %3376

; <label>:3360                                    ; preds = %3323
  %3361 = fmul fast float %407, %407
  %3362 = fmul fast float %411, %411
  %3363 = fmul fast float %415, %415
  %3364 = fadd fast float %3361, -1.000000e+00
  %3365 = fadd fast float %3362, -1.000000e+00
  %3366 = fadd fast float %3363, -1.000000e+00
  %3367 = fmul fast float %3212, %3364
  %3368 = fmul fast float %3212, %3365
  %3369 = fmul fast float %3212, %3366
  %3370 = fadd fast float %3367, 1.000000e+00
  %3371 = fadd fast float %3368, 1.000000e+00
  %3372 = fadd fast float %3369, 1.000000e+00
  %3373 = fmul fast float %3370, %3187
  %3374 = fmul fast float %3371, %3188
  %3375 = fmul fast float %3372, %3189
  br label %3376

; <label>:3376                                    ; preds = %3360, %3326, %3217, %3173
  %3377 = phi float [ %3322, %3217 ], [ %3198, %3326 ], [ %3198, %3360 ], [ 0x3FA23C0BE0000000, %3173 ]
  %3378 = phi float [ %3314, %3217 ], [ %3357, %3326 ], [ %3373, %3360 ], [ 1.000000e+00, %3173 ]
  %3379 = phi float [ %3315, %3217 ], [ %3358, %3326 ], [ %3374, %3360 ], [ 1.000000e+00, %3173 ]
  %3380 = phi float [ %3316, %3217 ], [ %3359, %3326 ], [ %3375, %3360 ], [ 1.000000e+00, %3173 ]
  %3381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3382 = extractvalue %dx.types.CBufRet.i32 %3381, 1
  %3383 = and i32 %3382, 1
  %3384 = icmp ne i32 %3383, 0
  %3385 = add i32 %54, 356
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 32
  %3389 = icmp ne i32 %3388, 0
  %3390 = and i1 %3384, %3389
  %3391 = select i1 %3390, float 1.000000e+00, float %3378
  %3392 = select i1 %3390, float 0x3FD3333340000000, float %3379
  %3393 = select i1 %3390, float 0x3FD3333340000000, float %3380
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 32
  %3397 = icmp eq i32 %3396, 0
  br i1 %3397, label %3470, label %3398

; <label>:3398                                    ; preds = %3376
  %3399 = add i32 %54, 140
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = add i32 %54, 436
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = add i32 %3404, 0
  %3406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3406, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3408 = extractvalue %dx.types.ResRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.ResRet.f32 %3407, 1
  %3410 = extractvalue %dx.types.ResRet.f32 %3407, 2
  %3411 = extractvalue %dx.types.ResRet.f32 %3407, 3
  %3412 = and i32 %3401, 255
  %3413 = uitofp i32 %3412 to float
  %3414 = lshr i32 %3401, 8
  %3415 = and i32 %3414, 255
  %3416 = uitofp i32 %3415 to float
  %3417 = lshr i32 %3401, 16
  %3418 = and i32 %3417, 255
  %3419 = uitofp i32 %3418 to float
  %3420 = fmul fast float %3419, 0x3F70101000000000
  %3421 = fmul fast float %3408, %3413
  %3422 = fadd fast float %3421, %3416
  %3423 = fmul fast float %3422, 0x3F70101000000000
  %3424 = fadd fast float %3409, -5.000000e-01
  %3425 = fadd fast float %3411, -5.000000e-01
  %3426 = fmul fast float %3424, %3420
  %3427 = fmul fast float %3425, %3420
  %3428 = fadd fast float %3426, 5.000000e-01
  %3429 = fadd fast float %3427, 5.000000e-01
  %3430 = fmul fast float %3428, 2.000000e+00
  %3431 = fadd fast float %3430, -1.000000e+00
  %3432 = fmul fast float %3429, 2.000000e+00
  %3433 = fadd fast float %3432, -1.000000e+00
  %3434 = fadd fast float %3431, %3433
  %3435 = fmul fast float %3434, 5.000000e-01
  %3436 = fsub fast float %3431, %3433
  %3437 = fmul fast float %3436, 5.000000e-01
  %3438 = call float @dx.op.unary.f32(i32 6, float %3435)  ; FAbs(value)
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.unary.f32(i32 6, float %3437)  ; FAbs(value)
  %3441 = fsub fast float %3439, %3440
  %3442 = call float @dx.op.dot3.f32(i32 55, float %3435, float %3437, float %3441, float %3435, float %3437, float %3441)  ; Dot3(ax,ay,az,bx,by,bz)
  %3443 = call float @dx.op.unary.f32(i32 25, float %3442)  ; Rsqrt(value)
  %3444 = fmul fast float %3435, %3443
  %3445 = fmul fast float %3437, %3443
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 67108864
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3466, label %3450

; <label>:3450                                    ; preds = %3398
  %3451 = add i32 %54, 328
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 65535
  %3455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3454)  ; LegacyF16ToF32(value)
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 65535
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = lshr i32 %3453, 16
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = fsub fast float %3423, %3461
  %3463 = fmul fast float %3462, %3455
  %3464 = fadd fast float %3463, %3459
  %3465 = call float @dx.op.unary.f32(i32 7, float %3464)  ; Saturate(value)
  br label %3466

; <label>:3466                                    ; preds = %3450, %3398
  %3467 = phi float [ %3465, %3450 ], [ %3423, %3398 ]
  %3468 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %2887, float %2888)  ; Dot2(ax,ay,bx,by)
  %3469 = call float @dx.op.dot2.f32(i32 54, float %3444, float %3445, float %2889, float %2890)  ; Dot2(ax,ay,bx,by)
  br label %3470

; <label>:3470                                    ; preds = %3466, %3376
  %3471 = phi float [ %3467, %3466 ], [ 0x3FD6666660000000, %3376 ]
  %3472 = phi float [ %3468, %3466 ], [ 0.000000e+00, %3376 ]
  %3473 = phi float [ %3469, %3466 ], [ 0.000000e+00, %3376 ]
  %3474 = phi float [ %3410, %3466 ], [ 1.000000e+00, %3376 ]
  %3475 = add i32 %54, 208
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = lshr i32 %3477, 22
  %3479 = shl nuw nsw i32 %3478, 5
  %3480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3479)  ; LegacyF16ToF32(value)
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = and i32 %3482, 64
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3518, label %3485

; <label>:3485                                    ; preds = %3470
  %3486 = add i32 %54, 452
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = add i32 %3488, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 131072
  %3494 = icmp eq i32 %3493, 0
  %3495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3490, %dx.types.Handle %91, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.ResRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3495, 2
  %3499 = fmul fast float %3496, %395
  %3500 = fmul fast float %3497, %398
  %3501 = fmul fast float %3498, %401
  br i1 %3494, label %3508, label %3502

; <label>:3502                                    ; preds = %3485
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = fmul fast float %3504, %3499
  %3506 = fmul fast float %3504, %3500
  %3507 = fmul fast float %3504, %3501
  br label %3508

; <label>:3508                                    ; preds = %3502, %3485
  %3509 = phi float [ %3505, %3502 ], [ %3499, %3485 ]
  %3510 = phi float [ %3506, %3502 ], [ %3500, %3485 ]
  %3511 = phi float [ %3507, %3502 ], [ %3501, %3485 ]
  %3512 = fmul fast float %3509, %3480
  %3513 = select i1 %252, float %3512, float %3509
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3510, float %3511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = select i1 %252, float 0.000000e+00, float %3509
  %3516 = select i1 %252, float %3514, float %3510
  %3517 = select i1 %252, float 0.000000e+00, float %3511
  br label %3518

; <label>:3518                                    ; preds = %3508, %3470
  %3519 = phi float [ %3515, %3508 ], [ 0.000000e+00, %3470 ]
  %3520 = phi float [ %3516, %3508 ], [ 0.000000e+00, %3470 ]
  %3521 = phi float [ %3517, %3508 ], [ 0.000000e+00, %3470 ]
  %3522 = add i32 %54, 144
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = and i32 %3524, 255
  %3526 = uitofp i32 %3525 to float
  %3527 = lshr i32 %3524, 8
  %3528 = and i32 %3527, 255
  %3529 = uitofp i32 %3528 to float
  %3530 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3392, float %3393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3531 = fmul fast float %3529, %3530
  %3532 = fadd fast float %3531, %3526
  %3533 = fmul fast float %3532, 0x3F70101020000000
  %3534 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  br i1 %2875, label %3535, label %3543

; <label>:3535                                    ; preds = %3518
  %3536 = fsub fast float 1.000000e+00, %3171
  %3537 = fmul fast float %3536, %2864
  %3538 = fmul fast float %3536, %2865
  %3539 = fmul fast float %3536, %2866
  %3540 = fmul fast float %3536, %2867
  %3541 = fmul fast float %3536, %2868
  %3542 = fmul fast float %3536, %2869
  br label %3543

; <label>:3543                                    ; preds = %3535, %3518
  %3544 = phi float [ %3537, %3535 ], [ %2864, %3518 ]
  %3545 = phi float [ %3538, %3535 ], [ %2865, %3518 ]
  %3546 = phi float [ %3539, %3535 ], [ %2866, %3518 ]
  %3547 = phi float [ %3540, %3535 ], [ %2867, %3518 ]
  %3548 = phi float [ %3541, %3535 ], [ %2868, %3518 ]
  %3549 = phi float [ %3542, %3535 ], [ %2869, %3518 ]
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 3
  %3553 = icmp eq i32 %3552, 3
  br i1 %3553, label %3632, label %3554

; <label>:3554                                    ; preds = %3543
  %3555 = and i32 %3551, 16
  %3556 = icmp ne i32 %3555, 0
  %3557 = select i1 %3556, float %3171, float 0.000000e+00
  %3558 = icmp eq i32 %3552, 0
  br i1 %3558, label %3559, label %3587

; <label>:3559                                    ; preds = %3554
  %3560 = and i32 %3551, 64
  %3561 = icmp ne i32 %3560, 0
  %3562 = select i1 %3561, float %3171, float 0.000000e+00
  %3563 = fsub fast float %3391, %3544
  %3564 = fsub fast float %3392, %3545
  %3565 = fsub fast float %3393, %3546
  %3566 = fmul fast float %3557, %3563
  %3567 = fmul fast float %3557, %3564
  %3568 = fmul fast float %3557, %3565
  %3569 = fadd fast float %3566, %3544
  %3570 = fadd fast float %3567, %3545
  %3571 = fadd fast float %3568, %3546
  %3572 = fsub fast float %3377, %2870
  %3573 = fmul fast float %3557, %3572
  %3574 = fadd fast float %3573, %2870
  %3575 = fsub fast float %3519, %3547
  %3576 = fsub fast float %3520, %3548
  %3577 = fsub fast float %3521, %3549
  %3578 = fmul fast float %3562, %3575
  %3579 = fmul fast float %3562, %3576
  %3580 = fmul fast float %3562, %3577
  %3581 = fadd fast float %3578, %3547
  %3582 = fadd fast float %3579, %3548
  %3583 = fadd fast float %3580, %3549
  %3584 = fsub fast float %3534, %2873
  %3585 = fmul fast float %3557, %3584
  %3586 = fadd fast float %3585, %2873
  br label %3632

; <label>:3587                                    ; preds = %3554
  %3588 = icmp eq i32 %3552, 1
  br i1 %3588, label %3589, label %3602

; <label>:3589                                    ; preds = %3587
  %3590 = fadd fast float %3391, -1.000000e+00
  %3591 = fadd fast float %3392, -1.000000e+00
  %3592 = fadd fast float %3393, -1.000000e+00
  %3593 = fmul fast float %3557, %3590
  %3594 = fmul fast float %3557, %3591
  %3595 = fmul fast float %3557, %3592
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fadd fast float %3594, 1.000000e+00
  %3598 = fadd fast float %3595, 1.000000e+00
  %3599 = fmul fast float %3596, %3544
  %3600 = fmul fast float %3597, %3545
  %3601 = fmul fast float %3598, %3546
  br label %3632

; <label>:3602                                    ; preds = %3587
  %3603 = icmp eq i32 %3552, 2
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3602
  %3605 = call float @dx.op.unary.f32(i32 24, float %3391)  ; Sqrt(value)
  %3606 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3607 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3608 = fadd fast float %3605, -5.000000e-01
  %3609 = fadd fast float %3606, -5.000000e-01
  %3610 = fadd fast float %3607, -5.000000e-01
  %3611 = fmul fast float %3608, %3557
  %3612 = fmul fast float %3609, %3557
  %3613 = fmul fast float %3610, %3557
  %3614 = fadd fast float %3611, 5.000000e-01
  %3615 = fadd fast float %3612, 5.000000e-01
  %3616 = fadd fast float %3613, 5.000000e-01
  %3617 = fmul fast float %3614, 2.000000e+00
  %3618 = fsub fast float 1.000000e+00, %3617
  %3619 = fmul fast float %3618, %3544
  %3620 = fadd fast float %3619, %3617
  %3621 = fmul fast float %3620, %3544
  %3622 = fmul fast float %3615, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3545
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3545
  %3627 = fmul fast float %3616, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3546
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3546
  br label %3632

; <label>:3632                                    ; preds = %3604, %3602, %3589, %3559, %3543
  %3633 = phi float [ %3544, %3543 ], [ %3621, %3604 ], [ %3544, %3602 ], [ %3599, %3589 ], [ %3569, %3559 ]
  %3634 = phi float [ %3545, %3543 ], [ %3626, %3604 ], [ %3545, %3602 ], [ %3600, %3589 ], [ %3570, %3559 ]
  %3635 = phi float [ %3546, %3543 ], [ %3631, %3604 ], [ %3546, %3602 ], [ %3601, %3589 ], [ %3571, %3559 ]
  %3636 = phi float [ %3547, %3543 ], [ %3547, %3604 ], [ %3547, %3602 ], [ %3547, %3589 ], [ %3581, %3559 ]
  %3637 = phi float [ %3548, %3543 ], [ %3548, %3604 ], [ %3548, %3602 ], [ %3548, %3589 ], [ %3582, %3559 ]
  %3638 = phi float [ %3549, %3543 ], [ %3549, %3604 ], [ %3549, %3602 ], [ %3549, %3589 ], [ %3583, %3559 ]
  %3639 = phi float [ %2870, %3543 ], [ %2870, %3604 ], [ %2870, %3602 ], [ %2870, %3589 ], [ %3574, %3559 ]
  %3640 = phi float [ %2873, %3543 ], [ %2873, %3604 ], [ %2873, %3602 ], [ %2873, %3589 ], [ %3586, %3559 ]
  %3641 = and i32 %3551, 12
  %3642 = icmp eq i32 %3641, 12
  br i1 %3642, label %3715, label %3643

; <label>:3643                                    ; preds = %3632
  %3644 = and i32 %3551, 2097184
  %3645 = icmp eq i32 %3644, 2097184
  %3646 = select i1 %3645, float %3171, float 0.000000e+00
  %3647 = and i32 %3551, 4194336
  %3648 = icmp eq i32 %3647, 4194336
  %3649 = select i1 %3648, float %3171, float 0.000000e+00
  %3650 = and i32 %3551, 8388640
  %3651 = icmp eq i32 %3650, 8388640
  %3652 = select i1 %3651, float %3171, float 0.000000e+00
  %3653 = icmp eq i32 %3641, 0
  br i1 %3653, label %3654, label %3667

; <label>:3654                                    ; preds = %3643
  %3655 = fsub fast float %3472, %2862
  %3656 = fsub fast float %3473, %2863
  %3657 = fmul fast float %3646, %3655
  %3658 = fmul fast float %3646, %3656
  %3659 = fadd fast float %3657, %2862
  %3660 = fadd fast float %3658, %2863
  %3661 = fsub fast float %3474, %2872
  %3662 = fmul fast float %3649, %3661
  %3663 = fadd fast float %3662, %2872
  %3664 = fsub fast float %3471, %2871
  %3665 = fmul fast float %3652, %3664
  %3666 = fadd fast float %3665, %2871
  br label %3715

; <label>:3667                                    ; preds = %3643
  %3668 = icmp eq i32 %3641, 4
  br i1 %3668, label %3669, label %3701

; <label>:3669                                    ; preds = %3667
  %3670 = fmul fast float %3646, %3472
  %3671 = fmul fast float %3646, %3473
  %3672 = fadd fast float %3670, %2862
  %3673 = fadd fast float %3671, %2863
  %3674 = call float @dx.op.binary.f32(i32 36, float %2872, float %3474)  ; FMin(a,b)
  %3675 = fsub fast float %3674, %2872
  %3676 = fmul fast float %3675, %3649
  %3677 = fadd fast float %3676, %2872
  %3678 = fadd fast float %3471, %2871
  %3679 = fmul fast float %3678, 0x3FF337FAE0000000
  %3680 = fmul fast float %2871, %2871
  %3681 = fmul fast float %3471, %3471
  %3682 = fadd fast float %3681, %3680
  %3683 = fmul fast float %3682, 0x3FE5152B00000000
  %3684 = fmul fast float %2871, 0xBFCC1F85E0000000
  %3685 = fmul fast float %3684, %3471
  %3686 = fadd fast float %3685, 0xBFE1363700000000
  %3687 = fadd fast float %3686, %3679
  %3688 = fsub fast float %3687, %3683
  %3689 = fmul fast float %3678, 0x3FBA6F0D00000000
  %3690 = fmul fast float %3682, 0x3FD0432880000000
  %3691 = fmul fast float %2871, 0xBFEF110800000000
  %3692 = fmul fast float %3691, %3471
  %3693 = fadd fast float %3692, 1.000000e+00
  %3694 = fsub fast float %3693, %3689
  %3695 = fadd fast float %3694, %3690
  %3696 = fdiv fast float %3688, %3695
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fsub fast float %3697, %2871
  %3699 = fmul fast float %3698, %3652
  %3700 = fadd fast float %3699, %2871
  br label %3715

; <label>:3701                                    ; preds = %3667
  %3702 = icmp eq i32 %3641, 8
  br i1 %3702, label %3703, label %3715

; <label>:3703                                    ; preds = %3701
  %3704 = fmul fast float %3646, %3472
  %3705 = fmul fast float %3646, %3473
  %3706 = fadd fast float %3704, %2862
  %3707 = fadd fast float %3705, %2863
  %3708 = call float @dx.op.binary.f32(i32 36, float %2872, float %3474)  ; FMin(a,b)
  %3709 = fsub fast float %3708, %2872
  %3710 = fmul fast float %3709, %3649
  %3711 = fadd fast float %3710, %2872
  %3712 = fsub fast float %3471, %2871
  %3713 = fmul fast float %3652, %3712
  %3714 = fadd fast float %3713, %2871
  br label %3715

; <label>:3715                                    ; preds = %3703, %3701, %3669, %3654, %3632, %3170, %2874, %2861
  %3716 = phi float [ %2862, %3632 ], [ %2862, %3170 ], [ %2862, %2861 ], [ %2862, %2874 ], [ %3659, %3654 ], [ %3672, %3669 ], [ %2862, %3701 ], [ %3706, %3703 ]
  %3717 = phi float [ %2863, %3632 ], [ %2863, %3170 ], [ %2863, %2861 ], [ %2863, %2874 ], [ %3660, %3654 ], [ %3673, %3669 ], [ %2863, %3701 ], [ %3707, %3703 ]
  %3718 = phi float [ %3633, %3632 ], [ %2864, %3170 ], [ %2864, %2861 ], [ %2864, %2874 ], [ %3633, %3654 ], [ %3633, %3669 ], [ %3633, %3701 ], [ %3633, %3703 ]
  %3719 = phi float [ %3634, %3632 ], [ %2865, %3170 ], [ %2865, %2861 ], [ %2865, %2874 ], [ %3634, %3654 ], [ %3634, %3669 ], [ %3634, %3701 ], [ %3634, %3703 ]
  %3720 = phi float [ %3635, %3632 ], [ %2866, %3170 ], [ %2866, %2861 ], [ %2866, %2874 ], [ %3635, %3654 ], [ %3635, %3669 ], [ %3635, %3701 ], [ %3635, %3703 ]
  %3721 = phi float [ %3636, %3632 ], [ %2867, %3170 ], [ %2867, %2861 ], [ %2867, %2874 ], [ %3636, %3654 ], [ %3636, %3669 ], [ %3636, %3701 ], [ %3636, %3703 ]
  %3722 = phi float [ %3637, %3632 ], [ %2868, %3170 ], [ %2868, %2861 ], [ %2868, %2874 ], [ %3637, %3654 ], [ %3637, %3669 ], [ %3637, %3701 ], [ %3637, %3703 ]
  %3723 = phi float [ %3638, %3632 ], [ %2869, %3170 ], [ %2869, %2861 ], [ %2869, %2874 ], [ %3638, %3654 ], [ %3638, %3669 ], [ %3638, %3701 ], [ %3638, %3703 ]
  %3724 = phi float [ %3639, %3632 ], [ %2870, %3170 ], [ %2870, %2861 ], [ %2870, %2874 ], [ %3639, %3654 ], [ %3639, %3669 ], [ %3639, %3701 ], [ %3639, %3703 ]
  %3725 = phi float [ %2871, %3632 ], [ %2871, %3170 ], [ %2871, %2861 ], [ %2871, %2874 ], [ %3666, %3654 ], [ %3700, %3669 ], [ %2871, %3701 ], [ %3714, %3703 ]
  %3726 = phi float [ %2872, %3632 ], [ %2872, %3170 ], [ %2872, %2861 ], [ %2872, %2874 ], [ %3663, %3654 ], [ %3677, %3669 ], [ %2872, %3701 ], [ %3711, %3703 ]
  %3727 = phi float [ %3640, %3632 ], [ %2873, %3170 ], [ %2873, %2861 ], [ %2873, %2874 ], [ %3640, %3654 ], [ %3640, %3669 ], [ %3640, %3701 ], [ %3640, %3703 ]
  %3728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.f32 %3728, 0
  %3730 = call float @dx.op.dot2.f32(i32 54, float %3716, float %3717, float %3716, float %3717)  ; Dot2(ax,ay,bx,by)
  %3731 = fmul fast float %3730, 0x3FE3333340000000
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3716, float %3717, float %3732, float %3716, float %3717, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.unary.f32(i32 25, float %3733)  ; Rsqrt(value)
  %3735 = fmul fast float %3734, %3716
  %3736 = fmul fast float %3734, %3717
  %3737 = fmul fast float %3732, %3734
  %3738 = fmul fast float %3737, %102
  %3739 = fmul fast float %3737, %103
  %3740 = fmul fast float %3737, %104
  %3741 = fmul fast float %3735, %70
  %3742 = fmul fast float %3735, %71
  %3743 = fmul fast float %3735, %72
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = fadd fast float %3740, %3743
  %3747 = fmul fast float %114, %3736
  %3748 = fmul fast float %115, %3736
  %3749 = fmul fast float %116, %3736
  %3750 = fadd fast float %3744, %3747
  %3751 = fadd fast float %3745, %3748
  %3752 = fadd fast float %3746, %3749
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3750, float %3751, float %3752, float %3750, float %3751, float %3752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = call float @dx.op.unary.f32(i32 25, float %3753)  ; Rsqrt(value)
  %3755 = fmul fast float %3750, %3754
  %3756 = fmul fast float %3751, %3754
  %3757 = fmul fast float %3752, %3754
  %3758 = and i32 %56, 1
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3760, label %4268

; <label>:3760                                    ; preds = %3715
  %3761 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3762 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3763 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3764 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3765 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3766 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3767 = fadd fast float %3761, %158
  %3768 = fadd fast float %3762, %159
  %3769 = fadd fast float %3763, %160
  %3770 = fadd fast float %3764, %158
  %3771 = fadd fast float %3765, %159
  %3772 = fadd fast float %3766, %160
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 2
  %3779 = extractvalue %dx.types.CBufRet.f32 %3777, 3
  %3780 = fmul fast float %3774, %95
  %3781 = fmul fast float %3780, %3778
  %3782 = fmul fast float %3775, %96
  %3783 = fmul fast float %3782, %3779
  %3784 = fptoui float %3781 to i32
  %3785 = fptoui float %3783 to i32
  %3786 = fadd fast float %3774, -1.000000e+00
  %3787 = fadd fast float %3775, -1.000000e+00
  %3788 = fptoui float %3786 to i32
  %3789 = fptoui float %3787 to i32
  %3790 = call i32 @dx.op.binary.i32(i32 40, i32 %3784, i32 %3788)  ; UMin(a,b)
  %3791 = call i32 @dx.op.binary.i32(i32 40, i32 %3785, i32 %3789)  ; UMin(a,b)
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3794 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3795 = fmul fast float %3793, %86
  %3796 = fsub fast float %3795, %3794
  %3797 = fadd fast float %3776, -1.000000e+00
  %3798 = call float @dx.op.binary.f32(i32 36, float %3796, float %3797)  ; FMin(a,b)
  %3799 = fptoui float %3798 to i32
  %3800 = fptoui float %3774 to i32
  %3801 = fptoui float %3775 to i32
  %3802 = mul i32 %3799, %3801
  %3803 = add i32 %3802, %3791
  %3804 = mul i32 %3803, %3800
  %3805 = add i32 %3804, %3790
  %3806 = shl i32 %3805, 2
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = and i32 %3808, 1023
  %3810 = lshr i32 %3808, 10
  %3811 = icmp eq i32 %3809, 0
  br i1 %3811, label %4237, label %3812

; <label>:3812                                    ; preds = %3760
  %3813 = and i32 %3808, 1023
  br label %3814

; <label>:3814                                    ; preds = %3940, %3812
  %3815 = phi i32 [ %3890, %3940 ], [ 0, %3812 ]
  %3816 = phi float [ %3941, %3940 ], [ 0.000000e+00, %3812 ]
  %3817 = phi float [ %3942, %3940 ], [ %3729, %3812 ]
  %3818 = phi float [ %3943, %3940 ], [ %3727, %3812 ]
  %3819 = phi float [ %3944, %3940 ], [ 0.000000e+00, %3812 ]
  %3820 = phi float [ %3945, %3940 ], [ 0.000000e+00, %3812 ]
  %3821 = phi float [ %3946, %3940 ], [ %3721, %3812 ]
  %3822 = phi float [ %3947, %3940 ], [ %3722, %3812 ]
  %3823 = phi float [ %3948, %3940 ], [ %3723, %3812 ]
  %3824 = phi float [ %3949, %3940 ], [ %3755, %3812 ]
  %3825 = phi float [ %3950, %3940 ], [ %3756, %3812 ]
  %3826 = phi float [ %3951, %3940 ], [ %3757, %3812 ]
  %3827 = phi float [ %3952, %3940 ], [ %3726, %3812 ]
  %3828 = phi float [ %3953, %3940 ], [ %3725, %3812 ]
  %3829 = phi float [ %3954, %3940 ], [ 0.000000e+00, %3812 ]
  %3830 = phi float [ %3955, %3940 ], [ %3724, %3812 ]
  %3831 = phi float [ %3956, %3940 ], [ %3718, %3812 ]
  %3832 = phi float [ %3957, %3940 ], [ %3719, %3812 ]
  %3833 = phi float [ %3958, %3940 ], [ %3720, %3812 ]
  %3834 = add nuw nsw i32 %3815, %3810
  %3835 = shl i32 %3834, 2
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = shl i32 %3837, 8
  %3839 = or i32 %3838, 48
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = or i32 %3838, 64
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.i32 %3846, 1
  %3849 = or i32 %3838, 80
  %3850 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 3
  %3853 = or i32 %3838, 96
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.ResRet.f32 %3854, 3
  %3859 = or i32 %3838, 112
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3862 = or i32 %3838, 128
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3868 = or i32 %3838, 144
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = extractvalue %dx.types.ResRet.f32 %3869, 3
  %3874 = or i32 %3838, 160
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = extractvalue %dx.types.ResRet.f32 %3875, 3
  %3880 = or i32 %3838, 192
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = or i32 %3838, 208
  %3884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = or i32 %3838, 248
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = add nuw nsw i32 %3815, 1
  %3891 = bitcast float %3844 to i32
  %3892 = and i32 %3891, 512
  %3893 = icmp eq i32 %3892, 0
  %3894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3899 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3900 = or i32 %3838, 16
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3901, 3
  %3906 = call float @dx.op.dot4.f32(i32 56, float %3902, float %3903, float %3904, float %3905, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3907 = or i32 %3838, 32
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = call float @dx.op.dot4.f32(i32 56, float %3909, float %3910, float %3911, float %3912, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3914 = call float @dx.op.unary.f32(i32 27, float %3899)  ; Round_ni(value)
  %3915 = call float @dx.op.unary.f32(i32 6, float %3914)  ; FAbs(value)
  %3916 = call float @dx.op.unary.f32(i32 27, float %3906)  ; Round_ni(value)
  %3917 = call float @dx.op.unary.f32(i32 6, float %3916)  ; FAbs(value)
  %3918 = call float @dx.op.unary.f32(i32 6, float %3913)  ; FAbs(value)
  %3919 = call float @dx.op.unary.f32(i32 27, float %3918)  ; Round_ni(value)
  %3920 = fadd fast float %3917, %3915
  %3921 = fadd fast float %3920, %3919
  %3922 = fcmp fast oeq float %3921, 0.000000e+00
  %3923 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3924 = call float @dx.op.dot4.f32(i32 56, float %3902, float %3903, float %3904, float %3905, float %3767, float %3768, float %3769, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3925 = call float @dx.op.dot4.f32(i32 56, float %3895, float %3896, float %3897, float %3898, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3926 = call float @dx.op.dot4.f32(i32 56, float %3902, float %3903, float %3904, float %3905, float %3770, float %3771, float %3772, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3927 = fsub fast float %3923, %3899
  %3928 = fsub fast float %3925, %3899
  %3929 = fsub fast float %3924, %3906
  %3930 = fsub fast float %3926, %3906
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3934 = fadd fast float %3933, %3931
  %3935 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3937 = fcmp fast ogt float %3935, %3936
  %3938 = and i1 %3922, %3937
  %3939 = and i1 %3893, %3938
  br i1 %3939, label %3960, label %3940

; <label>:3940                                    ; preds = %4223, %4041, %3960, %3814
  %3941 = phi float [ %3816, %3960 ], [ %4044, %4041 ], [ %4044, %4223 ], [ %3816, %3814 ]
  %3942 = phi float [ %3817, %3960 ], [ %3817, %4041 ], [ %4198, %4223 ], [ %3817, %3814 ]
  %3943 = phi float [ %3818, %3960 ], [ %3818, %4041 ], [ %4196, %4223 ], [ %3818, %3814 ]
  %3944 = phi float [ %3819, %3960 ], [ %3819, %4041 ], [ %4168, %4223 ], [ %3819, %3814 ]
  %3945 = phi float [ %3820, %3960 ], [ %3820, %4041 ], [ %4166, %4223 ], [ %3820, %3814 ]
  %3946 = phi float [ %3821, %3960 ], [ %3821, %4041 ], [ %4233, %4223 ], [ %3821, %3814 ]
  %3947 = phi float [ %3822, %3960 ], [ %3822, %4041 ], [ %4234, %4223 ], [ %3822, %3814 ]
  %3948 = phi float [ %3823, %3960 ], [ %3823, %4041 ], [ %4235, %4223 ], [ %3823, %3814 ]
  %3949 = phi float [ %3824, %3960 ], [ %3824, %4041 ], [ %4147, %4223 ], [ %3824, %3814 ]
  %3950 = phi float [ %3825, %3960 ], [ %3825, %4041 ], [ %4148, %4223 ], [ %3825, %3814 ]
  %3951 = phi float [ %3826, %3960 ], [ %3826, %4041 ], [ %4149, %4223 ], [ %3826, %3814 ]
  %3952 = phi float [ %3827, %3960 ], [ %3827, %4041 ], [ %4176, %4223 ], [ %3827, %3814 ]
  %3953 = phi float [ %3828, %3960 ], [ %3828, %4041 ], [ %4173, %4223 ], [ %3828, %3814 ]
  %3954 = phi float [ %3829, %3960 ], [ %3829, %4041 ], [ %4170, %4223 ], [ %3829, %3814 ]
  %3955 = phi float [ %3830, %3960 ], [ %3830, %4041 ], [ %4164, %4223 ], [ %3830, %3814 ]
  %3956 = phi float [ %3831, %3960 ], [ %3831, %4041 ], [ %4159, %4223 ], [ %3831, %3814 ]
  %3957 = phi float [ %3832, %3960 ], [ %3832, %4041 ], [ %4160, %4223 ], [ %3832, %3814 ]
  %3958 = phi float [ %3833, %3960 ], [ %3833, %4041 ], [ %4161, %4223 ], [ %3833, %3814 ]
  %3959 = icmp eq i32 %3890, %3813
  br i1 %3959, label %4236, label %3814

; <label>:3960                                    ; preds = %3814
  %3961 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3962 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3966 = extractvalue %dx.types.ResRet.i32 %3846, 3
  %3967 = extractvalue %dx.types.ResRet.i32 %3846, 2
  %3968 = add i32 %3966, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %3970, float %3899, float %3906, float undef, float undef, i32 0, i32 0, i32 undef, float %3927, float %3929, float undef, float %3928, float %3930, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = fmul fast float %3972, %3965
  %3974 = fadd fast float %3973, %3964
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = fmul fast float %3899, %3855
  %3977 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3906, float %3976)  ; FMad(a,b,c)
  %3978 = fadd fast float %3977, %3963
  %3979 = fmul fast float %3899, %3857
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3858, float %3906, float %3979)  ; FMad(a,b,c)
  %3981 = fadd fast float %3980, %3962
  %3982 = fmul fast float %3927, %3855
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3929, float %3982)  ; FMad(a,b,c)
  %3984 = fmul fast float %3927, %3857
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3858, float %3929, float %3984)  ; FMad(a,b,c)
  %3986 = fmul fast float %3928, %3855
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3930, float %3986)  ; FMad(a,b,c)
  %3988 = fmul fast float %3928, %3857
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3858, float %3930, float %3988)  ; FMad(a,b,c)
  %3990 = add i32 %3967, 0
  %3991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3990, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3992 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3991, %dx.types.Handle %3970, float %3978, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3983, float %3985, float undef, float %3987, float %3989, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = and i32 %3891, 1024
  %3995 = icmp ne i32 %3994, 0
  %3996 = fcmp fast ogt float %3993, 0x3FE0101020000000
  %3997 = uitofp i1 %3996 to float
  %3998 = select i1 %3995, float %3997, float %3993
  %3999 = and i32 %3891, 8192
  %4000 = icmp ne i32 %3999, 0
  %4001 = select i1 %4000, float %3961, float 1.000000e+00
  %4002 = fmul fast float %3899, 2.000000e+00
  %4003 = fadd fast float %4002, -1.000000e+00
  %4004 = call float @dx.op.unary.f32(i32 6, float %4003)  ; FAbs(value)
  %4005 = fmul fast float %4004, %3888
  %4006 = fsub fast float %4005, %3888
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = fmul fast float %3906, 2.000000e+00
  %4009 = fadd fast float %4008, -1.000000e+00
  %4010 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4011 = fmul fast float %4010, %3889
  %4012 = fsub fast float %4011, %3889
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fmul fast float %3918, %3851
  %4015 = fsub fast float %4014, %3851
  %4016 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4017 = fmul fast float %3975, %4001
  %4018 = fmul fast float %4017, %3972
  %4019 = fmul fast float %4018, %4007
  %4020 = fmul fast float %4019, %3998
  %4021 = fmul fast float %4020, %4013
  %4022 = fmul fast float %4021, %4016
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4026 = fsub fast float %3935, %4025
  %4027 = fmul fast float %4026, %4024
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %4022, %3852
  %4030 = fadd fast float %4022, %3852
  %4031 = fmul fast float %4030, %3861
  %4032 = fsub fast float %4031, %3861
  %4033 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4034 = and i32 %3891, 128
  %4035 = icmp ne i32 %4034, 0
  %4036 = select i1 %4035, float %4033, float %4029
  %4037 = fmul fast float %4036, %4028
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = fcmp fast ugt float %4037, %4039
  br i1 %4040, label %4041, label %3940

; <label>:4041                                    ; preds = %3960
  %4042 = select i1 %4000, float %4037, float 0.000000e+00
  %4043 = fadd fast float %4042, %3816
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  br i1 %4000, label %3940, label %4045

; <label>:4045                                    ; preds = %4041
  %4046 = and i32 %3891, 4
  %4047 = and i32 %3891, 8
  %4048 = add i32 %3847, 0
  %4049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4048, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4049, %dx.types.Handle %4050, float %3978, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3983, float %3985, float undef, float %3987, float %3989, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = extractvalue %dx.types.ResRet.f32 %4051, 3
  %4056 = bitcast float %3873 to i32
  %4057 = and i32 %4056, 255
  %4058 = uitofp i32 %4057 to float
  %4059 = lshr i32 %4056, 8
  %4060 = and i32 %4059, 255
  %4061 = uitofp i32 %4060 to float
  %4062 = fmul fast float %4055, %4058
  %4063 = fadd fast float %4062, %4061
  %4064 = fmul fast float %4063, 0x3F70101000000000
  %4065 = add i32 %3848, 0
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4066, %dx.types.Handle %4050, float %3978, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3983, float %3985, float undef, float %3987, float %3989, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = bitcast float %3867 to i32
  %4073 = and i32 %4072, 255
  %4074 = uitofp i32 %4073 to float
  %4075 = lshr i32 %4072, 8
  %4076 = and i32 %4075, 255
  %4077 = uitofp i32 %4076 to float
  %4078 = lshr i32 %4072, 16
  %4079 = and i32 %4078, 255
  %4080 = uitofp i32 %4079 to float
  %4081 = fmul fast float %4080, 0x3F70101000000000
  %4082 = fmul fast float %4068, %4074
  %4083 = fadd fast float %4082, %4077
  %4084 = fmul fast float %4083, 0x3F70101000000000
  %4085 = fadd fast float %4069, -5.000000e-01
  %4086 = fadd fast float %4071, -5.000000e-01
  %4087 = fmul fast float %4085, %4081
  %4088 = fmul fast float %4086, %4081
  %4089 = fadd fast float %4087, 5.000000e-01
  %4090 = fadd fast float %4088, 5.000000e-01
  %4091 = fmul fast float %4052, %3876
  %4092 = fmul fast float %4053, %3877
  %4093 = fmul fast float %4054, %3878
  %4094 = fmul fast float %4089, 2.000000e+00
  %4095 = fadd fast float %4094, -1.000000e+00
  %4096 = fmul fast float %4090, 2.000000e+00
  %4097 = fadd fast float %4096, -1.000000e+00
  %4098 = fadd fast float %4095, %4097
  %4099 = fmul fast float %4098, 5.000000e-01
  %4100 = fsub fast float %4095, %4097
  %4101 = fmul fast float %4100, 5.000000e-01
  %4102 = call float @dx.op.unary.f32(i32 6, float %4099)  ; FAbs(value)
  %4103 = fsub fast float 1.000000e+00, %4102
  %4104 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4105 = fsub fast float %4103, %4104
  %4106 = call float @dx.op.dot3.f32(i32 55, float %4099, float %4101, float %4105, float %4099, float %4101, float %4105)  ; Dot3(ax,ay,az,bx,by,bz)
  %4107 = call float @dx.op.unary.f32(i32 25, float %4106)  ; Rsqrt(value)
  %4108 = fmul fast float %4099, %4107
  %4109 = fmul fast float %4101, %4107
  %4110 = fmul fast float %4107, %4105
  %4111 = fmul fast float %4110, %3841
  %4112 = fmul fast float %4110, %3842
  %4113 = fmul fast float %4110, %3843
  %4114 = fmul fast float %4108, %3864
  %4115 = fmul fast float %4108, %3865
  %4116 = fmul fast float %4108, %3866
  %4117 = fadd fast float %4114, %4111
  %4118 = fadd fast float %4115, %4112
  %4119 = fadd fast float %4116, %4113
  %4120 = fmul fast float %4109, %3870
  %4121 = fmul fast float %4109, %3871
  %4122 = fmul fast float %4109, %3872
  %4123 = fadd fast float %4117, %4120
  %4124 = fadd fast float %4118, %4121
  %4125 = fadd fast float %4119, %4122
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4125, float %4123, float %4124, float %4125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = call float @dx.op.unary.f32(i32 25, float %4126)  ; Rsqrt(value)
  %4128 = fmul fast float %4123, %4127
  %4129 = fmul fast float %4124, %4127
  %4130 = fmul fast float %4125, %4127
  %4131 = icmp ne i32 %4047, 0
  %4132 = select i1 %4131, float 1.000000e+00, float 0.000000e+00
  %4133 = fmul fast float %4037, %4132
  %4134 = and i32 %3891, 1
  %4135 = icmp eq i32 %4134, 0
  br i1 %4135, label %4136, label %4140

; <label>:4136                                    ; preds = %4045
  %4137 = fsub fast float %4128, %3824
  %4138 = fsub fast float %4129, %3825
  %4139 = fsub fast float %4130, %3826
  br label %4140

; <label>:4140                                    ; preds = %4136, %4045
  %4141 = phi float [ %4137, %4136 ], [ %4128, %4045 ]
  %4142 = phi float [ %4138, %4136 ], [ %4129, %4045 ]
  %4143 = phi float [ %4139, %4136 ], [ %4130, %4045 ]
  %4144 = fmul float %4143, %4133
  %4145 = fmul float %4142, %4133
  %4146 = fmul float %4141, %4133
  %4147 = fadd fast float %4146, %3824
  %4148 = fadd fast float %4145, %3825
  %4149 = fadd fast float %4144, %3826
  %4150 = icmp ne i32 %4046, 0
  %4151 = select i1 %4150, float 1.000000e+00, float 0.000000e+00
  %4152 = fmul fast float %4037, %4151
  %4153 = fsub fast float %4091, %3831
  %4154 = fsub fast float %4092, %3832
  %4155 = fsub fast float %4093, %3833
  %4156 = fmul fast float %4153, %4152
  %4157 = fmul fast float %4154, %4152
  %4158 = fmul fast float %4155, %4152
  %4159 = fadd fast float %4156, %3831
  %4160 = fadd fast float %4157, %3832
  %4161 = fadd fast float %4158, %3833
  %4162 = fsub fast float %4064, %3830
  %4163 = fmul fast float %4162, %4152
  %4164 = fadd fast float %4163, %3830
  %4165 = fmul fast float %4152, %3820
  %4166 = fsub fast float %3820, %4165
  %4167 = fmul fast float %4152, %3819
  %4168 = fsub fast float %3819, %4167
  %4169 = fadd fast float %4037, %3829
  %4170 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4171 = fsub fast float %4084, %3828
  %4172 = fmul fast float %4171, %4133
  %4173 = fadd fast float %4172, %3828
  %4174 = fsub fast float %4070, %3827
  %4175 = fmul fast float %4174, %4133
  %4176 = fadd fast float %4175, %3827
  %4177 = call float @dx.op.dot3.f32(i32 55, float %4091, float %4092, float %4093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = fmul fast float %4180, %4177
  %4182 = fadd fast float %4181, %4179
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = bitcast float %3879 to i32
  %4185 = and i32 %4184, 65535
  %4186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4185)  ; LegacyF16ToF32(value)
  %4187 = lshr i32 %4184, 16
  %4188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4187)  ; LegacyF16ToF32(value)
  %4189 = fcmp fast oge float %4186, 0.000000e+00
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = select i1 %4189, float %4186, float %4191
  %4193 = fadd fast float %4192, %4188
  %4194 = fsub fast float %4183, %3818
  %4195 = fmul fast float %4194, %4037
  %4196 = fadd fast float %4195, %3818
  %4197 = fmul fast float %4193, %4037
  %4198 = call float @dx.op.binary.f32(i32 35, float %3817, float %4197)  ; FMax(a,b)
  %4199 = and i32 %3891, 16
  %4200 = icmp eq i32 %4199, 0
  br i1 %4200, label %4223, label %4201

; <label>:4201                                    ; preds = %4140
  %4202 = bitcast float %3885 to i32
  %4203 = add i32 %3882, 0
  %4204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4204, %dx.types.Handle %4050, float %3978, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3983, float %3985, float undef, float %3987, float %3989, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = and i32 %4202, 65535
  %4210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4209)  ; LegacyF16ToF32(value)
  %4211 = fmul fast float %4206, %3876
  %4212 = fmul fast float %4207, %3877
  %4213 = fmul fast float %4208, %3878
  %4214 = and i32 %3891, 16384
  %4215 = icmp ne i32 %4214, 0
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = select i1 %4215, float %4217, float 1.000000e+00
  %4219 = fmul fast float %4218, %4210
  %4220 = fmul fast float %4211, %4219
  %4221 = fmul fast float %4212, %4219
  %4222 = fmul fast float %4213, %4219
  br label %4223

; <label>:4223                                    ; preds = %4201, %4140
  %4224 = phi float [ %4220, %4201 ], [ 0.000000e+00, %4140 ]
  %4225 = phi float [ %4221, %4201 ], [ 0.000000e+00, %4140 ]
  %4226 = phi float [ %4222, %4201 ], [ 0.000000e+00, %4140 ]
  %4227 = fsub fast float %4224, %3821
  %4228 = fsub fast float %4225, %3822
  %4229 = fsub fast float %4226, %3823
  %4230 = fmul fast float %4227, %4037
  %4231 = fmul fast float %4228, %4037
  %4232 = fmul fast float %4229, %4037
  %4233 = fadd fast float %4230, %3821
  %4234 = fadd fast float %4231, %3822
  %4235 = fadd fast float %4232, %3823
  br label %3940

; <label>:4236                                    ; preds = %3940
  br label %4237

; <label>:4237                                    ; preds = %4236, %3760
  %4238 = phi float [ 0.000000e+00, %3760 ], [ %3941, %4236 ]
  %4239 = phi float [ %3729, %3760 ], [ %3942, %4236 ]
  %4240 = phi float [ %3727, %3760 ], [ %3943, %4236 ]
  %4241 = phi float [ 0.000000e+00, %3760 ], [ %3944, %4236 ]
  %4242 = phi float [ 0.000000e+00, %3760 ], [ %3945, %4236 ]
  %4243 = phi float [ %3721, %3760 ], [ %3946, %4236 ]
  %4244 = phi float [ %3722, %3760 ], [ %3947, %4236 ]
  %4245 = phi float [ %3723, %3760 ], [ %3948, %4236 ]
  %4246 = phi float [ %3755, %3760 ], [ %3949, %4236 ]
  %4247 = phi float [ %3756, %3760 ], [ %3950, %4236 ]
  %4248 = phi float [ %3757, %3760 ], [ %3951, %4236 ]
  %4249 = phi float [ %3726, %3760 ], [ %3952, %4236 ]
  %4250 = phi float [ %3725, %3760 ], [ %3953, %4236 ]
  %4251 = phi float [ 0.000000e+00, %3760 ], [ %3954, %4236 ]
  %4252 = phi float [ %3724, %3760 ], [ %3955, %4236 ]
  %4253 = phi float [ %3718, %3760 ], [ %3956, %4236 ]
  %4254 = phi float [ %3719, %3760 ], [ %3957, %4236 ]
  %4255 = phi float [ %3720, %3760 ], [ %3958, %4236 ]
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call float @dx.op.unary.f32(i32 25, float %4256)  ; Rsqrt(value)
  %4258 = fmul fast float %4257, %4246
  %4259 = fmul fast float %4257, %4247
  %4260 = fmul fast float %4257, %4248
  %4261 = fadd fast float %4251, %1162
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4258, float %4259, float %4260, float %4258, float %4259, float %4260)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = call float @dx.op.unary.f32(i32 25, float %4263)  ; Rsqrt(value)
  %4265 = fmul fast float %4264, %4258
  %4266 = fmul fast float %4264, %4259
  %4267 = fmul fast float %4264, %4260
  br label %4268

; <label>:4268                                    ; preds = %4237, %3715
  %4269 = phi float [ %4265, %4237 ], [ %3755, %3715 ]
  %4270 = phi float [ %4266, %4237 ], [ %3756, %3715 ]
  %4271 = phi float [ %4267, %4237 ], [ %3757, %3715 ]
  %4272 = phi float [ %4253, %4237 ], [ %3718, %3715 ]
  %4273 = phi float [ %4254, %4237 ], [ %3719, %3715 ]
  %4274 = phi float [ %4255, %4237 ], [ %3720, %3715 ]
  %4275 = phi float [ %4243, %4237 ], [ %3721, %3715 ]
  %4276 = phi float [ %4244, %4237 ], [ %3722, %3715 ]
  %4277 = phi float [ %4245, %4237 ], [ %3723, %3715 ]
  %4278 = phi float [ %4252, %4237 ], [ %3724, %3715 ]
  %4279 = phi float [ %4262, %4237 ], [ %1162, %3715 ]
  %4280 = phi float [ %4250, %4237 ], [ %3725, %3715 ]
  %4281 = phi float [ %4249, %4237 ], [ %3726, %3715 ]
  %4282 = phi float [ %4242, %4237 ], [ 0.000000e+00, %3715 ]
  %4283 = phi float [ %4241, %4237 ], [ 0.000000e+00, %3715 ]
  %4284 = phi float [ %4238, %4237 ], [ 0.000000e+00, %3715 ]
  %4285 = phi float [ %4239, %4237 ], [ %3729, %3715 ]
  %4286 = phi float [ %4240, %4237 ], [ %3727, %3715 ]
  %4287 = add i32 %54, 392
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = extractvalue %dx.types.ResRet.i32 %4288, 1
  %4291 = extractvalue %dx.types.ResRet.i32 %4288, 2
  %4292 = extractvalue %dx.types.ResRet.i32 %4288, 3
  %4293 = bitcast i32 %4289 to float
  %4294 = bitcast i32 %4290 to float
  %4295 = bitcast i32 %4291 to float
  %4296 = bitcast i32 %4292 to float
  %4297 = fsub fast float %4272, %4293
  %4298 = fsub fast float %4273, %4294
  %4299 = fsub fast float %4274, %4295
  %4300 = fmul fast float %4297, %192
  %4301 = fmul fast float %4298, %192
  %4302 = fmul fast float %4299, %192
  %4303 = fadd fast float %4300, %4293
  %4304 = fadd fast float %4301, %4294
  %4305 = fadd fast float %4302, %4295
  %4306 = fsub fast float %4279, %4296
  %4307 = fmul fast float %4306, %192
  %4308 = fadd fast float %4307, %4296
  %4309 = fadd fast float %4278, 0xBFB99999A0000000
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fmul fast float %4310, 0x3FF1C71C80000000
  %4312 = call float @dx.op.binary.f32(i32 36, float %4278, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4313 = fsub fast float 1.000000e+00, %4311
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4303, %4314
  %4316 = fmul fast float %4304, %4314
  %4317 = fmul fast float %4305, %4314
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4321 = fmul fast float %4303, %4311
  %4322 = fmul fast float %4304, %4311
  %4323 = fmul fast float %4305, %4311
  %4324 = fadd fast float %4321, %4312
  %4325 = fadd fast float %4322, %4312
  %4326 = fadd fast float %4323, %4312
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.i32 %4331, 3
  %4333 = and i32 %4332, 8
  %4334 = icmp ne i32 %4333, 0
  %4335 = call float @dx.op.binary.f32(i32 35, float %4318, float %4303)  ; FMax(a,b)
  %4336 = call float @dx.op.binary.f32(i32 35, float %4319, float %4303)  ; FMax(a,b)
  %4337 = call float @dx.op.binary.f32(i32 35, float %4320, float %4303)  ; FMax(a,b)
  %4338 = call float @dx.op.dot3.f32(i32 55, float %4318, float %4319, float %4320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4339 = select i1 %252, float %4303, float %4318
  %4340 = select i1 %252, float %4338, float %4319
  %4341 = select i1 %252, float 1.000000e+00, float %4320
  %4342 = select i1 %4334, float %4335, float %4339
  %4343 = select i1 %4334, float %4336, float %4340
  %4344 = select i1 %4334, float %4337, float %4341
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4349 = fadd fast float %4346, %158
  %4350 = fadd fast float %4347, %159
  %4351 = fadd fast float %4348, %160
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4355 = fsub fast float %4349, %4353
  %4356 = fsub fast float %4350, %4354
  %4357 = fmul fast float %4355, %4355
  %4358 = fmul fast float %4356, %4356
  %4359 = fadd fast float %4357, %4358
  %4360 = call float @dx.op.unary.f32(i32 24, float %4359)  ; Sqrt(value)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4362 = fcmp fast olt float %4360, %4361
  br i1 %4362, label %4363, label %4430

; <label>:4363                                    ; preds = %4268
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
  %4376 = fadd fast float %4373, %4349
  %4377 = fadd fast float %4374, %4350
  %4378 = fadd fast float %4375, %4351
  %4379 = fmul fast float %4376, %4365
  %4380 = call float @dx.op.tertiary.f32(i32 46, float %4377, float %4367, float %4379)  ; FMad(a,b,c)
  %4381 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4369, float %4380)  ; FMad(a,b,c)
  %4382 = fmul fast float %4376, %4370
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4377, float %4371, float %4382)  ; FMad(a,b,c)
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4378, float %4372, float %4383)  ; FMad(a,b,c)
  %4385 = fsub fast float %4381, %4373
  %4386 = fsub fast float %4384, %4374
  %4387 = fsub fast float %4385, %4353
  %4388 = fadd fast float %4387, %4361
  %4389 = fsub fast float %4386, %4354
  %4390 = fadd fast float %4389, %4361
  %4391 = extractvalue %dx.types.CBufRet.f32 %4352, 3
  %4392 = fmul fast float %4388, %4391
  %4393 = fmul fast float %4390, %4391
  %4394 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4395 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4396 = fsub fast float 1.000000e+00, %4394
  %4397 = fsub fast float 1.000000e+00, %4395
  %4398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4396, float %4397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = fcmp fast ugt float %4399, 0.000000e+00
  br i1 %4400, label %4401, label %4704

; <label>:4401                                    ; preds = %4363
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = fmul fast float %4403, %4399
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4406 = fadd fast float %4405, %4404
  %4407 = extractvalue %dx.types.CBufRet.f32 %4368, 2
  %4408 = fadd fast float %4406, %4375
  %4409 = fmul fast float %4381, %4369
  %4410 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4372, float %4409)  ; FMad(a,b,c)
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4408, float %4407, float %4410)  ; FMad(a,b,c)
  %4412 = fsub fast float %4411, %4375
  %4413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.f32 %4413, 2
  %4415 = fsub fast float %4412, %4414
  %4416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4396, float %4397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4396, float %4397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.ResRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.ResRet.f32 %4420, 2
  %4424 = fadd fast float %4421, %4417
  %4425 = fmul fast float %4424, 0x3F847AE140000000
  %4426 = fadd fast float %4422, %4418
  %4427 = fmul fast float %4426, 0x3F847AE140000000
  %4428 = fadd fast float %4423, %4419
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  br label %4704

; <label>:4430                                    ; preds = %4268
  %4431 = and i32 %228, 1
  %4432 = icmp eq i32 %4431, 0
  br i1 %4432, label %4704, label %4433

; <label>:4433                                    ; preds = %4430
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4434, 1
  %4441 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4442 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4434, 3
  %4444 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4445 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4446 = fadd fast float %4443, %4349
  %4447 = fadd fast float %4444, %4350
  %4448 = fadd fast float %4445, %4351
  %4449 = fmul fast float %4446, %4435
  %4450 = call float @dx.op.tertiary.f32(i32 46, float %4447, float %4437, float %4449)  ; FMad(a,b,c)
  %4451 = call float @dx.op.tertiary.f32(i32 46, float %4448, float %4439, float %4450)  ; FMad(a,b,c)
  %4452 = fmul fast float %4446, %4440
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4447, float %4441, float %4452)  ; FMad(a,b,c)
  %4454 = call float @dx.op.tertiary.f32(i32 46, float %4448, float %4442, float %4453)  ; FMad(a,b,c)
  %4455 = fsub fast float %4451, %4443
  %4456 = fsub fast float %4454, %4444
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.i32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.i32 %4464, 1
  %4467 = udiv i32 %4466, %4465
  %4468 = fsub fast float %4455, %4458
  %4469 = fsub fast float %4456, %4459
  %4470 = call float @dx.op.binary.f32(i32 35, float %4468, float 0.000000e+00)  ; FMax(a,b)
  %4471 = call float @dx.op.binary.f32(i32 35, float %4469, float 0.000000e+00)  ; FMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 36, float %4470, float %4460)  ; FMin(a,b)
  %4473 = call float @dx.op.binary.f32(i32 36, float %4471, float %4461)  ; FMin(a,b)
  %4474 = add i32 %4465, -1
  %4475 = add i32 %4467, -1
  %4476 = fmul fast float %4472, %4463
  %4477 = fmul fast float %4473, %4463
  %4478 = fptoui float %4476 to i32
  %4479 = fptoui float %4477 to i32
  %4480 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4474)  ; UMin(a,b)
  %4481 = call i32 @dx.op.binary.i32(i32 40, i32 %4479, i32 %4475)  ; UMin(a,b)
  %4482 = mul i32 %4481, %4465
  %4483 = add i32 %4482, %4480
  %4484 = shl i32 %4483, 2
  %4485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.i32 %4485, 0
  %4487 = icmp eq i32 %4486, -1
  br i1 %4487, label %4704, label %4488

; <label>:4488                                    ; preds = %4433
  %4489 = mul i32 %4486, 148
  %4490 = add i32 %4489, 4
  %4491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = add i32 %4489, 8
  %4494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = add i32 %4489, 36
  %4497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4496, i32 undef)  ; BufferLoad(srv,index,wot)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = add i32 %4489, 60
  %4500 = add i32 %4489, 92
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = add i32 %4489, 116
  %4504 = fsub fast float %4455, %4492
  %4505 = fsub fast float %4456, %4495
  %4506 = fmul fast float %4463, %4504
  %4507 = fmul fast float %4463, %4505
  %4508 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4510 = fsub fast float 1.000000e+00, %4509
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4513 = call float @dx.op.unary.f32(i32 83, float %4508)  ; DerivCoarseX(value)
  %4514 = call float @dx.op.unary.f32(i32 83, float %4510)  ; DerivCoarseX(value)
  %4515 = call float @dx.op.unary.f32(i32 84, float %4508)  ; DerivCoarseY(value)
  %4516 = call float @dx.op.unary.f32(i32 84, float %4510)  ; DerivCoarseY(value)
  %4517 = fmul fast float %4513, %4512
  %4518 = fmul fast float %4514, %4512
  %4519 = fmul fast float %4515, %4512
  %4520 = fmul fast float %4516, %4512
  %4521 = call float @dx.op.dot2.f32(i32 54, float %4519, float %4520, float %4519, float %4520)  ; Dot2(ax,ay,bx,by)
  %4522 = call float @dx.op.dot2.f32(i32 54, float %4517, float %4518, float %4517, float %4518)  ; Dot2(ax,ay,bx,by)
  %4523 = call float @dx.op.binary.f32(i32 35, float %4522, float %4521)  ; FMax(a,b)
  %4524 = call float @dx.op.unary.f32(i32 23, float %4523)  ; Log(value)
  %4525 = fmul fast float %4524, 5.000000e-01
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4528 = fadd fast float %4527, %4525
  %4529 = call float @dx.op.binary.f32(i32 35, float %4528, float 0.000000e+00)  ; FMax(a,b)
  %4530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.f32 %4530, 3
  %4532 = fadd fast float %4531, %4529
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4535 = fadd fast float %4532, %4534
  %4536 = add i32 %4502, 0
  %4537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4536, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4538 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4537, i32 0)  ; GetDimensions(handle,mipLevel)
  %4539 = extractvalue %dx.types.Dimensions %4538, 0
  %4540 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4539)  ; FirstbitLo(value)
  %4541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.i32 %4541, 1
  %4543 = sub nsw i32 %4542, %4540
  %4544 = sitofp i32 %4543 to float
  %4545 = fsub fast float %4535, %4544
  %4546 = call float @dx.op.binary.f32(i32 35, float %4545, float 0.000000e+00)  ; FMax(a,b)
  %4547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4537, %dx.types.Handle %46, float %4508, float %4510, float %4498, float undef, i32 0, i32 0, i32 undef, float %4546)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = fcmp ule float %4548, 0x3FE0101020000000
  %4550 = extractvalue %dx.types.CBufRet.i32 %4541, 0
  %4551 = and i32 %4550, 128
  %4552 = icmp ne i32 %4551, 0
  %4553 = and i1 %4549, %4552
  br i1 %4553, label %4704, label %4554

; <label>:4554                                    ; preds = %4488
  %4555 = add i32 %4489, 20
  %4556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4555, i32 undef)  ; BufferLoad(srv,index,wot)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = add i32 %4489, 24
  %4559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = add i32 %4489, 40
  %4562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = add i32 %4489, 96
  %4565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.i32 %4565, 0
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 2
  %4569 = fmul fast float %4568, %4508
  %4570 = fmul fast float %4568, %4510
  %4571 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4572 = fadd fast float %4569, %4571
  %4573 = fadd fast float %4570, %4571
  %4574 = add i32 %4566, 0
  %4575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4574, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4576 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4575, i32 0)  ; GetDimensions(handle,mipLevel)
  %4577 = extractvalue %dx.types.Dimensions %4576, 0
  %4578 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4577)  ; FirstbitLo(value)
  %4579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.i32 %4579, 1
  %4581 = sub nsw i32 %4580, %4578
  %4582 = sitofp i32 %4581 to float
  %4583 = fsub fast float %4532, %4582
  %4584 = call float @dx.op.binary.f32(i32 35, float %4583, float 0.000000e+00)  ; FMax(a,b)
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4575, %dx.types.Handle %46, float %4572, float %4573, float %4563, float undef, i32 0, i32 0, i32 undef, float %4584)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = fmul fast float %4586, %4557
  %4588 = fadd fast float %4587, %4560
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.CBufRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.CBufRet.f32 %4589, 2
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 3
  %4597 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4598 = fadd fast float %4594, %4455
  %4599 = fadd fast float %4596, %4456
  %4600 = fadd fast float %4588, %4597
  %4601 = fmul fast float %4598, %4590
  %4602 = call float @dx.op.tertiary.f32(i32 46, float %4599, float %4591, float %4601)  ; FMad(a,b,c)
  %4603 = call float @dx.op.tertiary.f32(i32 46, float %4600, float %4592, float %4602)  ; FMad(a,b,c)
  %4604 = fsub fast float %4603, %4597
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4607 = fsub fast float %4604, %4606
  %4608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.i32 %4608, 0
  %4610 = call i32 @dx.op.binary.i32(i32 40, i32 %4486, i32 %4609)  ; UMin(a,b)
  %4611 = mul i32 %4610, 36
  %4612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.i32 %4612, 0
  %4614 = add i32 %4611, 4
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = fmul fast float %4616, %4508
  %4618 = fmul fast float %4616, %4510
  %4619 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4620 = fadd fast float %4617, %4619
  %4621 = fadd fast float %4618, %4619
  %4622 = icmp eq i32 %4613, 0
  br i1 %4622, label %4691, label %4623

; <label>:4623                                    ; preds = %4554
  br label %4624

; <label>:4624                                    ; preds = %4681, %4623
  %4625 = phi float [ %4682, %4681 ], [ 0.000000e+00, %4623 ]
  %4626 = phi float [ %4683, %4681 ], [ 0.000000e+00, %4623 ]
  %4627 = phi float [ %4684, %4681 ], [ 0.000000e+00, %4623 ]
  %4628 = phi float [ %4685, %4681 ], [ 0.000000e+00, %4623 ]
  %4629 = phi float [ %4686, %4681 ], [ 0.000000e+00, %4623 ]
  %4630 = phi float [ %4687, %4681 ], [ 0.000000e+00, %4623 ]
  %4631 = phi i32 [ %4688, %4681 ], [ 0, %4623 ]
  %4632 = shl i32 %4631, 2
  %4633 = add i32 %4499, %4632
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = add i32 %4503, %4632
  %4637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.i32 %4637, 0
  %4639 = add i32 %4638, 0
  %4640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4639, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4641 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4640, i32 0)  ; GetDimensions(handle,mipLevel)
  %4642 = extractvalue %dx.types.Dimensions %4641, 0
  %4643 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4642)  ; FirstbitLo(value)
  %4644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.i32 %4644, 1
  %4646 = sub nsw i32 %4645, %4643
  %4647 = sitofp i32 %4646 to float
  %4648 = fsub fast float %4532, %4647
  %4649 = call float @dx.op.binary.f32(i32 35, float %4648, float 0.000000e+00)  ; FMax(a,b)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4640, %dx.types.Handle %46, float %4620, float %4621, float %4635, float undef, i32 0, i32 0, i32 undef, float %4649)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = fcmp fast ogt float %4651, 0.000000e+00
  br i1 %4652, label %4653, label %4681

; <label>:4653                                    ; preds = %4624
  %4654 = add i32 %4614, %4632
  %4655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.i32 %4655, 0
  %4657 = and i32 %4656, 32767
  %4658 = mul nuw nsw i32 %4657, 928
  %4659 = add nuw nsw i32 %4658, 48
  %4660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.ResRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4660, 2
  %4664 = add nuw nsw i32 %4658, 60
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = fmul fast float %4661, %4651
  %4670 = fmul fast float %4662, %4651
  %4671 = fmul fast float %4663, %4651
  %4672 = fadd fast float %4669, %4625
  %4673 = fadd fast float %4670, %4626
  %4674 = fadd fast float %4671, %4627
  %4675 = fmul fast float %4666, %4651
  %4676 = fmul fast float %4667, %4651
  %4677 = fmul fast float %4668, %4651
  %4678 = fadd fast float %4675, %4628
  %4679 = fadd fast float %4676, %4629
  %4680 = fadd fast float %4677, %4630
  br label %4681

; <label>:4681                                    ; preds = %4653, %4624
  %4682 = phi float [ %4672, %4653 ], [ %4625, %4624 ]
  %4683 = phi float [ %4673, %4653 ], [ %4626, %4624 ]
  %4684 = phi float [ %4674, %4653 ], [ %4627, %4624 ]
  %4685 = phi float [ %4678, %4653 ], [ %4628, %4624 ]
  %4686 = phi float [ %4679, %4653 ], [ %4629, %4624 ]
  %4687 = phi float [ %4680, %4653 ], [ %4630, %4624 ]
  %4688 = add nuw i32 %4631, 1
  %4689 = icmp eq i32 %4688, %4613
  br i1 %4689, label %4690, label %4624

; <label>:4690                                    ; preds = %4681
  br label %4691

; <label>:4691                                    ; preds = %4690, %4554
  %4692 = phi float [ 0.000000e+00, %4554 ], [ %4682, %4690 ]
  %4693 = phi float [ 0.000000e+00, %4554 ], [ %4683, %4690 ]
  %4694 = phi float [ 0.000000e+00, %4554 ], [ %4684, %4690 ]
  %4695 = phi float [ 0.000000e+00, %4554 ], [ %4685, %4690 ]
  %4696 = phi float [ 0.000000e+00, %4554 ], [ %4686, %4690 ]
  %4697 = phi float [ 0.000000e+00, %4554 ], [ %4687, %4690 ]
  %4698 = fadd fast float %4695, %4692
  %4699 = fmul fast float %4698, 0x3F847AE140000000
  %4700 = fadd fast float %4696, %4693
  %4701 = fmul fast float %4700, 0x3F847AE140000000
  %4702 = fadd fast float %4697, %4694
  %4703 = fmul fast float %4702, 0x3F847AE140000000
  br label %4704

; <label>:4704                                    ; preds = %4691, %4488, %4433, %4430, %4401, %4363
  %4705 = phi float [ %4415, %4401 ], [ -1.310720e+05, %4363 ], [ %4607, %4691 ], [ -1.310720e+05, %4433 ], [ -1.310720e+05, %4488 ], [ -1.310720e+05, %4430 ]
  %4706 = phi float [ %4425, %4401 ], [ 0.000000e+00, %4363 ], [ %4699, %4691 ], [ 0.000000e+00, %4433 ], [ 0.000000e+00, %4488 ], [ 0.000000e+00, %4430 ]
  %4707 = phi float [ %4427, %4401 ], [ 0.000000e+00, %4363 ], [ %4701, %4691 ], [ 0.000000e+00, %4433 ], [ 0.000000e+00, %4488 ], [ 0.000000e+00, %4430 ]
  %4708 = phi float [ %4429, %4401 ], [ 0.000000e+00, %4363 ], [ %4703, %4691 ], [ 0.000000e+00, %4433 ], [ 0.000000e+00, %4488 ], [ 0.000000e+00, %4430 ]
  %4709 = phi i1 [ true, %4401 ], [ false, %4363 ], [ true, %4691 ], [ false, %4433 ], [ false, %4488 ], [ false, %4430 ]
  %4710 = and i32 %228, 3
  %4711 = icmp eq i32 %4710, 1
  %4712 = select i1 %4711, float 1.000000e+00, float 0.000000e+00
  %4713 = fsub fast float %4705, %160
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = select i1 %4709, float %4714, float 1.000000e+00
  %4716 = fmul fast float %4715, %4712
  %4717 = icmp eq i32 %4710, 3
  %4718 = select i1 %4717, float 1.000000e+00, float %4716
  %4719 = call float @dx.op.binary.f32(i32 35, float %4284, float %4718)  ; FMax(a,b)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fcmp fast une float %4720, 0.000000e+00
  %4722 = fsub fast float -0.000000e+00, %178
  %4723 = fsub fast float -0.000000e+00, %179
  %4724 = fsub fast float -0.000000e+00, %180
  br i1 %4721, label %4725, label %4887

; <label>:4725                                    ; preds = %4704
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = fmul fast float %4720, 2.500000e+00
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4720, 0x4013FFFFE0000000
  %4730 = fadd fast float %4729, 0xBFFFFFFFE0000000
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4720, 0x4004000020000000
  %4733 = fadd fast float %4732, 0xBFF8000040000000
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4736 = fmul fast float %4309, 1.000000e+01
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4737, 2.000000e+00
  %4739 = fsub fast float 3.000000e+00, %4738
  %4740 = fmul fast float %4737, %4737
  %4741 = fmul fast float %4740, %4739
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = fsub fast float 0x3FE3333340000000, %4330
  %4744 = fmul fast float %4743, 0x400AAAAAA0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4742, %4745
  %4747 = fmul fast float %4342, 0x3FEA2B8620000000
  %4748 = fmul fast float %4343, 0x3FEA2B8620000000
  %4749 = fmul fast float %4344, 0x3FEA2B8620000000
  %4750 = fadd fast float %4747, 0x3FC81DFBA0000000
  %4751 = fmul fast float %4750, %4342
  %4752 = fadd fast float %4751, 0x3F910E6020000000
  %4753 = fadd fast float %4748, 0x3FC81DFBA0000000
  %4754 = fmul fast float %4753, %4343
  %4755 = fadd fast float %4754, 0x3F910E6020000000
  %4756 = fadd fast float %4749, 0x3FC81DFBA0000000
  %4757 = fmul fast float %4756, %4344
  %4758 = fadd fast float %4757, 0x3F910E6020000000
  %4759 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4761 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4762 = fsub fast float %4759, %4342
  %4763 = fsub fast float %4760, %4343
  %4764 = fsub fast float %4761, %4344
  %4765 = fmul fast float %4762, %4735
  %4766 = fmul fast float %4765, %4746
  %4767 = fmul fast float %4763, %4735
  %4768 = fmul fast float %4767, %4746
  %4769 = fmul fast float %4764, %4735
  %4770 = fmul fast float %4769, %4746
  %4771 = fadd fast float %4766, %4342
  %4772 = fadd fast float %4768, %4343
  %4773 = fadd fast float %4770, %4344
  %4774 = fmul fast float %4281, %4281
  %4775 = fmul fast float %4774, %4774
  %4776 = fadd fast float %4731, 1.000000e+00
  %4777 = fsub fast float %4776, %4746
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = fsub fast float 1.000000e+00, %4775
  %4782 = call float @dx.op.binary.f32(i32 36, float %4778, float %4781)  ; FMin(a,b)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4782, float %4783)  ; FMax(a,b)
  %4785 = fadd fast float %4780, 0xBFE4CCCCC0000000
  %4786 = fmul fast float %4785, 0x4006DB6DA0000000
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, 2.000000e+00
  %4789 = fsub fast float 3.000000e+00, %4788
  %4790 = bitcast float %4327 to i32
  %4791 = ashr i32 %4790, 1
  %4792 = add nsw i32 %4791, 532487669
  %4793 = bitcast i32 %4792 to float
  %4794 = fsub fast float 1.000000e+00, %4793
  %4795 = bitcast float %4794 to i32
  %4796 = sub nsw i32 2129859010, %4795
  %4797 = bitcast i32 %4796 to float
  %4798 = fmul fast float %4797, 2.000000e+00
  %4799 = bitcast float %4328 to i32
  %4800 = ashr i32 %4799, 1
  %4801 = add nsw i32 %4800, 532487669
  %4802 = bitcast i32 %4801 to float
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = bitcast float %4803 to i32
  %4805 = sub nsw i32 2129859010, %4804
  %4806 = bitcast i32 %4805 to float
  %4807 = fmul fast float %4806, 2.000000e+00
  %4808 = bitcast float %4329 to i32
  %4809 = ashr i32 %4808, 1
  %4810 = add nsw i32 %4809, 532487669
  %4811 = bitcast i32 %4810 to float
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = bitcast i32 %4814 to float
  %4816 = fmul fast float %4815, 2.000000e+00
  %4817 = fsub fast float 0x4002A9FBE0000000, %4798
  %4818 = fadd fast float %4798, 0x3FD54FDF00000000
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = fmul fast float %4821, %4817
  %4823 = fmul fast float %4822, %4822
  %4824 = fsub fast float 0x4002A9FBE0000000, %4807
  %4825 = fadd fast float %4807, 0x3FD54FDF00000000
  %4826 = bitcast float %4825 to i32
  %4827 = sub nsw i32 2129859010, %4826
  %4828 = bitcast i32 %4827 to float
  %4829 = fmul fast float %4828, %4824
  %4830 = fmul fast float %4829, %4829
  %4831 = fsub fast float 0x4002A9FBE0000000, %4816
  %4832 = fadd fast float %4816, 0x3FD54FDF00000000
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4836, %4836
  %4838 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4823)  ; FMax(a,b)
  %4839 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4830)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4837)  ; FMax(a,b)
  %4841 = fsub fast float 1.000000e+00, %4726
  %4842 = fadd fast float %4841, %4742
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fsub fast float 1.000000e+00, %4718
  %4845 = fmul fast float %4784, %4844
  %4846 = fmul fast float %4787, %4787
  %4847 = fmul fast float %4846, %4845
  %4848 = fmul fast float %4847, %4789
  %4849 = fmul fast float %4844, 0xBFE99999A0000000
  %4850 = fmul fast float %4849, %4735
  %4851 = fmul fast float %4850, %4746
  %4852 = fadd fast float %4851, 1.000000e+00
  %4853 = fadd fast float %4330, -1.000000e+00
  %4854 = fmul fast float %4852, %4853
  %4855 = fadd fast float %4854, 1.000000e+00
  %4856 = fsub fast float %4838, %4327
  %4857 = fsub fast float %4839, %4328
  %4858 = fsub fast float %4840, %4329
  %4859 = fmul fast float %4848, %4856
  %4860 = fmul fast float %4848, %4857
  %4861 = fmul fast float %4848, %4858
  %4862 = fadd fast float %4859, %4327
  %4863 = fadd fast float %4860, %4328
  %4864 = fadd fast float %4861, %4329
  %4865 = fsub fast float %102, %4269
  %4866 = fsub fast float %103, %4270
  %4867 = fsub fast float %104, %4271
  %4868 = fmul fast float %4848, %4865
  %4869 = fmul fast float %4848, %4866
  %4870 = fmul fast float %4848, %4867
  %4871 = fadd fast float %4868, %4269
  %4872 = fadd fast float %4869, %4270
  %4873 = fadd fast float %4870, %4271
  %4874 = fmul fast float %4848, %4843
  %4875 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = fmul fast float %4874, %4876
  %4878 = fadd fast float %4877, %4875
  %4879 = fsub fast float 1.000000e+00, %4281
  %4880 = fmul fast float %4848, %4879
  %4881 = fadd fast float %4880, %4281
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4871, float %4872, float %4873, float %4871, float %4872, float %4873)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = call float @dx.op.unary.f32(i32 25, float %4882)  ; Rsqrt(value)
  %4884 = fmul fast float %4871, %4883
  %4885 = fmul fast float %4872, %4883
  %4886 = fmul fast float %4873, %4883
  br label %4887

; <label>:4887                                    ; preds = %4725, %4704
  %4888 = phi float [ %4771, %4725 ], [ %4342, %4704 ]
  %4889 = phi float [ %4772, %4725 ], [ %4343, %4704 ]
  %4890 = phi float [ %4773, %4725 ], [ %4344, %4704 ]
  %4891 = phi float [ %4862, %4725 ], [ %4327, %4704 ]
  %4892 = phi float [ %4863, %4725 ], [ %4328, %4704 ]
  %4893 = phi float [ %4864, %4725 ], [ %4329, %4704 ]
  %4894 = phi float [ %4884, %4725 ], [ %4269, %4704 ]
  %4895 = phi float [ %4885, %4725 ], [ %4270, %4704 ]
  %4896 = phi float [ %4886, %4725 ], [ %4271, %4704 ]
  %4897 = phi float [ %4878, %4725 ], [ %4330, %4704 ]
  %4898 = phi float [ %4881, %4725 ], [ %4281, %4704 ]
  %4899 = fsub fast float -0.000000e+00, %160
  %4900 = select i1 %252, float 0.000000e+00, float %4893
  %4901 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4722, float %4723, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = fmul fast float %4903, 2.000000e+00
  %4905 = fmul fast float %4904, %4894
  %4906 = fmul fast float %4904, %4895
  %4907 = fmul fast float %4904, %4896
  %4908 = fsub fast float %178, %4905
  %4909 = fsub fast float %179, %4906
  %4910 = fsub fast float %180, %4907
  %4911 = call float @dx.op.binary.f32(i32 36, float %4898, float 1.000000e+00)  ; FMin(a,b)
  %4912 = fsub fast float 1.000000e+00, %4898
  %4913 = bitcast float %4912 to i32
  %4914 = sub nsw i32 2129859010, %4913
  %4915 = bitcast i32 %4914 to float
  %4916 = fsub fast float 1.000000e+00, %66
  %4917 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4919 = fdiv fast float %4916, %4918
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %4921, 5.000000e-01
  %4923 = fadd fast float %4922, 5.000000e-01
  %4924 = fmul fast float %4923, %66
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4919
  %4928 = fadd fast float %4924, %4927
  %4929 = fsub fast float 5.000000e-01, %4922
  %4930 = fmul fast float %4929, %4888
  %4931 = fmul fast float %4929, %4889
  %4932 = fmul fast float %4929, %4890
  %4933 = fadd fast float %4928, %4930
  %4934 = fadd fast float %4928, %4931
  %4935 = fadd fast float %4928, %4932
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fmul fast float %4937, 5.000000e-01
  %4939 = fadd fast float %4938, 5.000000e-01
  %4940 = fmul fast float %4939, %66
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, %4919
  %4944 = fadd fast float %4940, %4943
  %4945 = fsub fast float 5.000000e-01, %4938
  %4946 = fmul fast float %4945, %4888
  %4947 = fmul fast float %4945, %4889
  %4948 = fmul fast float %4945, %4890
  %4949 = fadd fast float %4944, %4946
  %4950 = fadd fast float %4944, %4947
  %4951 = fadd fast float %4944, %4948
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = call float @dx.op.binary.f32(i32 36, float %4888, float %4953)  ; FMin(a,b)
  %4955 = fsub fast float 1.000000e+00, %4911
  %4956 = fmul fast float %4954, %4955
  %4957 = fsub fast float 1.000000e+00, %4956
  %4958 = bitcast float %4957 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = call float @dx.op.binary.f32(i32 36, float %4889, float %4953)  ; FMin(a,b)
  %4962 = fmul fast float %4961, %4955
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = bitcast float %4963 to i32
  %4965 = sub nsw i32 2129859010, %4964
  %4966 = bitcast i32 %4965 to float
  %4967 = call float @dx.op.binary.f32(i32 36, float %4890, float %4953)  ; FMin(a,b)
  %4968 = fmul fast float %4967, %4955
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4911, %67
  %4974 = fmul fast float %4973, %4933
  %4975 = fmul fast float %4974, %4960
  %4976 = fmul fast float %4911, %68
  %4977 = fmul fast float %4976, %4934
  %4978 = fmul fast float %4977, %4966
  %4979 = fmul fast float %4911, %69
  %4980 = fmul fast float %4979, %4935
  %4981 = fmul fast float %4980, %4972
  %4982 = call float @dx.op.binary.f32(i32 36, float %4891, float %4953)  ; FMin(a,b)
  %4983 = fmul fast float %4982, %4955
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = call float @dx.op.binary.f32(i32 36, float %4892, float %4953)  ; FMin(a,b)
  %4989 = fmul fast float %4988, %4955
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = call float @dx.op.binary.f32(i32 36, float %4900, float %4953)  ; FMin(a,b)
  %4995 = fmul fast float %4994, %4955
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = bitcast float %4996 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = fmul fast float %4973, %4949
  %5001 = fmul fast float %5000, %4987
  %5002 = fmul fast float %4976, %4950
  %5003 = fmul fast float %5002, %4993
  %5004 = fmul fast float %4979, %4951
  %5005 = fmul fast float %5004, %4999
  %5006 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4978, float %4981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = select i1 %252, float 0.000000e+00, float %4975
  %5008 = select i1 %252, float %5006, float %4978
  %5009 = select i1 %252, float 0.000000e+00, float %4981
  %5010 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5003, float %5005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5011 = select i1 %252, float 0.000000e+00, float %5001
  %5012 = select i1 %252, float %5010, float %5003
  %5013 = select i1 %252, float 0.000000e+00, float %5005
  %5014 = fmul fast float %4902, 9.843750e-01
  %5015 = fmul fast float %4897, 9.843750e-01
  %5016 = fadd fast float %5014, 7.812500e-03
  %5017 = fadd fast float %5015, 7.812500e-03
  %5018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5016, float %5017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 3
  %5021 = fmul fast float %5019, %4891
  %5022 = fmul fast float %5019, %4892
  %5023 = fmul fast float %5019, %4900
  %5024 = fadd fast float %5021, %5020
  %5025 = fadd fast float %5022, %5020
  %5026 = fadd fast float %5023, %5020
  %5027 = fcmp fast ogt float %4282, 0.000000e+00
  br i1 %5027, label %5028, label %5054

; <label>:5028                                    ; preds = %4887
  %5029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4282, float %4902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = fadd fast float %5030, -5.000000e-01
  %5034 = fadd fast float %5031, -5.000000e-01
  %5035 = fadd fast float %5032, -5.000000e-01
  %5036 = fsub fast float 1.000000e+00, %4891
  %5037 = fsub fast float 1.000000e+00, %4892
  %5038 = fsub fast float 1.000000e+00, %4900
  %5039 = fmul fast float %4891, 4.000000e+00
  %5040 = fmul fast float %5039, %5036
  %5041 = fmul fast float %5040, %5033
  %5042 = fmul fast float %4892, 4.000000e+00
  %5043 = fmul fast float %5042, %5037
  %5044 = fmul fast float %5043, %5034
  %5045 = fmul fast float %4900, 4.000000e+00
  %5046 = fmul fast float %5045, %5038
  %5047 = fmul fast float %5046, %5035
  %5048 = fadd fast float %5041, %5024
  %5049 = fadd fast float %5044, %5025
  %5050 = fadd fast float %5047, %5026
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  br label %5054

; <label>:5054                                    ; preds = %5028, %4887
  %5055 = phi float [ %5051, %5028 ], [ %5024, %4887 ]
  %5056 = phi float [ %5052, %5028 ], [ %5025, %4887 ]
  %5057 = phi float [ %5053, %5028 ], [ %5026, %4887 ]
  %5058 = call float @dx.op.binary.f32(i32 35, float %5056, float %5057)  ; FMax(a,b)
  %5059 = call float @dx.op.binary.f32(i32 35, float %5055, float %5058)  ; FMax(a,b)
  %5060 = fsub fast float 1.000000e+00, %5059
  %5061 = fmul fast float %5060, %5007
  %5062 = fmul fast float %5060, %5008
  %5063 = fmul fast float %5060, %5009
  %5064 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = fcmp fast ogt float %5064, 0x3E7FF19E20000000
  %5066 = fdiv fast float 1.000000e+00, %5064
  %5067 = select i1 %5065, float %5066, float 0.000000e+00
  %5068 = fmul fast float %5067, %4888
  %5069 = fmul fast float %5067, %4889
  %5070 = fmul fast float %5067, %4890
  %5071 = fadd fast float %5068, -1.000000e+00
  %5072 = fadd fast float %5069, -1.000000e+00
  %5073 = fadd fast float %5070, -1.000000e+00
  %5074 = fmul fast float %5071, 5.000000e-01
  %5075 = fmul fast float %5072, 5.000000e-01
  %5076 = fmul fast float %5073, 5.000000e-01
  %5077 = fadd fast float %5074, 1.000000e+00
  %5078 = fadd fast float %5075, 1.000000e+00
  %5079 = fadd fast float %5076, 1.000000e+00
  %5080 = fmul fast float %5055, %5011
  %5081 = fmul fast float %5056, %5012
  %5082 = fmul fast float %5057, %5013
  %5083 = fsub fast float 1.000000e+00, %4902
  %5084 = bitcast float %5083 to i32
  %5085 = sitofp i32 %5084 to float
  %5086 = fmul fast float %5085, 5.000000e+00
  %5087 = fadd fast float %5086, 0xC1EFBF8940000000
  %5088 = fptosi float %5087 to i32
  %5089 = bitcast i32 %5088 to float
  %5090 = fmul fast float %5089, %4283
  %5091 = fmul fast float %5007, %5090
  %5092 = fmul fast float %5091, %5060
  %5093 = fmul fast float %5092, %5077
  %5094 = fmul fast float %5008, %5090
  %5095 = fmul fast float %5094, %5060
  %5096 = fmul fast float %5095, %5078
  %5097 = fmul fast float %5009, %5090
  %5098 = fmul fast float %5097, %5060
  %5099 = fmul fast float %5098, %5079
  %5100 = fmul fast float %5061, %4308
  %5101 = fmul fast float %5062, %4308
  %5102 = fmul fast float %5063, %4308
  %5103 = fadd fast float %5080, %4275
  %5104 = fadd fast float %5103, %5093
  %5105 = fmul fast float %5104, %4308
  %5106 = fadd fast float %5081, %4276
  %5107 = fadd fast float %5106, %5096
  %5108 = fmul fast float %5107, %4308
  %5109 = fadd fast float %5082, %4277
  %5110 = fadd fast float %5109, %5099
  %5111 = fmul fast float %5110, %4308
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5114 = fcmp fast oeq float %5113, 0.000000e+00
  br i1 %5114, label %6184, label %5115

; <label>:5115                                    ; preds = %5054
  %5116 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5118 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.CBufRet.f32 %5123, 1
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = select i1 %252, float %5124, float %5120
  %5128 = select i1 %252, float %5126, float %5121
  %5129 = select i1 %252, float %5125, float %5122
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5132 = fmul fast float %5131, %102
  %5133 = fmul fast float %5131, %103
  %5134 = fmul fast float %5131, %104
  %5135 = fadd fast float %5132, %158
  %5136 = fadd fast float %5133, %159
  %5137 = fadd fast float %5134, %160
  %5138 = fcmp fast olt float %5113, 0.000000e+00
  br i1 %5138, label %5763, label %5139

; <label>:5139                                    ; preds = %5115
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5149 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5154 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5155 = fmul fast float %5141, %5135
  %5156 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5142, float %5155)  ; FMad(a,b,c)
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5143, float %5156)  ; FMad(a,b,c)
  %5158 = fadd fast float %5157, %5144
  %5159 = fmul fast float %5146, %5135
  %5160 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5147, float %5159)  ; FMad(a,b,c)
  %5161 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5148, float %5160)  ; FMad(a,b,c)
  %5162 = fadd fast float %5161, %5149
  %5163 = fmul fast float %5151, %5135
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5152, float %5163)  ; FMad(a,b,c)
  %5165 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5153, float %5164)  ; FMad(a,b,c)
  %5166 = fadd fast float %5165, %5154
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5171 = fmul fast float %5170, %5158
  %5172 = fmul fast float %5170, %5162
  %5173 = fadd fast float %5171, %5168
  %5174 = fadd fast float %5172, %5169
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5178 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5179 = fmul fast float %5178, %5158
  %5180 = fmul fast float %5178, %5162
  %5181 = fadd fast float %5179, %5176
  %5182 = fadd fast float %5180, %5177
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 1
  %5185 = fsub fast float %5184, %5166
  %5186 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5187 = fmul fast float %5185, %5186
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 2
  %5193 = fadd fast float %5192, %5190
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5219

; <label>:5195                                    ; preds = %5139
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.CBufRet.f32 %5196, 1
  %5199 = fsub fast float %5181, %5197
  %5200 = fsub fast float %5182, %5198
  %5201 = fcmp fast olt float %5199, 0.000000e+00
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5208 = select i1 %5201, float %5204, float %5206
  %5209 = select i1 %5202, float %5205, float %5207
  %5210 = fmul fast float %5208, %5199
  %5211 = fmul fast float %5209, %5200
  %5212 = call float @dx.op.unary.f32(i32 6, float %5210)  ; FAbs(value)
  %5213 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5215 = call float @dx.op.binary.f32(i32 35, float %5212, float %5213)  ; FMax(a,b)
  %5216 = fsub fast float %5214, %5215
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = fmul fast float %5217, %5189
  br label %5219

; <label>:5219                                    ; preds = %5195, %5139
  %5220 = phi float [ %5218, %5195 ], [ 0.000000e+00, %5139 ]
  %5221 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5222 = extractvalue %dx.types.CBufRet.f32 %5191, 1
  %5223 = fadd fast float %5222, %5221
  %5224 = fcmp fast ogt float %5223, 0.000000e+00
  %5225 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  br i1 %5224, label %5226, label %5249

; <label>:5226                                    ; preds = %5219
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5230 = fsub fast float %5173, %5228
  %5231 = fsub fast float %5174, %5229
  %5232 = fcmp fast olt float %5230, 0.000000e+00
  %5233 = fcmp fast olt float %5231, 0.000000e+00
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5238 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5239 = select i1 %5232, float %5235, float %5237
  %5240 = select i1 %5233, float %5236, float %5238
  %5241 = fmul fast float %5239, %5230
  %5242 = fmul fast float %5240, %5231
  %5243 = call float @dx.op.unary.f32(i32 6, float %5241)  ; FAbs(value)
  %5244 = call float @dx.op.unary.f32(i32 6, float %5242)  ; FAbs(value)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5243, float %5244)  ; FMax(a,b)
  %5246 = fsub fast float %5225, %5245
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5247, %5189
  br label %5249

; <label>:5249                                    ; preds = %5226, %5219
  %5250 = phi float [ %5248, %5226 ], [ 0.000000e+00, %5219 ]
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = fsub fast float %5158, %5255
  %5258 = fsub fast float %5162, %5256
  %5259 = fcmp fast olt float %5257, 0.000000e+00
  %5260 = fcmp fast olt float %5258, 0.000000e+00
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5266 = select i1 %5259, float %5262, float %5264
  %5267 = select i1 %5260, float %5263, float %5265
  %5268 = fmul fast float %5266, %5257
  %5269 = fmul fast float %5267, %5258
  %5270 = call float @dx.op.unary.f32(i32 6, float %5268)  ; FAbs(value)
  %5271 = call float @dx.op.unary.f32(i32 6, float %5269)  ; FAbs(value)
  %5272 = call float @dx.op.binary.f32(i32 35, float %5270, float %5271)  ; FMax(a,b)
  %5273 = fsub fast float %5225, %5272
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = call float @dx.op.binary.f32(i32 36, float %5274, float %5253)  ; FMin(a,b)
  %5276 = fmul fast float %5275, %5189
  %5277 = fsub fast float %5250, %5276
  %5278 = fsub fast float %5220, %5250
  %5279 = fsub fast float %5278, %5276
  %5280 = call float @dx.op.binary.f32(i32 35, float %5250, float %5220)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 35, float %5276, float %5280)  ; FMax(a,b)
  %5282 = fcmp fast olt float %5281, 1.000000e+00
  br i1 %5282, label %5283, label %5681, !dx.controlflow.hints !91

; <label>:5283                                    ; preds = %5249
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = fcmp fast une float %5285, 0.000000e+00
  br i1 %5286, label %5287, label %5681, !dx.controlflow.hints !92

; <label>:5287                                    ; preds = %5283
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.CBufRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.CBufRet.f32 %5288, 2
  %5292 = extractvalue %dx.types.CBufRet.f32 %5288, 3
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.CBufRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5298, 2
  %5302 = extractvalue %dx.types.CBufRet.f32 %5298, 3
  %5303 = fmul fast float %5289, %5135
  %5304 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5290, float %5303)  ; FMad(a,b,c)
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5291, float %5304)  ; FMad(a,b,c)
  %5306 = fadd fast float %5305, %5292
  %5307 = fmul fast float %5294, %5135
  %5308 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5295, float %5307)  ; FMad(a,b,c)
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5296, float %5308)  ; FMad(a,b,c)
  %5310 = fadd fast float %5309, %5297
  %5311 = fmul fast float %5299, %5135
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5300, float %5311)  ; FMad(a,b,c)
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5301, float %5312)  ; FMad(a,b,c)
  %5314 = fadd fast float %5313, %5302
  %5315 = fcmp fast oge float %5306, 1.000000e+00
  %5316 = fcmp fast oge float %5310, 1.000000e+00
  %5317 = or i1 %5315, %5316
  %5318 = fcmp fast olt float %5306, 0.000000e+00
  %5319 = fcmp fast olt float %5310, 0.000000e+00
  %5320 = or i1 %5318, %5319
  %5321 = or i1 %5317, %5320
  br i1 %5321, label %5681, label %5322, !dx.controlflow.hints !93

; <label>:5322                                    ; preds = %5287
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5326 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.i32 %5327, 2
  %5329 = uitofp i32 %5328 to float
  %5330 = extractvalue %dx.types.CBufRet.i32 %5327, 3
  %5331 = uitofp i32 %5330 to float
  %5332 = extractvalue %dx.types.CBufRet.f32 %5323, 3
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = fsub fast float %5306, %5324
  %5335 = fsub fast float %5310, %5325
  %5336 = fmul fast float %5333, %5334
  %5337 = fmul fast float %5333, %5335
  %5338 = fdiv fast float 1.000000e+00, %5118
  %5339 = fmul fast float %5337, %5338
  %5340 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5341 = fmul fast float %5326, %5137
  %5342 = fmul fast float %5341, %5333
  %5343 = call float @dx.op.unary.f32(i32 6, float %5342)  ; FAbs(value)
  %5344 = call float @dx.op.unary.f32(i32 6, float %5336)  ; FAbs(value)
  %5345 = call float @dx.op.binary.f32(i32 35, float %5343, float %5340)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 35, float %5344, float %5345)  ; FMax(a,b)
  %5347 = fmul fast float %5346, 2.000000e+00
  %5348 = call float @dx.op.unary.f32(i32 23, float %5347)  ; Log(value)
  %5349 = call float @dx.op.binary.f32(i32 35, float %5348, float %5329)  ; FMax(a,b)
  %5350 = call float @dx.op.unary.f32(i32 22, float %5349)  ; Frc(value)
  %5351 = fadd fast float %5350, 0xBFEA666660000000
  %5352 = fmul fast float %5351, 8.000000e+00
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = call float @dx.op.unary.f32(i32 27, float %5349)  ; Round_ni(value)
  %5355 = fadd fast float %5354, %5353
  %5356 = call float @dx.op.binary.f32(i32 36, float %5355, float %5331)  ; FMin(a,b)
  %5357 = call float @dx.op.unary.f32(i32 27, float %5356)  ; Round_ni(value)
  %5358 = fsub fast float -0.000000e+00, %5357
  %5359 = call float @dx.op.unary.f32(i32 21, float %5358)  ; Exp(value)
  %5360 = fmul fast float %5359, %5333
  %5361 = fmul fast float %5360, %5306
  %5362 = fmul fast float %5360, %5310
  %5363 = fmul fast float %5361, 2.500000e-01
  %5364 = fmul fast float %5362, 2.500000e-01
  %5365 = fadd fast float %5363, 5.000000e-01
  %5366 = fadd fast float %5364, 5.000000e-01
  %5367 = fsub fast float %5331, %5329
  %5368 = fptoui float %5367 to i32
  %5369 = add i32 %5368, 320
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5369)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5373 = fcmp fast une float %5356, %5331
  %5374 = fsub fast float %5306, %5371
  %5375 = fsub fast float %5310, %5372
  %5376 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5377 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5378 = fmul fast float %5376, %5360
  %5379 = fmul fast float %5377, %5360
  %5380 = fcmp fast olt float %5378, 1.000000e+00
  %5381 = fcmp fast olt float %5379, 1.000000e+00
  %5382 = and i1 %5380, %5381
  %5383 = or i1 %5373, %5382
  br i1 %5383, label %5384, label %5681, !dx.controlflow.hints !94

; <label>:5384                                    ; preds = %5322
  %5385 = fmul fast float %5362, 5.000000e-01
  %5386 = fmul fast float %5361, 5.000000e-01
  %5387 = fadd fast float %5385, 5.000000e-01
  %5388 = fadd fast float %5386, 5.000000e-01
  %5389 = sitofp i32 %5328 to float
  %5390 = fsub fast float %5356, %5389
  %5391 = call float @dx.op.unary.f32(i32 27, float %5390)  ; Round_ni(value)
  %5392 = call float @dx.op.unary.f32(i32 22, float %5356)  ; Frc(value)
  %5393 = call float @dx.op.unary.f32(i32 22, float %5388)  ; Frc(value)
  %5394 = call float @dx.op.unary.f32(i32 22, float %5387)  ; Frc(value)
  %5395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5393, float %5394, float %5391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.ResRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.ResRet.f32 %5395, 3
  %5400 = fcmp fast ogt float %5392, 0.000000e+00
  br i1 %5400, label %5401, label %5422, !dx.controlflow.hints !95

; <label>:5401                                    ; preds = %5384
  %5402 = fadd fast float %5391, 1.000000e+00
  %5403 = call float @dx.op.unary.f32(i32 22, float %5365)  ; Frc(value)
  %5404 = call float @dx.op.unary.f32(i32 22, float %5366)  ; Frc(value)
  %5405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5403, float %5404, float %5402, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.ResRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.ResRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.ResRet.f32 %5405, 3
  %5410 = fsub fast float %5406, %5396
  %5411 = fsub fast float %5407, %5397
  %5412 = fsub fast float %5408, %5398
  %5413 = fsub fast float %5409, %5399
  %5414 = fmul fast float %5410, %5392
  %5415 = fmul fast float %5411, %5392
  %5416 = fmul fast float %5412, %5392
  %5417 = fmul fast float %5413, %5392
  %5418 = fadd fast float %5414, %5396
  %5419 = fadd fast float %5415, %5397
  %5420 = fadd fast float %5416, %5398
  %5421 = fadd fast float %5417, %5399
  br label %5422

; <label>:5422                                    ; preds = %5401, %5384
  %5423 = phi float [ %5418, %5401 ], [ %5396, %5384 ]
  %5424 = phi float [ %5419, %5401 ], [ %5397, %5384 ]
  %5425 = phi float [ %5420, %5401 ], [ %5398, %5384 ]
  %5426 = phi float [ %5421, %5401 ], [ %5399, %5384 ]
  %5427 = fadd fast float %5423, -5.000000e-01
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fmul fast float %5427, 0xBFD5555560000000
  %5430 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5428, float %5429)  ; FMad(a,b,c)
  %5431 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5424, float 0.000000e+00)  ; FMad(a,b,c)
  %5432 = fadd fast float %5431, %5426
  %5433 = fmul fast float %5427, -7.500000e-01
  %5434 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5428, float %5433)  ; FMad(a,b,c)
  %5435 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5424, float 0.000000e+00)  ; FMad(a,b,c)
  %5436 = fadd fast float %5435, %5426
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5443 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5444 = fsub fast float %5440, %5430
  %5445 = fsub fast float %5441, %5432
  %5446 = fsub fast float %5442, %5434
  %5447 = fsub fast float %5443, %5436
  %5448 = fmul fast float %5444, %5438
  %5449 = fmul fast float %5445, %5438
  %5450 = fmul fast float %5446, %5438
  %5451 = fmul fast float %5447, %5438
  %5452 = fadd fast float %5448, %5430
  %5453 = fadd fast float %5449, %5432
  %5454 = fadd fast float %5450, %5434
  %5455 = fadd fast float %5451, %5436
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = and i32 %5457, 536870911
  %5459 = uitofp i32 %5458 to float
  %5460 = fmul fast float %5459, %5306
  %5461 = fmul fast float %5459, %5310
  %5462 = fptoui float %5460 to i32
  %5463 = fptoui float %5461 to i32
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = and i32 %5465, 31
  %5467 = lshr i32 %5462, %5466
  %5468 = lshr i32 %5463, %5466
  %5469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = and i32 %5470, 31
  %5472 = shl i32 1, %5471
  %5473 = call i32 @dx.op.binary.i32(i32 40, i32 %5472, i32 4)  ; UMin(a,b)
  %5474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.i32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.i32 %5474, 1
  %5477 = icmp eq i32 %5473, 0
  br i1 %5477, label %5519, label %5478

; <label>:5478                                    ; preds = %5422
  br label %5479

; <label>:5479                                    ; preds = %5507, %5478
  %5480 = phi i32 [ %5510, %5507 ], [ 0, %5478 ]
  %5481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.i32 %5481, 0
  %5483 = lshr i32 %5482, 16
  %5484 = and i32 %5483, 31
  %5485 = shl i32 %5468, %5484
  %5486 = add i32 %5485, %5467
  %5487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.i32 %5487, 0
  %5489 = and i32 %5488, 31
  %5490 = shl i32 %5486, %5489
  %5491 = add i32 %5490, %5480
  %5492 = shl i32 %5491, 2
  %5493 = add i32 %5492, 32
  %5494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.i32 %5494, 0
  %5496 = icmp slt i32 %5495, 0
  %5497 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5480
  %5498 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5480
  %5499 = bitcast float* %5497 to i32*
  %5500 = bitcast float* %5498 to i32*
  br i1 %5496, label %5501, label %5507

; <label>:5501                                    ; preds = %5479
  %5502 = and i32 %5495, 1073741823
  %5503 = add nuw nsw i32 %5502, 20
  %5504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.i32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.i32 %5504, 1
  br label %5507

; <label>:5507                                    ; preds = %5501, %5479
  %5508 = phi i32 [ %5505, %5501 ], [ %5475, %5479 ]
  %5509 = phi i32 [ %5506, %5501 ], [ %5476, %5479 ]
  store i32 %5508, i32* %5499, align 4
  store i32 %5509, i32* %5500, align 4
  %5510 = add nuw i32 %5480, 1
  %5511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.i32 %5511, 2
  %5513 = icmp eq i32 %5512, 0
  %5514 = icmp ugt i32 %5495, -1073741825
  %5515 = and i1 %5514, %5513
  %5516 = icmp ult i32 %5510, %5473
  %5517 = and i1 %5515, %5516
  br i1 %5517, label %5479, label %5518

; <label>:5518                                    ; preds = %5507
  br label %5519

; <label>:5519                                    ; preds = %5518, %5422
  %5520 = phi i32 [ 0, %5422 ], [ %5510, %5518 ]
  %5521 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5522 = fptoui float %5521 to i32
  %5523 = icmp eq i32 %5522, 0
  br i1 %5523, label %5575, label %5524

; <label>:5524                                    ; preds = %5519
  br label %5525

; <label>:5525                                    ; preds = %5570, %5524
  %5526 = phi i32 [ %5571, %5570 ], [ %5520, %5524 ]
  %5527 = phi i32 [ %5572, %5570 ], [ 0, %5524 ]
  %5528 = lshr i32 %5527, 2
  %5529 = and i32 %5527, 3
  %5530 = add nuw nsw i32 %5528, 83
  %5531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5530)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.i32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.i32 %5531, 1
  %5534 = extractvalue %dx.types.CBufRet.i32 %5531, 2
  %5535 = extractvalue %dx.types.CBufRet.i32 %5531, 3
  %5536 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5532, i32* %5536, align 4
  %5537 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5533, i32* %5537, align 4
  %5538 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5534, i32* %5538, align 4
  %5539 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5535, i32* %5539, align 4
  %5540 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5529
  %5541 = load i32, i32* %5540, align 4, !tbaa !96, !noalias !100
  %5542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5543 = extractvalue %dx.types.ResRet.i32 %5542, 0
  %5544 = lshr i32 %5543, 16
  %5545 = and i32 %5544, 31
  %5546 = shl i32 %5468, %5545
  %5547 = add i32 %5546, %5467
  %5548 = shl i32 %5547, 2
  %5549 = add i32 %5548, %5541
  %5550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5549, i32 undef)  ; BufferLoad(srv,index,wot)
  %5551 = extractvalue %dx.types.ResRet.i32 %5550, 0
  %5552 = icmp eq i32 %5551, 0
  br i1 %5552, label %5570, label %5553

; <label>:5553                                    ; preds = %5525
  %5554 = icmp slt i32 %5551, 0
  %5555 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5526
  %5556 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5526
  %5557 = bitcast float* %5555 to i32*
  %5558 = bitcast float* %5556 to i32*
  br i1 %5554, label %5559, label %5566

; <label>:5559                                    ; preds = %5553
  %5560 = and i32 %5551, 1073741823
  %5561 = add i32 %5541, 20
  %5562 = add i32 %5561, %5560
  %5563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5562, i32 undef)  ; BufferLoad(srv,index,wot)
  %5564 = extractvalue %dx.types.ResRet.i32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.i32 %5563, 1
  br label %5566

; <label>:5566                                    ; preds = %5559, %5553
  %5567 = phi i32 [ %5564, %5559 ], [ %5475, %5553 ]
  %5568 = phi i32 [ %5565, %5559 ], [ %5476, %5553 ]
  store i32 %5567, i32* %5557, align 4
  store i32 %5568, i32* %5558, align 4
  %5569 = add i32 %5526, 1
  br label %5570

; <label>:5570                                    ; preds = %5566, %5525
  %5571 = phi i32 [ %5526, %5525 ], [ %5569, %5566 ]
  %5572 = add nuw i32 %5527, 1
  %5573 = icmp eq i32 %5572, %5522
  br i1 %5573, label %5574, label %5525

; <label>:5574                                    ; preds = %5570
  br label %5575

; <label>:5575                                    ; preds = %5574, %5519
  %5576 = phi i32 [ %5520, %5519 ], [ %5571, %5574 ]
  %5577 = icmp eq i32 %5576, 1
  %5578 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5579 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5577, label %5580, label %5583

; <label>:5580                                    ; preds = %5575
  %5581 = load float, float* %5578, align 4
  %5582 = load float, float* %5579, align 4
  br label %5610

; <label>:5583                                    ; preds = %5575
  %5584 = load float, float* %5578, align 4
  %5585 = load float, float* %5579, align 4
  %5586 = fdiv fast float 1.000000e+00, %5585
  %5587 = fsub fast float %5584, %5586
  %5588 = icmp ugt i32 %5576, 1
  br i1 %5588, label %5589, label %5605

; <label>:5589                                    ; preds = %5583
  br label %5590

; <label>:5590                                    ; preds = %5590, %5589
  %5591 = phi float [ %5600, %5590 ], [ %5587, %5589 ]
  %5592 = phi float [ %5601, %5590 ], [ %5584, %5589 ]
  %5593 = phi i32 [ %5602, %5590 ], [ 1, %5589 ]
  %5594 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5593
  %5595 = load float, float* %5594, align 4
  %5596 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5593
  %5597 = load float, float* %5596, align 4
  %5598 = fdiv fast float 1.000000e+00, %5597
  %5599 = fsub fast float %5595, %5598
  %5600 = call float @dx.op.binary.f32(i32 36, float %5591, float %5599)  ; FMin(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5592, float %5595)  ; FMax(a,b)
  %5602 = add nuw i32 %5593, 1
  %5603 = icmp eq i32 %5602, %5576
  br i1 %5603, label %5604, label %5590

; <label>:5604                                    ; preds = %5590
  br label %5605

; <label>:5605                                    ; preds = %5604, %5583
  %5606 = phi float [ %5587, %5583 ], [ %5600, %5604 ]
  %5607 = phi float [ %5584, %5583 ], [ %5601, %5604 ]
  %5608 = fsub fast float %5607, %5606
  %5609 = fdiv fast float 1.000000e+00, %5608
  br label %5610

; <label>:5610                                    ; preds = %5605, %5580
  %5611 = phi float [ %5581, %5580 ], [ %5607, %5605 ]
  %5612 = phi float [ %5582, %5580 ], [ %5609, %5605 ]
  %5613 = fadd fast float %5314, %5611
  %5614 = fmul fast float %5613, %5612
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5615, 2.000000e+00
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fmul fast float %5452, %5452
  %5619 = fsub fast float %5453, %5618
  %5620 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5619)  ; FMax(a,b)
  %5621 = fdiv fast float 1.000000e+00, %5620
  %5622 = fmul fast float %5453, %5452
  %5623 = fsub fast float %5454, %5622
  %5624 = fsub fast float %5617, %5452
  %5625 = fmul fast float %5617, %5617
  %5626 = fsub fast float %5625, %5453
  %5627 = fmul fast float %5621, %5623
  %5628 = fmul fast float %5627, %5624
  %5629 = fsub fast float %5626, %5628
  %5630 = fmul fast float %5453, %5453
  %5631 = fsub fast float %5455, %5630
  %5632 = fmul fast float %5623, %5623
  %5633 = fmul fast float %5632, %5621
  %5634 = fsub fast float %5631, %5633
  %5635 = fdiv fast float %5629, %5634
  %5636 = fmul fast float %5635, %5623
  %5637 = fsub fast float %5624, %5636
  %5638 = fmul fast float %5637, %5621
  %5639 = fmul fast float %5638, %5452
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = fmul fast float %5635, %5453
  %5642 = fsub fast float %5640, %5641
  %5643 = fmul fast float %5638, %5638
  %5644 = fmul fast float %5635, 4.000000e+00
  %5645 = fmul fast float %5644, %5642
  %5646 = fsub fast float %5643, %5645
  %5647 = call float @dx.op.unary.f32(i32 24, float %5646)  ; Sqrt(value)
  %5648 = fcmp fast oge float %5638, 0.000000e+00
  %5649 = fsub fast float -0.000000e+00, %5647
  %5650 = select i1 %5648, float %5649, float %5647
  %5651 = fsub fast float %5650, %5638
  %5652 = fdiv fast float %5651, %5635
  %5653 = fdiv fast float %5642, %5651
  %5654 = fmul fast float %5652, 5.000000e-01
  %5655 = fmul fast float %5653, 2.000000e+00
  %5656 = select i1 %5648, float %5654, float %5655
  %5657 = select i1 %5648, float %5655, float %5654
  %5658 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5659 = call float @dx.op.binary.f32(i32 36, float %5656, float %5657)  ; FMin(a,b)
  %5660 = fcmp fast ogt float %5617, %5658
  %5661 = fsub fast float %5617, %5659
  %5662 = fsub fast float %5617, %5658
  %5663 = fsub fast float %5658, %5659
  %5664 = select i1 %5660, float %5662, float %5663
  %5665 = fmul float %5661, %5664
  %5666 = select i1 %5660, float %5659, float %5617
  %5667 = fcmp fast ogt float %5617, %5659
  %5668 = fmul fast float %5666, %5658
  %5669 = fadd fast float %5666, %5658
  %5670 = fmul fast float %5669, %5452
  %5671 = fadd fast float %5668, %5453
  %5672 = fsub fast float %5671, %5670
  %5673 = fdiv fast float %5672, %5665
  %5674 = select i1 %5667, float %5673, float 0.000000e+00
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = select i1 %5660, float %5675, float %5674
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5679 = fmul fast float %5678, %5677
  %5680 = fsub fast float 1.000000e+00, %5679
  br label %5681

; <label>:5681                                    ; preds = %5610, %5322, %5287, %5283, %5249
  %5682 = phi float [ 1.000000e+00, %5249 ], [ %5680, %5610 ], [ 1.000000e+00, %5287 ], [ 1.000000e+00, %5322 ], [ 1.000000e+00, %5283 ]
  %5683 = fcmp fast ogt float %5279, 0.000000e+00
  br i1 %5683, label %5684, label %5690, !dx.controlflow.hints !109

; <label>:5684                                    ; preds = %5681
  %5685 = fadd fast float %5192, %5166
  %5686 = call float @dx.op.binary.f32(i32 35, float %5685, float 0.000000e+00)  ; FMax(a,b)
  %5687 = fadd fast float %5686, 0x3F10000000000000
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5181, float %5182, float undef, float undef, i32 0, i32 0, i32 undef, float %5687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  br label %5690

; <label>:5690                                    ; preds = %5684, %5681
  %5691 = phi float [ %5689, %5684 ], [ 1.000000e+00, %5681 ]
  %5692 = fcmp fast ogt float %5277, 0.000000e+00
  br i1 %5692, label %5693, label %5699, !dx.controlflow.hints !110

; <label>:5693                                    ; preds = %5690
  %5694 = fadd fast float %5222, %5166
  %5695 = call float @dx.op.binary.f32(i32 35, float %5694, float 0.000000e+00)  ; FMax(a,b)
  %5696 = fadd fast float %5695, 0x3F10000000000000
  %5697 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5173, float %5174, float undef, float undef, i32 0, i32 0, i32 undef, float %5696)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  br label %5699

; <label>:5699                                    ; preds = %5693, %5690
  %5700 = phi float [ %5698, %5693 ], [ 1.000000e+00, %5690 ]
  %5701 = fcmp fast ogt float %5276, 0.000000e+00
  br i1 %5701, label %5702, label %5709, !dx.controlflow.hints !111

; <label>:5702                                    ; preds = %5699
  %5703 = extractvalue %dx.types.CBufRet.f32 %5191, 0
  %5704 = fadd fast float %5703, %5166
  %5705 = call float @dx.op.binary.f32(i32 35, float %5704, float 0.000000e+00)  ; FMax(a,b)
  %5706 = fadd fast float %5705, 0x3F10000000000000
  %5707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5158, float %5162, float undef, float undef, i32 0, i32 0, i32 undef, float %5706)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 0
  br label %5709

; <label>:5709                                    ; preds = %5702, %5699
  %5710 = phi float [ %5708, %5702 ], [ 1.000000e+00, %5699 ]
  %5711 = fsub fast float %5691, %5682
  %5712 = fmul fast float %5711, %5220
  %5713 = fadd fast float %5712, %5682
  %5714 = fsub fast float %5700, %5713
  %5715 = fmul fast float %5714, %5250
  %5716 = fadd fast float %5715, %5713
  %5717 = fsub fast float %5710, %5716
  %5718 = fmul fast float %5717, %5276
  %5719 = fadd fast float %5718, %5716
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 2
  %5722 = fcmp fast ogt float %5721, 0.000000e+00
  br i1 %5722, label %5723, label %5763, !dx.controlflow.hints !112

; <label>:5723                                    ; preds = %5709
  %5724 = fcmp fast ugt float %5721, 0.000000e+00
  br i1 %5724, label %5725, label %5760

; <label>:5725                                    ; preds = %5723
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 1
  %5729 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5730 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5735 = extractvalue %dx.types.CBufRet.f32 %5731, 3
  %5736 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5720, 1
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = fadd fast float %5739, %5135
  %5743 = fadd fast float %5740, %5136
  %5744 = fadd fast float %5741, %5137
  %5745 = fmul fast float %5742, %5727
  %5746 = call float @dx.op.tertiary.f32(i32 46, float %5728, float %5743, float %5745)  ; FMad(a,b,c)
  %5747 = call float @dx.op.tertiary.f32(i32 46, float %5729, float %5744, float %5746)  ; FMad(a,b,c)
  %5748 = fadd fast float %5747, %5730
  %5749 = fmul fast float %5742, %5732
  %5750 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5743, float %5749)  ; FMad(a,b,c)
  %5751 = call float @dx.op.tertiary.f32(i32 46, float %5734, float %5744, float %5750)  ; FMad(a,b,c)
  %5752 = fadd fast float %5751, %5735
  %5753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5748, float %5752, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5754 = extractvalue %dx.types.ResRet.f32 %5753, 0
  %5755 = fmul fast float %5754, %5737
  %5756 = fadd fast float %5755, %5736
  %5757 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5758 = fmul fast float %5757, %5721
  %5759 = fsub fast float 1.000000e+00, %5758
  br label %5760

; <label>:5760                                    ; preds = %5725, %5723
  %5761 = phi float [ %5759, %5725 ], [ 1.000000e+00, %5723 ]
  %5762 = fmul fast float %5761, %5719
  br label %5763

; <label>:5763                                    ; preds = %5760, %5709, %5115
  %5764 = phi float [ 1.000000e+00, %5115 ], [ %5762, %5760 ], [ %5719, %5709 ]
  %5765 = call float @dx.op.binary.f32(i32 36, float %5764, float %5764)  ; FMin(a,b)
  %5766 = call float @dx.op.binary.f32(i32 36, float %5764, float %5765)  ; FMin(a,b)
  %5767 = fcmp fast ogt float %5766, 0.000000e+00
  br i1 %5767, label %5768, label %5928, !dx.controlflow.hints !113

; <label>:5768                                    ; preds = %5763
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = fmul fast float %5770, %5135
  %5785 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5771, float %5784)  ; FMad(a,b,c)
  %5786 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5772, float %5785)  ; FMad(a,b,c)
  %5787 = fadd fast float %5786, %5773
  %5788 = fmul fast float %5775, %5135
  %5789 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5776, float %5788)  ; FMad(a,b,c)
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5777, float %5789)  ; FMad(a,b,c)
  %5791 = fadd fast float %5790, %5778
  %5792 = fmul fast float %5780, %5135
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5136, float %5781, float %5792)  ; FMad(a,b,c)
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5137, float %5782, float %5793)  ; FMad(a,b,c)
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5799 = fmul fast float %5798, %5787
  %5800 = fmul fast float %5798, %5791
  %5801 = fadd fast float %5799, %5796
  %5802 = fadd fast float %5800, %5797
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = fsub fast float %5801, %5804
  %5807 = fsub fast float %5802, %5805
  %5808 = fcmp fast olt float %5806, 0.000000e+00
  %5809 = fcmp fast olt float %5807, 0.000000e+00
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %5814 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5815 = select i1 %5808, float %5811, float %5813
  %5816 = select i1 %5809, float %5812, float %5814
  %5817 = fmul fast float %5815, %5806
  %5818 = fmul fast float %5816, %5807
  %5819 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %5820 = call float @dx.op.unary.f32(i32 6, float %5818)  ; FAbs(value)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5822 = call float @dx.op.binary.f32(i32 35, float %5819, float %5820)  ; FMax(a,b)
  %5823 = fsub fast float %5821, %5822
  %5824 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5825 = fcmp fast ogt float %5824, 0.000000e+00
  br i1 %5825, label %5826, label %5867, !dx.controlflow.hints !114

; <label>:5826                                    ; preds = %5768
  %5827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5801, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5828 = extractvalue %dx.types.ResRet.f32 %5827, 1
  %5829 = fcmp fast ogt float %5828, 0.000000e+00
  br i1 %5829, label %5830, label %5862

; <label>:5830                                    ; preds = %5826
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5801, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = fsub fast float 1.000000e+00, %5783
  %5837 = fsub fast float %5836, %5794
  %5838 = fmul fast float %5837, 0x400921FB60000000
  %5839 = fadd fast float %5838, 0x3FF921FB60000000
  %5840 = call float @dx.op.unary.f32(i32 13, float %5839)  ; Sin(value)
  %5841 = fadd fast float %5840, -1.000000e+00
  %5842 = fmul fast float %5841, 0x3FD45F3060000000
  %5843 = fmul fast float %5837, 0x401921FB60000000
  %5844 = fadd fast float %5843, 0x400921FB60000000
  %5845 = call float @dx.op.unary.f32(i32 13, float %5844)  ; Sin(value)
  %5846 = fadd fast float %5845, 0x3E7777A5C0000000
  %5847 = fmul fast float %5846, 0x3FC45F3060000000
  %5848 = fmul fast float %5837, 0x4022D97C80000000
  %5849 = fadd fast float %5848, 0x4012D97C80000000
  %5850 = call float @dx.op.unary.f32(i32 13, float %5849)  ; Sin(value)
  %5851 = fadd fast float %5850, 1.000000e+00
  %5852 = fmul fast float %5851, 0x3FBB2995E0000000
  %5853 = fmul fast float %5837, 0x402921FB60000000
  %5854 = fadd fast float %5853, 0x401921FB60000000
  %5855 = call float @dx.op.unary.f32(i32 13, float %5854)  ; Sin(value)
  %5856 = fadd fast float %5855, 0xBE8777A5C0000000
  %5857 = fmul fast float %5856, 0x3FB45F3060000000
  %5858 = call float @dx.op.dot4.f32(i32 56, float %5832, float %5833, float %5834, float %5835, float %5842, float %5847, float %5852, float %5857)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5859 = fmul fast float %5858, 0xBFF7154760000000
  %5860 = call float @dx.op.unary.f32(i32 21, float %5859)  ; Exp(value)
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  br label %5862

; <label>:5862                                    ; preds = %5830, %5826
  %5863 = phi float [ %5861, %5830 ], [ 1.000000e+00, %5826 ]
  %5864 = fadd fast float %5863, -1.000000e+00
  %5865 = fmul fast float %5864, %5824
  %5866 = fadd fast float %5865, 1.000000e+00
  br label %5867

; <label>:5867                                    ; preds = %5862, %5768
  %5868 = phi float [ %5866, %5862 ], [ 1.000000e+00, %5768 ]
  %5869 = fmul fast float %5868, %5764
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5874 = fadd fast float %5871, %158
  %5875 = fadd fast float %5872, %159
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5878 = fsub fast float -0.000000e+00, %5874
  %5879 = fsub fast float -0.000000e+00, %5875
  %5880 = fsub fast float %4899, %5873
  %5881 = fadd fast float %5880, %5877
  %5882 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5878, float %5879, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5116, float %5117, float %5118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = fdiv fast float 1.000000e+00, %5883
  %5885 = fmul fast float %5884, %5882
  %5886 = fmul fast float %5116, %5885
  %5887 = fmul fast float %5117, %5885
  %5888 = fadd fast float %5886, %5874
  %5889 = fadd fast float %5887, %5875
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = fsub fast float %5888, %5891
  %5894 = fsub fast float %5889, %5892
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5897 = extractvalue %dx.types.CBufRet.f32 %5895, 3
  %5898 = fmul fast float %5893, %5896
  %5899 = fmul fast float %5894, %5897
  %5900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.i32 %5900, 3
  %5902 = icmp eq i32 %5901, 0
  br i1 %5902, label %5908, label %5903

; <label>:5903                                    ; preds = %5867
  %5904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5898, float %5899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5904, 2
  br label %5913

; <label>:5908                                    ; preds = %5867
  %5909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5898, float %5899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  br label %5913

; <label>:5913                                    ; preds = %5908, %5903
  %5914 = phi float [ %5905, %5903 ], [ %5910, %5908 ]
  %5915 = phi float [ %5906, %5903 ], [ %5911, %5908 ]
  %5916 = phi float [ %5907, %5903 ], [ %5912, %5908 ]
  %5917 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5918 = fmul fast float %5917, %5914
  %5919 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5920 = fsub fast float %5885, %5919
  %5921 = fsub fast float %5920, %5918
  %5922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5921)  ; FMax(a,b)
  %5923 = fmul fast float %5922, %5915
  %5924 = call float @dx.op.binary.f32(i32 36, float %5916, float %5923)  ; FMin(a,b)
  %5925 = fmul fast float %5924, 0xBFF7154760000000
  %5926 = call float @dx.op.unary.f32(i32 21, float %5925)  ; Exp(value)
  %5927 = fmul fast float %5869, %5926
  br label %5928

; <label>:5928                                    ; preds = %5913, %5763
  %5929 = phi float [ %5927, %5913 ], [ %5764, %5763 ]
  %5930 = call float @dx.op.binary.f32(i32 36, float %5929, float %5929)  ; FMin(a,b)
  %5931 = call float @dx.op.binary.f32(i32 36, float %5929, float %5930)  ; FMin(a,b)
  %5932 = fcmp fast ogt float %5931, 0.000000e+00
  br i1 %5932, label %5933, label %6184, !dx.controlflow.hints !115

; <label>:5933                                    ; preds = %5928
  %5934 = fmul fast float %5929, %5127
  %5935 = fmul fast float %5929, %5128
  %5936 = fmul fast float %5929, %5129
  %5937 = fsub fast float %160, %4705
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  %5939 = fmul fast float %5116, 5.120000e+02
  %5940 = fmul fast float %5117, 5.120000e+02
  %5941 = fmul fast float %5118, 5.120000e+02
  %5942 = fadd fast float %5941, %160
  %5943 = fsub fast float %4705, %5942
  %5944 = fmul fast float %5943, 2.000000e+00
  %5945 = fadd fast float %5944, %5942
  %5946 = select i1 %5938, float %5945, float %5942
  %5947 = fsub fast float %5946, %160
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5947, float %5939, float %5940, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 25, float %5948)  ; Rsqrt(value)
  %5950 = fmul fast float %5949, %5939
  %5951 = fmul fast float %5949, %5940
  %5952 = fmul fast float %5949, %5947
  %5953 = fsub fast float %4705, %160
  %5954 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5953)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fdiv fast float 1.000000e+00, %5955
  %5957 = fmul fast float %5956, %5954
  %5958 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5937, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = fcmp fast ogt float %5958, 0.000000e+00
  %5960 = fcmp fast olt float %5958, 0.000000e+00
  %5961 = zext i1 %5959 to i32
  %5962 = zext i1 %5960 to i32
  %5963 = sub nsw i32 %5961, %5962
  %5964 = sitofp i32 %5963 to float
  %5965 = fsub fast float %5946, %4705
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = fcmp fast ogt float %5966, 0.000000e+00
  %5968 = fcmp fast olt float %5966, 0.000000e+00
  %5969 = zext i1 %5967 to i32
  %5970 = zext i1 %5968 to i32
  %5971 = sub nsw i32 %5969, %5970
  %5972 = sitofp i32 %5971 to float
  %5973 = fcmp fast une float %5964, %5972
  br i1 %5973, label %5974, label %5984

; <label>:5974                                    ; preds = %5933
  %5975 = fmul fast float %5957, %5952
  %5976 = fmul fast float %5957, %5951
  %5977 = fmul fast float %5957, %5950
  %5978 = fmul fast float %5977, %5977
  %5979 = fmul fast float %5976, %5976
  %5980 = fadd fast float %5978, %5979
  %5981 = fmul fast float %5975, %5975
  %5982 = fadd fast float %5980, %5981
  %5983 = call float @dx.op.unary.f32(i32 24, float %5982)  ; Sqrt(value)
  br label %5994

; <label>:5984                                    ; preds = %5933
  %5985 = icmp slt i32 %5963, 0
  br i1 %5985, label %5986, label %5994

; <label>:5986                                    ; preds = %5984
  %5987 = fsub fast float %160, %5946
  %5988 = fmul fast float %5939, %5939
  %5989 = fmul fast float %5940, %5940
  %5990 = fadd fast float %5988, %5989
  %5991 = fmul fast float %5987, %5987
  %5992 = fadd fast float %5990, %5991
  %5993 = call float @dx.op.unary.f32(i32 24, float %5992)  ; Sqrt(value)
  br label %5994

; <label>:5994                                    ; preds = %5986, %5984, %5974
  %5995 = phi float [ %5983, %5974 ], [ %5993, %5986 ], [ 0.000000e+00, %5984 ]
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = select i1 %5938, float -0.000000e+00, float %5996
  %5998 = fmul fast float %4706, 0x3FF7154760000000
  %5999 = fmul fast float %5998, %5997
  %6000 = fmul fast float %4707, 0x3FF7154760000000
  %6001 = fmul fast float %6000, %5997
  %6002 = fmul fast float %4708, 0x3FF7154760000000
  %6003 = fmul fast float %6002, %5997
  %6004 = call float @dx.op.unary.f32(i32 21, float %5999)  ; Exp(value)
  %6005 = call float @dx.op.unary.f32(i32 21, float %6001)  ; Exp(value)
  %6006 = call float @dx.op.unary.f32(i32 21, float %6003)  ; Exp(value)
  %6007 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6008 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6009 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6010 = fmul fast float %5934, %6007
  %6011 = fmul fast float %5935, %6008
  %6012 = fmul fast float %5936, %6009
  %6013 = fsub fast float %5116, %178
  %6014 = fsub fast float %5117, %179
  %6015 = fsub fast float %5118, %180
  %6016 = call float @dx.op.dot3.f32(i32 55, float %6013, float %6014, float %6015, float %6013, float %6014, float %6015)  ; Dot3(ax,ay,az,bx,by,bz)
  %6017 = call float @dx.op.unary.f32(i32 25, float %6016)  ; Rsqrt(value)
  %6018 = fmul fast float %6017, %6013
  %6019 = fmul fast float %6017, %6014
  %6020 = fmul fast float %6017, %6015
  %6021 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6024 = fmul fast float %6023, %6023
  %6025 = fmul fast float %6024, %4915
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = fmul fast float %6026, %6023
  %6028 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = fmul fast float %6028, %6028
  %6030 = call float @dx.op.unary.f32(i32 6, float %6021)  ; FAbs(value)
  %6031 = fsub fast float 1.000000e+00, %4897
  %6032 = call float @dx.op.binary.f32(i32 35, float %6031, float 0x3F847AE140000000)  ; FMax(a,b)
  %6033 = fmul fast float %6032, %6032
  %6034 = fmul fast float %6033, %6033
  %6035 = fsub fast float 1.000000e+00, %6034
  %6036 = fmul fast float %4902, %4902
  %6037 = fmul fast float %6036, %6035
  %6038 = fadd fast float %6037, %6034
  %6039 = bitcast float %6038 to i32
  %6040 = ashr i32 %6039, 1
  %6041 = add nsw i32 %6040, 532487669
  %6042 = bitcast i32 %6041 to float
  %6043 = fadd fast float %6042, %4902
  %6044 = fmul fast float %6034, %6029
  %6045 = fsub fast float 1.000000e+00, %6029
  %6046 = fadd fast float %6045, %6044
  %6047 = fmul fast float %6030, %6030
  %6048 = fmul fast float %6047, %6035
  %6049 = fadd fast float %6048, %6034
  %6050 = bitcast float %6049 to i32
  %6051 = ashr i32 %6050, 1
  %6052 = add nsw i32 %6051, 532487669
  %6053 = bitcast i32 %6052 to float
  %6054 = fadd fast float %6053, %6030
  %6055 = fmul fast float %6046, %6046
  %6056 = fmul fast float %6055, %6043
  %6057 = fmul fast float %6056, %6054
  %6058 = fdiv fast float 0x3FF0A00000000000, %6057
  %6059 = fmul fast float %6058, %6034
  %6060 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = bitcast float %6061 to i32
  %6063 = sitofp i32 %6062 to float
  %6064 = fmul fast float %6063, 5.000000e+00
  %6065 = fadd fast float %6064, 0xC1EFBF8940000000
  %6066 = fptosi float %6065 to i32
  %6067 = bitcast i32 %6066 to float
  %6068 = fsub fast float 1.000000e+00, %4891
  %6069 = fsub fast float 1.000000e+00, %4892
  %6070 = fsub fast float 1.000000e+00, %4900
  %6071 = fmul fast float %6067, %6068
  %6072 = fmul fast float %6067, %6069
  %6073 = fmul fast float %6067, %6070
  %6074 = fadd fast float %6071, %4891
  %6075 = fadd fast float %6072, %4892
  %6076 = fadd fast float %6073, %4900
  br i1 %5027, label %6077, label %6100

; <label>:6077                                    ; preds = %5994
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4282, float %6060, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = fadd fast float %6079, -5.000000e-01
  %6083 = fadd fast float %6080, -5.000000e-01
  %6084 = fadd fast float %6081, -5.000000e-01
  %6085 = fmul fast float %4891, 4.000000e+00
  %6086 = fmul fast float %6085, %6068
  %6087 = fmul fast float %6086, %6082
  %6088 = fmul fast float %4892, 4.000000e+00
  %6089 = fmul fast float %6088, %6069
  %6090 = fmul fast float %6089, %6083
  %6091 = fmul fast float %4900, 4.000000e+00
  %6092 = fmul fast float %6091, %6070
  %6093 = fmul fast float %6092, %6084
  %6094 = fadd fast float %6087, %6074
  %6095 = fadd fast float %6090, %6075
  %6096 = fadd fast float %6093, %6076
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6099 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  br label %6100

; <label>:6100                                    ; preds = %6077, %5994
  %6101 = phi float [ %6097, %6077 ], [ %6074, %5994 ]
  %6102 = phi float [ %6098, %6077 ], [ %6075, %5994 ]
  %6103 = phi float [ %6099, %6077 ], [ %6076, %5994 ]
  %6104 = fmul fast float %6021, 9.843750e-01
  %6105 = fadd fast float %6104, 7.812500e-03
  %6106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6105, float %5017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 2
  %6108 = extractvalue %dx.types.ResRet.f32 %6106, 3
  %6109 = fmul fast float %6107, %4891
  %6110 = fmul fast float %6107, %4892
  %6111 = fmul fast float %6107, %4900
  %6112 = fadd fast float %6109, %6108
  %6113 = fadd fast float %6110, %6108
  %6114 = fadd fast float %6111, %6108
  br i1 %5027, label %6115, label %6138

; <label>:6115                                    ; preds = %6100
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4282, float %6021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = fadd fast float %6117, -5.000000e-01
  %6121 = fadd fast float %6118, -5.000000e-01
  %6122 = fadd fast float %6119, -5.000000e-01
  %6123 = fmul fast float %4891, 4.000000e+00
  %6124 = fmul fast float %6123, %6068
  %6125 = fmul fast float %6124, %6120
  %6126 = fmul fast float %4892, 4.000000e+00
  %6127 = fmul fast float %6126, %6069
  %6128 = fmul fast float %6127, %6121
  %6129 = fmul fast float %4900, 4.000000e+00
  %6130 = fmul fast float %6129, %6070
  %6131 = fmul fast float %6130, %6122
  %6132 = fadd fast float %6125, %6112
  %6133 = fadd fast float %6128, %6113
  %6134 = fadd fast float %6131, %6114
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6136 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6137 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  br label %6138

; <label>:6138                                    ; preds = %6115, %6100
  %6139 = phi float [ %6135, %6115 ], [ %6112, %6100 ]
  %6140 = phi float [ %6136, %6115 ], [ %6113, %6100 ]
  %6141 = phi float [ %6137, %6115 ], [ %6114, %6100 ]
  %6142 = call float @dx.op.binary.f32(i32 35, float %6140, float %6141)  ; FMax(a,b)
  %6143 = call float @dx.op.binary.f32(i32 35, float %6139, float %6142)  ; FMax(a,b)
  %6144 = fsub fast float 1.000000e+00, %6143
  %6145 = fmul fast float %6101, %6059
  %6146 = fmul fast float %6102, %6059
  %6147 = fmul fast float %6103, %6059
  %6148 = fsub fast float 1.000000e+00, %6022
  %6149 = bitcast float %6148 to i32
  %6150 = sitofp i32 %6149 to float
  %6151 = fmul fast float %6150, 5.000000e+00
  %6152 = fadd fast float %6151, 0xC1EFBF8940000000
  %6153 = fptosi float %6152 to i32
  %6154 = bitcast i32 %6153 to float
  %6155 = fmul fast float %6154, %4283
  %6156 = fmul fast float %6144, %6155
  %6157 = fmul fast float %6156, %5077
  %6158 = fmul fast float %6156, %5078
  %6159 = fmul fast float %6156, %5079
  %6160 = fadd fast float %6157, %6145
  %6161 = fadd fast float %6158, %6146
  %6162 = fadd fast float %6159, %6147
  %6163 = fmul fast float %6027, %6010
  %6164 = fmul fast float %6163, %6144
  %6165 = fmul fast float %6027, %6011
  %6166 = fmul fast float %6165, %6144
  %6167 = fmul fast float %6027, %6012
  %6168 = fmul fast float %6167, %6144
  %6169 = fmul fast float %6163, %6160
  %6170 = fmul fast float %6165, %6161
  %6171 = fmul fast float %6167, %6162
  %6172 = fadd fast float %6164, %5061
  %6173 = fmul fast float %6172, %4308
  %6174 = fadd fast float %6166, %5062
  %6175 = fmul fast float %6174, %4308
  %6176 = fadd fast float %6168, %5063
  %6177 = fmul fast float %6176, %4308
  %6178 = fadd fast float %6169, %5104
  %6179 = fmul fast float %6178, %4308
  %6180 = fadd fast float %6170, %5107
  %6181 = fmul fast float %6180, %4308
  %6182 = fadd fast float %6171, %5110
  %6183 = fmul fast float %6182, %4308
  br label %6184

; <label>:6184                                    ; preds = %6138, %5928, %5054
  %6185 = phi float [ %5105, %5054 ], [ %5105, %5928 ], [ %6179, %6138 ]
  %6186 = phi float [ %5108, %5054 ], [ %5108, %5928 ], [ %6181, %6138 ]
  %6187 = phi float [ %5111, %5054 ], [ %5111, %5928 ], [ %6183, %6138 ]
  %6188 = phi float [ %5100, %5054 ], [ %5100, %5928 ], [ %6173, %6138 ]
  %6189 = phi float [ %5101, %5054 ], [ %5101, %5928 ], [ %6175, %6138 ]
  %6190 = phi float [ %5102, %5054 ], [ %5102, %5928 ], [ %6177, %6138 ]
  %6191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.i32 %6191, 0
  %6193 = icmp eq i32 %6192, 0
  br i1 %6193, label %6814, label %6194

; <label>:6194                                    ; preds = %6184
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6198 = fmul fast float %6196, %95
  %6199 = fmul fast float %6197, %96
  %6200 = fptoui float %6198 to i32
  %6201 = fptoui float %6199 to i32
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6206 = fadd fast float %86, -4.000000e+00
  %6207 = call float @dx.op.binary.f32(i32 35, float %6206, float 0.000000e+00)  ; FMax(a,b)
  %6208 = fadd fast float %6207, %6203
  %6209 = fmul fast float %6208, %6204
  %6210 = call float @dx.op.unary.f32(i32 23, float %6209)  ; Log(value)
  %6211 = fmul fast float %6210, %6205
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6214 = fmul fast float %6211, %6213
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.i32 %6216, 1
  %6218 = add i32 %6217, -1
  %6219 = uitofp i32 %6217 to float
  %6220 = fmul fast float %6219, %6215
  %6221 = fptoui float %6220 to i32
  %6222 = call i32 @dx.op.binary.i32(i32 40, i32 %6221, i32 %6218)  ; UMin(a,b)
  %6223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.i32 %6223, 2
  %6225 = extractvalue %dx.types.CBufRet.i32 %6223, 3
  %6226 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6201, i32 %6224, i32 %6200)  ; UMad(a,b,c)
  %6227 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6222, i32 %6225, i32 %6226)  ; UMad(a,b,c)
  %6228 = add nsw i32 %6192, -1
  %6229 = call i32 @dx.op.binary.i32(i32 37, i32 %6228, i32 0)  ; IMax(a,b)
  %6230 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6231 = fptoui float %6230 to i32
  %6232 = lshr i32 %6231, 5
  %6233 = call i32 @dx.op.binary.i32(i32 40, i32 %6232, i32 8191)  ; UMin(a,b)
  %6234 = shl i32 %6233, 2
  %6235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6234, i32 undef)  ; BufferLoad(srv,index,wot)
  %6236 = extractvalue %dx.types.ResRet.i32 %6235, 0
  %6237 = lshr i32 %6236, 16
  %6238 = and i32 %6236, 65535
  %6239 = lshr i32 %6236, 21
  %6240 = lshr i32 %6238, 5
  %6241 = call i32 @dx.op.binary.i32(i32 40, i32 %6240, i32 %6229)  ; UMin(a,b)
  %6242 = icmp ugt i32 %6239, %6241
  br i1 %6242, label %6814, label %6243

; <label>:6243                                    ; preds = %6194
  br label %6244

; <label>:6244                                    ; preds = %6804, %6243
  %6245 = phi i32 [ %6811, %6804 ], [ %6239, %6243 ]
  %6246 = phi float [ %6805, %6804 ], [ %6185, %6243 ]
  %6247 = phi float [ %6806, %6804 ], [ %6186, %6243 ]
  %6248 = phi float [ %6807, %6804 ], [ %6187, %6243 ]
  %6249 = phi float [ %6808, %6804 ], [ %6188, %6243 ]
  %6250 = phi float [ %6809, %6804 ], [ %6189, %6243 ]
  %6251 = phi float [ %6810, %6804 ], [ %6190, %6243 ]
  %6252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.i32 %6252, 0
  %6254 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6227, i32 %6253, i32 %6245)  ; UMad(a,b,c)
  %6255 = shl i32 %6254, 2
  %6256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.i32 %6256, 0
  %6258 = shl i32 %6245, 5
  %6259 = sub nsw i32 %6237, %6258
  %6260 = call i32 @dx.op.binary.i32(i32 37, i32 %6259, i32 0)  ; IMax(a,b)
  %6261 = call i32 @dx.op.binary.i32(i32 38, i32 %6260, i32 31)  ; IMin(a,b)
  %6262 = sub nsw i32 1, %6237
  %6263 = add nsw i32 %6262, %6238
  %6264 = call i32 @dx.op.binary.i32(i32 37, i32 %6263, i32 0)  ; IMax(a,b)
  %6265 = call i32 @dx.op.binary.i32(i32 38, i32 %6264, i32 32)  ; IMin(a,b)
  %6266 = and i32 %6265, 31
  %6267 = shl i32 -1, %6266
  %6268 = xor i32 %6267, -1
  %6269 = and i32 %6261, 31
  %6270 = shl i32 %6268, %6269
  %6271 = icmp eq i32 %6265, 32
  %6272 = select i1 %6271, i32 -1, i32 %6270
  %6273 = and i32 %6272, %6257
  %6274 = icmp eq i32 %6273, 0
  br i1 %6274, label %6804, label %6275

; <label>:6275                                    ; preds = %6244
  br label %6276

; <label>:6276                                    ; preds = %6410, %6275
  %6277 = phi i32 [ %6288, %6410 ], [ %6273, %6275 ]
  %6278 = phi float [ %6411, %6410 ], [ %6246, %6275 ]
  %6279 = phi float [ %6412, %6410 ], [ %6247, %6275 ]
  %6280 = phi float [ %6413, %6410 ], [ %6248, %6275 ]
  %6281 = phi float [ %6414, %6410 ], [ %6249, %6275 ]
  %6282 = phi float [ %6415, %6410 ], [ %6250, %6275 ]
  %6283 = phi float [ %6416, %6410 ], [ %6251, %6275 ]
  %6284 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6277)  ; FirstbitLo(value)
  %6285 = add i32 %6284, %6258
  %6286 = and i32 %6284, 31
  %6287 = shl i32 1, %6286
  %6288 = xor i32 %6287, %6277
  %6289 = mul i32 %6285, 112
  %6290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.ResRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.ResRet.f32 %6290, 2
  %6294 = or i32 %6289, 12
  %6295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6294, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.f32 %6295, 0
  %6297 = add i32 %6289, 16
  %6298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = add i32 %6289, 28
  %6303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6302, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.i32 %6303, 0
  %6305 = add i32 %6289, 44
  %6306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6305, i32 undef)  ; BufferLoad(srv,index,wot)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 0
  %6308 = add i32 %6289, 48
  %6309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.ResRet.f32 %6309, 2
  %6313 = extractvalue %dx.types.ResRet.f32 %6309, 3
  %6314 = add i32 %6289, 64
  %6315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6314, i32 undef)  ; BufferLoad(srv,index,wot)
  %6316 = extractvalue %dx.types.ResRet.f32 %6315, 0
  %6317 = extractvalue %dx.types.ResRet.f32 %6315, 1
  %6318 = extractvalue %dx.types.ResRet.f32 %6315, 2
  %6319 = extractvalue %dx.types.ResRet.f32 %6315, 3
  %6320 = add i32 %6289, 80
  %6321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6320, i32 undef)  ; BufferLoad(srv,index,wot)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 2
  %6324 = add i32 %6289, 92
  %6325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6324, i32 undef)  ; BufferLoad(srv,index,wot)
  %6326 = extractvalue %dx.types.ResRet.i32 %6325, 0
  %6327 = call float @dx.op.dot3.f32(i32 55, float %6291, float %6292, float %6293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = select i1 %252, float %6322, float %6291
  %6329 = select i1 %252, float %6327, float %6292
  %6330 = select i1 %252, float %6323, float %6293
  %6331 = and i32 %6326, 65535
  %6332 = uitofp i32 %6331 to float
  %6333 = lshr i32 %6326, 16
  %6334 = uitofp i32 %6333 to float
  %6335 = and i32 %6304, 65535
  %6336 = and i32 %6304, 50331648
  %6337 = icmp eq i32 %6336, 33554432
  %6338 = fsub fast float %6310, %158
  %6339 = fsub fast float %6311, %159
  %6340 = fsub fast float %6312, %160
  %6341 = call float @dx.op.dot3.f32(i32 55, float %6338, float %6339, float %6340, float %6338, float %6339, float %6340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6342 = call float @dx.op.unary.f32(i32 24, float %6341)  ; Sqrt(value)
  %6343 = fdiv fast float 1.000000e+00, %6342
  %6344 = fmul fast float %6343, %6338
  %6345 = fmul fast float %6343, %6339
  %6346 = fmul fast float %6343, %6340
  %6347 = fadd fast float %6342, %6296
  %6348 = fdiv fast float 1.000000e+00, %6347
  %6349 = fmul float %6307, %6348
  %6350 = fmul float %6349, %6349
  %6351 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  br i1 %6337, label %6352, label %6373

; <label>:6352                                    ; preds = %6276
  %6353 = fmul fast float %6318, %6299
  %6354 = fmul fast float %6318, %6300
  %6355 = fmul fast float %6318, %6301
  %6356 = fadd fast float %6338, %6353
  %6357 = fadd fast float %6339, %6354
  %6358 = fadd fast float %6340, %6355
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6356, float %6357, float %6358, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = call float @dx.op.unary.f32(i32 25, float %6359)  ; Rsqrt(value)
  %6361 = fmul fast float %6360, %6356
  %6362 = fmul fast float %6360, %6357
  %6363 = fmul fast float %6360, %6358
  %6364 = fsub fast float %158, %6310
  %6365 = fsub fast float %159, %6311
  %6366 = fsub fast float %160, %6312
  %6367 = fsub fast float -0.000000e+00, %6364
  %6368 = fsub fast float -0.000000e+00, %6365
  %6369 = fsub fast float -0.000000e+00, %6366
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6367, float %6368, float %6369, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = fcmp fast ogt float %6370, 0.000000e+00
  %6372 = uitofp i1 %6371 to float
  br label %6373

; <label>:6373                                    ; preds = %6352, %6276
  %6374 = phi float [ %6372, %6352 ], [ 1.000000e+00, %6276 ]
  %6375 = phi float [ %6361, %6352 ], [ %6344, %6276 ]
  %6376 = phi float [ %6362, %6352 ], [ %6345, %6276 ]
  %6377 = phi float [ %6363, %6352 ], [ %6346, %6276 ]
  %6378 = call float @dx.op.dot3.f32(i32 55, float %6299, float %6300, float %6301, float %6375, float %6376, float %6377)  ; Dot3(ax,ay,az,bx,by,bz)
  %6379 = fmul fast float %6378, %6378
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = fsub fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6381, 5.000000e-01
  %6383 = fcmp fast ogt float %6378, 0.000000e+00
  %6384 = fsub fast float 1.000000e+00, %6382
  %6385 = select i1 %6383, float %6382, float %6384
  %6386 = fmul fast float %6385, %6334
  %6387 = fadd fast float %6386, %6332
  %6388 = fmul fast float %6387, 0x3EF0001000000000
  %6389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6388, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6390 = extractvalue %dx.types.ResRet.f32 %6389, 0
  %6391 = fmul fast float %6378, %6316
  %6392 = fadd fast float %6391, %6317
  %6393 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6394 = select i1 %6337, float 1.000000e+00, float %6393
  %6395 = select i1 %6337, float %6393, float 1.000000e+00
  %6396 = fmul fast float %6342, %6313
  %6397 = fsub fast float 1.000000e+00, %6396
  %6398 = fmul fast float %6397, %6319
  %6399 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6400 = fmul fast float %6399, %6395
  %6401 = fmul fast float %6400, 2.000000e+00
  %6402 = fsub fast float 3.000000e+00, %6401
  %6403 = fmul fast float %6390, %6374
  %6404 = fmul fast float %6400, %6400
  %6405 = fmul fast float %6404, %6403
  %6406 = fmul fast float %6405, %6402
  %6407 = call float @dx.op.binary.f32(i32 36, float %6406, float %6406)  ; FMin(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %6406, float %6407)  ; FMin(a,b)
  %6409 = fcmp fast ogt float %6408, 0.000000e+00
  br i1 %6409, label %6418, label %6410, !dx.controlflow.hints !116

; <label>:6410                                    ; preds = %6760, %6518, %6373
  %6411 = phi float [ %6278, %6518 ], [ %6278, %6373 ], [ %6800, %6760 ]
  %6412 = phi float [ %6279, %6518 ], [ %6279, %6373 ], [ %6801, %6760 ]
  %6413 = phi float [ %6280, %6518 ], [ %6280, %6373 ], [ %6802, %6760 ]
  %6414 = phi float [ %6281, %6518 ], [ %6281, %6373 ], [ %6794, %6760 ]
  %6415 = phi float [ %6282, %6518 ], [ %6282, %6373 ], [ %6795, %6760 ]
  %6416 = phi float [ %6283, %6518 ], [ %6283, %6373 ], [ %6796, %6760 ]
  %6417 = icmp eq i32 %6277, %6287
  br i1 %6417, label %6803, label %6276

; <label>:6418                                    ; preds = %6373
  %6419 = icmp eq i32 %6335, 255
  br i1 %6419, label %6518, label %6420, !dx.controlflow.hints !117

; <label>:6420                                    ; preds = %6418
  %6421 = mul nuw nsw i32 %6335, 176
  %6422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.ResRet.f32 %6422, 2
  %6426 = extractvalue %dx.types.ResRet.f32 %6422, 3
  %6427 = add nuw nsw i32 %6421, 16
  %6428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6427, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.ResRet.f32 %6428, 1
  %6431 = add nuw nsw i32 %6421, 32
  %6432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6431, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.ResRet.f32 %6432, 2
  %6436 = add nuw nsw i32 %6421, 48
  %6437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6436, i32 undef)  ; BufferLoad(srv,index,wot)
  %6438 = extractvalue %dx.types.ResRet.f32 %6437, 0
  %6439 = extractvalue %dx.types.ResRet.f32 %6437, 1
  %6440 = extractvalue %dx.types.ResRet.f32 %6437, 2
  %6441 = extractvalue %dx.types.ResRet.f32 %6437, 3
  %6442 = add nuw nsw i32 %6421, 64
  %6443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6442, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.ResRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.ResRet.f32 %6443, 2
  %6447 = extractvalue %dx.types.ResRet.f32 %6443, 3
  %6448 = add nuw nsw i32 %6421, 80
  %6449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.ResRet.f32 %6449, 2
  %6453 = extractvalue %dx.types.ResRet.f32 %6449, 3
  %6454 = add nuw nsw i32 %6421, 96
  %6455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6454, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.ResRet.f32 %6455, 1
  %6458 = extractvalue %dx.types.ResRet.f32 %6455, 2
  %6459 = extractvalue %dx.types.ResRet.f32 %6455, 3
  %6460 = bitcast float %6430 to i32
  %6461 = fmul fast float %6435, %102
  %6462 = fmul fast float %6435, %103
  %6463 = fmul fast float %6435, %104
  %6464 = fadd fast float %6461, %158
  %6465 = fadd fast float %6462, %159
  %6466 = fadd fast float %6463, %160
  %6467 = fmul fast float %6464, %6438
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6444, float %6467)  ; FMad(a,b,c)
  %6469 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6450, float %6468)  ; FMad(a,b,c)
  %6470 = fadd fast float %6469, %6456
  %6471 = fmul fast float %6464, %6439
  %6472 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6445, float %6471)  ; FMad(a,b,c)
  %6473 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6451, float %6472)  ; FMad(a,b,c)
  %6474 = fadd fast float %6473, %6457
  %6475 = fmul fast float %6464, %6440
  %6476 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6446, float %6475)  ; FMad(a,b,c)
  %6477 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6452, float %6476)  ; FMad(a,b,c)
  %6478 = fadd fast float %6477, %6458
  %6479 = fmul fast float %6464, %6441
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %6465, float %6447, float %6479)  ; FMad(a,b,c)
  %6481 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6453, float %6480)  ; FMad(a,b,c)
  %6482 = fadd fast float %6481, %6459
  %6483 = fdiv fast float %6470, %6482
  %6484 = fdiv fast float %6474, %6482
  %6485 = fdiv fast float %6478, %6482
  %6486 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6485)  ; FMax(a,b)
  %6487 = fmul fast float %263, 0x401921FB60000000
  %6488 = call float @dx.op.unary.f32(i32 13, float %6487)  ; Sin(value)
  %6489 = call float @dx.op.unary.f32(i32 12, float %6487)  ; Cos(value)
  %6490 = fsub fast float -0.000000e+00, %6488
  %6491 = fmul fast float %6425, 5.000000e-01
  %6492 = call float @dx.op.dot2.f32(i32 54, float %263, float %263, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6493 = call float @dx.op.unary.f32(i32 22, float %6492)  ; Frc(value)
  %6494 = fmul fast float %6493, 0x404A7DD040000000
  %6495 = call float @dx.op.unary.f32(i32 22, float %6494)  ; Frc(value)
  %6496 = fmul fast float %6495, %6434
  %6497 = fadd fast float %6496, %6491
  %6498 = call float @dx.op.tertiary.f32(i32 46, float %6497, float %6490, float 0.000000e+00)  ; FMad(a,b,c)
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6497, float %6489, float 0.000000e+00)  ; FMad(a,b,c)
  %6500 = fadd fast float %6498, %6483
  %6501 = fadd fast float %6499, %6484
  %6502 = fmul fast float %6500, %6429
  %6503 = fmul fast float %6501, %6429
  %6504 = call float @dx.op.binary.f32(i32 35, float %6502, float %6425)  ; FMax(a,b)
  %6505 = call float @dx.op.binary.f32(i32 35, float %6503, float %6425)  ; FMax(a,b)
  %6506 = call float @dx.op.binary.f32(i32 36, float %6504, float %6426)  ; FMin(a,b)
  %6507 = call float @dx.op.binary.f32(i32 36, float %6505, float %6426)  ; FMin(a,b)
  %6508 = fadd fast float %6506, %6423
  %6509 = fadd fast float %6507, %6424
  %6510 = uitofp i32 %6460 to float
  %6511 = fadd fast float %6486, %6433
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6508, float %6509, float %6510, float undef, i32 0, i32 0, i32 undef, float %6511)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = fadd fast float %6513, -1.000000e+00
  %6515 = fmul fast float %6514, %6394
  %6516 = fadd fast float %6515, 1.000000e+00
  %6517 = fmul fast float %6516, %6406
  br label %6518

; <label>:6518                                    ; preds = %6420, %6418
  %6519 = phi float [ %6517, %6420 ], [ %6406, %6418 ]
  %6520 = call float @dx.op.binary.f32(i32 36, float %6519, float %6519)  ; FMin(a,b)
  %6521 = call float @dx.op.binary.f32(i32 36, float %6519, float %6520)  ; FMin(a,b)
  %6522 = fcmp fast ogt float %6521, 0.000000e+00
  br i1 %6522, label %6523, label %6410, !dx.controlflow.hints !118

; <label>:6523                                    ; preds = %6518
  %6524 = fmul fast float %6519, %6328
  %6525 = fmul fast float %6519, %6329
  %6526 = fmul fast float %6519, %6330
  %6527 = fsub fast float %6312, %4705
  %6528 = fcmp fast ogt float %6527, 0.000000e+00
  %6529 = fsub fast float %160, %4705
  %6530 = fcmp fast ogt float %6529, 0.000000e+00
  %6531 = xor i1 %6530, %6528
  %6532 = fsub fast float %4705, %6312
  %6533 = fmul fast float %6532, 2.000000e+00
  %6534 = fadd fast float %6533, %6312
  %6535 = select i1 %6531, float %6312, float %6534
  %6536 = fsub fast float %6535, %160
  %6537 = call float @dx.op.dot3.f32(i32 55, float %6338, float %6339, float %6536, float %6338, float %6339, float %6536)  ; Dot3(ax,ay,az,bx,by,bz)
  %6538 = call float @dx.op.unary.f32(i32 25, float %6537)  ; Rsqrt(value)
  %6539 = fmul fast float %6538, %6338
  %6540 = fmul fast float %6538, %6339
  %6541 = fmul fast float %6538, %6536
  %6542 = fsub fast float %4705, %160
  %6543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6539, float %6540, float %6541)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = fdiv fast float 1.000000e+00, %6544
  %6546 = fmul fast float %6545, %6543
  %6547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6529, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6548 = fcmp fast ogt float %6547, 0.000000e+00
  %6549 = fcmp fast olt float %6547, 0.000000e+00
  %6550 = zext i1 %6548 to i32
  %6551 = zext i1 %6549 to i32
  %6552 = sub nsw i32 %6550, %6551
  %6553 = sitofp i32 %6552 to float
  %6554 = fsub fast float %6535, %4705
  %6555 = call float @dx.op.dot3.f32(i32 55, float %6338, float %6339, float %6554, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = fcmp fast ogt float %6555, 0.000000e+00
  %6557 = fcmp fast olt float %6555, 0.000000e+00
  %6558 = zext i1 %6556 to i32
  %6559 = zext i1 %6557 to i32
  %6560 = sub nsw i32 %6558, %6559
  %6561 = sitofp i32 %6560 to float
  %6562 = fcmp fast une float %6553, %6561
  br i1 %6562, label %6563, label %6573

; <label>:6563                                    ; preds = %6523
  %6564 = fmul fast float %6546, %6541
  %6565 = fmul fast float %6546, %6540
  %6566 = fmul fast float %6546, %6539
  %6567 = fmul fast float %6566, %6566
  %6568 = fmul fast float %6565, %6565
  %6569 = fadd fast float %6567, %6568
  %6570 = fmul fast float %6564, %6564
  %6571 = fadd fast float %6569, %6570
  %6572 = call float @dx.op.unary.f32(i32 24, float %6571)  ; Sqrt(value)
  br label %6585

; <label>:6573                                    ; preds = %6523
  %6574 = icmp slt i32 %6552, 0
  br i1 %6574, label %6575, label %6585

; <label>:6575                                    ; preds = %6573
  %6576 = fsub fast float %158, %6310
  %6577 = fsub fast float %159, %6311
  %6578 = fsub fast float %160, %6535
  %6579 = fmul fast float %6576, %6576
  %6580 = fmul fast float %6577, %6577
  %6581 = fadd fast float %6579, %6580
  %6582 = fmul fast float %6578, %6578
  %6583 = fadd fast float %6581, %6582
  %6584 = call float @dx.op.unary.f32(i32 24, float %6583)  ; Sqrt(value)
  br label %6585

; <label>:6585                                    ; preds = %6575, %6573, %6563
  %6586 = phi float [ %6572, %6563 ], [ %6584, %6575 ], [ 0.000000e+00, %6573 ]
  %6587 = and i1 %6530, %6528
  %6588 = fsub fast float -0.000000e+00, %6586
  %6589 = select i1 %6587, float -0.000000e+00, float %6588
  %6590 = fmul fast float %4706, 0x3FF7154760000000
  %6591 = fmul fast float %6590, %6589
  %6592 = fmul fast float %4707, 0x3FF7154760000000
  %6593 = fmul fast float %6592, %6589
  %6594 = fmul fast float %4708, 0x3FF7154760000000
  %6595 = fmul fast float %6594, %6589
  %6596 = call float @dx.op.unary.f32(i32 21, float %6591)  ; Exp(value)
  %6597 = call float @dx.op.unary.f32(i32 21, float %6593)  ; Exp(value)
  %6598 = call float @dx.op.unary.f32(i32 21, float %6595)  ; Exp(value)
  %6599 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6600 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  %6601 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  %6602 = fmul fast float %6524, %6599
  %6603 = fmul fast float %6525, %6600
  %6604 = fmul fast float %6526, %6601
  %6605 = fsub fast float %6344, %178
  %6606 = fsub fast float %6345, %179
  %6607 = fsub fast float %6346, %180
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6605, float %6606, float %6607, float %6605, float %6606, float %6607)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = call float @dx.op.unary.f32(i32 25, float %6608)  ; Rsqrt(value)
  %6610 = fmul fast float %6609, %6605
  %6611 = fmul fast float %6609, %6606
  %6612 = fmul fast float %6609, %6607
  %6613 = call float @dx.op.dot3.f32(i32 55, float %6344, float %6345, float %6346, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6614 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %4724, float %6610, float %6611, float %6612)  ; Dot3(ax,ay,az,bx,by,bz)
  %6615 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6616 = fmul fast float %6615, %6351
  %6617 = fmul fast float %6615, %6615
  %6618 = fmul fast float %6617, %4915
  %6619 = call float @dx.op.unary.f32(i32 7, float %6618)  ; Saturate(value)
  %6620 = fmul fast float %6616, %6619
  %6621 = bitcast float %6341 to i32
  %6622 = ashr i32 %6621, 1
  %6623 = sub nsw i32 1597463007, %6622
  %6624 = bitcast i32 %6623 to float
  %6625 = fmul fast float %6624, %6338
  %6626 = fmul fast float %6624, %6339
  %6627 = fmul fast float %6624, %6340
  %6628 = fsub fast float %6625, %178
  %6629 = fsub fast float %6626, %179
  %6630 = fsub fast float %6627, %180
  %6631 = call float @dx.op.dot3.f32(i32 55, float %6628, float %6629, float %6630, float %6628, float %6629, float %6630)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = call float @dx.op.unary.f32(i32 25, float %6631)  ; Rsqrt(value)
  %6633 = fmul fast float %6628, %6632
  %6634 = fmul fast float %6629, %6632
  %6635 = fmul fast float %6630, %6632
  %6636 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %6633, float %6634, float %6635)  ; Dot3(ax,ay,az,bx,by,bz)
  %6637 = fmul fast float %6636, %6636
  %6638 = call float @dx.op.unary.f32(i32 6, float %6613)  ; FAbs(value)
  %6639 = fsub fast float 1.000000e+00, %4897
  %6640 = call float @dx.op.binary.f32(i32 35, float %6639, float 0x3F847AE140000000)  ; FMax(a,b)
  %6641 = fmul fast float %6640, %6640
  %6642 = fmul fast float %6641, %6641
  %6643 = fsub fast float 1.000000e+00, %6642
  %6644 = fmul fast float %4902, %4902
  %6645 = fmul fast float %6644, %6643
  %6646 = fadd fast float %6645, %6642
  %6647 = bitcast float %6646 to i32
  %6648 = ashr i32 %6647, 1
  %6649 = add nsw i32 %6648, 532487669
  %6650 = bitcast i32 %6649 to float
  %6651 = fadd fast float %6650, %4902
  %6652 = fmul fast float %6642, %6637
  %6653 = fsub fast float 1.000000e+00, %6637
  %6654 = fadd fast float %6653, %6652
  %6655 = fmul fast float %6638, %6638
  %6656 = fmul fast float %6655, %6643
  %6657 = fadd fast float %6656, %6642
  %6658 = bitcast float %6657 to i32
  %6659 = ashr i32 %6658, 1
  %6660 = add nsw i32 %6659, 532487669
  %6661 = bitcast i32 %6660 to float
  %6662 = fadd fast float %6661, %6638
  %6663 = fmul fast float %6654, %6654
  %6664 = fmul fast float %6663, %6651
  %6665 = fmul fast float %6664, %6662
  %6666 = fdiv fast float 1.000000e+00, %6665
  %6667 = bitcast float %6642 to i32
  %6668 = sitofp i32 %6667 to float
  %6669 = fmul fast float %6668, 0x3FE7F73180000000
  %6670 = fadd fast float %6669, 0x41AFE27C40000000
  %6671 = fptosi float %6670 to i32
  %6672 = bitcast i32 %6671 to float
  %6673 = fmul fast float %6307, 0x3FD80E9D60000000
  %6674 = fmul fast float %6673, %6624
  %6675 = fadd fast float %6672, %6674
  %6676 = bitcast float %6675 to i32
  %6677 = sub nsw i32 2129859010, %6676
  %6678 = bitcast i32 %6677 to float
  %6679 = fmul fast float %6642, %6666
  %6680 = fmul fast float %6679, %6672
  %6681 = fmul fast float %6680, %6678
  %6682 = call float @dx.op.unary.f32(i32 6, float %6614)  ; FAbs(value)
  %6683 = fsub fast float 1.000000e+00, %6682
  %6684 = bitcast float %6683 to i32
  %6685 = sitofp i32 %6684 to float
  %6686 = fmul fast float %6685, 5.000000e+00
  %6687 = fadd fast float %6686, 0xC1EFBF8940000000
  %6688 = fptosi float %6687 to i32
  %6689 = bitcast i32 %6688 to float
  %6690 = fsub fast float 1.000000e+00, %4891
  %6691 = fsub fast float 1.000000e+00, %4892
  %6692 = fsub fast float 1.000000e+00, %4900
  %6693 = fmul fast float %6689, %6690
  %6694 = fmul fast float %6689, %6691
  %6695 = fmul fast float %6689, %6692
  %6696 = fadd fast float %6693, %4891
  %6697 = fadd fast float %6694, %4892
  %6698 = fadd fast float %6695, %4900
  br i1 %5027, label %6699, label %6722

; <label>:6699                                    ; preds = %6585
  %6700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4282, float %6682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6701 = extractvalue %dx.types.ResRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.ResRet.f32 %6700, 1
  %6703 = extractvalue %dx.types.ResRet.f32 %6700, 2
  %6704 = fadd fast float %6701, -5.000000e-01
  %6705 = fadd fast float %6702, -5.000000e-01
  %6706 = fadd fast float %6703, -5.000000e-01
  %6707 = fmul fast float %4891, 4.000000e+00
  %6708 = fmul fast float %6707, %6690
  %6709 = fmul fast float %6708, %6704
  %6710 = fmul fast float %4892, 4.000000e+00
  %6711 = fmul fast float %6710, %6691
  %6712 = fmul fast float %6711, %6705
  %6713 = fmul fast float %4900, 4.000000e+00
  %6714 = fmul fast float %6713, %6692
  %6715 = fmul fast float %6714, %6706
  %6716 = fadd fast float %6709, %6696
  %6717 = fadd fast float %6712, %6697
  %6718 = fadd fast float %6715, %6698
  %6719 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6720 = call float @dx.op.unary.f32(i32 7, float %6717)  ; Saturate(value)
  %6721 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  br label %6722

; <label>:6722                                    ; preds = %6699, %6585
  %6723 = phi float [ %6719, %6699 ], [ %6696, %6585 ]
  %6724 = phi float [ %6720, %6699 ], [ %6697, %6585 ]
  %6725 = phi float [ %6721, %6699 ], [ %6698, %6585 ]
  %6726 = fmul fast float %6613, 9.843750e-01
  %6727 = fadd fast float %6726, 7.812500e-03
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6727, float %5017, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 2
  %6730 = extractvalue %dx.types.ResRet.f32 %6728, 3
  %6731 = fmul fast float %6729, %4891
  %6732 = fmul fast float %6729, %4892
  %6733 = fmul fast float %6729, %4900
  %6734 = fadd fast float %6731, %6730
  %6735 = fadd fast float %6732, %6730
  %6736 = fadd fast float %6733, %6730
  br i1 %5027, label %6737, label %6760

; <label>:6737                                    ; preds = %6722
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4282, float %6613, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  %6742 = fadd fast float %6739, -5.000000e-01
  %6743 = fadd fast float %6740, -5.000000e-01
  %6744 = fadd fast float %6741, -5.000000e-01
  %6745 = fmul fast float %4891, 4.000000e+00
  %6746 = fmul fast float %6745, %6690
  %6747 = fmul fast float %6746, %6742
  %6748 = fmul fast float %4892, 4.000000e+00
  %6749 = fmul fast float %6748, %6691
  %6750 = fmul fast float %6749, %6743
  %6751 = fmul fast float %4900, 4.000000e+00
  %6752 = fmul fast float %6751, %6692
  %6753 = fmul fast float %6752, %6744
  %6754 = fadd fast float %6747, %6734
  %6755 = fadd fast float %6750, %6735
  %6756 = fadd fast float %6753, %6736
  %6757 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6758 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6759 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  br label %6760

; <label>:6760                                    ; preds = %6737, %6722
  %6761 = phi float [ %6757, %6737 ], [ %6734, %6722 ]
  %6762 = phi float [ %6758, %6737 ], [ %6735, %6722 ]
  %6763 = phi float [ %6759, %6737 ], [ %6736, %6722 ]
  %6764 = call float @dx.op.binary.f32(i32 35, float %6762, float %6763)  ; FMax(a,b)
  %6765 = call float @dx.op.binary.f32(i32 35, float %6761, float %6764)  ; FMax(a,b)
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6723, %6681
  %6768 = fmul fast float %6724, %6681
  %6769 = fmul fast float %6725, %6681
  %6770 = fsub fast float 1.000000e+00, %6614
  %6771 = bitcast float %6770 to i32
  %6772 = sitofp i32 %6771 to float
  %6773 = fmul fast float %6772, 5.000000e+00
  %6774 = fadd fast float %6773, 0xC1EFBF8940000000
  %6775 = fptosi float %6774 to i32
  %6776 = bitcast i32 %6775 to float
  %6777 = fmul fast float %6776, %4283
  %6778 = fmul fast float %6766, %6777
  %6779 = fmul fast float %6778, %5077
  %6780 = fmul fast float %6778, %5078
  %6781 = fmul fast float %6778, %5079
  %6782 = fadd fast float %6779, %6767
  %6783 = fadd fast float %6780, %6768
  %6784 = fadd fast float %6781, %6769
  %6785 = fmul fast float %6602, %4308
  %6786 = fmul fast float %6785, %6620
  %6787 = fmul fast float %6786, %6766
  %6788 = fmul fast float %6603, %4308
  %6789 = fmul fast float %6788, %6620
  %6790 = fmul fast float %6789, %6766
  %6791 = fmul fast float %6604, %4308
  %6792 = fmul fast float %6791, %6620
  %6793 = fmul fast float %6792, %6766
  %6794 = fadd fast float %6787, %6281
  %6795 = fadd fast float %6790, %6282
  %6796 = fadd fast float %6793, %6283
  %6797 = fmul fast float %6786, %6782
  %6798 = fmul fast float %6789, %6783
  %6799 = fmul fast float %6792, %6784
  %6800 = fadd fast float %6797, %6278
  %6801 = fadd fast float %6798, %6279
  %6802 = fadd fast float %6799, %6280
  br label %6410

; <label>:6803                                    ; preds = %6410
  br label %6804

; <label>:6804                                    ; preds = %6803, %6244
  %6805 = phi float [ %6246, %6244 ], [ %6411, %6803 ]
  %6806 = phi float [ %6247, %6244 ], [ %6412, %6803 ]
  %6807 = phi float [ %6248, %6244 ], [ %6413, %6803 ]
  %6808 = phi float [ %6249, %6244 ], [ %6414, %6803 ]
  %6809 = phi float [ %6250, %6244 ], [ %6415, %6803 ]
  %6810 = phi float [ %6251, %6244 ], [ %6416, %6803 ]
  %6811 = add i32 %6245, 1
  %6812 = icmp ugt i32 %6811, %6241
  br i1 %6812, label %6813, label %6244

; <label>:6813                                    ; preds = %6804
  br label %6814

; <label>:6814                                    ; preds = %6813, %6194, %6184
  %6815 = phi float [ %6185, %6184 ], [ %6185, %6194 ], [ %6805, %6813 ]
  %6816 = phi float [ %6186, %6184 ], [ %6186, %6194 ], [ %6806, %6813 ]
  %6817 = phi float [ %6187, %6184 ], [ %6187, %6194 ], [ %6807, %6813 ]
  %6818 = phi float [ %6188, %6184 ], [ %6188, %6194 ], [ %6808, %6813 ]
  %6819 = phi float [ %6189, %6184 ], [ %6189, %6194 ], [ %6809, %6813 ]
  %6820 = phi float [ %6190, %6184 ], [ %6190, %6194 ], [ %6810, %6813 ]
  %6821 = fmul fast float %4308, %4308
  %6822 = fsub fast float 1.000000e+00, %6821
  %6823 = call float @dx.op.dot3.f32(i32 55, float %6822, float %6822, float %6822, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fsub fast float 1.000000e+00, %6823
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = fmul fast float %6826, %5083
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6830 = fsub fast float 1.000000e+00, %4286
  %6831 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6832 = fadd fast float %6820, %4285
  %6833 = fmul fast float %6832, %4286
  %6834 = fmul fast float %6831, %6829
  %6835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %6836 = extractvalue %dx.types.ResRet.i32 %6835, 3
  %6837 = bitcast i32 %6836 to float
  %6838 = fsub fast float %6824, %6837
  %6839 = fmul fast float %6838, %192
  %6840 = fadd fast float %6839, %6837
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6843 = fmul fast float %6818, %4888
  %6844 = fmul fast float %6819, %4889
  %6845 = fmul fast float %6820, %4890
  %6846 = fcmp fast ogt float %86, %212
  %6847 = and i1 %6846, %4711
  %6848 = or i1 %4717, %6847
  %6849 = icmp eq i32 %4710, 2
  %6850 = fcmp fast ole float %86, %212
  %6851 = and i1 %6850, %6849
  %6852 = or i1 %6851, %6848
  br i1 %6847, label %6853, label %7110

; <label>:6853                                    ; preds = %6814
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %6856 = extractvalue %dx.types.CBufRet.f32 %6854, 3
  %6857 = fmul fast float %6855, %95
  %6858 = fmul fast float %6856, %96
  %6859 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6860 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6861 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6859, float %6860, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  %6865 = extractvalue %dx.types.ResRet.f32 %6861, 3
  %6866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6859, float %6860, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  %6870 = extractvalue %dx.types.ResRet.f32 %6866, 3
  %6871 = call float @dx.op.binary.f32(i32 35, float %6863, float %6864)  ; FMax(a,b)
  %6872 = call float @dx.op.binary.f32(i32 35, float %6862, float %6871)  ; FMax(a,b)
  %6873 = call float @dx.op.binary.f32(i32 35, float %6872, float %6865)  ; FMax(a,b)
  %6874 = call float @dx.op.binary.f32(i32 36, float %6868, float %6869)  ; FMin(a,b)
  %6875 = call float @dx.op.binary.f32(i32 36, float %6867, float %6874)  ; FMin(a,b)
  %6876 = call float @dx.op.binary.f32(i32 36, float %6875, float %6870)  ; FMin(a,b)
  %6877 = fmul fast float %6873, 2.550000e+02
  %6878 = fadd fast float %6877, 0x3F70101020000000
  %6879 = fptoui float %6878 to i32
  %6880 = fmul fast float %6876, 2.550000e+02
  %6881 = fadd fast float %6880, 0x3F70101020000000
  %6882 = fptoui float %6881 to i32
  %6883 = icmp ult i32 %6879, %6882
  br i1 %6883, label %6884, label %7052

; <label>:6884                                    ; preds = %6853
  %6885 = fcmp fast ogt float %85, 9.843750e-01
  %6886 = fadd fast float %86, -4.000000e+00
  %6887 = select i1 %6885, float -4.000000e+00, float %6886
  %6888 = call float @dx.op.binary.f32(i32 35, float %6887, float 0.000000e+00)  ; FMax(a,b)
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = fadd fast float %6890, %6888
  %6892 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6893 = fmul fast float %6891, %6892
  %6894 = call float @dx.op.unary.f32(i32 23, float %6893)  ; Log(value)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6896 = fmul fast float %6895, %6894
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6899 = fmul fast float %6896, %6898
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = uitofp i32 %6879 to float
  %6902 = uitofp i32 %6882 to float
  %6903 = fadd fast float %6901, 5.000000e-01
  %6904 = fadd fast float %6902, 5.000000e-01
  %6905 = fmul fast float %6898, %6903
  %6906 = fmul fast float %6898, %6904
  %6907 = fadd fast float %6905, 0x3F0FFB4800000000
  %6908 = fadd fast float %6906, 0xBF0FFB4800000000
  %6909 = call float @dx.op.binary.f32(i32 35, float %6900, float %6907)  ; FMax(a,b)
  %6910 = call float @dx.op.binary.f32(i32 36, float %6909, float %6908)  ; FMin(a,b)
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %6913 = extractvalue %dx.types.CBufRet.f32 %6911, 2
  %6914 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6915 = fmul fast float %6912, %6910
  %6916 = fadd fast float %6914, %6915
  %6917 = fadd fast float %6914, %6913
  %6918 = fsub fast float %6912, %6913
  %6919 = fadd fast float %6918, %6914
  %6920 = call float @dx.op.binary.f32(i32 35, float %6916, float %6917)  ; FMax(a,b)
  %6921 = call float @dx.op.binary.f32(i32 36, float %6920, float %6919)  ; FMin(a,b)
  %6922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6859, float %6860, float %6921, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6923 = extractvalue %dx.types.ResRet.f32 %6922, 0
  %6924 = extractvalue %dx.types.ResRet.f32 %6922, 1
  %6925 = extractvalue %dx.types.ResRet.f32 %6922, 2
  %6926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.i32 %6926, 0
  %6928 = extractvalue %dx.types.CBufRet.i32 %6926, 1
  %6929 = uitofp i32 %6927 to float
  %6930 = uitofp i32 %6928 to float
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6934 = fmul fast float %6929, %6859
  %6935 = fmul fast float %6930, %6860
  %6936 = fadd fast float %6934, -5.000000e-01
  %6937 = fadd fast float %6935, -5.000000e-01
  %6938 = call float @dx.op.unary.f32(i32 22, float %6936)  ; Frc(value)
  %6939 = call float @dx.op.unary.f32(i32 22, float %6937)  ; Frc(value)
  %6940 = fmul fast float %6938, %6938
  %6941 = fmul fast float %6940, %6938
  %6942 = fsub fast float 3.000000e+00, %6938
  %6943 = fmul fast float %6940, %6942
  %6944 = fmul fast float %6938, 3.000000e+00
  %6945 = fmul fast float %6941, 3.000000e+00
  %6946 = fmul fast float %6940, 6.000000e+00
  %6947 = fsub fast float %6945, %6946
  %6948 = fadd fast float %6947, 4.000000e+00
  %6949 = fmul fast float %6948, 0x3FC5555560000000
  %6950 = fmul fast float %6941, -3.000000e+00
  %6951 = fadd fast float %6940, %6938
  %6952 = fmul fast float %6951, 3.000000e+00
  %6953 = fadd fast float %6950, 1.000000e+00
  %6954 = fadd fast float %6953, %6952
  %6955 = fmul fast float %6941, 0x3FC5555560000000
  %6956 = fmul fast float %6939, %6939
  %6957 = fmul fast float %6956, %6939
  %6958 = fsub fast float 3.000000e+00, %6939
  %6959 = fmul fast float %6956, %6958
  %6960 = fmul fast float %6939, 3.000000e+00
  %6961 = fmul fast float %6957, 3.000000e+00
  %6962 = fmul fast float %6956, 6.000000e+00
  %6963 = fsub fast float %6961, %6962
  %6964 = fadd fast float %6963, 4.000000e+00
  %6965 = fmul fast float %6964, 0x3FC5555560000000
  %6966 = fmul fast float %6957, -3.000000e+00
  %6967 = fadd fast float %6956, %6939
  %6968 = fmul fast float %6967, 3.000000e+00
  %6969 = fadd fast float %6966, 1.000000e+00
  %6970 = fadd fast float %6969, %6968
  %6971 = fmul fast float %6957, 0x3FC5555560000000
  %6972 = fadd fast float %6938, 1.000000e+00
  %6973 = fsub fast float 1.000000e+00, %6944
  %6974 = fadd fast float %6973, %6943
  %6975 = fadd fast float %6974, %6948
  %6976 = fmul fast float %6975, 0x3FC5555560000000
  %6977 = fdiv fast float %6949, %6976
  %6978 = fsub fast float %6972, %6977
  %6979 = fsub fast float 1.000000e+00, %6938
  %6980 = fadd fast float %6954, %6941
  %6981 = fmul fast float %6980, 0x3FC5555560000000
  %6982 = fdiv fast float %6955, %6981
  %6983 = fadd fast float %6979, %6982
  %6984 = fadd fast float %6939, 1.000000e+00
  %6985 = fsub fast float 1.000000e+00, %6960
  %6986 = fadd fast float %6985, %6959
  %6987 = fadd fast float %6986, %6964
  %6988 = fmul fast float %6987, 0x3FC5555560000000
  %6989 = fdiv fast float %6965, %6988
  %6990 = fsub fast float %6984, %6989
  %6991 = fsub fast float 1.000000e+00, %6939
  %6992 = fadd fast float %6970, %6957
  %6993 = fmul fast float %6992, 0x3FC5555560000000
  %6994 = fdiv fast float %6971, %6993
  %6995 = fadd fast float %6994, %6991
  %6996 = fmul fast float %6978, %6932
  %6997 = fsub fast float %6859, %6996
  %6998 = fmul fast float %6983, %6932
  %6999 = fadd fast float %6998, %6859
  %7000 = fmul fast float %6995, %6933
  %7001 = fadd fast float %7000, %6860
  %7002 = fmul fast float %6990, %6933
  %7003 = fsub fast float %6860, %7002
  %7004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6997, float %7003, float %6921, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7005 = extractvalue %dx.types.ResRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.ResRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.ResRet.f32 %7004, 2
  %7008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6999, float %7003, float %6921, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7009 = extractvalue %dx.types.ResRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.ResRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.ResRet.f32 %7008, 2
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6997, float %7001, float %6921, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = extractvalue %dx.types.ResRet.f32 %7012, 1
  %7015 = extractvalue %dx.types.ResRet.f32 %7012, 2
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6999, float %7001, float %6921, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.ResRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.ResRet.f32 %7016, 2
  %7020 = fsub fast float %7013, %7005
  %7021 = fsub fast float %7014, %7006
  %7022 = fsub fast float %7015, %7007
  %7023 = fmul fast float %7020, %6993
  %7024 = fmul fast float %7021, %6993
  %7025 = fmul fast float %7022, %6993
  %7026 = fadd fast float %7023, %7005
  %7027 = fadd fast float %7024, %7006
  %7028 = fadd fast float %7025, %7007
  %7029 = fsub fast float %7017, %7009
  %7030 = fsub fast float %7018, %7010
  %7031 = fsub fast float %7019, %7011
  %7032 = fmul fast float %7029, %6993
  %7033 = fmul fast float %7030, %6993
  %7034 = fmul fast float %7031, %6993
  %7035 = fsub fast float %7009, %7026
  %7036 = fadd fast float %7035, %7032
  %7037 = fsub fast float %7010, %7027
  %7038 = fadd fast float %7037, %7033
  %7039 = fsub fast float %7011, %7028
  %7040 = fadd fast float %7039, %7034
  %7041 = fmul fast float %7036, %6981
  %7042 = fmul fast float %7038, %6981
  %7043 = fmul fast float %7040, %6981
  %7044 = fadd fast float %7041, %7026
  %7045 = fadd fast float %7042, %7027
  %7046 = fadd fast float %7043, %7028
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7049 = fmul fast float %7044, %7048
  %7050 = fmul fast float %7045, %7048
  %7051 = fmul fast float %7046, %7048
  br label %7052

; <label>:7052                                    ; preds = %6884, %6853
  %7053 = phi float [ %6923, %6884 ], [ 1.000000e+00, %6853 ]
  %7054 = phi float [ %6924, %6884 ], [ 1.000000e+00, %6853 ]
  %7055 = phi float [ %6925, %6884 ], [ 1.000000e+00, %6853 ]
  %7056 = phi float [ %7049, %6884 ], [ 0.000000e+00, %6853 ]
  %7057 = phi float [ %7050, %6884 ], [ 0.000000e+00, %6853 ]
  %7058 = phi float [ %7051, %6884 ], [ 0.000000e+00, %6853 ]
  %7059 = fmul fast float %7056, %6840
  %7060 = fmul fast float %7057, %6840
  %7061 = fmul fast float %7058, %6840
  %7062 = call float @dx.op.dot3.f32(i32 55, float %7053, float %7054, float %7055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7063 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = select i1 %252, float %7062, float %7053
  %7065 = select i1 %252, float %7062, float %7054
  %7066 = select i1 %252, float 1.000000e+00, float %7055
  %7067 = select i1 %252, float %7063, float %7059
  %7068 = select i1 %252, float 0.000000e+00, float %7060
  %7069 = select i1 %252, float 0.000000e+00, float %7061
  %7070 = fmul fast float %7064, %6843
  %7071 = fmul fast float %7065, %6844
  %7072 = fmul fast float %7066, %6845
  %7073 = fadd fast float %7070, %7067
  %7074 = fadd fast float %7071, %7068
  %7075 = fadd fast float %7069, %7072
  %7076 = fmul fast float %7064, %6815
  %7077 = fmul fast float %7065, %6816
  %7078 = fmul fast float %7066, %6817
  %7079 = fmul fast float %128, %6855
  %7080 = fmul fast float %130, %6856
  %7081 = fsub fast float 1.000000e+00, %7079
  %7082 = fsub fast float 1.000000e+00, %7080
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7086 = extractvalue %dx.types.CBufRet.f32 %7083, 2
  %7087 = fmul fast float %7081, %7084
  %7088 = fmul fast float %7081, %7085
  %7089 = fmul fast float %7081, %7086
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.CBufRet.f32 %7090, 1
  %7093 = extractvalue %dx.types.CBufRet.f32 %7090, 2
  %7094 = fmul fast float %7082, %7091
  %7095 = fmul fast float %7082, %7092
  %7096 = fmul fast float %7082, %7093
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = fadd fast float %7094, %7098
  %7102 = fadd fast float %7101, %7087
  %7103 = fadd fast float %7095, %7099
  %7104 = fadd fast float %7103, %7088
  %7105 = fadd fast float %7096, %7100
  %7106 = fadd fast float %7105, %7089
  %7107 = fmul fast float %7102, %212
  %7108 = fmul fast float %7104, %212
  %7109 = fmul fast float %7106, %212
  br label %7110

; <label>:7110                                    ; preds = %7052, %6814
  %7111 = phi float [ %7107, %7052 ], [ %158, %6814 ]
  %7112 = phi float [ %7108, %7052 ], [ %159, %6814 ]
  %7113 = phi float [ %7109, %7052 ], [ %160, %6814 ]
  %7114 = phi float [ %212, %7052 ], [ %86, %6814 ]
  %7115 = phi float [ %7073, %7052 ], [ %6843, %6814 ]
  %7116 = phi float [ %7074, %7052 ], [ %6844, %6814 ]
  %7117 = phi float [ %7075, %7052 ], [ %6845, %6814 ]
  %7118 = phi float [ %7076, %7052 ], [ %6815, %6814 ]
  %7119 = phi float [ %7077, %7052 ], [ %6816, %6814 ]
  %7120 = phi float [ %7078, %7052 ], [ %6817, %6814 ]
  %7121 = phi float [ %7053, %7052 ], [ 1.000000e+00, %6814 ]
  br i1 %6852, label %8276, label %7122

; <label>:7122                                    ; preds = %7110
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7126 = extractvalue %dx.types.CBufRet.f32 %7123, 2
  %7127 = extractvalue %dx.types.CBufRet.f32 %7123, 3
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7132 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7137 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.CBufRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.CBufRet.f32 %7138, 2
  %7142 = extractvalue %dx.types.CBufRet.f32 %7138, 3
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 3
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 3
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7150 = fcmp fast olt float %7149, -5.000000e-01
  %7151 = call float @dx.op.dot3.f32(i32 55, float %7111, float %7112, float %7113, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7152 = call float @dx.op.unary.f32(i32 25, float %7151)  ; Rsqrt(value)
  %7153 = fmul fast float %7152, %7151
  %7154 = fmul fast float %7152, %7111
  %7155 = fmul fast float %7152, %7112
  %7156 = fmul fast float %7152, %7113
  %7157 = fadd fast float %7153, %7127
  %7158 = call float @dx.op.dot3.f32(i32 55, float %7154, float %7155, float %7156, float %7124, float %7125, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.i32 %7159, 1
  %7161 = and i32 %7160, 1
  %7162 = icmp ne i32 %7161, 0
  %7163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7163, 2
  %7165 = fcmp fast ogt float %7164, 0.000000e+00
  %7166 = and i1 %7162, %7165
  br i1 %7166, label %7167, label %7573, !dx.controlflow.hints !119

; <label>:7167                                    ; preds = %7122
  %7168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7169 = extractvalue %dx.types.CBufRet.f32 %7168, 3
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 2
  %7172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7173 = extractvalue %dx.types.CBufRet.f32 %7172, 2
  %7174 = fsub fast float %7171, %7173
  %7175 = and i32 %7160, 2
  %7176 = extractvalue %dx.types.CBufRet.i32 %7159, 0
  %7177 = call i32 @dx.op.binary.i32(i32 40, i32 %7176, i32 3)  ; UMin(a,b)
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.CBufRet.f32 %7172, 0
  %7182 = extractvalue %dx.types.CBufRet.f32 %7172, 1
  %7183 = fsub fast float %7179, %7181
  %7184 = fsub fast float %7180, %7182
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 0
  %7187 = fcmp fast ogt float %7186, 0.000000e+00
  %7188 = fsub fast float -0.000000e+00, %7183
  %7189 = fsub fast float -0.000000e+00, %7184
  %7190 = call float @dx.op.dot2.f32(i32 54, float %7154, float %7155, float %7154, float %7155)  ; Dot2(ax,ay,bx,by)
  %7191 = call float @dx.op.dot2.f32(i32 54, float %7154, float %7155, float %7188, float %7189)  ; Dot2(ax,ay,bx,by)
  %7192 = fmul fast float %7191, 2.000000e+00
  %7193 = call float @dx.op.dot2.f32(i32 54, float %7188, float %7189, float %7188, float %7189)  ; Dot2(ax,ay,bx,by)
  %7194 = fmul fast float %7186, %7186
  %7195 = fsub fast float %7193, %7194
  %7196 = fmul fast float %7192, %7192
  %7197 = fmul fast float %7190, 4.000000e+00
  %7198 = fmul fast float %7197, %7195
  %7199 = fsub fast float %7196, %7198
  %7200 = fcmp fast ogt float %7199, 0.000000e+00
  br i1 %7200, label %7201, label %7216

; <label>:7201                                    ; preds = %7167
  %7202 = fcmp fast ogt float %7192, 0.000000e+00
  %7203 = call float @dx.op.unary.f32(i32 24, float %7199)  ; Sqrt(value)
  %7204 = fsub fast float -0.000000e+00, %7203
  %7205 = select i1 %7202, float %7203, float %7204
  %7206 = fadd fast float %7205, %7192
  %7207 = fmul float %7206, -5.000000e-01
  %7208 = fdiv fast float %7207, %7190
  %7209 = call float @dx.op.binary.f32(i32 35, float %7208, float 0.000000e+00)  ; FMax(a,b)
  %7210 = call float @dx.op.binary.f32(i32 36, float %7153, float %7209)  ; FMin(a,b)
  %7211 = fdiv fast float %7195, %7207
  %7212 = call float @dx.op.binary.f32(i32 35, float %7211, float 0.000000e+00)  ; FMax(a,b)
  %7213 = call float @dx.op.binary.f32(i32 36, float %7153, float %7212)  ; FMin(a,b)
  %7214 = call float @dx.op.binary.f32(i32 36, float %7210, float %7213)  ; FMin(a,b)
  %7215 = call float @dx.op.binary.f32(i32 35, float %7210, float %7213)  ; FMax(a,b)
  br label %7216

; <label>:7216                                    ; preds = %7201, %7167
  %7217 = phi float [ %7215, %7201 ], [ -1.000000e+00, %7167 ]
  %7218 = phi float [ %7214, %7201 ], [ -1.000000e+00, %7167 ]
  %7219 = phi i1 [ true, %7201 ], [ false, %7167 ]
  %7220 = and i1 %7187, %7219
  br i1 %7220, label %7221, label %7223

; <label>:7221                                    ; preds = %7216
  %7222 = fcmp fast oeq float %7218, %7217
  br i1 %7222, label %7526, label %7224

; <label>:7223                                    ; preds = %7216
  br i1 %7187, label %7526, label %7224

; <label>:7224                                    ; preds = %7223, %7221
  %7225 = phi float [ %7153, %7223 ], [ %7217, %7221 ]
  %7226 = phi float [ 0.000000e+00, %7223 ], [ %7218, %7221 ]
  %7227 = icmp ne i32 %7175, 0
  %7228 = fmul fast float %7225, %7156
  %7229 = fadd fast float %7228, %7169
  %7230 = fmul fast float %7229, %7225
  %7231 = select i1 %7227, float 0.000000e+00, float %7230
  %7232 = fcmp fast oeq float %7156, 0.000000e+00
  %7233 = fdiv fast float %7174, %7156
  %7234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7233)  ; FMax(a,b)
  %7235 = select i1 %7232, float %7225, float %7234
  %7236 = call float @dx.op.binary.f32(i32 36, float %7225, float %7235)  ; FMin(a,b)
  %7237 = fcmp fast ogt float %7156, 0.000000e+00
  %7238 = fcmp fast olt float %7174, 0.000000e+00
  br i1 %7237, label %7239, label %7296

; <label>:7239                                    ; preds = %7224
  %7240 = icmp eq i32 %7175, 0
  br i1 %7238, label %7241, label %7285

; <label>:7241                                    ; preds = %7239
  %7242 = select i1 %7240, float %7225, float 0.000000e+00
  %7243 = fsub fast float -0.000000e+00, %7242
  %7244 = call float @dx.op.unary.f32(i32 6, float %7243)  ; FAbs(value)
  %7245 = fmul fast float %7242, %7156
  %7246 = fadd fast float %7245, %7169
  %7247 = fmul fast float %7244, %7246
  %7248 = fsub fast float %7231, %7247
  %7249 = fsub fast float %7225, %7244
  %7250 = select i1 %7240, float %7249, float 0.000000e+00
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7259 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7262 = call float @dx.op.binary.f32(i32 36, float %7248, float %7261)  ; FMin(a,b)
  %7263 = fmul fast float %7259, %7250
  %7264 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  %7265 = fsub fast float %7256, %7252
  %7266 = fsub fast float %7257, %7253
  %7267 = fsub fast float %7258, %7254
  %7268 = fmul fast float %7264, %7265
  %7269 = fmul fast float %7264, %7266
  %7270 = fmul fast float %7264, %7267
  %7271 = fadd fast float %7268, %7252
  %7272 = fadd fast float %7269, %7253
  %7273 = fadd fast float %7270, %7254
  %7274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.f32 %7274, 0
  %7276 = extractvalue %dx.types.CBufRet.f32 %7274, 1
  %7277 = fadd fast float %7276, %7275
  %7278 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7274, 2
  %7280 = extractvalue %dx.types.CBufRet.f32 %7274, 3
  %7281 = fadd fast float %7280, %7279
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  %7283 = fmul fast float %7278, %7262
  %7284 = fmul fast float %7283, %7282
  br label %7526

; <label>:7285                                    ; preds = %7239
  br i1 %7240, label %7286, label %7307

; <label>:7286                                    ; preds = %7285
  %7287 = call float @dx.op.binary.f32(i32 36, float %7236, float %7226)  ; FMin(a,b)
  %7288 = fsub fast float %7236, %7287
  %7289 = fsub fast float %7288, %7225
  %7290 = call float @dx.op.unary.f32(i32 6, float %7289)  ; FAbs(value)
  %7291 = fadd fast float %7288, %7225
  %7292 = fmul fast float %7291, %7156
  %7293 = fadd fast float %7292, %7169
  %7294 = fmul fast float %7293, %7290
  %7295 = fsub fast float %7231, %7294
  br label %7307

; <label>:7296                                    ; preds = %7224
  br i1 %7238, label %7297, label %7307

; <label>:7297                                    ; preds = %7296
  %7298 = call float @dx.op.binary.f32(i32 35, float %7226, float %7236)  ; FMax(a,b)
  %7299 = icmp eq i32 %7175, 0
  %7300 = select i1 %7299, float %7236, float 0.000000e+00
  %7301 = fsub fast float -0.000000e+00, %7300
  %7302 = call float @dx.op.unary.f32(i32 6, float %7301)  ; FAbs(value)
  %7303 = fmul fast float %7300, %7156
  %7304 = fadd fast float %7303, %7169
  %7305 = fmul fast float %7302, %7304
  %7306 = fsub fast float %7231, %7305
  br label %7307

; <label>:7307                                    ; preds = %7297, %7296, %7286, %7285
  %7308 = phi float [ %7226, %7285 ], [ %7226, %7286 ], [ %7298, %7297 ], [ %7226, %7296 ]
  %7309 = phi float [ 0.000000e+00, %7285 ], [ %7290, %7286 ], [ %7302, %7297 ], [ 0.000000e+00, %7296 ]
  %7310 = phi float [ %7231, %7285 ], [ %7295, %7286 ], [ %7306, %7297 ], [ %7231, %7296 ]
  %7311 = phi float [ %7236, %7285 ], [ %7236, %7286 ], [ %7225, %7297 ], [ %7225, %7296 ]
  %7312 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7312, align 4, !tbaa !120, !noalias !122
  %7313 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7313, align 4, !tbaa !120, !noalias !122
  %7314 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7314, align 4, !tbaa !120, !noalias !122
  %7315 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7315, align 4, !tbaa !120, !noalias !122
  %7316 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7316, align 4, !tbaa !120, !noalias !122
  %7317 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7317, align 4, !tbaa !120, !noalias !122
  %7318 = icmp sgt i32 %7177, 0
  br i1 %7318, label %7319, label %7380

; <label>:7319                                    ; preds = %7307
  br label %7320

; <label>:7320                                    ; preds = %7369, %7319
  %7321 = phi i32 [ %7370, %7369 ], [ 0, %7319 ]
  %7322 = phi i32 [ %7371, %7369 ], [ 0, %7319 ]
  %7323 = add nuw i32 %7322, 171
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7323)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7326 = extractvalue %dx.types.CBufRet.f32 %7324, 1
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7329 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7330 = fsub fast float %7325, %7328
  %7331 = fsub fast float %7326, %7329
  %7332 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7333 = fsub fast float -0.000000e+00, %7330
  %7334 = fsub fast float -0.000000e+00, %7331
  %7335 = call float @dx.op.dot2.f32(i32 54, float %7154, float %7155, float %7333, float %7334)  ; Dot2(ax,ay,bx,by)
  %7336 = fmul fast float %7335, 2.000000e+00
  %7337 = call float @dx.op.dot2.f32(i32 54, float %7333, float %7334, float %7333, float %7334)  ; Dot2(ax,ay,bx,by)
  %7338 = fmul fast float %7332, %7332
  %7339 = fsub fast float %7337, %7338
  %7340 = fmul fast float %7336, %7336
  %7341 = fmul fast float %7197, %7339
  %7342 = fsub fast float %7340, %7341
  %7343 = fcmp fast ogt float %7342, 0.000000e+00
  br i1 %7343, label %7344, label %7359

; <label>:7344                                    ; preds = %7320
  %7345 = fcmp fast ogt float %7336, 0.000000e+00
  %7346 = call float @dx.op.unary.f32(i32 24, float %7342)  ; Sqrt(value)
  %7347 = fsub fast float -0.000000e+00, %7346
  %7348 = select i1 %7345, float %7346, float %7347
  %7349 = fadd fast float %7348, %7336
  %7350 = fmul float %7349, -5.000000e-01
  %7351 = fdiv fast float %7350, %7190
  %7352 = call float @dx.op.binary.f32(i32 35, float %7351, float 0.000000e+00)  ; FMax(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7225, float %7352)  ; FMin(a,b)
  %7354 = fdiv fast float %7339, %7350
  %7355 = call float @dx.op.binary.f32(i32 35, float %7354, float 0.000000e+00)  ; FMax(a,b)
  %7356 = call float @dx.op.binary.f32(i32 36, float %7225, float %7355)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 36, float %7353, float %7356)  ; FMin(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7353, float %7356)  ; FMax(a,b)
  br label %7359

; <label>:7359                                    ; preds = %7344, %7320
  %7360 = phi float [ %7358, %7344 ], [ -1.000000e+00, %7320 ]
  %7361 = phi float [ %7357, %7344 ], [ -1.000000e+00, %7320 ]
  %7362 = phi i1 [ true, %7344 ], [ false, %7320 ]
  br i1 %7362, label %7363, label %7369

; <label>:7363                                    ; preds = %7359
  %7364 = call float @dx.op.binary.f32(i32 35, float %7308, float %7361)  ; FMax(a,b)
  %7365 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7322
  store float %7364, float* %7365, align 4, !tbaa !120, !noalias !122
  %7366 = call float @dx.op.binary.f32(i32 35, float %7308, float %7360)  ; FMax(a,b)
  %7367 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7322
  store float %7366, float* %7367, align 4, !tbaa !120, !noalias !122
  %7368 = add nsw i32 %7321, 1
  br label %7369

; <label>:7369                                    ; preds = %7363, %7359
  %7370 = phi i32 [ %7368, %7363 ], [ %7321, %7359 ]
  %7371 = add nuw nsw i32 %7322, 1
  %7372 = icmp eq i32 %7371, %7177
  br i1 %7372, label %7373, label %7320

; <label>:7373                                    ; preds = %7369
  %7374 = load float, float* %7314, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7375 = load float, float* %7313, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7376 = load float, float* %7312, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7377 = load float, float* %7317, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7378 = load float, float* %7316, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7379 = load float, float* %7315, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7380

; <label>:7380                                    ; preds = %7373, %7307
  %7381 = phi float [ -1.000000e+00, %7307 ], [ %7379, %7373 ]
  %7382 = phi float [ -1.000000e+00, %7307 ], [ %7378, %7373 ]
  %7383 = phi float [ -1.000000e+00, %7307 ], [ %7377, %7373 ]
  %7384 = phi float [ -1.000000e+00, %7307 ], [ %7376, %7373 ]
  %7385 = phi float [ -1.000000e+00, %7307 ], [ %7375, %7373 ]
  %7386 = phi float [ -1.000000e+00, %7307 ], [ %7374, %7373 ]
  %7387 = phi i32 [ 0, %7307 ], [ %7370, %7373 ]
  %7388 = call float @dx.op.binary.f32(i32 36, float %7385, float %7386)  ; FMin(a,b)
  %7389 = call float @dx.op.binary.f32(i32 36, float %7384, float %7388)  ; FMin(a,b)
  %7390 = call float @dx.op.binary.f32(i32 35, float %7384, float %7385)  ; FMax(a,b)
  %7391 = call float @dx.op.binary.f32(i32 36, float %7390, float %7386)  ; FMin(a,b)
  %7392 = call float @dx.op.binary.f32(i32 36, float %7384, float %7385)  ; FMin(a,b)
  %7393 = call float @dx.op.binary.f32(i32 35, float %7392, float %7391)  ; FMax(a,b)
  %7394 = call float @dx.op.binary.f32(i32 35, float %7385, float %7386)  ; FMax(a,b)
  %7395 = call float @dx.op.binary.f32(i32 35, float %7384, float %7394)  ; FMax(a,b)
  store float %7389, float* %7312, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7393, float* %7313, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7395, float* %7314, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7396 = call float @dx.op.binary.f32(i32 36, float %7382, float %7383)  ; FMin(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7381, float %7396)  ; FMin(a,b)
  %7398 = call float @dx.op.binary.f32(i32 35, float %7381, float %7382)  ; FMax(a,b)
  %7399 = call float @dx.op.binary.f32(i32 36, float %7398, float %7383)  ; FMin(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7381, float %7382)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7400, float %7399)  ; FMax(a,b)
  %7402 = call float @dx.op.binary.f32(i32 35, float %7382, float %7383)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7381, float %7402)  ; FMax(a,b)
  store float %7397, float* %7315, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7401, float* %7316, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7403, float* %7317, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7404 = sub nsw i32 3, %7387
  %7405 = icmp sgt i32 %7404, 2
  br i1 %7405, label %7406, label %7444

; <label>:7406                                    ; preds = %7380
  %7407 = icmp eq i32 %7175, 0
  %7408 = fsub fast float %7225, %7309
  %7409 = select i1 %7407, float %7408, float %7309
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7418 = extractvalue %dx.types.CBufRet.f32 %7414, 3
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 3
  %7421 = call float @dx.op.binary.f32(i32 36, float %7310, float %7420)  ; FMin(a,b)
  %7422 = fmul fast float %7418, %7409
  %7423 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7424 = fsub fast float %7415, %7411
  %7425 = fsub fast float %7416, %7412
  %7426 = fsub fast float %7417, %7413
  %7427 = fmul fast float %7423, %7424
  %7428 = fmul fast float %7423, %7425
  %7429 = fmul fast float %7423, %7426
  %7430 = fadd fast float %7427, %7411
  %7431 = fadd fast float %7428, %7412
  %7432 = fadd fast float %7429, %7413
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = fadd fast float %7435, %7434
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7439 = extractvalue %dx.types.CBufRet.f32 %7433, 3
  %7440 = fadd fast float %7439, %7438
  %7441 = call float @dx.op.unary.f32(i32 7, float %7440)  ; Saturate(value)
  %7442 = fmul fast float %7437, %7421
  %7443 = fmul fast float %7442, %7441
  br label %7526

; <label>:7444                                    ; preds = %7380
  %7445 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7404
  %7446 = load float, float* %7445, align 4, !tbaa !120, !noalias !122
  %7447 = fcmp fast olt float %7446, %7311
  %7448 = icmp sgt i32 %7387, 0
  %7449 = and i1 %7448, %7447
  br i1 %7449, label %7450, label %7487

; <label>:7450                                    ; preds = %7444
  br label %7451

; <label>:7451                                    ; preds = %7480, %7450
  %7452 = phi float [ %7481, %7480 ], [ %7309, %7450 ]
  %7453 = phi float [ %7482, %7480 ], [ %7310, %7450 ]
  %7454 = phi float [ %7462, %7480 ], [ %7446, %7450 ]
  %7455 = phi i32 [ %7459, %7480 ], [ %7404, %7450 ]
  %7456 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7455
  %7457 = load float, float* %7456, align 4, !tbaa !120, !noalias !122
  %7458 = icmp slt i32 %7455, 2
  %7459 = add nsw i32 %7455, 1
  %7460 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7459
  %7461 = load float, float* %7460, align 4, !tbaa !120, !noalias !122
  %7462 = select i1 %7458, float %7461, float %7225
  %7463 = call float @dx.op.binary.f32(i32 36, float %7462, float %7457)  ; FMin(a,b)
  %7464 = call float @dx.op.binary.f32(i32 36, float %7311, float %7463)  ; FMin(a,b)
  %7465 = icmp eq i32 %7175, 0
  %7466 = fadd fast float %7464, %7454
  %7467 = fmul fast float %7466, %7156
  %7468 = fadd fast float %7467, %7169
  br i1 %7465, label %7474, label %7469

; <label>:7469                                    ; preds = %7451
  %7470 = fsub fast float %7464, %7454
  %7471 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7470)  ; FMax(a,b)
  %7472 = fmul fast float %7471, %7468
  %7473 = fadd fast float %7472, %7453
  br label %7480

; <label>:7474                                    ; preds = %7451
  %7475 = fsub fast float %7454, %7464
  %7476 = call float @dx.op.unary.f32(i32 6, float %7475)  ; FAbs(value)
  %7477 = fadd fast float %7476, %7452
  %7478 = fmul fast float %7476, %7468
  %7479 = fsub fast float %7453, %7478
  br label %7480

; <label>:7480                                    ; preds = %7474, %7469
  %7481 = phi float [ %7471, %7469 ], [ %7477, %7474 ]
  %7482 = phi float [ %7473, %7469 ], [ %7479, %7474 ]
  %7483 = fcmp fast olt float %7462, %7311
  %7484 = icmp slt i32 %7459, 3
  %7485 = and i1 %7484, %7483
  br i1 %7485, label %7451, label %7486

; <label>:7486                                    ; preds = %7480
  br label %7487

; <label>:7487                                    ; preds = %7486, %7444
  %7488 = phi float [ %7309, %7444 ], [ %7481, %7486 ]
  %7489 = phi float [ %7310, %7444 ], [ %7482, %7486 ]
  %7490 = fsub fast float %7225, %7488
  %7491 = select i1 %7227, float %7488, float %7490
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.CBufRet.f32 %7492, 1
  %7495 = extractvalue %dx.types.CBufRet.f32 %7492, 2
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 3
  %7503 = call float @dx.op.binary.f32(i32 36, float %7489, float %7502)  ; FMin(a,b)
  %7504 = fmul fast float %7500, %7491
  %7505 = call float @dx.op.unary.f32(i32 7, float %7504)  ; Saturate(value)
  %7506 = fsub fast float %7497, %7493
  %7507 = fsub fast float %7498, %7494
  %7508 = fsub fast float %7499, %7495
  %7509 = fmul fast float %7505, %7506
  %7510 = fmul fast float %7505, %7507
  %7511 = fmul fast float %7505, %7508
  %7512 = fadd fast float %7509, %7493
  %7513 = fadd fast float %7510, %7494
  %7514 = fadd fast float %7511, %7495
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 0
  %7517 = extractvalue %dx.types.CBufRet.f32 %7515, 1
  %7518 = fadd fast float %7517, %7516
  %7519 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7515, 2
  %7521 = extractvalue %dx.types.CBufRet.f32 %7515, 3
  %7522 = fadd fast float %7521, %7520
  %7523 = call float @dx.op.unary.f32(i32 7, float %7522)  ; Saturate(value)
  %7524 = fmul fast float %7519, %7503
  %7525 = fmul fast float %7524, %7523
  br label %7526

; <label>:7526                                    ; preds = %7487, %7406, %7241, %7223, %7221
  %7527 = phi float [ %7250, %7241 ], [ %7409, %7406 ], [ %7491, %7487 ], [ 0.000000e+00, %7221 ], [ 0.000000e+00, %7223 ]
  %7528 = phi float [ %7284, %7241 ], [ %7443, %7406 ], [ %7525, %7487 ], [ 0.000000e+00, %7221 ], [ 0.000000e+00, %7223 ]
  %7529 = phi float [ %7271, %7241 ], [ %7430, %7406 ], [ %7512, %7487 ], [ 0.000000e+00, %7221 ], [ 0.000000e+00, %7223 ]
  %7530 = phi float [ %7272, %7241 ], [ %7431, %7406 ], [ %7513, %7487 ], [ 0.000000e+00, %7221 ], [ 0.000000e+00, %7223 ]
  %7531 = phi float [ %7273, %7241 ], [ %7432, %7406 ], [ %7514, %7487 ], [ 0.000000e+00, %7221 ], [ 0.000000e+00, %7223 ]
  %7532 = fmul fast float %7164, %7528
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7535 = fsub fast float %7171, %7534
  %7536 = fcmp fast olt float %7532, -2.000000e+01
  %7537 = call float @dx.op.unary.f32(i32 21, float %7532)  ; Exp(value)
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 2
  %7540 = extractvalue %dx.types.CBufRet.f32 %7538, 3
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7543 = fmul fast float %7540, %7535
  %7544 = call float @dx.op.unary.f32(i32 7, float %7543)  ; Saturate(value)
  %7545 = fsub fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7156, 5.000000e-01
  %7547 = fadd fast float %7546, 5.000000e-01
  %7548 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7549 = fsub fast float 1.000000e+00, %7548
  %7550 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7545)  ; FMax(a,b)
  %7551 = fdiv fast float %7549, %7550
  %7552 = fsub fast float %7535, %7113
  %7553 = call float @dx.op.unary.f32(i32 6, float %7552)  ; FAbs(value)
  %7554 = fmul fast float %7553, %7539
  %7555 = call float @dx.op.unary.f32(i32 7, float %7551)  ; Saturate(value)
  %7556 = fsub fast float 1.000000e+00, %7554
  %7557 = fmul fast float %7556, %7555
  %7558 = fadd fast float %7557, %7554
  %7559 = fmul fast float %7542, %7535
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fsub fast float 1.000000e+00, %7558
  %7562 = fmul fast float %7561, %7560
  %7563 = fadd fast float %7562, %7558
  %7564 = call float @dx.op.unary.f32(i32 7, float %7563)  ; Saturate(value)
  %7565 = fadd fast float %7537, -1.000000e+00
  %7566 = select i1 %7536, float -1.000000e+00, float %7565
  %7567 = fmul fast float %7564, %7566
  %7568 = fadd fast float %7567, 1.000000e+00
  %7569 = fsub fast float -0.000000e+00, %7567
  %7570 = fmul fast float %7529, %7569
  %7571 = fmul fast float %7530, %7569
  %7572 = fmul fast float %7531, %7569
  br label %7573

; <label>:7573                                    ; preds = %7526, %7122
  %7574 = phi float [ %7527, %7526 ], [ 0.000000e+00, %7122 ]
  %7575 = phi float [ %7568, %7526 ], [ 1.000000e+00, %7122 ]
  %7576 = phi float [ %7570, %7526 ], [ 0.000000e+00, %7122 ]
  %7577 = phi float [ %7571, %7526 ], [ 0.000000e+00, %7122 ]
  %7578 = phi float [ %7572, %7526 ], [ 0.000000e+00, %7122 ]
  %7579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7580 = extractvalue %dx.types.CBufRet.f32 %7579, 1
  %7581 = fsub fast float 1.000000e+00, %7575
  %7582 = fmul fast float %7581, %7157
  %7583 = fmul fast float %7582, %7580
  %7584 = fsub fast float %7157, %7583
  br i1 %7150, label %7585, label %7614, !dx.controlflow.hints !158

; <label>:7585                                    ; preds = %7573
  %7586 = fmul fast float %7158, %7147
  %7587 = fadd fast float %7586, %7148
  %7588 = call float @dx.op.unary.f32(i32 7, float %7587)  ; Saturate(value)
  %7589 = fmul fast float %7129, %7584
  %7590 = fsub fast float -0.000000e+00, %7589
  %7591 = fmul fast float %7130, %7584
  %7592 = fsub fast float -0.000000e+00, %7591
  %7593 = call float @dx.op.unary.f32(i32 21, float %7590)  ; Exp(value)
  %7594 = call float @dx.op.unary.f32(i32 21, float %7592)  ; Exp(value)
  %7595 = call float @dx.op.binary.f32(i32 35, float %7137, float %7593)  ; FMax(a,b)
  %7596 = call float @dx.op.binary.f32(i32 35, float %7137, float %7594)  ; FMax(a,b)
  %7597 = fsub fast float %7596, %7595
  %7598 = fmul fast float %7597, %7588
  %7599 = fadd fast float %7598, %7595
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = fsub fast float %7134, %7139
  %7602 = fsub fast float %7135, %7140
  %7603 = fsub fast float %7136, %7141
  %7604 = fmul fast float %7588, %7601
  %7605 = fmul fast float %7588, %7602
  %7606 = fmul fast float %7588, %7603
  %7607 = fadd fast float %7604, %7139
  %7608 = fadd fast float %7605, %7140
  %7609 = fadd fast float %7606, %7141
  %7610 = fsub fast float 1.000000e+00, %7600
  %7611 = fmul fast float %7610, %7607
  %7612 = fmul fast float %7610, %7608
  %7613 = fmul fast float %7610, %7609
  br label %7673

; <label>:7614                                    ; preds = %7573
  %7615 = fmul fast float %7584, %7146
  %7616 = call float @dx.op.unary.f32(i32 7, float %7615)  ; Saturate(value)
  %7617 = fsub fast float 2.000000e+00, %7616
  %7618 = fmul fast float %7616, 9.921875e-01
  %7619 = fmul fast float %7618, %7617
  %7620 = fadd fast float %7619, 3.906250e-03
  %7621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7620, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = fsub fast float %7616, %7622
  %7624 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7623)  ; FMax(a,b)
  %7625 = fmul fast float %7132, %7113
  %7626 = call float @dx.op.unary.f32(i32 6, float %7625)  ; FAbs(value)
  %7627 = fcmp fast ogt float %7626, 0x3EB0C6F7A0000000
  br i1 %7627, label %7628, label %7634, !dx.controlflow.hints !159

; <label>:7628                                    ; preds = %7614
  %7629 = fmul fast float %7625, 0xBFF7154760000000
  %7630 = call float @dx.op.unary.f32(i32 21, float %7629)  ; Exp(value)
  %7631 = fsub fast float 1.000000e+00, %7630
  %7632 = fdiv fast float %7631, %7625
  %7633 = fmul fast float %7632, %7142
  br label %7634

; <label>:7634                                    ; preds = %7628, %7614
  %7635 = phi float [ %7633, %7628 ], [ %7142, %7614 ]
  %7636 = fadd fast float %7635, %7144
  %7637 = fmul fast float %7636, %7624
  %7638 = fmul fast float %7129, %7637
  %7639 = fsub fast float -0.000000e+00, %7638
  %7640 = fmul fast float %7130, %7637
  %7641 = fsub fast float -0.000000e+00, %7640
  %7642 = fmul fast float %7131, %7637
  %7643 = fsub fast float -0.000000e+00, %7642
  %7644 = call float @dx.op.unary.f32(i32 21, float %7639)  ; Exp(value)
  %7645 = call float @dx.op.unary.f32(i32 21, float %7641)  ; Exp(value)
  %7646 = call float @dx.op.unary.f32(i32 21, float %7643)  ; Exp(value)
  %7647 = fmul fast float %7158, %7158
  %7648 = fadd fast float %7647, 1.000000e+00
  %7649 = fmul fast float %7648, 0x3FAE8EC8A0000000
  %7650 = fmul fast float %7649, %7139
  %7651 = fmul fast float %7649, %7140
  %7652 = fmul fast float %7649, %7141
  %7653 = fmul fast float %7158, %7137
  %7654 = fsub fast float 1.000000e+00, %7653
  %7655 = fmul fast float %7137, %7137
  %7656 = fsub fast float 1.000000e+00, %7655
  %7657 = fmul fast float %7656, 0x3FB45F3060000000
  %7658 = fmul fast float %7654, %7654
  %7659 = fdiv fast float 1.000000e+00, %7658
  %7660 = fmul fast float %7657, %7659
  %7661 = fmul fast float %7660, %7134
  %7662 = fmul fast float %7660, %7135
  %7663 = fmul fast float %7660, %7136
  %7664 = fadd fast float %7661, %7650
  %7665 = fadd fast float %7662, %7651
  %7666 = fadd fast float %7663, %7652
  %7667 = fsub fast float 1.000000e+00, %7644
  %7668 = fsub fast float 1.000000e+00, %7645
  %7669 = fsub fast float 1.000000e+00, %7646
  %7670 = fmul fast float %7664, %7667
  %7671 = fmul fast float %7665, %7668
  %7672 = fmul fast float %7666, %7669
  br label %7673

; <label>:7673                                    ; preds = %7634, %7585
  %7674 = phi float [ %7611, %7585 ], [ %7670, %7634 ]
  %7675 = phi float [ %7612, %7585 ], [ %7671, %7634 ]
  %7676 = phi float [ %7613, %7585 ], [ %7672, %7634 ]
  %7677 = phi float [ %7600, %7585 ], [ %7644, %7634 ]
  %7678 = phi float [ %7600, %7585 ], [ %7645, %7634 ]
  %7679 = phi float [ %7600, %7585 ], [ %7646, %7634 ]
  br i1 %7166, label %7680, label %7878, !dx.controlflow.hints !160

; <label>:7680                                    ; preds = %7673
  %7681 = extractvalue %dx.types.CBufRet.f32 %7579, 0
  %7682 = fmul fast float %7681, %7581
  %7683 = fsub fast float %7576, %7674
  %7684 = fsub fast float %7577, %7675
  %7685 = fsub fast float %7578, %7676
  %7686 = fmul fast float %7682, %7683
  %7687 = fmul fast float %7682, %7684
  %7688 = fmul fast float %7682, %7685
  %7689 = fadd fast float %7686, %7674
  %7690 = fadd fast float %7687, %7675
  %7691 = fadd fast float %7688, %7676
  %7692 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7677)  ; FMax(a,b)
  %7693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7678)  ; FMax(a,b)
  %7694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7679)  ; FMax(a,b)
  %7695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7575)  ; FMax(a,b)
  %7696 = call float @dx.op.binary.f32(i32 35, float %7574, float %7584)  ; FMax(a,b)
  %7697 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7696)  ; FMax(a,b)
  %7698 = fdiv fast float %7574, %7697
  %7699 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7700 = fdiv fast float %7584, %7697
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fcmp fast une float %7695, 1.000000e+00
  br i1 %7702, label %7703, label %7716, !dx.controlflow.hints !161

; <label>:7703                                    ; preds = %7680
  %7704 = call float @dx.op.unary.f32(i32 23, float %7695)  ; Log(value)
  %7705 = fmul fast float %7704, 0x3FE62E4300000000
  %7706 = fmul fast float %7576, %7705
  %7707 = fsub fast float -0.000000e+00, %7706
  %7708 = fmul fast float %7577, %7705
  %7709 = fsub fast float -0.000000e+00, %7708
  %7710 = fmul fast float %7578, %7705
  %7711 = fsub fast float -0.000000e+00, %7710
  %7712 = fsub fast float 1.000000e+00, %7695
  %7713 = fdiv fast float %7707, %7712
  %7714 = fdiv fast float %7709, %7712
  %7715 = fdiv fast float %7711, %7712
  br label %7716

; <label>:7716                                    ; preds = %7703, %7680
  %7717 = phi float [ %7713, %7703 ], [ %7576, %7680 ]
  %7718 = phi float [ %7714, %7703 ], [ %7577, %7680 ]
  %7719 = phi float [ %7715, %7703 ], [ %7578, %7680 ]
  %7720 = phi float [ %7705, %7703 ], [ 0.000000e+00, %7680 ]
  %7721 = fcmp fast une float %7692, 1.000000e+00
  br i1 %7721, label %7722, label %7729, !dx.controlflow.hints !162

; <label>:7722                                    ; preds = %7716
  %7723 = call float @dx.op.unary.f32(i32 23, float %7692)  ; Log(value)
  %7724 = fmul fast float %7723, 0x3FE62E4300000000
  %7725 = fmul fast float %7689, %7724
  %7726 = fsub fast float -0.000000e+00, %7725
  %7727 = fsub fast float 1.000000e+00, %7692
  %7728 = fdiv fast float %7726, %7727
  br label %7729

; <label>:7729                                    ; preds = %7722, %7716
  %7730 = phi float [ %7728, %7722 ], [ %7689, %7716 ]
  %7731 = phi float [ %7724, %7722 ], [ 0.000000e+00, %7716 ]
  %7732 = fcmp fast une float %7693, 1.000000e+00
  br i1 %7732, label %7733, label %7740, !dx.controlflow.hints !162

; <label>:7733                                    ; preds = %7729
  %7734 = call float @dx.op.unary.f32(i32 23, float %7693)  ; Log(value)
  %7735 = fmul fast float %7734, 0x3FE62E4300000000
  %7736 = fmul fast float %7690, %7735
  %7737 = fsub fast float -0.000000e+00, %7736
  %7738 = fsub fast float 1.000000e+00, %7693
  %7739 = fdiv fast float %7737, %7738
  br label %7740

; <label>:7740                                    ; preds = %7733, %7729
  %7741 = phi float [ %7739, %7733 ], [ %7690, %7729 ]
  %7742 = phi float [ %7735, %7733 ], [ 0.000000e+00, %7729 ]
  %7743 = fcmp fast une float %7694, 1.000000e+00
  br i1 %7743, label %7744, label %7751, !dx.controlflow.hints !162

; <label>:7744                                    ; preds = %7740
  %7745 = call float @dx.op.unary.f32(i32 23, float %7694)  ; Log(value)
  %7746 = fmul fast float %7745, 0x3FE62E4300000000
  %7747 = fmul fast float %7691, %7746
  %7748 = fsub fast float -0.000000e+00, %7747
  %7749 = fsub fast float 1.000000e+00, %7694
  %7750 = fdiv fast float %7748, %7749
  br label %7751

; <label>:7751                                    ; preds = %7744, %7740
  %7752 = phi float [ %7750, %7744 ], [ %7691, %7740 ]
  %7753 = phi float [ %7746, %7744 ], [ 0.000000e+00, %7740 ]
  %7754 = fmul fast float %7717, %7701
  %7755 = fmul fast float %7718, %7701
  %7756 = fmul fast float %7719, %7701
  %7757 = fmul fast float %7720, %7701
  %7758 = fmul fast float %7730, %7699
  %7759 = fmul fast float %7741, %7699
  %7760 = fmul fast float %7752, %7699
  %7761 = fmul fast float %7731, %7699
  %7762 = fmul fast float %7742, %7699
  %7763 = fmul fast float %7753, %7699
  %7764 = fadd fast float %7758, %7754
  %7765 = fadd fast float %7759, %7755
  %7766 = fadd fast float %7760, %7756
  %7767 = fadd fast float %7761, %7757
  %7768 = fadd fast float %7762, %7757
  %7769 = fadd fast float %7763, %7757
  %7770 = fcmp fast une float %7767, 0.000000e+00
  br i1 %7770, label %7771, label %7778, !dx.controlflow.hints !163

; <label>:7771                                    ; preds = %7751
  %7772 = fmul fast float %7767, 0x3FF7154760000000
  %7773 = call float @dx.op.unary.f32(i32 21, float %7772)  ; Exp(value)
  %7774 = fsub fast float 1.000000e+00, %7773
  %7775 = fmul fast float %7764, %7774
  %7776 = fsub fast float -0.000000e+00, %7775
  %7777 = fdiv fast float %7776, %7767
  br label %7778

; <label>:7778                                    ; preds = %7771, %7751
  %7779 = phi float [ %7773, %7771 ], [ 1.000000e+00, %7751 ]
  %7780 = phi float [ %7777, %7771 ], [ %7764, %7751 ]
  %7781 = fcmp fast une float %7768, 0.000000e+00
  br i1 %7781, label %7782, label %7789, !dx.controlflow.hints !163

; <label>:7782                                    ; preds = %7778
  %7783 = fmul fast float %7768, 0x3FF7154760000000
  %7784 = call float @dx.op.unary.f32(i32 21, float %7783)  ; Exp(value)
  %7785 = fsub fast float 1.000000e+00, %7784
  %7786 = fmul fast float %7765, %7785
  %7787 = fsub fast float -0.000000e+00, %7786
  %7788 = fdiv fast float %7787, %7768
  br label %7789

; <label>:7789                                    ; preds = %7782, %7778
  %7790 = phi float [ %7784, %7782 ], [ 1.000000e+00, %7778 ]
  %7791 = phi float [ %7788, %7782 ], [ %7765, %7778 ]
  %7792 = fcmp fast une float %7769, 0.000000e+00
  br i1 %7792, label %7793, label %7800, !dx.controlflow.hints !163

; <label>:7793                                    ; preds = %7789
  %7794 = fmul fast float %7769, 0x3FF7154760000000
  %7795 = call float @dx.op.unary.f32(i32 21, float %7794)  ; Exp(value)
  %7796 = fsub fast float 1.000000e+00, %7795
  %7797 = fmul fast float %7766, %7796
  %7798 = fsub fast float -0.000000e+00, %7797
  %7799 = fdiv fast float %7798, %7769
  br label %7800

; <label>:7800                                    ; preds = %7793, %7789
  %7801 = phi float [ %7795, %7793 ], [ 1.000000e+00, %7789 ]
  %7802 = phi float [ %7799, %7793 ], [ %7766, %7789 ]
  %7803 = fcmp fast ogt float %7699, %7701
  br i1 %7803, label %7804, label %7824

; <label>:7804                                    ; preds = %7800
  %7805 = fsub fast float 1.000000e+00, %7701
  %7806 = fmul fast float %7717, %7805
  %7807 = fmul fast float %7718, %7805
  %7808 = fmul fast float %7719, %7805
  %7809 = fmul fast float %7720, %7805
  %7810 = fcmp fast une float %7809, 0.000000e+00
  br i1 %7810, label %7811, label %7862, !dx.controlflow.hints !164

; <label>:7811                                    ; preds = %7804
  %7812 = fmul fast float %7809, 0x3FF7154760000000
  %7813 = call float @dx.op.unary.f32(i32 21, float %7812)  ; Exp(value)
  %7814 = fsub fast float 1.000000e+00, %7813
  %7815 = fmul fast float %7806, %7814
  %7816 = fsub fast float -0.000000e+00, %7815
  %7817 = fmul fast float %7807, %7814
  %7818 = fsub fast float -0.000000e+00, %7817
  %7819 = fmul fast float %7808, %7814
  %7820 = fsub fast float -0.000000e+00, %7819
  %7821 = fdiv fast float %7816, %7809
  %7822 = fdiv fast float %7818, %7809
  %7823 = fdiv fast float %7820, %7809
  br label %7862

; <label>:7824                                    ; preds = %7800
  %7825 = fsub fast float 1.000000e+00, %7699
  %7826 = fmul fast float %7730, %7825
  %7827 = fmul fast float %7741, %7825
  %7828 = fmul fast float %7752, %7825
  %7829 = fmul fast float %7731, %7825
  %7830 = fmul fast float %7742, %7825
  %7831 = fmul fast float %7753, %7825
  %7832 = fcmp fast une float %7829, 0.000000e+00
  br i1 %7832, label %7833, label %7840, !dx.controlflow.hints !163

; <label>:7833                                    ; preds = %7824
  %7834 = fmul fast float %7829, 0x3FF7154760000000
  %7835 = call float @dx.op.unary.f32(i32 21, float %7834)  ; Exp(value)
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %7826, %7836
  %7838 = fsub fast float -0.000000e+00, %7837
  %7839 = fdiv fast float %7838, %7829
  br label %7840

; <label>:7840                                    ; preds = %7833, %7824
  %7841 = phi float [ %7839, %7833 ], [ %7826, %7824 ]
  %7842 = phi float [ %7835, %7833 ], [ 1.000000e+00, %7824 ]
  %7843 = fcmp fast une float %7830, 0.000000e+00
  br i1 %7843, label %7844, label %7851, !dx.controlflow.hints !163

; <label>:7844                                    ; preds = %7840
  %7845 = fmul fast float %7830, 0x3FF7154760000000
  %7846 = call float @dx.op.unary.f32(i32 21, float %7845)  ; Exp(value)
  %7847 = fsub fast float 1.000000e+00, %7846
  %7848 = fmul fast float %7827, %7847
  %7849 = fsub fast float -0.000000e+00, %7848
  %7850 = fdiv fast float %7849, %7830
  br label %7851

; <label>:7851                                    ; preds = %7844, %7840
  %7852 = phi float [ %7850, %7844 ], [ %7827, %7840 ]
  %7853 = phi float [ %7846, %7844 ], [ 1.000000e+00, %7840 ]
  %7854 = fcmp fast une float %7831, 0.000000e+00
  br i1 %7854, label %7855, label %7862, !dx.controlflow.hints !163

; <label>:7855                                    ; preds = %7851
  %7856 = fmul fast float %7831, 0x3FF7154760000000
  %7857 = call float @dx.op.unary.f32(i32 21, float %7856)  ; Exp(value)
  %7858 = fsub fast float 1.000000e+00, %7857
  %7859 = fmul fast float %7828, %7858
  %7860 = fsub fast float -0.000000e+00, %7859
  %7861 = fdiv fast float %7860, %7831
  br label %7862

; <label>:7862                                    ; preds = %7855, %7851, %7811, %7804
  %7863 = phi float [ %7861, %7855 ], [ %7823, %7811 ], [ %7808, %7804 ], [ %7828, %7851 ]
  %7864 = phi float [ %7852, %7855 ], [ %7822, %7811 ], [ %7807, %7804 ], [ %7852, %7851 ]
  %7865 = phi float [ %7841, %7855 ], [ %7821, %7811 ], [ %7806, %7804 ], [ %7841, %7851 ]
  %7866 = phi float [ %7857, %7855 ], [ %7813, %7811 ], [ 1.000000e+00, %7804 ], [ 1.000000e+00, %7851 ]
  %7867 = phi float [ %7853, %7855 ], [ %7813, %7811 ], [ 1.000000e+00, %7804 ], [ %7853, %7851 ]
  %7868 = phi float [ %7842, %7855 ], [ %7813, %7811 ], [ 1.000000e+00, %7804 ], [ %7842, %7851 ]
  %7869 = fmul fast float %7868, %7780
  %7870 = fmul fast float %7867, %7791
  %7871 = fmul fast float %7866, %7802
  %7872 = fadd fast float %7869, %7865
  %7873 = fadd fast float %7870, %7864
  %7874 = fadd fast float %7871, %7863
  %7875 = fmul fast float %7868, %7779
  %7876 = fmul fast float %7867, %7790
  %7877 = fmul fast float %7866, %7801
  br label %7878

; <label>:7878                                    ; preds = %7862, %7673
  %7879 = phi float [ %7877, %7862 ], [ %7679, %7673 ]
  %7880 = phi float [ %7876, %7862 ], [ %7678, %7673 ]
  %7881 = phi float [ %7875, %7862 ], [ %7677, %7673 ]
  %7882 = phi float [ %7874, %7862 ], [ %7676, %7673 ]
  %7883 = phi float [ %7873, %7862 ], [ %7675, %7673 ]
  %7884 = phi float [ %7872, %7862 ], [ %7674, %7673 ]
  %7885 = fmul fast float %7884, %6840
  %7886 = fmul fast float %7883, %6840
  %7887 = fmul fast float %7882, %6840
  %7888 = fmul fast float %7881, %7121
  %7889 = call float @dx.op.dot3.f32(i32 55, float %7881, float %7880, float %7879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = call float @dx.op.dot3.f32(i32 55, float %7885, float %7886, float %7887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7891 = select i1 %252, float %7889, float %7881
  %7892 = select i1 %252, float %7889, float %7880
  %7893 = select i1 %252, float 1.000000e+00, float %7879
  %7894 = select i1 %252, float %7890, float %7885
  %7895 = select i1 %252, float 0.000000e+00, float %7886
  %7896 = select i1 %252, float 0.000000e+00, float %7887
  %7897 = fmul fast float %7891, %7115
  %7898 = fmul fast float %7892, %7116
  %7899 = fmul fast float %7893, %7117
  %7900 = fadd fast float %7897, %7894
  %7901 = fadd fast float %7898, %7895
  %7902 = fadd fast float %7896, %7899
  %7903 = fmul fast float %7891, %7118
  %7904 = fmul fast float %7892, %7119
  %7905 = fmul fast float %7893, %7120
  %7906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.i32 %7906, 0
  %7908 = icmp eq i32 %7907, 0
  br i1 %7908, label %8276, label %7909, !dx.controlflow.hints !165

; <label>:7909                                    ; preds = %7878
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 2
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 3
  %7913 = fmul fast float %7911, %95
  %7914 = fmul fast float %7912, %96
  %7915 = fmul fast float %7913, 2.000000e+00
  %7916 = fmul fast float %7914, 2.000000e+00
  %7917 = fsub fast float 1.000000e+00, %7915
  %7918 = fsub fast float 1.000000e+00, %7916
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7923 = fmul fast float %7917, %7920
  %7924 = fmul fast float %7917, %7921
  %7925 = fmul fast float %7917, %7922
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = fmul fast float %7918, %7927
  %7931 = fmul fast float %7918, %7928
  %7932 = fmul fast float %7918, %7929
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7937 = fadd fast float %7930, %7934
  %7938 = fadd fast float %7937, %7923
  %7939 = fadd fast float %7931, %7935
  %7940 = fadd fast float %7939, %7924
  %7941 = fadd fast float %7932, %7936
  %7942 = fadd fast float %7941, %7925
  %7943 = fmul fast float %7938, %7114
  %7944 = fmul fast float %7940, %7114
  %7945 = fmul fast float %7942, %7114
  %7946 = fmul fast float %7943, %7943
  %7947 = fmul fast float %7944, %7944
  %7948 = fadd fast float %7946, %7947
  %7949 = fmul fast float %7945, %7945
  %7950 = fadd fast float %7948, %7949
  %7951 = call float @dx.op.unary.f32(i32 24, float %7950)  ; Sqrt(value)
  %7952 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %7953 = fsub fast float %7951, %7952
  %7954 = extractvalue %dx.types.CBufRet.f32 %6841, 2
  %7955 = fmul fast float %7953, %7954
  %7956 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7957 = fadd fast float %7956, -5.000000e-01
  %7958 = fmul fast float %7957, 2.000000e+00
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7961 = call float @dx.op.binary.f32(i32 36, float %7960, float %7958)  ; FMin(a,b)
  %7962 = fsub fast float -0.000000e+00, %7960
  %7963 = fcmp fast ogt float %7961, %7962
  br i1 %7963, label %7964, label %8276, !dx.controlflow.hints !166

; <label>:7964                                    ; preds = %7909
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 3
  %7967 = fcmp fast ogt float %7966, 0.000000e+00
  br i1 %7967, label %7968, label %8043, !dx.controlflow.hints !167

; <label>:7968                                    ; preds = %7964
  %7969 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7970 = extractvalue %dx.types.Dimensions %7969, 0
  %7971 = sitofp i32 %7970 to float
  %7972 = extractvalue %dx.types.Dimensions %7969, 1
  %7973 = sitofp i32 %7972 to float
  %7974 = fmul fast float %7913, %7971
  %7975 = fmul fast float %7914, %7973
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7978 = fsub fast float -0.000000e+00, %7977
  %7979 = fptoui float %7978 to i32
  %7980 = fptoui float %7974 to i32
  %7981 = fptoui float %7975 to i32
  %7982 = and i32 %7979, 31
  %7983 = lshr i32 %7980, %7982
  %7984 = lshr i32 %7981, %7982
  %7985 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7979, i32 %7983, i32 %7984, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7986 = extractvalue %dx.types.ResRet.f32 %7985, 0
  %7987 = fcmp fast olt float %7986, -1.000000e+00
  %7988 = fcmp fast ogt float %7986, -1.000000e+00
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 1
  %7991 = select i1 %7988, float %7990, float 1.000000e+00
  %7992 = fadd fast float %7986, 1.000000e+00
  %7993 = fmul fast float %7991, %7992
  %7994 = call float @dx.op.unary.f32(i32 6, float %7993)  ; FAbs(value)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7996 = fcmp fast oge float %7994, %7995
  %7997 = select i1 %7996, float 0x4197782600000000, float %7994
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7998, 2
  %8002 = select i1 %7987, float %7999, float %7920
  %8003 = select i1 %7987, float %8000, float %7921
  %8004 = select i1 %7987, float %8001, float %7922
  %8005 = fmul fast float %8002, %7917
  %8006 = fmul fast float %8003, %7917
  %8007 = fmul fast float %8004, %7917
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8010 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8011 = extractvalue %dx.types.CBufRet.f32 %8008, 2
  %8012 = select i1 %7987, float %8009, float %7927
  %8013 = select i1 %7987, float %8010, float %7928
  %8014 = select i1 %7987, float %8011, float %7929
  %8015 = fmul fast float %8012, %7918
  %8016 = fmul fast float %8013, %7918
  %8017 = fmul fast float %8014, %7918
  %8018 = fadd fast float %8015, %8005
  %8019 = fadd fast float %8016, %8006
  %8020 = fadd fast float %8017, %8007
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.CBufRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8025 = select i1 %7987, float %8022, float %7934
  %8026 = select i1 %7987, float %8023, float %7935
  %8027 = select i1 %7987, float %8024, float %7936
  %8028 = fadd fast float %8018, %8025
  %8029 = fadd fast float %8019, %8026
  %8030 = fadd fast float %8020, %8027
  %8031 = fmul fast float %8028, %7997
  %8032 = fmul fast float %8029, %7997
  %8033 = fmul fast float %8030, %7997
  %8034 = fmul fast float %8031, %8031
  %8035 = fmul fast float %8032, %8032
  %8036 = fadd fast float %8034, %8035
  %8037 = fmul fast float %8033, %8033
  %8038 = fadd fast float %8036, %8037
  %8039 = call float @dx.op.unary.f32(i32 24, float %8038)  ; Sqrt(value)
  %8040 = fsub fast float %8039, %7952
  %8041 = fmul fast float %8040, %7954
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  br label %8043

; <label>:8043                                    ; preds = %7968, %7964
  %8044 = phi float [ %8042, %7968 ], [ 1.000000e+00, %7964 ]
  %8045 = fmul fast float %7961, 5.000000e-01
  %8046 = fadd fast float %8045, 5.000000e-01
  %8047 = call float @dx.op.unary.f32(i32 22, float %8046)  ; Frc(value)
  %8048 = call float @dx.op.unary.f32(i32 27, float %8047)  ; Round_ni(value)
  %8049 = call float @dx.op.unary.f32(i32 22, float %8047)  ; Frc(value)
  %8050 = fmul fast float %8049, 2.000000e+00
  %8051 = fadd fast float %8050, -1.000000e+00
  %8052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7913, float %7914, float %8048, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8053 = extractvalue %dx.types.ResRet.f32 %8052, 0
  %8054 = extractvalue %dx.types.ResRet.f32 %8052, 1
  %8055 = extractvalue %dx.types.ResRet.f32 %8052, 2
  %8056 = extractvalue %dx.types.ResRet.f32 %8052, 3
  %8057 = fadd fast float %8053, -5.000000e-01
  %8058 = fadd fast float %8055, -5.000000e-01
  %8059 = fmul fast float %8057, 0xBFD5555560000000
  %8060 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8058, float %8059)  ; FMad(a,b,c)
  %8061 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8054, float 0.000000e+00)  ; FMad(a,b,c)
  %8062 = fadd fast float %8061, %8056
  %8063 = fmul fast float %8057, -7.500000e-01
  %8064 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8058, float %8063)  ; FMad(a,b,c)
  %8065 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8054, float 0.000000e+00)  ; FMad(a,b,c)
  %8066 = fadd fast float %8065, %8056
  %8067 = call float @dx.op.binary.f32(i32 35, float %8060, float -1.000000e+00)  ; FMax(a,b)
  %8068 = call float @dx.op.binary.f32(i32 35, float %8062, float -1.000000e+00)  ; FMax(a,b)
  %8069 = call float @dx.op.binary.f32(i32 35, float %8064, float -1.000000e+00)  ; FMax(a,b)
  %8070 = call float @dx.op.binary.f32(i32 35, float %8066, float -1.000000e+00)  ; FMax(a,b)
  %8071 = call float @dx.op.binary.f32(i32 36, float %8067, float 1.000000e+00)  ; FMin(a,b)
  %8072 = call float @dx.op.binary.f32(i32 36, float %8068, float 1.000000e+00)  ; FMin(a,b)
  %8073 = call float @dx.op.binary.f32(i32 36, float %8069, float 1.000000e+00)  ; FMin(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8070, float 1.000000e+00)  ; FMin(a,b)
  %8075 = fcmp fast olt float %8071, 0x3FEFFF8020000000
  br i1 %8075, label %8076, label %8191, !dx.controlflow.hints !168

; <label>:8076                                    ; preds = %8043
  %8077 = extractvalue %dx.types.CBufRet.f32 %7959, 3
  %8078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8079 = extractvalue %dx.types.CBufRet.f32 %8078, 0
  %8080 = extractvalue %dx.types.CBufRet.f32 %8078, 1
  %8081 = extractvalue %dx.types.CBufRet.f32 %8078, 2
  %8082 = extractvalue %dx.types.CBufRet.f32 %8078, 3
  %8083 = fsub fast float %8079, %8071
  %8084 = fsub fast float %8080, %8072
  %8085 = fsub fast float %8081, %8073
  %8086 = fsub fast float %8082, %8074
  %8087 = fmul fast float %8083, %8077
  %8088 = fmul fast float %8084, %8077
  %8089 = fmul fast float %8085, %8077
  %8090 = fmul fast float %8086, %8077
  %8091 = fadd fast float %8087, %8071
  %8092 = fadd fast float %8088, %8072
  %8093 = fsub fast float -0.000000e+00, %8092
  %8094 = fadd fast float %8089, %8073
  %8095 = fadd fast float %8090, %8074
  %8096 = fmul fast float %8091, %8091
  %8097 = fsub fast float %8092, %8096
  %8098 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8097)  ; FMax(a,b)
  %8099 = fdiv fast float 1.000000e+00, %8098
  %8100 = fmul fast float %8092, %8091
  %8101 = fsub fast float %8094, %8100
  %8102 = fsub fast float %8051, %8091
  %8103 = fmul fast float %8051, %8051
  %8104 = fsub fast float %8103, %8092
  %8105 = fmul fast float %8102, %8099
  %8106 = fmul fast float %8105, %8101
  %8107 = fsub fast float %8104, %8106
  %8108 = fmul fast float %8092, %8092
  %8109 = fsub fast float %8095, %8108
  %8110 = fmul fast float %8101, %8101
  %8111 = fmul fast float %8110, %8099
  %8112 = fsub fast float %8109, %8111
  %8113 = fdiv fast float %8107, %8112
  %8114 = fmul fast float %8101, %8113
  %8115 = fsub fast float %8102, %8114
  %8116 = fmul fast float %8115, %8099
  %8117 = fmul fast float %8116, %8091
  %8118 = fsub fast float 1.000000e+00, %8117
  %8119 = fmul fast float %8092, %8113
  %8120 = fsub fast float %8118, %8119
  %8121 = fmul fast float %8116, %8116
  %8122 = fmul fast float %8113, 4.000000e+00
  %8123 = fmul fast float %8122, %8120
  %8124 = fsub fast float %8121, %8123
  %8125 = call float @dx.op.unary.f32(i32 24, float %8124)  ; Sqrt(value)
  %8126 = fcmp fast oge float %8116, 0.000000e+00
  %8127 = fsub fast float -0.000000e+00, %8125
  %8128 = select i1 %8126, float %8127, float %8125
  %8129 = fsub fast float %8128, %8116
  %8130 = fdiv fast float %8129, %8113
  %8131 = fdiv fast float %8120, %8129
  %8132 = fmul fast float %8130, 5.000000e-01
  %8133 = fmul fast float %8131, 2.000000e+00
  %8134 = select i1 %8126, float %8132, float %8133
  %8135 = select i1 %8126, float %8133, float %8132
  %8136 = call float @dx.op.binary.f32(i32 35, float %8134, float %8135)  ; FMax(a,b)
  %8137 = call float @dx.op.binary.f32(i32 36, float %8134, float %8135)  ; FMin(a,b)
  %8138 = fcmp fast ogt float %8051, %8137
  br i1 %8138, label %8139, label %8149

; <label>:8139                                    ; preds = %8076
  %8140 = fsub fast float %8051, %8137
  %8141 = fsub fast float %8136, %8137
  %8142 = fmul fast float %8140, %8141
  %8143 = fmul fast float %8136, %8051
  %8144 = fadd fast float %8136, %8051
  %8145 = fmul fast float %8144, %8091
  %8146 = fadd fast float %8143, %8092
  %8147 = fsub fast float %8146, %8145
  %8148 = fdiv fast float %8147, %8142
  br label %8149

; <label>:8149                                    ; preds = %8139, %8076
  %8150 = phi float [ %8148, %8139 ], [ 0.000000e+00, %8076 ]
  %8151 = fcmp fast ogt float %8051, %8136
  %8152 = fsub fast float %8051, %8136
  br i1 %8151, label %8153, label %8163

; <label>:8153                                    ; preds = %8149
  %8154 = fsub fast float %8136, %8137
  %8155 = fmul fast float %8154, %8152
  %8156 = fmul fast float %8137, %8051
  %8157 = fadd fast float %8137, %8051
  %8158 = fmul fast float %8157, %8091
  %8159 = fsub fast float %8093, %8156
  %8160 = fadd fast float %8159, %8158
  %8161 = fdiv fast float %8160, %8155
  %8162 = fadd fast float %8161, %8150
  br label %8163

; <label>:8163                                    ; preds = %8153, %8149
  %8164 = phi float [ %8162, %8153 ], [ %8150, %8149 ]
  %8165 = fsub fast float %8051, %8137
  %8166 = fmul fast float %8165, %8152
  %8167 = fmul fast float %8137, %8136
  %8168 = fadd fast float %8137, %8136
  %8169 = fmul fast float %8168, %8091
  %8170 = fadd fast float %8167, %8092
  %8171 = fsub fast float %8170, %8169
  %8172 = fdiv fast float %8171, %8166
  %8173 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8174 = fcmp fast oeq float %6842, 0.000000e+00
  %8175 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %8176 = fcmp fast oeq float %8175, 0.000000e+00
  %8177 = or i1 %8174, %8176
  %8178 = fmul fast float %8175, 2.000000e+00
  %8179 = fadd fast float %7960, %7961
  %8180 = fdiv fast float %8179, %8178
  %8181 = call float @dx.op.unary.f32(i32 7, float %8180)  ; Saturate(value)
  %8182 = fmul fast float %8181, 2.000000e+00
  %8183 = fsub fast float 3.000000e+00, %8182
  %8184 = fmul fast float %8181, %8181
  %8185 = fmul fast float %8184, %8183
  %8186 = select i1 %8177, float 1.000000e+00, float %8185
  %8187 = fmul fast float %8172, %6842
  %8188 = fadd fast float %8173, %8187
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  %8190 = fmul fast float %8186, %8189
  br label %8191

; <label>:8191                                    ; preds = %8163, %8043
  %8192 = phi float [ %8190, %8163 ], [ 0.000000e+00, %8043 ]
  %8193 = fsub fast float 1.000000e+00, %8192
  %8194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7913, float %7914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8195 = extractvalue %dx.types.ResRet.f32 %8194, 0
  %8196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.i32 %8196, 2
  %8198 = icmp eq i32 %8197, 0
  br i1 %8198, label %8204, label %8199

; <label>:8199                                    ; preds = %8191
  %8200 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8201 = fadd fast float %8195, -1.000000e+00
  %8202 = fmul fast float %8200, %8201
  %8203 = fadd fast float %8202, 1.000000e+00
  br label %8204

; <label>:8204                                    ; preds = %8199, %8191
  %8205 = phi float [ %8203, %8199 ], [ %8193, %8191 ]
  br i1 %7967, label %8206, label %8224

; <label>:8206                                    ; preds = %8204
  %8207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8208 = extractvalue %dx.types.CBufRet.f32 %8207, 1
  %8209 = fsub fast float %8044, %8208
  %8210 = call float @dx.op.unary.f32(i32 7, float %8209)  ; Saturate(value)
  %8211 = fsub fast float %8044, %7966
  %8212 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8213 = fsub fast float %8210, %8212
  %8214 = fsub fast float %8046, %8212
  %8215 = fdiv fast float %8214, %8213
  %8216 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8217 = fmul fast float %8216, 2.000000e+00
  %8218 = fsub fast float 3.000000e+00, %8217
  %8219 = fsub fast float %8195, %8205
  %8220 = fmul fast float %8216, %8216
  %8221 = fmul fast float %8220, %8219
  %8222 = fmul fast float %8221, %8218
  %8223 = fadd fast float %8222, %8205
  br label %8224

; <label>:8224                                    ; preds = %8206, %8204
  %8225 = phi float [ %8223, %8206 ], [ %8205, %8204 ]
  %8226 = call float @dx.op.binary.f32(i32 35, float %8195, float %8225)  ; FMax(a,b)
  %8227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.i32 %8227, 2
  %8229 = and i32 %8228, 1
  %8230 = icmp eq i32 %8229, 0
  %8231 = fcmp fast une float %8226, 1.000000e+00
  %8232 = and i1 %8231, %8230
  br i1 %8232, label %8233, label %8252

; <label>:8233                                    ; preds = %8224
  %8234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7913, float %7914, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8240 = fmul fast float %8239, %8235
  %8241 = fmul fast float %8239, %8236
  %8242 = fmul fast float %8239, %8237
  %8243 = fcmp fast ogt float %8195, 0x3FEFFF2E40000000
  %8244 = fsub fast float 1.000000e+00, %8226
  %8245 = fsub fast float 1.000000e+00, %8195
  %8246 = fdiv fast float %8244, %8245
  %8247 = call float @dx.op.unary.f32(i32 7, float %8246)  ; Saturate(value)
  %8248 = select i1 %8243, float 0.000000e+00, float %8247
  %8249 = fmul fast float %8240, %8248
  %8250 = fmul fast float %8241, %8248
  %8251 = fmul fast float %8242, %8248
  br label %8252

; <label>:8252                                    ; preds = %8233, %8224
  %8253 = phi float [ 0.000000e+00, %8224 ], [ %8249, %8233 ]
  %8254 = phi float [ 0.000000e+00, %8224 ], [ %8250, %8233 ]
  %8255 = phi float [ 0.000000e+00, %8224 ], [ %8251, %8233 ]
  %8256 = fmul fast float %8253, %6840
  %8257 = fmul fast float %8254, %6840
  %8258 = fmul fast float %8255, %6840
  %8259 = fmul fast float %8226, %7888
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8226, float %8226, float %8226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.dot3.f32(i32 55, float %8256, float %8257, float %8258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = select i1 %252, float %8260, float %8226
  %8263 = select i1 %252, float 1.000000e+00, float %8226
  %8264 = select i1 %252, float %8261, float %8256
  %8265 = select i1 %252, float 0.000000e+00, float %8257
  %8266 = select i1 %252, float 0.000000e+00, float %8258
  %8267 = fmul fast float %8262, %7900
  %8268 = fmul fast float %8262, %7901
  %8269 = fmul fast float %8263, %7902
  %8270 = fadd fast float %8267, %8264
  %8271 = fadd fast float %8268, %8265
  %8272 = fadd fast float %8266, %8269
  %8273 = fmul fast float %8262, %7903
  %8274 = fmul fast float %8262, %7904
  %8275 = fmul fast float %8263, %7905
  br label %8276

; <label>:8276                                    ; preds = %8252, %7909, %7878, %7110
  %8277 = phi float [ %7115, %7110 ], [ %7900, %7878 ], [ %8270, %8252 ], [ %7900, %7909 ]
  %8278 = phi float [ %7116, %7110 ], [ %7901, %7878 ], [ %8271, %8252 ], [ %7901, %7909 ]
  %8279 = phi float [ %7117, %7110 ], [ %7902, %7878 ], [ %8272, %8252 ], [ %7902, %7909 ]
  %8280 = phi float [ %7118, %7110 ], [ %7903, %7878 ], [ %8273, %8252 ], [ %7903, %7909 ]
  %8281 = phi float [ %7119, %7110 ], [ %7904, %7878 ], [ %8274, %8252 ], [ %7904, %7909 ]
  %8282 = phi float [ %7120, %7110 ], [ %7905, %7878 ], [ %8275, %8252 ], [ %7905, %7909 ]
  %8283 = phi float [ %7121, %7110 ], [ %7888, %7878 ], [ %8259, %8252 ], [ %7888, %7909 ]
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 3
  %8287 = fmul fast float %8285, %95
  %8288 = fmul fast float %8286, %96
  %8289 = call float @dx.op.unary.f32(i32 7, float %8287)  ; Saturate(value)
  %8290 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8291 = select i1 %6852, i32 2, i32 0
  %8292 = or i32 %8291, 1
  %8293 = uitofp i32 %8292 to float
  %8294 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8289, float %8290, float %8293, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.ResRet.f32 %8294, 1
  %8297 = extractvalue %dx.types.ResRet.f32 %8294, 2
  %8298 = extractvalue %dx.types.ResRet.f32 %8294, 3
  %8299 = add nuw nsw i32 %8291, 2
  %8300 = uitofp i32 %8299 to float
  %8301 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8289, float %8290, float %8300, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8302 = extractvalue %dx.types.ResRet.f32 %8301, 0
  %8303 = extractvalue %dx.types.ResRet.f32 %8301, 1
  %8304 = extractvalue %dx.types.ResRet.f32 %8301, 2
  %8305 = extractvalue %dx.types.ResRet.f32 %8301, 3
  %8306 = call float @dx.op.binary.f32(i32 35, float %8296, float %8297)  ; FMax(a,b)
  %8307 = call float @dx.op.binary.f32(i32 35, float %8295, float %8306)  ; FMax(a,b)
  %8308 = call float @dx.op.binary.f32(i32 35, float %8307, float %8298)  ; FMax(a,b)
  %8309 = call float @dx.op.binary.f32(i32 36, float %8303, float %8304)  ; FMin(a,b)
  %8310 = call float @dx.op.binary.f32(i32 36, float %8302, float %8309)  ; FMin(a,b)
  %8311 = call float @dx.op.binary.f32(i32 36, float %8310, float %8305)  ; FMin(a,b)
  %8312 = fmul fast float %8308, 2.550000e+02
  %8313 = fadd fast float %8312, 0x3F70101020000000
  %8314 = fptoui float %8313 to i32
  %8315 = fmul fast float %8311, 2.550000e+02
  %8316 = fadd fast float %8315, 0x3F70101020000000
  %8317 = fptoui float %8316 to i32
  %8318 = icmp ult i32 %8314, %8317
  br i1 %8318, label %8319, label %8488

; <label>:8319                                    ; preds = %8276
  %8320 = fcmp fast ogt float %85, 9.843750e-01
  %8321 = fadd fast float %7114, -4.000000e+00
  %8322 = select i1 %8320, float -4.000000e+00, float %8321
  %8323 = call float @dx.op.binary.f32(i32 35, float %8322, float 0.000000e+00)  ; FMax(a,b)
  %8324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.f32 %8324, 0
  %8326 = fadd fast float %8325, %8323
  %8327 = extractvalue %dx.types.CBufRet.f32 %8324, 2
  %8328 = fmul fast float %8326, %8327
  %8329 = call float @dx.op.unary.f32(i32 23, float %8328)  ; Log(value)
  %8330 = extractvalue %dx.types.CBufRet.f32 %8324, 3
  %8331 = fmul fast float %8330, %8329
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8334 = fmul fast float %8331, %8333
  %8335 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8336 = uitofp i32 %8314 to float
  %8337 = uitofp i32 %8317 to float
  %8338 = fadd fast float %8336, 5.000000e-01
  %8339 = fadd fast float %8337, 5.000000e-01
  %8340 = fmul fast float %8333, %8338
  %8341 = fmul fast float %8333, %8339
  %8342 = fadd fast float %8340, 0x3F0FFB4800000000
  %8343 = fadd fast float %8341, 0xBF0FFB4800000000
  %8344 = call float @dx.op.binary.f32(i32 35, float %8335, float %8342)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8344, float %8343)  ; FMin(a,b)
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8350 = select i1 %6852, float %8349, float 0.000000e+00
  %8351 = fmul fast float %8347, %8345
  %8352 = fadd fast float %8350, %8351
  %8353 = fadd fast float %8350, %8348
  %8354 = fsub fast float %8347, %8348
  %8355 = fadd fast float %8354, %8350
  %8356 = call float @dx.op.binary.f32(i32 35, float %8352, float %8353)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8356, float %8355)  ; FMin(a,b)
  %8358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8289, float %8290, float %8357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8359 = extractvalue %dx.types.ResRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.ResRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.ResRet.f32 %8358, 2
  %8362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.i32 %8362, 0
  %8364 = extractvalue %dx.types.CBufRet.i32 %8362, 1
  %8365 = uitofp i32 %8363 to float
  %8366 = uitofp i32 %8364 to float
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = fmul fast float %8365, %8289
  %8371 = fmul fast float %8366, %8290
  %8372 = fadd fast float %8370, -5.000000e-01
  %8373 = fadd fast float %8371, -5.000000e-01
  %8374 = call float @dx.op.unary.f32(i32 22, float %8372)  ; Frc(value)
  %8375 = call float @dx.op.unary.f32(i32 22, float %8373)  ; Frc(value)
  %8376 = fmul fast float %8374, %8374
  %8377 = fmul fast float %8376, %8374
  %8378 = fsub fast float 3.000000e+00, %8374
  %8379 = fmul fast float %8376, %8378
  %8380 = fmul fast float %8374, 3.000000e+00
  %8381 = fmul fast float %8377, 3.000000e+00
  %8382 = fmul fast float %8376, 6.000000e+00
  %8383 = fsub fast float %8381, %8382
  %8384 = fadd fast float %8383, 4.000000e+00
  %8385 = fmul fast float %8384, 0x3FC5555560000000
  %8386 = fmul fast float %8377, -3.000000e+00
  %8387 = fadd fast float %8376, %8374
  %8388 = fmul fast float %8387, 3.000000e+00
  %8389 = fadd fast float %8386, 1.000000e+00
  %8390 = fadd fast float %8389, %8388
  %8391 = fmul fast float %8377, 0x3FC5555560000000
  %8392 = fmul fast float %8375, %8375
  %8393 = fmul fast float %8392, %8375
  %8394 = fsub fast float 3.000000e+00, %8375
  %8395 = fmul fast float %8392, %8394
  %8396 = fmul fast float %8375, 3.000000e+00
  %8397 = fmul fast float %8393, 3.000000e+00
  %8398 = fmul fast float %8392, 6.000000e+00
  %8399 = fsub fast float %8397, %8398
  %8400 = fadd fast float %8399, 4.000000e+00
  %8401 = fmul fast float %8400, 0x3FC5555560000000
  %8402 = fmul fast float %8393, -3.000000e+00
  %8403 = fadd fast float %8392, %8375
  %8404 = fmul fast float %8403, 3.000000e+00
  %8405 = fadd fast float %8402, 1.000000e+00
  %8406 = fadd fast float %8405, %8404
  %8407 = fmul fast float %8393, 0x3FC5555560000000
  %8408 = fadd fast float %8374, 1.000000e+00
  %8409 = fsub fast float 1.000000e+00, %8380
  %8410 = fadd fast float %8409, %8379
  %8411 = fadd fast float %8410, %8384
  %8412 = fmul fast float %8411, 0x3FC5555560000000
  %8413 = fdiv fast float %8385, %8412
  %8414 = fsub fast float %8408, %8413
  %8415 = fsub fast float 1.000000e+00, %8374
  %8416 = fadd fast float %8390, %8377
  %8417 = fmul fast float %8416, 0x3FC5555560000000
  %8418 = fdiv fast float %8391, %8417
  %8419 = fadd fast float %8415, %8418
  %8420 = fadd fast float %8375, 1.000000e+00
  %8421 = fsub fast float 1.000000e+00, %8396
  %8422 = fadd fast float %8421, %8395
  %8423 = fadd fast float %8422, %8400
  %8424 = fmul fast float %8423, 0x3FC5555560000000
  %8425 = fdiv fast float %8401, %8424
  %8426 = fsub fast float %8420, %8425
  %8427 = fsub fast float 1.000000e+00, %8375
  %8428 = fadd fast float %8406, %8393
  %8429 = fmul fast float %8428, 0x3FC5555560000000
  %8430 = fdiv fast float %8407, %8429
  %8431 = fadd fast float %8430, %8427
  %8432 = fmul fast float %8414, %8368
  %8433 = fsub fast float %8289, %8432
  %8434 = fmul fast float %8419, %8368
  %8435 = fadd fast float %8434, %8289
  %8436 = fmul fast float %8431, %8369
  %8437 = fadd fast float %8436, %8290
  %8438 = fmul fast float %8426, %8369
  %8439 = fsub fast float %8290, %8438
  %8440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8433, float %8439, float %8357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8441 = extractvalue %dx.types.ResRet.f32 %8440, 0
  %8442 = extractvalue %dx.types.ResRet.f32 %8440, 1
  %8443 = extractvalue %dx.types.ResRet.f32 %8440, 2
  %8444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8435, float %8439, float %8357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8445 = extractvalue %dx.types.ResRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.ResRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.ResRet.f32 %8444, 2
  %8448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8433, float %8437, float %8357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8449 = extractvalue %dx.types.ResRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.ResRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.ResRet.f32 %8448, 2
  %8452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8435, float %8437, float %8357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8453 = extractvalue %dx.types.ResRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.ResRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.ResRet.f32 %8452, 2
  %8456 = fsub fast float %8449, %8441
  %8457 = fsub fast float %8450, %8442
  %8458 = fsub fast float %8451, %8443
  %8459 = fmul fast float %8456, %8429
  %8460 = fmul fast float %8457, %8429
  %8461 = fmul fast float %8458, %8429
  %8462 = fadd fast float %8459, %8441
  %8463 = fadd fast float %8460, %8442
  %8464 = fadd fast float %8461, %8443
  %8465 = fsub fast float %8453, %8445
  %8466 = fsub fast float %8454, %8446
  %8467 = fsub fast float %8455, %8447
  %8468 = fmul fast float %8465, %8429
  %8469 = fmul fast float %8466, %8429
  %8470 = fmul fast float %8467, %8429
  %8471 = fsub fast float %8445, %8462
  %8472 = fadd fast float %8471, %8468
  %8473 = fsub fast float %8446, %8463
  %8474 = fadd fast float %8473, %8469
  %8475 = fsub fast float %8447, %8464
  %8476 = fadd fast float %8475, %8470
  %8477 = fmul fast float %8472, %8417
  %8478 = fmul fast float %8474, %8417
  %8479 = fmul fast float %8476, %8417
  %8480 = fadd fast float %8477, %8462
  %8481 = fadd fast float %8478, %8463
  %8482 = fadd fast float %8479, %8464
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8485 = fmul fast float %8480, %8484
  %8486 = fmul fast float %8481, %8484
  %8487 = fmul fast float %8482, %8484
  br label %8488

; <label>:8488                                    ; preds = %8319, %8276
  %8489 = phi float [ %8359, %8319 ], [ 1.000000e+00, %8276 ]
  %8490 = phi float [ %8360, %8319 ], [ 1.000000e+00, %8276 ]
  %8491 = phi float [ %8361, %8319 ], [ 1.000000e+00, %8276 ]
  %8492 = phi float [ %8485, %8319 ], [ 0.000000e+00, %8276 ]
  %8493 = phi float [ %8486, %8319 ], [ 0.000000e+00, %8276 ]
  %8494 = phi float [ %8487, %8319 ], [ 0.000000e+00, %8276 ]
  %8495 = fmul fast float %8492, %6840
  %8496 = fmul fast float %8493, %6840
  %8497 = fmul fast float %8494, %6840
  %8498 = fmul fast float %8489, %8283
  %8499 = call float @dx.op.dot3.f32(i32 55, float %8489, float %8490, float %8491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8500 = call float @dx.op.dot3.f32(i32 55, float %8495, float %8496, float %8497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8501 = select i1 %252, float %8499, float %8489
  %8502 = select i1 %252, float %8499, float %8490
  %8503 = select i1 %252, float 1.000000e+00, float %8491
  %8504 = select i1 %252, float %8500, float %8495
  %8505 = select i1 %252, float 0.000000e+00, float %8496
  %8506 = select i1 %252, float 0.000000e+00, float %8497
  %8507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.i32 %8507, 3
  %8509 = and i32 %8508, 3
  %8510 = icmp ne i32 %8509, 0
  %8511 = and i32 %8508, 4
  %8512 = icmp ne i32 %8511, 0
  %8513 = and i1 %8510, %8512
  %8514 = and i1 %252, %8513
  br i1 %8514, label %8515, label %8521

; <label>:8515                                    ; preds = %8488
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8518 = fadd fast float %8498, -1.000000e+00
  %8519 = fmul fast float %8517, %8518
  %8520 = fadd fast float %8519, 1.000000e+00
  br label %8521

; <label>:8521                                    ; preds = %8515, %8488
  %8522 = phi float [ %8520, %8515 ], [ %8498, %8488 ]
  %8523 = fadd fast float %8280, %8277
  %8524 = fmul fast float %8501, %8523
  %8525 = fadd fast float %8524, %8504
  %8526 = fadd fast float %8281, %8278
  %8527 = fmul fast float %8502, %8526
  %8528 = fadd fast float %8527, %8505
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  br i1 %252, label %8531, label %8555

; <label>:8531                                    ; preds = %8521
  %8532 = fadd fast float %8525, %8528
  %8533 = fmul fast float %8530, %8532
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 3
  %8536 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %8537 = fsub fast float %6833, %6827
  %8538 = fadd fast float %8537, %6834
  %8539 = fsub fast float %8538, %8536
  %8540 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %8541 = fmul fast float %8539, %8540
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = fsub fast float %8542, %8535
  %8544 = fmul fast float %8543, %8522
  %8545 = fadd fast float %8544, %8535
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8548 = fsub fast float %8545, %8547
  %8549 = fmul fast float %8548, 1.000000e+01
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fsub fast float 1.000000e+00, %6840
  %8552 = fmul fast float %8550, %8551
  %8553 = fadd fast float %8552, %6840
  %8554 = fmul fast float %8553, %8545
  br label %8579

; <label>:8555                                    ; preds = %8521
  %8556 = fadd fast float %8282, %8279
  %8557 = fmul fast float %8503, %8556
  %8558 = fadd fast float %8557, %8506
  %8559 = fmul fast float %8530, %8525
  %8560 = fmul fast float %8530, %8528
  %8561 = fmul fast float %8530, %8558
  %8562 = call float @dx.op.binary.f32(i32 35, float %8560, float %8561)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8559, float %8562)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 35, float %8563, float %6840)  ; FMax(a,b)
  %8565 = fcmp fast ugt float %8564, 0x3F10000000000000
  br i1 %8565, label %8567, label %8566

; <label>:8566                                    ; preds = %8555
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8567

; <label>:8567                                    ; preds = %8566, %8555
  %8568 = add i32 %54, 356
  %8569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8568, i32 undef)  ; BufferLoad(srv,index,wot)
  %8570 = extractvalue %dx.types.ResRet.i32 %8569, 0
  %8571 = and i32 %8570, 32
  %8572 = icmp eq i32 %8571, 0
  br i1 %8572, label %8579, label %8573

; <label>:8573                                    ; preds = %8567
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 0
  %8576 = fmul fast float %8575, 0x3FE99999A0000000
  %8577 = fadd fast float %8575, %8559
  %8578 = fadd fast float %8576, %8561
  br label %8579

; <label>:8579                                    ; preds = %8573, %8567, %8531
  %8580 = phi float [ %8533, %8531 ], [ %8577, %8573 ], [ %8559, %8567 ]
  %8581 = phi float [ %8554, %8531 ], [ %8560, %8573 ], [ %8560, %8567 ]
  %8582 = phi float [ %8553, %8531 ], [ %8578, %8573 ], [ %8561, %8567 ]
  %8583 = phi float [ %8553, %8531 ], [ %6840, %8573 ], [ %6840, %8567 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8584 = call float @dx.op.binary.f32(i32 36, float %8580, float 3.225500e+04)  ; FMin(a,b)
  %8585 = call float @dx.op.binary.f32(i32 36, float %8581, float 3.225500e+04)  ; FMin(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8582, float 3.225500e+04)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8583, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8586)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !90}
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
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !98, i64 0}
!122 = !{!123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!123 = distinct !{!123, !124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!124 = distinct !{!124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!125 = distinct !{!125, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!126 = distinct !{!126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!127 = distinct !{!127, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!137 = distinct !{!137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!146 = !{!142}
!147 = !{!143, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!156 = !{!152}
!157 = !{!153, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}

